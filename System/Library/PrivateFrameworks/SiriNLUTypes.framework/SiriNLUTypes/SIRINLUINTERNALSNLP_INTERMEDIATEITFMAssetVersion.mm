@interface SIRINLUINTERNALSNLP_INTERMEDIATEITFMAssetVersion
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation SIRINLUINTERNALSNLP_INTERMEDIATEITFMAssetVersion

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  version = self->_version;
  v6 = fromCopy[2];
  v7 = fromCopy;
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

  fromCopy = v7;
LABEL_7:
  if (fromCopy[1])
  {
    [(SIRINLUINTERNALSNLP_INTERMEDIATEITFMAssetVersion *)self setModelType:?];
  }

  MEMORY[0x1EEE66BB8]();
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((version = self->_version, !(version | equalCopy[2])) || -[SIRINLUINTERNALSNLP_INTERMEDIATESNLPAssetVersion isEqual:](version, "isEqual:")))
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
  v6 = [(SIRINLUINTERNALSNLP_INTERMEDIATESNLPAssetVersion *)self->_version copyWithZone:zone];
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
  if (self->_version)
  {
    [toCopy setVersion:?];
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
  if (self->_version)
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
  version = self->_version;
  if (version)
  {
    dictionaryRepresentation = [(SIRINLUINTERNALSNLP_INTERMEDIATESNLPAssetVersion *)version dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation forKey:@"version"];
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
  v8.super_class = SIRINLUINTERNALSNLP_INTERMEDIATEITFMAssetVersion;
  v4 = [(SIRINLUINTERNALSNLP_INTERMEDIATEITFMAssetVersion *)&v8 description];
  dictionaryRepresentation = [(SIRINLUINTERNALSNLP_INTERMEDIATEITFMAssetVersion *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

@end