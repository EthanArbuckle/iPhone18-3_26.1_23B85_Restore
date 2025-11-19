@interface SISchemaLocaleIdentifier
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (SISchemaLocaleIdentifier)initWithDictionary:(id)a3;
- (SISchemaLocaleIdentifier)initWithJSON:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (void)writeTo:(id)a3;
@end

@implementation SISchemaLocaleIdentifier

- (SISchemaLocaleIdentifier)initWithDictionary:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = SISchemaLocaleIdentifier;
  v5 = [(SISchemaLocaleIdentifier *)&v12 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"countryCode"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(SISchemaLocaleIdentifier *)v5 setCountryCode:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"languageCode"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [v8 copy];
      [(SISchemaLocaleIdentifier *)v5 setLanguageCode:v9];
    }

    v10 = v5;
  }

  return v5;
}

- (SISchemaLocaleIdentifier)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(SISchemaLocaleIdentifier *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(SISchemaLocaleIdentifier *)self dictionaryRepresentation];
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
  if (self->_countryCode)
  {
    v4 = [(SISchemaLocaleIdentifier *)self countryCode];
    v5 = [v4 copy];
    [v3 setObject:v5 forKeyedSubscript:@"countryCode"];
  }

  if (self->_languageCode)
  {
    v6 = [(SISchemaLocaleIdentifier *)self languageCode];
    v7 = [v6 copy];
    [v3 setObject:v7 forKeyedSubscript:@"languageCode"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_12;
  }

  v5 = [(SISchemaLocaleIdentifier *)self countryCode];
  v6 = [v4 countryCode];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_11;
  }

  v7 = [(SISchemaLocaleIdentifier *)self countryCode];
  if (v7)
  {
    v8 = v7;
    v9 = [(SISchemaLocaleIdentifier *)self countryCode];
    v10 = [v4 countryCode];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  v5 = [(SISchemaLocaleIdentifier *)self languageCode];
  v6 = [v4 languageCode];
  if ((v5 != 0) != (v6 == 0))
  {
    v12 = [(SISchemaLocaleIdentifier *)self languageCode];
    if (!v12)
    {

LABEL_15:
      v17 = 1;
      goto LABEL_13;
    }

    v13 = v12;
    v14 = [(SISchemaLocaleIdentifier *)self languageCode];
    v15 = [v4 languageCode];
    v16 = [v14 isEqual:v15];

    if (v16)
    {
      goto LABEL_15;
    }
  }

  else
  {
LABEL_11:
  }

LABEL_12:
  v17 = 0;
LABEL_13:

  return v17;
}

- (void)writeTo:(id)a3
{
  v6 = a3;
  v4 = [(SISchemaLocaleIdentifier *)self countryCode];

  if (v4)
  {
    PBDataWriterWriteStringField();
  }

  v5 = [(SISchemaLocaleIdentifier *)self languageCode];

  if (v5)
  {
    PBDataWriterWriteStringField();
  }
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end