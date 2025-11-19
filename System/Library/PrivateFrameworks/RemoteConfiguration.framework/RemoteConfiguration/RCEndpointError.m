@interface RCEndpointError
+ (id)endpointErrorWithDictionary:(id)a3;
- (BOOL)isEqual:(id)a3;
- (RCEndpointError)initWithErrorCode:(id)a3 message:(id)a4 stacktrace:(id)a5;
- (id)description;
- (unint64_t)hash;
@end

@implementation RCEndpointError

+ (id)endpointErrorWithDictionary:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = RCJSONStringValue(v3, @"errorCode", @"UnknownServerError");
  v5 = RCJSONStringValue(v3, @"message", 0);
  v6 = RCJSONStringValue(v3, @"stacktrace", 0);

  v7 = RCSharedLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138543874;
    v12 = v4;
    v13 = 2114;
    v14 = v5;
    v15 = 2112;
    v16 = v6;
    _os_log_impl(&dword_2179FC000, v7, OS_LOG_TYPE_DEFAULT, "creating endpoint error with code: %{public}@ message: %{public}@ stacktrace: %@", &v11, 0x20u);
  }

  v8 = [[RCEndpointError alloc] initWithErrorCode:v4 message:v5 stacktrace:v6];
  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

- (RCEndpointError)initWithErrorCode:(id)a3 message:(id)a4 stacktrace:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v19.receiver = self;
  v19.super_class = RCEndpointError;
  v11 = [(RCEndpointError *)&v19 init];
  if (v11)
  {
    v12 = [v8 copy];
    errorCode = v11->_errorCode;
    v11->_errorCode = v12;

    v14 = [v9 copy];
    message = v11->_message;
    v11->_message = v14;

    v16 = [v10 copy];
    stacktrace = v11->_stacktrace;
    v11->_stacktrace = v16;
  }

  return v11;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(RCEndpointError *)self errorCode];
    v7 = [v5 errorCode];
    if ([v6 isEqualToString:v7])
    {
      v8 = [(RCEndpointError *)self message];
      v9 = [v5 message];
      if ([v8 isEqualToString:v9])
      {
        v10 = [(RCEndpointError *)self stacktrace];
        v11 = [v5 stacktrace];
        v12 = [v10 isEqualToString:v11];
      }

      else
      {
        v12 = 0;
      }
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (unint64_t)hash
{
  v3 = [(RCEndpointError *)self errorCode];
  v4 = [v3 hash];
  v5 = [(RCEndpointError *)self message];
  v6 = [v5 hash] ^ v4;
  v7 = [(RCEndpointError *)self stacktrace];
  v8 = [v7 hash];

  return v6 ^ v8;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(RCEndpointError *)self errorCode];
  v5 = [(RCEndpointError *)self message];
  v6 = [(RCEndpointError *)self stacktrace];
  v7 = [v3 stringWithFormat:@"<code: %@ message: %@ stacktrace: %@>", v4, v5, v6];

  return v7;
}

@end