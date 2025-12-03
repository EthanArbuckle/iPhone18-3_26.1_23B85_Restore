@interface PAPBLocationAccess
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation PAPBLocationAccess

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = PAPBLocationAccess;
  v4 = [(PAPBLocationAccess *)&v8 description];
  dictionaryRepresentation = [(PAPBLocationAccess *)self dictionaryRepresentation];
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

  return dictionary;
}

- (void)writeTo:(id)to
{
  if (self->_access)
  {
    PBDataWriterWriteSubmessage();
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(PAPBAccess *)self->_access copyWithZone:zone];
  v7 = v5[1];
  v5[1] = v6;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    access = self->_access;
    if (access | equalCopy[1])
    {
      v6 = [(PAPBAccess *)access isEqual:?];
    }

    else
    {
      v6 = 1;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  access = self->_access;
  v6 = fromCopy[1];
  if (access)
  {
    if (v6)
    {
      [(PAPBAccess *)access mergeFrom:?];
    }
  }

  else if (v6)
  {
    [(PAPBLocationAccess *)self setAccess:?];
  }

  MEMORY[0x1EEE66BB8]();
}

@end