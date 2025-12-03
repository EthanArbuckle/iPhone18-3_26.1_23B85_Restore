@interface TPPBDisposition
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation TPPBDisposition

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  ancientEpoch = self->_ancientEpoch;
  v21 = fromCopy;
  v6 = fromCopy[1];
  if (ancientEpoch)
  {
    if (v6)
    {
      [(TPPBAncientEpoch *)ancientEpoch mergeFrom:?];
    }
  }

  else if (v6)
  {
    [(TPPBDisposition *)self setAncientEpoch:?];
  }

  policyProhibits = self->_policyProhibits;
  v8 = v21[6];
  if (policyProhibits)
  {
    if (v8)
    {
      [(TPPBPolicyProhibits *)policyProhibits mergeFrom:?];
    }
  }

  else if (v8)
  {
    [(TPPBDisposition *)self setPolicyProhibits:?];
  }

  unknownMachineID = self->_unknownMachineID;
  v10 = v21[7];
  if (unknownMachineID)
  {
    if (v10)
    {
      [(TPPBUnknownMachineID *)unknownMachineID mergeFrom:?];
    }
  }

  else if (v10)
  {
    [(TPPBDisposition *)self setUnknownMachineID:?];
  }

  duplicateMachineID = self->_duplicateMachineID;
  v12 = v21[3];
  if (duplicateMachineID)
  {
    if (v12)
    {
      [(TPPBDispositionDuplicateMachineID *)duplicateMachineID mergeFrom:?];
    }
  }

  else if (v12)
  {
    [(TPPBDisposition *)self setDuplicateMachineID:?];
  }

  disallowedMachineID = self->_disallowedMachineID;
  v14 = v21[2];
  if (disallowedMachineID)
  {
    if (v14)
    {
      [(TPPBDispositionDisallowedMachineID *)disallowedMachineID mergeFrom:?];
    }
  }

  else if (v14)
  {
    [(TPPBDisposition *)self setDisallowedMachineID:?];
  }

  evictedMachineID = self->_evictedMachineID;
  v16 = v21[4];
  if (evictedMachineID)
  {
    if (v16)
    {
      [(TPPBDispositionEvictedMachineID *)evictedMachineID mergeFrom:?];
    }
  }

  else if (v16)
  {
    [(TPPBDisposition *)self setEvictedMachineID:?];
  }

  unknownReasonRemovalMachineID = self->_unknownReasonRemovalMachineID;
  v18 = v21[8];
  if (unknownReasonRemovalMachineID)
  {
    if (v18)
    {
      [(TPPBDispositionUnknownReasonRemovalMachineID *)unknownReasonRemovalMachineID mergeFrom:?];
    }
  }

  else if (v18)
  {
    [(TPPBDisposition *)self setUnknownReasonRemovalMachineID:?];
  }

  ghostedMachineID = self->_ghostedMachineID;
  v20 = v21[5];
  if (ghostedMachineID)
  {
    if (v20)
    {
      [(TPPBDispositionGhostedMachineID *)ghostedMachineID mergeFrom:?];
    }
  }

  else if (v20)
  {
    [(TPPBDisposition *)self setGhostedMachineID:?];
  }
}

