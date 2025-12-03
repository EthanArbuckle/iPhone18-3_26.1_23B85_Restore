@interface TPPBPolicyProhibits
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation TPPBPolicyProhibits

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  if (fromCopy[6])
  {
    self->_policyVersion = fromCopy[1];
    *&self->_has |= 1u;
  }

  v5 = fromCopy;
  if (fromCopy[5])
  {
    [(TPPBPolicyProhibits *)self setSponsorId:?];
    fromCopy = v5;
  }

  if (fromCopy[4])
  {
    [(TPPBPolicyProhibits *)self setSponsorCategory:?];
    fromCopy = v5;
  }

  if (fromCopy[2])
  {
    [(TPPBPolicyProhibits *)self setCandidateCategory:?];
    fromCopy = v5;
  }

  if (fromCopy[3])
  {
    [(TPPBPolicyProhibits *)self setExplanation:?];
    fromCopy = v5;
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_15;
  }

  v5 = *(equalCopy + 48);
  if (*&self->_has)
  {
    if ((*(equalCopy + 48) & 1) == 0 || self->_policyVersion != *(equalCopy + 1))
    {
      goto LABEL_15;
    }
  }

  else if (*(equalCopy + 48))
  {
LABEL_15:
    v10 = 0;
    goto LABEL_16;
  }

  sponsorId = self->_sponsorId;
  if (sponsorId | *(equalCopy + 5) && ![(NSString *)sponsorId isEqual:?])
  {
    goto LABEL_15;
  }

  sponsorCategory = self->_sponsorCategory;
  if (sponsorCategory | *(equalCopy + 4))
  {
    if (![(NSString *)sponsorCategory isEqual:?])
    {
      goto LABEL_15;
    }
  }

  candidateCategory = self->_candidateCategory;
  if (candidateCategory | *(equalCopy + 2))
  {
    if (![(NSString *)candidateCategory isEqual:?])
    {
      goto LABEL_15;
    }
  }

  explanation = self->_explanation;
  if (explanation | *(equalCopy + 3))
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

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 8) = self->_policyVersion;
    *(v5 + 48) |= 1u;
  }

  v7 = [(NSString *)self->_sponsorId copyWithZone:zone];
  v8 = v6[5];
  v6[5] = v7;

  v9 = [(NSString *)self->_sponsorCategory copyWithZone:zone];
  v10 = v6[4];
  v6[4] = v9;

  v11 = [(NSString *)self->_candidateCategory copyWithZone:zone];
  v12 = v6[2];
  v6[2] = v11;

  v13 = [(NSString *)self->_explanation copyWithZone:zone];
  v14 = v6[3];
  v6[3] = v13;

  return v6;
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if (*&self->_has)
  {
    toCopy[1] = self->_policyVersion;
    *(toCopy + 48) |= 1u;
  }

  v5 = toCopy;
  if (self->_sponsorId)
  {
    [toCopy setSponsorId:?];
    toCopy = v5;
  }

  if (self->_sponsorCategory)
  {
    [v5 setSponsorCategory:?];
    toCopy = v5;
  }

  if (self->_candidateCategory)
  {
    [v5 setCandidateCategory:?];
    toCopy = v5;
  }

  if (self->_explanation)
  {
    [v5 setExplanation:?];
    toCopy = v5;
  }
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v6 = toCopy;
  if (*&self->_has)
  {
    policyVersion = self->_policyVersion;
    PBDataWriterWriteUint64Field();
    toCopy = v6;
  }

  if (self->_sponsorId)
  {
    PBDataWriterWriteStringField();
    toCopy = v6;
  }

  if (self->_sponsorCategory)
  {
    PBDataWriterWriteStringField();
    toCopy = v6;
  }

  if (self->_candidateCategory)
  {
    PBDataWriterWriteStringField();
    toCopy = v6;
  }

  if (self->_explanation)
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
    v4 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_policyVersion];
    [dictionary setObject:v4 forKey:@"policy_version"];
  }

  sponsorId = self->_sponsorId;
  if (sponsorId)
  {
    [dictionary setObject:sponsorId forKey:@"sponsor_id"];
  }

  sponsorCategory = self->_sponsorCategory;
  if (sponsorCategory)
  {
    [dictionary setObject:sponsorCategory forKey:@"sponsor_category"];
  }

  candidateCategory = self->_candidateCategory;
  if (candidateCategory)
  {
    [dictionary setObject:candidateCategory forKey:@"candidate_category"];
  }

  explanation = self->_explanation;
  if (explanation)
  {
    [dictionary setObject:explanation forKey:@"explanation"];
  }

  return dictionary;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = TPPBPolicyProhibits;
  v4 = [(TPPBPolicyProhibits *)&v8 description];
  dictionaryRepresentation = [(TPPBPolicyProhibits *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

@end