@interface SIRINLUEXTERNALSSU_INFERENCESsuInferenceSetup
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation SIRINLUEXTERNALSSU_INFERENCESsuInferenceSetup

- (void)mergeFrom:(id)a3
{
  if (*(a3 + 1))
  {
    [(SIRINLUEXTERNALSSU_INFERENCESsuInferenceSetup *)self setLocale:?];
  }
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()])
  {
    locale = self->_locale;
    if (locale | v4[1])
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

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_locale copyWithZone:a3];
  v7 = v5[1];
  v5[1] = v6;

  return v5;
}

- (void)copyTo:(id)a3
{
  locale = self->_locale;
  if (locale)
  {
    [a3 setLocale:locale];
  }
}

- (void)writeTo:(id)a3
{
  if (self->_locale)
  {
    PBDataWriterWriteStringField();
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

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = SIRINLUEXTERNALSSU_INFERENCESsuInferenceSetup;
  v4 = [(SIRINLUEXTERNALSSU_INFERENCESsuInferenceSetup *)&v8 description];
  v5 = [(SIRINLUEXTERNALSSU_INFERENCESsuInferenceSetup *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

@end