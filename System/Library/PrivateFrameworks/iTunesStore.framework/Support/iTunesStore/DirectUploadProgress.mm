@interface DirectUploadProgress
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation DirectUploadProgress

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  [v4 setCountOfBytesExpectedToSend:self->_countOfBytesExpectedToSend];
  [v4 setCountOfBytesSent:self->_countOfBytesSent];
  [v4 setUploadDatabaseIdentifier:self->_uploadDatabaseIdentifier];
  return v4;
}

@end