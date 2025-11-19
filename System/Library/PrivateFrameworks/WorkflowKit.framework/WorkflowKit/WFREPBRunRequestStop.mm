@interface WFREPBRunRequestStop
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation WFREPBRunRequestStop

- (void)mergeFrom:(id)a3
{
  if (*(a3 + 1))
  {
    [(WFREPBRunRequestStop *)self setRunRequestIdentifier:?];
  }
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()])
  {
    runRequestIdentifier = self->_runRequestIdentifier;
    if (runRequestIdentifier | v4[1])
    {
      v6 = [(NSString *)runRequestIdentifier isEqual:?];
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

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_runRequestIdentifier copyWithZone:a3];
  v7 = v5[1];
  v5[1] = v6;

  return v5;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  if (!self->_runRequestIdentifier)
  {
    __assert_rtn("[WFREPBRunRequestStop writeTo:]", "WFREPBRunRequestStop.m", 72, "nil != self->_runRequestIdentifier");
  }

  v5 = v4;
  PBDataWriterWriteStringField();
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = v3;
  runRequestIdentifier = self->_runRequestIdentifier;
  if (runRequestIdentifier)
  {
    [v3 setObject:runRequestIdentifier forKey:@"runRequestIdentifier"];
  }

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = WFREPBRunRequestStop;
  v4 = [(WFREPBRunRequestStop *)&v8 description];
  v5 = [(WFREPBRunRequestStop *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

@end