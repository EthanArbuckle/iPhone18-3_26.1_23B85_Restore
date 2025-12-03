@interface WFPBRunShortcutErrorEvent
- (BOOL)isEqual:(id)equal;
- (NSString)key;
- (NSString)runSource;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation WFPBRunShortcutErrorEvent

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = fromCopy;
  if (*(fromCopy + 5))
  {
    [(WFPBRunShortcutErrorEvent *)self setKey:?];
    fromCopy = v5;
  }

  if (*(fromCopy + 4))
  {
    [(WFPBRunShortcutErrorEvent *)self setErrorDomain:?];
    fromCopy = v5;
  }

  if (*(fromCopy + 3))
  {
    [(WFPBRunShortcutErrorEvent *)self setErrorCode:?];
    fromCopy = v5;
  }

  if (*(fromCopy + 1))
  {
    [(WFPBRunShortcutErrorEvent *)self setActionIdentifier:?];
    fromCopy = v5;
  }

  if (fromCopy[60])
  {
    self->_didRunRemotely = fromCopy[56];
    *&self->_has |= 1u;
  }

  if (*(fromCopy + 6))
  {
    [(WFPBRunShortcutErrorEvent *)self setRunSource:?];
    fromCopy = v5;
  }

  if (*(fromCopy + 2))
  {
    [(WFPBRunShortcutErrorEvent *)self setAutomationType:?];
    fromCopy = v5;
  }
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_key hash];
  v4 = [(NSString *)self->_errorDomain hash];
  v5 = [(NSString *)self->_errorCode hash];
  v6 = [(NSString *)self->_actionIdentifier hash];
  if (*&self->_has)
  {
    v7 = 2654435761 * self->_didRunRemotely;
  }

  else
  {
    v7 = 0;
  }

  v8 = v4 ^ v3 ^ v5 ^ v6;
  v9 = v7 ^ [(NSString *)self->_runSource hash];
  return v8 ^ v9 ^ [(NSString *)self->_automationType hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_17;
  }

  key = self->_key;
  if (key | *(equalCopy + 5))
  {
    if (![(NSString *)key isEqual:?])
    {
      goto LABEL_17;
    }
  }

  errorDomain = self->_errorDomain;
  if (errorDomain | *(equalCopy + 4))
  {
    if (![(NSString *)errorDomain isEqual:?])
    {
      goto LABEL_17;
    }
  }

  errorCode = self->_errorCode;
  if (errorCode | *(equalCopy + 3))
  {
    if (![(NSString *)errorCode isEqual:?])
    {
      goto LABEL_17;
    }
  }

  actionIdentifier = self->_actionIdentifier;
  if (actionIdentifier | *(equalCopy + 1))
  {
    if (![(NSString *)actionIdentifier isEqual:?])
    {
      goto LABEL_17;
    }
  }

  v9 = *(equalCopy + 60);
  if (*&self->_has)
  {
    if ((*(equalCopy + 60) & 1) == 0)
    {
      goto LABEL_17;
    }

    v9 = *(equalCopy + 56);
    if (self->_didRunRemotely)
    {
      if (*(equalCopy + 56))
      {
        goto LABEL_12;
      }

LABEL_17:
      v12 = 0;
      goto LABEL_18;
    }
  }

  if (v9)
  {
    goto LABEL_17;
  }

LABEL_12:
  runSource = self->_runSource;
  if (runSource | *(equalCopy + 6) && ![(NSString *)runSource isEqual:?])
  {
    goto LABEL_17;
  }

  automationType = self->_automationType;
  if (automationType | *(equalCopy + 2))
  {
    v12 = [(NSString *)automationType isEqual:?];
  }

  else
  {
    v12 = 1;
  }

LABEL_18:

  return v12;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_key copyWithZone:zone];
  v7 = *(v5 + 40);
  *(v5 + 40) = v6;

  v8 = [(NSString *)self->_errorDomain copyWithZone:zone];
  v9 = *(v5 + 32);
  *(v5 + 32) = v8;

  v10 = [(NSString *)self->_errorCode copyWithZone:zone];
  v11 = *(v5 + 24);
  *(v5 + 24) = v10;

  v12 = [(NSString *)self->_actionIdentifier copyWithZone:zone];
  v13 = *(v5 + 8);
  *(v5 + 8) = v12;

  if (*&self->_has)
  {
    *(v5 + 56) = self->_didRunRemotely;
    *(v5 + 60) |= 1u;
  }

  v14 = [(NSString *)self->_runSource copyWithZone:zone];
  v15 = *(v5 + 48);
  *(v5 + 48) = v14;

  v16 = [(NSString *)self->_automationType copyWithZone:zone];
  v17 = *(v5 + 16);
  *(v5 + 16) = v16;

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

  if (self->_errorDomain)
  {
    [v5 setErrorDomain:?];
    toCopy = v5;
  }

  if (self->_errorCode)
  {
    [v5 setErrorCode:?];
    toCopy = v5;
  }

  if (self->_actionIdentifier)
  {
    [v5 setActionIdentifier:?];
    toCopy = v5;
  }

  if (*&self->_has)
  {
    toCopy[56] = self->_didRunRemotely;
    toCopy[60] |= 1u;
  }

  if (self->_runSource)
  {
    [v5 setRunSource:?];
    toCopy = v5;
  }

  if (self->_automationType)
  {
    [v5 setAutomationType:?];
    toCopy = v5;
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

  if (self->_errorDomain)
  {
    PBDataWriterWriteStringField();
    toCopy = v6;
  }

  if (self->_errorCode)
  {
    PBDataWriterWriteStringField();
    toCopy = v6;
  }

  if (self->_actionIdentifier)
  {
    PBDataWriterWriteStringField();
    toCopy = v6;
  }

  if (*&self->_has)
  {
    didRunRemotely = self->_didRunRemotely;
    PBDataWriterWriteBOOLField();
    toCopy = v6;
  }

  if (self->_runSource)
  {
    PBDataWriterWriteStringField();
    toCopy = v6;
  }

  if (self->_automationType)
  {
    PBDataWriterWriteStringField();
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

  errorDomain = self->_errorDomain;
  if (errorDomain)
  {
    [v4 setObject:errorDomain forKey:@"errorDomain"];
  }

  errorCode = self->_errorCode;
  if (errorCode)
  {
    [v4 setObject:errorCode forKey:@"errorCode"];
  }

  actionIdentifier = self->_actionIdentifier;
  if (actionIdentifier)
  {
    [v4 setObject:actionIdentifier forKey:@"actionIdentifier"];
  }

  if (*&self->_has)
  {
    v9 = [MEMORY[0x1E696AD98] numberWithBool:self->_didRunRemotely];
    [v4 setObject:v9 forKey:@"didRunRemotely"];
  }

  runSource = self->_runSource;
  if (runSource)
  {
    [v4 setObject:runSource forKey:@"runSource"];
  }

  automationType = self->_automationType;
  if (automationType)
  {
    [v4 setObject:automationType forKey:@"automationType"];
  }

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = WFPBRunShortcutErrorEvent;
  v4 = [(WFPBRunShortcutErrorEvent *)&v8 description];
  dictionaryRepresentation = [(WFPBRunShortcutErrorEvent *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (NSString)runSource
{
  if (self->_runSource)
  {
    return self->_runSource;
  }

  else
  {
    return @"unknown";
  }
}

- (NSString)key
{
  if (self->_key)
  {
    return self->_key;
  }

  else
  {
    return @"RunShortcutError";
  }
}

@end