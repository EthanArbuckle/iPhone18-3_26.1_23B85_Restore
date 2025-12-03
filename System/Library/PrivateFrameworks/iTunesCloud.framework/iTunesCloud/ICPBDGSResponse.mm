@interface ICPBDGSResponse
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)writeTo:(id)to;
@end

@implementation ICPBDGSResponse

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v3 = 2654435761 * self->_requestUniqueID;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(ICPBDGSStartDelegationResponse *)self->_startDelegationResponse hash]^ v3;
  return v4 ^ [(ICPBDGSFinishDelegationResponse *)self->_finishDelegationResponse hash];
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
    if ((*(equalCopy + 32) & 1) == 0 || self->_requestUniqueID != *(equalCopy + 4))
    {
      goto LABEL_11;
    }
  }

  else if (*(equalCopy + 32))
  {
LABEL_11:
    v7 = 0;
    goto LABEL_12;
  }

  startDelegationResponse = self->_startDelegationResponse;
  if (startDelegationResponse | *(equalCopy + 3) && ![(ICPBDGSStartDelegationResponse *)startDelegationResponse isEqual:?])
  {
    goto LABEL_11;
  }

  finishDelegationResponse = self->_finishDelegationResponse;
  if (finishDelegationResponse | *(equalCopy + 1))
  {
    v7 = [(ICPBDGSFinishDelegationResponse *)finishDelegationResponse isEqual:?];
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
    *(v5 + 16) = self->_requestUniqueID;
    *(v5 + 32) |= 1u;
  }

  v7 = [(ICPBDGSStartDelegationResponse *)self->_startDelegationResponse copyWithZone:zone];
  v8 = v6[3];
  v6[3] = v7;

  v9 = [(ICPBDGSFinishDelegationResponse *)self->_finishDelegationResponse copyWithZone:zone];
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

  if (self->_startDelegationResponse)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }

  if (self->_finishDelegationResponse)
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
    v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_requestUniqueID];
    [dictionary setObject:v4 forKey:@"requestUniqueID"];
  }

  startDelegationResponse = self->_startDelegationResponse;
  if (startDelegationResponse)
  {
    dictionaryRepresentation = [(ICPBDGSStartDelegationResponse *)startDelegationResponse dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation forKey:@"startDelegationResponse"];
  }

  finishDelegationResponse = self->_finishDelegationResponse;
  if (finishDelegationResponse)
  {
    dictionaryRepresentation2 = [(ICPBDGSFinishDelegationResponse *)finishDelegationResponse dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation2 forKey:@"finishDelegationResponse"];
  }

  return dictionary;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = ICPBDGSResponse;
  v4 = [(ICPBDGSResponse *)&v8 description];
  dictionaryRepresentation = [(ICPBDGSResponse *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

@end