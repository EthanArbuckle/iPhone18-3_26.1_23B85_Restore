@interface TUSmartHoldingSession
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToSession:(id)session;
- (NSArray)transcription;
- (TUSmartHoldingSession)initWithCoder:(id)coder;
- (TUSmartHoldingSession)initWithUUID:(id)d state:(unint64_t)state events:(id)events requiresUserAttentionReason:(unint64_t)reason hostedOnCurrentDevice:(BOOL)device;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation TUSmartHoldingSession

- (TUSmartHoldingSession)initWithUUID:(id)d state:(unint64_t)state events:(id)events requiresUserAttentionReason:(unint64_t)reason hostedOnCurrentDevice:(BOOL)device
{
  dCopy = d;
  eventsCopy = events;
  v18.receiver = self;
  v18.super_class = TUSmartHoldingSession;
  v15 = [(TUSmartHoldingSession *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_uuid, d);
    v16->_state = state;
    objc_storeStrong(&v16->_events, events);
    v16->_requiresUserAttentionReason = reason;
    v16->_hostedOnCurrentDevice = device;
  }

  return v16;
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@ %p", objc_opt_class(), self];
  uuid = [(TUSmartHoldingSession *)self uuid];
  [v3 appendFormat:@" uuid=%@", uuid];

  [v3 appendFormat:@" state=%ld", -[TUSmartHoldingSession state](self, "state")];
  events = [(TUSmartHoldingSession *)self events];
  [v3 appendFormat:@" events=%@", events];

  [v3 appendFormat:@" requiresUserAttentionReason=%ld", -[TUSmartHoldingSession requiresUserAttentionReason](self, "requiresUserAttentionReason")];
  [v3 appendFormat:@" hostedOnCurrentDevice=%i", -[TUSmartHoldingSession isHostedOnCurrentDevice](self, "isHostedOnCurrentDevice")];
  [v3 appendFormat:@" "];
  [v3 appendString:@">"];

  return v3;
}

- (NSArray)transcription
{
  v18 = *MEMORY[0x1E69E9840];
  array = [MEMORY[0x1E695DF70] array];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  events = [(TUSmartHoldingSession *)self events];
  v5 = [events countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(events);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        if ([v9 eventType] == 1)
        {
          text = [v9 text];
          [array addObject:text];
        }
      }

      v6 = [events countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  v11 = *MEMORY[0x1E69E9840];

  return array;
}

- (void)encodeWithCoder:(id)coder
{
  uuid = self->_uuid;
  coderCopy = coder;
  [coderCopy encodeObject:uuid forKey:@"uuid"];
  [coderCopy encodeInt:LODWORD(self->_state) forKey:@"state"];
  [coderCopy encodeObject:self->_events forKey:@"events"];
  [coderCopy encodeInt:LODWORD(self->_requiresUserAttentionReason) forKey:@"requiresUserAttentionReason"];
  [coderCopy encodeBool:self->_hostedOnCurrentDevice forKey:@"hostedOnCurrentDevice"];
}

- (TUSmartHoldingSession)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(TUSmartHoldingSession *)self init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"uuid"];
    uuid = v5->_uuid;
    v5->_uuid = v6;

    v5->_state = [coderCopy decodeIntForKey:@"state"];
    v8 = [coderCopy decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"events"];
    events = v5->_events;
    v5->_events = v8;

    v5->_requiresUserAttentionReason = [coderCopy decodeIntForKey:@"requiresUserAttentionReason"];
    v5->_hostedOnCurrentDevice = [coderCopy decodeBoolForKey:@"hostedOnCurrentDevice"];
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  uuid = [(TUSmartHoldingSession *)self uuid];
  v6 = [uuid copy];
  v7 = *(v4 + 16);
  *(v4 + 16) = v6;

  *(v4 + 24) = [(TUSmartHoldingSession *)self state];
  events = [(TUSmartHoldingSession *)self events];
  v9 = [events copy];
  v10 = *(v4 + 40);
  *(v4 + 40) = v9;

  *(v4 + 32) = [(TUSmartHoldingSession *)self requiresUserAttentionReason];
  *(v4 + 8) = [(TUSmartHoldingSession *)self isHostedOnCurrentDevice];
  return v4;
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
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(TUSmartHoldingSession *)self isEqualToSession:equalCopy];
  }

  return v5;
}

- (BOOL)isEqualToSession:(id)session
{
  sessionCopy = session;
  uuid = [(TUSmartHoldingSession *)self uuid];
  uuid2 = [sessionCopy uuid];
  if ([uuid isEqual:uuid2] && (v7 = -[TUSmartHoldingSession state](self, "state"), v7 == objc_msgSend(sessionCopy, "state")))
  {
    events = [(TUSmartHoldingSession *)self events];
    events2 = [sessionCopy events];
    if ([events isEqualToArray:events2] && (v10 = -[TUSmartHoldingSession requiresUserAttentionReason](self, "requiresUserAttentionReason"), v10 == objc_msgSend(sessionCopy, "requiresUserAttentionReason")))
    {
      isHostedOnCurrentDevice = [(TUSmartHoldingSession *)self isHostedOnCurrentDevice];
      v12 = isHostedOnCurrentDevice ^ [sessionCopy isHostedOnCurrentDevice] ^ 1;
    }

    else
    {
      LOBYTE(v12) = 0;
    }
  }

  else
  {
    LOBYTE(v12) = 0;
  }

  return v12;
}

@end