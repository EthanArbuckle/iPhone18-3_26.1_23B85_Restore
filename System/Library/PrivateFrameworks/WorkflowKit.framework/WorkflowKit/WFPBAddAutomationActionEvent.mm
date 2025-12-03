@interface WFPBAddAutomationActionEvent
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

@implementation WFPBAddAutomationActionEvent

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = fromCopy;
  if (*(fromCopy + 3))
  {
    [(WFPBAddAutomationActionEvent *)self setKey:?];
    fromCopy = v5;
  }

  if (*(fromCopy + 4))
  {
    [(WFPBAddAutomationActionEvent *)self setShortcutIdentifier:?];
    fromCopy = v5;
  }

  if (fromCopy[10])
  {
    self->_actionIndex = fromCopy[4];
    *&self->_has |= 1u;
  }

  if (*(fromCopy + 1))
  {
    [(WFPBAddAutomationActionEvent *)self setActionIdentifier:?];
    fromCopy = v5;
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_13;
  }

  key = self->_key;
  if (key | *(equalCopy + 3))
  {
    if (![(NSString *)key isEqual:?])
    {
      goto LABEL_13;
    }
  }

  shortcutIdentifier = self->_shortcutIdentifier;
  if (shortcutIdentifier | *(equalCopy + 4))
  {
    if (![(NSString *)shortcutIdentifier isEqual:?])
    {
      goto LABEL_13;
    }
  }

  v7 = *(equalCopy + 40);
  if (*&self->_has)
  {
    if ((*(equalCopy + 40) & 1) == 0 || self->_actionIndex != *(equalCopy + 4))
    {
      goto LABEL_13;
    }
  }

  else if (*(equalCopy + 40))
  {
LABEL_13:
    v9 = 0;
    goto LABEL_14;
  }

  actionIdentifier = self->_actionIdentifier;
  if (actionIdentifier | *(equalCopy + 1))
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

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_key copyWithZone:zone];
  v7 = *(v5 + 24);
  *(v5 + 24) = v6;

  v8 = [(NSString *)self->_shortcutIdentifier copyWithZone:zone];
  v9 = *(v5 + 32);
  *(v5 + 32) = v8;

  if (*&self->_has)
  {
    *(v5 + 16) = self->_actionIndex;
    *(v5 + 40) |= 1u;
  }

  v10 = [(NSString *)self->_actionIdentifier copyWithZone:zone];
  v11 = *(v5 + 8);
  *(v5 + 8) = v10;

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

  if (self->_shortcutIdentifier)
  {
    [v5 setShortcutIdentifier:?];
    toCopy = v5;
  }

  if (*&self->_has)
  {
    *(toCopy + 4) = self->_actionIndex;
    *(toCopy + 40) |= 1u;
  }

  if (self->_actionIdentifier)
  {
    [v5 setActionIdentifier:?];
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

  if (self->_shortcutIdentifier)
  {
    PBDataWriterWriteStringField();
    toCopy = v6;
  }

  if (*&self->_has)
  {
    actionIndex = self->_actionIndex;
    PBDataWriterWriteUint32Field();
    toCopy = v6;
  }

  if (self->_actionIdentifier)
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
  dictionaryRepresentation = [(WFPBAddAutomationActionEvent *)self dictionaryRepresentation];
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
    return @"InternalAddAutomationAction";
  }
}

@end