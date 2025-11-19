@interface TUConversationActivityEvent
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToConversationActivityEvent:(id)a3;
- (TUConversationActivityEvent)initWithCoder:(id)a3;
- (TUConversationActivityEvent)initWithSessionUUID:(id)a3 originator:(id)a4 type:(int64_t)a5;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation TUConversationActivityEvent

- (TUConversationActivityEvent)initWithSessionUUID:(id)a3 originator:(id)a4 type:(int64_t)a5
{
  v9 = a3;
  v10 = a4;
  v15.receiver = self;
  v15.super_class = TUConversationActivityEvent;
  v11 = [(TUConversationActivityEvent *)&v15 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_sessionUUID, a3);
    objc_storeStrong(&v12->_originator, a4);
    v12->_type = a5;
    localizedDescription = v12->_localizedDescription;
    v12->_localizedDescription = &stru_1F098C218;

    v12->_queueItemType = 0;
  }

  return v12;
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@ %p", objc_opt_class(), self];
  v4 = [(TUConversationActivityEvent *)self sessionUUID];
  [v3 appendFormat:@" sessionUUID=%@", v4];

  v5 = [(TUConversationActivityEvent *)self originator];
  [v3 appendFormat:@" originator=%@", v5];

  [v3 appendFormat:@" type=%ld", -[TUConversationActivityEvent type](self, "type")];
  v6 = [(TUConversationActivityEvent *)self item];
  [v3 appendFormat:@" item=%@", v6];

  [v3 appendFormat:@" queueItemType=%d", -[TUConversationActivityEvent queueItemType](self, "queueItemType")];
  v7 = [(TUConversationActivityEvent *)self url];
  [v3 appendFormat:@" url=%@", v7];

  [v3 appendString:@">"];
  v8 = [v3 copy];

  return v8;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(TUConversationActivityEvent *)self isEqualToConversationActivityEvent:v4];

  return v5;
}

- (BOOL)isEqualToConversationActivityEvent:(id)a3
{
  v4 = a3;
  v5 = [(TUConversationActivityEvent *)self sessionUUID];
  v6 = [v4 sessionUUID];
  if ([v5 isEqual:v6])
  {
    v7 = [(TUConversationActivityEvent *)self originator];
    v8 = [v4 originator];
    if ([v7 isEqualToParticipant:v8] && (v9 = -[TUConversationActivityEvent type](self, "type"), v9 == objc_msgSend(v4, "type")))
    {
      v10 = [(TUConversationActivityEvent *)self item];
      v11 = [v4 item];
      if (TUObjectsAreEqualOrNil(v10, v11) && (v12 = -[TUConversationActivityEvent queueItemType](self, "queueItemType"), v12 == [v4 queueItemType]))
      {
        v13 = [(TUConversationActivityEvent *)self session];
        v14 = [v4 session];
        if (TUObjectsAreEqualOrNil(v13, v14))
        {
          v18 = [(TUConversationActivityEvent *)self url];
          [v4 url];
          v15 = v19 = v13;
          v16 = TUObjectsAreEqualOrNil(v18, v15);

          v13 = v19;
        }

        else
        {
          v16 = 0;
        }
      }

      else
      {
        v16 = 0;
      }
    }

    else
    {
      v16 = 0;
    }
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (unint64_t)hash
{
  v3 = [(TUConversationActivityEvent *)self sessionUUID];
  v4 = [v3 hash];
  v5 = [(TUConversationActivityEvent *)self originator];
  v6 = [v5 hash] ^ v4;
  v7 = [(TUConversationActivityEvent *)self type];
  v8 = [(TUConversationActivityEvent *)self item];
  v9 = v6 ^ v7 ^ [v8 hash];
  v10 = [(TUConversationActivityEvent *)self queueItemType];
  v11 = [(TUConversationActivityEvent *)self session];
  v12 = v10 ^ [v11 hash];
  v13 = [(TUConversationActivityEvent *)self url];
  v14 = v12 ^ [v13 hash];

  return v9 ^ v14;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  v5 = [(TUConversationActivityEvent *)self sessionUUID];
  v6 = [(TUConversationActivityEvent *)self originator];
  v7 = [v4 initWithSessionUUID:v5 originator:v6 type:{-[TUConversationActivityEvent type](self, "type")}];

  v8 = [(TUConversationActivityEvent *)self item];
  [v7 setItem:v8];

  [v7 setQueueItemType:{-[TUConversationActivityEvent queueItemType](self, "queueItemType")}];
  v9 = [(TUConversationActivityEvent *)self session];
  [v7 setSession:v9];

  v10 = [(TUConversationActivityEvent *)self url];
  [v7 setUrl:v10];

  return v7;
}

- (TUConversationActivityEvent)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = NSStringFromSelector(sel_UUID);
  v7 = [v4 decodeObjectOfClass:v5 forKey:v6];

  v8 = objc_opt_class();
  v9 = NSStringFromSelector(sel_originator);
  v10 = [v4 decodeObjectOfClass:v8 forKey:v9];

  v11 = NSStringFromSelector(sel_type);
  v12 = [v4 decodeIntegerForKey:v11];

  v13 = objc_opt_class();
  v14 = NSStringFromSelector("url");
  v15 = [v4 decodeObjectOfClass:v13 forKey:v14];

  v16 = [(TUConversationActivityEvent *)self initWithSessionUUID:v7 originator:v10 type:v12];
  v17 = objc_opt_class();
  v18 = NSStringFromSelector(sel_item);
  v19 = [v4 decodeObjectOfClass:v17 forKey:v18];
  [(TUConversationActivityEvent *)v16 setItem:v19];

  v20 = NSStringFromSelector(sel_queueItemType);
  -[TUConversationActivityEvent setQueueItemType:](v16, "setQueueItemType:", [v4 decodeIntegerForKey:v20]);

  v21 = objc_opt_class();
  v22 = NSStringFromSelector(sel_session);
  v23 = [v4 decodeObjectOfClass:v21 forKey:v22];

  [(TUConversationActivityEvent *)v16 setSession:v23];
  [(TUConversationActivityEvent *)v16 setUrl:v15];

  return v16;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(TUConversationActivityEvent *)self sessionUUID];
  v6 = NSStringFromSelector(sel_sessionUUID);
  [v4 encodeObject:v5 forKey:v6];

  v7 = [(TUConversationActivityEvent *)self originator];
  v8 = NSStringFromSelector(sel_originator);
  [v4 encodeObject:v7 forKey:v8];

  v9 = [(TUConversationActivityEvent *)self type];
  v10 = NSStringFromSelector(sel_type);
  [v4 encodeInteger:v9 forKey:v10];

  v11 = [(TUConversationActivityEvent *)self item];
  v12 = NSStringFromSelector(sel_item);
  [v4 encodeObject:v11 forKey:v12];

  v13 = [(TUConversationActivityEvent *)self queueItemType];
  v14 = NSStringFromSelector(sel_queueItemType);
  [v4 encodeInteger:v13 forKey:v14];

  v15 = [(TUConversationActivityEvent *)self session];
  v16 = NSStringFromSelector(sel_session);
  [v4 encodeObject:v15 forKey:v16];

  v18 = [(TUConversationActivityEvent *)self url];
  v17 = NSStringFromSelector("url");
  [v4 encodeObject:v18 forKey:v17];
}

@end