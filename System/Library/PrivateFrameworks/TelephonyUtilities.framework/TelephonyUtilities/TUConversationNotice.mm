@interface TUConversationNotice
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToConversationNotice:(id)a3;
- (NSString)description;
- (TUConversationNotice)initWithCoder:(id)a3;
- (TUConversationNotice)initWithUUID:(id)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation TUConversationNotice

- (TUConversationNotice)initWithUUID:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = TUConversationNotice;
  v6 = [(TUConversationNotice *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_UUID, a3);
    v7->_queueItemType = 0;
  }

  return v7;
}

- (NSString)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@ %p", objc_opt_class(), self];
  v4 = [(TUConversationNotice *)self UUID];
  [v3 appendFormat:@" UUID=%@", v4];

  v5 = [(TUConversationNotice *)self sessionUUID];
  [v3 appendFormat:@" sessionUUID=%@", v5];

  [v3 appendFormat:@" sessionEventType=%ld", -[TUConversationNotice sessionEventType](self, "sessionEventType")];
  v6 = [(TUConversationNotice *)self actionURL];
  [v3 appendFormat:@" actionURL=%@", v6];

  v7 = [(TUConversationNotice *)self bundleIdentifier];
  [v3 appendFormat:@" bundleIdentifier=%@", v7];

  v8 = [(TUConversationNotice *)self item];
  [v3 appendFormat:@" item=%@", v8];

  [v3 appendFormat:@" queueItemType=%ld", -[TUConversationNotice queueItemType](self, "queueItemType")];
  [v3 appendString:@">"];
  v9 = [v3 copy];

  return v9;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(TUConversationNotice *)self isEqualToConversationNotice:v4];

  return v5;
}

- (BOOL)isEqualToConversationNotice:(id)a3
{
  v4 = a3;
  v5 = [(TUConversationNotice *)self UUID];
  v6 = [v4 UUID];
  if ([v5 isEqual:v6])
  {
    v7 = [(TUConversationNotice *)self actionURL];
    v8 = [v4 actionURL];
    if (TUObjectsAreEqualOrNil(v7, v8) && (v9 = -[TUConversationNotice sessionEventType](self, "sessionEventType"), v9 == [v4 sessionEventType]))
    {
      v10 = [(TUConversationNotice *)self sessionUUID];
      v11 = [v4 sessionUUID];
      if ([v10 isEqual:v11])
      {
        v12 = [(TUConversationNotice *)self bundleIdentifier];
        v13 = [v4 bundleIdentifier];
        if ([v12 isEqual:v13])
        {
          v21 = v12;
          v14 = [(TUConversationNotice *)self item];
          [v4 item];
          v20 = v22 = v14;
          if ([v14 isEqual:?] && (v15 = -[TUConversationNotice queueItemType](self, "queueItemType"), v15 == objc_msgSend(v4, "queueItemType")))
          {
            v16 = [(TUConversationNotice *)self session];
            v19 = [v4 session];
            v17 = TUObjectsAreEqualOrNil(v16, v19);
          }

          else
          {
            v17 = 0;
          }

          v12 = v21;
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
  v3 = [(TUConversationNotice *)self sessionUUID];
  v4 = [v3 hash];
  v5 = [(TUConversationNotice *)self sessionEventType]^ v4;
  v6 = [(TUConversationNotice *)self actionURL];
  v7 = [v6 hash];
  v8 = [(TUConversationNotice *)self UUID];
  v9 = v5 ^ v7 ^ [v8 hash];
  v10 = [(TUConversationNotice *)self bundleIdentifier];
  v11 = [v10 hash];
  v12 = [(TUConversationNotice *)self item];
  v13 = v11 ^ [v12 hash];
  v14 = v9 ^ v13 ^ [(TUConversationNotice *)self queueItemType];
  v15 = [(TUConversationNotice *)self session];
  v16 = [v15 hash];

  return v14 ^ v16;
}

- (TUConversationNotice)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = NSStringFromSelector(sel_UUID);
  v7 = [v4 decodeObjectOfClass:v5 forKey:v6];

  v8 = [(TUConversationNotice *)self initWithUUID:v7];
  if (v8)
  {
    v9 = objc_opt_class();
    v10 = NSStringFromSelector(sel_sessionUUID);
    v11 = [v4 decodeObjectOfClass:v9 forKey:v10];
    sessionUUID = v8->_sessionUUID;
    v8->_sessionUUID = v11;

    v13 = objc_opt_class();
    v14 = NSStringFromSelector(sel_actionURL);
    v15 = [v4 decodeObjectOfClass:v13 forKey:v14];
    actionURL = v8->_actionURL;
    v8->_actionURL = v15;

    v17 = NSStringFromSelector(sel_sessionEventType);
    v8->_sessionEventType = [v4 decodeIntegerForKey:v17];

    v18 = objc_opt_class();
    v19 = NSStringFromSelector(sel_bundleIdentifier);
    v20 = [v4 decodeObjectOfClass:v18 forKey:v19];
    bundleIdentifier = v8->_bundleIdentifier;
    v8->_bundleIdentifier = v20;

    v22 = objc_opt_class();
    v23 = NSStringFromSelector(sel_item);
    v24 = [v4 decodeObjectOfClass:v22 forKey:v23];
    item = v8->_item;
    v8->_item = v24;

    v26 = NSStringFromSelector(sel_queueItemType);
    v8->_queueItemType = [v4 decodeIntegerForKey:v26];

    v27 = objc_opt_class();
    v28 = NSStringFromSelector(sel_session);
    v29 = [v4 decodeObjectOfClass:v27 forKey:v28];
    session = v8->_session;
    v8->_session = v29;
  }

  return v8;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(TUConversationNotice *)self sessionEventType];
  v6 = NSStringFromSelector(sel_sessionEventType);
  [v4 encodeInteger:v5 forKey:v6];

  v7 = [(TUConversationNotice *)self UUID];
  v8 = NSStringFromSelector(sel_UUID);
  [v4 encodeObject:v7 forKey:v8];

  v9 = [(TUConversationNotice *)self sessionUUID];
  v10 = NSStringFromSelector(sel_sessionUUID);
  [v4 encodeObject:v9 forKey:v10];

  v11 = [(TUConversationNotice *)self actionURL];
  v12 = NSStringFromSelector(sel_actionURL);
  [v4 encodeObject:v11 forKey:v12];

  v13 = [(TUConversationNotice *)self bundleIdentifier];
  v14 = NSStringFromSelector(sel_bundleIdentifier);
  [v4 encodeObject:v13 forKey:v14];

  v15 = [(TUConversationNotice *)self item];
  v16 = NSStringFromSelector(sel_item);
  [v4 encodeObject:v15 forKey:v16];

  v17 = [(TUConversationNotice *)self queueItemType];
  v18 = NSStringFromSelector(sel_queueItemType);
  [v4 encodeInteger:v17 forKey:v18];

  v20 = [(TUConversationNotice *)self session];
  v19 = NSStringFromSelector(sel_session);
  [v4 encodeObject:v20 forKey:v19];
}

@end