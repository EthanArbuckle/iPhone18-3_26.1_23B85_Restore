@interface WFREPBAceCommandRequest
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation WFREPBAceCommandRequest

- (void)mergeFrom:(id)a3
{
  if (*(a3 + 1))
  {
    [(WFREPBAceCommandRequest *)self setAceCommandData:?];
  }
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()])
  {
    aceCommandData = self->_aceCommandData;
    if (aceCommandData | v4[1])
    {
      v6 = [(NSData *)aceCommandData isEqual:?];
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
  v6 = [(NSData *)self->_aceCommandData copyWithZone:a3];
  v7 = v5[1];
  v5[1] = v6;

  return v5;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  if (!self->_aceCommandData)
  {
    __assert_rtn("[WFREPBAceCommandRequest writeTo:]", "WFREPBAceCommandRequest.m", 72, "nil != self->_aceCommandData");
  }

  v5 = v4;
  PBDataWriterWriteDataField();
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = v3;
  aceCommandData = self->_aceCommandData;
  if (aceCommandData)
  {
    [v3 setObject:aceCommandData forKey:@"aceCommandData"];
  }

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = WFREPBAceCommandRequest;
  v4 = [(WFREPBAceCommandRequest *)&v8 description];
  v5 = [(WFREPBAceCommandRequest *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

@end