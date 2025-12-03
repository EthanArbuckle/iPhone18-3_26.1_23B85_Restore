@interface TUConversationInvitationContext
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToInvitationContext:(id)context;
- (TUConversationInvitationContext)init;
- (TUConversationInvitationContext)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
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

- (TUConversationInvitationContext)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = TUConversationInvitationContext;
  v5 = [(TUConversationInvitationContext *)&v11 init];
  if (v5)
  {
    v6 = objc_opt_class();
    v7 = NSStringFromSelector(sel_nearbyStableDeviceIdentifiers);
    v8 = [coderCopy decodeArrayOfObjectsOfClass:v6 forKey:v7];
    nearbyStableDeviceIdentifiers = v5->_nearbyStableDeviceIdentifiers;
    v5->_nearbyStableDeviceIdentifiers = v8;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  nearbyStableDeviceIdentifiers = [(TUConversationInvitationContext *)self nearbyStableDeviceIdentifiers];
  v5 = NSStringFromSelector(sel_nearbyStableDeviceIdentifiers);
  [coderCopy encodeObject:nearbyStableDeviceIdentifiers forKey:v5];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  nearbyStableDeviceIdentifiers = [(TUConversationInvitationContext *)self nearbyStableDeviceIdentifiers];
  [v4 setNearbyStableDeviceIdentifiers:nearbyStableDeviceIdentifiers];

  return v4;
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@ %p", objc_opt_class(), self];
  nearbyStableDeviceIdentifiers = [(TUConversationInvitationContext *)self nearbyStableDeviceIdentifiers];

  if (nearbyStableDeviceIdentifiers)
  {
    nearbyStableDeviceIdentifiers2 = [(TUConversationInvitationContext *)self nearbyStableDeviceIdentifiers];
    [v3 appendFormat:@" nearbyStableDeviceIdentifiers=%@", nearbyStableDeviceIdentifiers2];
  }

  [v3 appendString:@">"];
  v6 = [v3 copy];

  return v6;
}

- (unint64_t)hash
{
  nearbyStableDeviceIdentifiers = [(TUConversationInvitationContext *)self nearbyStableDeviceIdentifiers];
  v3 = [nearbyStableDeviceIdentifiers hash];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(TUConversationInvitationContext *)self isEqualToInvitationContext:equalCopy];
  }

  return v5;
}

- (BOOL)isEqualToInvitationContext:(id)context
{
  contextCopy = context;
  nearbyStableDeviceIdentifiers = [(TUConversationInvitationContext *)self nearbyStableDeviceIdentifiers];
  nearbyStableDeviceIdentifiers2 = [contextCopy nearbyStableDeviceIdentifiers];

  LOBYTE(contextCopy) = TUObjectsAreEqualOrNil(nearbyStableDeviceIdentifiers, nearbyStableDeviceIdentifiers2);
  return contextCopy;
}

@end