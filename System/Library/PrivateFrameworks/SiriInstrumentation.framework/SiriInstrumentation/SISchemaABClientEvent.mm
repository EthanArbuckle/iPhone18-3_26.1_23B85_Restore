@interface SISchemaABClientEvent
+ (id)getInnerTypeStringByTag:(unint64_t)a3;
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (SISchemaABClientEvent)initWithDictionary:(id)a3;
- (SISchemaABClientEvent)initWithJSON:(id)a3;
- (SISchemaABExperimentAllocationChanged)allocationChanged;
- (SISchemaABExperimentAssetRetrievalStatusChanged)assetRetrievalStatusChanged;
- (SISchemaABExperimentClientFeatureTriggered)clientFeatureTriggered;
- (SISchemaInstrumentationMessage)innerEvent;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)qualifiedMessageName;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)deleteAllocationChanged;
- (void)deleteAssetRetrievalStatusChanged;
- (void)deleteClientFeatureTriggered;
- (void)setAllocationChanged:(id)a3;
- (void)setAssetRetrievalStatusChanged:(id)a3;
- (void)setClientFeatureTriggered:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation SISchemaABClientEvent

- (SISchemaABClientEvent)initWithDictionary:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = SISchemaABClientEvent;
  v5 = [(SISchemaABClientEvent *)&v16 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"eventMetadata"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[SISchemaABClientEventMetadata alloc] initWithDictionary:v6];
      [(SISchemaABClientEvent *)v5 setEventMetadata:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"allocationChanged"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[SISchemaABExperimentAllocationChanged alloc] initWithDictionary:v8];
      [(SISchemaABClientEvent *)v5 setAllocationChanged:v9];
    }

    v10 = [v4 objectForKeyedSubscript:@"assetRetrievalStatusChanged"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [[SISchemaABExperimentAssetRetrievalStatusChanged alloc] initWithDictionary:v10];
      [(SISchemaABClientEvent *)v5 setAssetRetrievalStatusChanged:v11];
    }

    v12 = [v4 objectForKeyedSubscript:@"clientFeatureTriggered"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [[SISchemaABExperimentClientFeatureTriggered alloc] initWithDictionary:v12];
      [(SISchemaABClientEvent *)v5 setClientFeatureTriggered:v13];
    }

    v14 = v5;
  }

  return v5;
}

