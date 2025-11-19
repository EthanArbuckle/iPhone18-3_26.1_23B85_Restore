@interface ORCHSchemaORCHIntelligenceFlowSubRequestFallback
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (ORCHSchemaORCHIntelligenceFlowSubRequestFallback)initWithDictionary:(id)a3;
- (ORCHSchemaORCHIntelligenceFlowSubRequestFallback)initWithJSON:(id)a3;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (void)writeTo:(id)a3;
@end

@implementation ORCHSchemaORCHIntelligenceFlowSubRequestFallback

- (ORCHSchemaORCHIntelligenceFlowSubRequestFallback)initWithDictionary:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = ORCHSchemaORCHIntelligenceFlowSubRequestFallback;
  v5 = [(ORCHSchemaORCHIntelligenceFlowSubRequestFallback *)&v12 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"originSubRequestId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[SISchemaUUID alloc] initWithDictionary:v6];
      [(ORCHSchemaORCHIntelligenceFlowSubRequestFallback *)v5 setOriginSubRequestId:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"fallbackSubRequestId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[SISchemaUUID alloc] initWithDictionary:v8];
      [(ORCHSchemaORCHIntelligenceFlowSubRequestFallback *)v5 setFallbackSubRequestId:v9];
    }

    v10 = v5;
  }

  return v5;
}

- (ORCHSchemaORCHIntelligenceFlowSubRequestFallback)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(ORCHSchemaORCHIntelligenceFlowSubRequestFallback *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(ORCHSchemaORCHIntelligenceFlowSubRequestFallback *)self dictionaryRepresentation];
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
  if (self->_fallbackSubRequestId)
  {
    v4 = [(ORCHSchemaORCHIntelligenceFlowSubRequestFallback *)self fallbackSubRequestId];
    v5 = [v4 dictionaryRepresentation];
    if (v5)
    {
      [v3 setObject:v5 forKeyedSubscript:@"fallbackSubRequestId"];
    }

    else
    {
      v6 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v6 forKeyedSubscript:@"fallbackSubRequestId"];
    }
  }

  if (self->_originSubRequestId)
  {
    v7 = [(ORCHSchemaORCHIntelligenceFlowSubRequestFallback *)self originSubRequestId];
    v8 = [v7 dictionaryRepresentation];
    if (v8)
    {
      [v3 setObject:v8 forKeyedSubscript:@"originSubRequestId"];
    }

    else
    {
      v9 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v9 forKeyedSubscript:@"originSubRequestId"];
    }
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

  v5 = [(ORCHSchemaORCHIntelligenceFlowSubRequestFallback *)self originSubRequestId];
  v6 = [v4 originSubRequestId];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_11;
  }

  v7 = [(ORCHSchemaORCHIntelligenceFlowSubRequestFallback *)self originSubRequestId];
  if (v7)
  {
    v8 = v7;
    v9 = [(ORCHSchemaORCHIntelligenceFlowSubRequestFallback *)self originSubRequestId];
    v10 = [v4 originSubRequestId];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  v5 = [(ORCHSchemaORCHIntelligenceFlowSubRequestFallback *)self fallbackSubRequestId];
  v6 = [v4 fallbackSubRequestId];
  if ((v5 != 0) != (v6 == 0))
  {
    v12 = [(ORCHSchemaORCHIntelligenceFlowSubRequestFallback *)self fallbackSubRequestId];
    if (!v12)
    {

LABEL_15:
      v17 = 1;
      goto LABEL_13;
    }

    v13 = v12;
    v14 = [(ORCHSchemaORCHIntelligenceFlowSubRequestFallback *)self fallbackSubRequestId];
    v15 = [v4 fallbackSubRequestId];
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
  v8 = a3;
  v4 = [(ORCHSchemaORCHIntelligenceFlowSubRequestFallback *)self originSubRequestId];

  if (v4)
  {
    v5 = [(ORCHSchemaORCHIntelligenceFlowSubRequestFallback *)self originSubRequestId];
    PBDataWriterWriteSubmessage();
  }

  v6 = [(ORCHSchemaORCHIntelligenceFlowSubRequestFallback *)self fallbackSubRequestId];

  if (v6)
  {
    v7 = [(ORCHSchemaORCHIntelligenceFlowSubRequestFallback *)self fallbackSubRequestId];
    PBDataWriterWriteSubmessage();
  }
}

- (id)applySensitiveConditionsPolicy:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = ORCHSchemaORCHIntelligenceFlowSubRequestFallback;
  v5 = [(SISchemaInstrumentationMessage *)&v13 applySensitiveConditionsPolicy:v4];
  v6 = [(ORCHSchemaORCHIntelligenceFlowSubRequestFallback *)self originSubRequestId];
  v7 = [v6 applySensitiveConditionsPolicy:v4];
  v8 = [v7 suppressMessage];

  if (v8)
  {
    [(ORCHSchemaORCHIntelligenceFlowSubRequestFallback *)self deleteOriginSubRequestId];
  }

  v9 = [(ORCHSchemaORCHIntelligenceFlowSubRequestFallback *)self fallbackSubRequestId];
  v10 = [v9 applySensitiveConditionsPolicy:v4];
  v11 = [v10 suppressMessage];

  if (v11)
  {
    [(ORCHSchemaORCHIntelligenceFlowSubRequestFallback *)self deleteFallbackSubRequestId];
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