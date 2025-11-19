@interface ICPBDGSResponse
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)writeTo:(id)a3;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_11;
  }

  if (*&self->_has)
  {
    if ((*(v4 + 32) & 1) == 0 || self->_requestUniqueID != *(v4 + 4))
    {
      goto LABEL_11;
    }
  }

  else if (*(v4 + 32))
  {
LABEL_11:
    v7 = 0;
    goto LABEL_12;
  }

  startDelegationResponse = self->_startDelegationResponse;
  if (startDelegationResponse | *(v4 + 3) && ![(ICPBDGSStartDelegationResponse *)startDelegationResponse isEqual:?])
  {
    goto LABEL_11;
  }

  finishDelegationResponse = self->_finishDelegationResponse;
  if (finishDelegationResponse | *(v4 + 1))
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

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 16) = self->_requestUniqueID;
    *(v5 + 32) |= 1u;
  }

  v7 = [(ICPBDGSStartDelegationResponse *)self->_startDelegationResponse copyWithZone:a3];
  v8 = v6[3];
  v6[3] = v7;

  v9 = [(ICPBDGSFinishDelegationResponse *)self->_finishDelegationResponse copyWithZone:a3];
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

  if (self->_startDelegationResponse)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (self->_finishDelegationResponse)
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
    v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_requestUniqueID];
    [v3 setObject:v4 forKey:@"requestUniqueID"];
  }

  startDelegationResponse = self->_startDelegationResponse;
  if (startDelegationResponse)
  {
    v6 = [(ICPBDGSStartDelegationResponse *)startDelegationResponse dictionaryRepresentation];
    [v3 setObject:v6 forKey:@"startDelegationResponse"];
  }

  finishDelegationResponse = self->_finishDelegationResponse;
  if (finishDelegationResponse)
  {
    v8 = [(ICPBDGSFinishDelegationResponse *)finishDelegationResponse dictionaryRepresentation];
    [v3 setObject:v8 forKey:@"finishDelegationResponse"];
  }

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = ICPBDGSResponse;
  v4 = [(ICPBDGSResponse *)&v8 description];
  v5 = [(ICPBDGSResponse *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

@end