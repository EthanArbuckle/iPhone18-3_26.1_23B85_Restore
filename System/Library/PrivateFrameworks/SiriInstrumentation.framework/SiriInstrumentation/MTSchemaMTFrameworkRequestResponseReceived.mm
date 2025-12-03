@interface MTSchemaMTFrameworkRequestResponseReceived
- (BOOL)isEqual:(id)equal;
- (MTSchemaMTFrameworkRequestResponseReceived)initWithDictionary:(id)dictionary;
- (MTSchemaMTFrameworkRequestResponseReceived)initWithJSON:(id)n;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasNumSentences:(BOOL)sentences;
- (void)writeTo:(id)to;
@end

@implementation MTSchemaMTFrameworkRequestResponseReceived

- (MTSchemaMTFrameworkRequestResponseReceived)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v12.receiver = self;
  v12.super_class = MTSchemaMTFrameworkRequestResponseReceived;
  v5 = [(MTSchemaMTFrameworkRequestResponseReceived *)&v12 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"frameworkRequestId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[SISchemaUUID alloc] initWithDictionary:v6];
      [(MTSchemaMTFrameworkRequestResponseReceived *)v5 setFrameworkRequestId:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"requestRoute"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[MTSchemaMTFrameworkRequestResponseReceived setRequestRoute:](v5, "setRequestRoute:", [v8 intValue]);
    }

    v9 = [dictionaryCopy objectForKeyedSubscript:@"numSentences"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[MTSchemaMTFrameworkRequestResponseReceived setNumSentences:](v5, "setNumSentences:", [v9 unsignedIntValue]);
    }

    v10 = v5;
  }

  return v5;
}

- (MTSchemaMTFrameworkRequestResponseReceived)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(MTSchemaMTFrameworkRequestResponseReceived *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(MTSchemaMTFrameworkRequestResponseReceived *)self dictionaryRepresentation];
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
    frameworkRequestId = [(MTSchemaMTFrameworkRequestResponseReceived *)self frameworkRequestId];
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

  has = self->_has;
  if ((has & 2) != 0)
  {
    v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[MTSchemaMTFrameworkRequestResponseReceived numSentences](self, "numSentences")}];
    [dictionary setObject:v8 forKeyedSubscript:@"numSentences"];

    has = self->_has;
  }

  if (has)
  {
    requestRoute = [(MTSchemaMTFrameworkRequestResponseReceived *)self requestRoute];
    v10 = @"MTFRAMEWORKREQUESTROUTE_UNKNOWN";
    if (requestRoute == 1)
    {
      v10 = @"MTFRAMEWORKREQUESTROUTE_NETWORK";
    }

    if (requestRoute == 2)
    {
      v11 = @"MTFRAMEWORKREQUESTROUTE_ON_DEVICE";
    }

    else
    {
      v11 = v10;
    }

    [dictionary setObject:v11 forKeyedSubscript:@"requestRoute"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(SISchemaUUID *)self->_frameworkRequestId hash];
  if (*&self->_has)
  {
    v4 = 2654435761 * self->_requestRoute;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_5:
    v5 = 0;
    return v4 ^ v3 ^ v5;
  }

  v4 = 0;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  v5 = 2654435761 * self->_numSentences;
  return v4 ^ v3 ^ v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_16;
  }

  frameworkRequestId = [(MTSchemaMTFrameworkRequestResponseReceived *)self frameworkRequestId];
  frameworkRequestId2 = [equalCopy frameworkRequestId];
  v7 = frameworkRequestId2;
  if ((frameworkRequestId != 0) == (frameworkRequestId2 == 0))
  {

    goto LABEL_16;
  }

  frameworkRequestId3 = [(MTSchemaMTFrameworkRequestResponseReceived *)self frameworkRequestId];
  if (frameworkRequestId3)
  {
    v9 = frameworkRequestId3;
    frameworkRequestId4 = [(MTSchemaMTFrameworkRequestResponseReceived *)self frameworkRequestId];
    frameworkRequestId5 = [equalCopy frameworkRequestId];
    v12 = [frameworkRequestId4 isEqual:frameworkRequestId5];

    if (!v12)
    {
      goto LABEL_16;
    }
  }

  else
  {
  }

  has = self->_has;
  v14 = equalCopy[24];
  if ((*&has & 1) != (v14 & 1))
  {
LABEL_16:
    v18 = 0;
    goto LABEL_17;
  }

  if (*&has)
  {
    requestRoute = self->_requestRoute;
    if (requestRoute == [equalCopy requestRoute])
    {
      has = self->_has;
      v14 = equalCopy[24];
      goto LABEL_12;
    }

    goto LABEL_16;
  }

LABEL_12:
  v16 = (*&has >> 1) & 1;
  if (v16 != ((v14 >> 1) & 1))
  {
    goto LABEL_16;
  }

  if (v16)
  {
    numSentences = self->_numSentences;
    if (numSentences != [equalCopy numSentences])
    {
      goto LABEL_16;
    }
  }

  v18 = 1;
LABEL_17:

  return v18;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  frameworkRequestId = [(MTSchemaMTFrameworkRequestResponseReceived *)self frameworkRequestId];

  if (frameworkRequestId)
  {
    frameworkRequestId2 = [(MTSchemaMTFrameworkRequestResponseReceived *)self frameworkRequestId];
    PBDataWriterWriteSubmessage();
  }

  has = self->_has;
  if (has)
  {
    PBDataWriterWriteInt32Field();
    has = self->_has;
  }

  v7 = toCopy;
  if ((has & 2) != 0)
  {
    PBDataWriterWriteUint32Field();
    v7 = toCopy;
  }
}

- (void)setHasNumSentences:(BOOL)sentences
{
  if (sentences)
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
  v9.super_class = MTSchemaMTFrameworkRequestResponseReceived;
  policyCopy = policy;
  v5 = [(SISchemaInstrumentationMessage *)&v9 applySensitiveConditionsPolicy:policyCopy];
  v6 = [(MTSchemaMTFrameworkRequestResponseReceived *)self frameworkRequestId:v9.receiver];
  v7 = [v6 applySensitiveConditionsPolicy:policyCopy];

  LODWORD(policyCopy) = [v7 suppressMessage];
  if (policyCopy)
  {
    [(MTSchemaMTFrameworkRequestResponseReceived *)self deleteFrameworkRequestId];
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