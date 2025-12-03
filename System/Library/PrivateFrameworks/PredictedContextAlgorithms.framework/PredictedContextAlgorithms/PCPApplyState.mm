@interface PCPApplyState
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation PCPApplyState

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = PCPApplyState;
  v4 = [(PCPApplyState *)&v8 description];
  dictionaryRepresentation = [(PCPApplyState *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  inState = self->_inState;
  if (inState)
  {
    dictionaryRepresentation = [(PCPAlgorithmState *)inState dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation forKey:@"inState"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  if (self->_inState)
  {
    PBDataWriterWriteSubmessage();
  }
}

- (void)copyTo:(id)to
{
  inState = self->_inState;
  if (inState)
  {
    [to setInState:inState];
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(PCPAlgorithmState *)self->_inState copyWithZone:zone];
  v7 = v5[1];
  v5[1] = v6;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    inState = self->_inState;
    if (inState | equalCopy[1])
    {
      v6 = [(PCPAlgorithmState *)inState isEqual:?];
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
  inState = self->_inState;
  v6 = fromCopy[1];
  if (inState)
  {
    if (v6)
    {
      [(PCPAlgorithmState *)inState mergeFrom:?];
    }
  }

  else if (v6)
  {
    [(PCPApplyState *)self setInState:?];
  }

  MEMORY[0x1EEE66BB8]();
}

@end