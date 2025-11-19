@interface GMSSchemaGMSPrivateCloudMetricsReceived
- (BOOL)isEqual:(id)a3;
- (GMSSchemaGMSPrivateCloudMetricsReceived)initWithDictionary:(id)a3;
- (GMSSchemaGMSPrivateCloudMetricsReceived)initWithJSON:(id)a3;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)writeTo:(id)a3;
@end

@implementation GMSSchemaGMSPrivateCloudMetricsReceived

- (GMSSchemaGMSPrivateCloudMetricsReceived)initWithDictionary:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = GMSSchemaGMSPrivateCloudMetricsReceived;
  v5 = [(GMSSchemaGMSPrivateCloudMetricsReceived *)&v13 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"clientTraceId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[SISchemaUUID alloc] initWithDictionary:v6];
      [(GMSSchemaGMSPrivateCloudMetricsReceived *)v5 setClientTraceId:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"gmsPrivateCloudMetrics"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[GMSSchemaGMSPrivateCloudMetrics alloc] initWithDictionary:v8];
      [(GMSSchemaGMSPrivateCloudMetricsReceived *)v5 setGmsPrivateCloudMetrics:v9];
    }

    v10 = [v4 objectForKeyedSubscript:@"gmsCaller"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[GMSSchemaGMSPrivateCloudMetricsReceived setGmsCaller:](v5, "setGmsCaller:", [v10 intValue]);
    }

    v11 = v5;
  }

  return v5;
}

- (GMSSchemaGMSPrivateCloudMetricsReceived)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(GMSSchemaGMSPrivateCloudMetricsReceived *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(GMSSchemaGMSPrivateCloudMetricsReceived *)self dictionaryRepresentation];
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
  if (self->_clientTraceId)
  {
    v4 = [(GMSSchemaGMSPrivateCloudMetricsReceived *)self clientTraceId];
    v5 = [v4 dictionaryRepresentation];
    if (v5)
    {
      [v3 setObject:v5 forKeyedSubscript:@"clientTraceId"];
    }

    else
    {
      v6 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v6 forKeyedSubscript:@"clientTraceId"];
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

    [v3 setObject:v8 forKeyedSubscript:@"gmsCaller"];
  }

  if (self->_gmsPrivateCloudMetrics)
  {
    v9 = [(GMSSchemaGMSPrivateCloudMetricsReceived *)self gmsPrivateCloudMetrics];
    v10 = [v9 dictionaryRepresentation];
    if (v10)
    {
      [v3 setObject:v10 forKeyedSubscript:@"gmsPrivateCloudMetrics"];
    }

    else
    {
      v11 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v11 forKeyedSubscript:@"gmsPrivateCloudMetrics"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_12;
  }

  v5 = [(GMSSchemaGMSPrivateCloudMetricsReceived *)self clientTraceId];
  v6 = [v4 clientTraceId];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_11;
  }

  v7 = [(GMSSchemaGMSPrivateCloudMetricsReceived *)self clientTraceId];
  if (v7)
  {
    v8 = v7;
    v9 = [(GMSSchemaGMSPrivateCloudMetricsReceived *)self clientTraceId];
    v10 = [v4 clientTraceId];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  v5 = [(GMSSchemaGMSPrivateCloudMetricsReceived *)self gmsPrivateCloudMetrics];
  v6 = [v4 gmsPrivateCloudMetrics];
  if ((v5 != 0) == (v6 == 0))
  {
LABEL_11:

    goto LABEL_12;
  }

  v12 = [(GMSSchemaGMSPrivateCloudMetricsReceived *)self gmsPrivateCloudMetrics];
  if (v12)
  {
    v13 = v12;
    v14 = [(GMSSchemaGMSPrivateCloudMetricsReceived *)self gmsPrivateCloudMetrics];
    v15 = [v4 gmsPrivateCloudMetrics];
    v16 = [v14 isEqual:v15];

    if (!v16)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  if ((*&self->_has & 1) == (v4[28] & 1))
  {
    if ((*&self->_has & 1) == 0 || (gmsCaller = self->_gmsCaller, gmsCaller == [v4 gmsCaller]))
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
  v8 = a3;
  v4 = [(GMSSchemaGMSPrivateCloudMetricsReceived *)self clientTraceId];

  if (v4)
  {
    v5 = [(GMSSchemaGMSPrivateCloudMetricsReceived *)self clientTraceId];
    PBDataWriterWriteSubmessage();
  }

  v6 = [(GMSSchemaGMSPrivateCloudMetricsReceived *)self gmsPrivateCloudMetrics];

  if (v6)
  {
    v7 = [(GMSSchemaGMSPrivateCloudMetricsReceived *)self gmsPrivateCloudMetrics];
    PBDataWriterWriteSubmessage();
  }

  if (*&self->_has)
  {
    PBDataWriterWriteInt32Field();
  }
}

- (id)applySensitiveConditionsPolicy:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = GMSSchemaGMSPrivateCloudMetricsReceived;
  v5 = [(SISchemaInstrumentationMessage *)&v13 applySensitiveConditionsPolicy:v4];
  v6 = [(GMSSchemaGMSPrivateCloudMetricsReceived *)self clientTraceId];
  v7 = [v6 applySensitiveConditionsPolicy:v4];
  v8 = [v7 suppressMessage];

  if (v8)
  {
    [(GMSSchemaGMSPrivateCloudMetricsReceived *)self deleteClientTraceId];
  }

  v9 = [(GMSSchemaGMSPrivateCloudMetricsReceived *)self gmsPrivateCloudMetrics];
  v10 = [v9 applySensitiveConditionsPolicy:v4];
  v11 = [v10 suppressMessage];

  if (v11)
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