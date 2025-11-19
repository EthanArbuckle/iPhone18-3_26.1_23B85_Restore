@interface WFPBRemoteExecutionEvent
- (BOOL)isEqual:(id)a3;
- (NSString)key;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation WFPBRemoteExecutionEvent

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (*(v4 + 4))
  {
    [(WFPBRemoteExecutionEvent *)self setKey:?];
    v4 = v5;
  }

  if (*(v4 + 5))
  {
    [(WFPBRemoteExecutionEvent *)self setSource:?];
    v4 = v5;
  }

  if (*(v4 + 1))
  {
    [(WFPBRemoteExecutionEvent *)self setActionIdentifier:?];
    v4 = v5;
  }

  if (*(v4 + 3))
  {
    [(WFPBRemoteExecutionEvent *)self setDestinationType:?];
    v4 = v5;
  }

  if (*(v4 + 2))
  {
    [(WFPBRemoteExecutionEvent *)self setConnectionType:?];
    v4 = v5;
  }

  if (v4[52])
  {
    self->_completed = v4[48];
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_14;
  }

  key = self->_key;
  if (key | *(v4 + 4))
  {
    if (![(NSString *)key isEqual:?])
    {
      goto LABEL_14;
    }
  }

  source = self->_source;
  if (source | *(v4 + 5))
  {
    if (![(NSString *)source isEqual:?])
    {
      goto LABEL_14;
    }
  }

  actionIdentifier = self->_actionIdentifier;
  if (actionIdentifier | *(v4 + 1))
  {
    if (![(NSString *)actionIdentifier isEqual:?])
    {
      goto LABEL_14;
    }
  }

  destinationType = self->_destinationType;
  if (destinationType | *(v4 + 3))
  {
    if (![(NSString *)destinationType isEqual:?])
    {
      goto LABEL_14;
    }
  }

  connectionType = self->_connectionType;
  if (connectionType | *(v4 + 2))
  {
    if (![(NSString *)connectionType isEqual:?])
    {
      goto LABEL_14;
    }
  }

  v10 = (*(v4 + 52) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(v4 + 52) & 1) == 0)
    {
LABEL_14:
      v10 = 0;
      goto LABEL_15;
    }

    if (self->_completed)
    {
      if ((*(v4 + 48) & 1) == 0)
      {
        goto LABEL_14;
      }
    }

    else if (*(v4 + 48))
    {
      goto LABEL_14;
    }

    v10 = 1;
  }

LABEL_15:

  return v10;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_key copyWithZone:a3];
  v7 = *(v5 + 32);
  *(v5 + 32) = v6;

  v8 = [(NSString *)self->_source copyWithZone:a3];
  v9 = *(v5 + 40);
  *(v5 + 40) = v8;

  v10 = [(NSString *)self->_actionIdentifier copyWithZone:a3];
  v11 = *(v5 + 8);
  *(v5 + 8) = v10;

  v12 = [(NSString *)self->_destinationType copyWithZone:a3];
  v13 = *(v5 + 24);
  *(v5 + 24) = v12;

  v14 = [(NSString *)self->_connectionType copyWithZone:a3];
  v15 = *(v5 + 16);
  *(v5 + 16) = v14;

  if (*&self->_has)
  {
    *(v5 + 48) = self->_completed;
    *(v5 + 52) |= 1u;
  }

  return v5;
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_key)
  {
    [v4 setKey:?];
    v4 = v5;
  }

  if (self->_source)
  {
    [v5 setSource:?];
    v4 = v5;
  }

  if (self->_actionIdentifier)
  {
    [v5 setActionIdentifier:?];
    v4 = v5;
  }

  if (self->_destinationType)
  {
    [v5 setDestinationType:?];
    v4 = v5;
  }

  if (self->_connectionType)
  {
    [v5 setConnectionType:?];
    v4 = v5;
  }

  if (*&self->_has)
  {
    v4[48] = self->_completed;
    v4[52] |= 1u;
  }
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v6 = v4;
  if (self->_key)
  {
    PBDataWriterWriteStringField();
    v4 = v6;
  }

  if (self->_source)
  {
    PBDataWriterWriteStringField();
    v4 = v6;
  }

  if (self->_actionIdentifier)
  {
    PBDataWriterWriteStringField();
    v4 = v6;
  }

  if (self->_destinationType)
  {
    PBDataWriterWriteStringField();
    v4 = v6;
  }

  if (self->_connectionType)
  {
    PBDataWriterWriteStringField();
    v4 = v6;
  }

  if (*&self->_has)
  {
    completed = self->_completed;
    PBDataWriterWriteBOOLField();
    v4 = v6;
  }
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = v3;
  key = self->_key;
  if (key)
  {
    [v3 setObject:key forKey:@"key"];
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
  v5 = [(WFPBRemoteExecutionEvent *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

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