@interface PCPApplyState
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation PCPApplyState

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = PCPApplyState;
  v4 = [(PCPApplyState *)&v8 description];
  v5 = [(PCPApplyState *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  inState = self->_inState;
  if (inState)
  {
    v5 = [(PCPAlgorithmState *)inState dictionaryRepresentation];
    [v3 setObject:v5 forKey:@"inState"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  if (self->_inState)
  {
    PBDataWriterWriteSubmessage();
  }
}

- (void)copyTo:(id)a3
{
  inState = self->_inState;
  if (inState)
  {
    [a3 setInState:inState];
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(PCPAlgorithmState *)self->_inState copyWithZone:a3];
  v7 = v5[1];
  v5[1] = v6;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()])
  {
    inState = self->_inState;
    if (inState | v4[1])
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  inState = self->_inState;
  v6 = v4[1];
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