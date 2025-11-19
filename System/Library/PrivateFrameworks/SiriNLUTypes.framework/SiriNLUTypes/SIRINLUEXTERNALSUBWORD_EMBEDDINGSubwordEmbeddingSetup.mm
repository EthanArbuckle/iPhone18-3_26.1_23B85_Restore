@interface SIRINLUEXTERNALSUBWORD_EMBEDDINGSubwordEmbeddingSetup
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation SIRINLUEXTERNALSUBWORD_EMBEDDINGSubwordEmbeddingSetup

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4[2])
  {
    [(SIRINLUEXTERNALSUBWORD_EMBEDDINGSubwordEmbeddingSetup *)self setLocale:?];
    v4 = v5;
  }

  if (v4[1])
  {
    [(SIRINLUEXTERNALSUBWORD_EMBEDDINGSubwordEmbeddingSetup *)self setEmbeddingVersion:?];
    v4 = v5;
  }
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && ((locale = self->_locale, !(locale | v4[2])) || -[NSString isEqual:](locale, "isEqual:")))
  {
    embeddingVersion = self->_embeddingVersion;
    if (embeddingVersion | v4[1])
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

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_locale copyWithZone:a3];
  v7 = v5[2];
  v5[2] = v6;

  v8 = [(NSString *)self->_embeddingVersion copyWithZone:a3];
  v9 = v5[1];
  v5[1] = v8;

  return v5;
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_locale)
  {
    [v4 setLocale:?];
    v4 = v5;
  }

  if (self->_embeddingVersion)
  {
    [v5 setEmbeddingVersion:?];
    v4 = v5;
  }
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_locale)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (self->_embeddingVersion)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = v3;
  locale = self->_locale;
  if (locale)
  {
    [v3 setObject:locale forKey:@"locale"];
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
  v5 = [(SIRINLUEXTERNALSUBWORD_EMBEDDINGSubwordEmbeddingSetup *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

@end