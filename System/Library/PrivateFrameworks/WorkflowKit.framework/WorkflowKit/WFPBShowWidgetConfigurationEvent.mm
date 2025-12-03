@interface WFPBShowWidgetConfigurationEvent
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

@implementation WFPBShowWidgetConfigurationEvent

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = fromCopy;
  if (*(fromCopy + 3))
  {
    [(WFPBShowWidgetConfigurationEvent *)self setKey:?];
    fromCopy = v5;
  }

  if (*(fromCopy + 1))
  {
    [(WFPBShowWidgetConfigurationEvent *)self setAppBundleIdentifier:?];
    fromCopy = v5;
  }

  if (*(fromCopy + 2))
  {
    [(WFPBShowWidgetConfigurationEvent *)self setIntentType:?];
    fromCopy = v5;
  }

  if (*(fromCopy + 4))
  {
    [(WFPBShowWidgetConfigurationEvent *)self setSizeClass:?];
    fromCopy = v5;
  }

  if (fromCopy[44])
  {
    self->_isInteractive = fromCopy[40];
    *&self->_has |= 1u;
  }
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_key hash];
  v4 = [(NSString *)self->_appBundleIdentifier hash];
  v5 = [(NSString *)self->_intentType hash];
  v6 = [(NSString *)self->_sizeClass hash];
  if (*&self->_has)
  {
    v7 = 2654435761 * self->_isInteractive;
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

  appBundleIdentifier = self->_appBundleIdentifier;
  if (appBundleIdentifier | *(equalCopy + 1))
  {
    if (![(NSString *)appBundleIdentifier isEqual:?])
    {
      goto LABEL_12;
    }
  }

  intentType = self->_intentType;
  if (intentType | *(equalCopy + 2))
  {
    if (![(NSString *)intentType isEqual:?])
    {
      goto LABEL_12;
    }
  }

  sizeClass = self->_sizeClass;
  if (sizeClass | *(equalCopy + 4))
  {
    if (![(NSString *)sizeClass isEqual:?])
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

    if (self->_isInteractive)
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

  v8 = [(NSString *)self->_appBundleIdentifier copyWithZone:zone];
  v9 = *(v5 + 8);
  *(v5 + 8) = v8;

  v10 = [(NSString *)self->_intentType copyWithZone:zone];
  v11 = *(v5 + 16);
  *(v5 + 16) = v10;

  v12 = [(NSString *)self->_sizeClass copyWithZone:zone];
  v13 = *(v5 + 32);
  *(v5 + 32) = v12;

  if (*&self->_has)
  {
    *(v5 + 40) = self->_isInteractive;
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

  if (self->_appBundleIdentifier)
  {
    [v5 setAppBundleIdentifier:?];
    toCopy = v5;
  }

  if (self->_intentType)
  {
    [v5 setIntentType:?];
    toCopy = v5;
  }

  if (self->_sizeClass)
  {
    [v5 setSizeClass:?];
    toCopy = v5;
  }

  if (*&self->_has)
  {
    toCopy[40] = self->_isInteractive;
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

  if (self->_appBundleIdentifier)
  {
    PBDataWriterWriteStringField();
    toCopy = v6;
  }

  if (self->_intentType)
  {
    PBDataWriterWriteStringField();
    toCopy = v6;
  }

  if (self->_sizeClass)
  {
    PBDataWriterWriteStringField();
    toCopy = v6;
  }

  if (*&self->_has)
  {
    isInteractive = self->_isInteractive;
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

  appBundleIdentifier = self->_appBundleIdentifier;
  if (appBundleIdentifier)
  {
    [v4 setObject:appBundleIdentifier forKey:@"appBundleIdentifier"];
  }

  intentType = self->_intentType;
  if (intentType)
  {
    [v4 setObject:intentType forKey:@"intentType"];
  }

  sizeClass = self->_sizeClass;
  if (sizeClass)
  {
    [v4 setObject:sizeClass forKey:@"sizeClass"];
  }

  if (*&self->_has)
  {
    v9 = [MEMORY[0x1E696AD98] numberWithBool:self->_isInteractive];
    [v4 setObject:v9 forKey:@"isInteractive"];
  }

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = WFPBShowWidgetConfigurationEvent;
  v4 = [(WFPBShowWidgetConfigurationEvent *)&v8 description];
  dictionaryRepresentation = [(WFPBShowWidgetConfigurationEvent *)self dictionaryRepresentation];
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
    return @"ShowWidgetConfigurationEvent";
  }
}

@end