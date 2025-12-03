@interface PLUSSchemaPLUSUSOGraphTier1
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (PLUSSchemaPLUSUSOGraphTier1)initWithDictionary:(id)dictionary;
- (PLUSSchemaPLUSUSOGraphTier1)initWithJSON:(id)n;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (void)writeTo:(id)to;
@end

@implementation PLUSSchemaPLUSUSOGraphTier1

- (PLUSSchemaPLUSUSOGraphTier1)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v10.receiver = self;
  v10.super_class = PLUSSchemaPLUSUSOGraphTier1;
  v5 = [(PLUSSchemaPLUSUSOGraphTier1 *)&v10 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"usoGraphTier1"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[USOSchemaUSOGraphTier1 alloc] initWithDictionary:v6];
      [(PLUSSchemaPLUSUSOGraphTier1 *)v5 setUsoGraphTier1:v7];
    }

    v8 = v5;
  }

  return v5;
}

- (PLUSSchemaPLUSUSOGraphTier1)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(PLUSSchemaPLUSUSOGraphTier1 *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(PLUSSchemaPLUSUSOGraphTier1 *)self dictionaryRepresentation];
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
    usoGraphTier1 = [(PLUSSchemaPLUSUSOGraphTier1 *)self usoGraphTier1];
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
    usoGraphTier1 = [(PLUSSchemaPLUSUSOGraphTier1 *)self usoGraphTier1];
    usoGraphTier12 = [equalCopy usoGraphTier1];
    v7 = usoGraphTier12;
    if ((usoGraphTier1 != 0) != (usoGraphTier12 == 0))
    {
      usoGraphTier13 = [(PLUSSchemaPLUSUSOGraphTier1 *)self usoGraphTier1];
      if (!usoGraphTier13)
      {

LABEL_10:
        v13 = 1;
        goto LABEL_8;
      }

      v9 = usoGraphTier13;
      usoGraphTier14 = [(PLUSSchemaPLUSUSOGraphTier1 *)self usoGraphTier1];
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
  usoGraphTier1 = [(PLUSSchemaPLUSUSOGraphTier1 *)self usoGraphTier1];

  if (usoGraphTier1)
  {
    usoGraphTier12 = [(PLUSSchemaPLUSUSOGraphTier1 *)self usoGraphTier1];
    PBDataWriterWriteSubmessage();
  }
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  policyCopy = policy;
  v10.receiver = self;
  v10.super_class = PLUSSchemaPLUSUSOGraphTier1;
  v5 = [(SISchemaInstrumentationMessage *)&v10 applySensitiveConditionsPolicy:policyCopy];
  if ([policyCopy isConditionSet:2])
  {
    [(PLUSSchemaPLUSUSOGraphTier1 *)self deleteUsoGraphTier1];
  }

  if ([policyCopy isConditionSet:4])
  {
    [(PLUSSchemaPLUSUSOGraphTier1 *)self deleteUsoGraphTier1];
  }

  if ([policyCopy isConditionSet:5])
  {
    [(PLUSSchemaPLUSUSOGraphTier1 *)self deleteUsoGraphTier1];
  }

  if ([policyCopy isConditionSet:6])
  {
    [(PLUSSchemaPLUSUSOGraphTier1 *)self deleteUsoGraphTier1];
  }

  if ([policyCopy isConditionSet:7])
  {
    [(PLUSSchemaPLUSUSOGraphTier1 *)self deleteUsoGraphTier1];
  }

  usoGraphTier1 = [(PLUSSchemaPLUSUSOGraphTier1 *)self usoGraphTier1];
  v7 = [usoGraphTier1 applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v7 suppressMessage];

  if (suppressMessage)
  {
    [(PLUSSchemaPLUSUSOGraphTier1 *)self deleteUsoGraphTier1];
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