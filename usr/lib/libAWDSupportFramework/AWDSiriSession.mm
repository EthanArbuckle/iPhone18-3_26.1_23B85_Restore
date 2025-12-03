@interface AWDSiriSession
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addSiriRequest:(id)request;
- (void)copyTo:(id)to;
- (void)dealloc;
- (void)mergeFrom:(id)from;
- (void)setHasSessionStartTimestamp:(BOOL)timestamp;
- (void)setHasTimestamp:(BOOL)timestamp;
- (void)writeTo:(id)to;
@end

@implementation AWDSiriSession

- (void)dealloc
{
  [(AWDSiriSession *)self setCompanionModel:0];
  [(AWDSiriSession *)self setCompanionOS:0];
  [(AWDSiriSession *)self setSiriRequests:0];
  v3.receiver = self;
  v3.super_class = AWDSiriSession;
  [(AWDSiriSession *)&v3 dealloc];
}

- (void)setHasTimestamp:(BOOL)timestamp
{
  if (timestamp)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasSessionStartTimestamp:(BOOL)timestamp
{
  if (timestamp)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (void)addSiriRequest:(id)request
{
  siriRequests = self->_siriRequests;
  if (!siriRequests)
  {
    siriRequests = objc_alloc_init(MEMORY[0x29EDB8DE8]);
    self->_siriRequests = siriRequests;
  }

  [(NSMutableArray *)siriRequests addObject:request];
}

- (id)description
{
  v3.receiver = self;
  v3.super_class = AWDSiriSession;
  return [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@ %@", -[AWDSiriSession description](&v3, sel_description), -[AWDSiriSession dictionaryRepresentation](self, "dictionaryRepresentation")];
}

- (id)dictionaryRepresentation
{
  v20 = *MEMORY[0x29EDCA608];
  dictionary = [MEMORY[0x29EDB8E00] dictionary];
  has = self->_has;
  if ((has & 4) != 0)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_timestamp), @"timestamp"}];
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 1) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_3;
  }

  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_sessionStartTimestamp), @"sessionStartTimestamp"}];
  if (*&self->_has)
  {
LABEL_4:
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_sessionEndTimestamp), @"sessionEndTimestamp"}];
  }

LABEL_5:
  companionModel = self->_companionModel;
  if (companionModel)
  {
    [dictionary setObject:companionModel forKey:@"companionModel"];
  }

  companionOS = self->_companionOS;
  if (companionOS)
  {
    [dictionary setObject:companionOS forKey:@"companionOS"];
  }

  if ([(NSMutableArray *)self->_siriRequests count])
  {
    v7 = [objc_alloc(MEMORY[0x29EDB8DE8]) initWithCapacity:{-[NSMutableArray count](self->_siriRequests, "count")}];
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    siriRequests = self->_siriRequests;
    v9 = [(NSMutableArray *)siriRequests countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v16;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v16 != v11)
          {
            objc_enumerationMutation(siriRequests);
          }

          [v7 addObject:{objc_msgSend(*(*(&v15 + 1) + 8 * i), "dictionaryRepresentation")}];
        }

        v10 = [(NSMutableArray *)siriRequests countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v10);
    }

    [dictionary setObject:v7 forKey:@"siriRequest"];
  }

  v13 = *MEMORY[0x29EDCA608];
  return dictionary;
}

- (void)writeTo:(id)to
{
  v20 = *MEMORY[0x29EDCA608];
  has = self->_has;
  if ((has & 4) != 0)
  {
    timestamp = self->_timestamp;
    PBDataWriterWriteUint64Field();
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 1) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_3;
  }

  sessionStartTimestamp = self->_sessionStartTimestamp;
  PBDataWriterWriteUint64Field();
  if (*&self->_has)
  {
LABEL_4:
    sessionEndTimestamp = self->_sessionEndTimestamp;
    PBDataWriterWriteUint64Field();
  }

LABEL_5:
  if (self->_companionModel)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_companionOS)
  {
    PBDataWriterWriteStringField();
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  siriRequests = self->_siriRequests;
  v7 = [(NSMutableArray *)siriRequests countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(siriRequests);
        }

        v11 = *(*(&v15 + 1) + 8 * i);
        PBDataWriterWriteSubmessage();
      }

      v8 = [(NSMutableArray *)siriRequests countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  v12 = *MEMORY[0x29EDCA608];
}

- (void)copyTo:(id)to
{
  has = self->_has;
  if ((has & 4) != 0)
  {
    *(to + 3) = self->_timestamp;
    *(to + 56) |= 4u;
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 1) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_3;
  }

  *(to + 2) = self->_sessionStartTimestamp;
  *(to + 56) |= 2u;
  if (*&self->_has)
  {
LABEL_4:
    *(to + 1) = self->_sessionEndTimestamp;
    *(to + 56) |= 1u;
  }

