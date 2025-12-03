@interface SFNotificationError
- (SFNotificationError)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SFNotificationError

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  if (v4)
  {
    errorDescription = [(SFNotificationError *)self errorDescription];
    v6 = [errorDescription copy];
    [v4 setErrorDescription:v6];
  }

  return v4;
}

- (SFNotificationError)initWithCoder:(id)coder
{
  coderCopy = coder;
  v8.receiver = self;
  v8.super_class = SFNotificationError;
  v5 = [(SFNotificationError *)&v8 init];
  if (v5)
  {
    v6 = coderCopy;
    objc_opt_class();
    NSDecodeObjectIfPresent();
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  errorDescription = self->_errorDescription;
  if (errorDescription)
  {
    [coder encodeObject:errorDescription forKey:@"ed"];
  }
}

@end