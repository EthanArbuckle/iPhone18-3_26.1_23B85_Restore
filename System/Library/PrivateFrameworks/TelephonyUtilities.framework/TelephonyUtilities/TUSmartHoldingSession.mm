@interface TUSmartHoldingSession
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToSession:(id)a3;
- (NSArray)transcription;
- (TUSmartHoldingSession)initWithCoder:(id)a3;
- (TUSmartHoldingSession)initWithUUID:(id)a3 state:(unint64_t)a4 events:(id)a5 requiresUserAttentionReason:(unint64_t)a6 hostedOnCurrentDevice:(BOOL)a7;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation TUSmartHoldingSession

- (TUSmartHoldingSession)initWithUUID:(id)a3 state:(unint64_t)a4 events:(id)a5 requiresUserAttentionReason:(unint64_t)a6 hostedOnCurrentDevice:(BOOL)a7
{
  v13 = a3;
  v14 = a5;
  v18.receiver = self;
  v18.super_class = TUSmartHoldingSession;
  v15 = [(TUSmartHoldingSession *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_uuid, a3);
    v16->_state = a4;
    objc_storeStrong(&v16->_events, a5);
    v16->_requiresUserAttentionReason = a6;
    v16->_hostedOnCurrentDevice = a7;
  }

  return v16;
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@ %p", objc_opt_class(), self];
  v4 = [(TUSmartHoldingSession *)self uuid];
  [v3 appendFormat:@" uuid=%@", v4];

  [v3 appendFormat:@" state=%ld", -[TUSmartHoldingSession state](self, "state")];
  v5 = [(TUSmartHoldingSession *)self events];
  [v3 appendFormat:@" events=%@", v5];

  [v3 appendFormat:@" requiresUserAttentionReason=%ld", -[TUSmartHoldingSession requiresUserAttentionReason](self, "requiresUserAttentionReason")];
  [v3 appendFormat:@" hostedOnCurrentDevice=%i", -[TUSmartHoldingSession isHostedOnCurrentDevice](self, "isHostedOnCurrentDevice")];
  [v3 appendFormat:@" "];
  [v3 appendString:@">"];

  return v3;
}

- (NSArray)transcription
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF70] array];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = [(TUSmartHoldingSession *)self events];
  v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
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
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        if ([v9 eventType] == 1)
        {
          v10 = [v9 text];
          [v3 addObject:v10];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  v11 = *MEMORY[0x1E69E9840];

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  uuid = self->_uuid;
  v5 = a3;
  [v5 encodeObject:uuid forKey:@"uuid"];
  [v5 encodeInt:LODWORD(self->_state) forKey:@"state"];
  [v5 encodeObject:self->_events forKey:@"events"];
  [v5 encodeInt:LODWORD(self->_requiresUserAttentionReason) forKey:@"requiresUserAttentionReason"];
  [v5 encodeBool:self->_hostedOnCurrentDevice forKey:@"hostedOnCurrentDevice"];
}

- (TUSmartHoldingSession)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(TUSmartHoldingSession *)self init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"uuid"];
    uuid = v5->_uuid;
    v5->_uuid = v6;

    v5->_state = [v4 decodeIntForKey:@"state"];
    v8 = [v4 decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"events"];
    events = v5->_events;
    v5->_events = v8;

    v5->_requiresUserAttentionReason = [v4 decodeIntForKey:@"requiresUserAttentionReason"];
    v5->_hostedOnCurrentDevice = [v4 decodeBoolForKey:@"hostedOnCurrentDevice"];
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v5 = [(TUSmartHoldingSession *)self uuid];
  v6 = [v5 copy];
  v7 = *(v4 + 16);
  *(v4 + 16) = v6;

  *(v4 + 24) = [(TUSmartHoldingSession *)self state];
  v8 = [(TUSmartHoldingSession *)self events];
  v9 = [v8 copy];
  v10 = *(v4 + 40);
  *(v4 + 40) = v9;

  *(v4 + 32) = [(TUSmartHoldingSession *)self requiresUserAttentionReason];
  *(v4 + 8) = [(TUSmartHoldingSession *)self isHostedOnCurrentDevice];
  return v4;
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
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(TUSmartHoldingSession *)self isEqualToSession:v4];
  }

  return v5;
}

- (BOOL)isEqualToSession:(id)a3
{
  v4 = a3;
  v5 = [(TUSmartHoldingSession *)self uuid];
  v6 = [v4 uuid];
  if ([v5 isEqual:v6] && (v7 = -[TUSmartHoldingSession state](self, "state"), v7 == objc_msgSend(v4, "state")))
  {
    v8 = [(TUSmartHoldingSession *)self events];
    v9 = [v4 events];
    if ([v8 isEqualToArray:v9] && (v10 = -[TUSmartHoldingSession requiresUserAttentionReason](self, "requiresUserAttentionReason"), v10 == objc_msgSend(v4, "requiresUserAttentionReason")))
    {
      v11 = [(TUSmartHoldingSession *)self isHostedOnCurrentDevice];
      v12 = v11 ^ [v4 isHostedOnCurrentDevice] ^ 1;
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