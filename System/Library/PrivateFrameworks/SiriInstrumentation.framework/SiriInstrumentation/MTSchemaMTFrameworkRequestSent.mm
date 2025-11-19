@interface MTSchemaMTFrameworkRequestSent
- (BOOL)isEqual:(id)a3;
- (MTSchemaMTFrameworkRequestSent)initWithDictionary:(id)a3;
- (MTSchemaMTFrameworkRequestSent)initWithJSON:(id)a3;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasRequestRoute:(BOOL)a3;
- (void)setHasRequestSize:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation MTSchemaMTFrameworkRequestSent

- (MTSchemaMTFrameworkRequestSent)initWithDictionary:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = MTSchemaMTFrameworkRequestSent;
  v5 = [(MTSchemaMTFrameworkRequestSent *)&v15 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"frameworkRequestId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[SISchemaUUID alloc] initWithDictionary:v6];
      [(MTSchemaMTFrameworkRequestSent *)v5 setFrameworkRequestId:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"qssSessionId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [v8 copy];
      [(MTSchemaMTFrameworkRequestSent *)v5 setQssSessionId:v9];
    }

    v10 = [v4 objectForKeyedSubscript:@"requestType"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[MTSchemaMTFrameworkRequestSent setRequestType:](v5, "setRequestType:", [v10 intValue]);
    }

    v11 = [v4 objectForKeyedSubscript:@"requestRoute"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[MTSchemaMTFrameworkRequestSent setRequestRoute:](v5, "setRequestRoute:", [v11 intValue]);
    }

    v12 = [v4 objectForKeyedSubscript:@"requestSize"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[MTSchemaMTFrameworkRequestSent setRequestSize:](v5, "setRequestSize:", [v12 unsignedIntValue]);
    }

    v13 = v5;
  }

  return v5;
}

- (MTSchemaMTFrameworkRequestSent)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(MTSchemaMTFrameworkRequestSent *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(MTSchemaMTFrameworkRequestSent *)self dictionaryRepresentation];
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
  if (self->_frameworkRequestId)
  {
    v4 = [(MTSchemaMTFrameworkRequestSent *)self frameworkRequestId];
    v5 = [v4 dictionaryRepresentation];
    if (v5)
    {
      [v3 setObject:v5 forKeyedSubscript:@"frameworkRequestId"];
    }

    else
    {
      v6 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v6 forKeyedSubscript:@"frameworkRequestId"];
    }
  }

  if (self->_qssSessionId)
  {
    v7 = [(MTSchemaMTFrameworkRequestSent *)self qssSessionId];
    v8 = [v7 copy];
    [v3 setObject:v8 forKeyedSubscript:@"qssSessionId"];
  }

  has = self->_has;
  if ((has & 2) == 0)
  {
    if ((*&self->_has & 4) == 0)
    {
      goto LABEL_10;
    }

LABEL_18:
    v13 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[MTSchemaMTFrameworkRequestSent requestSize](self, "requestSize")}];
    [v3 setObject:v13 forKeyedSubscript:@"requestSize"];

    if ((*&self->_has & 1) == 0)
    {
      goto LABEL_23;
    }

LABEL_19:
    v14 = [(MTSchemaMTFrameworkRequestSent *)self requestType]- 1;
    if (v14 > 3)
    {
      v15 = @"MTFRAMEWORKREQUESTTYPE_UNKNOWN";
    }

    else
    {
      v15 = off_1E78D9CB8[v14];
    }

    [v3 setObject:v15 forKeyedSubscript:@"requestType"];
    goto LABEL_23;
  }

  v10 = [(MTSchemaMTFrameworkRequestSent *)self requestRoute];
  v11 = @"MTFRAMEWORKREQUESTROUTE_UNKNOWN";
  if (v10 == 1)
  {
    v11 = @"MTFRAMEWORKREQUESTROUTE_NETWORK";
  }

  if (v10 == 2)
  {
    v12 = @"MTFRAMEWORKREQUESTROUTE_ON_DEVICE";
  }

  else
  {
    v12 = v11;
  }

  [v3 setObject:v12 forKeyedSubscript:@"requestRoute"];
  has = self->_has;
  if ((has & 4) != 0)
  {
    goto LABEL_18;
  }

LABEL_10:
  if (has)
  {
    goto LABEL_19;
  }

LABEL_23:
  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
}

