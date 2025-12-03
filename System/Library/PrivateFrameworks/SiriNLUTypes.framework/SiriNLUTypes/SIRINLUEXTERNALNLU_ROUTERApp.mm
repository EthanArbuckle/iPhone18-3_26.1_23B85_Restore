@interface SIRINLUEXTERNALNLU_ROUTERApp
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation SIRINLUEXTERNALNLU_ROUTERApp

- (void)mergeFrom:(id)from
{
  if (*(from + 1))
  {
    [(SIRINLUEXTERNALNLU_ROUTERApp *)self setBundleIdentifier:?];
  }
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    bundleIdentifier = self->_bundleIdentifier;
    if (bundleIdentifier | equalCopy[1])
    {
      v6 = [(NSString *)bundleIdentifier isEqual:?];
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
  v6 = [(NSString *)self->_bundleIdentifier copyWithZone:zone];
  v7 = v5[1];
  v5[1] = v6;

  return v5;
}

- (void)copyTo:(id)to
{
  bundleIdentifier = self->_bundleIdentifier;
  if (bundleIdentifier)
  {
    [to setBundleIdentifier:bundleIdentifier];
  }
}

- (void)writeTo:(id)to
{
  if (self->_bundleIdentifier)
  {
    PBDataWriterWriteStringField();
  }
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v4 = dictionary;
  bundleIdentifier = self->_bundleIdentifier;
  if (bundleIdentifier)
  {
    [dictionary setObject:bundleIdentifier forKey:@"bundle_identifier"];
  }

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = SIRINLUEXTERNALNLU_ROUTERApp;
  v4 = [(SIRINLUEXTERNALNLU_ROUTERApp *)&v8 description];
  dictionaryRepresentation = [(SIRINLUEXTERNALNLU_ROUTERApp *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

@end