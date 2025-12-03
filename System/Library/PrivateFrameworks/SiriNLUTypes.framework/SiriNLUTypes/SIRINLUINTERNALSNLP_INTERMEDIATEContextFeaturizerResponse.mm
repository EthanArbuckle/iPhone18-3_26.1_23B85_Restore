@interface SIRINLUINTERNALSNLP_INTERMEDIATEContextFeaturizerResponse
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation SIRINLUINTERNALSNLP_INTERMEDIATEContextFeaturizerResponse

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  tensor = self->_tensor;
  v6 = fromCopy[1];
  if (tensor)
  {
    if (v6)
    {
      [(SIRINLUINTERNALSNLP_INTERMEDIATELinearizedTensor *)tensor mergeFrom:?];
    }
  }

  else if (v6)
  {
    [(SIRINLUINTERNALSNLP_INTERMEDIATEContextFeaturizerResponse *)self setTensor:?];
  }

  MEMORY[0x1EEE66BB8]();
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    tensor = self->_tensor;
    if (tensor | equalCopy[1])
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

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(SIRINLUINTERNALSNLP_INTERMEDIATELinearizedTensor *)self->_tensor copyWithZone:zone];
  v7 = v5[1];
  v5[1] = v6;

  return v5;
}

- (void)copyTo:(id)to
{
  tensor = self->_tensor;
  if (tensor)
  {
    [to setTensor:tensor];
  }
}

- (void)writeTo:(id)to
{
  if (self->_tensor)
  {
    PBDataWriterWriteSubmessage();
  }
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  tensor = self->_tensor;
  if (tensor)
  {
    dictionaryRepresentation = [(SIRINLUINTERNALSNLP_INTERMEDIATELinearizedTensor *)tensor dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation forKey:@"tensor"];
  }

  return dictionary;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = SIRINLUINTERNALSNLP_INTERMEDIATEContextFeaturizerResponse;
  v4 = [(SIRINLUINTERNALSNLP_INTERMEDIATEContextFeaturizerResponse *)&v8 description];
  dictionaryRepresentation = [(SIRINLUINTERNALSNLP_INTERMEDIATEContextFeaturizerResponse *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

@end