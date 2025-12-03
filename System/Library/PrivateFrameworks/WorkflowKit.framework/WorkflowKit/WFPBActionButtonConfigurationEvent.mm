@interface WFPBActionButtonConfigurationEvent
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

@implementation WFPBActionButtonConfigurationEvent

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = fromCopy;
  if (*(fromCopy + 3))
  {
    [(WFPBActionButtonConfigurationEvent *)self setKey:?];
    fromCopy = v5;
  }

  if (*(fromCopy + 4))
  {
    [(WFPBActionButtonConfigurationEvent *)self setSectionIdentifier:?];
    fromCopy = v5;
  }

  if (*(fromCopy + 1))
  {
    [(WFPBActionButtonConfigurationEvent *)self setBundleIdentifier:?];
    fromCopy = v5;
  }

  if (*(fromCopy + 2))
  {
    [(WFPBActionButtonConfigurationEvent *)self setIntentIdentifier:?];
    fromCopy = v5;
  }

  if (fromCopy[44])
  {
    self->_success = fromCopy[40];
    *&self->_has |= 1u;
  }
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_key hash];
  v4 = [(NSString *)self->_sectionIdentifier hash];
  v5 = [(NSString *)self->_bundleIdentifier hash];
  v6 = [(NSString *)self->_intentIdentifier hash];
  if (*&self->_has)
  {
    v7 = 2654435761 * self->_success;
  }

  else
  {
    v7 = 0;
  }

  return v4 ^ v3 ^ v5 ^ v6 ^ v7;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_12;
  }

  key = self->_key;
  if (key | *(equalCopy + 3))
  {
    if (![(NSString *)key isEqual:?])
    {
      goto LABEL_12;
    }
  }

  sectionIdentifier = self->_sectionIdentifier;
  if (sectionIdentifier | *(equalCopy + 4))
  {
    if (![(NSString *)sectionIdentifier isEqual:?])
    {
      goto LABEL_12;
    }
  }

  bundleIdentifier = self->_bundleIdentifier;
  if (bundleIdentifier | *(equalCopy + 1))
  {
    if (![(NSString *)bundleIdentifier isEqual:?])
    {
      goto LABEL_12;
    }
  }

  intentIdentifier = self->_intentIdentifier;
  if (intentIdentifier | *(equalCopy + 2))
  {
    if (![(NSString *)intentIdentifier isEqual:?])
    {
      goto LABEL_12;
    }
  }

  v9 = (*(equalCopy + 44) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(equalCopy + 44) & 1) == 0)
    {
LABEL_12:
      v9 = 0;
      goto LABEL_13;
    }

    if (self->_success)
    {
      if ((*(equalCopy + 40) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    else if (*(equalCopy + 40))
    {
      goto LABEL_12;
    }

    v9 = 1;
  }

LABEL_13:

  return v9;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_key copyWithZone:zone];
  v7 = *(v5 + 24);
  *(v5 + 24) = v6;

  v8 = [(NSString *)self->_sectionIdentifier copyWithZone:zone];
  v9 = *(v5 + 32);
  *(v5 + 32) = v8;

  v10 = [(NSString *)self->_bundleIdentifier copyWithZone:zone];
  v11 = *(v5 + 8);
  *(v5 + 8) = v10;

  v12 = [(NSString *)self->_intentIdentifier copyWithZone:zone];
  v13 = *(v5 + 16);
  *(v5 + 16) = v12;

  if (*&self->_has)
  {
    *(v5 + 40) = self->_success;
    *(v5 + 44) |= 1u;
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

  if (self->_sectionIdentifier)
  {
    [v5 setSectionIdentifier:?];
    toCopy = v5;
  }

  if (self->_bundleIdentifier)
  {
    [v5 setBundleIdentifier:?];
    toCopy = v5;
  }

  if (self->_intentIdentifier)
  {
    [v5 setIntentIdentifier:?];
    toCopy = v5;
  }

  if (*&self->_has)
  {
    toCopy[40] = self->_success;
    toCopy[44] |= 1u;
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

  if (self->_sectionIdentifier)
  {
    PBDataWriterWriteStringField();
    toCopy = v6;
  }

  if (self->_bundleIdentifier)
  {
    PBDataWriterWriteStringField();
    toCopy = v6;
  }

  if (self->_intentIdentifier)
  {
    PBDataWriterWriteStringField();
    toCopy = v6;
  }

  if (*&self->_has)
  {
    success = self->_success;
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

  sectionIdentifier = self->_sectionIdentifier;
  if (sectionIdentifier)
  {
    [v4 setObject:sectionIdentifier forKey:@"sectionIdentifier"];
  }

  bundleIdentifier = self->_bundleIdentifier;
  if (bundleIdentifier)
  {
    [v4 setObject:bundleIdentifier forKey:@"bundleIdentifier"];
  }

  intentIdentifier = self->_intentIdentifier;
  if (intentIdentifier)
  {
    [v4 setObject:intentIdentifier forKey:@"intentIdentifier"];
  }

  if (*&self->_has)
  {
    v9 = [MEMORY[0x1E696AD98] numberWithBool:self->_success];
    [v4 setObject:v9 forKey:@"success"];
  }

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = WFPBActionButtonConfigurationEvent;
  v4 = [(WFPBActionButtonConfigurationEvent *)&v8 description];
  dictionaryRepresentation = [(WFPBActionButtonConfigurationEvent *)self dictionaryRepresentation];
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
    return @"ABConfigurationEvent";
  }
}

@end