@interface ICPBDGSRequest
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)writeTo:(id)a3;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_11;
  }

  if (*&self->_has)
  {
    if ((*(v4 + 28) & 1) == 0 || self->_uniqueID != *(v4 + 6))
    {
      goto LABEL_11;
    }
  }

  else if (*(v4 + 28))
  {
LABEL_11:
    v7 = 0;
    goto LABEL_12;
  }

  startDelegationRequest = self->_startDelegationRequest;
  if (startDelegationRequest | *(v4 + 2) && ![(ICPBDGSStartDelegationRequest *)startDelegationRequest isEqual:?])
  {
    goto LABEL_11;
  }

  finishDelegationRequest = self->_finishDelegationRequest;
  if (finishDelegationRequest | *(v4 + 1))
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

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 24) = self->_uniqueID;
    *(v5 + 28) |= 1u;
  }

  v7 = [(ICPBDGSStartDelegationRequest *)self->_startDelegationRequest copyWithZone:a3];
  v8 = v6[2];
  v6[2] = v7;

  v9 = [(ICPBDGSFinishDelegationRequest *)self->_finishDelegationRequest copyWithZone:a3];
  v10 = v6[1];
  v6[1] = v9;

  return v6;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (*&self->_has)
  {
    PBDataWriterWriteUint32Field();
    v4 = v5;
  }

  if (self->_startDelegationRequest)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (self->_finishDelegationRequest)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if (*&self->_has)
  {
    v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_uniqueID];
    [v3 setObject:v4 forKey:@"uniqueID"];
  }

  startDelegationRequest = self->_startDelegationRequest;
  if (startDelegationRequest)
  {
    v6 = [(ICPBDGSStartDelegationRequest *)startDelegationRequest dictionaryRepresentation];
    [v3 setObject:v6 forKey:@"startDelegationRequest"];
  }

  finishDelegationRequest = self->_finishDelegationRequest;
  if (finishDelegationRequest)
  {
    v8 = [(ICPBDGSFinishDelegationRequest *)finishDelegationRequest dictionaryRepresentation];
    [v3 setObject:v8 forKey:@"finishDelegationRequest"];
  }

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = ICPBDGSRequest;
  v4 = [(ICPBDGSRequest *)&v8 description];
  v5 = [(ICPBDGSRequest *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

@end