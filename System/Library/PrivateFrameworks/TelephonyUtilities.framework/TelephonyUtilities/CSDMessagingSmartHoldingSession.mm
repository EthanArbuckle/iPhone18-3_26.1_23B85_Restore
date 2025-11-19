@interface CSDMessagingSmartHoldingSession
- (BOOL)isEqual:(id)a3;
- (CSDMessagingSmartHoldingSession)initWithSmartHoldingSession:(id)a3;
- (TUSmartHoldingSession)tuSmartHoldingSession;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsRequiresUserAttentionReason:(id)a3;
- (int)StringAsState:(id)a3;
- (int)requiresUserAttentionReason;
- (int)state;
- (unint64_t)hash;
- (void)addEvents:(id)a3;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasState:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation CSDMessagingSmartHoldingSession

- (CSDMessagingSmartHoldingSession)initWithSmartHoldingSession:(id)a3
{
  v4 = a3;
  v22.receiver = self;
  v22.super_class = CSDMessagingSmartHoldingSession;
  v5 = [(CSDMessagingSmartHoldingSession *)&v22 init];
  if (v5)
  {
    v6 = [v4 uuid];
    v7 = [v6 UUIDString];
    uuid = v5->_uuid;
    v5->_uuid = v7;

    *&v5->_has |= 2u;
    v5->_state = [v4 state];
    *&v5->_has |= 1u;
    v5->_requiresUserAttentionReason = [v4 requiresUserAttentionReason];
    v9 = +[NSMutableArray array];
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v10 = [v4 events];
    v11 = [v10 countByEnumeratingWithState:&v18 objects:v23 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v19;
      do
      {
        v14 = 0;
        do
        {
          if (*v19 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = [[CSDMessagingSmartHoldingEvent alloc] initWithEvent:*(*(&v18 + 1) + 8 * v14)];
          [(NSMutableArray *)v9 addObject:v15];

          v14 = v14 + 1;
        }

        while (v12 != v14);
        v12 = [v10 countByEnumeratingWithState:&v18 objects:v23 count:16];
      }

      while (v12);
    }

    events = v5->_events;
    v5->_events = v9;
  }

  return v5;
}

- (TUSmartHoldingSession)tuSmartHoldingSession
{
  v3 = [NSUUID alloc];
  v4 = [(CSDMessagingSmartHoldingSession *)self uuid];
  v5 = [v3 initWithUUIDString:v4];

  v6 = [(CSDMessagingSmartHoldingSession *)self state];
  v7 = +[NSMutableArray array];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v8 = [(CSDMessagingSmartHoldingSession *)self events];
  v9 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v17;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v17 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [*(*(&v16 + 1) + 8 * i) tuSmartHoldingEvent];
        [v7 addObject:v13];
      }

      v10 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v10);
  }

  v14 = [[TUSmartHoldingSession alloc] initWithUUID:v5 state:v6 events:v7 requiresUserAttentionReason:-[CSDMessagingSmartHoldingSession requiresUserAttentionReason](self hostedOnCurrentDevice:{"requiresUserAttentionReason"), 0}];

  return v14;
}

- (int)state
{
  if ((*&self->_has & 2) != 0)
  {
    return self->_state;
  }

  else
  {
    return 0;
  }
}

- (void)setHasState:(BOOL)a3
{
  if (a3)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (int)StringAsState:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"Waiting"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"DetectingHold"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"DetectedHold"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"RequiresUserAttention"])
  {
    v4 = 3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)addEvents:(id)a3
{
  v4 = a3;
  events = self->_events;
  v8 = v4;
  if (!events)
  {
    v6 = objc_alloc_init(NSMutableArray);
    v7 = self->_events;
    self->_events = v6;

    v4 = v8;
    events = self->_events;
  }

  [(NSMutableArray *)events addObject:v4];
}

- (int)requiresUserAttentionReason
{
  if (*&self->_has)
  {
    return self->_requiresUserAttentionReason;
  }

  else
  {
    return 0;
  }
}

