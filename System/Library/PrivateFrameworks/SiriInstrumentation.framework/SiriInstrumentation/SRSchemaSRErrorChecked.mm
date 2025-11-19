@interface SRSchemaSRErrorChecked
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (SRSchemaSRErrorChecked)initWithDictionary:(id)a3;
- (SRSchemaSRErrorChecked)initWithJSON:(id)a3;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (void)writeTo:(id)a3;
@end

@implementation SRSchemaSRErrorChecked

- (SRSchemaSRErrorChecked)initWithDictionary:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = SRSchemaSRErrorChecked;
  v5 = [(SRSchemaSRErrorChecked *)&v10 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"checkErrorResponse"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[SRSchemaSRCheckErrorResponse alloc] initWithDictionary:v6];
      [(SRSchemaSRErrorChecked *)v5 setCheckErrorResponse:v7];
    }

    v8 = v5;
  }

  return v5;
}

- (SRSchemaSRErrorChecked)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(SRSchemaSRErrorChecked *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(SRSchemaSRErrorChecked *)self dictionaryRepresentation];
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
  if (self->_checkErrorResponse)
  {
    v4 = [(SRSchemaSRErrorChecked *)self checkErrorResponse];
    v5 = [v4 dictionaryRepresentation];
    if (v5)
    {
      [v3 setObject:v5 forKeyedSubscript:@"checkErrorResponse"];
    }

    else
    {
      v6 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v6 forKeyedSubscript:@"checkErrorResponse"];
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
    v5 = [(SRSchemaSRErrorChecked *)self checkErrorResponse];
    v6 = [v4 checkErrorResponse];
    v7 = v6;
    if ((v5 != 0) != (v6 == 0))
    {
      v8 = [(SRSchemaSRErrorChecked *)self checkErrorResponse];
      if (!v8)
      {

LABEL_10:
        v13 = 1;
        goto LABEL_8;
      }

      v9 = v8;
      v10 = [(SRSchemaSRErrorChecked *)self checkErrorResponse];
      v11 = [v4 checkErrorResponse];
      v12 = [v10 isEqual:v11];

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

- (void)writeTo:(id)a3
{
  v6 = a3;
  v4 = [(SRSchemaSRErrorChecked *)self checkErrorResponse];

  if (v4)
  {
    v5 = [(SRSchemaSRErrorChecked *)self checkErrorResponse];
    PBDataWriterWriteSubmessage();
  }
}

- (id)applySensitiveConditionsPolicy:(id)a3
{
  v9.receiver = self;
  v9.super_class = SRSchemaSRErrorChecked;
  v4 = a3;
  v5 = [(SISchemaInstrumentationMessage *)&v9 applySensitiveConditionsPolicy:v4];
  v6 = [(SRSchemaSRErrorChecked *)self checkErrorResponse:v9.receiver];
  v7 = [v6 applySensitiveConditionsPolicy:v4];

  LODWORD(v4) = [v7 suppressMessage];
  if (v4)
  {
    [(SRSchemaSRErrorChecked *)self deleteCheckErrorResponse];
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