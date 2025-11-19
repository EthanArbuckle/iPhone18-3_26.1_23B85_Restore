@interface SIRINLUINTERNALSNLP_INTERMEDIATENLv4SpanFeaturizerResponse
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation SIRINLUINTERNALSNLP_INTERMEDIATENLv4SpanFeaturizerResponse

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  response = self->_response;
  v6 = v4[1];
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()])
  {
    response = self->_response;
    if (response | v4[1])
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

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(SIRINLUINTERNALSNLP_INTERMEDIATESpanFeaturizerResponse *)self->_response copyWithZone:a3];
  v7 = v5[1];
  v5[1] = v6;

  return v5;
}

- (void)copyTo:(id)a3
{
  response = self->_response;
  if (response)
  {
    [a3 setResponse:response];
  }
}

- (void)writeTo:(id)a3
{
  if (self->_response)
  {
    PBDataWriterWriteSubmessage();
  }
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  response = self->_response;
  if (response)
  {
    v5 = [(SIRINLUINTERNALSNLP_INTERMEDIATESpanFeaturizerResponse *)response dictionaryRepresentation];
    [v3 setObject:v5 forKey:@"response"];
  }

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = SIRINLUINTERNALSNLP_INTERMEDIATENLv4SpanFeaturizerResponse;
  v4 = [(SIRINLUINTERNALSNLP_INTERMEDIATENLv4SpanFeaturizerResponse *)&v8 description];
  v5 = [(SIRINLUINTERNALSNLP_INTERMEDIATENLv4SpanFeaturizerResponse *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

@end