@interface CNVSchemaCNVIntentReformationEnded
- (BOOL)isEqual:(id)equal;
- (CNVSchemaCNVIntentReformationEnded)initWithDictionary:(id)dictionary;
- (CNVSchemaCNVIntentReformationEnded)initWithJSON:(id)n;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (void)writeTo:(id)to;
@end

@implementation CNVSchemaCNVIntentReformationEnded

- (CNVSchemaCNVIntentReformationEnded)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v10.receiver = self;
  v10.super_class = CNVSchemaCNVIntentReformationEnded;
  v5 = [(CNVSchemaCNVIntentReformationEnded *)&v10 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"reformedIntent"];
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

- (CNVSchemaCNVIntentReformationEnded)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(CNVSchemaCNVIntentReformationEnded *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(CNVSchemaCNVIntentReformationEnded *)self dictionaryRepresentation];
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
  if (self->_reformedIntent)
  {
    reformedIntent = [(CNVSchemaCNVIntentReformationEnded *)self reformedIntent];
    dictionaryRepresentation = [reformedIntent dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"reformedIntent"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"reformedIntent"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    reformedIntent = [(CNVSchemaCNVIntentReformationEnded *)self reformedIntent];
    reformedIntent2 = [equalCopy reformedIntent];
    v7 = reformedIntent2;
    if ((reformedIntent != 0) != (reformedIntent2 == 0))
    {
      reformedIntent3 = [(CNVSchemaCNVIntentReformationEnded *)self reformedIntent];
      if (!reformedIntent3)
      {

LABEL_10:
        v13 = 1;
        goto LABEL_8;
      }

      v9 = reformedIntent3;
      reformedIntent4 = [(CNVSchemaCNVIntentReformationEnded *)self reformedIntent];
      reformedIntent5 = [equalCopy reformedIntent];
      v12 = [reformedIntent4 isEqual:reformedIntent5];

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
  reformedIntent = [(CNVSchemaCNVIntentReformationEnded *)self reformedIntent];

  if (reformedIntent)
  {
    reformedIntent2 = [(CNVSchemaCNVIntentReformationEnded *)self reformedIntent];
    PBDataWriterWriteSubmessage();
  }
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  v9.receiver = self;
  v9.super_class = CNVSchemaCNVIntentReformationEnded;
  policyCopy = policy;
  v5 = [(SISchemaInstrumentationMessage *)&v9 applySensitiveConditionsPolicy:policyCopy];
  v6 = [(CNVSchemaCNVIntentReformationEnded *)self reformedIntent:v9.receiver];
  v7 = [v6 applySensitiveConditionsPolicy:policyCopy];

  LODWORD(policyCopy) = [v7 suppressMessage];
  if (policyCopy)
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