LABEL_5:
  if (self->_companionModel)
  {
    [to setCompanionModel:?];
  }

  if (self->_companionOS)
  {
    [to setCompanionOS:?];
  }

  if ([(AWDSiriSession *)self siriRequestsCount])
  {
    [to clearSiriRequests];
    siriRequestsCount = [(AWDSiriSession *)self siriRequestsCount];
    if (siriRequestsCount)
    {
      v7 = siriRequestsCount;
      for (i = 0; i != v7; ++i)
      {
        [to addSiriRequest:{-[AWDSiriSession siriRequestAtIndex:](self, "siriRequestAtIndex:", i)}];
      }
    }
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v21 = *MEMORY[0x29EDCA608];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  has = self->_has;
  if ((has & 4) != 0)
  {
    *(v5 + 24) = self->_timestamp;
    *(v5 + 56) |= 4u;
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 1) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_3;
  }

  *(v5 + 16) = self->_sessionStartTimestamp;
  *(v5 + 56) |= 2u;
  if (*&self->_has)
  {
LABEL_4:
    *(v5 + 8) = self->_sessionEndTimestamp;
    *(v5 + 56) |= 1u;
  }

LABEL_5:

  *(v6 + 32) = [(NSString *)self->_companionModel copyWithZone:zone];
  *(v6 + 40) = [(NSString *)self->_companionOS copyWithZone:zone];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  siriRequests = self->_siriRequests;
  v9 = [(NSMutableArray *)siriRequests countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v17;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v17 != v11)
        {
          objc_enumerationMutation(siriRequests);
        }

        v13 = [*(*(&v16 + 1) + 8 * i) copyWithZone:zone];
        [v6 addSiriRequest:v13];
      }

      v10 = [(NSMutableArray *)siriRequests countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v10);
  }

  v14 = *MEMORY[0x29EDCA608];
  return v6;
}

- (BOOL)isEqual:(id)equal
{
  v5 = [equal isMemberOfClass:objc_opt_class()];
  if (v5)
  {
    v6 = *(equal + 56);
    if ((*&self->_has & 4) != 0)
    {
      if ((*(equal + 56) & 4) == 0 || self->_timestamp != *(equal + 3))
      {
        goto LABEL_23;
      }
    }

    else if ((*(equal + 56) & 4) != 0)
    {
LABEL_23:
      LOBYTE(v5) = 0;
      return v5;
    }

    if ((*&self->_has & 2) != 0)
    {
      if ((*(equal + 56) & 2) == 0 || self->_sessionStartTimestamp != *(equal + 2))
      {
        goto LABEL_23;
      }
    }

    else if ((*(equal + 56) & 2) != 0)
    {
      goto LABEL_23;
    }

    if (*&self->_has)
    {
      if ((*(equal + 56) & 1) == 0 || self->_sessionEndTimestamp != *(equal + 1))
      {
        goto LABEL_23;
      }
    }

    else if (*(equal + 56))
    {
      goto LABEL_23;
    }

    companionModel = self->_companionModel;
    if (!(companionModel | *(equal + 4)) || (v5 = [(NSString *)companionModel isEqual:?]) != 0)
    {
      companionOS = self->_companionOS;
      if (!(companionOS | *(equal + 5)) || (v5 = [(NSString *)companionOS isEqual:?]) != 0)
      {
        siriRequests = self->_siriRequests;
        if (siriRequests | *(equal + 6))
        {

          LOBYTE(v5) = [(NSMutableArray *)siriRequests isEqual:?];
        }

        else
        {
          LOBYTE(v5) = 1;
        }
      }
    }
  }

  return v5;
}

- (unint64_t)hash
{
  if ((*&self->_has & 4) == 0)
  {
    v3 = 0;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    v4 = 0;
    if (*&self->_has)
    {
      goto LABEL_4;
    }

LABEL_7:
    v5 = 0;
    goto LABEL_8;
  }

  v3 = 2654435761u * self->_timestamp;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  v4 = 2654435761u * self->_sessionStartTimestamp;
  if ((*&self->_has & 1) == 0)
  {
    goto LABEL_7;
  }

LABEL_4:
  v5 = 2654435761u * self->_sessionEndTimestamp;
LABEL_8:
  v6 = v4 ^ v3 ^ v5 ^ [(NSString *)self->_companionModel hash];
  v7 = [(NSString *)self->_companionOS hash];
  return v6 ^ v7 ^ [(NSMutableArray *)self->_siriRequests hash];
}

- (void)mergeFrom:(id)from
{
  v17 = *MEMORY[0x29EDCA608];
  v5 = *(from + 56);
  if ((v5 & 4) != 0)
  {
    self->_timestamp = *(from + 3);
    *&self->_has |= 4u;
    v5 = *(from + 56);
    if ((v5 & 2) == 0)
    {
LABEL_3:
      if ((v5 & 1) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*(from + 56) & 2) == 0)
  {
    goto LABEL_3;
  }

  self->_sessionStartTimestamp = *(from + 2);
  *&self->_has |= 2u;
  if (*(from + 56))
  {
LABEL_4:
    self->_sessionEndTimestamp = *(from + 1);
    *&self->_has |= 1u;
  }

LABEL_5:
  if (*(from + 4))
  {
    [(AWDSiriSession *)self setCompanionModel:?];
  }

  if (*(from + 5))
  {
    [(AWDSiriSession *)self setCompanionOS:?];
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v6 = *(from + 6);
  v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v13;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [(AWDSiriSession *)self addSiriRequest:*(*(&v12 + 1) + 8 * i)];
      }

      v8 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }

  v11 = *MEMORY[0x29EDCA608];
}

@end