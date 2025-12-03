@interface SIRINLUEXTERNALSUBWORD_EMBEDDINGSubwordEmbeddingSetup
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation SIRINLUEXTERNALSUBWORD_EMBEDDINGSubwordEmbeddingSetup

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = fromCopy;
  if (fromCopy[2])
  {
    [(SIRINLUEXTERNALSUBWORD_EMBEDDINGSubwordEmbeddingSetup *)self setLocale:?];
    fromCopy = v5;
  }

  if (fromCopy[1])
  {
    [(SIRINLUEXTERNALSUBWORD_EMBEDDINGSubwordEmbeddingSetup *)self setEmbeddingVersion:?];
    fromCopy = v5;
  }
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((locale = self->_locale, !(locale | equalCopy[2])) || -[NSString isEqual:](locale, "isEqual:")))
  {
    embeddingVersion = self->_embeddingVersion;
    if (embeddingVersion | equalCopy[1])
    {
      v7 = [(NSString *)embeddingVersion isEqual:?];
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
  v6 = [(NSString *)self->_locale copyWithZone:zone];
  v7 = v5[2];
  v5[2] = v6;

  v8 = [(NSString *)self->_embeddingVersion copyWithZone:zone];
  v9 = v5[1];
  v5[1] = v8;

  return v5;
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_locale)
  {
    [toCopy setLocale:?];
    toCopy = v5;
  }

  if (self->_embeddingVersion)
  {
    [v5 setEmbeddingVersion:?];
    toCopy = v5;
  }
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_locale)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_embeddingVersion)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v4 = dictionary;
  locale = self->_locale;
  if (locale)
  {
    [dictionary setObject:locale forKey:@"locale"];
  }

  embeddingVersion = self->_embeddingVersion;
  if (embeddingVersion)
  {
    [v4 setObject:embeddingVersion forKey:@"embedding_version"];
  }

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = SIRINLUEXTERNALSUBWORD_EMBEDDINGSubwordEmbeddingSetup;
  v4 = [(SIRINLUEXTERNALSUBWORD_EMBEDDINGSubwordEmbeddingSetup *)&v8 description];
  dictionaryRepresentation = [(SIRINLUEXTERNALSUBWORD_EMBEDDINGSubwordEmbeddingSetup *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

@end