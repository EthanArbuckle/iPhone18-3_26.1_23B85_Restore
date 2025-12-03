@interface PPM2DatabaseCheckViolationCount
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsPragmaCheckType:(id)type;
- (int)pragmaCheckType;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasSchemaVersion:(BOOL)version;
- (void)writeTo:(id)to;
@end

@implementation PPM2DatabaseCheckViolationCount

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = *(fromCopy + 24);
  if ((v5 & 2) != 0)
  {
    self->_schemaVersion = *(fromCopy + 5);
    *&self->_has |= 2u;
    v5 = *(fromCopy + 24);
  }

  if (v5)
  {
    self->_pragmaCheckType = *(fromCopy + 4);
    *&self->_has |= 1u;
  }

  if (*(fromCopy + 1))
  {
    v6 = fromCopy;
    [(PPM2DatabaseCheckViolationCount *)self setActiveTreatments:?];
    fromCopy = v6;
  }
}

- (unint64_t)hash
{
  if ((*&self->_has & 2) != 0)
  {
    v6 = 2654435761 * self->_schemaVersion;
    if (*&self->_has)
    {
      goto LABEL_3;
    }

LABEL_5:
    v7 = 0;
    return v7 ^ v6 ^ [(NSString *)self->_activeTreatments hash:v3];
  }

  v6 = 0;
  if ((*&self->_has & 1) == 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  v7 = 2654435761 * self->_pragmaCheckType;
  return v7 ^ v6 ^ [(NSString *)self->_activeTreatments hash:v3];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_14;
  }

  v5 = *(equalCopy + 24);
  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 24) & 2) == 0 || self->_schemaVersion != *(equalCopy + 5))
    {
      goto LABEL_14;
    }
  }

  else if ((*(equalCopy + 24) & 2) != 0)
  {
LABEL_14:
    v7 = 0;
    goto LABEL_15;
  }

  if (*&self->_has)
  {
    if ((*(equalCopy + 24) & 1) == 0 || self->_pragmaCheckType != *(equalCopy + 4))
    {
      goto LABEL_14;
    }
  }

  else if (*(equalCopy + 24))
  {
    goto LABEL_14;
  }

  activeTreatments = self->_activeTreatments;
  if (activeTreatments | *(equalCopy + 1))
  {
    v7 = [(NSString *)activeTreatments isEqual:?];
  }

  else
  {
    v7 = 1;
  }

LABEL_15:

  return v7;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  has = self->_has;
  if ((has & 2) != 0)
  {
    *(v5 + 20) = self->_schemaVersion;
    *(v5 + 24) |= 2u;
    has = self->_has;
  }

  if (has)
  {
    *(v5 + 16) = self->_pragmaCheckType;
    *(v5 + 24) |= 1u;
  }

  v8 = [(NSString *)self->_activeTreatments copyWithZone:zone];
  v9 = v6[1];
  v6[1] = v8;

  return v6;
}

- (void)copyTo:(id)to
{
  toCopy = to;
  has = self->_has;
  if ((has & 2) != 0)
  {
    toCopy[5] = self->_schemaVersion;
    *(toCopy + 24) |= 2u;
    has = self->_has;
  }

  if (has)
  {
    toCopy[4] = self->_pragmaCheckType;
    *(toCopy + 24) |= 1u;
  }

  if (self->_activeTreatments)
  {
    v6 = toCopy;
    [toCopy setActiveTreatments:?];
    toCopy = v6;
  }
}

- (void)writeTo:(id)to
{
  toCopy = to;
  has = self->_has;
  v8 = toCopy;
  if ((has & 2) != 0)
  {
    schemaVersion = self->_schemaVersion;
    PBDataWriterWriteUint32Field();
    toCopy = v8;
    has = self->_has;
  }

  if (has)
  {
    pragmaCheckType = self->_pragmaCheckType;
    PBDataWriterWriteInt32Field();
    toCopy = v8;
  }

  if (self->_activeTreatments)
  {
    PBDataWriterWriteStringField();
    toCopy = v8;
  }
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  has = self->_has;
  if ((has & 2) != 0)
  {
    v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_schemaVersion];
    [dictionary setObject:v5 forKey:@"schemaVersion"];

    has = self->_has;
  }

  if (has)
  {
    pragmaCheckType = self->_pragmaCheckType;
    if (pragmaCheckType >= 3)
    {
      v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_pragmaCheckType];
    }

    else
    {
      v7 = off_278974408[pragmaCheckType];
    }

    [dictionary setObject:v7 forKey:@"pragmaCheckType"];
  }

  activeTreatments = self->_activeTreatments;
  if (activeTreatments)
  {
    [dictionary setObject:activeTreatments forKey:@"activeTreatments"];
  }

  return dictionary;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = PPM2DatabaseCheckViolationCount;
  v4 = [(PPM2DatabaseCheckViolationCount *)&v8 description];
  dictionaryRepresentation = [(PPM2DatabaseCheckViolationCount *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (int)StringAsPragmaCheckType:(id)type
{
  typeCopy = type;
  if ([typeCopy isEqualToString:@"UnknownCheck"])
  {
    v4 = 0;
  }

  else if ([typeCopy isEqualToString:@"IntegrityCheck"])
  {
    v4 = 1;
  }

  else if ([typeCopy isEqualToString:@"ForeignKeyCheck"])
  {
    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (int)pragmaCheckType
{
  if (*&self->_has)
  {
    return self->_pragmaCheckType;
  }

  else
  {
    return 0;
  }
}

- (void)setHasSchemaVersion:(BOOL)version
{
  if (version)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

@end