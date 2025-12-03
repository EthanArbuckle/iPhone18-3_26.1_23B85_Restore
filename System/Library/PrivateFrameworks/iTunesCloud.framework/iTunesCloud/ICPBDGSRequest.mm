@interface ICPBDGSRequest
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)writeTo:(id)to;
@end

@implementation ICPBDGSRequest

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v3 = 2654435761 * self->_uniqueID;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(ICPBDGSStartDelegationRequest *)self->_startDelegationRequest hash]^ v3;
  return v4 ^ [(ICPBDGSFinishDelegationRequest *)self->_finishDelegationRequest hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_11;
  }

  if (*&self->_has)
  {
    if ((*(equalCopy + 28) & 1) == 0 || self->_uniqueID != *(equalCopy + 6))
    {
      goto LABEL_11;
    }
  }

  else if (*(equalCopy + 28))
  {
LABEL_11:
    v7 = 0;
    goto LABEL_12;
  }

  startDelegationRequest = self->_startDelegationRequest;
  if (startDelegationRequest | *(equalCopy + 2) && ![(ICPBDGSStartDelegationRequest *)startDelegationRequest isEqual:?])
  {
    goto LABEL_11;
  }

  finishDelegationRequest = self->_finishDelegationRequest;
  if (finishDelegationRequest | *(equalCopy + 1))
  {
    v7 = [(ICPBDGSFinishDelegationRequest *)finishDelegationRequest isEqual:?];
  }

  else
  {
    v7 = 1;
  }

LABEL_12:

  return v7;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 24) = self->_uniqueID;
    *(v5 + 28) |= 1u;
  }

  v7 = [(ICPBDGSStartDelegationRequest *)self->_startDelegationRequest copyWithZone:zone];
  v8 = v6[2];
  v6[2] = v7;

  v9 = [(ICPBDGSFinishDelegationRequest *)self->_finishDelegationRequest copyWithZone:zone];
  v10 = v6[1];
  v6[1] = v9;

  return v6;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (*&self->_has)
  {
    PBDataWriterWriteUint32Field();
    toCopy = v5;
  }

  if (self->_startDelegationRequest)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }

  if (self->_finishDelegationRequest)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if (*&self->_has)
  {
    v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_uniqueID];
    [dictionary setObject:v4 forKey:@"uniqueID"];
  }

  startDelegationRequest = self->_startDelegationRequest;
  if (startDelegationRequest)
  {
    dictionaryRepresentation = [(ICPBDGSStartDelegationRequest *)startDelegationRequest dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation forKey:@"startDelegationRequest"];
  }

  finishDelegationRequest = self->_finishDelegationRequest;
  if (finishDelegationRequest)
  {
    dictionaryRepresentation2 = [(ICPBDGSFinishDelegationRequest *)finishDelegationRequest dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation2 forKey:@"finishDelegationRequest"];
  }

  return dictionary;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = ICPBDGSRequest;
  v4 = [(ICPBDGSRequest *)&v8 description];
  dictionaryRepresentation = [(ICPBDGSRequest *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

@end