@interface SFNotificationError
- (SFNotificationError)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SFNotificationError

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  if (v4)
  {
    v5 = [(SFNotificationError *)self errorDescription];
    v6 = [v5 copy];
    [v4 setErrorDescription:v6];
  }

  return v4;
}

- (SFNotificationError)initWithCoder:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = SFNotificationError;
  v5 = [(SFNotificationError *)&v8 init];
  if (v5)
  {
    v6 = v4;
    objc_opt_class();
    NSDecodeObjectIfPresent();
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  errorDescription = self->_errorDescription;
  if (errorDescription)
  {
    [a3 encodeObject:errorDescription forKey:@"ed"];
  }
}

@end