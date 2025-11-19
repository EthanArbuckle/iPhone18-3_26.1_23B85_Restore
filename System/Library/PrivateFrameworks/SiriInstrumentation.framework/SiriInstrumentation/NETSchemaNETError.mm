@interface NETSchemaNETError
- (BOOL)isEqual:(id)a3;
- (NETSchemaNETError)initWithDictionary:(id)a3;
- (NETSchemaNETError)initWithJSON:(id)a3;
- (NSData)jsonData;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)writeTo:(id)a3;
@end

@implementation NETSchemaNETError

- (NETSchemaNETError)initWithDictionary:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = NETSchemaNETError;
  v5 = [(NETSchemaNETError *)&v13 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"domain"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(NETSchemaNETError *)v5 setDomain:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"description"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [v8 copy];
      [(NETSchemaNETError *)v5 setDescription:v9];
    }

    v10 = [v4 objectForKeyedSubscript:@"errorCode"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[NETSchemaNETError setErrorCode:](v5, "setErrorCode:", [v10 longLongValue]);
    }

    v11 = v5;
  }

  return v5;
}

- (NETSchemaNETError)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(NETSchemaNETError *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(NETSchemaNETError *)self dictionaryRepresentation];
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
  if (self->_description)
  {
    v4 = [(NETSchemaNETError *)self description];
    v5 = [v4 copy];
    [v3 setObject:v5 forKeyedSubscript:@"description"];
  }

  if (self->_domain)
  {
    v6 = [(NETSchemaNETError *)self domain];
    v7 = [v6 copy];
    [v3 setObject:v7 forKeyedSubscript:@"domain"];
  }

  if (*&self->_has)
  {
    v8 = [MEMORY[0x1E696AD98] numberWithLongLong:{-[NETSchemaNETError errorCode](self, "errorCode")}];
    [v3 setObject:v8 forKeyedSubscript:@"errorCode"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_domain hash];
  v4 = [(NSString *)self->_description hash];
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

  v5 = [(NETSchemaNETError *)self domain];
  v6 = [v4 domain];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_11;
  }

  v7 = [(NETSchemaNETError *)self domain];
  if (v7)
  {
    v8 = v7;
    v9 = [(NETSchemaNETError *)self domain];
    v10 = [v4 domain];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  v5 = [(NETSchemaNETError *)self description];
  v6 = [v4 description];
  if ((v5 != 0) == (v6 == 0))
  {
LABEL_11:

    goto LABEL_12;
  }

  v12 = [(NETSchemaNETError *)self description];
  if (v12)
  {
    v13 = v12;
    v14 = [(NETSchemaNETError *)self description];
    v15 = [v4 description];
    v16 = [v14 isEqual:v15];

    if (!v16)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  if ((*&self->_has & 1) == (v4[32] & 1))
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
  v7 = a3;
  v4 = [(NETSchemaNETError *)self domain];

  if (v4)
  {
    PBDataWriterWriteStringField();
  }

  v5 = [(NETSchemaNETError *)self description];

  if (v5)
  {
    PBDataWriterWriteStringField();
  }

  v6 = v7;
  if (*&self->_has)
  {
    PBDataWriterWriteInt64Field();
    v6 = v7;
  }
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end