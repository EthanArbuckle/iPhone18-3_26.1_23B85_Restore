@interface DIMSchemaDIMLocaleNotRecognized
- (BOOL)isEqual:(id)a3;
- (DIMSchemaDIMLocaleNotRecognized)initWithDictionary:(id)a3;
- (DIMSchemaDIMLocaleNotRecognized)initWithJSON:(id)a3;
- (NSData)jsonData;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (void)writeTo:(id)a3;
@end

@implementation DIMSchemaDIMLocaleNotRecognized

- (DIMSchemaDIMLocaleNotRecognized)initWithDictionary:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = DIMSchemaDIMLocaleNotRecognized;
  v5 = [(DIMSchemaDIMLocaleNotRecognized *)&v10 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"unknownLocale"];
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

- (DIMSchemaDIMLocaleNotRecognized)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(DIMSchemaDIMLocaleNotRecognized *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(DIMSchemaDIMLocaleNotRecognized *)self dictionaryRepresentation];
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
  if (self->_unknownLocale)
  {
    v4 = [(DIMSchemaDIMLocaleNotRecognized *)self unknownLocale];
    v5 = [v4 copy];
    [v3 setObject:v5 forKeyedSubscript:@"unknownLocale"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()])
  {
    v5 = [(DIMSchemaDIMLocaleNotRecognized *)self unknownLocale];
    v6 = [v4 unknownLocale];
    v7 = v6;
    if ((v5 != 0) != (v6 == 0))
    {
      v8 = [(DIMSchemaDIMLocaleNotRecognized *)self unknownLocale];
      if (!v8)
      {

LABEL_10:
        v13 = 1;
        goto LABEL_8;
      }

      v9 = v8;
      v10 = [(DIMSchemaDIMLocaleNotRecognized *)self unknownLocale];
      v11 = [v4 unknownLocale];
      v12 = [v10 isEqual:v11];

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

- (void)writeTo:(id)a3
{
  v5 = a3;
  v4 = [(DIMSchemaDIMLocaleNotRecognized *)self unknownLocale];

  if (v4)
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