@interface TUSplitSessionInfo
- (TUSplitSessionInfo)initWithCoder:(id)coder;
- (TUSplitSessionInfo)initWithConversationID:(id)d device:(id)device handoffContext:(id)context;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation TUSplitSessionInfo

- (TUSplitSessionInfo)initWithConversationID:(id)d device:(id)device handoffContext:(id)context
{
  dCopy = d;
  deviceCopy = device;
  contextCopy = context;
  v15.receiver = self;
  v15.super_class = TUSplitSessionInfo;
  v12 = [(TUSplitSessionInfo *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_conversationID, d);
    objc_storeStrong(&v13->_device, device);
    objc_storeStrong(&v13->_handoffContext, context);
  }

  return v13;
}

- (id)description
{
  v3 = MEMORY[0x1E696AD60];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@ %p", v5, self];

  uUIDString = [(NSUUID *)self->_conversationID UUIDString];
  [v6 appendFormat:@" conversationID=%@", uUIDString];

  v8 = [(TUNearbyDeviceHandle *)self->_device description];
  [v6 appendFormat:@" device=%@", v8];

  v9 = [(TUNeighborhoodHandoffContext *)self->_handoffContext description];
  [v6 appendFormat:@" handoffContext=%@", v9];

  [v6 appendString:@">"];
  v10 = [v6 copy];

  return v10;
}

- (TUSplitSessionInfo)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = objc_opt_class();
  v6 = NSStringFromSelector(sel_conversationID);
  v7 = [coderCopy decodeObjectOfClass:v5 forKey:v6];

  v8 = objc_opt_class();
  v9 = NSStringFromSelector(sel_device);
  v10 = [coderCopy decodeObjectOfClass:v8 forKey:v9];

  v11 = objc_opt_class();
  v12 = NSStringFromSelector(sel_handoffContext);
  v13 = [coderCopy decodeObjectOfClass:v11 forKey:v12];

  v14 = [(TUSplitSessionInfo *)self initWithConversationID:v7 device:v10 handoffContext:v13];
  return v14;
}

- (void)encodeWithCoder:(id)coder
{
  conversationID = self->_conversationID;
  coderCopy = coder;
  v6 = NSStringFromSelector(sel_conversationID);
  [coderCopy encodeObject:conversationID forKey:v6];

  device = self->_device;
  v8 = NSStringFromSelector(sel_device);
  [coderCopy encodeObject:device forKey:v8];

  handoffContext = self->_handoffContext;
  v10 = NSStringFromSelector(sel_handoffContext);
  [coderCopy encodeObject:handoffContext forKey:v10];
}

@end