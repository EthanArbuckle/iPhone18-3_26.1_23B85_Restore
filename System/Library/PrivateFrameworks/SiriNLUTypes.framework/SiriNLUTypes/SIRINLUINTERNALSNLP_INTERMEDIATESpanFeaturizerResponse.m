@interface SIRINLUINTERNALSNLP_INTERMEDIATESpanFeaturizerResponse
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation SIRINLUINTERNALSNLP_INTERMEDIATESpanFeaturizerResponse

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  tensor = self->_tensor;
  v6 = v4[1];
  if (tensor)
  {
    if (v6)
    {
      [(SIRINLUINTERNALSNLP_INTERMEDIATELinearizedTensor *)tensor mergeFrom:?];
    }
  }

  else if (v6)
  {
    [(SIRINLUINTERNALSNLP_INTERMEDIATESpanFeaturizerResponse *)self setTensor:?];
  }

  MEMORY[0x1EEE66BB8]();
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()])
  {
    tensor = self->_tensor;
    if (tensor | v4[1])
    {
      v6 = [(SIRINLUINTERNALSNLP_INTERMEDIATELinearizedTensor *)tensor isEqual:?];
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
  v6 = [(SIRINLUINTERNALSNLP_INTERMEDIATELinearizedTensor *)self->_tensor copyWithZone:a3];
  v7 = v5[1];
  v5[1] = v6;

  return v5;
}

- (void)copyTo:(id)a3
{
  tensor = self->_tensor;
  if (tensor)
  {
    [a3 setTensor:tensor];
  }
}

- (void)writeTo:(id)a3
{
  if (self->_tensor)
  {
    PBDataWriterWriteSubmessage();
  }
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  tensor = self->_tensor;
  if (tensor)
  {
    v5 = [(SIRINLUINTERNALSNLP_INTERMEDIATELinearizedTensor *)tensor dictionaryRepresentation];
    [v3 setObject:v5 forKey:@"tensor"];
  }

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = SIRINLUINTERNALSNLP_INTERMEDIATESpanFeaturizerResponse;
  v4 = [(SIRINLUINTERNALSNLP_INTERMEDIATESpanFeaturizerResponse *)&v8 description];
  v5 = [(SIRINLUINTERNALSNLP_INTERMEDIATESpanFeaturizerResponse *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

@end