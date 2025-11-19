@interface IDENTITYSchemaIDENTITYIdentityRequestContext
- (BOOL)isEqual:(id)a3;
- (IDENTITYSchemaIDENTITYIdentityRequestContext)initWithDictionary:(id)a3;
- (IDENTITYSchemaIDENTITYIdentityRequestContext)initWithJSON:(id)a3;
- (IDENTITYSchemaIDENTITYIdentityRequestFailed)failed;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (void)deleteFailed;
- (void)setFailed:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation IDENTITYSchemaIDENTITYIdentityRequestContext

- (IDENTITYSchemaIDENTITYIdentityRequestContext)initWithDictionary:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = IDENTITYSchemaIDENTITYIdentityRequestContext;
  v5 = [(IDENTITYSchemaIDENTITYIdentityRequestContext *)&v10 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"failed"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[IDENTITYSchemaIDENTITYIdentityRequestFailed alloc] initWithDictionary:v6];
      [(IDENTITYSchemaIDENTITYIdentityRequestContext *)v5 setFailed:v7];
    }

    v8 = v5;
  }

  return v5;
}

- (IDENTITYSchemaIDENTITYIdentityRequestContext)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(IDENTITYSchemaIDENTITYIdentityRequestContext *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(IDENTITYSchemaIDENTITYIdentityRequestContext *)self dictionaryRepresentation];
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
  if (self->_failed)
  {
    v4 = [(IDENTITYSchemaIDENTITYIdentityRequestContext *)self failed];
    v5 = [v4 dictionaryRepresentation];
    if (v5)
    {
      [v3 setObject:v5 forKeyedSubscript:@"failed"];
    }

    else
    {
      v6 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v6 forKeyedSubscript:@"failed"];
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
    whichContextevent = self->_whichContextevent;
    if (whichContextevent == [v4 whichContextevent])
    {
      v6 = [(IDENTITYSchemaIDENTITYIdentityRequestContext *)self failed];
      v7 = [v4 failed];
      v8 = v7;
      if ((v6 != 0) != (v7 == 0))
      {
        v9 = [(IDENTITYSchemaIDENTITYIdentityRequestContext *)self failed];
        if (!v9)
        {

LABEL_11:
          v14 = 1;
          goto LABEL_9;
        }

        v10 = v9;
        v11 = [(IDENTITYSchemaIDENTITYIdentityRequestContext *)self failed];
        v12 = [v4 failed];
        v13 = [v11 isEqual:v12];

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

- (void)writeTo:(id)a3
{
  v6 = a3;
  v4 = [(IDENTITYSchemaIDENTITYIdentityRequestContext *)self failed];

  if (v4)
  {
    v5 = [(IDENTITYSchemaIDENTITYIdentityRequestContext *)self failed];
    PBDataWriterWriteSubmessage();
  }
}

- (void)deleteFailed
{
  if (self->_whichContextevent == 103)
  {
    self->_whichContextevent = 0;
    self->_failed = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (IDENTITYSchemaIDENTITYIdentityRequestFailed)failed
{
  if (self->_whichContextevent == 103)
  {
    v3 = self->_failed;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setFailed:(id)a3
{
  v3 = 103;
  if (!a3)
  {
    v3 = 0;
  }

  self->_whichContextevent = v3;
  objc_storeStrong(&self->_failed, a3);
}

- (id)applySensitiveConditionsPolicy:(id)a3
{
  v9.receiver = self;
  v9.super_class = IDENTITYSchemaIDENTITYIdentityRequestContext;
  v4 = a3;
  v5 = [(SISchemaInstrumentationMessage *)&v9 applySensitiveConditionsPolicy:v4];
  v6 = [(IDENTITYSchemaIDENTITYIdentityRequestContext *)self failed:v9.receiver];
  v7 = [v6 applySensitiveConditionsPolicy:v4];

  LODWORD(v4) = [v7 suppressMessage];
  if (v4)
  {
    [(IDENTITYSchemaIDENTITYIdentityRequestContext *)self deleteFailed];
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