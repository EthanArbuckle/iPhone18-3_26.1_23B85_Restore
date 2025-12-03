@interface CLPInstSchemaCLPNLv4SampleEvaluationFailed
- (BOOL)isEqual:(id)equal;
- (CLPInstSchemaCLPNLv4SampleEvaluationFailed)initWithDictionary:(id)dictionary;
- (CLPInstSchemaCLPNLv4SampleEvaluationFailed)initWithJSON:(id)n;
- (NSData)jsonData;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasXpcClientDisconnected:(BOOL)disconnected;
- (void)setHasXpcClientNLURequestTimeout:(BOOL)timeout;
- (void)writeTo:(id)to;
@end

@implementation CLPInstSchemaCLPNLv4SampleEvaluationFailed

- (CLPInstSchemaCLPNLv4SampleEvaluationFailed)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v11.receiver = self;
  v11.super_class = CLPInstSchemaCLPNLv4SampleEvaluationFailed;
  v5 = [(CLPInstSchemaCLPNLv4SampleEvaluationFailed *)&v11 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"userProfileSandboxFailure"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[CLPInstSchemaCLPNLv4SampleEvaluationFailed setUserProfileSandboxFailure:](v5, "setUserProfileSandboxFailure:", [v6 BOOLValue]);
    }

    v7 = [dictionaryCopy objectForKeyedSubscript:@"xpcClientDisconnected"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[CLPInstSchemaCLPNLv4SampleEvaluationFailed setXpcClientDisconnected:](v5, "setXpcClientDisconnected:", [v7 BOOLValue]);
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"xpcClientNLURequestTimeout"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[CLPInstSchemaCLPNLv4SampleEvaluationFailed setXpcClientNLURequestTimeout:](v5, "setXpcClientNLURequestTimeout:", [v8 BOOLValue]);
    }

    v9 = v5;
  }

  return v5;
}

- (CLPInstSchemaCLPNLv4SampleEvaluationFailed)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(CLPInstSchemaCLPNLv4SampleEvaluationFailed *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(CLPInstSchemaCLPNLv4SampleEvaluationFailed *)self dictionaryRepresentation];
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
  v4 = *(&self->_xpcClientNLURequestTimeout + 1);
  if (v4)
  {
    v7 = [MEMORY[0x1E696AD98] numberWithBool:{-[CLPInstSchemaCLPNLv4SampleEvaluationFailed userProfileSandboxFailure](self, "userProfileSandboxFailure")}];
    [dictionary setObject:v7 forKeyedSubscript:@"userProfileSandboxFailure"];

    v4 = *(&self->_xpcClientNLURequestTimeout + 1);
    if ((v4 & 2) == 0)
    {
LABEL_3:
      if ((v4 & 4) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*(&self->_xpcClientNLURequestTimeout + 1) & 2) == 0)
  {
    goto LABEL_3;
  }

  v8 = [MEMORY[0x1E696AD98] numberWithBool:{-[CLPInstSchemaCLPNLv4SampleEvaluationFailed xpcClientDisconnected](self, "xpcClientDisconnected")}];
  [dictionary setObject:v8 forKeyedSubscript:@"xpcClientDisconnected"];

  if ((*(&self->_xpcClientNLURequestTimeout + 1) & 4) != 0)
  {
LABEL_4:
    v5 = [MEMORY[0x1E696AD98] numberWithBool:{-[CLPInstSchemaCLPNLv4SampleEvaluationFailed xpcClientNLURequestTimeout](self, "xpcClientNLURequestTimeout")}];
    [dictionary setObject:v5 forKeyedSubscript:@"xpcClientNLURequestTimeout"];
  }

LABEL_5:
  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  if (!*(&self->_xpcClientNLURequestTimeout + 1))
  {
    v2 = 0;
    if ((*(&self->_xpcClientNLURequestTimeout + 1) & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    v3 = 0;
    if ((*(&self->_xpcClientNLURequestTimeout + 1) & 4) != 0)
    {
      goto LABEL_4;
    }

LABEL_7:
    v4 = 0;
    return v3 ^ v2 ^ v4;
  }

  v2 = 2654435761 * self->_userProfileSandboxFailure;
  if ((*(&self->_xpcClientNLURequestTimeout + 1) & 2) == 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  v3 = 2654435761 * self->_xpcClientDisconnected;
  if ((*(&self->_xpcClientNLURequestTimeout + 1) & 4) == 0)
  {
    goto LABEL_7;
  }

LABEL_4:
  v4 = 2654435761 * self->_xpcClientNLURequestTimeout;
  return v3 ^ v2 ^ v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_14;
  }

  v5 = *(&self->_xpcClientNLURequestTimeout + 1);
  v6 = equalCopy[11];
  if ((v5 & 1) != (v6 & 1))
  {
    goto LABEL_14;
  }

  if (v5)
  {
    userProfileSandboxFailure = self->_userProfileSandboxFailure;
    if (userProfileSandboxFailure != [equalCopy userProfileSandboxFailure])
    {
      goto LABEL_14;
    }

    v5 = *(&self->_xpcClientNLURequestTimeout + 1);
    v6 = equalCopy[11];
  }

  v8 = (v5 >> 1) & 1;
  if (v8 != ((v6 >> 1) & 1))
  {
    goto LABEL_14;
  }

  if (v8)
  {
    xpcClientDisconnected = self->_xpcClientDisconnected;
    if (xpcClientDisconnected == [equalCopy xpcClientDisconnected])
    {
      v5 = *(&self->_xpcClientNLURequestTimeout + 1);
      v6 = equalCopy[11];
      goto LABEL_10;
    }

LABEL_14:
    v12 = 0;
    goto LABEL_15;
  }

LABEL_10:
  v10 = (v5 >> 2) & 1;
  if (v10 != ((v6 >> 2) & 1))
  {
    goto LABEL_14;
  }

  if (v10)
  {
    xpcClientNLURequestTimeout = self->_xpcClientNLURequestTimeout;
    if (xpcClientNLURequestTimeout != [equalCopy xpcClientNLURequestTimeout])
    {
      goto LABEL_14;
    }
  }

  v12 = 1;
LABEL_15:

  return v12;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v5 = *(&self->_xpcClientNLURequestTimeout + 1);
  v6 = toCopy;
  if (v5)
  {
    PBDataWriterWriteBOOLField();
    toCopy = v6;
    v5 = *(&self->_xpcClientNLURequestTimeout + 1);
    if ((v5 & 2) == 0)
    {
LABEL_3:
      if ((v5 & 4) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*(&self->_xpcClientNLURequestTimeout + 1) & 2) == 0)
  {
    goto LABEL_3;
  }

  PBDataWriterWriteBOOLField();
  toCopy = v6;
  if ((*(&self->_xpcClientNLURequestTimeout + 1) & 4) != 0)
  {
LABEL_4:
    PBDataWriterWriteBOOLField();
    toCopy = v6;
  }

LABEL_5:
}

- (void)setHasXpcClientNLURequestTimeout:(BOOL)timeout
{
  if (timeout)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_xpcClientNLURequestTimeout + 1) = *(&self->_xpcClientNLURequestTimeout + 1) & 0xFB | v3;
}

- (void)setHasXpcClientDisconnected:(BOOL)disconnected
{
  if (disconnected)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_xpcClientNLURequestTimeout + 1) = *(&self->_xpcClientNLURequestTimeout + 1) & 0xFD | v3;
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end