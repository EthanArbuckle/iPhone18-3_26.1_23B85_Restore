@interface SIRINLUINTERNALSNLP_INTERMEDIATENLv4AssetVersion
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation SIRINLUINTERNALSNLP_INTERMEDIATENLv4AssetVersion

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  version = self->_version;
  v6 = fromCopy[1];
  if (version)
  {
    if (v6)
    {
      [(SIRINLUINTERNALSNLP_INTERMEDIATESNLPAssetVersion *)version mergeFrom:?];
    }
  }

  else if (v6)
  {
    [(SIRINLUINTERNALSNLP_INTERMEDIATENLv4AssetVersion *)self setVersion:?];
  }

  MEMORY[0x1EEE66BB8]();
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    version = self->_version;
    if (version | equalCopy[1])
    {
      v6 = [(SIRINLUINTERNALSNLP_INTERMEDIATESNLPAssetVersion *)version isEqual:?];
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
  v6 = [(SIRINLUINTERNALSNLP_INTERMEDIATESNLPAssetVersion *)self->_version copyWithZone:zone];
  v7 = v5[1];
  v5[1] = v6;

  return v5;
}

- (void)copyTo:(id)to
{
  version = self->_version;
  if (version)
  {
    [to setVersion:version];
  }
}

- (void)writeTo:(id)to
{
  if (self->_version)
  {
    PBDataWriterWriteSubmessage();
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

  return dictionary;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = SIRINLUINTERNALSNLP_INTERMEDIATENLv4AssetVersion;
  v4 = [(SIRINLUINTERNALSNLP_INTERMEDIATENLv4AssetVersion *)&v8 description];
  dictionaryRepresentation = [(SIRINLUINTERNALSNLP_INTERMEDIATENLv4AssetVersion *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

@end