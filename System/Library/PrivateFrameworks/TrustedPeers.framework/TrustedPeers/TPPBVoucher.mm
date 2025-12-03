@interface TPPBVoucher
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsReason:(id)reason;
- (int)reason;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation TPPBVoucher

- (int)reason
{
  if (*&self->_has)
  {
    return self->_reason;
  }

  else
  {
    return 0;
  }
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  if (fromCopy[8])
  {
    self->_reason = fromCopy[4];
    *&self->_has |= 1u;
  }

  v5 = fromCopy;
  if (*(fromCopy + 1))
  {
    [(TPPBVoucher *)self setBeneficiary:?];
    fromCopy = v5;
  }

  if (*(fromCopy + 3))
  {
    [(TPPBVoucher *)self setSponsor:?];
    fromCopy = v5;
  }
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v3 = 2654435761 * self->_reason;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(NSString *)self->_beneficiary hash]^ v3;
  return v4 ^ [(NSString *)self->_sponsor hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_11;
  }

  v5 = *(equalCopy + 32);
  if (*&self->_has)
  {
    if ((*(equalCopy + 32) & 1) == 0 || self->_reason != *(equalCopy + 4))
    {
      goto LABEL_11;
    }
  }

  else if (*(equalCopy + 32))
  {
LABEL_11:
    v8 = 0;
    goto LABEL_12;
  }

  beneficiary = self->_beneficiary;
  if (beneficiary | *(equalCopy + 1) && ![(NSString *)beneficiary isEqual:?])
  {
    goto LABEL_11;
  }

  sponsor = self->_sponsor;
  if (sponsor | *(equalCopy + 3))
  {
    v8 = [(NSString *)sponsor isEqual:?];
  }

  else
  {
    v8 = 1;
  }

LABEL_12:

  return v8;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 16) = self->_reason;
    *(v5 + 32) |= 1u;
  }

  v7 = [(NSString *)self->_beneficiary copyWithZone:zone];
  v8 = v6[1];
  v6[1] = v7;

  v9 = [(NSString *)self->_sponsor copyWithZone:zone];
  v10 = v6[3];
  v6[3] = v9;

  return v6;
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if (*&self->_has)
  {
    toCopy[4] = self->_reason;
    *(toCopy + 32) |= 1u;
  }

  v5 = toCopy;
  if (self->_beneficiary)
  {
    [toCopy setBeneficiary:?];
    toCopy = v5;
  }

  if (self->_sponsor)
  {
    [v5 setSponsor:?];
    toCopy = v5;
  }
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v6 = toCopy;
  if (*&self->_has)
  {
    reason = self->_reason;
    PBDataWriterWriteInt32Field();
    toCopy = v6;
  }

  if (self->_beneficiary)
  {
    PBDataWriterWriteStringField();
    toCopy = v6;
  }

  if (self->_sponsor)
  {
    PBDataWriterWriteStringField();
    toCopy = v6;
  }
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  if (*&self->_has)
  {
    reason = self->_reason;
    if (reason >= 8)
    {
      v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_reason];
    }

    else
    {
      v5 = off_279DEDD88[reason];
    }

    [dictionary setObject:v5 forKey:@"reason"];
  }

  beneficiary = self->_beneficiary;
  if (beneficiary)
  {
    [dictionary setObject:beneficiary forKey:@"beneficiary"];
  }

  sponsor = self->_sponsor;
  if (sponsor)
  {
    [dictionary setObject:sponsor forKey:@"sponsor"];
  }

  return dictionary;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = TPPBVoucher;
  v4 = [(TPPBVoucher *)&v8 description];
  dictionaryRepresentation = [(TPPBVoucher *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (int)StringAsReason:(id)reason
{
  reasonCopy = reason;
  if ([reasonCopy isEqualToString:@"UNKNOWN"])
  {
    v4 = 0;
  }

  else if ([reasonCopy isEqualToString:@"RESTORE"])
  {
    v4 = 1;
  }

  else if ([reasonCopy isEqualToString:@"SAME_DEVICE"])
  {
    v4 = 2;
  }

  else if ([reasonCopy isEqualToString:@"SOS_UPGRADE"])
  {
    v4 = 3;
  }

  else if ([reasonCopy isEqualToString:@"SECURE_CHANNEL"])
  {
    v4 = 4;
  }

  else if ([reasonCopy isEqualToString:@"RECOVERY_KEY"])
  {
    v4 = 5;
  }

  else if ([reasonCopy isEqualToString:@"RECOVERY_KEY2"])
  {
    v4 = 6;
  }

  else if ([reasonCopy isEqualToString:@"RECOVERY_CONTACT"])
  {
    v4 = 7;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end