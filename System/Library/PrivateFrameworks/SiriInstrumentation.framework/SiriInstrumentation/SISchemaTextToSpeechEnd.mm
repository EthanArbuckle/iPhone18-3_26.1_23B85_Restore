@interface SISchemaTextToSpeechEnd
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (SISchemaTextToSpeechEnd)initWithDictionary:(id)a3;
- (SISchemaTextToSpeechEnd)initWithJSON:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (void)writeTo:(id)a3;
@end

@implementation SISchemaTextToSpeechEnd

- (SISchemaTextToSpeechEnd)initWithDictionary:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = SISchemaTextToSpeechEnd;
  v5 = [(SISchemaTextToSpeechEnd *)&v10 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"aceID"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(SISchemaTextToSpeechEnd *)v5 setAceID:v7];
    }

    v8 = v5;
  }

  return v5;
}

- (SISchemaTextToSpeechEnd)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(SISchemaTextToSpeechEnd *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(SISchemaTextToSpeechEnd *)self dictionaryRepresentation];
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
  if (self->_aceID)
  {
    v4 = [(SISchemaTextToSpeechEnd *)self aceID];
    v5 = [v4 copy];
    [v3 setObject:v5 forKeyedSubscript:@"aceID"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()])
  {
    v5 = [(SISchemaTextToSpeechEnd *)self aceID];
    v6 = [v4 aceID];
    v7 = v6;
    if ((v5 != 0) != (v6 == 0))
    {
      v8 = [(SISchemaTextToSpeechEnd *)self aceID];
      if (!v8)
      {

LABEL_10:
        v13 = 1;
        goto LABEL_8;
      }

      v9 = v8;
      v10 = [(SISchemaTextToSpeechEnd *)self aceID];
      v11 = [v4 aceID];
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
  v4 = [(SISchemaTextToSpeechEnd *)self aceID];

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