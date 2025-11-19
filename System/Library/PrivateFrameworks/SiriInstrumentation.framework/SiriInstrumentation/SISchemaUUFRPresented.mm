@interface SISchemaUUFRPresented
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (SISchemaUUFRPresented)initWithDictionary:(id)a3;
- (SISchemaUUFRPresented)initWithJSON:(id)a3;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)writeTo:(id)a3;
@end

@implementation SISchemaUUFRPresented

- (SISchemaUUFRPresented)initWithDictionary:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = SISchemaUUFRPresented;
  v5 = [(SISchemaUUFRPresented *)&v13 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"viewContainer"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[SISchemaViewContainer alloc] initWithDictionary:v6];
      [(SISchemaUUFRPresented *)v5 setViewContainer:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"errorDomain"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [v8 copy];
      [(SISchemaUUFRPresented *)v5 setErrorDomain:v9];
    }

    v10 = [v4 objectForKeyedSubscript:@"errorCode"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[SISchemaUUFRPresented setErrorCode:](v5, "setErrorCode:", [v10 intValue]);
    }

    v11 = v5;
  }

  return v5;
}

- (SISchemaUUFRPresented)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(SISchemaUUFRPresented *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(SISchemaUUFRPresented *)self dictionaryRepresentation];
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
    v4 = [MEMORY[0x1E696AD98] numberWithInt:{-[SISchemaUUFRPresented errorCode](self, "errorCode")}];
    [v3 setObject:v4 forKeyedSubscript:@"errorCode"];
  }

  if (self->_errorDomain)
  {
    v5 = [(SISchemaUUFRPresented *)self errorDomain];
    v6 = [v5 copy];
    [v3 setObject:v6 forKeyedSubscript:@"errorDomain"];
  }

  if (self->_viewContainer)
  {
    v7 = [(SISchemaUUFRPresented *)self viewContainer];
    v8 = [v7 dictionaryRepresentation];
    if (v8)
    {
      [v3 setObject:v8 forKeyedSubscript:@"viewContainer"];
    }

    else
    {
      v9 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v9 forKeyedSubscript:@"viewContainer"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
}

- (unint64_t)hash
{
  v3 = [(SISchemaViewContainer *)self->_viewContainer hash];
  v4 = [(NSString *)self->_errorDomain hash];
  if (*&self->_has)
  {
    v5 = 2654435761 * self->_errorCode;
  }

  else
  {
    v5 = 0;
  }

  return v4 ^ v3 ^ v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_12;
  }

  v5 = [(SISchemaUUFRPresented *)self viewContainer];
  v6 = [v4 viewContainer];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_11;
  }

  v7 = [(SISchemaUUFRPresented *)self viewContainer];
  if (v7)
  {
    v8 = v7;
    v9 = [(SISchemaUUFRPresented *)self viewContainer];
    v10 = [v4 viewContainer];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  v5 = [(SISchemaUUFRPresented *)self errorDomain];
  v6 = [v4 errorDomain];
  if ((v5 != 0) == (v6 == 0))
  {
LABEL_11:

    goto LABEL_12;
  }

  v12 = [(SISchemaUUFRPresented *)self errorDomain];
  if (v12)
  {
    v13 = v12;
    v14 = [(SISchemaUUFRPresented *)self errorDomain];
    v15 = [v4 errorDomain];
    v16 = [v14 isEqual:v15];

    if (!v16)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  if ((*&self->_has & 1) == (v4[28] & 1))
  {
    if ((*&self->_has & 1) == 0 || (errorCode = self->_errorCode, errorCode == [v4 errorCode]))
    {
      v17 = 1;
      goto LABEL_13;
    }
  }

LABEL_12:
  v17 = 0;
LABEL_13:

  return v17;
}

- (void)writeTo:(id)a3
{
  v8 = a3;
  v4 = [(SISchemaUUFRPresented *)self viewContainer];

  if (v4)
  {
    v5 = [(SISchemaUUFRPresented *)self viewContainer];
    PBDataWriterWriteSubmessage();
  }

  v6 = [(SISchemaUUFRPresented *)self errorDomain];

  if (v6)
  {
    PBDataWriterWriteStringField();
  }

  v7 = v8;
  if (*&self->_has)
  {
    PBDataWriterWriteInt32Field();
    v7 = v8;
  }
}

- (id)applySensitiveConditionsPolicy:(id)a3
{
  v9.receiver = self;
  v9.super_class = SISchemaUUFRPresented;
  v4 = a3;
  v5 = [(SISchemaInstrumentationMessage *)&v9 applySensitiveConditionsPolicy:v4];
  v6 = [(SISchemaUUFRPresented *)self viewContainer:v9.receiver];
  v7 = [v6 applySensitiveConditionsPolicy:v4];

  LODWORD(v4) = [v7 suppressMessage];
  if (v4)
  {
    [(SISchemaUUFRPresented *)self deleteViewContainer];
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