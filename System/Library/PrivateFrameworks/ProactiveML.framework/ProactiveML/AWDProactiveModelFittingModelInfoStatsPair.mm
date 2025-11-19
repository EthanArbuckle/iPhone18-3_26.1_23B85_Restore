@interface AWDProactiveModelFittingModelInfoStatsPair
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation AWDProactiveModelFittingModelInfoStatsPair

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  modelInfo = self->_modelInfo;
  v6 = v4[1];
  v9 = v4;
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

  v4 = v9;
LABEL_7:
  stats = self->_stats;
  v8 = v4[2];
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && ((modelInfo = self->_modelInfo, !(modelInfo | v4[1])) || -[AWDProactiveModelFittingModelInfo isEqual:](modelInfo, "isEqual:")))
  {
    stats = self->_stats;
    if (stats | v4[2])
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

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(AWDProactiveModelFittingModelInfo *)self->_modelInfo copyWithZone:a3];
  v7 = v5[1];
  v5[1] = v6;

  v8 = [(AWDProactiveModelFittingMinibatchStats *)self->_stats copyWithZone:a3];
  v9 = v5[2];
  v5[2] = v8;

  return v5;
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_modelInfo)
  {
    [v4 setModelInfo:?];
    v4 = v5;
  }

  if (self->_stats)
  {
    [v5 setStats:?];
    v4 = v5;
  }
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_modelInfo)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (self->_stats)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  modelInfo = self->_modelInfo;
  if (modelInfo)
  {
    v5 = [(AWDProactiveModelFittingModelInfo *)modelInfo dictionaryRepresentation];
    [v3 setObject:v5 forKey:@"modelInfo"];
  }

  stats = self->_stats;
  if (stats)
  {
    v7 = [(AWDProactiveModelFittingMinibatchStats *)stats dictionaryRepresentation];
    [v3 setObject:v7 forKey:@"stats"];
  }

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = AWDProactiveModelFittingModelInfoStatsPair;
  v4 = [(AWDProactiveModelFittingModelInfoStatsPair *)&v8 description];
  v5 = [(AWDProactiveModelFittingModelInfoStatsPair *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

@end