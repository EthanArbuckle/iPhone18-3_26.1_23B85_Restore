@interface SADSchemaSADClientEvent
+ (id)getInnerTypeStringByTag:(unint64_t)a3;
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (SADSchemaSADAvailableAssetDailyStatus)availableAssetDailyStatus;
- (SADSchemaSADClientEvent)initWithDictionary:(id)a3;
- (SADSchemaSADClientEvent)initWithJSON:(id)a3;
- (SADSchemaSADImmediateDownloadTriggered)immediateDownloadTriggered;
- (SADSchemaSADIntelligenceFeatureAvailabilityChangeStatus)intelligenceFeatureAvailabilityChangeStatus;
- (SADSchemaSADIntelligenceFeatureAvailabilityDetailedStatus)intelligenceFeatureAvailabilityDetailedStatus;
- (SADSchemaSADUODAssetsPrepared)uodAssetsPrepared;
- (SISchemaInstrumentationMessage)innerEvent;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)qualifiedMessageName;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)deleteAvailableAssetDailyStatus;
- (void)deleteImmediateDownloadTriggered;
- (void)deleteIntelligenceFeatureAvailabilityChangeStatus;
- (void)deleteIntelligenceFeatureAvailabilityDetailedStatus;
- (void)deleteUodAssetsPrepared;
- (void)setAvailableAssetDailyStatus:(id)a3;
- (void)setImmediateDownloadTriggered:(id)a3;
- (void)setIntelligenceFeatureAvailabilityChangeStatus:(id)a3;
- (void)setIntelligenceFeatureAvailabilityDetailedStatus:(id)a3;
- (void)setUodAssetsPrepared:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation SADSchemaSADClientEvent

- (SADSchemaSADClientEvent)initWithDictionary:(id)a3
{
  v4 = a3;
  v18.receiver = self;
  v18.super_class = SADSchemaSADClientEvent;
  v5 = [(SADSchemaSADClientEvent *)&v18 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"uodAssetsPrepared"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[SADSchemaSADUODAssetsPrepared alloc] initWithDictionary:v6];
      [(SADSchemaSADClientEvent *)v5 setUodAssetsPrepared:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"availableAssetDailyStatus"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[SADSchemaSADAvailableAssetDailyStatus alloc] initWithDictionary:v8];
      [(SADSchemaSADClientEvent *)v5 setAvailableAssetDailyStatus:v9];
    }

    v10 = [v4 objectForKeyedSubscript:@"immediateDownloadTriggered"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [[SADSchemaSADImmediateDownloadTriggered alloc] initWithDictionary:v10];
      [(SADSchemaSADClientEvent *)v5 setImmediateDownloadTriggered:v11];
    }

    v12 = [v4 objectForKeyedSubscript:@"intelligenceFeatureAvailabilityDetailedStatus"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [[SADSchemaSADIntelligenceFeatureAvailabilityDetailedStatus alloc] initWithDictionary:v12];
      [(SADSchemaSADClientEvent *)v5 setIntelligenceFeatureAvailabilityDetailedStatus:v13];
    }

    v14 = [v4 objectForKeyedSubscript:@"intelligenceFeatureAvailabilityChangeStatus"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = [[SADSchemaSADIntelligenceFeatureAvailabilityChangeStatus alloc] initWithDictionary:v14];
      [(SADSchemaSADClientEvent *)v5 setIntelligenceFeatureAvailabilityChangeStatus:v15];
    }

    v16 = v5;
  }

  return v5;
}

