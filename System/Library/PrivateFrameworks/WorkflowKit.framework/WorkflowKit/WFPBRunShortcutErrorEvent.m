@interface WFPBRunShortcutErrorEvent
- (BOOL)isEqual:(id)a3;
- (NSString)key;
- (NSString)runSource;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation WFPBRunShortcutErrorEvent

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (*(v4 + 5))
  {
    [(WFPBRunShortcutErrorEvent *)self setKey:?];
    v4 = v5;
  }

  if (*(v4 + 4))
  {
    [(WFPBRunShortcutErrorEvent *)self setErrorDomain:?];
    v4 = v5;
  }

  if (*(v4 + 3))
  {
    [(WFPBRunShortcutErrorEvent *)self setErrorCode:?];
    v4 = v5;
  }

  if (*(v4 + 1))
  {
    [(WFPBRunShortcutErrorEvent *)self setActionIdentifier:?];
    v4 = v5;
  }

  if (v4[60])
  {
    self->_didRunRemotely = v4[56];
    *&self->_has |= 1u;
  }

  if (*(v4 + 6))
  {
    [(WFPBRunShortcutErrorEvent *)self setRunSource:?];
    v4 = v5;
  }

  if (*(v4 + 2))
  {
    [(WFPBRunShortcutErrorEvent *)self setAutomationType:?];
    v4 = v5;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_17;
  }

  key = self->_key;
  if (key | *(v4 + 5))
  {
    if (![(NSString *)key isEqual:?])
    {
      goto LABEL_17;
    }
  }

  errorDomain = self->_errorDomain;
  if (errorDomain | *(v4 + 4))
  {
    if (![(NSString *)errorDomain isEqual:?])
    {
      goto LABEL_17;
    }
  }

  errorCode = self->_errorCode;
  if (errorCode | *(v4 + 3))
  {
    if (![(NSString *)errorCode isEqual:?])
    {
      goto LABEL_17;
    }
  }

  actionIdentifier = self->_actionIdentifier;
  if (actionIdentifier | *(v4 + 1))
  {
    if (![(NSString *)actionIdentifier isEqual:?])
    {
      goto LABEL_17;
    }
  }

  v9 = *(v4 + 60);
  if (*&self->_has)
  {
    if ((*(v4 + 60) & 1) == 0)
    {
      goto LABEL_17;
    }

    v9 = *(v4 + 56);
    if (self->_didRunRemotely)
    {
      if (*(v4 + 56))
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
  if (runSource | *(v4 + 6) && ![(NSString *)runSource isEqual:?])
  {
    goto LABEL_17;
  }

  automationType = self->_automationType;
  if (automationType | *(v4 + 2))
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

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_key copyWithZone:a3];
  v7 = *(v5 + 40);
  *(v5 + 40) = v6;

  v8 = [(NSString *)self->_errorDomain copyWithZone:a3];
  v9 = *(v5 + 32);
  *(v5 + 32) = v8;

  v10 = [(NSString *)self->_errorCode copyWithZone:a3];
  v11 = *(v5 + 24);
  *(v5 + 24) = v10;

  v12 = [(NSString *)self->_actionIdentifier copyWithZone:a3];
  v13 = *(v5 + 8);
  *(v5 + 8) = v12;

  if (*&self->_has)
  {
    *(v5 + 56) = self->_didRunRemotely;
    *(v5 + 60) |= 1u;
  }

  v14 = [(NSString *)self->_runSource copyWithZone:a3];
  v15 = *(v5 + 48);
  *(v5 + 48) = v14;

  v16 = [(NSString *)self->_automationType copyWithZone:a3];
  v17 = *(v5 + 16);
  *(v5 + 16) = v16;

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

  if (self->_errorDomain)
  {
    [v5 setErrorDomain:?];
    v4 = v5;
  }

  if (self->_errorCode)
  {
    [v5 setErrorCode:?];
    v4 = v5;
  }

  if (self->_actionIdentifier)
  {
    [v5 setActionIdentifier:?];
    v4 = v5;
  }

  if (*&self->_has)
  {
    v4[56] = self->_didRunRemotely;
    v4[60] |= 1u;
  }

  if (self->_runSource)
  {
    [v5 setRunSource:?];
    v4 = v5;
  }

  if (self->_automationType)
  {
    [v5 setAutomationType:?];
    v4 = v5;
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

  if (self->_errorDomain)
  {
    PBDataWriterWriteStringField();
    v4 = v6;
  }

  if (self->_errorCode)
  {
    PBDataWriterWriteStringField();
    v4 = v6;
  }

  if (self->_actionIdentifier)
  {
    PBDataWriterWriteStringField();
    v4 = v6;
  }

  if (*&self->_has)
  {
    didRunRemotely = self->_didRunRemotely;
    PBDataWriterWriteBOOLField();
    v4 = v6;
  }

  if (self->_runSource)
  {
    PBDataWriterWriteStringField();
    v4 = v6;
  }

  if (self->_automationType)
  {
    PBDataWriterWriteStringField();
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
  v5 = [(WFPBRunShortcutErrorEvent *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

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