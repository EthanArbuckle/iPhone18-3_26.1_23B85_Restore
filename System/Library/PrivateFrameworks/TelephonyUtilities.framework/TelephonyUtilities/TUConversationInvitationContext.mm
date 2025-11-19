@interface TUConversationInvitationContext
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToInvitationContext:(id)a3;
- (TUConversationInvitationContext)init;
- (TUConversationInvitationContext)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation TUConversationInvitationContext

- (TUConversationInvitationContext)init
{
  v6.receiver = self;
  v6.super_class = TUConversationInvitationContext;
  v2 = [(TUConversationInvitationContext *)&v6 init];
  v3 = v2;
  if (v2)
  {
    nearbyStableDeviceIdentifiers = v2->_nearbyStableDeviceIdentifiers;
    v2->_nearbyStableDeviceIdentifiers = 0;
  }

  return v3;
}

- (TUConversationInvitationContext)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = TUConversationInvitationContext;
  v5 = [(TUConversationInvitationContext *)&v11 init];
  if (v5)
  {
    v6 = objc_opt_class();
    v7 = NSStringFromSelector(sel_nearbyStableDeviceIdentifiers);
    v8 = [v4 decodeArrayOfObjectsOfClass:v6 forKey:v7];
    nearbyStableDeviceIdentifiers = v5->_nearbyStableDeviceIdentifiers;
    v5->_nearbyStableDeviceIdentifiers = v8;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6 = [(TUConversationInvitationContext *)self nearbyStableDeviceIdentifiers];
  v5 = NSStringFromSelector(sel_nearbyStableDeviceIdentifiers);
  [v4 encodeObject:v6 forKey:v5];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v5 = [(TUConversationInvitationContext *)self nearbyStableDeviceIdentifiers];
  [v4 setNearbyStableDeviceIdentifiers:v5];

  return v4;
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@ %p", objc_opt_class(), self];
  v4 = [(TUConversationInvitationContext *)self nearbyStableDeviceIdentifiers];

  if (v4)
  {
    v5 = [(TUConversationInvitationContext *)self nearbyStableDeviceIdentifiers];
    [v3 appendFormat:@" nearbyStableDeviceIdentifiers=%@", v5];
  }

  [v3 appendString:@">"];
  v6 = [v3 copy];

  return v6;
}

- (unint64_t)hash
{
  v2 = [(TUConversationInvitationContext *)self nearbyStableDeviceIdentifiers];
  v3 = [v2 hash];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(TUConversationInvitationContext *)self isEqualToInvitationContext:v4];
  }

  return v5;
}

- (BOOL)isEqualToInvitationContext:(id)a3
{
  v4 = a3;
  v5 = [(TUConversationInvitationContext *)self nearbyStableDeviceIdentifiers];
  v6 = [v4 nearbyStableDeviceIdentifiers];

  LOBYTE(v4) = TUObjectsAreEqualOrNil(v5, v6);
  return v4;
}

@end