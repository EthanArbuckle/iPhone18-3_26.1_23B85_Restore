@interface CNVSchemaCNVIntentReformationEnded
- (BOOL)isEqual:(id)a3;
- (CNVSchemaCNVIntentReformationEnded)initWithDictionary:(id)a3;
- (CNVSchemaCNVIntentReformationEnded)initWithJSON:(id)a3;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (void)writeTo:(id)a3;
@end

@implementation CNVSchemaCNVIntentReformationEnded

- (CNVSchemaCNVIntentReformationEnded)initWithDictionary:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = CNVSchemaCNVIntentReformationEnded;
  v5 = [(CNVSchemaCNVIntentReformationEnded *)&v10 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"reformedIntent"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[USOSchemaUSOGraph alloc] initWithDictionary:v6];
      [(CNVSchemaCNVIntentReformationEnded *)v5 setReformedIntent:v7];
    }

    v8 = v5;
  }

  return v5;
}

- (CNVSchemaCNVIntentReformationEnded)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(CNVSchemaCNVIntentReformationEnded *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(CNVSchemaCNVIntentReformationEnded *)self dictionaryRepresentation];
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
  if (self->_reformedIntent)
  {
    v4 = [(CNVSchemaCNVIntentReformationEnded *)self reformedIntent];
    v5 = [v4 dictionaryRepresentation];
    if (v5)
    {
      [v3 setObject:v5 forKeyedSubscript:@"reformedIntent"];
    }

    else
    {
      v6 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v6 forKeyedSubscript:@"reformedIntent"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()])
  {
    v5 = [(CNVSchemaCNVIntentReformationEnded *)self reformedIntent];
    v6 = [v4 reformedIntent];
    v7 = v6;
    if ((v5 != 0) != (v6 == 0))
    {
      v8 = [(CNVSchemaCNVIntentReformationEnded *)self reformedIntent];
      if (!v8)
      {

LABEL_10:
        v13 = 1;
        goto LABEL_8;
      }

      v9 = v8;
      v10 = [(CNVSchemaCNVIntentReformationEnded *)self reformedIntent];
      v11 = [v4 reformedIntent];
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
  v6 = a3;
  v4 = [(CNVSchemaCNVIntentReformationEnded *)self reformedIntent];

  if (v4)
  {
    v5 = [(CNVSchemaCNVIntentReformationEnded *)self reformedIntent];
    PBDataWriterWriteSubmessage();
  }
}

- (id)applySensitiveConditionsPolicy:(id)a3
{
  v9.receiver = self;
  v9.super_class = CNVSchemaCNVIntentReformationEnded;
  v4 = a3;
  v5 = [(SISchemaInstrumentationMessage *)&v9 applySensitiveConditionsPolicy:v4];
  v6 = [(CNVSchemaCNVIntentReformationEnded *)self reformedIntent:v9.receiver];
  v7 = [v6 applySensitiveConditionsPolicy:v4];

  LODWORD(v4) = [v7 suppressMessage];
  if (v4)
  {
    [(CNVSchemaCNVIntentReformationEnded *)self deleteReformedIntent];
  }

  return v5;
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end