- (SADSchemaSADClientEvent)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(SADSchemaSADClientEvent *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(SADSchemaSADClientEvent *)self dictionaryRepresentation];
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
  if (self->_availableAssetDailyStatus)
  {
    v4 = [(SADSchemaSADClientEvent *)self availableAssetDailyStatus];
    v5 = [v4 dictionaryRepresentation];
    if (v5)
    {
      [v3 setObject:v5 forKeyedSubscript:@"availableAssetDailyStatus"];
    }

    else
    {
      v6 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v6 forKeyedSubscript:@"availableAssetDailyStatus"];
    }
  }

  if (self->_immediateDownloadTriggered)
  {
    v7 = [(SADSchemaSADClientEvent *)self immediateDownloadTriggered];
    v8 = [v7 dictionaryRepresentation];
    if (v8)
    {
      [v3 setObject:v8 forKeyedSubscript:@"immediateDownloadTriggered"];
    }

    else
    {
      v9 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v9 forKeyedSubscript:@"immediateDownloadTriggered"];
    }
  }

  if (self->_intelligenceFeatureAvailabilityChangeStatus)
  {
    v10 = [(SADSchemaSADClientEvent *)self intelligenceFeatureAvailabilityChangeStatus];
    v11 = [v10 dictionaryRepresentation];
    if (v11)
    {
      [v3 setObject:v11 forKeyedSubscript:@"intelligenceFeatureAvailabilityChangeStatus"];
    }

    else
    {
      v12 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v12 forKeyedSubscript:@"intelligenceFeatureAvailabilityChangeStatus"];
    }
  }

  if (self->_intelligenceFeatureAvailabilityDetailedStatus)
  {
    v13 = [(SADSchemaSADClientEvent *)self intelligenceFeatureAvailabilityDetailedStatus];
    v14 = [v13 dictionaryRepresentation];
    if (v14)
    {
      [v3 setObject:v14 forKeyedSubscript:@"intelligenceFeatureAvailabilityDetailedStatus"];
    }

    else
    {
      v15 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v15 forKeyedSubscript:@"intelligenceFeatureAvailabilityDetailedStatus"];
    }
  }

  if (self->_uodAssetsPrepared)
  {
    v16 = [(SADSchemaSADClientEvent *)self uodAssetsPrepared];
    v17 = [v16 dictionaryRepresentation];
    if (v17)
    {
      [v3 setObject:v17 forKeyedSubscript:@"uodAssetsPrepared"];
    }

    else
    {
      v18 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v18 forKeyedSubscript:@"uodAssetsPrepared"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
}

- (unint64_t)hash
{
  v3 = [(SADSchemaSADUODAssetsPrepared *)self->_uodAssetsPrepared hash];
  v4 = [(SADSchemaSADAvailableAssetDailyStatus *)self->_availableAssetDailyStatus hash]^ v3;
  v5 = [(SADSchemaSADImmediateDownloadTriggered *)self->_immediateDownloadTriggered hash];
  v6 = v4 ^ v5 ^ [(SADSchemaSADIntelligenceFeatureAvailabilityDetailedStatus *)self->_intelligenceFeatureAvailabilityDetailedStatus hash];
  return v6 ^ [(SADSchemaSADIntelligenceFeatureAvailabilityChangeStatus *)self->_intelligenceFeatureAvailabilityChangeStatus hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_28;
  }

  whichEvent_Type = self->_whichEvent_Type;
  if (whichEvent_Type != [v4 whichEvent_Type])
  {
    goto LABEL_28;
  }

  v6 = [(SADSchemaSADClientEvent *)self uodAssetsPrepared];
  v7 = [v4 uodAssetsPrepared];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_27;
  }

  v8 = [(SADSchemaSADClientEvent *)self uodAssetsPrepared];
  if (v8)
  {
    v9 = v8;
    v10 = [(SADSchemaSADClientEvent *)self uodAssetsPrepared];
    v11 = [v4 uodAssetsPrepared];
    v12 = [v10 isEqual:v11];

    if (!v12)
    {
      goto LABEL_28;
    }
  }

  else
  {
  }

  v6 = [(SADSchemaSADClientEvent *)self availableAssetDailyStatus];
  v7 = [v4 availableAssetDailyStatus];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_27;
  }

  v13 = [(SADSchemaSADClientEvent *)self availableAssetDailyStatus];
  if (v13)
  {
    v14 = v13;
    v15 = [(SADSchemaSADClientEvent *)self availableAssetDailyStatus];
    v16 = [v4 availableAssetDailyStatus];
    v17 = [v15 isEqual:v16];

    if (!v17)
    {
      goto LABEL_28;
    }
  }

  else
  {
  }

  v6 = [(SADSchemaSADClientEvent *)self immediateDownloadTriggered];
  v7 = [v4 immediateDownloadTriggered];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_27;
  }

  v18 = [(SADSchemaSADClientEvent *)self immediateDownloadTriggered];
  if (v18)
  {
    v19 = v18;
    v20 = [(SADSchemaSADClientEvent *)self immediateDownloadTriggered];
    v21 = [v4 immediateDownloadTriggered];
    v22 = [v20 isEqual:v21];

    if (!v22)
    {
      goto LABEL_28;
    }
  }

  else
  {
  }

  v6 = [(SADSchemaSADClientEvent *)self intelligenceFeatureAvailabilityDetailedStatus];
  v7 = [v4 intelligenceFeatureAvailabilityDetailedStatus];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_27;
  }

  v23 = [(SADSchemaSADClientEvent *)self intelligenceFeatureAvailabilityDetailedStatus];
  if (v23)
  {
    v24 = v23;
    v25 = [(SADSchemaSADClientEvent *)self intelligenceFeatureAvailabilityDetailedStatus];
    v26 = [v4 intelligenceFeatureAvailabilityDetailedStatus];
    v27 = [v25 isEqual:v26];

    if (!v27)
    {
      goto LABEL_28;
    }
  }

  else
  {
  }

  v6 = [(SADSchemaSADClientEvent *)self intelligenceFeatureAvailabilityChangeStatus];
  v7 = [v4 intelligenceFeatureAvailabilityChangeStatus];
  if ((v6 != 0) != (v7 == 0))
  {
    v28 = [(SADSchemaSADClientEvent *)self intelligenceFeatureAvailabilityChangeStatus];
    if (!v28)
    {

LABEL_31:
      v33 = 1;
      goto LABEL_29;
    }

    v29 = v28;
    v30 = [(SADSchemaSADClientEvent *)self intelligenceFeatureAvailabilityChangeStatus];
    v31 = [v4 intelligenceFeatureAvailabilityChangeStatus];
    v32 = [v30 isEqual:v31];

    if (v32)
    {
      goto LABEL_31;
    }
  }

  else
  {
LABEL_27:
  }

