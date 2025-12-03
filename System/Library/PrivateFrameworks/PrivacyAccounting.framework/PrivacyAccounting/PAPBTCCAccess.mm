@interface PAPBTCCAccess
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation PAPBTCCAccess

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = PAPBTCCAccess;
  v4 = [(PAPBTCCAccess *)&v8 description];
  dictionaryRepresentation = [(PAPBTCCAccess *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  access = self->_access;
  if (access)
  {
    dictionaryRepresentation = [(PAPBAccess *)access dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"access"];
  }

  tccService = self->_tccService;
  if (tccService)
  {
    [dictionary setObject:tccService forKeyedSubscript:@"tccService"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_access)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }

  if (self->_tccService)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(PAPBAccess *)self->_access copyWithZone:zone];
  v7 = v5[1];
  v5[1] = v6;

  v8 = [(NSString *)self->_tccService copyWithZone:zone];
  v9 = v5[2];
  v5[2] = v8;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((access = self->_access, !(access | equalCopy[1])) || -[PAPBAccess isEqual:](access, "isEqual:")))
  {
    tccService = self->_tccService;
    if (tccService | equalCopy[2])
    {
      v7 = [(NSString *)tccService isEqual:?];
    }

    else
    {
      v7 = 1;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  access = self->_access;
  v6 = fromCopy[1];
  v7 = fromCopy;
  if (access)
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    [(PAPBAccess *)access mergeFrom:?];
  }

  else
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    [(PAPBTCCAccess *)self setAccess:?];
  }

  fromCopy = v7;
LABEL_7:
  if (fromCopy[2])
  {
    [(PAPBTCCAccess *)self setTccService:?];
  }

  MEMORY[0x1EEE66BB8]();
}

@end