@interface POMMESSchemaPOMMESCacheLookupEnded
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (POMMESSchemaPOMMESCacheLookupEnded)initWithDictionary:(id)a3;
- (POMMESSchemaPOMMESCacheLookupEnded)initWithJSON:(id)a3;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)writeTo:(id)a3;
@end

@implementation POMMESSchemaPOMMESCacheLookupEnded

- (POMMESSchemaPOMMESCacheLookupEnded)initWithDictionary:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = POMMESSchemaPOMMESCacheLookupEnded;
  v5 = [(POMMESSchemaPOMMESCacheLookupEnded *)&v13 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"status"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[POMMESSchemaPOMMESCacheLookupEnded setStatus:](v5, "setStatus:", [v6 intValue]);
    }

    v7 = [v4 objectForKeyedSubscript:@"resultDomain"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = [v7 copy];
      [(POMMESSchemaPOMMESCacheLookupEnded *)v5 setResultDomain:v8];
    }

    v9 = [v4 objectForKeyedSubscript:@"result"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = [[POMMESSchemaPOMMESCacheEntry alloc] initWithDictionary:v9];
      [(POMMESSchemaPOMMESCacheLookupEnded *)v5 setResult:v10];
    }

    v11 = v5;
  }

  return v5;
}

- (POMMESSchemaPOMMESCacheLookupEnded)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(POMMESSchemaPOMMESCacheLookupEnded *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(POMMESSchemaPOMMESCacheLookupEnded *)self dictionaryRepresentation];
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
  if (self->_result)
  {
    v4 = [(POMMESSchemaPOMMESCacheLookupEnded *)self result];
    v5 = [v4 dictionaryRepresentation];
    if (v5)
    {
      [v3 setObject:v5 forKeyedSubscript:@"result"];
    }

    else
    {
      v6 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v6 forKeyedSubscript:@"result"];
    }
  }

  if (self->_resultDomain)
  {
    v7 = [(POMMESSchemaPOMMESCacheLookupEnded *)self resultDomain];
    v8 = [v7 copy];
    [v3 setObject:v8 forKeyedSubscript:@"resultDomain"];
  }

  if (*&self->_has)
  {
    v9 = [(POMMESSchemaPOMMESCacheLookupEnded *)self status]- 1;
    if (v9 > 2)
    {
      v10 = @"POMMESCACHELOOKUPENDEDSTATUS_UNKNOWN";
    }

    else
    {
      v10 = off_1E78E0D18[v9];
    }

    [v3 setObject:v10 forKeyedSubscript:@"status"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v3 = 2654435761 * self->_status;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(NSString *)self->_resultDomain hash]^ v3;
  return v4 ^ [(POMMESSchemaPOMMESCacheEntry *)self->_result hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_15;
  }

  if ((*&self->_has & 1) != (v4[32] & 1))
  {
    goto LABEL_15;
  }

  if (*&self->_has)
  {
    status = self->_status;
    if (status != [v4 status])
    {
      goto LABEL_15;
    }
  }

  v6 = [(POMMESSchemaPOMMESCacheLookupEnded *)self resultDomain];
  v7 = [v4 resultDomain];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_14;
  }

  v8 = [(POMMESSchemaPOMMESCacheLookupEnded *)self resultDomain];
  if (v8)
  {
    v9 = v8;
    v10 = [(POMMESSchemaPOMMESCacheLookupEnded *)self resultDomain];
    v11 = [v4 resultDomain];
    v12 = [v10 isEqual:v11];

    if (!v12)
    {
      goto LABEL_15;
    }
  }

  else
  {
  }

  v6 = [(POMMESSchemaPOMMESCacheLookupEnded *)self result];
  v7 = [v4 result];
  if ((v6 != 0) != (v7 == 0))
  {
    v13 = [(POMMESSchemaPOMMESCacheLookupEnded *)self result];
    if (!v13)
    {

LABEL_18:
      v18 = 1;
      goto LABEL_16;
    }

    v14 = v13;
    v15 = [(POMMESSchemaPOMMESCacheLookupEnded *)self result];
    v16 = [v4 result];
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
  if (*&self->_has)
  {
    PBDataWriterWriteInt32Field();
  }

  v4 = [(POMMESSchemaPOMMESCacheLookupEnded *)self resultDomain];

  if (v4)
  {
    PBDataWriterWriteStringField();
  }

  v5 = [(POMMESSchemaPOMMESCacheLookupEnded *)self result];

  v6 = v8;
  if (v5)
  {
    v7 = [(POMMESSchemaPOMMESCacheLookupEnded *)self result];
    PBDataWriterWriteSubmessage();

    v6 = v8;
  }
}

- (id)applySensitiveConditionsPolicy:(id)a3
{
  v9.receiver = self;
  v9.super_class = POMMESSchemaPOMMESCacheLookupEnded;
  v4 = a3;
  v5 = [(SISchemaInstrumentationMessage *)&v9 applySensitiveConditionsPolicy:v4];
  v6 = [(POMMESSchemaPOMMESCacheLookupEnded *)self result:v9.receiver];
  v7 = [v6 applySensitiveConditionsPolicy:v4];

  LODWORD(v4) = [v7 suppressMessage];
  if (v4)
  {
    [(POMMESSchemaPOMMESCacheLookupEnded *)self deleteResult];
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