@interface SIRINLUEXTERNALSSU_INFERENCESsuInferenceSetup
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation SIRINLUEXTERNALSSU_INFERENCESsuInferenceSetup

- (void)mergeFrom:(id)from
{
  if (*(from + 1))
  {
    [(SIRINLUEXTERNALSSU_INFERENCESsuInferenceSetup *)self setLocale:?];
  }
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    locale = self->_locale;
    if (locale | equalCopy[1])
    {
      v6 = [(NSString *)locale isEqual:?];
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
  v6 = [(NSString *)self->_locale copyWithZone:zone];
  v7 = v5[1];
  v5[1] = v6;

  return v5;
}

- (void)copyTo:(id)to
{
  locale = self->_locale;
  if (locale)
  {
    [to setLocale:locale];
  }
}

- (void)writeTo:(id)to
{
  if (self->_locale)
  {
    PBDataWriterWriteStringField();
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

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = SIRINLUEXTERNALSSU_INFERENCESsuInferenceSetup;
  v4 = [(SIRINLUEXTERNALSSU_INFERENCESsuInferenceSetup *)&v8 description];
  dictionaryRepresentation = [(SIRINLUEXTERNALSSU_INFERENCESsuInferenceSetup *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

@end