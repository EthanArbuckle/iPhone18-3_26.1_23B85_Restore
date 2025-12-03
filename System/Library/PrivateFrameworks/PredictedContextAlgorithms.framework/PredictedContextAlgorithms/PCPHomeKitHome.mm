@interface PCPHomeKitHome
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation PCPHomeKitHome

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = PCPHomeKitHome;
  v4 = [(PCPHomeKitHome *)&v8 description];
  dictionaryRepresentation = [(PCPHomeKitHome *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v4 = dictionary;
  identifier = self->_identifier;
  if (identifier)
  {
    [dictionary setObject:identifier forKey:@"identifier"];
  }

  if (*&self->_has)
  {
    v6 = [MEMORY[0x1E696AD98] numberWithBool:self->_primary];
    [v4 setObject:v6 forKey:@"primary"];
  }

  location = self->_location;
  if (location)
  {
    dictionaryRepresentation = [(PCPLocation *)location dictionaryRepresentation];
    [v4 setObject:dictionaryRepresentation forKey:@"location"];
  }

  return v4;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v6 = toCopy;
  if (self->_identifier)
  {
    PBDataWriterWriteDataField();
    toCopy = v6;
  }

  if (*&self->_has)
  {
    primary = self->_primary;
    PBDataWriterWriteBOOLField();
    toCopy = v6;
  }

  if (self->_location)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v6;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_identifier)
  {
    [toCopy setIdentifier:?];
    toCopy = v5;
  }

  if (*&self->_has)
  {
    toCopy[24] = self->_primary;
    toCopy[28] |= 1u;
  }

  if (self->_location)
  {
    [v5 setLocation:?];
    toCopy = v5;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSData *)self->_identifier copyWithZone:zone];
  v7 = *(v5 + 8);
  *(v5 + 8) = v6;

  if (*&self->_has)
  {
    *(v5 + 24) = self->_primary;
    *(v5 + 28) |= 1u;
  }

  v8 = [(PCPLocation *)self->_location copyWithZone:zone];
  v9 = *(v5 + 16);
  *(v5 + 16) = v8;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_9;
  }

  identifier = self->_identifier;
  if (identifier | *(equalCopy + 1))
  {
    if (![(NSData *)identifier isEqual:?])
    {
      goto LABEL_9;
    }
  }

  v6 = *(equalCopy + 28);
  if ((*&self->_has & 1) == 0)
  {
    goto LABEL_5;
  }

  if ((*(equalCopy + 28) & 1) == 0)
  {
    goto LABEL_9;
  }

  v6 = *(equalCopy + 24);
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

  if ((*(equalCopy + 24) & 1) == 0)
  {
    goto LABEL_9;
  }

LABEL_6:
  location = self->_location;
  if (location | *(equalCopy + 2))
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

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v7 = fromCopy;
  if (*(fromCopy + 1))
  {
    [(PCPHomeKitHome *)self setIdentifier:?];
    fromCopy = v7;
  }

  if (fromCopy[28])
  {
    self->_primary = fromCopy[24];
    *&self->_has |= 1u;
  }

  location = self->_location;
  v6 = *(fromCopy + 2);
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