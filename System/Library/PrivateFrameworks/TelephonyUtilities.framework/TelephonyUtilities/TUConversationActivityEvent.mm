@interface TUConversationActivityEvent
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToConversationActivityEvent:(id)event;
- (TUConversationActivityEvent)initWithCoder:(id)coder;
- (TUConversationActivityEvent)initWithSessionUUID:(id)d originator:(id)originator type:(int64_t)type;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation TUConversationActivityEvent

- (TUConversationActivityEvent)initWithSessionUUID:(id)d originator:(id)originator type:(int64_t)type
{
  dCopy = d;
  originatorCopy = originator;
  v15.receiver = self;
  v15.super_class = TUConversationActivityEvent;
  v11 = [(TUConversationActivityEvent *)&v15 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_sessionUUID, d);
    objc_storeStrong(&v12->_originator, originator);
    v12->_type = type;
    localizedDescription = v12->_localizedDescription;
    v12->_localizedDescription = &stru_1F098C218;

    v12->_queueItemType = 0;
  }

  return v12;
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@ %p", objc_opt_class(), self];
  sessionUUID = [(TUConversationActivityEvent *)self sessionUUID];
  [v3 appendFormat:@" sessionUUID=%@", sessionUUID];

  originator = [(TUConversationActivityEvent *)self originator];
  [v3 appendFormat:@" originator=%@", originator];

  [v3 appendFormat:@" type=%ld", -[TUConversationActivityEvent type](self, "type")];
  item = [(TUConversationActivityEvent *)self item];
  [v3 appendFormat:@" item=%@", item];

  [v3 appendFormat:@" queueItemType=%d", -[TUConversationActivityEvent queueItemType](self, "queueItemType")];
  v7 = [(TUConversationActivityEvent *)self url];
  [v3 appendFormat:@" url=%@", v7];

  [v3 appendString:@">"];
  v8 = [v3 copy];

  return v8;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(TUConversationActivityEvent *)self isEqualToConversationActivityEvent:equalCopy];

  return v5;
}

- (BOOL)isEqualToConversationActivityEvent:(id)event
{
  eventCopy = event;
  sessionUUID = [(TUConversationActivityEvent *)self sessionUUID];
  sessionUUID2 = [eventCopy sessionUUID];
  if ([sessionUUID isEqual:sessionUUID2])
  {
    originator = [(TUConversationActivityEvent *)self originator];
    originator2 = [eventCopy originator];
    if ([originator isEqualToParticipant:originator2] && (v9 = -[TUConversationActivityEvent type](self, "type"), v9 == objc_msgSend(eventCopy, "type")))
    {
      item = [(TUConversationActivityEvent *)self item];
      item2 = [eventCopy item];
      if (TUObjectsAreEqualOrNil(item, item2) && (v12 = -[TUConversationActivityEvent queueItemType](self, "queueItemType"), v12 == [eventCopy queueItemType]))
      {
        session = [(TUConversationActivityEvent *)self session];
        session2 = [eventCopy session];
        if (TUObjectsAreEqualOrNil(session, session2))
        {
          v18 = [(TUConversationActivityEvent *)self url];
          [eventCopy url];
          v15 = v19 = session;
          v16 = TUObjectsAreEqualOrNil(v18, v15);

          session = v19;
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
  sessionUUID = [(TUConversationActivityEvent *)self sessionUUID];
  v4 = [sessionUUID hash];
  originator = [(TUConversationActivityEvent *)self originator];
  v6 = [originator hash] ^ v4;
  type = [(TUConversationActivityEvent *)self type];
  item = [(TUConversationActivityEvent *)self item];
  v9 = v6 ^ type ^ [item hash];
  queueItemType = [(TUConversationActivityEvent *)self queueItemType];
  session = [(TUConversationActivityEvent *)self session];
  v12 = queueItemType ^ [session hash];
  v13 = [(TUConversationActivityEvent *)self url];
  v14 = v12 ^ [v13 hash];

  return v9 ^ v14;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  sessionUUID = [(TUConversationActivityEvent *)self sessionUUID];
  originator = [(TUConversationActivityEvent *)self originator];
  v7 = [v4 initWithSessionUUID:sessionUUID originator:originator type:{-[TUConversationActivityEvent type](self, "type")}];

  item = [(TUConversationActivityEvent *)self item];
  [v7 setItem:item];

  [v7 setQueueItemType:{-[TUConversationActivityEvent queueItemType](self, "queueItemType")}];
  session = [(TUConversationActivityEvent *)self session];
  [v7 setSession:session];

  v10 = [(TUConversationActivityEvent *)self url];
  [v7 setUrl:v10];

  return v7;
}

- (TUConversationActivityEvent)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = objc_opt_class();
  v6 = NSStringFromSelector(sel_UUID);
  v7 = [coderCopy decodeObjectOfClass:v5 forKey:v6];

  v8 = objc_opt_class();
  v9 = NSStringFromSelector(sel_originator);
  v10 = [coderCopy decodeObjectOfClass:v8 forKey:v9];

  v11 = NSStringFromSelector(sel_type);
  v12 = [coderCopy decodeIntegerForKey:v11];

  v13 = objc_opt_class();
  v14 = NSStringFromSelector("url");
  v15 = [coderCopy decodeObjectOfClass:v13 forKey:v14];

  v16 = [(TUConversationActivityEvent *)self initWithSessionUUID:v7 originator:v10 type:v12];
  v17 = objc_opt_class();
  v18 = NSStringFromSelector(sel_item);
  v19 = [coderCopy decodeObjectOfClass:v17 forKey:v18];
  [(TUConversationActivityEvent *)v16 setItem:v19];

  v20 = NSStringFromSelector(sel_queueItemType);
  -[TUConversationActivityEvent setQueueItemType:](v16, "setQueueItemType:", [coderCopy decodeIntegerForKey:v20]);

  v21 = objc_opt_class();
  v22 = NSStringFromSelector(sel_session);
  v23 = [coderCopy decodeObjectOfClass:v21 forKey:v22];

  [(TUConversationActivityEvent *)v16 setSession:v23];
  [(TUConversationActivityEvent *)v16 setUrl:v15];

  return v16;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  sessionUUID = [(TUConversationActivityEvent *)self sessionUUID];
  v6 = NSStringFromSelector(sel_sessionUUID);
  [coderCopy encodeObject:sessionUUID forKey:v6];

  originator = [(TUConversationActivityEvent *)self originator];
  v8 = NSStringFromSelector(sel_originator);
  [coderCopy encodeObject:originator forKey:v8];

  type = [(TUConversationActivityEvent *)self type];
  v10 = NSStringFromSelector(sel_type);
  [coderCopy encodeInteger:type forKey:v10];

  item = [(TUConversationActivityEvent *)self item];
  v12 = NSStringFromSelector(sel_item);
  [coderCopy encodeObject:item forKey:v12];

  queueItemType = [(TUConversationActivityEvent *)self queueItemType];
  v14 = NSStringFromSelector(sel_queueItemType);
  [coderCopy encodeInteger:queueItemType forKey:v14];

  session = [(TUConversationActivityEvent *)self session];
  v16 = NSStringFromSelector(sel_session);
  [coderCopy encodeObject:session forKey:v16];

  v18 = [(TUConversationActivityEvent *)self url];
  v17 = NSStringFromSelector("url");
  [coderCopy encodeObject:v18 forKey:v17];
}

@end