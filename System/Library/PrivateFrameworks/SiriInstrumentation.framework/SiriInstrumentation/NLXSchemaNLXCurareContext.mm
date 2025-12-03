@interface NLXSchemaNLXCurareContext
- (BOOL)isEqual:(id)equal;
- (NLXSchemaNLXCurareContext)initWithDictionary:(id)dictionary;
- (NLXSchemaNLXCurareContext)initWithJSON:(id)n;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (void)writeTo:(id)to;
@end

@implementation NLXSchemaNLXCurareContext

- (NLXSchemaNLXCurareContext)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v10.receiver = self;
  v10.super_class = NLXSchemaNLXCurareContext;
  v5 = [(NLXSchemaNLXCurareContext *)&v10 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"curareId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[SISchemaUUID alloc] initWithDictionary:v6];
      [(NLXSchemaNLXCurareContext *)v5 setCurareId:v7];
    }

    v8 = v5;
  }

  return v5;
}

- (NLXSchemaNLXCurareContext)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(NLXSchemaNLXCurareContext *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(NLXSchemaNLXCurareContext *)self dictionaryRepresentation];
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
  if (self->_curareId)
  {
    curareId = [(NLXSchemaNLXCurareContext *)self curareId];
    dictionaryRepresentation = [curareId dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"curareId"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"curareId"];
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
    curareId = [(NLXSchemaNLXCurareContext *)self curareId];
    curareId2 = [equalCopy curareId];
    v7 = curareId2;
    if ((curareId != 0) != (curareId2 == 0))
    {
      curareId3 = [(NLXSchemaNLXCurareContext *)self curareId];
      if (!curareId3)
      {

LABEL_10:
        v13 = 1;
        goto LABEL_8;
      }

      v9 = curareId3;
      curareId4 = [(NLXSchemaNLXCurareContext *)self curareId];
      curareId5 = [equalCopy curareId];
      v12 = [curareId4 isEqual:curareId5];

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
  curareId = [(NLXSchemaNLXCurareContext *)self curareId];

  if (curareId)
  {
    curareId2 = [(NLXSchemaNLXCurareContext *)self curareId];
    PBDataWriterWriteSubmessage();
  }
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  v9.receiver = self;
  v9.super_class = NLXSchemaNLXCurareContext;
  policyCopy = policy;
  v5 = [(SISchemaInstrumentationMessage *)&v9 applySensitiveConditionsPolicy:policyCopy];
  v6 = [(NLXSchemaNLXCurareContext *)self curareId:v9.receiver];
  v7 = [v6 applySensitiveConditionsPolicy:policyCopy];

  LODWORD(policyCopy) = [v7 suppressMessage];
  if (policyCopy)
  {
    [(NLXSchemaNLXCurareContext *)self deleteCurareId];
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