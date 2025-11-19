@interface WFPBAddAutomationActionEvent
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

@implementation WFPBAddAutomationActionEvent

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (*(v4 + 3))
  {
    [(WFPBAddAutomationActionEvent *)self setKey:?];
    v4 = v5;
  }

  if (*(v4 + 4))
  {
    [(WFPBAddAutomationActionEvent *)self setShortcutIdentifier:?];
    v4 = v5;
  }

  if (v4[10])
  {
    self->_actionIndex = v4[4];
    *&self->_has |= 1u;
  }

  if (*(v4 + 1))
  {
    [(WFPBAddAutomationActionEvent *)self setActionIdentifier:?];
    v4 = v5;
  }
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_key hash];
  v4 = [(NSString *)self->_shortcutIdentifier hash];
  if (*&self->_has)
  {
    v5 = 2654435761 * self->_actionIndex;
  }

  else
  {
    v5 = 0;
  }

  return v4 ^ v3 ^ v5 ^ [(NSString *)self->_actionIdentifier hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_13;
  }

  key = self->_key;
  if (key | *(v4 + 3))
  {
    if (![(NSString *)key isEqual:?])
    {
      goto LABEL_13;
    }
  }

  shortcutIdentifier = self->_shortcutIdentifier;
  if (shortcutIdentifier | *(v4 + 4))
  {
    if (![(NSString *)shortcutIdentifier isEqual:?])
    {
      goto LABEL_13;
    }
  }

  v7 = *(v4 + 40);
  if (*&self->_has)
  {
    if ((*(v4 + 40) & 1) == 0 || self->_actionIndex != *(v4 + 4))
    {
      goto LABEL_13;
    }
  }

  else if (*(v4 + 40))
  {
LABEL_13:
    v9 = 0;
    goto LABEL_14;
  }

  actionIdentifier = self->_actionIdentifier;
  if (actionIdentifier | *(v4 + 1))
  {
    v9 = [(NSString *)actionIdentifier isEqual:?];
  }

  else
  {
    v9 = 1;
  }

LABEL_14:

  return v9;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_key copyWithZone:a3];
  v7 = *(v5 + 24);
  *(v5 + 24) = v6;

  v8 = [(NSString *)self->_shortcutIdentifier copyWithZone:a3];
  v9 = *(v5 + 32);
  *(v5 + 32) = v8;

  if (*&self->_has)
  {
    *(v5 + 16) = self->_actionIndex;
    *(v5 + 40) |= 1u;
  }

  v10 = [(NSString *)self->_actionIdentifier copyWithZone:a3];
  v11 = *(v5 + 8);
  *(v5 + 8) = v10;

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

  if (self->_shortcutIdentifier)
  {
    [v5 setShortcutIdentifier:?];
    v4 = v5;
  }

  if (*&self->_has)
  {
    *(v4 + 4) = self->_actionIndex;
    *(v4 + 40) |= 1u;
  }

  if (self->_actionIdentifier)
  {
    [v5 setActionIdentifier:?];
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

  if (self->_shortcutIdentifier)
  {
    PBDataWriterWriteStringField();
    v4 = v6;
  }

  if (*&self->_has)
  {
    actionIndex = self->_actionIndex;
    PBDataWriterWriteUint32Field();
    v4 = v6;
  }

  if (self->_actionIdentifier)
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

  shortcutIdentifier = self->_shortcutIdentifier;
  if (shortcutIdentifier)
  {
    [v4 setObject:shortcutIdentifier forKey:@"shortcutIdentifier"];
  }

  if (*&self->_has)
  {
    v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_actionIndex];
    [v4 setObject:v7 forKey:@"actionIndex"];
  }

  actionIdentifier = self->_actionIdentifier;
  if (actionIdentifier)
  {
    [v4 setObject:actionIdentifier forKey:@"actionIdentifier"];
  }

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = WFPBAddAutomationActionEvent;
  v4 = [(WFPBAddAutomationActionEvent *)&v8 description];
  v5 = [(WFPBAddAutomationActionEvent *)self dictionaryRepresentation];
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
    return @"InternalAddAutomationAction";
  }
}

@end