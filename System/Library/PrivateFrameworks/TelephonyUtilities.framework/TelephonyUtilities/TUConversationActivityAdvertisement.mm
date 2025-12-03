@interface TUConversationActivityAdvertisement
- (TUConversationActivityAdvertisement)initWithCoder:(id)coder;
- (TUConversationActivityAdvertisement)initWithSessionID:(id)d contactID:(id)iD handle:(id)handle;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation TUConversationActivityAdvertisement

- (TUConversationActivityAdvertisement)initWithSessionID:(id)d contactID:(id)iD handle:(id)handle
{
  dCopy = d;
  iDCopy = iD;
  handleCopy = handle;
  v15.receiver = self;
  v15.super_class = TUConversationActivityAdvertisement;
  v12 = [(TUConversationActivityAdvertisement *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_sessionUUID, d);
    objc_storeStrong(&v13->_contactID, iD);
    objc_storeStrong(&v13->_handle, handle);
  }

  return v13;
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@ %p", objc_opt_class(), self];
  sessionUUID = [(TUConversationActivityAdvertisement *)self sessionUUID];
  [v3 appendFormat:@" sessionUUID=%@", sessionUUID];

  contactID = [(TUConversationActivityAdvertisement *)self contactID];
  [v3 appendFormat:@" contactID=%@", contactID];

  handle = [(TUConversationActivityAdvertisement *)self handle];
  [v3 appendFormat:@" handle=%@", handle];

  [v3 appendString:@">"];
  v7 = [v3 copy];

  return v7;
}

- (TUConversationActivityAdvertisement)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = NSStringFromSelector(sel_sessionUUID);
  v6 = [coderCopy decodeObjectForKey:v5];

  v7 = NSStringFromSelector(sel_contactID);
  v8 = [coderCopy decodeObjectForKey:v7];

  v9 = NSStringFromSelector(sel_handle);
  v10 = [coderCopy decodeObjectForKey:v9];

  v11 = [(TUConversationActivityAdvertisement *)self initWithSessionID:v6 contactID:v8 handle:v10];
  return v11;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  sessionUUID = [(TUConversationActivityAdvertisement *)self sessionUUID];
  v6 = NSStringFromSelector(sel_sessionUUID);
  [coderCopy encodeObject:sessionUUID forKey:v6];

  contactID = [(TUConversationActivityAdvertisement *)self contactID];
  v8 = NSStringFromSelector(sel_contactID);
  [coderCopy encodeObject:contactID forKey:v8];

  handle = [(TUConversationActivityAdvertisement *)self handle];
  v9 = NSStringFromSelector(sel_handle);
  [coderCopy encodeObject:handle forKey:v9];
}

@end