@interface PLResourceXPCRequest
- (PLResourceXPCRequest)initWithCoder:(id)coder;
- (PLResourceXPCRequest)initWithTaskIdentifier:(id)identifier assetObjectID:(id)d;
- (PLResourceXPCRequest)initWithTaskIdentifier:(id)identifier assetObjectIDURL:(id)l;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PLResourceXPCRequest

- (PLResourceXPCRequest)initWithCoder:(id)coder
{
  v17[1] = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v15.receiver = self;
  v15.super_class = PLResourceXPCRequest;
  v5 = [(PLResourceXPCRequest *)&v15 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"taskIdentifier"];
    taskIdentifier = v5->_taskIdentifier;
    v5->_taskIdentifier = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"assetObjectIDURL"];
    assetObjectIDURL = v5->_assetObjectIDURL;
    v5->_assetObjectIDURL = v8;

    v5->_wantsProgress = [coderCopy decodeBoolForKey:@"wantsProgress"];
    if (!v5->_taskIdentifier || !v5->_assetObjectIDURL)
    {
      v10 = MEMORY[0x1E696ABC0];
      v11 = *MEMORY[0x1E69BFF48];
      v16 = *MEMORY[0x1E696A278];
      v17[0] = @"task identifier and asset object id url are required";
      v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:&v16 count:1];
      v13 = [v10 errorWithDomain:v11 code:46309 userInfo:v12];
      [coderCopy failWithError:v13];

      v5 = 0;
    }
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  taskIdentifier = self->_taskIdentifier;
  coderCopy = coder;
  [coderCopy encodeObject:taskIdentifier forKey:@"taskIdentifier"];
  [coderCopy encodeObject:self->_assetObjectIDURL forKey:@"assetObjectIDURL"];
  [coderCopy encodeBool:self->_wantsProgress forKey:@"wantsProgress"];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@ %p> %@, %@", v5, self, self->_taskIdentifier, self->_assetObjectIDURL];

  return v6;
}

- (PLResourceXPCRequest)initWithTaskIdentifier:(id)identifier assetObjectID:(id)d
{
  identifierCopy = identifier;
  uRIRepresentation = [d URIRepresentation];
  v8 = [(PLResourceXPCRequest *)self initWithTaskIdentifier:identifierCopy assetObjectIDURL:uRIRepresentation];

  return v8;
}

- (PLResourceXPCRequest)initWithTaskIdentifier:(id)identifier assetObjectIDURL:(id)l
{
  identifierCopy = identifier;
  lCopy = l;
  v12.receiver = self;
  v12.super_class = PLResourceXPCRequest;
  v9 = [(PLResourceXPCRequest *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_taskIdentifier, identifier);
    objc_storeStrong(&v10->_assetObjectIDURL, l);
  }

  return v10;
}

@end