@interface PCPAlgorithmState
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation PCPAlgorithmState

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = PCPAlgorithmState;
  v4 = [(PCPAlgorithmState *)&v8 description];
  dictionaryRepresentation = [(PCPAlgorithmState *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v4 = dictionary;
  algorithmState = self->_algorithmState;
  if (algorithmState)
  {
    [dictionary setObject:algorithmState forKey:@"algorithmState"];
  }

  algorithmStateWorkouts = self->_algorithmStateWorkouts;
  if (algorithmStateWorkouts)
  {
    [v4 setObject:algorithmStateWorkouts forKey:@"algorithmStateWorkouts"];
  }

  return v4;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_algorithmState)
  {
    PBDataWriterWriteDataField();
    toCopy = v5;
  }

  if (self->_algorithmStateWorkouts)
  {
    PBDataWriterWriteDataField();
    toCopy = v5;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_algorithmState)
  {
    [toCopy setAlgorithmState:?];
    toCopy = v5;
  }

  if (self->_algorithmStateWorkouts)
  {
    [v5 setAlgorithmStateWorkouts:?];
    toCopy = v5;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSData *)self->_algorithmState copyWithZone:zone];
  v7 = v5[1];
  v5[1] = v6;

  v8 = [(NSData *)self->_algorithmStateWorkouts copyWithZone:zone];
  v9 = v5[2];
  v5[2] = v8;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((algorithmState = self->_algorithmState, !(algorithmState | equalCopy[1])) || -[NSData isEqual:](algorithmState, "isEqual:")))
  {
    algorithmStateWorkouts = self->_algorithmStateWorkouts;
    if (algorithmStateWorkouts | equalCopy[2])
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

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = fromCopy;
  if (fromCopy[1])
  {
    [(PCPAlgorithmState *)self setAlgorithmState:?];
    fromCopy = v5;
  }

  if (fromCopy[2])
  {
    [(PCPAlgorithmState *)self setAlgorithmStateWorkouts:?];
    fromCopy = v5;
  }
}

@end