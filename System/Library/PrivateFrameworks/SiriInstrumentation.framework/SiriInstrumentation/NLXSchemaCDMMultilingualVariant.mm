@interface NLXSchemaCDMMultilingualVariant
- (BOOL)isEqual:(id)equal;
- (NLXSchemaCDMMultilingualVariant)initWithDictionary:(id)dictionary;
- (NLXSchemaCDMMultilingualVariant)initWithJSON:(id)n;
- (NSData)jsonData;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)writeTo:(id)to;
@end

@implementation NLXSchemaCDMMultilingualVariant

- (NLXSchemaCDMMultilingualVariant)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v11.receiver = self;
  v11.super_class = NLXSchemaCDMMultilingualVariant;
  v5 = [(NLXSchemaCDMMultilingualVariant *)&v11 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"languageVariantName"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(NLXSchemaCDMMultilingualVariant *)v5 setLanguageVariantName:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"languageVariantConfidenceScore"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v8 doubleValue];
      [(NLXSchemaCDMMultilingualVariant *)v5 setLanguageVariantConfidenceScore:?];
    }

    v9 = v5;
  }

  return v5;
}

- (NLXSchemaCDMMultilingualVariant)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(NLXSchemaCDMMultilingualVariant *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(NLXSchemaCDMMultilingualVariant *)self dictionaryRepresentation];
  if ([MEMORY[0x1E696ACB0] isValidJSONObject:dictionaryRepresentation])
  {
    v3 = [MEMORY[0x1E696ACB0] dataWithJSONObject:dictionaryRepresentation options:0 error:0];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if (*&self->_has)
  {
    v4 = MEMORY[0x1E696AD98];
    [(NLXSchemaCDMMultilingualVariant *)self languageVariantConfidenceScore];
    v5 = [v4 numberWithDouble:?];
    [dictionary setObject:v5 forKeyedSubscript:@"languageVariantConfidenceScore"];
  }

  if (self->_languageVariantName)
  {
    languageVariantName = [(NLXSchemaCDMMultilingualVariant *)self languageVariantName];
    v7 = [languageVariantName copy];
    [dictionary setObject:v7 forKeyedSubscript:@"languageVariantName"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_languageVariantName hash];
  if (*&self->_has)
  {
    languageVariantConfidenceScore = self->_languageVariantConfidenceScore;
    if (languageVariantConfidenceScore < 0.0)
    {
      languageVariantConfidenceScore = -languageVariantConfidenceScore;
    }

    *v4.i64 = floor(languageVariantConfidenceScore + 0.5);
    v8 = (languageVariantConfidenceScore - *v4.i64) * 1.84467441e19;
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
    goto LABEL_11;
  }

  languageVariantName = [(NLXSchemaCDMMultilingualVariant *)self languageVariantName];
  languageVariantName2 = [equalCopy languageVariantName];
  v7 = languageVariantName2;
  if ((languageVariantName != 0) != (languageVariantName2 == 0))
  {
    languageVariantName3 = [(NLXSchemaCDMMultilingualVariant *)self languageVariantName];
    if (languageVariantName3)
    {
      v9 = languageVariantName3;
      languageVariantName4 = [(NLXSchemaCDMMultilingualVariant *)self languageVariantName];
      languageVariantName5 = [equalCopy languageVariantName];
      v12 = [languageVariantName4 isEqual:languageVariantName5];

      if (!v12)
      {
        goto LABEL_11;
      }
    }

    else
    {
    }

    if ((*&self->_has & 1) == (equalCopy[24] & 1))
    {
      if ((*&self->_has & 1) == 0 || (languageVariantConfidenceScore = self->_languageVariantConfidenceScore, [equalCopy languageVariantConfidenceScore], languageVariantConfidenceScore == v14))
      {
        v15 = 1;
        goto LABEL_12;
      }
    }
  }

  else
  {
  }

LABEL_11:
  v15 = 0;
LABEL_12:

  return v15;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  languageVariantName = [(NLXSchemaCDMMultilingualVariant *)self languageVariantName];

  if (languageVariantName)
  {
    PBDataWriterWriteStringField();
  }

  if (*&self->_has)
  {
    PBDataWriterWriteDoubleField();
  }
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end