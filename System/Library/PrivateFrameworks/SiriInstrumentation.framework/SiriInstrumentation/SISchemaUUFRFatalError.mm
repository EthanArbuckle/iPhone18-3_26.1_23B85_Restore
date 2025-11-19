@interface SISchemaUUFRFatalError
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (SISchemaUUFRFatalError)initWithDictionary:(id)a3;
- (SISchemaUUFRFatalError)initWithJSON:(id)a3;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)writeTo:(id)a3;
@end

@implementation SISchemaUUFRFatalError

- (SISchemaUUFRFatalError)initWithDictionary:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = SISchemaUUFRFatalError;
  v5 = [(SISchemaUUFRFatalError *)&v13 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"errorDomain"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(SISchemaUUFRFatalError *)v5 setErrorDomain:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"errorCode"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[SISchemaUUFRFatalError setErrorCode:](v5, "setErrorCode:", [v8 intValue]);
    }

    v9 = [v4 objectForKeyedSubscript:@"siriResponseContext"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = [[SISchemaSiriResponseContext alloc] initWithDictionary:v9];
      [(SISchemaUUFRFatalError *)v5 setSiriResponseContext:v10];
    }

    v11 = v5;
  }

  return v5;
}

- (SISchemaUUFRFatalError)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(SISchemaUUFRFatalError *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(SISchemaUUFRFatalError *)self dictionaryRepresentation];
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
  if (*&self->_has)
  {
    v4 = [MEMORY[0x1E696AD98] numberWithInt:{-[SISchemaUUFRFatalError errorCode](self, "errorCode")}];
    [v3 setObject:v4 forKeyedSubscript:@"errorCode"];
  }

  if (self->_errorDomain)
  {
    v5 = [(SISchemaUUFRFatalError *)self errorDomain];
    v6 = [v5 copy];
    [v3 setObject:v6 forKeyedSubscript:@"errorDomain"];
  }

  if (self->_siriResponseContext)
  {
    v7 = [(SISchemaUUFRFatalError *)self siriResponseContext];
    v8 = [v7 dictionaryRepresentation];
    if (v8)
    {
      [v3 setObject:v8 forKeyedSubscript:@"siriResponseContext"];
    }

    else
    {
      v9 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v9 forKeyedSubscript:@"siriResponseContext"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_errorDomain hash];
  if (*&self->_has)
  {
    v4 = 2654435761 * self->_errorCode;
  }

  else
  {
    v4 = 0;
  }

  return v4 ^ v3 ^ [(SISchemaSiriResponseContext *)self->_siriResponseContext hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_15;
  }

  v5 = [(SISchemaUUFRFatalError *)self errorDomain];
  v6 = [v4 errorDomain];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_14;
  }

  v7 = [(SISchemaUUFRFatalError *)self errorDomain];
  if (v7)
  {
    v8 = v7;
    v9 = [(SISchemaUUFRFatalError *)self errorDomain];
    v10 = [v4 errorDomain];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_15;
    }
  }

  else
  {
  }

  if ((*&self->_has & 1) != (v4[32] & 1))
  {
    goto LABEL_15;
  }

  if (*&self->_has)
  {
    errorCode = self->_errorCode;
    if (errorCode != [v4 errorCode])
    {
      goto LABEL_15;
    }
  }

  v5 = [(SISchemaUUFRFatalError *)self siriResponseContext];
  v6 = [v4 siriResponseContext];
  if ((v5 != 0) != (v6 == 0))
  {
    v13 = [(SISchemaUUFRFatalError *)self siriResponseContext];
    if (!v13)
    {

LABEL_18:
      v18 = 1;
      goto LABEL_16;
    }

    v14 = v13;
    v15 = [(SISchemaUUFRFatalError *)self siriResponseContext];
    v16 = [v4 siriResponseContext];
    v17 = [v15 isEqual:v16];

    if (v17)
    {
      goto LABEL_18;
    }
  }

  else
  {
LABEL_14:
  }

LABEL_15:
  v18 = 0;
LABEL_16:

  return v18;
}

- (void)writeTo:(id)a3
{
  v8 = a3;
  v4 = [(SISchemaUUFRFatalError *)self errorDomain];

  if (v4)
  {
    PBDataWriterWriteStringField();
  }

  if (*&self->_has)
  {
    PBDataWriterWriteInt32Field();
  }

  v5 = [(SISchemaUUFRFatalError *)self siriResponseContext];

  v6 = v8;
  if (v5)
  {
    v7 = [(SISchemaUUFRFatalError *)self siriResponseContext];
    PBDataWriterWriteSubmessage();

    v6 = v8;
  }
}

- (id)applySensitiveConditionsPolicy:(id)a3
{
  v9.receiver = self;
  v9.super_class = SISchemaUUFRFatalError;
  v4 = a3;
  v5 = [(SISchemaInstrumentationMessage *)&v9 applySensitiveConditionsPolicy:v4];
  v6 = [(SISchemaUUFRFatalError *)self siriResponseContext:v9.receiver];
  v7 = [v6 applySensitiveConditionsPolicy:v4];

  LODWORD(v4) = [v7 suppressMessage];
  if (v4)
  {
    [(SISchemaUUFRFatalError *)self deleteSiriResponseContext];
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