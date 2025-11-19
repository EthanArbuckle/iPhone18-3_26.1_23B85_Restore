@interface MTSchemaMTInvocationFailed
- (BOOL)isEqual:(id)a3;
- (MTSchemaMTInvocationFailed)initWithDictionary:(id)a3;
- (MTSchemaMTInvocationFailed)initWithJSON:(id)a3;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)writeTo:(id)a3;
@end

@implementation MTSchemaMTInvocationFailed

- (MTSchemaMTInvocationFailed)initWithDictionary:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = MTSchemaMTInvocationFailed;
  v5 = [(MTSchemaMTInvocationFailed *)&v14 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"error"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[MTSchemaMTError alloc] initWithDictionary:v6];
      [(MTSchemaMTInvocationFailed *)v5 setError:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"qssSessionId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[SISchemaUUID alloc] initWithDictionary:v8];
      [(MTSchemaMTInvocationFailed *)v5 setQssSessionId:v9];
    }

    v10 = [v4 objectForKeyedSubscript:@"localePair"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [[MTSchemaMTLocalePair alloc] initWithDictionary:v10];
      [(MTSchemaMTInvocationFailed *)v5 setLocalePair:v11];
    }

    v12 = v5;
  }

  return v5;
}

- (MTSchemaMTInvocationFailed)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(MTSchemaMTInvocationFailed *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(MTSchemaMTInvocationFailed *)self dictionaryRepresentation];
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
  if (self->_error)
  {
    v4 = [(MTSchemaMTInvocationFailed *)self error];
    v5 = [v4 dictionaryRepresentation];
    if (v5)
    {
      [v3 setObject:v5 forKeyedSubscript:@"error"];
    }

    else
    {
      v6 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v6 forKeyedSubscript:@"error"];
    }
  }

  if (self->_localePair)
  {
    v7 = [(MTSchemaMTInvocationFailed *)self localePair];
    v8 = [v7 dictionaryRepresentation];
    if (v8)
    {
      [v3 setObject:v8 forKeyedSubscript:@"localePair"];
    }

    else
    {
      v9 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v9 forKeyedSubscript:@"localePair"];
    }
  }

  if (self->_qssSessionId)
  {
    v10 = [(MTSchemaMTInvocationFailed *)self qssSessionId];
    v11 = [v10 dictionaryRepresentation];
    if (v11)
    {
      [v3 setObject:v11 forKeyedSubscript:@"qssSessionId"];
    }

    else
    {
      v12 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v12 forKeyedSubscript:@"qssSessionId"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
}

- (unint64_t)hash
{
  v3 = [(MTSchemaMTError *)self->_error hash];
  v4 = [(SISchemaUUID *)self->_qssSessionId hash]^ v3;
  return v4 ^ [(MTSchemaMTLocalePair *)self->_localePair hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_17;
  }

  v5 = [(MTSchemaMTInvocationFailed *)self error];
  v6 = [v4 error];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_16;
  }

  v7 = [(MTSchemaMTInvocationFailed *)self error];
  if (v7)
  {
    v8 = v7;
    v9 = [(MTSchemaMTInvocationFailed *)self error];
    v10 = [v4 error];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  v5 = [(MTSchemaMTInvocationFailed *)self qssSessionId];
  v6 = [v4 qssSessionId];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_16;
  }

  v12 = [(MTSchemaMTInvocationFailed *)self qssSessionId];
  if (v12)
  {
    v13 = v12;
    v14 = [(MTSchemaMTInvocationFailed *)self qssSessionId];
    v15 = [v4 qssSessionId];
    v16 = [v14 isEqual:v15];

    if (!v16)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  v5 = [(MTSchemaMTInvocationFailed *)self localePair];
  v6 = [v4 localePair];
  if ((v5 != 0) != (v6 == 0))
  {
    v17 = [(MTSchemaMTInvocationFailed *)self localePair];
    if (!v17)
    {

LABEL_20:
      v22 = 1;
      goto LABEL_18;
    }

    v18 = v17;
    v19 = [(MTSchemaMTInvocationFailed *)self localePair];
    v20 = [v4 localePair];
    v21 = [v19 isEqual:v20];

    if (v21)
    {
      goto LABEL_20;
    }
  }

  else
  {
LABEL_16:
  }

LABEL_17:
  v22 = 0;
LABEL_18:

  return v22;
}

- (void)writeTo:(id)a3
{
  v11 = a3;
  v4 = [(MTSchemaMTInvocationFailed *)self error];

  if (v4)
  {
    v5 = [(MTSchemaMTInvocationFailed *)self error];
    PBDataWriterWriteSubmessage();
  }

  v6 = [(MTSchemaMTInvocationFailed *)self qssSessionId];

  if (v6)
  {
    v7 = [(MTSchemaMTInvocationFailed *)self qssSessionId];
    PBDataWriterWriteSubmessage();
  }

  v8 = [(MTSchemaMTInvocationFailed *)self localePair];

  v9 = v11;
  if (v8)
  {
    v10 = [(MTSchemaMTInvocationFailed *)self localePair];
    PBDataWriterWriteSubmessage();

    v9 = v11;
  }
}

- (id)applySensitiveConditionsPolicy:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = MTSchemaMTInvocationFailed;
  v5 = [(SISchemaInstrumentationMessage *)&v16 applySensitiveConditionsPolicy:v4];
  v6 = [(MTSchemaMTInvocationFailed *)self error];
  v7 = [v6 applySensitiveConditionsPolicy:v4];
  v8 = [v7 suppressMessage];

  if (v8)
  {
    [(MTSchemaMTInvocationFailed *)self deleteError];
  }

  v9 = [(MTSchemaMTInvocationFailed *)self qssSessionId];
  v10 = [v9 applySensitiveConditionsPolicy:v4];
  v11 = [v10 suppressMessage];

  if (v11)
  {
    [(MTSchemaMTInvocationFailed *)self deleteQssSessionId];
  }

  v12 = [(MTSchemaMTInvocationFailed *)self localePair];
  v13 = [v12 applySensitiveConditionsPolicy:v4];
  v14 = [v13 suppressMessage];

  if (v14)
  {
    [(MTSchemaMTInvocationFailed *)self deleteLocalePair];
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