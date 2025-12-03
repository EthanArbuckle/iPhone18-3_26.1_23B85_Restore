@interface AWDProactiveModelFittingModelInfoStatsPair
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation AWDProactiveModelFittingModelInfoStatsPair

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  modelInfo = self->_modelInfo;
  v6 = fromCopy[1];
  v9 = fromCopy;
  if (modelInfo)
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    [(AWDProactiveModelFittingModelInfo *)modelInfo mergeFrom:?];
  }

  else
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    [(AWDProactiveModelFittingModelInfoStatsPair *)self setModelInfo:?];
  }

  fromCopy = v9;
LABEL_7:
  stats = self->_stats;
  v8 = fromCopy[2];
  if (stats)
  {
    if (v8)
    {
      [(AWDProactiveModelFittingMinibatchStats *)stats mergeFrom:?];
    }
  }

  else if (v8)
  {
    [(AWDProactiveModelFittingModelInfoStatsPair *)self setStats:?];
  }

  MEMORY[0x2821F96F8]();
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((modelInfo = self->_modelInfo, !(modelInfo | equalCopy[1])) || -[AWDProactiveModelFittingModelInfo isEqual:](modelInfo, "isEqual:")))
  {
    stats = self->_stats;
    if (stats | equalCopy[2])
    {
      v7 = [(AWDProactiveModelFittingMinibatchStats *)stats isEqual:?];
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
  v6 = [(AWDProactiveModelFittingModelInfo *)self->_modelInfo copyWithZone:zone];
  v7 = v5[1];
  v5[1] = v6;

  v8 = [(AWDProactiveModelFittingMinibatchStats *)self->_stats copyWithZone:zone];
  v9 = v5[2];
  v5[2] = v8;

  return v5;
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_modelInfo)
  {
    [toCopy setModelInfo:?];
    toCopy = v5;
  }

  if (self->_stats)
  {
    [v5 setStats:?];
    toCopy = v5;
  }
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_modelInfo)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }

  if (self->_stats)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  modelInfo = self->_modelInfo;
  if (modelInfo)
  {
    dictionaryRepresentation = [(AWDProactiveModelFittingModelInfo *)modelInfo dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation forKey:@"modelInfo"];
  }

  stats = self->_stats;
  if (stats)
  {
    dictionaryRepresentation2 = [(AWDProactiveModelFittingMinibatchStats *)stats dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation2 forKey:@"stats"];
  }

  return dictionary;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = AWDProactiveModelFittingModelInfoStatsPair;
  v4 = [(AWDProactiveModelFittingModelInfoStatsPair *)&v8 description];
  dictionaryRepresentation = [(AWDProactiveModelFittingModelInfoStatsPair *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

@end