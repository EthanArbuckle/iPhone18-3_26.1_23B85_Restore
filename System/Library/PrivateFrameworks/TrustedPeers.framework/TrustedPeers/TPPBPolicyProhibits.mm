@interface TPPBPolicyProhibits
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation TPPBPolicyProhibits

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  if (v4[6])
  {
    self->_policyVersion = v4[1];
    *&self->_has |= 1u;
  }

  v5 = v4;
  if (v4[5])
  {
    [(TPPBPolicyProhibits *)self setSponsorId:?];
    v4 = v5;
  }

  if (v4[4])
  {
    [(TPPBPolicyProhibits *)self setSponsorCategory:?];
    v4 = v5;
  }

  if (v4[2])
  {
    [(TPPBPolicyProhibits *)self setCandidateCategory:?];
    v4 = v5;
  }

  if (v4[3])
  {
    [(TPPBPolicyProhibits *)self setExplanation:?];
    v4 = v5;
  }
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v3 = 2654435761u * self->_policyVersion;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(NSString *)self->_sponsorId hash]^ v3;
  v5 = [(NSString *)self->_sponsorCategory hash];
  v6 = v4 ^ v5 ^ [(NSString *)self->_candidateCategory hash];
  return v6 ^ [(NSString *)self->_explanation hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_15;
  }

  v5 = *(v4 + 48);
  if (*&self->_has)
  {
    if ((*(v4 + 48) & 1) == 0 || self->_policyVersion != *(v4 + 1))
    {
      goto LABEL_15;
    }
  }

  else if (*(v4 + 48))
  {
LABEL_15:
    v10 = 0;
    goto LABEL_16;
  }

  sponsorId = self->_sponsorId;
  if (sponsorId | *(v4 + 5) && ![(NSString *)sponsorId isEqual:?])
  {
    goto LABEL_15;
  }

  sponsorCategory = self->_sponsorCategory;
  if (sponsorCategory | *(v4 + 4))
  {
    if (![(NSString *)sponsorCategory isEqual:?])
    {
      goto LABEL_15;
    }
  }

  candidateCategory = self->_candidateCategory;
  if (candidateCategory | *(v4 + 2))
  {
    if (![(NSString *)candidateCategory isEqual:?])
    {
      goto LABEL_15;
    }
  }

  explanation = self->_explanation;
  if (explanation | *(v4 + 3))
  {
    v10 = [(NSString *)explanation isEqual:?];
  }

  else
  {
    v10 = 1;
  }

LABEL_16:

  return v10;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 8) = self->_policyVersion;
    *(v5 + 48) |= 1u;
  }

  v7 = [(NSString *)self->_sponsorId copyWithZone:a3];
  v8 = v6[5];
  v6[5] = v7;

  v9 = [(NSString *)self->_sponsorCategory copyWithZone:a3];
  v10 = v6[4];
  v6[4] = v9;

  v11 = [(NSString *)self->_candidateCategory copyWithZone:a3];
  v12 = v6[2];
  v6[2] = v11;

  v13 = [(NSString *)self->_explanation copyWithZone:a3];
  v14 = v6[3];
  v6[3] = v13;

  return v6;
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  if (*&self->_has)
  {
    v4[1] = self->_policyVersion;
    *(v4 + 48) |= 1u;
  }

  v5 = v4;
  if (self->_sponsorId)
  {
    [v4 setSponsorId:?];
    v4 = v5;
  }

  if (self->_sponsorCategory)
  {
    [v5 setSponsorCategory:?];
    v4 = v5;
  }

  if (self->_candidateCategory)
  {
    [v5 setCandidateCategory:?];
    v4 = v5;
  }

  if (self->_explanation)
  {
    [v5 setExplanation:?];
    v4 = v5;
  }
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v6 = v4;
  if (*&self->_has)
  {
    policyVersion = self->_policyVersion;
    PBDataWriterWriteUint64Field();
    v4 = v6;
  }

  if (self->_sponsorId)
  {
    PBDataWriterWriteStringField();
    v4 = v6;
  }

  if (self->_sponsorCategory)
  {
    PBDataWriterWriteStringField();
    v4 = v6;
  }

  if (self->_candidateCategory)
  {
    PBDataWriterWriteStringField();
    v4 = v6;
  }

  if (self->_explanation)
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
    v4 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_policyVersion];
    [v3 setObject:v4 forKey:@"policy_version"];
  }

  sponsorId = self->_sponsorId;
  if (sponsorId)
  {
    [v3 setObject:sponsorId forKey:@"sponsor_id"];
  }

  sponsorCategory = self->_sponsorCategory;
  if (sponsorCategory)
  {
    [v3 setObject:sponsorCategory forKey:@"sponsor_category"];
  }

  candidateCategory = self->_candidateCategory;
  if (candidateCategory)
  {
    [v3 setObject:candidateCategory forKey:@"candidate_category"];
  }

  explanation = self->_explanation;
  if (explanation)
  {
    [v3 setObject:explanation forKey:@"explanation"];
  }

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = TPPBPolicyProhibits;
  v4 = [(TPPBPolicyProhibits *)&v8 description];
  v5 = [(TPPBPolicyProhibits *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

@end