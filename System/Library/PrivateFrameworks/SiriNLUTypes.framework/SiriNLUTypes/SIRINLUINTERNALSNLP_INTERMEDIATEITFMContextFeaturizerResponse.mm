@interface SIRINLUINTERNALSNLP_INTERMEDIATEITFMContextFeaturizerResponse
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation SIRINLUINTERNALSNLP_INTERMEDIATEITFMContextFeaturizerResponse

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  response = self->_response;
  v6 = v4[2];
  v7 = v4;
  if (response)
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    [(SIRINLUINTERNALSNLP_INTERMEDIATEContextFeaturizerResponse *)response mergeFrom:?];
  }

  else
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    [(SIRINLUINTERNALSNLP_INTERMEDIATEITFMContextFeaturizerResponse *)self setResponse:?];
  }

  v4 = v7;
LABEL_7:
  if (v4[1])
  {
    [(SIRINLUINTERNALSNLP_INTERMEDIATEITFMContextFeaturizerResponse *)self setModelType:?];
  }

  MEMORY[0x1EEE66BB8]();
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && ((response = self->_response, !(response | v4[2])) || -[SIRINLUINTERNALSNLP_INTERMEDIATEContextFeaturizerResponse isEqual:](response, "isEqual:")))
  {
    modelType = self->_modelType;
    if (modelType | v4[1])
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

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(SIRINLUINTERNALSNLP_INTERMEDIATEContextFeaturizerResponse *)self->_response copyWithZone:a3];
  v7 = v5[2];
  v5[2] = v6;

  v8 = [(NSString *)self->_modelType copyWithZone:a3];
  v9 = v5[1];
  v5[1] = v8;

  return v5;
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_response)
  {
    [v4 setResponse:?];
    v4 = v5;
  }

  if (self->_modelType)
  {
    [v5 setModelType:?];
    v4 = v5;
  }
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_response)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (self->_modelType)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  response = self->_response;
  if (response)
  {
    v5 = [(SIRINLUINTERNALSNLP_INTERMEDIATEContextFeaturizerResponse *)response dictionaryRepresentation];
    [v3 setObject:v5 forKey:@"response"];
  }

  modelType = self->_modelType;
  if (modelType)
  {
    [v3 setObject:modelType forKey:@"model_type"];
  }

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = SIRINLUINTERNALSNLP_INTERMEDIATEITFMContextFeaturizerResponse;
  v4 = [(SIRINLUINTERNALSNLP_INTERMEDIATEITFMContextFeaturizerResponse *)&v8 description];
  v5 = [(SIRINLUINTERNALSNLP_INTERMEDIATEITFMContextFeaturizerResponse *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

@end