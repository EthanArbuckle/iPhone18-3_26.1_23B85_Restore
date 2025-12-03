@interface VUIJSError
- (VUIJSError)initWithError:(id)error appContext:(id)context;
- (id)code;
- (id)description;
- (id)domain;
- (id)failureReason;
- (id)recoverySuggestion;
- (id)userInfo;
@end

@implementation VUIJSError

- (VUIJSError)initWithError:(id)error appContext:(id)context
{
  errorCopy = error;
  contextCopy = context;
  v9 = [(VUIJSObject *)self initWithAppContext:contextCopy];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_wrappedError, error);
    userInfo = [(NSError *)v10->_wrappedError userInfo];
    v12 = [userInfo objectForKey:*MEMORY[0x1E696AA08]];

    if (v12)
    {
      v13 = [[VUIJSError alloc] initWithError:v12 appContext:contextCopy];
      jsUnderlyingError = v10->_jsUnderlyingError;
      v10->_jsUnderlyingError = v13;

      jsContext = [contextCopy jsContext];
      virtualMachine = [jsContext virtualMachine];
      [virtualMachine addManagedReference:v10->_jsUnderlyingError withOwner:v10];
    }
  }

  return v10;
}

- (id)code
{
  v2 = MEMORY[0x1E696AD98];
  wrappedError = [(VUIJSError *)self wrappedError];
  v4 = [v2 numberWithInteger:{objc_msgSend(wrappedError, "code")}];

  return v4;
}

- (id)domain
{
  wrappedError = [(VUIJSError *)self wrappedError];
  domain = [wrappedError domain];

  return domain;
}

- (id)description
{
  wrappedError = [(VUIJSError *)self wrappedError];
  localizedDescription = [wrappedError localizedDescription];

  return localizedDescription;
}

- (id)failureReason
{
  wrappedError = [(VUIJSError *)self wrappedError];
  localizedFailureReason = [wrappedError localizedFailureReason];

  return localizedFailureReason;
}

- (id)recoverySuggestion
{
  wrappedError = [(VUIJSError *)self wrappedError];
  localizedRecoverySuggestion = [wrappedError localizedRecoverySuggestion];

  return localizedRecoverySuggestion;
}

- (id)userInfo
{
  wrappedError = [(VUIJSError *)self wrappedError];
  userInfo = [wrappedError userInfo];

  return userInfo;
}

@end