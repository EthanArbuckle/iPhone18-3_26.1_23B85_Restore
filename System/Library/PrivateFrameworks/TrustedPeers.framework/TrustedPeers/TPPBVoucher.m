@interface TPPBVoucher
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsReason:(id)a3;
- (int)reason;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  if (v4[8])
  {
    self->_reason = v4[4];
    *&self->_has |= 1u;
  }

  v5 = v4;
  if (*(v4 + 1))
  {
    [(TPPBVoucher *)self setBeneficiary:?];
    v4 = v5;
  }

  if (*(v4 + 3))
  {
    [(TPPBVoucher *)self setSponsor:?];
    v4 = v5;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_11;
  }

  v5 = *(v4 + 32);
  if (*&self->_has)
  {
    if ((*(v4 + 32) & 1) == 0 || self->_reason != *(v4 + 4))
    {
      goto LABEL_11;
    }
  }

  else if (*(v4 + 32))
  {
LABEL_11:
    v8 = 0;
    goto LABEL_12;
  }

  beneficiary = self->_beneficiary;
  if (beneficiary | *(v4 + 1) && ![(NSString *)beneficiary isEqual:?])
  {
    goto LABEL_11;
  }

  sponsor = self->_sponsor;
  if (sponsor | *(v4 + 3))
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

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 16) = self->_reason;
    *(v5 + 32) |= 1u;
  }

  v7 = [(NSString *)self->_beneficiary copyWithZone:a3];
  v8 = v6[1];
  v6[1] = v7;

  v9 = [(NSString *)self->_sponsor copyWithZone:a3];
  v10 = v6[3];
  v6[3] = v9;

  return v6;
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  if (*&self->_has)
  {
    v4[4] = self->_reason;
    *(v4 + 32) |= 1u;
  }

  v5 = v4;
  if (self->_beneficiary)
  {
    [v4 setBeneficiary:?];
    v4 = v5;
  }

  if (self->_sponsor)
  {
    [v5 setSponsor:?];
    v4 = v5;
  }
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v6 = v4;
  if (*&self->_has)
  {
    reason = self->_reason;
    PBDataWriterWriteInt32Field();
    v4 = v6;
  }

  if (self->_beneficiary)
  {
    PBDataWriterWriteStringField();
    v4 = v6;
  }

  if (self->_sponsor)
  {
    PBDataWriterWriteStringField();
    v4 = v6;
  }
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
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

    [v3 setObject:v5 forKey:@"reason"];
  }

  beneficiary = self->_beneficiary;
  if (beneficiary)
  {
    [v3 setObject:beneficiary forKey:@"beneficiary"];
  }

  sponsor = self->_sponsor;
  if (sponsor)
  {
    [v3 setObject:sponsor forKey:@"sponsor"];
  }

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = TPPBVoucher;
  v4 = [(TPPBVoucher *)&v8 description];
  v5 = [(TPPBVoucher *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (int)StringAsReason:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"UNKNOWN"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"RESTORE"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"SAME_DEVICE"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"SOS_UPGRADE"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"SECURE_CHANNEL"])
  {
    v4 = 4;
  }

  else if ([v3 isEqualToString:@"RECOVERY_KEY"])
  {
    v4 = 5;
  }

  else if ([v3 isEqualToString:@"RECOVERY_KEY2"])
  {
    v4 = 6;
  }

  else if ([v3 isEqualToString:@"RECOVERY_CONTACT"])
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