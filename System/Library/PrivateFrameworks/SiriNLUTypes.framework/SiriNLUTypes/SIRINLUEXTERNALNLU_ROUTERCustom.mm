@interface SIRINLUEXTERNALNLU_ROUTERCustom
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation SIRINLUEXTERNALNLU_ROUTERCustom

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = fromCopy;
  if (fromCopy[1])
  {
    [(SIRINLUEXTERNALNLU_ROUTERCustom *)self setBundleIdentifier:?];
    fromCopy = v5;
  }

  if (fromCopy[2])
  {
    [(SIRINLUEXTERNALNLU_ROUTERCustom *)self setTypeName:?];
    fromCopy = v5;
  }
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((bundleIdentifier = self->_bundleIdentifier, !(bundleIdentifier | equalCopy[1])) || -[NSString isEqual:](bundleIdentifier, "isEqual:")))
  {
    typeName = self->_typeName;
    if (typeName | equalCopy[2])
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

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_bundleIdentifier copyWithZone:zone];
  v7 = v5[1];
  v5[1] = v6;

  v8 = [(NSString *)self->_typeName copyWithZone:zone];
  v9 = v5[2];
  v5[2] = v8;

  return v5;
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_bundleIdentifier)
  {
    [toCopy setBundleIdentifier:?];
    toCopy = v5;
  }

  if (self->_typeName)
  {
    [v5 setTypeName:?];
    toCopy = v5;
  }
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_bundleIdentifier)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_typeName)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v4 = dictionary;
  bundleIdentifier = self->_bundleIdentifier;
  if (bundleIdentifier)
  {
    [dictionary setObject:bundleIdentifier forKey:@"bundleIdentifier"];
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
  dictionaryRepresentation = [(SIRINLUEXTERNALNLU_ROUTERCustom *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

@end