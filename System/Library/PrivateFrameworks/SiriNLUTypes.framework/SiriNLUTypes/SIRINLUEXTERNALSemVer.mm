@interface SIRINLUEXTERNALSemVer
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasMinorVersion:(BOOL)version;
- (void)setHasPatchVersion:(BOOL)version;
- (void)writeTo:(id)to;
@end

@implementation SIRINLUEXTERNALSemVer

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = *(fromCopy + 20);
  if (v5)
  {
    self->_majorVersion = *(fromCopy + 2);
    *&self->_has |= 1u;
    v5 = *(fromCopy + 20);
    if ((v5 & 2) == 0)
    {
LABEL_3:
      if ((v5 & 4) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*(fromCopy + 20) & 2) == 0)
  {
    goto LABEL_3;
  }

  self->_minorVersion = *(fromCopy + 3);
  *&self->_has |= 2u;
  if ((*(fromCopy + 20) & 4) != 0)
  {
LABEL_4:
    self->_patchVersion = *(fromCopy + 4);
    *&self->_has |= 4u;
  }

LABEL_5:
}

- (unint64_t)hash
{
  if ((*&self->_has & 1) == 0)
  {
    v2 = 0;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    v3 = 0;
    if ((*&self->_has & 4) != 0)
    {
      goto LABEL_4;
    }

LABEL_7:
    v4 = 0;
    return v3 ^ v2 ^ v4;
  }

  v2 = 2654435761 * self->_majorVersion;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  v3 = 2654435761 * self->_minorVersion;
  if ((*&self->_has & 4) == 0)
  {
    goto LABEL_7;
  }

LABEL_4:
  v4 = 2654435761 * self->_patchVersion;
  return v3 ^ v2 ^ v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_16;
  }

  if (*&self->_has)
  {
    if ((*(equalCopy + 20) & 1) == 0 || self->_majorVersion != *(equalCopy + 2))
    {
      goto LABEL_16;
    }
  }

  else if (*(equalCopy + 20))
  {
LABEL_16:
    v5 = 0;
    goto LABEL_17;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 20) & 2) == 0 || self->_minorVersion != *(equalCopy + 3))
    {
      goto LABEL_16;
    }
  }

  else if ((*(equalCopy + 20) & 2) != 0)
  {
    goto LABEL_16;
  }

  v5 = (*(equalCopy + 20) & 4) == 0;
  if ((*&self->_has & 4) != 0)
  {
    if ((*(equalCopy + 20) & 4) == 0 || self->_patchVersion != *(equalCopy + 4))
    {
      goto LABEL_16;
    }

    v5 = 1;
  }

LABEL_17:

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  has = self->_has;
  if (has)
  {
    *(result + 2) = self->_majorVersion;
    *(result + 20) |= 1u;
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        return result;
      }

      goto LABEL_4;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_3;
  }

  *(result + 3) = self->_minorVersion;
  *(result + 20) |= 2u;
  if ((*&self->_has & 4) == 0)
  {
    return result;
  }

LABEL_4:
  *(result + 4) = self->_patchVersion;
  *(result + 20) |= 4u;
  return result;
}

- (void)copyTo:(id)to
{
  toCopy = to;
  has = self->_has;
  if (has)
  {
    toCopy[2] = self->_majorVersion;
    *(toCopy + 20) |= 1u;
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_3;
  }

  toCopy[3] = self->_minorVersion;
  *(toCopy + 20) |= 2u;
  if ((*&self->_has & 4) != 0)
  {
LABEL_4:
    toCopy[4] = self->_patchVersion;
    *(toCopy + 20) |= 4u;
  }

LABEL_5:
}

- (void)writeTo:(id)to
{
  toCopy = to;
  has = self->_has;
  v9 = toCopy;
  if (has)
  {
    majorVersion = self->_majorVersion;
    PBDataWriterWriteUint32Field();
    toCopy = v9;
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_3;
  }

  minorVersion = self->_minorVersion;
  PBDataWriterWriteUint32Field();
  toCopy = v9;
  if ((*&self->_has & 4) != 0)
  {
LABEL_4:
    patchVersion = self->_patchVersion;
    PBDataWriterWriteUint32Field();
    toCopy = v9;
  }

LABEL_5:
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  has = self->_has;
  if (has)
  {
    v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_majorVersion];
    [dictionary setObject:v7 forKey:@"major_version"];

    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_3;
  }

  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_minorVersion];
  [dictionary setObject:v8 forKey:@"minor_version"];

  if ((*&self->_has & 4) != 0)
  {
LABEL_4:
    v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_patchVersion];
    [dictionary setObject:v5 forKey:@"patch_version"];
  }

LABEL_5:

  return dictionary;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = SIRINLUEXTERNALSemVer;
  v4 = [(SIRINLUEXTERNALSemVer *)&v8 description];
  dictionaryRepresentation = [(SIRINLUEXTERNALSemVer *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (void)setHasPatchVersion:(BOOL)version
{
  if (version)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasMinorVersion:(BOOL)version
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