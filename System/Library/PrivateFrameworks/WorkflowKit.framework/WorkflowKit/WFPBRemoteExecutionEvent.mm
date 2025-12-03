@interface WFPBRemoteExecutionEvent
- (BOOL)isEqual:(id)equal;
- (NSString)key;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation WFPBRemoteExecutionEvent

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = fromCopy;
  if (*(fromCopy + 4))
  {
    [(WFPBRemoteExecutionEvent *)self setKey:?];
    fromCopy = v5;
  }

  if (*(fromCopy + 5))
  {
    [(WFPBRemoteExecutionEvent *)self setSource:?];
    fromCopy = v5;
  }

  if (*(fromCopy + 1))
  {
    [(WFPBRemoteExecutionEvent *)self setActionIdentifier:?];
    fromCopy = v5;
  }

  if (*(fromCopy + 3))
  {
    [(WFPBRemoteExecutionEvent *)self setDestinationType:?];
    fromCopy = v5;
  }

  if (*(fromCopy + 2))
  {
    [(WFPBRemoteExecutionEvent *)self setConnectionType:?];
    fromCopy = v5;
  }

  if (fromCopy[52])
  {
    self->_completed = fromCopy[48];
    *&self->_has |= 1u;
  }
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_key hash];
  v4 = [(NSString *)self->_source hash];
  v5 = [(NSString *)self->_actionIdentifier hash];
  v6 = [(NSString *)self->_destinationType hash];
  v7 = [(NSString *)self->_connectionType hash];
  if (*&self->_has)
  {
    v8 = 2654435761 * self->_completed;
  }

  else
  {
    v8 = 0;
  }

  return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_14;
  }

  key = self->_key;
  if (key | *(equalCopy + 4))
  {
    if (![(NSString *)key isEqual:?])
    {
      goto LABEL_14;
    }
  }

  source = self->_source;
  if (source | *(equalCopy + 5))
  {
    if (![(NSString *)source isEqual:?])
    {
      goto LABEL_14;
    }
  }

  actionIdentifier = self->_actionIdentifier;
  if (actionIdentifier | *(equalCopy + 1))
  {
    if (![(NSString *)actionIdentifier isEqual:?])
    {
      goto LABEL_14;
    }
  }

  destinationType = self->_destinationType;
  if (destinationType | *(equalCopy + 3))
  {
    if (![(NSString *)destinationType isEqual:?])
    {
      goto LABEL_14;
    }
  }

  connectionType = self->_connectionType;
  if (connectionType | *(equalCopy + 2))
  {
    if (![(NSString *)connectionType isEqual:?])
    {
      goto LABEL_14;
    }
  }

  v10 = (*(equalCopy + 52) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(equalCopy + 52) & 1) == 0)
    {
LABEL_14:
      v10 = 0;
      goto LABEL_15;
    }

    if (self->_completed)
    {
      if ((*(equalCopy + 48) & 1) == 0)
      {
        goto LABEL_14;
      }
    }

    else if (*(equalCopy + 48))
    {
      goto LABEL_14;
    }

    v10 = 1;
  }

LABEL_15:

  return v10;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_key copyWithZone:zone];
  v7 = *(v5 + 32);
  *(v5 + 32) = v6;

  v8 = [(NSString *)self->_source copyWithZone:zone];
  v9 = *(v5 + 40);
  *(v5 + 40) = v8;

  v10 = [(NSString *)self->_actionIdentifier copyWithZone:zone];
  v11 = *(v5 + 8);
  *(v5 + 8) = v10;

  v12 = [(NSString *)self->_destinationType copyWithZone:zone];
  v13 = *(v5 + 24);
  *(v5 + 24) = v12;

  v14 = [(NSString *)self->_connectionType copyWithZone:zone];
  v15 = *(v5 + 16);
  *(v5 + 16) = v14;

  if (*&self->_has)
  {
    *(v5 + 48) = self->_completed;
    *(v5 + 52) |= 1u;
  }

  return v5;
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_key)
  {
    [toCopy setKey:?];
    toCopy = v5;
  }

  if (self->_source)
  {
    [v5 setSource:?];
    toCopy = v5;
  }

  if (self->_actionIdentifier)
  {
    [v5 setActionIdentifier:?];
    toCopy = v5;
  }

  if (self->_destinationType)
  {
    [v5 setDestinationType:?];
    toCopy = v5;
  }

  if (self->_connectionType)
  {
    [v5 setConnectionType:?];
    toCopy = v5;
  }

  if (*&self->_has)
  {
    toCopy[48] = self->_completed;
    toCopy[52] |= 1u;
  }
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v6 = toCopy;
  if (self->_key)
  {
    PBDataWriterWriteStringField();
    toCopy = v6;
  }

  if (self->_source)
  {
    PBDataWriterWriteStringField();
    toCopy = v6;
  }

  if (self->_actionIdentifier)
  {
    PBDataWriterWriteStringField();
    toCopy = v6;
  }

  if (self->_destinationType)
  {
    PBDataWriterWriteStringField();
    toCopy = v6;
  }

  if (self->_connectionType)
  {
    PBDataWriterWriteStringField();
    toCopy = v6;
  }

  if (*&self->_has)
  {
    completed = self->_completed;
    PBDataWriterWriteBOOLField();
    toCopy = v6;
  }
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v4 = dictionary;
  key = self->_key;
  if (key)
  {
    [dictionary setObject:key forKey:@"key"];
  }

  source = self->_source;
  if (source)
  {
    [v4 setObject:source forKey:@"source"];
  }

  actionIdentifier = self->_actionIdentifier;
  if (actionIdentifier)
  {
    [v4 setObject:actionIdentifier forKey:@"actionIdentifier"];
  }

  destinationType = self->_destinationType;
  if (destinationType)
  {
    [v4 setObject:destinationType forKey:@"destinationType"];
  }

  connectionType = self->_connectionType;
  if (connectionType)
  {
    [v4 setObject:connectionType forKey:@"connectionType"];
  }

  if (*&self->_has)
  {
    v10 = [MEMORY[0x1E696AD98] numberWithBool:self->_completed];
    [v4 setObject:v10 forKey:@"completed"];
  }

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = WFPBRemoteExecutionEvent;
  v4 = [(WFPBRemoteExecutionEvent *)&v8 description];
  dictionaryRepresentation = [(WFPBRemoteExecutionEvent *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (NSString)key
{
  if (self->_key)
  {
    return self->_key;
  }

  else
  {
    return @"RemoteExecution";
  }
}

@end