@interface PPM2DatabaseCheckViolationCount
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsPragmaCheckType:(id)a3;
- (int)pragmaCheckType;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasSchemaVersion:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation PPM2DatabaseCheckViolationCount

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = *(v4 + 24);
  if ((v5 & 2) != 0)
  {
    self->_schemaVersion = *(v4 + 5);
    *&self->_has |= 2u;
    v5 = *(v4 + 24);
  }

  if (v5)
  {
    self->_pragmaCheckType = *(v4 + 4);
    *&self->_has |= 1u;
  }

  if (*(v4 + 1))
  {
    v6 = v4;
    [(PPM2DatabaseCheckViolationCount *)self setActiveTreatments:?];
    v4 = v6;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_14;
  }

  v5 = *(v4 + 24);
  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 24) & 2) == 0 || self->_schemaVersion != *(v4 + 5))
    {
      goto LABEL_14;
    }
  }

  else if ((*(v4 + 24) & 2) != 0)
  {
LABEL_14:
    v7 = 0;
    goto LABEL_15;
  }

  if (*&self->_has)
  {
    if ((*(v4 + 24) & 1) == 0 || self->_pragmaCheckType != *(v4 + 4))
    {
      goto LABEL_14;
    }
  }

  else if (*(v4 + 24))
  {
    goto LABEL_14;
  }

  activeTreatments = self->_activeTreatments;
  if (activeTreatments | *(v4 + 1))
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

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
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

  v8 = [(NSString *)self->_activeTreatments copyWithZone:a3];
  v9 = v6[1];
  v6[1] = v8;

  return v6;
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  if ((has & 2) != 0)
  {
    v4[5] = self->_schemaVersion;
    *(v4 + 24) |= 2u;
    has = self->_has;
  }

  if (has)
  {
    v4[4] = self->_pragmaCheckType;
    *(v4 + 24) |= 1u;
  }

  if (self->_activeTreatments)
  {
    v6 = v4;
    [v4 setActiveTreatments:?];
    v4 = v6;
  }
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  v8 = v4;
  if ((has & 2) != 0)
  {
    schemaVersion = self->_schemaVersion;
    PBDataWriterWriteUint32Field();
    v4 = v8;
    has = self->_has;
  }

  if (has)
  {
    pragmaCheckType = self->_pragmaCheckType;
    PBDataWriterWriteInt32Field();
    v4 = v8;
  }

  if (self->_activeTreatments)
  {
    PBDataWriterWriteStringField();
    v4 = v8;
  }
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  has = self->_has;
  if ((has & 2) != 0)
  {
    v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_schemaVersion];
    [v3 setObject:v5 forKey:@"schemaVersion"];

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

    [v3 setObject:v7 forKey:@"pragmaCheckType"];
  }

  activeTreatments = self->_activeTreatments;
  if (activeTreatments)
  {
    [v3 setObject:activeTreatments forKey:@"activeTreatments"];
  }

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = PPM2DatabaseCheckViolationCount;
  v4 = [(PPM2DatabaseCheckViolationCount *)&v8 description];
  v5 = [(PPM2DatabaseCheckViolationCount *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (int)StringAsPragmaCheckType:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"UnknownCheck"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"IntegrityCheck"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"ForeignKeyCheck"])
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

- (void)setHasSchemaVersion:(BOOL)a3
{
  if (a3)
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