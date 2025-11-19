@interface PLResourceXPCMakeAvailableRequest
- (PLResourceXPCMakeAvailableRequest)initWithCoder:(id)a3;
- (PLResourceXPCMakeAvailableRequest)initWithTaskIdentifier:(id)a3 assetObjectID:(id)a4 resource:(id)a5;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PLResourceXPCMakeAvailableRequest

- (PLResourceXPCMakeAvailableRequest)initWithCoder:(id)a3
{
  v17[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v15.receiver = self;
  v15.super_class = PLResourceXPCMakeAvailableRequest;
  v5 = [(PLResourceXPCRequest *)&v15 initWithCoder:v4];
  if (v5)
  {
    v5->_transient = [v4 decodeBoolForKey:@"transient"];
    v5->_networkAccessAllowed = [v4 decodeBoolForKey:@"networkAccessAllowed"];
    v6 = +[PLResourceIdentityXPC possibleClassesInDictionaryRepresentation];
    v7 = [v4 decodeObjectOfClasses:v6 forKey:@"resourceIdentity"];

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
      [v4 failWithError:v13];
    }

    v5->_downloadIntent = [v4 decodeIntegerForKey:@"downloadIntent"];
    v5->_downloadPriority = [v4 decodeIntegerForKey:@"downloadPriority"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v13[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v11.receiver = self;
  v11.super_class = PLResourceXPCMakeAvailableRequest;
  [(PLResourceXPCRequest *)&v11 encodeWithCoder:v4];
  [v4 encodeBool:self->_transient forKey:@"transient"];
  [v4 encodeBool:self->_networkAccessAllowed forKey:@"networkAccessAllowed"];
  v5 = [PLResourceIdentityXPC dictionaryRepresentationFromResourceIdentity:self->_resourceIdentity];
  if (v5)
  {
    [v4 encodeObject:v5 forKey:@"resourceIdentity"];
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
    [v4 failWithError:v10];
  }

  [v4 encodeInteger:self->_downloadIntent forKey:@"downloadIntent"];
  [v4 encodeInteger:self->_downloadPriority forKey:@"downloadPriority"];
}

- (PLResourceXPCMakeAvailableRequest)initWithTaskIdentifier:(id)a3 assetObjectID:(id)a4 resource:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (!v11)
  {
    v15 = [MEMORY[0x1E696AAA8] currentHandler];
    [v15 handleFailureInMethod:a2 object:self file:@"PLResourceXPCMakeAvailableRequest.m" lineNumber:25 description:{@"Invalid parameter not satisfying: %@", @"resource"}];
  }

  v16.receiver = self;
  v16.super_class = PLResourceXPCMakeAvailableRequest;
  v12 = [(PLResourceXPCRequest *)&v16 initWithTaskIdentifier:v9 assetObjectID:v10];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_resourceIdentity, a5);
  }

  return v13;
}

@end