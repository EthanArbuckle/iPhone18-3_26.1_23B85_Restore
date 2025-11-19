@interface ICRemoteRequestOperationExecutionContext
- (ICRemoteRequestOperationExecutionContext)initWithCoder:(id)a3;
- (ICRemoteRequestOperationExecutionContext)initWithRemoteRequestOperation:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ICRemoteRequestOperationExecutionContext

- (void)encodeWithCoder:(id)a3
{
  v13 = *MEMORY[0x1E69E9840];
  qualityOfService = self->_qualityOfService;
  v5 = a3;
  [v5 encodeInteger:qualityOfService forKey:@"qualityOfService"];
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  if (_ICRemoteRequestOperationIsAllowedForClassName(v7))
  {
    [v5 encodeObject:v7 forKey:@"remoteRequestOperationClassName"];
    [v5 encodeObject:self->_remoteRequestOperation forKey:@"remoteRequestOperation"];
    v8 = v5;
  }

  else
  {
    v8 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"ICError" code:-7005 debugDescription:{@"Attempted to encode an instance of ICRemoteRequestOperationExecutionContext with an unallowed class name for remoteRequestOperation: %@.", v7}];
    v9 = os_log_create("com.apple.amp.iTunesCloud", "Default");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = [v8 msv_description];
      *buf = 138543362;
      v12 = v10;
      _os_log_impl(&dword_1B4491000, v9, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
    }

    [v5 failWithError:v8];
  }
}

- (ICRemoteRequestOperationExecutionContext)initWithCoder:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v15.receiver = self;
  v15.super_class = ICRemoteRequestOperationExecutionContext;
  v5 = [(ICRemoteRequestOperationExecutionContext *)&v15 init];
  if (v5)
  {
    v5->_qualityOfService = [v4 decodeIntegerForKey:@"qualityOfService"];
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"remoteRequestOperationClassName"];
    if (_ICRemoteRequestOperationIsAllowedForClassName(v6))
    {
      v7 = NSClassFromString(v6);
      if (v7)
      {
        v8 = [v4 decodeObjectOfClass:v7 forKey:@"remoteRequestOperation"];
        remoteRequestOperation = v5->_remoteRequestOperation;
        v5->_remoteRequestOperation = v8;
        goto LABEL_11;
      }

      v10 = @"Failed to look up class of developer token provider with name: %@.";
    }

    else
    {
      v10 = @"Attempted to decode an instance of ICRemoteRequestOperationExecutionContext with an unallowed class name for remoteRequestOperation: %@.";
    }

    v11 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"ICError" code:-7005 debugDescription:{v10, v6}];
    if (!v11)
    {
LABEL_12:

      goto LABEL_13;
    }

    remoteRequestOperation = v11;
    [v4 failWithError:v11];
    v12 = os_log_create("com.apple.amp.iTunesCloud", "Default");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = [remoteRequestOperation msv_description];
      *buf = 138543362;
      v17 = v13;
      _os_log_impl(&dword_1B4491000, v12, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
    }

    v5 = 0;
LABEL_11:

    goto LABEL_12;
  }

LABEL_13:

  return v5;
}

- (ICRemoteRequestOperationExecutionContext)initWithRemoteRequestOperation:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = ICRemoteRequestOperationExecutionContext;
  v6 = [(ICRemoteRequestOperationExecutionContext *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_remoteRequestOperation, a3);
    v7->_qualityOfService = -1;
  }

  return v7;
}

@end