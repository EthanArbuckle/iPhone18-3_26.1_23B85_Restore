@interface PCPAlgorithmState
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation PCPAlgorithmState

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = PCPAlgorithmState;
  v4 = [(PCPAlgorithmState *)&v8 description];
  v5 = [(PCPAlgorithmState *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = v3;
  algorithmState = self->_algorithmState;
  if (algorithmState)
  {
    [v3 setObject:algorithmState forKey:@"algorithmState"];
  }

  algorithmStateWorkouts = self->_algorithmStateWorkouts;
  if (algorithmStateWorkouts)
  {
    [v4 setObject:algorithmStateWorkouts forKey:@"algorithmStateWorkouts"];
  }

  return v4;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_algorithmState)
  {
    PBDataWriterWriteDataField();
    v4 = v5;
  }

  if (self->_algorithmStateWorkouts)
  {
    PBDataWriterWriteDataField();
    v4 = v5;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_algorithmState)
  {
    [v4 setAlgorithmState:?];
    v4 = v5;
  }

  if (self->_algorithmStateWorkouts)
  {
    [v5 setAlgorithmStateWorkouts:?];
    v4 = v5;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSData *)self->_algorithmState copyWithZone:a3];
  v7 = v5[1];
  v5[1] = v6;

  v8 = [(NSData *)self->_algorithmStateWorkouts copyWithZone:a3];
  v9 = v5[2];
  v5[2] = v8;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && ((algorithmState = self->_algorithmState, !(algorithmState | v4[1])) || -[NSData isEqual:](algorithmState, "isEqual:")))
  {
    algorithmStateWorkouts = self->_algorithmStateWorkouts;
    if (algorithmStateWorkouts | v4[2])
    {
      v7 = [(NSData *)algorithmStateWorkouts isEqual:?];
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4[1])
  {
    [(PCPAlgorithmState *)self setAlgorithmState:?];
    v4 = v5;
  }

  if (v4[2])
  {
    [(PCPAlgorithmState *)self setAlgorithmStateWorkouts:?];
    v4 = v5;
  }
}

@end