@interface TUConversationNotice
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToConversationNotice:(id)notice;
- (NSString)description;
- (TUConversationNotice)initWithCoder:(id)coder;
- (TUConversationNotice)initWithUUID:(id)d;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation TUConversationNotice

- (TUConversationNotice)initWithUUID:(id)d
{
  dCopy = d;
  v9.receiver = self;
  v9.super_class = TUConversationNotice;
  v6 = [(TUConversationNotice *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_UUID, d);
    v7->_queueItemType = 0;
  }

  return v7;
}

- (NSString)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@ %p", objc_opt_class(), self];
  uUID = [(TUConversationNotice *)self UUID];
  [v3 appendFormat:@" UUID=%@", uUID];

  sessionUUID = [(TUConversationNotice *)self sessionUUID];
  [v3 appendFormat:@" sessionUUID=%@", sessionUUID];

  [v3 appendFormat:@" sessionEventType=%ld", -[TUConversationNotice sessionEventType](self, "sessionEventType")];
  actionURL = [(TUConversationNotice *)self actionURL];
  [v3 appendFormat:@" actionURL=%@", actionURL];

  bundleIdentifier = [(TUConversationNotice *)self bundleIdentifier];
  [v3 appendFormat:@" bundleIdentifier=%@", bundleIdentifier];

  item = [(TUConversationNotice *)self item];
  [v3 appendFormat:@" item=%@", item];

  [v3 appendFormat:@" queueItemType=%ld", -[TUConversationNotice queueItemType](self, "queueItemType")];
  [v3 appendString:@">"];
  v9 = [v3 copy];

  return v9;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(TUConversationNotice *)self isEqualToConversationNotice:equalCopy];

  return v5;
}

