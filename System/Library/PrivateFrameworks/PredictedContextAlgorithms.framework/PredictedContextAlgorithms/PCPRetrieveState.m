@interface PCPRetrieveState
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation PCPRetrieveState

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = PCPRetrieveState;
  v4 = [(PCPRetrieveState *)&v8 description];
  v5 = [(PCPRetrieveState *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  outState = self->_outState;
  if (outState)
  {
    v5 = [(PCPAlgorithmState *)outState dictionaryRepresentation];
    [v3 setObject:v5 forKey:@"outState"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  if (self->_outState)
  {
    PBDataWriterWriteSubmessage();
  }
}

- (void)copyTo:(id)a3
{
  outState = self->_outState;
  if (outState)
  {
    [a3 setOutState:outState];
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(PCPAlgorithmState *)self->_outState copyWithZone:a3];
  v7 = v5[1];
  v5[1] = v6;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()])
  {
    outState = self->_outState;
    if (outState | v4[1])
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  outState = self->_outState;
  v6 = v4[1];
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