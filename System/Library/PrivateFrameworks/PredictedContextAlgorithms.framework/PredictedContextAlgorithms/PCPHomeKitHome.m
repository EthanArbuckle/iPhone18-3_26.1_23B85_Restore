@interface PCPHomeKitHome
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation PCPHomeKitHome

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = PCPHomeKitHome;
  v4 = [(PCPHomeKitHome *)&v8 description];
  v5 = [(PCPHomeKitHome *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = v3;
  identifier = self->_identifier;
  if (identifier)
  {
    [v3 setObject:identifier forKey:@"identifier"];
  }

  if (*&self->_has)
  {
    v6 = [MEMORY[0x1E696AD98] numberWithBool:self->_primary];
    [v4 setObject:v6 forKey:@"primary"];
  }

  location = self->_location;
  if (location)
  {
    v8 = [(PCPLocation *)location dictionaryRepresentation];
    [v4 setObject:v8 forKey:@"location"];
  }

  return v4;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v6 = v4;
  if (self->_identifier)
  {
    PBDataWriterWriteDataField();
    v4 = v6;
  }

  if (*&self->_has)
  {
    primary = self->_primary;
    PBDataWriterWriteBOOLField();
    v4 = v6;
  }

  if (self->_location)
  {
    PBDataWriterWriteSubmessage();
    v4 = v6;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_identifier)
  {
    [v4 setIdentifier:?];
    v4 = v5;
  }

  if (*&self->_has)
  {
    v4[24] = self->_primary;
    v4[28] |= 1u;
  }

  if (self->_location)
  {
    [v5 setLocation:?];
    v4 = v5;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSData *)self->_identifier copyWithZone:a3];
  v7 = *(v5 + 8);
  *(v5 + 8) = v6;

  if (*&self->_has)
  {
    *(v5 + 24) = self->_primary;
    *(v5 + 28) |= 1u;
  }

  v8 = [(PCPLocation *)self->_location copyWithZone:a3];
  v9 = *(v5 + 16);
  *(v5 + 16) = v8;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_9;
  }

  identifier = self->_identifier;
  if (identifier | *(v4 + 1))
  {
    if (![(NSData *)identifier isEqual:?])
    {
      goto LABEL_9;
    }
  }

  v6 = *(v4 + 28);
  if ((*&self->_has & 1) == 0)
  {
    goto LABEL_5;
  }

  if ((*(v4 + 28) & 1) == 0)
  {
    goto LABEL_9;
  }

  v6 = *(v4 + 24);
  if (!self->_primary)
  {
LABEL_5:
    if ((v6 & 1) == 0)
    {
      goto LABEL_6;
    }

LABEL_9:
    v8 = 0;
    goto LABEL_10;
  }

  if ((*(v4 + 24) & 1) == 0)
  {
    goto LABEL_9;
  }

LABEL_6:
  location = self->_location;
  if (location | *(v4 + 2))
  {
    v8 = [(PCPLocation *)location isEqual:?];
  }

  else
  {
    v8 = 1;
  }

LABEL_10:

  return v8;
}

- (unint64_t)hash
{
  v3 = [(NSData *)self->_identifier hash];
  if (*&self->_has)
  {
    v4 = 2654435761 * self->_primary;
  }

  else
  {
    v4 = 0;
  }

  return v4 ^ v3 ^ [(PCPLocation *)self->_location hash];
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v7 = v4;
  if (*(v4 + 1))
  {
    [(PCPHomeKitHome *)self setIdentifier:?];
    v4 = v7;
  }

  if (v4[28])
  {
    self->_primary = v4[24];
    *&self->_has |= 1u;
  }

  location = self->_location;
  v6 = *(v4 + 2);
  if (location)
  {
    if (v6)
    {
      [(PCPLocation *)location mergeFrom:?];
    }
  }

  else if (v6)
  {
    [(PCPHomeKitHome *)self setLocation:?];
  }

  MEMORY[0x1EEE66BB8]();
}

@end