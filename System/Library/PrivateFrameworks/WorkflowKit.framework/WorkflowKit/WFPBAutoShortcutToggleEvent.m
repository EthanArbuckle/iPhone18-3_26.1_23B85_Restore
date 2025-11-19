@interface WFPBAutoShortcutToggleEvent
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

@implementation WFPBAutoShortcutToggleEvent

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (*(v4 + 2))
  {
    [(WFPBAutoShortcutToggleEvent *)self setKey:?];
    v4 = v5;
  }

  if (*(v4 + 1))
  {
    [(WFPBAutoShortcutToggleEvent *)self setBundleIdentifier:?];
    v4 = v5;
  }

  if (*(v4 + 3))
  {
    [(WFPBAutoShortcutToggleEvent *)self setSource:?];
    v4 = v5;
  }

  if (v4[44])
  {
    self->_enabled = v4[40];
    *&self->_has |= 1u;
  }

  if (*(v4 + 4))
  {
    [(WFPBAutoShortcutToggleEvent *)self setToggleType:?];
    v4 = v5;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_13;
  }

  key = self->_key;
  if (key | *(v4 + 2))
  {
    if (![(NSString *)key isEqual:?])
    {
      goto LABEL_13;
    }
  }

  bundleIdentifier = self->_bundleIdentifier;
  if (bundleIdentifier | *(v4 + 1))
  {
    if (![(NSString *)bundleIdentifier isEqual:?])
    {
      goto LABEL_13;
    }
  }

  source = self->_source;
  if (source | *(v4 + 3))
  {
    if (![(NSString *)source isEqual:?])
    {
      goto LABEL_13;
    }
  }

  v8 = *(v4 + 44);
  if ((*&self->_has & 1) == 0)
  {
    goto LABEL_9;
  }

  if ((*(v4 + 44) & 1) == 0)
  {
    goto LABEL_13;
  }

  v8 = *(v4 + 40);
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

  if ((*(v4 + 40) & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_10:
  toggleType = self->_toggleType;
  if (toggleType | *(v4 + 4))
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

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_key copyWithZone:a3];
  v7 = *(v5 + 16);
  *(v5 + 16) = v6;

  v8 = [(NSString *)self->_bundleIdentifier copyWithZone:a3];
  v9 = *(v5 + 8);
  *(v5 + 8) = v8;

  v10 = [(NSString *)self->_source copyWithZone:a3];
  v11 = *(v5 + 24);
  *(v5 + 24) = v10;

  if (*&self->_has)
  {
    *(v5 + 40) = self->_enabled;
    *(v5 + 44) |= 1u;
  }

  v12 = [(NSString *)self->_toggleType copyWithZone:a3];
  v13 = *(v5 + 32);
  *(v5 + 32) = v12;

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

  if (self->_bundleIdentifier)
  {
    [v5 setBundleIdentifier:?];
    v4 = v5;
  }

  if (self->_source)
  {
    [v5 setSource:?];
    v4 = v5;
  }

  if (*&self->_has)
  {
    v4[40] = self->_enabled;
    v4[44] |= 1u;
  }

  if (self->_toggleType)
  {
    [v5 setToggleType:?];
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

  if (self->_bundleIdentifier)
  {
    PBDataWriterWriteStringField();
    v4 = v6;
  }

  if (self->_source)
  {
    PBDataWriterWriteStringField();
    v4 = v6;
  }

  if (*&self->_has)
  {
    enabled = self->_enabled;
    PBDataWriterWriteBOOLField();
    v4 = v6;
  }

  if (self->_toggleType)
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
  v5 = [(WFPBAutoShortcutToggleEvent *)self dictionaryRepresentation];
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
    return @"AutoShortcutToggleEvent";
  }
}

@end