- (unint64_t)hash
{
  v3 = [(SISchemaUUID *)self->_frameworkRequestId hash];
  v4 = [(NSString *)self->_qssSessionId hash];
  if ((*&self->_has & 1) == 0)
  {
    v5 = 0;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    v6 = 0;
    if ((*&self->_has & 4) != 0)
    {
      goto LABEL_4;
    }

LABEL_7:
    v7 = 0;
    return v4 ^ v3 ^ v5 ^ v6 ^ v7;
  }

  v5 = 2654435761 * self->_requestType;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  v6 = 2654435761 * self->_requestRoute;
  if ((*&self->_has & 4) == 0)
  {
    goto LABEL_7;
  }

LABEL_4:
  v7 = 2654435761 * self->_requestSize;
  return v4 ^ v3 ^ v5 ^ v6 ^ v7;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_12;
  }

  v5 = [(MTSchemaMTFrameworkRequestSent *)self frameworkRequestId];
  v6 = [v4 frameworkRequestId];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_11;
  }

  v7 = [(MTSchemaMTFrameworkRequestSent *)self frameworkRequestId];
  if (v7)
  {
    v8 = v7;
    v9 = [(MTSchemaMTFrameworkRequestSent *)self frameworkRequestId];
    v10 = [v4 frameworkRequestId];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  v5 = [(MTSchemaMTFrameworkRequestSent *)self qssSessionId];
  v6 = [v4 qssSessionId];
  if ((v5 != 0) == (v6 == 0))
  {
LABEL_11:

    goto LABEL_12;
  }

  v12 = [(MTSchemaMTFrameworkRequestSent *)self qssSessionId];
  if (v12)
  {
    v13 = v12;
    v14 = [(MTSchemaMTFrameworkRequestSent *)self qssSessionId];
    v15 = [v4 qssSessionId];
    v16 = [v14 isEqual:v15];

    if (!v16)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  has = self->_has;
  v20 = v4[36];
  if ((*&has & 1) == (v20 & 1))
  {
    if (*&has)
    {
      requestType = self->_requestType;
      if (requestType != [v4 requestType])
      {
        goto LABEL_12;
      }

      has = self->_has;
      v20 = v4[36];
    }

    v22 = (*&has >> 1) & 1;
    if (v22 == ((v20 >> 1) & 1))
    {
      if (v22)
      {
        requestRoute = self->_requestRoute;
        if (requestRoute != [v4 requestRoute])
        {
          goto LABEL_12;
        }

        has = self->_has;
        v20 = v4[36];
      }

      v24 = (*&has >> 2) & 1;
      if (v24 == ((v20 >> 2) & 1))
      {
        if (!v24 || (requestSize = self->_requestSize, requestSize == [v4 requestSize]))
        {
          v17 = 1;
          goto LABEL_13;
        }
      }
    }
  }

LABEL_12:
  v17 = 0;
LABEL_13:

  return v17;
}

- (void)writeTo:(id)a3
{
  v9 = a3;
  v4 = [(MTSchemaMTFrameworkRequestSent *)self frameworkRequestId];

  if (v4)
  {
    v5 = [(MTSchemaMTFrameworkRequestSent *)self frameworkRequestId];
    PBDataWriterWriteSubmessage();
  }

  v6 = [(MTSchemaMTFrameworkRequestSent *)self qssSessionId];

  if (v6)
  {
    PBDataWriterWriteStringField();
  }

  has = self->_has;
  v8 = v9;
  if (has)
  {
    PBDataWriterWriteInt32Field();
    v8 = v9;
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_7:
      if ((has & 4) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_8;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_7;
  }

  PBDataWriterWriteInt32Field();
  v8 = v9;
  if ((*&self->_has & 4) != 0)
  {
LABEL_8:
    PBDataWriterWriteUint32Field();
    v8 = v9;
  }

LABEL_9:
}

- (void)setHasRequestSize:(BOOL)a3
{
  if (a3)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasRequestRoute:(BOOL)a3
{
  if (a3)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (id)applySensitiveConditionsPolicy:(id)a3
{
  v9.receiver = self;
  v9.super_class = MTSchemaMTFrameworkRequestSent;
  v4 = a3;
  v5 = [(SISchemaInstrumentationMessage *)&v9 applySensitiveConditionsPolicy:v4];
  v6 = [(MTSchemaMTFrameworkRequestSent *)self frameworkRequestId:v9.receiver];
  v7 = [v6 applySensitiveConditionsPolicy:v4];

  LODWORD(v4) = [v7 suppressMessage];
  if (v4)
  {
    [(MTSchemaMTFrameworkRequestSent *)self deleteFrameworkRequestId];
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