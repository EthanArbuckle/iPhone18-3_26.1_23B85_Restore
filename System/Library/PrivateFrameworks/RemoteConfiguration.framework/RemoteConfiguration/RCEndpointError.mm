@interface RCEndpointError
+ (id)endpointErrorWithDictionary:(id)dictionary;
- (BOOL)isEqual:(id)equal;
- (RCEndpointError)initWithErrorCode:(id)code message:(id)message stacktrace:(id)stacktrace;
- (id)description;
- (unint64_t)hash;
@end

@implementation RCEndpointError

+ (id)endpointErrorWithDictionary:(id)dictionary
{
  v17 = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
  v4 = RCJSONStringValue(dictionaryCopy, @"errorCode", @"UnknownServerError");
  v5 = RCJSONStringValue(dictionaryCopy, @"message", 0);
  v6 = RCJSONStringValue(dictionaryCopy, @"stacktrace", 0);

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

- (RCEndpointError)initWithErrorCode:(id)code message:(id)message stacktrace:(id)stacktrace
{
  codeCopy = code;
  messageCopy = message;
  stacktraceCopy = stacktrace;
  v19.receiver = self;
  v19.super_class = RCEndpointError;
  v11 = [(RCEndpointError *)&v19 init];
  if (v11)
  {
    v12 = [codeCopy copy];
    errorCode = v11->_errorCode;
    v11->_errorCode = v12;

    v14 = [messageCopy copy];
    message = v11->_message;
    v11->_message = v14;

    v16 = [stacktraceCopy copy];
    stacktrace = v11->_stacktrace;
    v11->_stacktrace = v16;
  }

  return v11;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    errorCode = [(RCEndpointError *)self errorCode];
    errorCode2 = [v5 errorCode];
    if ([errorCode isEqualToString:errorCode2])
    {
      message = [(RCEndpointError *)self message];
      message2 = [v5 message];
      if ([message isEqualToString:message2])
      {
        stacktrace = [(RCEndpointError *)self stacktrace];
        stacktrace2 = [v5 stacktrace];
        v12 = [stacktrace isEqualToString:stacktrace2];
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
  errorCode = [(RCEndpointError *)self errorCode];
  v4 = [errorCode hash];
  message = [(RCEndpointError *)self message];
  v6 = [message hash] ^ v4;
  stacktrace = [(RCEndpointError *)self stacktrace];
  v8 = [stacktrace hash];

  return v6 ^ v8;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  errorCode = [(RCEndpointError *)self errorCode];
  message = [(RCEndpointError *)self message];
  stacktrace = [(RCEndpointError *)self stacktrace];
  v7 = [v3 stringWithFormat:@"<code: %@ message: %@ stacktrace: %@>", errorCode, message, stacktrace];

  return v7;
}

@end