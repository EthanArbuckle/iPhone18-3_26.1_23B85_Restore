@interface WFPBActionButtonConfigurationEvent
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

@implementation WFPBActionButtonConfigurationEvent

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (*(v4 + 3))
  {
    [(WFPBActionButtonConfigurationEvent *)self setKey:?];
    v4 = v5;
  }

  if (*(v4 + 4))
  {
    [(WFPBActionButtonConfigurationEvent *)self setSectionIdentifier:?];
    v4 = v5;
  }

  if (*(v4 + 1))
  {
    [(WFPBActionButtonConfigurationEvent *)self setBundleIdentifier:?];
    v4 = v5;
  }

  if (*(v4 + 2))
  {
    [(WFPBActionButtonConfigurationEvent *)self setIntentIdentifier:?];
    v4 = v5;
  }

  if (v4[44])
  {
    self->_success = v4[40];
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_12;
  }

  key = self->_key;
  if (key | *(v4 + 3))
  {
    if (![(NSString *)key isEqual:?])
    {
      goto LABEL_12;
    }
  }

  sectionIdentifier = self->_sectionIdentifier;
  if (sectionIdentifier | *(v4 + 4))
  {
    if (![(NSString *)sectionIdentifier isEqual:?])
    {
      goto LABEL_12;
    }
  }

  bundleIdentifier = self->_bundleIdentifier;
  if (bundleIdentifier | *(v4 + 1))
  {
    if (![(NSString *)bundleIdentifier isEqual:?])
    {
      goto LABEL_12;
    }
  }

  intentIdentifier = self->_intentIdentifier;
  if (intentIdentifier | *(v4 + 2))
  {
    if (![(NSString *)intentIdentifier isEqual:?])
    {
      goto LABEL_12;
    }
  }

  v9 = (*(v4 + 44) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(v4 + 44) & 1) == 0)
    {
LABEL_12:
      v9 = 0;
      goto LABEL_13;
    }

    if (self->_success)
    {
      if ((*(v4 + 40) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    else if (*(v4 + 40))
    {
      goto LABEL_12;
    }

    v9 = 1;
  }

LABEL_13:

  return v9;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_key copyWithZone:a3];
  v7 = *(v5 + 24);
  *(v5 + 24) = v6;

  v8 = [(NSString *)self->_sectionIdentifier copyWithZone:a3];
  v9 = *(v5 + 32);
  *(v5 + 32) = v8;

  v10 = [(NSString *)self->_bundleIdentifier copyWithZone:a3];
  v11 = *(v5 + 8);
  *(v5 + 8) = v10;

  v12 = [(NSString *)self->_intentIdentifier copyWithZone:a3];
  v13 = *(v5 + 16);
  *(v5 + 16) = v12;

  if (*&self->_has)
  {
    *(v5 + 40) = self->_success;
    *(v5 + 44) |= 1u;
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

  if (self->_sectionIdentifier)
  {
    [v5 setSectionIdentifier:?];
    v4 = v5;
  }

  if (self->_bundleIdentifier)
  {
    [v5 setBundleIdentifier:?];
    v4 = v5;
  }

  if (self->_intentIdentifier)
  {
    [v5 setIntentIdentifier:?];
    v4 = v5;
  }

  if (*&self->_has)
  {
    v4[40] = self->_success;
    v4[44] |= 1u;
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

  if (self->_sectionIdentifier)
  {
    PBDataWriterWriteStringField();
    v4 = v6;
  }

  if (self->_bundleIdentifier)
  {
    PBDataWriterWriteStringField();
    v4 = v6;
  }

  if (self->_intentIdentifier)
  {
    PBDataWriterWriteStringField();
    v4 = v6;
  }

  if (*&self->_has)
  {
    success = self->_success;
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
  v5 = [(WFPBActionButtonConfigurationEvent *)self dictionaryRepresentation];
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
    return @"ABConfigurationEvent";
  }
}

@end