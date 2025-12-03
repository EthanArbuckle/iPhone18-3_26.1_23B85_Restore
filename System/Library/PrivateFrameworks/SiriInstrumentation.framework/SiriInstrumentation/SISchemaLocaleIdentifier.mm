@interface SISchemaLocaleIdentifier
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (SISchemaLocaleIdentifier)initWithDictionary:(id)dictionary;
- (SISchemaLocaleIdentifier)initWithJSON:(id)n;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (void)writeTo:(id)to;
@end

@implementation SISchemaLocaleIdentifier

- (SISchemaLocaleIdentifier)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v12.receiver = self;
  v12.super_class = SISchemaLocaleIdentifier;
  v5 = [(SISchemaLocaleIdentifier *)&v12 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"countryCode"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(SISchemaLocaleIdentifier *)v5 setCountryCode:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"languageCode"];
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

- (SISchemaLocaleIdentifier)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(SISchemaLocaleIdentifier *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(SISchemaLocaleIdentifier *)self dictionaryRepresentation];
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
  if (self->_countryCode)
  {
    countryCode = [(SISchemaLocaleIdentifier *)self countryCode];
    v5 = [countryCode copy];
    [dictionary setObject:v5 forKeyedSubscript:@"countryCode"];
  }

  if (self->_languageCode)
  {
    languageCode = [(SISchemaLocaleIdentifier *)self languageCode];
    v7 = [languageCode copy];
    [dictionary setObject:v7 forKeyedSubscript:@"languageCode"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_12;
  }

  countryCode = [(SISchemaLocaleIdentifier *)self countryCode];
  countryCode2 = [equalCopy countryCode];
  if ((countryCode != 0) == (countryCode2 == 0))
  {
    goto LABEL_11;
  }

  countryCode3 = [(SISchemaLocaleIdentifier *)self countryCode];
  if (countryCode3)
  {
    v8 = countryCode3;
    countryCode4 = [(SISchemaLocaleIdentifier *)self countryCode];
    countryCode5 = [equalCopy countryCode];
    v11 = [countryCode4 isEqual:countryCode5];

    if (!v11)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  countryCode = [(SISchemaLocaleIdentifier *)self languageCode];
  countryCode2 = [equalCopy languageCode];
  if ((countryCode != 0) != (countryCode2 == 0))
  {
    languageCode = [(SISchemaLocaleIdentifier *)self languageCode];
    if (!languageCode)
    {

LABEL_15:
      v17 = 1;
      goto LABEL_13;
    }

    v13 = languageCode;
    languageCode2 = [(SISchemaLocaleIdentifier *)self languageCode];
    languageCode3 = [equalCopy languageCode];
    v16 = [languageCode2 isEqual:languageCode3];

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

- (void)writeTo:(id)to
{
  toCopy = to;
  countryCode = [(SISchemaLocaleIdentifier *)self countryCode];

  if (countryCode)
  {
    PBDataWriterWriteStringField();
  }

  languageCode = [(SISchemaLocaleIdentifier *)self languageCode];

  if (languageCode)
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