- (SISchemaABClientEvent)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(SISchemaABClientEvent *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(SISchemaABClientEvent *)self dictionaryRepresentation];
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
  if (self->_allocationChanged)
  {
    v4 = [(SISchemaABClientEvent *)self allocationChanged];
    v5 = [v4 dictionaryRepresentation];
    if (v5)
    {
      [v3 setObject:v5 forKeyedSubscript:@"allocationChanged"];
    }

    else
    {
      v6 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v6 forKeyedSubscript:@"allocationChanged"];
    }
  }

  if (self->_assetRetrievalStatusChanged)
  {
    v7 = [(SISchemaABClientEvent *)self assetRetrievalStatusChanged];
    v8 = [v7 dictionaryRepresentation];
    if (v8)
    {
      [v3 setObject:v8 forKeyedSubscript:@"assetRetrievalStatusChanged"];
    }

    else
    {
      v9 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v9 forKeyedSubscript:@"assetRetrievalStatusChanged"];
    }
  }

  if (self->_clientFeatureTriggered)
  {
    v10 = [(SISchemaABClientEvent *)self clientFeatureTriggered];
    v11 = [v10 dictionaryRepresentation];
    if (v11)
    {
      [v3 setObject:v11 forKeyedSubscript:@"clientFeatureTriggered"];
    }

    else
    {
      v12 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v12 forKeyedSubscript:@"clientFeatureTriggered"];
    }
  }

  if (self->_eventMetadata)
  {
    v13 = [(SISchemaABClientEvent *)self eventMetadata];
    v14 = [v13 dictionaryRepresentation];
    if (v14)
    {
      [v3 setObject:v14 forKeyedSubscript:@"eventMetadata"];
    }

    else
    {
      v15 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v15 forKeyedSubscript:@"eventMetadata"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
}

- (unint64_t)hash
{
  v3 = [(SISchemaABClientEventMetadata *)self->_eventMetadata hash];
  v4 = [(SISchemaABExperimentAllocationChanged *)self->_allocationChanged hash]^ v3;
  v5 = [(SISchemaABExperimentAssetRetrievalStatusChanged *)self->_assetRetrievalStatusChanged hash];
  return v4 ^ v5 ^ [(SISchemaABExperimentClientFeatureTriggered *)self->_clientFeatureTriggered hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_23;
  }

  whichEvent_Type = self->_whichEvent_Type;
  if (whichEvent_Type != [v4 whichEvent_Type])
  {
    goto LABEL_23;
  }

  v6 = [(SISchemaABClientEvent *)self eventMetadata];
  v7 = [v4 eventMetadata];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_22;
  }

  v8 = [(SISchemaABClientEvent *)self eventMetadata];
  if (v8)
  {
    v9 = v8;
    v10 = [(SISchemaABClientEvent *)self eventMetadata];
    v11 = [v4 eventMetadata];
    v12 = [v10 isEqual:v11];

    if (!v12)
    {
      goto LABEL_23;
    }
  }

  else
  {
  }

  v6 = [(SISchemaABClientEvent *)self allocationChanged];
  v7 = [v4 allocationChanged];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_22;
  }

  v13 = [(SISchemaABClientEvent *)self allocationChanged];
  if (v13)
  {
    v14 = v13;
    v15 = [(SISchemaABClientEvent *)self allocationChanged];
    v16 = [v4 allocationChanged];
    v17 = [v15 isEqual:v16];

    if (!v17)
    {
      goto LABEL_23;
    }
  }

  else
  {
  }

  v6 = [(SISchemaABClientEvent *)self assetRetrievalStatusChanged];
  v7 = [v4 assetRetrievalStatusChanged];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_22;
  }

  v18 = [(SISchemaABClientEvent *)self assetRetrievalStatusChanged];
  if (v18)
  {
    v19 = v18;
    v20 = [(SISchemaABClientEvent *)self assetRetrievalStatusChanged];
    v21 = [v4 assetRetrievalStatusChanged];
    v22 = [v20 isEqual:v21];

    if (!v22)
    {
      goto LABEL_23;
    }
  }

  else
  {
  }

  v6 = [(SISchemaABClientEvent *)self clientFeatureTriggered];
  v7 = [v4 clientFeatureTriggered];
  if ((v6 != 0) != (v7 == 0))
  {
    v23 = [(SISchemaABClientEvent *)self clientFeatureTriggered];
    if (!v23)
    {

LABEL_26:
      v28 = 1;
      goto LABEL_24;
    }

    v24 = v23;
    v25 = [(SISchemaABClientEvent *)self clientFeatureTriggered];
    v26 = [v4 clientFeatureTriggered];
    v27 = [v25 isEqual:v26];

    if (v27)
    {
      goto LABEL_26;
    }
  }

  else
  {
LABEL_22:
  }

LABEL_23:
  v28 = 0;
LABEL_24:

  return v28;
}

- (void)writeTo:(id)a3
{
  v13 = a3;
  v4 = [(SISchemaABClientEvent *)self eventMetadata];

  if (v4)
  {
    v5 = [(SISchemaABClientEvent *)self eventMetadata];
    PBDataWriterWriteSubmessage();
  }

  v6 = [(SISchemaABClientEvent *)self allocationChanged];

  if (v6)
  {
    v7 = [(SISchemaABClientEvent *)self allocationChanged];
    PBDataWriterWriteSubmessage();
  }

  v8 = [(SISchemaABClientEvent *)self assetRetrievalStatusChanged];

  if (v8)
  {
    v9 = [(SISchemaABClientEvent *)self assetRetrievalStatusChanged];
    PBDataWriterWriteSubmessage();
  }

  v10 = [(SISchemaABClientEvent *)self clientFeatureTriggered];

  v11 = v13;
  if (v10)
  {
    v12 = [(SISchemaABClientEvent *)self clientFeatureTriggered];
    PBDataWriterWriteSubmessage();

    v11 = v13;
  }
}

