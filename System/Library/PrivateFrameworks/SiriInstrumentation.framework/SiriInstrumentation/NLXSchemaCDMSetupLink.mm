@interface NLXSchemaCDMSetupLink
- (BOOL)isEqual:(id)equal;
- (NLXSchemaCDMSetupLink)initWithDictionary:(id)dictionary;
- (NLXSchemaCDMSetupLink)initWithJSON:(id)n;
- (NLXSchemaCDMSiriClientSetupLink)siriClientSetupLink;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (void)deleteSiriClientSetupLink;
- (void)writeTo:(id)to;
@end

@implementation NLXSchemaCDMSetupLink

- (NLXSchemaCDMSetupLink)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v10.receiver = self;
  v10.super_class = NLXSchemaCDMSetupLink;
  v5 = [(NLXSchemaCDMSetupLink *)&v10 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"siriClientSetupLink"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[NLXSchemaCDMSiriClientSetupLink alloc] initWithDictionary:v6];
      [(NLXSchemaCDMSetupLink *)v5 setSiriClientSetupLink:v7];
    }

    v8 = v5;
  }

  return v5;
}

- (NLXSchemaCDMSetupLink)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(NLXSchemaCDMSetupLink *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(NLXSchemaCDMSetupLink *)self dictionaryRepresentation];
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
  if (self->_siriClientSetupLink)
  {
    siriClientSetupLink = [(NLXSchemaCDMSetupLink *)self siriClientSetupLink];
    dictionaryRepresentation = [siriClientSetupLink dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"siriClientSetupLink"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"siriClientSetupLink"];
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
    whichNlxclients = self->_whichNlxclients;
    if (whichNlxclients == [equalCopy whichNlxclients])
    {
      siriClientSetupLink = [(NLXSchemaCDMSetupLink *)self siriClientSetupLink];
      siriClientSetupLink2 = [equalCopy siriClientSetupLink];
      v8 = siriClientSetupLink2;
      if ((siriClientSetupLink != 0) != (siriClientSetupLink2 == 0))
      {
        siriClientSetupLink3 = [(NLXSchemaCDMSetupLink *)self siriClientSetupLink];
        if (!siriClientSetupLink3)
        {

LABEL_11:
          v14 = 1;
          goto LABEL_9;
        }

        v10 = siriClientSetupLink3;
        siriClientSetupLink4 = [(NLXSchemaCDMSetupLink *)self siriClientSetupLink];
        siriClientSetupLink5 = [equalCopy siriClientSetupLink];
        v13 = [siriClientSetupLink4 isEqual:siriClientSetupLink5];

        if (v13)
        {
          goto LABEL_11;
        }
      }

      else
      {
      }
    }
  }

  v14 = 0;
LABEL_9:

  return v14;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  siriClientSetupLink = [(NLXSchemaCDMSetupLink *)self siriClientSetupLink];

  if (siriClientSetupLink)
  {
    siriClientSetupLink2 = [(NLXSchemaCDMSetupLink *)self siriClientSetupLink];
    PBDataWriterWriteSubmessage();
  }
}

- (void)deleteSiriClientSetupLink
{
  if (self->_whichNlxclients == 1)
  {
    self->_whichNlxclients = 0;
    self->_siriClientSetupLink = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (NLXSchemaCDMSiriClientSetupLink)siriClientSetupLink
{
  if (self->_whichNlxclients == 1)
  {
    v3 = self->_siriClientSetupLink;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  v9.receiver = self;
  v9.super_class = NLXSchemaCDMSetupLink;
  policyCopy = policy;
  v5 = [(SISchemaInstrumentationMessage *)&v9 applySensitiveConditionsPolicy:policyCopy];
  v6 = [(NLXSchemaCDMSetupLink *)self siriClientSetupLink:v9.receiver];
  v7 = [v6 applySensitiveConditionsPolicy:policyCopy];

  LODWORD(policyCopy) = [v7 suppressMessage];
  if (policyCopy)
  {
    [(NLXSchemaCDMSetupLink *)self deleteSiriClientSetupLink];
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