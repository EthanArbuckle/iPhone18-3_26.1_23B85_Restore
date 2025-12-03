@interface DirectUploadProgress
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation DirectUploadProgress

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  [v4 setCountOfBytesExpectedToSend:self->_countOfBytesExpectedToSend];
  [v4 setCountOfBytesSent:self->_countOfBytesSent];
  [v4 setUploadDatabaseIdentifier:self->_uploadDatabaseIdentifier];
  return v4;
}

@end