@interface WFPBAutoShortcutToggleEvent
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

@implementation WFPBAutoShortcutToggleEvent

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = fromCopy;
  if (*(fromCopy + 2))
  {
    [(WFPBAutoShortcutToggleEvent *)self setKey:?];
    fromCopy = v5;
  }

  if (*(fromCopy + 1))
  {
    [(WFPBAutoShortcutToggleEvent *)self setBundleIdentifier:?];
    fromCopy = v5;
  }

  if (*(fromCopy + 3))
  {
    [(WFPBAutoShortcutToggleEvent *)self setSource:?];
    fromCopy = v5;
  }

  if (fromCopy[44])
  {
    self->_enabled = fromCopy[40];
    *&self->_has |= 1u;
  }

  if (*(fromCopy + 4))
  {
    [(WFPBAutoShortcutToggleEvent *)self setToggleType:?];
    fromCopy = v5;
  }
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_key hash];
  v4 = [(NSString *)self->_bundleIdentifier hash];
  v5 = [(NSString *)self->_source hash];
  if (*&self->_has)
  {
    v6 = 2654435761 * self->_enabled;
  }

  else
  {
    v6 = 0;
  }

  return v4 ^ v3 ^ v5 ^ v6 ^ [(NSString *)self->_toggleType hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_13;
  }

  key = self->_key;
  if (key | *(equalCopy + 2))
  {
    if (![(NSString *)key isEqual:?])
    {
      goto LABEL_13;
    }
  }

  bundleIdentifier = self->_bundleIdentifier;
  if (bundleIdentifier | *(equalCopy + 1))
  {
    if (![(NSString *)bundleIdentifier isEqual:?])
    {
      goto LABEL_13;
    }
  }

  source = self->_source;
  if (source | *(equalCopy + 3))
  {
    if (![(NSString *)source isEqual:?])
    {
      goto LABEL_13;
    }
  }

  v8 = *(equalCopy + 44);
  if ((*&self->_has & 1) == 0)
  {
    goto LABEL_9;
  }

  if ((*(equalCopy + 44) & 1) == 0)
  {
    goto LABEL_13;
  }

  v8 = *(equalCopy + 40);
  if (!self->_enabled)
  {
LABEL_9:
    if ((v8 & 1) == 0)
    {
      goto LABEL_10;
    }

LABEL_13:
    v10 = 0;
    goto LABEL_14;
  }

  if ((*(equalCopy + 40) & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_10:
  toggleType = self->_toggleType;
  if (toggleType | *(equalCopy + 4))
  {
    v10 = [(NSString *)toggleType isEqual:?];
  }

  else
  {
    v10 = 1;
  }

LABEL_14:

  return v10;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_key copyWithZone:zone];
  v7 = *(v5 + 16);
  *(v5 + 16) = v6;

  v8 = [(NSString *)self->_bundleIdentifier copyWithZone:zone];
  v9 = *(v5 + 8);
  *(v5 + 8) = v8;

  v10 = [(NSString *)self->_source copyWithZone:zone];
  v11 = *(v5 + 24);
  *(v5 + 24) = v10;

  if (*&self->_has)
  {
    *(v5 + 40) = self->_enabled;
    *(v5 + 44) |= 1u;
  }

  v12 = [(NSString *)self->_toggleType copyWithZone:zone];
  v13 = *(v5 + 32);
  *(v5 + 32) = v12;

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

  if (self->_bundleIdentifier)
  {
    [v5 setBundleIdentifier:?];
    toCopy = v5;
  }

  if (self->_source)
  {
    [v5 setSource:?];
    toCopy = v5;
  }

  if (*&self->_has)
  {
    toCopy[40] = self->_enabled;
    toCopy[44] |= 1u;
  }

  if (self->_toggleType)
  {
    [v5 setToggleType:?];
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

  if (self->_bundleIdentifier)
  {
    PBDataWriterWriteStringField();
    toCopy = v6;
  }

  if (self->_source)
  {
    PBDataWriterWriteStringField();
    toCopy = v6;
  }

  if (*&self->_has)
  {
    enabled = self->_enabled;
    PBDataWriterWriteBOOLField();
    toCopy = v6;
  }

  if (self->_toggleType)
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

  bundleIdentifier = self->_bundleIdentifier;
  if (bundleIdentifier)
  {
    [v4 setObject:bundleIdentifier forKey:@"bundleIdentifier"];
  }

  source = self->_source;
  if (source)
  {
    [v4 setObject:source forKey:@"source"];
  }

  if (*&self->_has)
  {
    v8 = [MEMORY[0x1E696AD98] numberWithBool:self->_enabled];
    [v4 setObject:v8 forKey:@"enabled"];
  }

  toggleType = self->_toggleType;
  if (toggleType)
  {
    [v4 setObject:toggleType forKey:@"toggleType"];
  }

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = WFPBAutoShortcutToggleEvent;
  v4 = [(WFPBAutoShortcutToggleEvent *)&v8 description];
  dictionaryRepresentation = [(WFPBAutoShortcutToggleEvent *)self dictionaryRepresentation];
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
    return @"AutoShortcutToggleEvent";
  }
}

@end