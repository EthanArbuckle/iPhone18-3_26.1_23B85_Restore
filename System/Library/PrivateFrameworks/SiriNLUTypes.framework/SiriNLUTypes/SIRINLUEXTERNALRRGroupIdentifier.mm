@interface SIRINLUEXTERNALRRGroupIdentifier
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation SIRINLUEXTERNALRRGroupIdentifier

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  groupId = self->_groupId;
  v6 = *(fromCopy + 1);
  if (groupId)
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    v7 = fromCopy;
    [(SIRICOMMONStringValue *)groupId mergeFrom:?];
  }

  else
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    v7 = fromCopy;
    [(SIRINLUEXTERNALRRGroupIdentifier *)self setGroupId:?];
  }

  fromCopy = v7;
LABEL_7:
  if (*(fromCopy + 20))
  {
    self->_seq = *(fromCopy + 4);
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_8;
  }

  groupId = self->_groupId;
  if (groupId | *(equalCopy + 1))
  {
    if (![(SIRICOMMONStringValue *)groupId isEqual:?])
    {
      goto LABEL_8;
    }
  }

  v6 = (*(equalCopy + 20) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(equalCopy + 20) & 1) != 0 && self->_seq == *(equalCopy + 4))
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

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(SIRICOMMONStringValue *)self->_groupId copyWithZone:zone];
  v7 = *(v5 + 8);
  *(v5 + 8) = v6;

  if (*&self->_has)
  {
    *(v5 + 16) = self->_seq;
    *(v5 + 20) |= 1u;
  }

  return v5;
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if (self->_groupId)
  {
    v5 = toCopy;
    [toCopy setGroupId:?];
    toCopy = v5;
  }

  if (*&self->_has)
  {
    *(toCopy + 4) = self->_seq;
    *(toCopy + 20) |= 1u;
  }
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v6 = toCopy;
  if (self->_groupId)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v6;
  }

  if (*&self->_has)
  {
    seq = self->_seq;
    PBDataWriterWriteInt32Field();
    toCopy = v6;
  }
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  groupId = self->_groupId;
  if (groupId)
  {
    dictionaryRepresentation = [(SIRICOMMONStringValue *)groupId dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation forKey:@"group_id"];
  }

  if (*&self->_has)
  {
    v6 = [MEMORY[0x1E696AD98] numberWithInt:self->_seq];
    [dictionary setObject:v6 forKey:@"seq"];
  }

  return dictionary;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = SIRINLUEXTERNALRRGroupIdentifier;
  v4 = [(SIRINLUEXTERNALRRGroupIdentifier *)&v8 description];
  dictionaryRepresentation = [(SIRINLUEXTERNALRRGroupIdentifier *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

@end