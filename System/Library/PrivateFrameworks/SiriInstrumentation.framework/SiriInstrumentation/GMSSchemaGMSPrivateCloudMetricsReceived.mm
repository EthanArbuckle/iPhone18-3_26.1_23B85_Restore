@interface GMSSchemaGMSPrivateCloudMetricsReceived
- (BOOL)isEqual:(id)equal;
- (GMSSchemaGMSPrivateCloudMetricsReceived)initWithDictionary:(id)dictionary;
- (GMSSchemaGMSPrivateCloudMetricsReceived)initWithJSON:(id)n;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)writeTo:(id)to;
@end

@implementation GMSSchemaGMSPrivateCloudMetricsReceived

- (GMSSchemaGMSPrivateCloudMetricsReceived)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v13.receiver = self;
  v13.super_class = GMSSchemaGMSPrivateCloudMetricsReceived;
  v5 = [(GMSSchemaGMSPrivateCloudMetricsReceived *)&v13 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"clientTraceId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[SISchemaUUID alloc] initWithDictionary:v6];
      [(GMSSchemaGMSPrivateCloudMetricsReceived *)v5 setClientTraceId:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"gmsPrivateCloudMetrics"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[GMSSchemaGMSPrivateCloudMetrics alloc] initWithDictionary:v8];
      [(GMSSchemaGMSPrivateCloudMetricsReceived *)v5 setGmsPrivateCloudMetrics:v9];
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"gmsCaller"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[GMSSchemaGMSPrivateCloudMetricsReceived setGmsCaller:](v5, "setGmsCaller:", [v10 intValue]);
    }

    v11 = v5;
  }

  return v5;
}

- (GMSSchemaGMSPrivateCloudMetricsReceived)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(GMSSchemaGMSPrivateCloudMetricsReceived *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(GMSSchemaGMSPrivateCloudMetricsReceived *)self dictionaryRepresentation];
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
  if (self->_clientTraceId)
  {
    clientTraceId = [(GMSSchemaGMSPrivateCloudMetricsReceived *)self clientTraceId];
    dictionaryRepresentation = [clientTraceId dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"clientTraceId"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"clientTraceId"];
    }
  }

  if (*&self->_has)
  {
    v7 = [(GMSSchemaGMSPrivateCloudMetricsReceived *)self gmsCaller]- 1;
    if (v7 > 4)
    {
      v8 = @"GMSCALLER_UNKNOWN";
    }

    else
    {
      v8 = off_1E78D7628[v7];
    }

    [dictionary setObject:v8 forKeyedSubscript:@"gmsCaller"];
  }

  if (self->_gmsPrivateCloudMetrics)
  {
    gmsPrivateCloudMetrics = [(GMSSchemaGMSPrivateCloudMetricsReceived *)self gmsPrivateCloudMetrics];
    dictionaryRepresentation2 = [gmsPrivateCloudMetrics dictionaryRepresentation];
    if (dictionaryRepresentation2)
    {
      [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"gmsPrivateCloudMetrics"];
    }

    else
    {
      null2 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null2 forKeyedSubscript:@"gmsPrivateCloudMetrics"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(SISchemaUUID *)self->_clientTraceId hash];
  v4 = [(GMSSchemaGMSPrivateCloudMetrics *)self->_gmsPrivateCloudMetrics hash];
  if (*&self->_has)
  {
    v5 = 2654435761 * self->_gmsCaller;
  }

  else
  {
    v5 = 0;
  }

  return v4 ^ v3 ^ v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_12;
  }

  clientTraceId = [(GMSSchemaGMSPrivateCloudMetricsReceived *)self clientTraceId];
  clientTraceId2 = [equalCopy clientTraceId];
  if ((clientTraceId != 0) == (clientTraceId2 == 0))
  {
    goto LABEL_11;
  }

  clientTraceId3 = [(GMSSchemaGMSPrivateCloudMetricsReceived *)self clientTraceId];
  if (clientTraceId3)
  {
    v8 = clientTraceId3;
    clientTraceId4 = [(GMSSchemaGMSPrivateCloudMetricsReceived *)self clientTraceId];
    clientTraceId5 = [equalCopy clientTraceId];
    v11 = [clientTraceId4 isEqual:clientTraceId5];

    if (!v11)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  clientTraceId = [(GMSSchemaGMSPrivateCloudMetricsReceived *)self gmsPrivateCloudMetrics];
  clientTraceId2 = [equalCopy gmsPrivateCloudMetrics];
  if ((clientTraceId != 0) == (clientTraceId2 == 0))
  {
LABEL_11:

    goto LABEL_12;
  }

  gmsPrivateCloudMetrics = [(GMSSchemaGMSPrivateCloudMetricsReceived *)self gmsPrivateCloudMetrics];
  if (gmsPrivateCloudMetrics)
  {
    v13 = gmsPrivateCloudMetrics;
    gmsPrivateCloudMetrics2 = [(GMSSchemaGMSPrivateCloudMetricsReceived *)self gmsPrivateCloudMetrics];
    gmsPrivateCloudMetrics3 = [equalCopy gmsPrivateCloudMetrics];
    v16 = [gmsPrivateCloudMetrics2 isEqual:gmsPrivateCloudMetrics3];

    if (!v16)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  if ((*&self->_has & 1) == (equalCopy[28] & 1))
  {
    if ((*&self->_has & 1) == 0 || (gmsCaller = self->_gmsCaller, gmsCaller == [equalCopy gmsCaller]))
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

- (void)writeTo:(id)to
{
  toCopy = to;
  clientTraceId = [(GMSSchemaGMSPrivateCloudMetricsReceived *)self clientTraceId];

  if (clientTraceId)
  {
    clientTraceId2 = [(GMSSchemaGMSPrivateCloudMetricsReceived *)self clientTraceId];
    PBDataWriterWriteSubmessage();
  }

  gmsPrivateCloudMetrics = [(GMSSchemaGMSPrivateCloudMetricsReceived *)self gmsPrivateCloudMetrics];

  if (gmsPrivateCloudMetrics)
  {
    gmsPrivateCloudMetrics2 = [(GMSSchemaGMSPrivateCloudMetricsReceived *)self gmsPrivateCloudMetrics];
    PBDataWriterWriteSubmessage();
  }

  if (*&self->_has)
  {
    PBDataWriterWriteInt32Field();
  }
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  policyCopy = policy;
  v13.receiver = self;
  v13.super_class = GMSSchemaGMSPrivateCloudMetricsReceived;
  v5 = [(SISchemaInstrumentationMessage *)&v13 applySensitiveConditionsPolicy:policyCopy];
  clientTraceId = [(GMSSchemaGMSPrivateCloudMetricsReceived *)self clientTraceId];
  v7 = [clientTraceId applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v7 suppressMessage];

  if (suppressMessage)
  {
    [(GMSSchemaGMSPrivateCloudMetricsReceived *)self deleteClientTraceId];
  }

  gmsPrivateCloudMetrics = [(GMSSchemaGMSPrivateCloudMetricsReceived *)self gmsPrivateCloudMetrics];
  v10 = [gmsPrivateCloudMetrics applySensitiveConditionsPolicy:policyCopy];
  suppressMessage2 = [v10 suppressMessage];

  if (suppressMessage2)
  {
    [(GMSSchemaGMSPrivateCloudMetricsReceived *)self deleteGmsPrivateCloudMetrics];
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