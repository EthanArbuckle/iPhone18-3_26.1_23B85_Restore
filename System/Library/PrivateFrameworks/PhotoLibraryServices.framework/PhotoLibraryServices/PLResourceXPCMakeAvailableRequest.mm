@interface PLResourceXPCMakeAvailableRequest
- (PLResourceXPCMakeAvailableRequest)initWithCoder:(id)coder;
- (PLResourceXPCMakeAvailableRequest)initWithTaskIdentifier:(id)identifier assetObjectID:(id)d resource:(id)resource;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PLResourceXPCMakeAvailableRequest

- (PLResourceXPCMakeAvailableRequest)initWithCoder:(id)coder
{
  v17[1] = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v15.receiver = self;
  v15.super_class = PLResourceXPCMakeAvailableRequest;
  v5 = [(PLResourceXPCRequest *)&v15 initWithCoder:coderCopy];
  if (v5)
  {
    v5->_transient = [coderCopy decodeBoolForKey:@"transient"];
    v5->_networkAccessAllowed = [coderCopy decodeBoolForKey:@"networkAccessAllowed"];
    v6 = +[PLResourceIdentityXPC possibleClassesInDictionaryRepresentation];
    v7 = [coderCopy decodeObjectOfClasses:v6 forKey:@"resourceIdentity"];

    v8 = [[PLResourceIdentityXPC alloc] initWithDictionary:v7];
    resourceIdentity = v5->_resourceIdentity;
    v5->_resourceIdentity = v8;

    if (!v5->_resourceIdentity)
    {
      v10 = MEMORY[0x1E696ABC0];
      v11 = *MEMORY[0x1E69BFF48];
      v16 = *MEMORY[0x1E696A278];
      v17[0] = @"resource identity is required";
      v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:&v16 count:1];
      v13 = [v10 errorWithDomain:v11 code:46309 userInfo:v12];
      [coderCopy failWithError:v13];
    }

    v5->_downloadIntent = [coderCopy decodeIntegerForKey:@"downloadIntent"];
    v5->_downloadPriority = [coderCopy decodeIntegerForKey:@"downloadPriority"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v13[1] = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = PLResourceXPCMakeAvailableRequest;
  [(PLResourceXPCRequest *)&v11 encodeWithCoder:coderCopy];
  [coderCopy encodeBool:self->_transient forKey:@"transient"];
  [coderCopy encodeBool:self->_networkAccessAllowed forKey:@"networkAccessAllowed"];
  v5 = [PLResourceIdentityXPC dictionaryRepresentationFromResourceIdentity:self->_resourceIdentity];
  if (v5)
  {
    [coderCopy encodeObject:v5 forKey:@"resourceIdentity"];
  }

  else
  {
    v6 = MEMORY[0x1E696ABC0];
    v7 = *MEMORY[0x1E69BFF48];
    v12 = *MEMORY[0x1E696A278];
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"unable to encode resource identity %@", self->_resourceIdentity];
    v13[0] = v8;
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:&v12 count:1];
    v10 = [v6 errorWithDomain:v7 code:46309 userInfo:v9];
    [coderCopy failWithError:v10];
  }

  [coderCopy encodeInteger:self->_downloadIntent forKey:@"downloadIntent"];
  [coderCopy encodeInteger:self->_downloadPriority forKey:@"downloadPriority"];
}

- (PLResourceXPCMakeAvailableRequest)initWithTaskIdentifier:(id)identifier assetObjectID:(id)d resource:(id)resource
{
  identifierCopy = identifier;
  dCopy = d;
  resourceCopy = resource;
  if (!resourceCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLResourceXPCMakeAvailableRequest.m" lineNumber:25 description:{@"Invalid parameter not satisfying: %@", @"resource"}];
  }

  v16.receiver = self;
  v16.super_class = PLResourceXPCMakeAvailableRequest;
  v12 = [(PLResourceXPCRequest *)&v16 initWithTaskIdentifier:identifierCopy assetObjectID:dCopy];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_resourceIdentity, resource);
  }

  return v13;
}

@end