@interface PCPRetrieveState
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation PCPRetrieveState

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = PCPRetrieveState;
  v4 = [(PCPRetrieveState *)&v8 description];
  dictionaryRepresentation = [(PCPRetrieveState *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  outState = self->_outState;
  if (outState)
  {
    dictionaryRepresentation = [(PCPAlgorithmState *)outState dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation forKey:@"outState"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  if (self->_outState)
  {
    PBDataWriterWriteSubmessage();
  }
}

- (void)copyTo:(id)to
{
  outState = self->_outState;
  if (outState)
  {
    [to setOutState:outState];
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(PCPAlgorithmState *)self->_outState copyWithZone:zone];
  v7 = v5[1];
  v5[1] = v6;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    outState = self->_outState;
    if (outState | equalCopy[1])
    {
      v6 = [(PCPAlgorithmState *)outState isEqual:?];
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
  outState = self->_outState;
  v6 = fromCopy[1];
  if (outState)
  {
    if (v6)
    {
      [(PCPAlgorithmState *)outState mergeFrom:?];
    }
  }

  else if (v6)
  {
    [(PCPRetrieveState *)self setOutState:?];
  }

  MEMORY[0x1EEE66BB8]();
}

@end