@interface SIRINLUEXTERNALMultilingualVariant
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation SIRINLUEXTERNALMultilingualVariant

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  if (*(fromCopy + 2))
  {
    v5 = fromCopy;
    [(SIRINLUEXTERNALMultilingualVariant *)self setLanguageVariantName:?];
    fromCopy = v5;
  }

  if (fromCopy[3])
  {
    self->_languageVariantScore = fromCopy[1];
    *&self->_has |= 1u;
  }
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_languageVariantName hash];
  if (*&self->_has)
  {
    languageVariantScore = self->_languageVariantScore;
    if (languageVariantScore < 0.0)
    {
      languageVariantScore = -languageVariantScore;
    }

    *v4.i64 = floor(languageVariantScore + 0.5);
    v8 = (languageVariantScore - *v4.i64) * 1.84467441e19;
    *v5.i64 = *v4.i64 - trunc(*v4.i64 * 5.42101086e-20) * 1.84467441e19;
    v9.f64[0] = NAN;
    v9.f64[1] = NAN;
    v6 = 2654435761u * *vbslq_s8(vnegq_f64(v9), v5, v4).i64;
    if (v8 >= 0.0)
    {
      if (v8 > 0.0)
      {
        v6 += v8;
      }
    }

    else
    {
      v6 -= fabs(v8);
    }
  }

  else
  {
    v6 = 0;
  }

  return v6 ^ v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_8;
  }

  languageVariantName = self->_languageVariantName;
  if (languageVariantName | *(equalCopy + 2))
  {
    if (![(NSString *)languageVariantName isEqual:?])
    {
      goto LABEL_8;
    }
  }

  v6 = (*(equalCopy + 24) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(equalCopy + 24) & 1) != 0 && self->_languageVariantScore == *(equalCopy + 1))
    {
      v6 = 1;
      goto LABEL_9;
    }

LABEL_8:
    v6 = 0;
  }

LABEL_9:

  return v6;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_languageVariantName copyWithZone:zone];
  v7 = *(v5 + 16);
  *(v5 + 16) = v6;

  if (*&self->_has)
  {
    *(v5 + 8) = self->_languageVariantScore;
    *(v5 + 24) |= 1u;
  }

  return v5;
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if (self->_languageVariantName)
  {
    v5 = toCopy;
    [toCopy setLanguageVariantName:?];
    toCopy = v5;
  }

  if (*&self->_has)
  {
    *(toCopy + 1) = *&self->_languageVariantScore;
    *(toCopy + 24) |= 1u;
  }
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v6 = toCopy;
  if (self->_languageVariantName)
  {
    PBDataWriterWriteStringField();
    toCopy = v6;
  }

  if (*&self->_has)
  {
    languageVariantScore = self->_languageVariantScore;
    PBDataWriterWriteDoubleField();
    toCopy = v6;
  }
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v4 = dictionary;
  languageVariantName = self->_languageVariantName;
  if (languageVariantName)
  {
    [dictionary setObject:languageVariantName forKey:@"language_variant_name"];
  }

  if (*&self->_has)
  {
    v6 = [MEMORY[0x1E696AD98] numberWithDouble:self->_languageVariantScore];
    [v4 setObject:v6 forKey:@"language_variant_score"];
  }

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = SIRINLUEXTERNALMultilingualVariant;
  v4 = [(SIRINLUEXTERNALMultilingualVariant *)&v8 description];
  dictionaryRepresentation = [(SIRINLUEXTERNALMultilingualVariant *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

@end