LABEL_28:
  v33 = 0;
LABEL_29:

  return v33;
}

- (void)writeTo:(id)a3
{
  v15 = a3;
  v4 = [(SADSchemaSADClientEvent *)self uodAssetsPrepared];

  if (v4)
  {
    v5 = [(SADSchemaSADClientEvent *)self uodAssetsPrepared];
    PBDataWriterWriteSubmessage();
  }

  v6 = [(SADSchemaSADClientEvent *)self availableAssetDailyStatus];

  if (v6)
  {
    v7 = [(SADSchemaSADClientEvent *)self availableAssetDailyStatus];
    PBDataWriterWriteSubmessage();
  }

  v8 = [(SADSchemaSADClientEvent *)self immediateDownloadTriggered];

  if (v8)
  {
    v9 = [(SADSchemaSADClientEvent *)self immediateDownloadTriggered];
    PBDataWriterWriteSubmessage();
  }

  v10 = [(SADSchemaSADClientEvent *)self intelligenceFeatureAvailabilityDetailedStatus];

  if (v10)
  {
    v11 = [(SADSchemaSADClientEvent *)self intelligenceFeatureAvailabilityDetailedStatus];
    PBDataWriterWriteSubmessage();
  }

  v12 = [(SADSchemaSADClientEvent *)self intelligenceFeatureAvailabilityChangeStatus];

  v13 = v15;
  if (v12)
  {
    v14 = [(SADSchemaSADClientEvent *)self intelligenceFeatureAvailabilityChangeStatus];
    PBDataWriterWriteSubmessage();

    v13 = v15;
  }
}

