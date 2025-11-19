@interface SESEndPointContainerInfo
+ (id)withAppletAID:(id)a3 isSuspended:(BOOL)a4;
- (SESEndPointContainerInfo)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SESEndPointContainerInfo

+ (id)withAppletAID:(id)a3 isSuspended:(BOOL)a4
{
  v5 = a3;
  v6 = objc_opt_new();
  v7 = *(v6 + 16);
  *(v6 + 16) = v5;

  *(v6 + 8) = a4;

  return v6;
}

- (void)encodeWithCoder:(id)a3
{
  appletAID = self->_appletAID;
  v5 = a3;
  [v5 encodeObject:appletAID forKey:@"appletAID"];
  [v5 encodeInt:self->_isSuspended forKey:@"isSuspended"];
}

- (SESEndPointContainerInfo)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = SESEndPointContainerInfo;
  v5 = [(SESEndPointContainerInfo *)&v9 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"appletAID"];
    appletAID = v5->_appletAID;
    v5->_appletAID = v6;

    v5->_isSuspended = [v4 decodeIntForKey:@"isSuspended"] != 0;
  }

  return v5;
}

@end