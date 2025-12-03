@interface PPM2SourceAlgPair
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation PPM2SourceAlgPair

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = fromCopy;
  if (fromCopy[2])
  {
    [(PPM2SourceAlgPair *)self setSource:?];
    fromCopy = v5;
  }

  if (fromCopy[1])
  {
    [(PPM2SourceAlgPair *)self setAlgorithm:?];
    fromCopy = v5;
  }
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((source = self->_source, !(source | equalCopy[2])) || -[NSString isEqual:](source, "isEqual:")))
  {
    algorithm = self->_algorithm;
    if (algorithm | equalCopy[1])
    {
      v7 = [(NSString *)algorithm isEqual:?];
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

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_source copyWithZone:zone];
  v7 = v5[2];
  v5[2] = v6;

  v8 = [(NSString *)self->_algorithm copyWithZone:zone];
  v9 = v5[1];
  v5[1] = v8;

  return v5;
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_source)
  {
    [toCopy setSource:?];
    toCopy = v5;
  }

  if (self->_algorithm)
  {
    [v5 setAlgorithm:?];
    toCopy = v5;
  }
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_source)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_algorithm)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v4 = dictionary;
  source = self->_source;
  if (source)
  {
    [dictionary setObject:source forKey:@"source"];
  }

  algorithm = self->_algorithm;
  if (algorithm)
  {
    [v4 setObject:algorithm forKey:@"algorithm"];
  }

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = PPM2SourceAlgPair;
  v4 = [(PPM2SourceAlgPair *)&v8 description];
  dictionaryRepresentation = [(PPM2SourceAlgPair *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

@end