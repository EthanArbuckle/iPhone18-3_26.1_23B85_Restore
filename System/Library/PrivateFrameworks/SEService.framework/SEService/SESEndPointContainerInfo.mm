@interface SESEndPointContainerInfo
+ (id)withAppletAID:(id)d isSuspended:(BOOL)suspended;
- (SESEndPointContainerInfo)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SESEndPointContainerInfo

+ (id)withAppletAID:(id)d isSuspended:(BOOL)suspended
{
  dCopy = d;
  v6 = objc_opt_new();
  v7 = *(v6 + 16);
  *(v6 + 16) = dCopy;

  *(v6 + 8) = suspended;

  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  appletAID = self->_appletAID;
  coderCopy = coder;
  [coderCopy encodeObject:appletAID forKey:@"appletAID"];
  [coderCopy encodeInt:self->_isSuspended forKey:@"isSuspended"];
}

- (SESEndPointContainerInfo)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = SESEndPointContainerInfo;
  v5 = [(SESEndPointContainerInfo *)&v9 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"appletAID"];
    appletAID = v5->_appletAID;
    v5->_appletAID = v6;

    v5->_isSuspended = [coderCopy decodeIntForKey:@"isSuspended"] != 0;
  }

  return v5;
}

@end