- (BOOL)isEqualToConversationNotice:(id)notice
{
  noticeCopy = notice;
  uUID = [(TUConversationNotice *)self UUID];
  uUID2 = [noticeCopy UUID];
  if ([uUID isEqual:uUID2])
  {
    actionURL = [(TUConversationNotice *)self actionURL];
    actionURL2 = [noticeCopy actionURL];
    if (TUObjectsAreEqualOrNil(actionURL, actionURL2) && (v9 = -[TUConversationNotice sessionEventType](self, "sessionEventType"), v9 == [noticeCopy sessionEventType]))
    {
      sessionUUID = [(TUConversationNotice *)self sessionUUID];
      sessionUUID2 = [noticeCopy sessionUUID];
      if ([sessionUUID isEqual:sessionUUID2])
      {
        bundleIdentifier = [(TUConversationNotice *)self bundleIdentifier];
        bundleIdentifier2 = [noticeCopy bundleIdentifier];
        if ([bundleIdentifier isEqual:bundleIdentifier2])
        {
          v21 = bundleIdentifier;
          item = [(TUConversationNotice *)self item];
          [noticeCopy item];
          v20 = v22 = item;
          if ([item isEqual:?] && (v15 = -[TUConversationNotice queueItemType](self, "queueItemType"), v15 == objc_msgSend(noticeCopy, "queueItemType")))
          {
            session = [(TUConversationNotice *)self session];
            session2 = [noticeCopy session];
            v17 = TUObjectsAreEqualOrNil(session, session2);
          }

          else
          {
            v17 = 0;
          }

          bundleIdentifier = v21;
        }

        else
        {
          v17 = 0;
        }
      }

      else
      {
        v17 = 0;
      }
    }

    else
    {
      v17 = 0;
    }
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

- (unint64_t)hash
{
  sessionUUID = [(TUConversationNotice *)self sessionUUID];
  v4 = [sessionUUID hash];
  v5 = [(TUConversationNotice *)self sessionEventType]^ v4;
  actionURL = [(TUConversationNotice *)self actionURL];
  v7 = [actionURL hash];
  uUID = [(TUConversationNotice *)self UUID];
  v9 = v5 ^ v7 ^ [uUID hash];
  bundleIdentifier = [(TUConversationNotice *)self bundleIdentifier];
  v11 = [bundleIdentifier hash];
  item = [(TUConversationNotice *)self item];
  v13 = v11 ^ [item hash];
  v14 = v9 ^ v13 ^ [(TUConversationNotice *)self queueItemType];
  session = [(TUConversationNotice *)self session];
  v16 = [session hash];

  return v14 ^ v16;
}

- (TUConversationNotice)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = objc_opt_class();
  v6 = NSStringFromSelector(sel_UUID);
  v7 = [coderCopy decodeObjectOfClass:v5 forKey:v6];

  v8 = [(TUConversationNotice *)self initWithUUID:v7];
  if (v8)
  {
    v9 = objc_opt_class();
    v10 = NSStringFromSelector(sel_sessionUUID);
    v11 = [coderCopy decodeObjectOfClass:v9 forKey:v10];
    sessionUUID = v8->_sessionUUID;
    v8->_sessionUUID = v11;

    v13 = objc_opt_class();
    v14 = NSStringFromSelector(sel_actionURL);
    v15 = [coderCopy decodeObjectOfClass:v13 forKey:v14];
    actionURL = v8->_actionURL;
    v8->_actionURL = v15;

    v17 = NSStringFromSelector(sel_sessionEventType);
    v8->_sessionEventType = [coderCopy decodeIntegerForKey:v17];

    v18 = objc_opt_class();
    v19 = NSStringFromSelector(sel_bundleIdentifier);
    v20 = [coderCopy decodeObjectOfClass:v18 forKey:v19];
    bundleIdentifier = v8->_bundleIdentifier;
    v8->_bundleIdentifier = v20;

    v22 = objc_opt_class();
    v23 = NSStringFromSelector(sel_item);
    v24 = [coderCopy decodeObjectOfClass:v22 forKey:v23];
    item = v8->_item;
    v8->_item = v24;

    v26 = NSStringFromSelector(sel_queueItemType);
    v8->_queueItemType = [coderCopy decodeIntegerForKey:v26];

    v27 = objc_opt_class();
    v28 = NSStringFromSelector(sel_session);
    v29 = [coderCopy decodeObjectOfClass:v27 forKey:v28];
    session = v8->_session;
    v8->_session = v29;
  }

  return v8;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  sessionEventType = [(TUConversationNotice *)self sessionEventType];
  v6 = NSStringFromSelector(sel_sessionEventType);
  [coderCopy encodeInteger:sessionEventType forKey:v6];

  uUID = [(TUConversationNotice *)self UUID];
  v8 = NSStringFromSelector(sel_UUID);
  [coderCopy encodeObject:uUID forKey:v8];

  sessionUUID = [(TUConversationNotice *)self sessionUUID];
  v10 = NSStringFromSelector(sel_sessionUUID);
  [coderCopy encodeObject:sessionUUID forKey:v10];

  actionURL = [(TUConversationNotice *)self actionURL];
  v12 = NSStringFromSelector(sel_actionURL);
  [coderCopy encodeObject:actionURL forKey:v12];

  bundleIdentifier = [(TUConversationNotice *)self bundleIdentifier];
  v14 = NSStringFromSelector(sel_bundleIdentifier);
  [coderCopy encodeObject:bundleIdentifier forKey:v14];

  item = [(TUConversationNotice *)self item];
  v16 = NSStringFromSelector(sel_item);
  [coderCopy encodeObject:item forKey:v16];

  queueItemType = [(TUConversationNotice *)self queueItemType];
  v18 = NSStringFromSelector(sel_queueItemType);
  [coderCopy encodeInteger:queueItemType forKey:v18];

  session = [(TUConversationNotice *)self session];
  v19 = NSStringFromSelector(sel_session);
  [coderCopy encodeObject:session forKey:v19];
}

@end