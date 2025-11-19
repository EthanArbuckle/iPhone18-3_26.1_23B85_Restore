@interface FLOWSchemaFLOWPlatformContext
- (BOOL)isEqual:(id)a3;
- (FLOWSchemaFLOWEntityContext)entityContext;
- (FLOWSchemaFLOWPlatformContext)initWithDictionary:(id)a3;
- (FLOWSchemaFLOWPlatformContext)initWithJSON:(id)a3;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (void)deleteEntityContext;
- (void)writeTo:(id)a3;
@end

@implementation FLOWSchemaFLOWPlatformContext

- (FLOWSchemaFLOWPlatformContext)initWithDictionary:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = FLOWSchemaFLOWPlatformContext;
  v5 = [(FLOWSchemaFLOWPlatformContext *)&v12 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"entityContext"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[FLOWSchemaFLOWEntityContext alloc] initWithDictionary:v6];
      [(FLOWSchemaFLOWPlatformContext *)v5 setEntityContext:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"entityContextValue"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[FLOWSchemaFLOWEntityContext alloc] initWithDictionary:v8];
      [(FLOWSchemaFLOWPlatformContext *)v5 setEntityContextValue:v9];
    }

    v10 = v5;
  }

  return v5;
}

- (FLOWSchemaFLOWPlatformContext)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(FLOWSchemaFLOWPlatformContext *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(FLOWSchemaFLOWPlatformContext *)self dictionaryRepresentation];
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
  if (self->_entityContext)
  {
    v4 = [(FLOWSchemaFLOWPlatformContext *)self entityContext];
    v5 = [v4 dictionaryRepresentation];
    if (v5)
    {
      [v3 setObject:v5 forKeyedSubscript:@"entityContext"];
    }

    else
    {
      v6 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v6 forKeyedSubscript:@"entityContext"];
    }
  }

  if (self->_entityContextValue)
  {
    v7 = [(FLOWSchemaFLOWPlatformContext *)self entityContextValue];
    v8 = [v7 dictionaryRepresentation];
    if (v8)
    {
      [v3 setObject:v8 forKeyedSubscript:@"entityContextValue"];
    }

    else
    {
      v9 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v9 forKeyedSubscript:@"entityContextValue"];
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

  whichPlatformcontext = self->_whichPlatformcontext;
  if (whichPlatformcontext != [v4 whichPlatformcontext])
  {
    goto LABEL_13;
  }

  v6 = [(FLOWSchemaFLOWPlatformContext *)self entityContext];
  v7 = [v4 entityContext];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_12;
  }

  v8 = [(FLOWSchemaFLOWPlatformContext *)self entityContext];
  if (v8)
  {
    v9 = v8;
    v10 = [(FLOWSchemaFLOWPlatformContext *)self entityContext];
    v11 = [v4 entityContext];
    v12 = [v10 isEqual:v11];

    if (!v12)
    {
      goto LABEL_13;
    }
  }

  else
  {
  }

  v6 = [(FLOWSchemaFLOWPlatformContext *)self entityContextValue];
  v7 = [v4 entityContextValue];
  if ((v6 != 0) != (v7 == 0))
  {
    v13 = [(FLOWSchemaFLOWPlatformContext *)self entityContextValue];
    if (!v13)
    {

LABEL_16:
      v18 = 1;
      goto LABEL_14;
    }

    v14 = v13;
    v15 = [(FLOWSchemaFLOWPlatformContext *)self entityContextValue];
    v16 = [v4 entityContextValue];
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
  v4 = [(FLOWSchemaFLOWPlatformContext *)self entityContext];

  if (v4)
  {
    v5 = [(FLOWSchemaFLOWPlatformContext *)self entityContext];
    PBDataWriterWriteSubmessage();
  }

  v6 = [(FLOWSchemaFLOWPlatformContext *)self entityContextValue];

  if (v6)
  {
    v7 = [(FLOWSchemaFLOWPlatformContext *)self entityContextValue];
    PBDataWriterWriteSubmessage();
  }
}

- (void)deleteEntityContext
{
  if (self->_whichPlatformcontext == 1)
  {
    self->_whichPlatformcontext = 0;
    self->_entityContext = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (FLOWSchemaFLOWEntityContext)entityContext
{
  if (self->_whichPlatformcontext == 1)
  {
    v3 = self->_entityContext;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)applySensitiveConditionsPolicy:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = FLOWSchemaFLOWPlatformContext;
  v5 = [(SISchemaInstrumentationMessage *)&v13 applySensitiveConditionsPolicy:v4];
  v6 = [(FLOWSchemaFLOWPlatformContext *)self entityContext];
  v7 = [v6 applySensitiveConditionsPolicy:v4];
  v8 = [v7 suppressMessage];

  if (v8)
  {
    [(FLOWSchemaFLOWPlatformContext *)self deleteEntityContext];
  }

  v9 = [(FLOWSchemaFLOWPlatformContext *)self entityContextValue];
  v10 = [v9 applySensitiveConditionsPolicy:v4];
  v11 = [v10 suppressMessage];

  if (v11)
  {
    [(FLOWSchemaFLOWPlatformContext *)self deleteEntityContextValue];
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