- (void)deleteIntelligenceFeatureAvailabilityChangeStatus
{
  if (self->_whichEvent_Type == 105)
  {
    self->_whichEvent_Type = 0;
    self->_intelligenceFeatureAvailabilityChangeStatus = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (SADSchemaSADIntelligenceFeatureAvailabilityChangeStatus)intelligenceFeatureAvailabilityChangeStatus
{
  if (self->_whichEvent_Type == 105)
  {
    v3 = self->_intelligenceFeatureAvailabilityChangeStatus;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setIntelligenceFeatureAvailabilityChangeStatus:(id)a3
{
  v4 = a3;
  uodAssetsPrepared = self->_uodAssetsPrepared;
  self->_uodAssetsPrepared = 0;

  availableAssetDailyStatus = self->_availableAssetDailyStatus;
  self->_availableAssetDailyStatus = 0;

  immediateDownloadTriggered = self->_immediateDownloadTriggered;
  self->_immediateDownloadTriggered = 0;

  intelligenceFeatureAvailabilityDetailedStatus = self->_intelligenceFeatureAvailabilityDetailedStatus;
  self->_intelligenceFeatureAvailabilityDetailedStatus = 0;

  v9 = 105;
  if (!v4)
  {
    v9 = 0;
  }

  self->_whichEvent_Type = v9;
  intelligenceFeatureAvailabilityChangeStatus = self->_intelligenceFeatureAvailabilityChangeStatus;
  self->_intelligenceFeatureAvailabilityChangeStatus = v4;
}

- (void)deleteIntelligenceFeatureAvailabilityDetailedStatus
{
  if (self->_whichEvent_Type == 104)
  {
    self->_whichEvent_Type = 0;
    self->_intelligenceFeatureAvailabilityDetailedStatus = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (SADSchemaSADIntelligenceFeatureAvailabilityDetailedStatus)intelligenceFeatureAvailabilityDetailedStatus
{
  if (self->_whichEvent_Type == 104)
  {
    v3 = self->_intelligenceFeatureAvailabilityDetailedStatus;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setIntelligenceFeatureAvailabilityDetailedStatus:(id)a3
{
  v4 = a3;
  uodAssetsPrepared = self->_uodAssetsPrepared;
  self->_uodAssetsPrepared = 0;

  availableAssetDailyStatus = self->_availableAssetDailyStatus;
  self->_availableAssetDailyStatus = 0;

  immediateDownloadTriggered = self->_immediateDownloadTriggered;
  self->_immediateDownloadTriggered = 0;

  intelligenceFeatureAvailabilityChangeStatus = self->_intelligenceFeatureAvailabilityChangeStatus;
  self->_intelligenceFeatureAvailabilityChangeStatus = 0;

  v9 = 104;
  if (!v4)
  {
    v9 = 0;
  }

  self->_whichEvent_Type = v9;
  intelligenceFeatureAvailabilityDetailedStatus = self->_intelligenceFeatureAvailabilityDetailedStatus;
  self->_intelligenceFeatureAvailabilityDetailedStatus = v4;
}

- (void)deleteImmediateDownloadTriggered
{
  if (self->_whichEvent_Type == 103)
  {
    self->_whichEvent_Type = 0;
    self->_immediateDownloadTriggered = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (SADSchemaSADImmediateDownloadTriggered)immediateDownloadTriggered
{
  if (self->_whichEvent_Type == 103)
  {
    v3 = self->_immediateDownloadTriggered;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setImmediateDownloadTriggered:(id)a3
{
  v4 = a3;
  uodAssetsPrepared = self->_uodAssetsPrepared;
  self->_uodAssetsPrepared = 0;

  availableAssetDailyStatus = self->_availableAssetDailyStatus;
  self->_availableAssetDailyStatus = 0;

  intelligenceFeatureAvailabilityDetailedStatus = self->_intelligenceFeatureAvailabilityDetailedStatus;
  self->_intelligenceFeatureAvailabilityDetailedStatus = 0;

  intelligenceFeatureAvailabilityChangeStatus = self->_intelligenceFeatureAvailabilityChangeStatus;
  self->_intelligenceFeatureAvailabilityChangeStatus = 0;

  v9 = 103;
  if (!v4)
  {
    v9 = 0;
  }

  self->_whichEvent_Type = v9;
  immediateDownloadTriggered = self->_immediateDownloadTriggered;
  self->_immediateDownloadTriggered = v4;
}

- (void)deleteAvailableAssetDailyStatus
{
  if (self->_whichEvent_Type == 102)
  {
    self->_whichEvent_Type = 0;
    self->_availableAssetDailyStatus = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (SADSchemaSADAvailableAssetDailyStatus)availableAssetDailyStatus
{
  if (self->_whichEvent_Type == 102)
  {
    v3 = self->_availableAssetDailyStatus;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setAvailableAssetDailyStatus:(id)a3
{
  v4 = a3;
  uodAssetsPrepared = self->_uodAssetsPrepared;
  self->_uodAssetsPrepared = 0;

  immediateDownloadTriggered = self->_immediateDownloadTriggered;
  self->_immediateDownloadTriggered = 0;

  intelligenceFeatureAvailabilityDetailedStatus = self->_intelligenceFeatureAvailabilityDetailedStatus;
  self->_intelligenceFeatureAvailabilityDetailedStatus = 0;

  intelligenceFeatureAvailabilityChangeStatus = self->_intelligenceFeatureAvailabilityChangeStatus;
  self->_intelligenceFeatureAvailabilityChangeStatus = 0;

  v9 = 102;
  if (!v4)
  {
    v9 = 0;
  }

  self->_whichEvent_Type = v9;
  availableAssetDailyStatus = self->_availableAssetDailyStatus;
  self->_availableAssetDailyStatus = v4;
}

- (void)deleteUodAssetsPrepared
{
  if (self->_whichEvent_Type == 101)
  {
    self->_whichEvent_Type = 0;
    self->_uodAssetsPrepared = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (SADSchemaSADUODAssetsPrepared)uodAssetsPrepared
{
  if (self->_whichEvent_Type == 101)
  {
    v3 = self->_uodAssetsPrepared;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setUodAssetsPrepared:(id)a3
{
  v4 = a3;
  availableAssetDailyStatus = self->_availableAssetDailyStatus;
  self->_availableAssetDailyStatus = 0;

  immediateDownloadTriggered = self->_immediateDownloadTriggered;
  self->_immediateDownloadTriggered = 0;

  intelligenceFeatureAvailabilityDetailedStatus = self->_intelligenceFeatureAvailabilityDetailedStatus;
  self->_intelligenceFeatureAvailabilityDetailedStatus = 0;

  intelligenceFeatureAvailabilityChangeStatus = self->_intelligenceFeatureAvailabilityChangeStatus;
  self->_intelligenceFeatureAvailabilityChangeStatus = 0;

  v9 = 101;
  if (!v4)
  {
    v9 = 0;
  }

  self->_whichEvent_Type = v9;
  uodAssetsPrepared = self->_uodAssetsPrepared;
  self->_uodAssetsPrepared = v4;
}

- (id)qualifiedMessageName
{
  v2 = [(SADSchemaSADClientEvent *)self whichEvent_Type];
  if (v2 - 101 > 4)
  {
    return @"com.apple.aiml.siri.sad.SADClientEvent";
  }

  else
  {
    return off_1E78E23E0[v2 - 101];
  }
}

- (id)applySensitiveConditionsPolicy:(id)a3
{
  v4 = a3;
  v22.receiver = self;
  v22.super_class = SADSchemaSADClientEvent;
  v5 = [(SISchemaInstrumentationMessage *)&v22 applySensitiveConditionsPolicy:v4];
  v6 = [(SADSchemaSADClientEvent *)self uodAssetsPrepared];
  v7 = [v6 applySensitiveConditionsPolicy:v4];
  v8 = [v7 suppressMessage];

  if (v8)
  {
    [(SADSchemaSADClientEvent *)self deleteUodAssetsPrepared];
  }

  v9 = [(SADSchemaSADClientEvent *)self availableAssetDailyStatus];
  v10 = [v9 applySensitiveConditionsPolicy:v4];
  v11 = [v10 suppressMessage];

  if (v11)
  {
    [(SADSchemaSADClientEvent *)self deleteAvailableAssetDailyStatus];
  }

  v12 = [(SADSchemaSADClientEvent *)self immediateDownloadTriggered];
  v13 = [v12 applySensitiveConditionsPolicy:v4];
  v14 = [v13 suppressMessage];

  if (v14)
  {
    [(SADSchemaSADClientEvent *)self deleteImmediateDownloadTriggered];
  }

  v15 = [(SADSchemaSADClientEvent *)self intelligenceFeatureAvailabilityDetailedStatus];
  v16 = [v15 applySensitiveConditionsPolicy:v4];
  v17 = [v16 suppressMessage];

  if (v17)
  {
    [(SADSchemaSADClientEvent *)self deleteIntelligenceFeatureAvailabilityDetailedStatus];
  }

  v18 = [(SADSchemaSADClientEvent *)self intelligenceFeatureAvailabilityChangeStatus];
  v19 = [v18 applySensitiveConditionsPolicy:v4];
  v20 = [v19 suppressMessage];

  if (v20)
  {
    [(SADSchemaSADClientEvent *)self deleteIntelligenceFeatureAvailabilityChangeStatus];
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
  v3 = [(SADSchemaSADClientEvent *)self whichEvent_Type];
  if (v3 - 101 > 4)
  {
    v4 = 0;
  }

  else
  {
    v4 = *(&self->super.super.super.super.isa + *off_1E78EB058[v3 - 101]);
  }

  return v4;
}

+ (id)getInnerTypeStringByTag:(unint64_t)a3
{
  if (a3 - 101 > 4)
  {
    return 0;
  }

  else
  {
    return off_1E78EB080[a3 - 101];
  }
}

@end