@interface PPM2SourceAlgPair
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation PPM2SourceAlgPair

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4[2])
  {
    [(PPM2SourceAlgPair *)self setSource:?];
    v4 = v5;
  }

  if (v4[1])
  {
    [(PPM2SourceAlgPair *)self setAlgorithm:?];
    v4 = v5;
  }
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && ((source = self->_source, !(source | v4[2])) || -[NSString isEqual:](source, "isEqual:")))
  {
    algorithm = self->_algorithm;
    if (algorithm | v4[1])
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

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_source copyWithZone:a3];
  v7 = v5[2];
  v5[2] = v6;

  v8 = [(NSString *)self->_algorithm copyWithZone:a3];
  v9 = v5[1];
  v5[1] = v8;

  return v5;
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_source)
  {
    [v4 setSource:?];
    v4 = v5;
  }

  if (self->_algorithm)
  {
    [v5 setAlgorithm:?];
    v4 = v5;
  }
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_source)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (self->_algorithm)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = v3;
  source = self->_source;
  if (source)
  {
    [v3 setObject:source forKey:@"source"];
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
  v5 = [(PPM2SourceAlgPair *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

@end