@interface NETSchemaNETSessionConnectionHttpHeaderCreated
- (BOOL)isEqual:(id)a3;
- (NETSchemaNETSessionConnectionHttpHeaderCreated)initWithDictionary:(id)a3;
- (NETSchemaNETSessionConnectionHttpHeaderCreated)initWithJSON:(id)a3;
- (NSData)jsonData;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (void)writeTo:(id)a3;
@end

@implementation NETSchemaNETSessionConnectionHttpHeaderCreated

- (NETSchemaNETSessionConnectionHttpHeaderCreated)initWithDictionary:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = NETSchemaNETSessionConnectionHttpHeaderCreated;
  v5 = [(NETSchemaNETSessionConnectionHttpHeaderCreated *)&v12 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"userAgent"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(NETSchemaNETSessionConnectionHttpHeaderCreated *)v5 setUserAgent:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"aceHost"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [v8 copy];
      [(NETSchemaNETSessionConnectionHttpHeaderCreated *)v5 setAceHost:v9];
    }

    v10 = v5;
  }

  return v5;
}

- (NETSchemaNETSessionConnectionHttpHeaderCreated)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(NETSchemaNETSessionConnectionHttpHeaderCreated *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(NETSchemaNETSessionConnectionHttpHeaderCreated *)self dictionaryRepresentation];
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
  if (self->_aceHost)
  {
    v4 = [(NETSchemaNETSessionConnectionHttpHeaderCreated *)self aceHost];
    v5 = [v4 copy];
    [v3 setObject:v5 forKeyedSubscript:@"aceHost"];
  }

  if (self->_userAgent)
  {
    v6 = [(NETSchemaNETSessionConnectionHttpHeaderCreated *)self userAgent];
    v7 = [v6 copy];
    [v3 setObject:v7 forKeyedSubscript:@"userAgent"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_12;
  }

  v5 = [(NETSchemaNETSessionConnectionHttpHeaderCreated *)self userAgent];
  v6 = [v4 userAgent];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_11;
  }

  v7 = [(NETSchemaNETSessionConnectionHttpHeaderCreated *)self userAgent];
  if (v7)
  {
    v8 = v7;
    v9 = [(NETSchemaNETSessionConnectionHttpHeaderCreated *)self userAgent];
    v10 = [v4 userAgent];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  v5 = [(NETSchemaNETSessionConnectionHttpHeaderCreated *)self aceHost];
  v6 = [v4 aceHost];
  if ((v5 != 0) != (v6 == 0))
  {
    v12 = [(NETSchemaNETSessionConnectionHttpHeaderCreated *)self aceHost];
    if (!v12)
    {

LABEL_15:
      v17 = 1;
      goto LABEL_13;
    }

    v13 = v12;
    v14 = [(NETSchemaNETSessionConnectionHttpHeaderCreated *)self aceHost];
    v15 = [v4 aceHost];
    v16 = [v14 isEqual:v15];

    if (v16)
    {
      goto LABEL_15;
    }
  }

  else
  {
LABEL_11:
  }

LABEL_12:
  v17 = 0;
LABEL_13:

  return v17;
}

- (void)writeTo:(id)a3
{
  v6 = a3;
  v4 = [(NETSchemaNETSessionConnectionHttpHeaderCreated *)self userAgent];

  if (v4)
  {
    PBDataWriterWriteStringField();
  }

  v5 = [(NETSchemaNETSessionConnectionHttpHeaderCreated *)self aceHost];

  if (v5)
  {
    PBDataWriterWriteStringField();
  }
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end