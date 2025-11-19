@interface TPPBDisposition
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation TPPBDisposition

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  ancientEpoch = self->_ancientEpoch;
  v21 = v4;
  v6 = v4[1];
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && ((ancientEpoch = self->_ancientEpoch, !(ancientEpoch | v4[1])) || -[TPPBAncientEpoch isEqual:](ancientEpoch, "isEqual:")) && ((policyProhibits = self->_policyProhibits, !(policyProhibits | v4[6])) || -[TPPBPolicyProhibits isEqual:](policyProhibits, "isEqual:")) && ((unknownMachineID = self->_unknownMachineID, !(unknownMachineID | v4[7])) || -[TPPBUnknownMachineID isEqual:](unknownMachineID, "isEqual:")) && ((duplicateMachineID = self->_duplicateMachineID, !(duplicateMachineID | v4[3])) || -[TPPBDispositionDuplicateMachineID isEqual:](duplicateMachineID, "isEqual:")) && ((disallowedMachineID = self->_disallowedMachineID, !(disallowedMachineID | v4[2])) || -[TPPBDispositionDisallowedMachineID isEqual:](disallowedMachineID, "isEqual:")) && ((evictedMachineID = self->_evictedMachineID, !(evictedMachineID | v4[4])) || -[TPPBDispositionEvictedMachineID isEqual:](evictedMachineID, "isEqual:")) && ((unknownReasonRemovalMachineID = self->_unknownReasonRemovalMachineID, !(unknownReasonRemovalMachineID | v4[8])) || -[TPPBDispositionUnknownReasonRemovalMachineID isEqual:](unknownReasonRemovalMachineID, "isEqual:")))
  {
    ghostedMachineID = self->_ghostedMachineID;
    if (ghostedMachineID | v4[5])
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

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(TPPBAncientEpoch *)self->_ancientEpoch copyWithZone:a3];
  v7 = v5[1];
  v5[1] = v6;

  v8 = [(TPPBPolicyProhibits *)self->_policyProhibits copyWithZone:a3];
  v9 = v5[6];
  v5[6] = v8;

  v10 = [(TPPBUnknownMachineID *)self->_unknownMachineID copyWithZone:a3];
  v11 = v5[7];
  v5[7] = v10;

  v12 = [(TPPBDispositionDuplicateMachineID *)self->_duplicateMachineID copyWithZone:a3];
  v13 = v5[3];
  v5[3] = v12;

  v14 = [(TPPBDispositionDisallowedMachineID *)self->_disallowedMachineID copyWithZone:a3];
  v15 = v5[2];
  v5[2] = v14;

  v16 = [(TPPBDispositionEvictedMachineID *)self->_evictedMachineID copyWithZone:a3];
  v17 = v5[4];
  v5[4] = v16;

  v18 = [(TPPBDispositionUnknownReasonRemovalMachineID *)self->_unknownReasonRemovalMachineID copyWithZone:a3];
  v19 = v5[8];
  v5[8] = v18;

  v20 = [(TPPBDispositionGhostedMachineID *)self->_ghostedMachineID copyWithZone:a3];
  v21 = v5[5];
  v5[5] = v20;

  return v5;
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_ancientEpoch)
  {
    [v4 setAncientEpoch:?];
    v4 = v5;
  }

  if (self->_policyProhibits)
  {
    [v5 setPolicyProhibits:?];
    v4 = v5;
  }

  if (self->_unknownMachineID)
  {
    [v5 setUnknownMachineID:?];
    v4 = v5;
  }

  if (self->_duplicateMachineID)
  {
    [v5 setDuplicateMachineID:?];
    v4 = v5;
  }

  if (self->_disallowedMachineID)
  {
    [v5 setDisallowedMachineID:?];
    v4 = v5;
  }

  if (self->_evictedMachineID)
  {
    [v5 setEvictedMachineID:?];
    v4 = v5;
  }

  if (self->_unknownReasonRemovalMachineID)
  {
    [v5 setUnknownReasonRemovalMachineID:?];
    v4 = v5;
  }

  if (self->_ghostedMachineID)
  {
    [v5 setGhostedMachineID:?];
    v4 = v5;
  }
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_ancientEpoch)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (self->_policyProhibits)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (self->_unknownMachineID)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (self->_duplicateMachineID)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (self->_disallowedMachineID)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (self->_evictedMachineID)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (self->_unknownReasonRemovalMachineID)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (self->_ghostedMachineID)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  ancientEpoch = self->_ancientEpoch;
  if (ancientEpoch)
  {
    v5 = [(TPPBAncientEpoch *)ancientEpoch dictionaryRepresentation];
    [v3 setObject:v5 forKey:@"ancientEpoch"];
  }

  policyProhibits = self->_policyProhibits;
  if (policyProhibits)
  {
    v7 = [(TPPBPolicyProhibits *)policyProhibits dictionaryRepresentation];
    [v3 setObject:v7 forKey:@"policyProhibits"];
  }

  unknownMachineID = self->_unknownMachineID;
  if (unknownMachineID)
  {
    v9 = [(TPPBUnknownMachineID *)unknownMachineID dictionaryRepresentation];
    [v3 setObject:v9 forKey:@"unknownMachineID"];
  }

  duplicateMachineID = self->_duplicateMachineID;
  if (duplicateMachineID)
  {
    v11 = [(TPPBDispositionDuplicateMachineID *)duplicateMachineID dictionaryRepresentation];
    [v3 setObject:v11 forKey:@"duplicateMachineID"];
  }

  disallowedMachineID = self->_disallowedMachineID;
  if (disallowedMachineID)
  {
    v13 = [(TPPBDispositionDisallowedMachineID *)disallowedMachineID dictionaryRepresentation];
    [v3 setObject:v13 forKey:@"disallowedMachineID"];
  }

  evictedMachineID = self->_evictedMachineID;
  if (evictedMachineID)
  {
    v15 = [(TPPBDispositionEvictedMachineID *)evictedMachineID dictionaryRepresentation];
    [v3 setObject:v15 forKey:@"evictedMachineID"];
  }

  unknownReasonRemovalMachineID = self->_unknownReasonRemovalMachineID;
  if (unknownReasonRemovalMachineID)
  {
    v17 = [(TPPBDispositionUnknownReasonRemovalMachineID *)unknownReasonRemovalMachineID dictionaryRepresentation];
    [v3 setObject:v17 forKey:@"unknownReasonRemovalMachineID"];
  }

  ghostedMachineID = self->_ghostedMachineID;
  if (ghostedMachineID)
  {
    v19 = [(TPPBDispositionGhostedMachineID *)ghostedMachineID dictionaryRepresentation];
    [v3 setObject:v19 forKey:@"ghostedMachineID"];
  }

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = TPPBDisposition;
  v4 = [(TPPBDisposition *)&v8 description];
  v5 = [(TPPBDisposition *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

@end