@interface SIRINLUEXTERNALNLU_ROUTERCustom
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation SIRINLUEXTERNALNLU_ROUTERCustom

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4[1])
  {
    [(SIRINLUEXTERNALNLU_ROUTERCustom *)self setBundleIdentifier:?];
    v4 = v5;
  }

  if (v4[2])
  {
    [(SIRINLUEXTERNALNLU_ROUTERCustom *)self setTypeName:?];
    v4 = v5;
  }
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && ((bundleIdentifier = self->_bundleIdentifier, !(bundleIdentifier | v4[1])) || -[NSString isEqual:](bundleIdentifier, "isEqual:")))
  {
    typeName = self->_typeName;
    if (typeName | v4[2])
    {
      v7 = [(NSString *)typeName isEqual:?];
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
  v6 = [(NSString *)self->_bundleIdentifier copyWithZone:a3];
  v7 = v5[1];
  v5[1] = v6;

  v8 = [(NSString *)self->_typeName copyWithZone:a3];
  v9 = v5[2];
  v5[2] = v8;

  return v5;
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_bundleIdentifier)
  {
    [v4 setBundleIdentifier:?];
    v4 = v5;
  }

  if (self->_typeName)
  {
    [v5 setTypeName:?];
    v4 = v5;
  }
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_bundleIdentifier)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (self->_typeName)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = v3;
  bundleIdentifier = self->_bundleIdentifier;
  if (bundleIdentifier)
  {
    [v3 setObject:bundleIdentifier forKey:@"bundleIdentifier"];
  }

  typeName = self->_typeName;
  if (typeName)
  {
    [v4 setObject:typeName forKey:@"typeName"];
  }

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = SIRINLUEXTERNALNLU_ROUTERCustom;
  v4 = [(SIRINLUEXTERNALNLU_ROUTERCustom *)&v8 description];
  v5 = [(SIRINLUEXTERNALNLU_ROUTERCustom *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

@end