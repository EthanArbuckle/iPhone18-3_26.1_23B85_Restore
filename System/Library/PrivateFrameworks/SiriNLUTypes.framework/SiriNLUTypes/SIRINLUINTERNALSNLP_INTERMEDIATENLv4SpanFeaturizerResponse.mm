@interface SIRINLUINTERNALSNLP_INTERMEDIATENLv4SpanFeaturizerResponse
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation SIRINLUINTERNALSNLP_INTERMEDIATENLv4SpanFeaturizerResponse

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  response = self->_response;
  v6 = fromCopy[1];
  if (response)
  {
    if (v6)
    {
      [(SIRINLUINTERNALSNLP_INTERMEDIATESpanFeaturizerResponse *)response mergeFrom:?];
    }
  }

  else if (v6)
  {
    [(SIRINLUINTERNALSNLP_INTERMEDIATENLv4SpanFeaturizerResponse *)self setResponse:?];
  }

  MEMORY[0x1EEE66BB8]();
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    response = self->_response;
    if (response | equalCopy[1])
    {
      v6 = [(SIRINLUINTERNALSNLP_INTERMEDIATESpanFeaturizerResponse *)response isEqual:?];
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
  v6 = [(SIRINLUINTERNALSNLP_INTERMEDIATESpanFeaturizerResponse *)self->_response copyWithZone:zone];
  v7 = v5[1];
  v5[1] = v6;

  return v5;
}

- (void)copyTo:(id)to
{
  response = self->_response;
  if (response)
  {
    [to setResponse:response];
  }
}

- (void)writeTo:(id)to
{
  if (self->_response)
  {
    PBDataWriterWriteSubmessage();
  }
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  response = self->_response;
  if (response)
  {
    dictionaryRepresentation = [(SIRINLUINTERNALSNLP_INTERMEDIATESpanFeaturizerResponse *)response dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation forKey:@"response"];
  }

  return dictionary;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = SIRINLUINTERNALSNLP_INTERMEDIATENLv4SpanFeaturizerResponse;
  v4 = [(SIRINLUINTERNALSNLP_INTERMEDIATENLv4SpanFeaturizerResponse *)&v8 description];
  dictionaryRepresentation = [(SIRINLUINTERNALSNLP_INTERMEDIATENLv4SpanFeaturizerResponse *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

@end