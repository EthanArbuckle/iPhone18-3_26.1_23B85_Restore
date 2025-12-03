@interface MTSchemaMTFrameworkRequestSent
- (BOOL)isEqual:(id)equal;
- (MTSchemaMTFrameworkRequestSent)initWithDictionary:(id)dictionary;
- (MTSchemaMTFrameworkRequestSent)initWithJSON:(id)n;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasRequestRoute:(BOOL)route;
- (void)setHasRequestSize:(BOOL)size;
- (void)writeTo:(id)to;
@end

@implementation MTSchemaMTFrameworkRequestSent

- (MTSchemaMTFrameworkRequestSent)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v15.receiver = self;
  v15.super_class = MTSchemaMTFrameworkRequestSent;
  v5 = [(MTSchemaMTFrameworkRequestSent *)&v15 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"frameworkRequestId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[SISchemaUUID alloc] initWithDictionary:v6];
      [(MTSchemaMTFrameworkRequestSent *)v5 setFrameworkRequestId:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"qssSessionId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [v8 copy];
      [(MTSchemaMTFrameworkRequestSent *)v5 setQssSessionId:v9];
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"requestType"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[MTSchemaMTFrameworkRequestSent setRequestType:](v5, "setRequestType:", [v10 intValue]);
    }

    v11 = [dictionaryCopy objectForKeyedSubscript:@"requestRoute"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[MTSchemaMTFrameworkRequestSent setRequestRoute:](v5, "setRequestRoute:", [v11 intValue]);
    }

    v12 = [dictionaryCopy objectForKeyedSubscript:@"requestSize"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[MTSchemaMTFrameworkRequestSent setRequestSize:](v5, "setRequestSize:", [v12 unsignedIntValue]);
    }

    v13 = v5;
  }

  return v5;
}

- (MTSchemaMTFrameworkRequestSent)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(MTSchemaMTFrameworkRequestSent *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(MTSchemaMTFrameworkRequestSent *)self dictionaryRepresentation];
  if ([MEMORY[0x1E696ACB0] isValidJSONObject:dictionaryRepresentation])
  {
    v3 = [MEMORY[0x1E696ACB0] dataWithJSONObject:dictionaryRepresentation options:0 error:0];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if (self->_frameworkRequestId)
  {
    frameworkRequestId = [(MTSchemaMTFrameworkRequestSent *)self frameworkRequestId];
    dictionaryRepresentation = [frameworkRequestId dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"frameworkRequestId"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"frameworkRequestId"];
    }
  }

  if (self->_qssSessionId)
  {
    qssSessionId = [(MTSchemaMTFrameworkRequestSent *)self qssSessionId];
    v8 = [qssSessionId copy];
    [dictionary setObject:v8 forKeyedSubscript:@"qssSessionId"];
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
    [dictionary setObject:v13 forKeyedSubscript:@"requestSize"];

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

    [dictionary setObject:v15 forKeyedSubscript:@"requestType"];
    goto LABEL_23;
  }

  requestRoute = [(MTSchemaMTFrameworkRequestSent *)self requestRoute];
  v11 = @"MTFRAMEWORKREQUESTROUTE_UNKNOWN";
  if (requestRoute == 1)
  {
    v11 = @"MTFRAMEWORKREQUESTROUTE_NETWORK";
  }

  if (requestRoute == 2)
  {
    v12 = @"MTFRAMEWORKREQUESTROUTE_ON_DEVICE";
  }

  else
  {
    v12 = v11;
  }

  [dictionary setObject:v12 forKeyedSubscript:@"requestRoute"];
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
  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_12;
  }

  frameworkRequestId = [(MTSchemaMTFrameworkRequestSent *)self frameworkRequestId];
  frameworkRequestId2 = [equalCopy frameworkRequestId];
  if ((frameworkRequestId != 0) == (frameworkRequestId2 == 0))
  {
    goto LABEL_11;
  }

  frameworkRequestId3 = [(MTSchemaMTFrameworkRequestSent *)self frameworkRequestId];
  if (frameworkRequestId3)
  {
    v8 = frameworkRequestId3;
    frameworkRequestId4 = [(MTSchemaMTFrameworkRequestSent *)self frameworkRequestId];
    frameworkRequestId5 = [equalCopy frameworkRequestId];
    v11 = [frameworkRequestId4 isEqual:frameworkRequestId5];

    if (!v11)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  frameworkRequestId = [(MTSchemaMTFrameworkRequestSent *)self qssSessionId];
  frameworkRequestId2 = [equalCopy qssSessionId];
  if ((frameworkRequestId != 0) == (frameworkRequestId2 == 0))
  {
LABEL_11:

    goto LABEL_12;
  }

  qssSessionId = [(MTSchemaMTFrameworkRequestSent *)self qssSessionId];
  if (qssSessionId)
  {
    v13 = qssSessionId;
    qssSessionId2 = [(MTSchemaMTFrameworkRequestSent *)self qssSessionId];
    qssSessionId3 = [equalCopy qssSessionId];
    v16 = [qssSessionId2 isEqual:qssSessionId3];

    if (!v16)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  has = self->_has;
  v20 = equalCopy[36];
  if ((*&has & 1) == (v20 & 1))
  {
    if (*&has)
    {
      requestType = self->_requestType;
      if (requestType != [equalCopy requestType])
      {
        goto LABEL_12;
      }

      has = self->_has;
      v20 = equalCopy[36];
    }

    v22 = (*&has >> 1) & 1;
    if (v22 == ((v20 >> 1) & 1))
    {
      if (v22)
      {
        requestRoute = self->_requestRoute;
        if (requestRoute != [equalCopy requestRoute])
        {
          goto LABEL_12;
        }

        has = self->_has;
        v20 = equalCopy[36];
      }

      v24 = (*&has >> 2) & 1;
      if (v24 == ((v20 >> 2) & 1))
      {
        if (!v24 || (requestSize = self->_requestSize, requestSize == [equalCopy requestSize]))
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

- (void)writeTo:(id)to
{
  toCopy = to;
  frameworkRequestId = [(MTSchemaMTFrameworkRequestSent *)self frameworkRequestId];

  if (frameworkRequestId)
  {
    frameworkRequestId2 = [(MTSchemaMTFrameworkRequestSent *)self frameworkRequestId];
    PBDataWriterWriteSubmessage();
  }

  qssSessionId = [(MTSchemaMTFrameworkRequestSent *)self qssSessionId];

  if (qssSessionId)
  {
    PBDataWriterWriteStringField();
  }

  has = self->_has;
  v8 = toCopy;
  if (has)
  {
    PBDataWriterWriteInt32Field();
    v8 = toCopy;
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
  v8 = toCopy;
  if ((*&self->_has & 4) != 0)
  {
LABEL_8:
    PBDataWriterWriteUint32Field();
    v8 = toCopy;
  }

LABEL_9:
}

- (void)setHasRequestSize:(BOOL)size
{
  if (size)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasRequestRoute:(BOOL)route
{
  if (route)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  v9.receiver = self;
  v9.super_class = MTSchemaMTFrameworkRequestSent;
  policyCopy = policy;
  v5 = [(SISchemaInstrumentationMessage *)&v9 applySensitiveConditionsPolicy:policyCopy];
  v6 = [(MTSchemaMTFrameworkRequestSent *)self frameworkRequestId:v9.receiver];
  v7 = [v6 applySensitiveConditionsPolicy:policyCopy];

  LODWORD(policyCopy) = [v7 suppressMessage];
  if (policyCopy)
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