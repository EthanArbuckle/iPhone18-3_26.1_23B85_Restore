@interface TUConversationActivityAdvertisement
- (TUConversationActivityAdvertisement)initWithCoder:(id)a3;
- (TUConversationActivityAdvertisement)initWithSessionID:(id)a3 contactID:(id)a4 handle:(id)a5;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation TUConversationActivityAdvertisement

- (TUConversationActivityAdvertisement)initWithSessionID:(id)a3 contactID:(id)a4 handle:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = TUConversationActivityAdvertisement;
  v12 = [(TUConversationActivityAdvertisement *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_sessionUUID, a3);
    objc_storeStrong(&v13->_contactID, a4);
    objc_storeStrong(&v13->_handle, a5);
  }

  return v13;
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@ %p", objc_opt_class(), self];
  v4 = [(TUConversationActivityAdvertisement *)self sessionUUID];
  [v3 appendFormat:@" sessionUUID=%@", v4];

  v5 = [(TUConversationActivityAdvertisement *)self contactID];
  [v3 appendFormat:@" contactID=%@", v5];

  v6 = [(TUConversationActivityAdvertisement *)self handle];
  [v3 appendFormat:@" handle=%@", v6];

  [v3 appendString:@">"];
  v7 = [v3 copy];

  return v7;
}

- (TUConversationActivityAdvertisement)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = NSStringFromSelector(sel_sessionUUID);
  v6 = [v4 decodeObjectForKey:v5];

  v7 = NSStringFromSelector(sel_contactID);
  v8 = [v4 decodeObjectForKey:v7];

  v9 = NSStringFromSelector(sel_handle);
  v10 = [v4 decodeObjectForKey:v9];

  v11 = [(TUConversationActivityAdvertisement *)self initWithSessionID:v6 contactID:v8 handle:v10];
  return v11;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(TUConversationActivityAdvertisement *)self sessionUUID];
  v6 = NSStringFromSelector(sel_sessionUUID);
  [v4 encodeObject:v5 forKey:v6];

  v7 = [(TUConversationActivityAdvertisement *)self contactID];
  v8 = NSStringFromSelector(sel_contactID);
  [v4 encodeObject:v7 forKey:v8];

  v10 = [(TUConversationActivityAdvertisement *)self handle];
  v9 = NSStringFromSelector(sel_handle);
  [v4 encodeObject:v10 forKey:v9];
}

@end