- (unint64_t)hash
{
  v3 = [(TPPBAncientEpoch *)self->_ancientEpoch hash];
  v4 = [(TPPBPolicyProhibits *)self->_policyProhibits hash]^ v3;
  v5 = [(TPPBUnknownMachineID *)self->_unknownMachineID hash];
  v6 = v4 ^ v5 ^ [(TPPBDispositionDuplicateMachineID *)self->_duplicateMachineID hash];
  v7 = [(TPPBDispositionDisallowedMachineID *)self->_disallowedMachineID hash];
  v8 = v7 ^ [(TPPBDispositionEvictedMachineID *)self->_evictedMachineID hash];
  v9 = v6 ^ v8 ^ [(TPPBDispositionUnknownReasonRemovalMachineID *)self->_unknownReasonRemovalMachineID hash];
  return v9 ^ [(TPPBDispositionGhostedMachineID *)self->_ghostedMachineID hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((ancientEpoch = self->_ancientEpoch, !(ancientEpoch | equalCopy[1])) || -[TPPBAncientEpoch isEqual:](ancientEpoch, "isEqual:")) && ((policyProhibits = self->_policyProhibits, !(policyProhibits | equalCopy[6])) || -[TPPBPolicyProhibits isEqual:](policyProhibits, "isEqual:")) && ((unknownMachineID = self->_unknownMachineID, !(unknownMachineID | equalCopy[7])) || -[TPPBUnknownMachineID isEqual:](unknownMachineID, "isEqual:")) && ((duplicateMachineID = self->_duplicateMachineID, !(duplicateMachineID | equalCopy[3])) || -[TPPBDispositionDuplicateMachineID isEqual:](duplicateMachineID, "isEqual:")) && ((disallowedMachineID = self->_disallowedMachineID, !(disallowedMachineID | equalCopy[2])) || -[TPPBDispositionDisallowedMachineID isEqual:](disallowedMachineID, "isEqual:")) && ((evictedMachineID = self->_evictedMachineID, !(evictedMachineID | equalCopy[4])) || -[TPPBDispositionEvictedMachineID isEqual:](evictedMachineID, "isEqual:")) && ((unknownReasonRemovalMachineID = self->_unknownReasonRemovalMachineID, !(unknownReasonRemovalMachineID | equalCopy[8])) || -[TPPBDispositionUnknownReasonRemovalMachineID isEqual:](unknownReasonRemovalMachineID, "isEqual:")))
  {
    ghostedMachineID = self->_ghostedMachineID;
    if (ghostedMachineID | equalCopy[5])
    {
      v13 = [(TPPBDispositionGhostedMachineID *)ghostedMachineID isEqual:?];
    }

    else
    {
      v13 = 1;
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(TPPBAncientEpoch *)self->_ancientEpoch copyWithZone:zone];
  v7 = v5[1];
  v5[1] = v6;

  v8 = [(TPPBPolicyProhibits *)self->_policyProhibits copyWithZone:zone];
  v9 = v5[6];
  v5[6] = v8;

  v10 = [(TPPBUnknownMachineID *)self->_unknownMachineID copyWithZone:zone];
  v11 = v5[7];
  v5[7] = v10;

  v12 = [(TPPBDispositionDuplicateMachineID *)self->_duplicateMachineID copyWithZone:zone];
  v13 = v5[3];
  v5[3] = v12;

  v14 = [(TPPBDispositionDisallowedMachineID *)self->_disallowedMachineID copyWithZone:zone];
  v15 = v5[2];
  v5[2] = v14;

  v16 = [(TPPBDispositionEvictedMachineID *)self->_evictedMachineID copyWithZone:zone];
  v17 = v5[4];
  v5[4] = v16;

  v18 = [(TPPBDispositionUnknownReasonRemovalMachineID *)self->_unknownReasonRemovalMachineID copyWithZone:zone];
  v19 = v5[8];
  v5[8] = v18;

  v20 = [(TPPBDispositionGhostedMachineID *)self->_ghostedMachineID copyWithZone:zone];
  v21 = v5[5];
  v5[5] = v20;

  return v5;
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_ancientEpoch)
  {
    [toCopy setAncientEpoch:?];
    toCopy = v5;
  }

  if (self->_policyProhibits)
  {
    [v5 setPolicyProhibits:?];
    toCopy = v5;
  }

  if (self->_unknownMachineID)
  {
    [v5 setUnknownMachineID:?];
    toCopy = v5;
  }

  if (self->_duplicateMachineID)
  {
    [v5 setDuplicateMachineID:?];
    toCopy = v5;
  }

  if (self->_disallowedMachineID)
  {
    [v5 setDisallowedMachineID:?];
    toCopy = v5;
  }

  if (self->_evictedMachineID)
  {
    [v5 setEvictedMachineID:?];
    toCopy = v5;
  }

  if (self->_unknownReasonRemovalMachineID)
  {
    [v5 setUnknownReasonRemovalMachineID:?];
    toCopy = v5;
  }

  if (self->_ghostedMachineID)
  {
    [v5 setGhostedMachineID:?];
    toCopy = v5;
  }
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_ancientEpoch)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }

  if (self->_policyProhibits)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }

  if (self->_unknownMachineID)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }

  if (self->_duplicateMachineID)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }

  if (self->_disallowedMachineID)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }

  if (self->_evictedMachineID)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }

  if (self->_unknownReasonRemovalMachineID)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }

  if (self->_ghostedMachineID)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  ancientEpoch = self->_ancientEpoch;
  if (ancientEpoch)
  {
    dictionaryRepresentation = [(TPPBAncientEpoch *)ancientEpoch dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation forKey:@"ancientEpoch"];
  }

  policyProhibits = self->_policyProhibits;
  if (policyProhibits)
  {
    dictionaryRepresentation2 = [(TPPBPolicyProhibits *)policyProhibits dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation2 forKey:@"policyProhibits"];
  }

  unknownMachineID = self->_unknownMachineID;
  if (unknownMachineID)
  {
    dictionaryRepresentation3 = [(TPPBUnknownMachineID *)unknownMachineID dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation3 forKey:@"unknownMachineID"];
  }

  duplicateMachineID = self->_duplicateMachineID;
  if (duplicateMachineID)
  {
    dictionaryRepresentation4 = [(TPPBDispositionDuplicateMachineID *)duplicateMachineID dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation4 forKey:@"duplicateMachineID"];
  }

  disallowedMachineID = self->_disallowedMachineID;
  if (disallowedMachineID)
  {
    dictionaryRepresentation5 = [(TPPBDispositionDisallowedMachineID *)disallowedMachineID dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation5 forKey:@"disallowedMachineID"];
  }

  evictedMachineID = self->_evictedMachineID;
  if (evictedMachineID)
  {
    dictionaryRepresentation6 = [(TPPBDispositionEvictedMachineID *)evictedMachineID dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation6 forKey:@"evictedMachineID"];
  }

  unknownReasonRemovalMachineID = self->_unknownReasonRemovalMachineID;
  if (unknownReasonRemovalMachineID)
  {
    dictionaryRepresentation7 = [(TPPBDispositionUnknownReasonRemovalMachineID *)unknownReasonRemovalMachineID dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation7 forKey:@"unknownReasonRemovalMachineID"];
  }

  ghostedMachineID = self->_ghostedMachineID;
  if (ghostedMachineID)
  {
    dictionaryRepresentation8 = [(TPPBDispositionGhostedMachineID *)ghostedMachineID dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation8 forKey:@"ghostedMachineID"];
  }

  return dictionary;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = TPPBDisposition;
  v4 = [(TPPBDisposition *)&v8 description];
  dictionaryRepresentation = [(TPPBDisposition *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

@end