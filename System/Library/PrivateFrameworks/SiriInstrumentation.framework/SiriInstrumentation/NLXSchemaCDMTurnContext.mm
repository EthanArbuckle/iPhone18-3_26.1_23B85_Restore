@interface NLXSchemaCDMTurnContext
- (BOOL)isEqual:(id)equal;
- (NLXSchemaCDMNLContext)nlContext;
- (NLXSchemaCDMTurnContext)initWithDictionary:(id)dictionary;
- (NLXSchemaCDMTurnContext)initWithJSON:(id)n;
- (NLXSchemaNLXLegacyNLContext)legacyNlContext;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (void)deleteLegacyNlContext;
- (void)deleteNlContext;
- (void)setLegacyNlContext:(id)context;
- (void)setNlContext:(id)context;
- (void)writeTo:(id)to;
@end

@implementation NLXSchemaCDMTurnContext

- (NLXSchemaCDMTurnContext)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v12.receiver = self;
  v12.super_class = NLXSchemaCDMTurnContext;
  v5 = [(NLXSchemaCDMTurnContext *)&v12 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"nlContext"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[NLXSchemaCDMNLContext alloc] initWithDictionary:v6];
      [(NLXSchemaCDMTurnContext *)v5 setNlContext:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"legacyNlContext"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[NLXSchemaNLXLegacyNLContext alloc] initWithDictionary:v8];
      [(NLXSchemaCDMTurnContext *)v5 setLegacyNlContext:v9];
    }

    v10 = v5;
  }

  return v5;
}

- (NLXSchemaCDMTurnContext)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(NLXSchemaCDMTurnContext *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(NLXSchemaCDMTurnContext *)self dictionaryRepresentation];
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
  if (self->_legacyNlContext)
  {
    legacyNlContext = [(NLXSchemaCDMTurnContext *)self legacyNlContext];
    dictionaryRepresentation = [legacyNlContext dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"legacyNlContext"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"legacyNlContext"];
    }
  }

  if (self->_nlContext)
  {
    nlContext = [(NLXSchemaCDMTurnContext *)self nlContext];
    dictionaryRepresentation2 = [nlContext dictionaryRepresentation];
    if (dictionaryRepresentation2)
    {
      [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"nlContext"];
    }

    else
    {
      null2 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null2 forKeyedSubscript:@"nlContext"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_13;
  }

  whichTurncontexttype = self->_whichTurncontexttype;
  if (whichTurncontexttype != [equalCopy whichTurncontexttype])
  {
    goto LABEL_13;
  }

  nlContext = [(NLXSchemaCDMTurnContext *)self nlContext];
  nlContext2 = [equalCopy nlContext];
  if ((nlContext != 0) == (nlContext2 == 0))
  {
    goto LABEL_12;
  }

  nlContext3 = [(NLXSchemaCDMTurnContext *)self nlContext];
  if (nlContext3)
  {
    v9 = nlContext3;
    nlContext4 = [(NLXSchemaCDMTurnContext *)self nlContext];
    nlContext5 = [equalCopy nlContext];
    v12 = [nlContext4 isEqual:nlContext5];

    if (!v12)
    {
      goto LABEL_13;
    }
  }

  else
  {
  }

  nlContext = [(NLXSchemaCDMTurnContext *)self legacyNlContext];
  nlContext2 = [equalCopy legacyNlContext];
  if ((nlContext != 0) != (nlContext2 == 0))
  {
    legacyNlContext = [(NLXSchemaCDMTurnContext *)self legacyNlContext];
    if (!legacyNlContext)
    {

LABEL_16:
      v18 = 1;
      goto LABEL_14;
    }

    v14 = legacyNlContext;
    legacyNlContext2 = [(NLXSchemaCDMTurnContext *)self legacyNlContext];
    legacyNlContext3 = [equalCopy legacyNlContext];
    v17 = [legacyNlContext2 isEqual:legacyNlContext3];

    if (v17)
    {
      goto LABEL_16;
    }
  }

  else
  {
LABEL_12:
  }

LABEL_13:
  v18 = 0;
LABEL_14:

  return v18;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  nlContext = [(NLXSchemaCDMTurnContext *)self nlContext];

  if (nlContext)
  {
    nlContext2 = [(NLXSchemaCDMTurnContext *)self nlContext];
    PBDataWriterWriteSubmessage();
  }

  legacyNlContext = [(NLXSchemaCDMTurnContext *)self legacyNlContext];

  if (legacyNlContext)
  {
    legacyNlContext2 = [(NLXSchemaCDMTurnContext *)self legacyNlContext];
    PBDataWriterWriteSubmessage();
  }
}

- (void)deleteLegacyNlContext
{
  if (self->_whichTurncontexttype == 2)
  {
    self->_whichTurncontexttype = 0;
    self->_legacyNlContext = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (NLXSchemaNLXLegacyNLContext)legacyNlContext
{
  if (self->_whichTurncontexttype == 2)
  {
    v3 = self->_legacyNlContext;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setLegacyNlContext:(id)context
{
  contextCopy = context;
  nlContext = self->_nlContext;
  self->_nlContext = 0;

  self->_whichTurncontexttype = 2 * (contextCopy != 0);
  legacyNlContext = self->_legacyNlContext;
  self->_legacyNlContext = contextCopy;
}

- (void)deleteNlContext
{
  if (self->_whichTurncontexttype == 1)
  {
    self->_whichTurncontexttype = 0;
    self->_nlContext = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (NLXSchemaCDMNLContext)nlContext
{
  if (self->_whichTurncontexttype == 1)
  {
    v3 = self->_nlContext;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setNlContext:(id)context
{
  contextCopy = context;
  legacyNlContext = self->_legacyNlContext;
  self->_legacyNlContext = 0;

  self->_whichTurncontexttype = contextCopy != 0;
  nlContext = self->_nlContext;
  self->_nlContext = contextCopy;
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  policyCopy = policy;
  v13.receiver = self;
  v13.super_class = NLXSchemaCDMTurnContext;
  v5 = [(SISchemaInstrumentationMessage *)&v13 applySensitiveConditionsPolicy:policyCopy];
  nlContext = [(NLXSchemaCDMTurnContext *)self nlContext];
  v7 = [nlContext applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v7 suppressMessage];

  if (suppressMessage)
  {
    [(NLXSchemaCDMTurnContext *)self deleteNlContext];
  }

  legacyNlContext = [(NLXSchemaCDMTurnContext *)self legacyNlContext];
  v10 = [legacyNlContext applySensitiveConditionsPolicy:policyCopy];
  suppressMessage2 = [v10 suppressMessage];

  if (suppressMessage2)
  {
    [(NLXSchemaCDMTurnContext *)self deleteLegacyNlContext];
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