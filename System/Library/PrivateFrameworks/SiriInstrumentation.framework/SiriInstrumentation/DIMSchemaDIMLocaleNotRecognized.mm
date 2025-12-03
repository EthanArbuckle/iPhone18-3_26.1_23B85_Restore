@interface DIMSchemaDIMLocaleNotRecognized
- (BOOL)isEqual:(id)equal;
- (DIMSchemaDIMLocaleNotRecognized)initWithDictionary:(id)dictionary;
- (DIMSchemaDIMLocaleNotRecognized)initWithJSON:(id)n;
- (NSData)jsonData;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (void)writeTo:(id)to;
@end

@implementation DIMSchemaDIMLocaleNotRecognized

- (DIMSchemaDIMLocaleNotRecognized)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v10.receiver = self;
  v10.super_class = DIMSchemaDIMLocaleNotRecognized;
  v5 = [(DIMSchemaDIMLocaleNotRecognized *)&v10 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"unknownLocale"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(DIMSchemaDIMLocaleNotRecognized *)v5 setUnknownLocale:v7];
    }

    v8 = v5;
  }

  return v5;
}

- (DIMSchemaDIMLocaleNotRecognized)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(DIMSchemaDIMLocaleNotRecognized *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(DIMSchemaDIMLocaleNotRecognized *)self dictionaryRepresentation];
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
  if (self->_unknownLocale)
  {
    unknownLocale = [(DIMSchemaDIMLocaleNotRecognized *)self unknownLocale];
    v5 = [unknownLocale copy];
    [dictionary setObject:v5 forKeyedSubscript:@"unknownLocale"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    unknownLocale = [(DIMSchemaDIMLocaleNotRecognized *)self unknownLocale];
    unknownLocale2 = [equalCopy unknownLocale];
    v7 = unknownLocale2;
    if ((unknownLocale != 0) != (unknownLocale2 == 0))
    {
      unknownLocale3 = [(DIMSchemaDIMLocaleNotRecognized *)self unknownLocale];
      if (!unknownLocale3)
      {

LABEL_10:
        v13 = 1;
        goto LABEL_8;
      }

      v9 = unknownLocale3;
      unknownLocale4 = [(DIMSchemaDIMLocaleNotRecognized *)self unknownLocale];
      unknownLocale5 = [equalCopy unknownLocale];
      v12 = [unknownLocale4 isEqual:unknownLocale5];

      if (v12)
      {
        goto LABEL_10;
      }
    }

    else
    {
    }
  }

  v13 = 0;
LABEL_8:

  return v13;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  unknownLocale = [(DIMSchemaDIMLocaleNotRecognized *)self unknownLocale];

  if (unknownLocale)
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