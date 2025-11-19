@interface SIRINLUINTERNALSNLP_INTERMEDIATENLv4AssetVersion
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation SIRINLUINTERNALSNLP_INTERMEDIATENLv4AssetVersion

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  version = self->_version;
  v6 = v4[1];
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()])
  {
    version = self->_version;
    if (version | v4[1])
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

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(SIRINLUINTERNALSNLP_INTERMEDIATESNLPAssetVersion *)self->_version copyWithZone:a3];
  v7 = v5[1];
  v5[1] = v6;

  return v5;
}

- (void)copyTo:(id)a3
{
  version = self->_version;
  if (version)
  {
    [a3 setVersion:version];
  }
}

- (void)writeTo:(id)a3
{
  if (self->_version)
  {
    PBDataWriterWriteSubmessage();
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

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = SIRINLUINTERNALSNLP_INTERMEDIATENLv4AssetVersion;
  v4 = [(SIRINLUINTERNALSNLP_INTERMEDIATENLv4AssetVersion *)&v8 description];
  v5 = [(SIRINLUINTERNALSNLP_INTERMEDIATENLv4AssetVersion *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

@end