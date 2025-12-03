@interface SBSRemoteAlertHandleContext
- (SBSRemoteAlertHandleContext)initWithCoder:(id)coder;
- (SBSRemoteAlertHandleContext)initWithHandleID:(id)d;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SBSRemoteAlertHandleContext

- (SBSRemoteAlertHandleContext)initWithHandleID:(id)d
{
  dCopy = d;
  v9.receiver = self;
  v9.super_class = SBSRemoteAlertHandleContext;
  v6 = [(SBSRemoteAlertHandleContext *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_handleID, d);
  }

  return v7;
}

- (SBSRemoteAlertHandleContext)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"handleID"];
  if (v5)
  {
    v6 = [(SBSRemoteAlertHandleContext *)self initWithHandleID:v5];
    if (v6)
    {
      v6->_active = [coderCopy decodeBoolForKey:@"active"];
    }

    self = v6;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (void)encodeWithCoder:(id)coder
{
  handleID = self->_handleID;
  coderCopy = coder;
  [coderCopy encodeObject:handleID forKey:@"handleID"];
  [coderCopy encodeBool:self->_active forKey:@"active"];
}

@end