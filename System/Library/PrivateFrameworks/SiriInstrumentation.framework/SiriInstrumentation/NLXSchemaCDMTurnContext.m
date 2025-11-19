@interface NLXSchemaCDMTurnContext
- (BOOL)isEqual:(id)a3;
- (NLXSchemaCDMNLContext)nlContext;
- (NLXSchemaCDMTurnContext)initWithDictionary:(id)a3;
- (NLXSchemaCDMTurnContext)initWithJSON:(id)a3;
- (NLXSchemaNLXLegacyNLContext)legacyNlContext;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (void)deleteLegacyNlContext;
- (void)deleteNlContext;
- (void)setLegacyNlContext:(id)a3;
- (void)setNlContext:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation NLXSchemaCDMTurnContext

- (NLXSchemaCDMTurnContext)initWithDictionary:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = NLXSchemaCDMTurnContext;
  v5 = [(NLXSchemaCDMTurnContext *)&v12 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"nlContext"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[NLXSchemaCDMNLContext alloc] initWithDictionary:v6];
      [(NLXSchemaCDMTurnContext *)v5 setNlContext:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"legacyNlContext"];
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

- (NLXSchemaCDMTurnContext)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(NLXSchemaCDMTurnContext *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(NLXSchemaCDMTurnContext *)self dictionaryRepresentation];
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
  if (self->_legacyNlContext)
  {
    v4 = [(NLXSchemaCDMTurnContext *)self legacyNlContext];
    v5 = [v4 dictionaryRepresentation];
    if (v5)
    {
      [v3 setObject:v5 forKeyedSubscript:@"legacyNlContext"];
    }

    else
    {
      v6 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v6 forKeyedSubscript:@"legacyNlContext"];
    }
  }

  if (self->_nlContext)
  {
    v7 = [(NLXSchemaCDMTurnContext *)self nlContext];
    v8 = [v7 dictionaryRepresentation];
    if (v8)
    {
      [v3 setObject:v8 forKeyedSubscript:@"nlContext"];
    }

    else
    {
      v9 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v9 forKeyedSubscript:@"nlContext"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_13;
  }

  whichTurncontexttype = self->_whichTurncontexttype;
  if (whichTurncontexttype != [v4 whichTurncontexttype])
  {
    goto LABEL_13;
  }

  v6 = [(NLXSchemaCDMTurnContext *)self nlContext];
  v7 = [v4 nlContext];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_12;
  }

  v8 = [(NLXSchemaCDMTurnContext *)self nlContext];
  if (v8)
  {
    v9 = v8;
    v10 = [(NLXSchemaCDMTurnContext *)self nlContext];
    v11 = [v4 nlContext];
    v12 = [v10 isEqual:v11];

    if (!v12)
    {
      goto LABEL_13;
    }
  }

  else
  {
  }

  v6 = [(NLXSchemaCDMTurnContext *)self legacyNlContext];
  v7 = [v4 legacyNlContext];
  if ((v6 != 0) != (v7 == 0))
  {
    v13 = [(NLXSchemaCDMTurnContext *)self legacyNlContext];
    if (!v13)
    {

LABEL_16:
      v18 = 1;
      goto LABEL_14;
    }

    v14 = v13;
    v15 = [(NLXSchemaCDMTurnContext *)self legacyNlContext];
    v16 = [v4 legacyNlContext];
    v17 = [v15 isEqual:v16];

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

- (void)writeTo:(id)a3
{
  v8 = a3;
  v4 = [(NLXSchemaCDMTurnContext *)self nlContext];

  if (v4)
  {
    v5 = [(NLXSchemaCDMTurnContext *)self nlContext];
    PBDataWriterWriteSubmessage();
  }

  v6 = [(NLXSchemaCDMTurnContext *)self legacyNlContext];

  if (v6)
  {
    v7 = [(NLXSchemaCDMTurnContext *)self legacyNlContext];
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

- (void)setLegacyNlContext:(id)a3
{
  v4 = a3;
  nlContext = self->_nlContext;
  self->_nlContext = 0;

  self->_whichTurncontexttype = 2 * (v4 != 0);
  legacyNlContext = self->_legacyNlContext;
  self->_legacyNlContext = v4;
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

- (void)setNlContext:(id)a3
{
  v4 = a3;
  legacyNlContext = self->_legacyNlContext;
  self->_legacyNlContext = 0;

  self->_whichTurncontexttype = v4 != 0;
  nlContext = self->_nlContext;
  self->_nlContext = v4;
}

- (id)applySensitiveConditionsPolicy:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = NLXSchemaCDMTurnContext;
  v5 = [(SISchemaInstrumentationMessage *)&v13 applySensitiveConditionsPolicy:v4];
  v6 = [(NLXSchemaCDMTurnContext *)self nlContext];
  v7 = [v6 applySensitiveConditionsPolicy:v4];
  v8 = [v7 suppressMessage];

  if (v8)
  {
    [(NLXSchemaCDMTurnContext *)self deleteNlContext];
  }

  v9 = [(NLXSchemaCDMTurnContext *)self legacyNlContext];
  v10 = [v9 applySensitiveConditionsPolicy:v4];
  v11 = [v10 suppressMessage];

  if (v11)
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