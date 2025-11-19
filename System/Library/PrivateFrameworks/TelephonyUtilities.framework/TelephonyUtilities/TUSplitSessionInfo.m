@interface TUSplitSessionInfo
- (TUSplitSessionInfo)initWithCoder:(id)a3;
- (TUSplitSessionInfo)initWithConversationID:(id)a3 device:(id)a4 handoffContext:(id)a5;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation TUSplitSessionInfo

- (TUSplitSessionInfo)initWithConversationID:(id)a3 device:(id)a4 handoffContext:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = TUSplitSessionInfo;
  v12 = [(TUSplitSessionInfo *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_conversationID, a3);
    objc_storeStrong(&v13->_device, a4);
    objc_storeStrong(&v13->_handoffContext, a5);
  }

  return v13;
}

- (id)description
{
  v3 = MEMORY[0x1E696AD60];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@ %p", v5, self];

  v7 = [(NSUUID *)self->_conversationID UUIDString];
  [v6 appendFormat:@" conversationID=%@", v7];

  v8 = [(TUNearbyDeviceHandle *)self->_device description];
  [v6 appendFormat:@" device=%@", v8];

  v9 = [(TUNeighborhoodHandoffContext *)self->_handoffContext description];
  [v6 appendFormat:@" handoffContext=%@", v9];

  [v6 appendString:@">"];
  v10 = [v6 copy];

  return v10;
}

- (TUSplitSessionInfo)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = NSStringFromSelector(sel_conversationID);
  v7 = [v4 decodeObjectOfClass:v5 forKey:v6];

  v8 = objc_opt_class();
  v9 = NSStringFromSelector(sel_device);
  v10 = [v4 decodeObjectOfClass:v8 forKey:v9];

  v11 = objc_opt_class();
  v12 = NSStringFromSelector(sel_handoffContext);
  v13 = [v4 decodeObjectOfClass:v11 forKey:v12];

  v14 = [(TUSplitSessionInfo *)self initWithConversationID:v7 device:v10 handoffContext:v13];
  return v14;
}

- (void)encodeWithCoder:(id)a3
{
  conversationID = self->_conversationID;
  v5 = a3;
  v6 = NSStringFromSelector(sel_conversationID);
  [v5 encodeObject:conversationID forKey:v6];

  device = self->_device;
  v8 = NSStringFromSelector(sel_device);
  [v5 encodeObject:device forKey:v8];

  handoffContext = self->_handoffContext;
  v10 = NSStringFromSelector(sel_handoffContext);
  [v5 encodeObject:handoffContext forKey:v10];
}

@end