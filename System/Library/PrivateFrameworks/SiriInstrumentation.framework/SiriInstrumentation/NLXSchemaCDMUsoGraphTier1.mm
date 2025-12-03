@interface NLXSchemaCDMUsoGraphTier1
- (BOOL)isEqual:(id)equal;
- (NLXSchemaCDMUsoGraphTier1)initWithDictionary:(id)dictionary;
- (NLXSchemaCDMUsoGraphTier1)initWithJSON:(id)n;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (void)writeTo:(id)to;
@end

@implementation NLXSchemaCDMUsoGraphTier1

- (NLXSchemaCDMUsoGraphTier1)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v10.receiver = self;
  v10.super_class = NLXSchemaCDMUsoGraphTier1;
  v5 = [(NLXSchemaCDMUsoGraphTier1 *)&v10 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"usoGraphTier1"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[USOSchemaUSOGraphTier1 alloc] initWithDictionary:v6];
      [(NLXSchemaCDMUsoGraphTier1 *)v5 setUsoGraphTier1:v7];
    }

    v8 = v5;
  }

  return v5;
}

- (NLXSchemaCDMUsoGraphTier1)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(NLXSchemaCDMUsoGraphTier1 *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(NLXSchemaCDMUsoGraphTier1 *)self dictionaryRepresentation];
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
  if (self->_usoGraphTier1)
  {
    usoGraphTier1 = [(NLXSchemaCDMUsoGraphTier1 *)self usoGraphTier1];
    dictionaryRepresentation = [usoGraphTier1 dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"usoGraphTier1"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"usoGraphTier1"];
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
    usoGraphTier1 = [(NLXSchemaCDMUsoGraphTier1 *)self usoGraphTier1];
    usoGraphTier12 = [equalCopy usoGraphTier1];
    v7 = usoGraphTier12;
    if ((usoGraphTier1 != 0) != (usoGraphTier12 == 0))
    {
      usoGraphTier13 = [(NLXSchemaCDMUsoGraphTier1 *)self usoGraphTier1];
      if (!usoGraphTier13)
      {

LABEL_10:
        v13 = 1;
        goto LABEL_8;
      }

      v9 = usoGraphTier13;
      usoGraphTier14 = [(NLXSchemaCDMUsoGraphTier1 *)self usoGraphTier1];
      usoGraphTier15 = [equalCopy usoGraphTier1];
      v12 = [usoGraphTier14 isEqual:usoGraphTier15];

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
  usoGraphTier1 = [(NLXSchemaCDMUsoGraphTier1 *)self usoGraphTier1];

  if (usoGraphTier1)
  {
    usoGraphTier12 = [(NLXSchemaCDMUsoGraphTier1 *)self usoGraphTier1];
    PBDataWriterWriteSubmessage();
  }
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  v9.receiver = self;
  v9.super_class = NLXSchemaCDMUsoGraphTier1;
  policyCopy = policy;
  v5 = [(SISchemaInstrumentationMessage *)&v9 applySensitiveConditionsPolicy:policyCopy];
  v6 = [(NLXSchemaCDMUsoGraphTier1 *)self usoGraphTier1:v9.receiver];
  v7 = [v6 applySensitiveConditionsPolicy:policyCopy];

  LODWORD(policyCopy) = [v7 suppressMessage];
  if (policyCopy)
  {
    [(NLXSchemaCDMUsoGraphTier1 *)self deleteUsoGraphTier1];
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