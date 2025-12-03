@interface SIRINLUINTERNALSNLP_INTERMEDIATESNLPAssetVersion
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasOsRelease:(BOOL)release;
- (void)setHasPatchNumber:(BOOL)number;
- (void)writeTo:(id)to;
@end

@implementation SIRINLUINTERNALSNLP_INTERMEDIATESNLPAssetVersion

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = *(fromCopy + 28);
  if ((v5 & 2) != 0)
  {
    self->_osRelease = *(fromCopy + 5);
    *&self->_has |= 2u;
    v5 = *(fromCopy + 28);
    if ((v5 & 1) == 0)
    {
LABEL_3:
      if ((v5 & 4) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*(fromCopy + 28) & 1) == 0)
  {
    goto LABEL_3;
  }

  self->_ncvNumber = *(fromCopy + 4);
  *&self->_has |= 1u;
  if ((*(fromCopy + 28) & 4) != 0)
  {
LABEL_4:
    self->_patchNumber = *(fromCopy + 6);
    *&self->_has |= 4u;
  }

LABEL_5:
  if (*(fromCopy + 1))
  {
    v6 = fromCopy;
    [(SIRINLUINTERNALSNLP_INTERMEDIATESNLPAssetVersion *)self setBoltTaskId:?];
    fromCopy = v6;
  }
}

- (unint64_t)hash
{
  if ((*&self->_has & 2) == 0)
  {
    v6 = 0;
    if (*&self->_has)
    {
      goto LABEL_3;
    }

LABEL_6:
    v7 = 0;
    if ((*&self->_has & 4) != 0)
    {
      goto LABEL_4;
    }

LABEL_7:
    v8 = 0;
    return v7 ^ v6 ^ v8 ^ [(NSString *)self->_boltTaskId hash:v3];
  }

  v6 = 2654435761 * self->_osRelease;
  if ((*&self->_has & 1) == 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  v7 = 2654435761 * self->_ncvNumber;
  if ((*&self->_has & 4) == 0)
  {
    goto LABEL_7;
  }

LABEL_4:
  v8 = 2654435761 * self->_patchNumber;
  return v7 ^ v6 ^ v8 ^ [(NSString *)self->_boltTaskId hash:v3];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_19;
  }

  v5 = *(equalCopy + 28);
  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 28) & 2) == 0 || self->_osRelease != *(equalCopy + 5))
    {
      goto LABEL_19;
    }
  }

  else if ((*(equalCopy + 28) & 2) != 0)
  {
LABEL_19:
    v7 = 0;
    goto LABEL_20;
  }

  if (*&self->_has)
  {
    if ((*(equalCopy + 28) & 1) == 0 || self->_ncvNumber != *(equalCopy + 4))
    {
      goto LABEL_19;
    }
  }

  else if (*(equalCopy + 28))
  {
    goto LABEL_19;
  }

  if ((*&self->_has & 4) != 0)
  {
    if ((*(equalCopy + 28) & 4) == 0 || self->_patchNumber != *(equalCopy + 6))
    {
      goto LABEL_19;
    }
  }

  else if ((*(equalCopy + 28) & 4) != 0)
  {
    goto LABEL_19;
  }

  boltTaskId = self->_boltTaskId;
  if (boltTaskId | *(equalCopy + 1))
  {
    v7 = [(NSString *)boltTaskId isEqual:?];
  }

  else
  {
    v7 = 1;
  }

LABEL_20:

  return v7;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  has = self->_has;
  if ((has & 2) == 0)
  {
    if ((*&self->_has & 1) == 0)
    {
      goto LABEL_3;
    }

LABEL_7:
    *(v5 + 16) = self->_ncvNumber;
    *(v5 + 28) |= 1u;
    if ((*&self->_has & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  *(v5 + 20) = self->_osRelease;
  *(v5 + 28) |= 2u;
  has = self->_has;
  if (has)
  {
    goto LABEL_7;
  }

LABEL_3:
  if ((has & 4) != 0)
  {
LABEL_4:
    *(v5 + 24) = self->_patchNumber;
    *(v5 + 28) |= 4u;
  }

LABEL_5:
  v8 = [(NSString *)self->_boltTaskId copyWithZone:zone];
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
    toCopy[5] = self->_osRelease;
    *(toCopy + 28) |= 2u;
    has = self->_has;
    if ((has & 1) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*&self->_has & 1) == 0)
  {
    goto LABEL_3;
  }

  toCopy[4] = self->_ncvNumber;
  *(toCopy + 28) |= 1u;
  if ((*&self->_has & 4) != 0)
  {
LABEL_4:
    toCopy[6] = self->_patchNumber;
    *(toCopy + 28) |= 4u;
  }

LABEL_5:
  if (self->_boltTaskId)
  {
    v6 = toCopy;
    [toCopy setBoltTaskId:?];
    toCopy = v6;
  }
}

- (void)writeTo:(id)to
{
  toCopy = to;
  has = self->_has;
  v9 = toCopy;
  if ((has & 2) != 0)
  {
    osRelease = self->_osRelease;
    PBDataWriterWriteUint32Field();
    toCopy = v9;
    has = self->_has;
    if ((has & 1) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*&self->_has & 1) == 0)
  {
    goto LABEL_3;
  }

  ncvNumber = self->_ncvNumber;
  PBDataWriterWriteUint32Field();
  toCopy = v9;
  if ((*&self->_has & 4) != 0)
  {
LABEL_4:
    patchNumber = self->_patchNumber;
    PBDataWriterWriteUint32Field();
    toCopy = v9;
  }

LABEL_5:
  if (self->_boltTaskId)
  {
    PBDataWriterWriteStringField();
    toCopy = v9;
  }
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  has = self->_has;
  if ((has & 2) != 0)
  {
    v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_osRelease];
    [dictionary setObject:v8 forKey:@"os_release"];

    has = self->_has;
    if ((has & 1) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*&self->_has & 1) == 0)
  {
    goto LABEL_3;
  }

  v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_ncvNumber];
  [dictionary setObject:v9 forKey:@"ncv_number"];

  if ((*&self->_has & 4) != 0)
  {
LABEL_4:
    v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_patchNumber];
    [dictionary setObject:v5 forKey:@"patch_number"];
  }

LABEL_5:
  boltTaskId = self->_boltTaskId;
  if (boltTaskId)
  {
    [dictionary setObject:boltTaskId forKey:@"bolt_task_id"];
  }

  return dictionary;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = SIRINLUINTERNALSNLP_INTERMEDIATESNLPAssetVersion;
  v4 = [(SIRINLUINTERNALSNLP_INTERMEDIATESNLPAssetVersion *)&v8 description];
  dictionaryRepresentation = [(SIRINLUINTERNALSNLP_INTERMEDIATESNLPAssetVersion *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (void)setHasPatchNumber:(BOOL)number
{
  if (number)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasOsRelease:(BOOL)release
{
  if (release)
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