- (int)StringAsRequiresUserAttentionReason:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"Unknown"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"NotRequired"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"RemoteAgentDetected"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"LanguageUnsupported"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"Error"])
  {
    v4 = 4;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = CSDMessagingSmartHoldingSession;
  v3 = [(CSDMessagingSmartHoldingSession *)&v7 description];
  v4 = [(CSDMessagingSmartHoldingSession *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, v4];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  v4 = v3;
  uuid = self->_uuid;
  if (uuid)
  {
    [v3 setObject:uuid forKey:@"uuid"];
  }

  if ((*&self->_has & 2) != 0)
  {
    state = self->_state;
    if (state >= 4)
    {
      v7 = [NSString stringWithFormat:@"(unknown: %i)", self->_state];
    }

    else
    {
      v7 = *(&off_10061EA88 + state);
    }

    [v4 setObject:v7 forKey:@"state"];
  }

  if ([(NSMutableArray *)self->_events count])
  {
    v8 = [[NSMutableArray alloc] initWithCapacity:{-[NSMutableArray count](self->_events, "count")}];
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v9 = self->_events;
    v10 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v19;
      do
      {
        for (i = 0; i != v11; i = i + 1)
        {
          if (*v19 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = [*(*(&v18 + 1) + 8 * i) dictionaryRepresentation];
          [v8 addObject:v14];
        }

        v11 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v11);
    }

    [v4 setObject:v8 forKey:@"events"];
  }

  if (*&self->_has)
  {
    requiresUserAttentionReason = self->_requiresUserAttentionReason;
    if (requiresUserAttentionReason >= 5)
    {
      v16 = [NSString stringWithFormat:@"(unknown: %i)", self->_requiresUserAttentionReason];
    }

    else
    {
      v16 = *(&off_10061EAA8 + requiresUserAttentionReason);
    }

    [v4 setObject:v16 forKey:@"requiresUserAttentionReason"];
  }

  return v4;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  if (self->_uuid)
  {
    PBDataWriterWriteStringField();
  }

  if ((*&self->_has & 2) != 0)
  {
    state = self->_state;
    PBDataWriterWriteInt32Field();
  }

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = self->_events;
  v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      v10 = 0;
      do
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v13 + 1) + 8 * v10);
        PBDataWriterWriteSubmessage();
        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  if (*&self->_has)
  {
    requiresUserAttentionReason = self->_requiresUserAttentionReason;
    PBDataWriterWriteInt32Field();
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v9 = v4;
  if (self->_uuid)
  {
    [v4 setUuid:?];
    v4 = v9;
  }

  if ((*&self->_has & 2) != 0)
  {
    *(v4 + 5) = self->_state;
    *(v4 + 32) |= 2u;
  }

  if ([(CSDMessagingSmartHoldingSession *)self eventsCount])
  {
    [v9 clearEvents];
    v5 = [(CSDMessagingSmartHoldingSession *)self eventsCount];
    if (v5)
    {
      v6 = v5;
      for (i = 0; i != v6; ++i)
      {
        v8 = [(CSDMessagingSmartHoldingSession *)self eventsAtIndex:i];
        [v9 addEvents:v8];
      }
    }
  }

  if (*&self->_has)
  {
    *(v9 + 4) = self->_requiresUserAttentionReason;
    *(v9 + 32) |= 1u;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_uuid copyWithZone:a3];
  v7 = v5[3];
  v5[3] = v6;

  if ((*&self->_has & 2) != 0)
  {
    *(v5 + 5) = self->_state;
    *(v5 + 32) |= 2u;
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v8 = self->_events;
  v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v16;
    do
    {
      v12 = 0;
      do
      {
        if (*v16 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [*(*(&v15 + 1) + 8 * v12) copyWithZone:{a3, v15}];
        [v5 addEvents:v13];

        v12 = v12 + 1;
      }

      while (v10 != v12);
      v10 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v10);
  }

  if (*&self->_has)
  {
    *(v5 + 4) = self->_requiresUserAttentionReason;
    *(v5 + 32) |= 1u;
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_16;
  }

  uuid = self->_uuid;
  if (uuid | *(v4 + 3))
  {
    if (![(NSString *)uuid isEqual:?])
    {
      goto LABEL_16;
    }
  }

  has = self->_has;
  v7 = *(v4 + 32);
  if ((has & 2) != 0)
  {
    if ((*(v4 + 32) & 2) == 0 || self->_state != *(v4 + 5))
    {
      goto LABEL_16;
    }
  }

  else if ((*(v4 + 32) & 2) != 0)
  {
    goto LABEL_16;
  }

  events = self->_events;
  if (events | *(v4 + 1))
  {
    if (![(NSMutableArray *)events isEqual:?])
    {
LABEL_16:
      v9 = 0;
      goto LABEL_17;
    }

    has = self->_has;
  }

  v9 = (*(v4 + 32) & 1) == 0;
  if (has)
  {
    if ((*(v4 + 32) & 1) == 0 || self->_requiresUserAttentionReason != *(v4 + 4))
    {
      goto LABEL_16;
    }

    v9 = 1;
  }

LABEL_17:

  return v9;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_uuid hash];
  if ((*&self->_has & 2) != 0)
  {
    v4 = 2654435761 * self->_state;
  }

  else
  {
    v4 = 0;
  }

  v5 = [(NSMutableArray *)self->_events hash];
  if (*&self->_has)
  {
    v6 = 2654435761 * self->_requiresUserAttentionReason;
  }

  else
  {
    v6 = 0;
  }

  return v4 ^ v3 ^ v5 ^ v6;
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  if (*(v4 + 3))
  {
    [(CSDMessagingSmartHoldingSession *)self setUuid:?];
  }

  if ((*(v4 + 32) & 2) != 0)
  {
    self->_state = *(v4 + 5);
    *&self->_has |= 2u;
  }

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v5 = *(v4 + 1);
  v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [(CSDMessagingSmartHoldingSession *)self addEvents:*(*(&v10 + 1) + 8 * i), v10];
      }

      v7 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }

  if (*(v4 + 32))
  {
    self->_requiresUserAttentionReason = *(v4 + 4);
    *&self->_has |= 1u;
  }
}

@end