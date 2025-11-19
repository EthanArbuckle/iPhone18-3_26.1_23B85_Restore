@interface SIRINLUEXTERNALRRGroupIdentifier
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation SIRINLUEXTERNALRRGroupIdentifier

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  groupId = self->_groupId;
  v6 = *(v4 + 1);
  if (groupId)
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    v7 = v4;
    [(SIRICOMMONStringValue *)groupId mergeFrom:?];
  }

  else
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    v7 = v4;
    [(SIRINLUEXTERNALRRGroupIdentifier *)self setGroupId:?];
  }

  v4 = v7;
LABEL_7:
  if (*(v4 + 20))
  {
    self->_seq = *(v4 + 4);
    *&self->_has |= 1u;
  }

  MEMORY[0x1EEE66BB8]();
}

- (unint64_t)hash
{
  v3 = [(SIRICOMMONStringValue *)self->_groupId hash];
  if (*&self->_has)
  {
    v4 = 2654435761 * self->_seq;
  }

  else
  {
    v4 = 0;
  }

  return v4 ^ v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_8;
  }

  groupId = self->_groupId;
  if (groupId | *(v4 + 1))
  {
    if (![(SIRICOMMONStringValue *)groupId isEqual:?])
    {
      goto LABEL_8;
    }
  }

  v6 = (*(v4 + 20) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(v4 + 20) & 1) != 0 && self->_seq == *(v4 + 4))
    {
      v6 = 1;
      goto LABEL_9;
    }

LABEL_8:
    v6 = 0;
  }

LABEL_9:

  return v6;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(SIRICOMMONStringValue *)self->_groupId copyWithZone:a3];
  v7 = *(v5 + 8);
  *(v5 + 8) = v6;

  if (*&self->_has)
  {
    *(v5 + 16) = self->_seq;
    *(v5 + 20) |= 1u;
  }

  return v5;
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  if (self->_groupId)
  {
    v5 = v4;
    [v4 setGroupId:?];
    v4 = v5;
  }

  if (*&self->_has)
  {
    *(v4 + 4) = self->_seq;
    *(v4 + 20) |= 1u;
  }
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v6 = v4;
  if (self->_groupId)
  {
    PBDataWriterWriteSubmessage();
    v4 = v6;
  }

  if (*&self->_has)
  {
    seq = self->_seq;
    PBDataWriterWriteInt32Field();
    v4 = v6;
  }
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  groupId = self->_groupId;
  if (groupId)
  {
    v5 = [(SIRICOMMONStringValue *)groupId dictionaryRepresentation];
    [v3 setObject:v5 forKey:@"group_id"];
  }

  if (*&self->_has)
  {
    v6 = [MEMORY[0x1E696AD98] numberWithInt:self->_seq];
    [v3 setObject:v6 forKey:@"seq"];
  }

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = SIRINLUEXTERNALRRGroupIdentifier;
  v4 = [(SIRINLUEXTERNALRRGroupIdentifier *)&v8 description];
  v5 = [(SIRINLUEXTERNALRRGroupIdentifier *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

@end