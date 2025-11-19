@interface SIRINLUINTERNALSNLP_INTERMEDIATEITFMAssetVersion
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation SIRINLUINTERNALSNLP_INTERMEDIATEITFMAssetVersion

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  version = self->_version;
  v6 = v4[2];
  v7 = v4;
  if (version)
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    [(SIRINLUINTERNALSNLP_INTERMEDIATESNLPAssetVersion *)version mergeFrom:?];
  }

  else
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    [(SIRINLUINTERNALSNLP_INTERMEDIATEITFMAssetVersion *)self setVersion:?];
  }

  v4 = v7;
LABEL_7:
  if (v4[1])
  {
    [(SIRINLUINTERNALSNLP_INTERMEDIATEITFMAssetVersion *)self setModelType:?];
  }

  MEMORY[0x1EEE66BB8]();
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && ((version = self->_version, !(version | v4[2])) || -[SIRINLUINTERNALSNLP_INTERMEDIATESNLPAssetVersion isEqual:](version, "isEqual:")))
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
  v6 = [(SIRINLUINTERNALSNLP_INTERMEDIATESNLPAssetVersion *)self->_version copyWithZone:a3];
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
  if (self->_version)
  {
    [v4 setVersion:?];
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
  if (self->_version)
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
  version = self->_version;
  if (version)
  {
    v5 = [(SIRINLUINTERNALSNLP_INTERMEDIATESNLPAssetVersion *)version dictionaryRepresentation];
    [v3 setObject:v5 forKey:@"version"];
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
  v8.super_class = SIRINLUINTERNALSNLP_INTERMEDIATEITFMAssetVersion;
  v4 = [(SIRINLUINTERNALSNLP_INTERMEDIATEITFMAssetVersion *)&v8 description];
  v5 = [(SIRINLUINTERNALSNLP_INTERMEDIATEITFMAssetVersion *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

@end