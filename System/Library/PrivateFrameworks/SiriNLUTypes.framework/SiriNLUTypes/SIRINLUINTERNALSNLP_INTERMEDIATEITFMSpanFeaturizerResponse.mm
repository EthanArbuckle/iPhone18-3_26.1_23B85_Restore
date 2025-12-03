@interface SIRINLUINTERNALSNLP_INTERMEDIATEITFMSpanFeaturizerResponse
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation SIRINLUINTERNALSNLP_INTERMEDIATEITFMSpanFeaturizerResponse

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  response = self->_response;
  v6 = fromCopy[2];
  v7 = fromCopy;
  if (response)
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    [(SIRINLUINTERNALSNLP_INTERMEDIATESpanFeaturizerResponse *)response mergeFrom:?];
  }

  else
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    [(SIRINLUINTERNALSNLP_INTERMEDIATEITFMSpanFeaturizerResponse *)self setResponse:?];
  }

  fromCopy = v7;
LABEL_7:
  if (fromCopy[1])
  {
    [(SIRINLUINTERNALSNLP_INTERMEDIATEITFMSpanFeaturizerResponse *)self setModelType:?];
  }

  MEMORY[0x1EEE66BB8]();
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((response = self->_response, !(response | equalCopy[2])) || -[SIRINLUINTERNALSNLP_INTERMEDIATESpanFeaturizerResponse isEqual:](response, "isEqual:")))
  {
    modelType = self->_modelType;
    if (modelType | equalCopy[1])
    {
      v7 = [(NSString *)modelType isEqual:?];
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
  v6 = [(SIRINLUINTERNALSNLP_INTERMEDIATESpanFeaturizerResponse *)self->_response copyWithZone:zone];
  v7 = v5[2];
  v5[2] = v6;

  v8 = [(NSString *)self->_modelType copyWithZone:zone];
  v9 = v5[1];
  v5[1] = v8;

  return v5;
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_response)
  {
    [toCopy setResponse:?];
    toCopy = v5;
  }

  if (self->_modelType)
  {
    [v5 setModelType:?];
    toCopy = v5;
  }
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_response)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }

  if (self->_modelType)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
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

  modelType = self->_modelType;
  if (modelType)
  {
    [dictionary setObject:modelType forKey:@"model_type"];
  }

  return dictionary;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = SIRINLUINTERNALSNLP_INTERMEDIATEITFMSpanFeaturizerResponse;
  v4 = [(SIRINLUINTERNALSNLP_INTERMEDIATEITFMSpanFeaturizerResponse *)&v8 description];
  dictionaryRepresentation = [(SIRINLUINTERNALSNLP_INTERMEDIATEITFMSpanFeaturizerResponse *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

@end