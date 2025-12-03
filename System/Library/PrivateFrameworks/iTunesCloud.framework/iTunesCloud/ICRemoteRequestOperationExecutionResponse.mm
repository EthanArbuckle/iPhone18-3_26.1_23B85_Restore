@interface ICRemoteRequestOperationExecutionResponse
- (ICRemoteRequestOperationExecutionResponse)initWithCoder:(id)coder;
- (ICRemoteRequestOperationExecutionResponse)initWithRemoteRequestOperationResponse:(id)response remoteRequestOperationError:(id)error;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ICRemoteRequestOperationExecutionResponse

- (void)encodeWithCoder:(id)coder
{
  v13 = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  msv_errorByRemovingUnsafeUserInfo = [(NSError *)self->_remoteRequestOperationError msv_errorByRemovingUnsafeUserInfo];
  [coderCopy encodeObject:msv_errorByRemovingUnsafeUserInfo forKey:@"remoteRequestOperationError"];

  if (self->_remoteRequestOperationResponse)
  {
    v6 = objc_opt_class();
    if ([(NSSecureCoding *)self->_remoteRequestOperationResponse isNSString])
    {
      v6 = objc_opt_class();
    }

    v7 = NSStringFromClass(v6);
    if (_ICRemoteRequestOperationResponseIsAllowedForClassName(v7))
    {
      [coderCopy encodeObject:v7 forKey:@"remoteRequestOperationResponseClassName"];
      [coderCopy encodeObject:self->_remoteRequestOperationResponse forKey:@"remoteRequestOperationResponse"];
    }

    else
    {
      v8 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"ICError" code:-7005 debugDescription:{@"Attempted to encode an instance of ICRemoteRequestOperationExecutionResponse with an unallowed class name for remoteRequestOperationResponse: %@.", v7}];
      v9 = os_log_create("com.apple.amp.iTunesCloud", "Default");
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        msv_description = [v8 msv_description];
        *buf = 138543362;
        v12 = msv_description;
        _os_log_impl(&dword_1B4491000, v9, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
      }

      [coderCopy failWithError:v8];
    }
  }
}

- (ICRemoteRequestOperationExecutionResponse)initWithCoder:(id)coder
{
  v21 = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v18.receiver = self;
  v18.super_class = ICRemoteRequestOperationExecutionResponse;
  v5 = [(ICRemoteRequestOperationExecutionResponse *)&v18 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"remoteRequestOperationError"];
    remoteRequestOperationError = v5->_remoteRequestOperationError;
    v5->_remoteRequestOperationError = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"remoteRequestOperationResponseClassName"];
    v9 = v8;
    if (v8)
    {
      if (_ICRemoteRequestOperationResponseIsAllowedForClassName(v8))
      {
        v10 = NSClassFromString(v9);
        if (v10)
        {
          v11 = [coderCopy decodeObjectOfClass:v10 forKey:@"remoteRequestOperationResponse"];
          remoteRequestOperationResponse = v5->_remoteRequestOperationResponse;
          v5->_remoteRequestOperationResponse = v11;
LABEL_12:

          goto LABEL_13;
        }

        v13 = @"Failed to look up class of developer token provider with name: %@.";
      }

      else
      {
        v13 = @"Attempted to decode an instance of ICRemoteRequestOperationExecutionResponse with an unallowed class name for remoteRequestOperationResponse: %@.";
      }

      v14 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"ICError" code:-7005 debugDescription:{v13, v9}];
      if (v14)
      {
        remoteRequestOperationResponse = v14;
        v15 = os_log_create("com.apple.amp.iTunesCloud", "Default");
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          msv_description = [remoteRequestOperationResponse msv_description];
          *buf = 138543362;
          v20 = msv_description;
          _os_log_impl(&dword_1B4491000, v15, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
        }

        [coderCopy failWithError:remoteRequestOperationResponse];
        v5 = 0;
        goto LABEL_12;
      }
    }

LABEL_13:
  }

  return v5;
}

- (ICRemoteRequestOperationExecutionResponse)initWithRemoteRequestOperationResponse:(id)response remoteRequestOperationError:(id)error
{
  responseCopy = response;
  errorCopy = error;
  v12.receiver = self;
  v12.super_class = ICRemoteRequestOperationExecutionResponse;
  v9 = [(ICRemoteRequestOperationExecutionResponse *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_remoteRequestOperationResponse, response);
    objc_storeStrong(&v10->_remoteRequestOperationError, error);
  }

  return v10;
}

@end