- (void)deleteClientFeatureTriggered
{
  if (self->_whichEvent_Type == 103)
  {
    self->_whichEvent_Type = 0;
    self->_clientFeatureTriggered = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (SISchemaABExperimentClientFeatureTriggered)clientFeatureTriggered
{
  if (self->_whichEvent_Type == 103)
  {
    v3 = self->_clientFeatureTriggered;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setClientFeatureTriggered:(id)a3
{
  v4 = a3;
  allocationChanged = self->_allocationChanged;
  self->_allocationChanged = 0;

  assetRetrievalStatusChanged = self->_assetRetrievalStatusChanged;
  self->_assetRetrievalStatusChanged = 0;

  v7 = 103;
  if (!v4)
  {
    v7 = 0;
  }

  self->_whichEvent_Type = v7;
  clientFeatureTriggered = self->_clientFeatureTriggered;
  self->_clientFeatureTriggered = v4;
}

- (void)deleteAssetRetrievalStatusChanged
{
  if (self->_whichEvent_Type == 102)
  {
    self->_whichEvent_Type = 0;
    self->_assetRetrievalStatusChanged = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (SISchemaABExperimentAssetRetrievalStatusChanged)assetRetrievalStatusChanged
{
  if (self->_whichEvent_Type == 102)
  {
    v3 = self->_assetRetrievalStatusChanged;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setAssetRetrievalStatusChanged:(id)a3
{
  v4 = a3;
  allocationChanged = self->_allocationChanged;
  self->_allocationChanged = 0;

  clientFeatureTriggered = self->_clientFeatureTriggered;
  self->_clientFeatureTriggered = 0;

  v7 = 102;
  if (!v4)
  {
    v7 = 0;
  }

  self->_whichEvent_Type = v7;
  assetRetrievalStatusChanged = self->_assetRetrievalStatusChanged;
  self->_assetRetrievalStatusChanged = v4;
}

- (void)deleteAllocationChanged
{
  if (self->_whichEvent_Type == 101)
  {
    self->_whichEvent_Type = 0;
    self->_allocationChanged = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (SISchemaABExperimentAllocationChanged)allocationChanged
{
  if (self->_whichEvent_Type == 101)
  {
    v3 = self->_allocationChanged;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setAllocationChanged:(id)a3
{
  v4 = a3;
  assetRetrievalStatusChanged = self->_assetRetrievalStatusChanged;
  self->_assetRetrievalStatusChanged = 0;

  clientFeatureTriggered = self->_clientFeatureTriggered;
  self->_clientFeatureTriggered = 0;

  v7 = 101;
  if (!v4)
  {
    v7 = 0;
  }

  self->_whichEvent_Type = v7;
  allocationChanged = self->_allocationChanged;
  self->_allocationChanged = v4;
}

- (id)qualifiedMessageName
{
  v2 = [(SISchemaABClientEvent *)self whichEvent_Type];
  if (v2 - 101 > 2)
  {
    return @"com.apple.aiml.siri.abe.ABClientEvent";
  }

  else
  {
    return off_1E78E2E10[v2 - 101];
  }
}

- (id)applySensitiveConditionsPolicy:(id)a3
{
  v4 = a3;
  v19.receiver = self;
  v19.super_class = SISchemaABClientEvent;
  v5 = [(SISchemaInstrumentationMessage *)&v19 applySensitiveConditionsPolicy:v4];
  v6 = [(SISchemaABClientEvent *)self eventMetadata];
  v7 = [v6 applySensitiveConditionsPolicy:v4];
  v8 = [v7 suppressMessage];

  if (v8)
  {
    [(SISchemaABClientEvent *)self deleteEventMetadata];
  }

  v9 = [(SISchemaABClientEvent *)self allocationChanged];
  v10 = [v9 applySensitiveConditionsPolicy:v4];
  v11 = [v10 suppressMessage];

  if (v11)
  {
    [(SISchemaABClientEvent *)self deleteAllocationChanged];
  }

  v12 = [(SISchemaABClientEvent *)self assetRetrievalStatusChanged];
  v13 = [v12 applySensitiveConditionsPolicy:v4];
  v14 = [v13 suppressMessage];

  if (v14)
  {
    [(SISchemaABClientEvent *)self deleteAssetRetrievalStatusChanged];
  }

  v15 = [(SISchemaABClientEvent *)self clientFeatureTriggered];
  v16 = [v15 applySensitiveConditionsPolicy:v4];
  v17 = [v16 suppressMessage];

  if (v17)
  {
    [(SISchemaABClientEvent *)self deleteClientFeatureTriggered];
  }

  return v5;
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

- (SISchemaInstrumentationMessage)innerEvent
{
  v3 = [(SISchemaABClientEvent *)self whichEvent_Type];
  if (v3 - 101 > 2)
  {
    v4 = 0;
  }

  else
  {
    v4 = *(&self->super.super.super.super.isa + *off_1E78E8CA0[v3 - 101]);
  }

  return v4;
}

+ (id)getInnerTypeStringByTag:(unint64_t)a3
{
  if (a3 - 101 > 2)
  {
    return 0;
  }

  else
  {
    return off_1E78E8CB8[a3 - 101];
  }
}

@end