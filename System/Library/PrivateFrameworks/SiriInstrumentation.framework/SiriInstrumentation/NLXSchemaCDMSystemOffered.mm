@interface NLXSchemaCDMSystemOffered
- (BOOL)isEqual:(id)equal;
- (NLXSchemaCDMSystemOffered)initWithDictionary:(id)dictionary;
- (NLXSchemaCDMSystemOffered)initWithJSON:(id)n;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (void)writeTo:(id)to;
@end

@implementation NLXSchemaCDMSystemOffered

- (NLXSchemaCDMSystemOffered)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v10.receiver = self;
  v10.super_class = NLXSchemaCDMSystemOffered;
  v5 = [(NLXSchemaCDMSystemOffered *)&v10 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"offeredAct"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[NLXSchemaCDMUserDialogAct alloc] initWithDictionary:v6];
      [(NLXSchemaCDMSystemOffered *)v5 setOfferedAct:v7];
    }

    v8 = v5;
  }

  return v5;
}

- (NLXSchemaCDMSystemOffered)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(NLXSchemaCDMSystemOffered *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(NLXSchemaCDMSystemOffered *)self dictionaryRepresentation];
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
  if (self->_offeredAct)
  {
    offeredAct = [(NLXSchemaCDMSystemOffered *)self offeredAct];
    dictionaryRepresentation = [offeredAct dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"offeredAct"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"offeredAct"];
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
    offeredAct = [(NLXSchemaCDMSystemOffered *)self offeredAct];
    offeredAct2 = [equalCopy offeredAct];
    v7 = offeredAct2;
    if ((offeredAct != 0) != (offeredAct2 == 0))
    {
      offeredAct3 = [(NLXSchemaCDMSystemOffered *)self offeredAct];
      if (!offeredAct3)
      {

LABEL_10:
        v13 = 1;
        goto LABEL_8;
      }

      v9 = offeredAct3;
      offeredAct4 = [(NLXSchemaCDMSystemOffered *)self offeredAct];
      offeredAct5 = [equalCopy offeredAct];
      v12 = [offeredAct4 isEqual:offeredAct5];

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
  offeredAct = [(NLXSchemaCDMSystemOffered *)self offeredAct];

  if (offeredAct)
  {
    offeredAct2 = [(NLXSchemaCDMSystemOffered *)self offeredAct];
    PBDataWriterWriteSubmessage();
  }
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  v9.receiver = self;
  v9.super_class = NLXSchemaCDMSystemOffered;
  policyCopy = policy;
  v5 = [(SISchemaInstrumentationMessage *)&v9 applySensitiveConditionsPolicy:policyCopy];
  v6 = [(NLXSchemaCDMSystemOffered *)self offeredAct:v9.receiver];
  v7 = [v6 applySensitiveConditionsPolicy:policyCopy];

  LODWORD(policyCopy) = [v7 suppressMessage];
  if (policyCopy)
  {
    [(NLXSchemaCDMSystemOffered *)self deleteOfferedAct];
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