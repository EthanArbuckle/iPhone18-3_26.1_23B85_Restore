@interface IFTSchemaIFTActionFailureDeveloperDefinedError
- (BOOL)isEqual:(id)a3;
- (IFTSchemaIFTActionFailureDeveloperDefinedError)initWithDictionary:(id)a3;
- (IFTSchemaIFTActionFailureDeveloperDefinedError)initWithJSON:(id)a3;
- (NSData)jsonData;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)writeTo:(id)a3;
@end

@implementation IFTSchemaIFTActionFailureDeveloperDefinedError

- (IFTSchemaIFTActionFailureDeveloperDefinedError)initWithDictionary:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = IFTSchemaIFTActionFailureDeveloperDefinedError;
  v5 = [(IFTSchemaIFTActionFailureDeveloperDefinedError *)&v11 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"code"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[IFTSchemaIFTActionFailureDeveloperDefinedError setCode:](v5, "setCode:", [v6 longLongValue]);
    }

    v7 = [v4 objectForKeyedSubscript:@"domain"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = [v7 copy];
      [(IFTSchemaIFTActionFailureDeveloperDefinedError *)v5 setDomain:v8];
    }

    v9 = v5;
  }

  return v5;
}

- (IFTSchemaIFTActionFailureDeveloperDefinedError)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(IFTSchemaIFTActionFailureDeveloperDefinedError *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(IFTSchemaIFTActionFailureDeveloperDefinedError *)self dictionaryRepresentation];
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
    v4 = [MEMORY[0x1E696AD98] numberWithLongLong:{-[IFTSchemaIFTActionFailureDeveloperDefinedError code](self, "code")}];
    [v3 setObject:v4 forKeyedSubscript:@"code"];
  }

  if (self->_domain)
  {
    v5 = [(IFTSchemaIFTActionFailureDeveloperDefinedError *)self domain];
    v6 = [v5 copy];
    [v3 setObject:v6 forKeyedSubscript:@"domain"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v2 = 2654435761 * self->_code;
  }

  else
  {
    v2 = 0;
  }

  return [(NSString *)self->_domain hash]^ v2;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()])
  {
    if ((*&self->_has & 1) == (v4[24] & 1))
    {
      if ((*&self->_has & 1) == 0 || (code = self->_code, code == [v4 code]))
      {
        v6 = [(IFTSchemaIFTActionFailureDeveloperDefinedError *)self domain];
        v7 = [v4 domain];
        v8 = v7;
        if ((v6 != 0) != (v7 == 0))
        {
          v9 = [(IFTSchemaIFTActionFailureDeveloperDefinedError *)self domain];
          if (!v9)
          {

LABEL_13:
            v14 = 1;
            goto LABEL_11;
          }

          v10 = v9;
          v11 = [(IFTSchemaIFTActionFailureDeveloperDefinedError *)self domain];
          v12 = [v4 domain];
          v13 = [v11 isEqual:v12];

          if (v13)
          {
            goto LABEL_13;
          }
        }

        else
        {
        }
      }
    }
  }

  v14 = 0;
LABEL_11:

  return v14;
}

- (void)writeTo:(id)a3
{
  v6 = a3;
  if (*&self->_has)
  {
    PBDataWriterWriteInt64Field();
  }

  v4 = [(IFTSchemaIFTActionFailureDeveloperDefinedError *)self domain];

  v5 = v6;
  if (v4)
  {
    PBDataWriterWriteStringField();
    v5 = v6;
  }
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end