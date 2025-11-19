@interface NLXSchemaCDMMultilingualVariant
- (BOOL)isEqual:(id)a3;
- (NLXSchemaCDMMultilingualVariant)initWithDictionary:(id)a3;
- (NLXSchemaCDMMultilingualVariant)initWithJSON:(id)a3;
- (NSData)jsonData;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)writeTo:(id)a3;
@end

@implementation NLXSchemaCDMMultilingualVariant

- (NLXSchemaCDMMultilingualVariant)initWithDictionary:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = NLXSchemaCDMMultilingualVariant;
  v5 = [(NLXSchemaCDMMultilingualVariant *)&v11 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"languageVariantName"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(NLXSchemaCDMMultilingualVariant *)v5 setLanguageVariantName:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"languageVariantConfidenceScore"];
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

- (NLXSchemaCDMMultilingualVariant)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(NLXSchemaCDMMultilingualVariant *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(NLXSchemaCDMMultilingualVariant *)self dictionaryRepresentation];
  if ([MEMORY[0x1E696ACB0] isValidJSONObject:v2])
  {
    v3 = [MEMORY[0x1E696ACB0] dataWithJSONObject:v2 options:0 error:0];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if (*&self->_has)
  {
    v4 = MEMORY[0x1E696AD98];
    [(NLXSchemaCDMMultilingualVariant *)self languageVariantConfidenceScore];
    v5 = [v4 numberWithDouble:?];
    [v3 setObject:v5 forKeyedSubscript:@"languageVariantConfidenceScore"];
  }

  if (self->_languageVariantName)
  {
    v6 = [(NLXSchemaCDMMultilingualVariant *)self languageVariantName];
    v7 = [v6 copy];
    [v3 setObject:v7 forKeyedSubscript:@"languageVariantName"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_11;
  }

  v5 = [(NLXSchemaCDMMultilingualVariant *)self languageVariantName];
  v6 = [v4 languageVariantName];
  v7 = v6;
  if ((v5 != 0) != (v6 == 0))
  {
    v8 = [(NLXSchemaCDMMultilingualVariant *)self languageVariantName];
    if (v8)
    {
      v9 = v8;
      v10 = [(NLXSchemaCDMMultilingualVariant *)self languageVariantName];
      v11 = [v4 languageVariantName];
      v12 = [v10 isEqual:v11];

      if (!v12)
      {
        goto LABEL_11;
      }
    }

    else
    {
    }

    if ((*&self->_has & 1) == (v4[24] & 1))
    {
      if ((*&self->_has & 1) == 0 || (languageVariantConfidenceScore = self->_languageVariantConfidenceScore, [v4 languageVariantConfidenceScore], languageVariantConfidenceScore == v14))
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

- (void)writeTo:(id)a3
{
  v5 = a3;
  v4 = [(NLXSchemaCDMMultilingualVariant *)self languageVariantName];

  if (v4)
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