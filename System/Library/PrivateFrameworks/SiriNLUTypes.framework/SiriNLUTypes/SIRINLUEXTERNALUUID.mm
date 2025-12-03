@interface SIRINLUEXTERNALUUID
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsNamespaceA:(id)a;
- (int)namespaceA;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasLowInt:(BOOL)int;
- (void)setHasNamespaceA:(BOOL)a;
- (void)writeTo:(id)to;
@end

@implementation SIRINLUEXTERNALUUID

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = *(fromCopy + 28);
  if (v5)
  {
    self->_highInt = *(fromCopy + 1);
    *&self->_has |= 1u;
    v5 = *(fromCopy + 28);
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

  else if ((*(fromCopy + 28) & 2) == 0)
  {
    goto LABEL_3;
  }

  self->_lowInt = *(fromCopy + 2);
  *&self->_has |= 2u;
  if ((*(fromCopy + 28) & 4) != 0)
  {
LABEL_4:
    self->_namespaceA = *(fromCopy + 6);
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

  v2 = 2654435761u * self->_highInt;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  v3 = 2654435761u * self->_lowInt;
  if ((*&self->_has & 4) == 0)
  {
    goto LABEL_7;
  }

LABEL_4:
  v4 = 2654435761 * self->_namespaceA;
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
    if ((*(equalCopy + 28) & 1) == 0 || self->_highInt != *(equalCopy + 1))
    {
      goto LABEL_16;
    }
  }

  else if (*(equalCopy + 28))
  {
LABEL_16:
    v5 = 0;
    goto LABEL_17;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 28) & 2) == 0 || self->_lowInt != *(equalCopy + 2))
    {
      goto LABEL_16;
    }
  }

  else if ((*(equalCopy + 28) & 2) != 0)
  {
    goto LABEL_16;
  }

  v5 = (*(equalCopy + 28) & 4) == 0;
  if ((*&self->_has & 4) != 0)
  {
    if ((*(equalCopy + 28) & 4) == 0 || self->_namespaceA != *(equalCopy + 6))
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
    *(result + 1) = self->_highInt;
    *(result + 28) |= 1u;
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

  *(result + 2) = self->_lowInt;
  *(result + 28) |= 2u;
  if ((*&self->_has & 4) == 0)
  {
    return result;
  }

LABEL_4:
  *(result + 6) = self->_namespaceA;
  *(result + 28) |= 4u;
  return result;
}

- (void)copyTo:(id)to
{
  toCopy = to;
  has = self->_has;
  if (has)
  {
    toCopy[1] = self->_highInt;
    *(toCopy + 28) |= 1u;
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

  toCopy[2] = self->_lowInt;
  *(toCopy + 28) |= 2u;
  if ((*&self->_has & 4) != 0)
  {
LABEL_4:
    *(toCopy + 6) = self->_namespaceA;
    *(toCopy + 28) |= 4u;
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
    highInt = self->_highInt;
    PBDataWriterWriteUint64Field();
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

  lowInt = self->_lowInt;
  PBDataWriterWriteUint64Field();
  toCopy = v9;
  if ((*&self->_has & 4) != 0)
  {
LABEL_4:
    namespaceA = self->_namespaceA;
    PBDataWriterWriteInt32Field();
    toCopy = v9;
  }

LABEL_5:
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  has = self->_has;
  if ((has & 1) == 0)
  {
    if ((*&self->_has & 2) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    v6 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_lowInt];
    [dictionary setObject:v6 forKey:@"low_int"];

    if ((*&self->_has & 4) == 0)
    {
      goto LABEL_11;
    }

LABEL_7:
    namespaceA = self->_namespaceA;
    if (namespaceA >= 6)
    {
      v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_namespaceA];
    }

    else
    {
      v8 = off_1E83281D8[namespaceA];
    }

    [dictionary setObject:v8 forKey:@"namespace_a"];

    goto LABEL_11;
  }

  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_highInt];
  [dictionary setObject:v5 forKey:@"high_int"];

  has = self->_has;
  if ((has & 2) != 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  if ((has & 4) != 0)
  {
    goto LABEL_7;
  }

LABEL_11:

  return dictionary;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = SIRINLUEXTERNALUUID;
  v4 = [(SIRINLUEXTERNALUUID *)&v8 description];
  dictionaryRepresentation = [(SIRINLUEXTERNALUUID *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (int)StringAsNamespaceA:(id)a
{
  aCopy = a;
  if ([aCopy isEqualToString:@"UUID_NAMESPACE_UNSPECIFIED"])
  {
    v4 = 0;
  }

  else if ([aCopy isEqualToString:@"ENTITY"])
  {
    v4 = 1;
  }

  else if ([aCopy isEqualToString:@"TASK"])
  {
    v4 = 2;
  }

  else if ([aCopy isEqualToString:@"SYSTEM_DIALOG_ACT"])
  {
    v4 = 3;
  }

  else if ([aCopy isEqualToString:@"NLU_REQUEST_ID"])
  {
    v4 = 4;
  }

  else if ([aCopy isEqualToString:@"ASR_HYPOTHESIS_ID"])
  {
    v4 = 5;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setHasNamespaceA:(BOOL)a
{
  if (a)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (int)namespaceA
{
  if ((*&self->_has & 4) != 0)
  {
    return self->_namespaceA;
  }

  else
  {
    return 0;
  }
}

- (void)setHasLowInt:(BOOL)int
{
  if (int)
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