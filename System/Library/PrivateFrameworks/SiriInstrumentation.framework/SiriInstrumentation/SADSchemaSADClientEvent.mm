@interface SADSchemaSADClientEvent
+ (id)getInnerTypeStringByTag:(unint64_t)tag;
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (SADSchemaSADAvailableAssetDailyStatus)availableAssetDailyStatus;
- (SADSchemaSADClientEvent)initWithDictionary:(id)dictionary;
- (SADSchemaSADClientEvent)initWithJSON:(id)n;
- (SADSchemaSADImmediateDownloadTriggered)immediateDownloadTriggered;
- (SADSchemaSADIntelligenceFeatureAvailabilityChangeStatus)intelligenceFeatureAvailabilityChangeStatus;
- (SADSchemaSADIntelligenceFeatureAvailabilityDetailedStatus)intelligenceFeatureAvailabilityDetailedStatus;
- (SADSchemaSADUODAssetsPrepared)uodAssetsPrepared;
- (SISchemaInstrumentationMessage)innerEvent;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)qualifiedMessageName;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)deleteAvailableAssetDailyStatus;
- (void)deleteImmediateDownloadTriggered;
- (void)deleteIntelligenceFeatureAvailabilityChangeStatus;
- (void)deleteIntelligenceFeatureAvailabilityDetailedStatus;
- (void)deleteUodAssetsPrepared;
- (void)setAvailableAssetDailyStatus:(id)status;
- (void)setImmediateDownloadTriggered:(id)triggered;
- (void)setIntelligenceFeatureAvailabilityChangeStatus:(id)status;
- (void)setIntelligenceFeatureAvailabilityDetailedStatus:(id)status;
- (void)setUodAssetsPrepared:(id)prepared;
- (void)writeTo:(id)to;
@end

@implementation SADSchemaSADClientEvent

- (SADSchemaSADClientEvent)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v18.receiver = self;
  v18.super_class = SADSchemaSADClientEvent;
  v5 = [(SADSchemaSADClientEvent *)&v18 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"uodAssetsPrepared"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[SADSchemaSADUODAssetsPrepared alloc] initWithDictionary:v6];
      [(SADSchemaSADClientEvent *)v5 setUodAssetsPrepared:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"availableAssetDailyStatus"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[SADSchemaSADAvailableAssetDailyStatus alloc] initWithDictionary:v8];
      [(SADSchemaSADClientEvent *)v5 setAvailableAssetDailyStatus:v9];
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"immediateDownloadTriggered"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [[SADSchemaSADImmediateDownloadTriggered alloc] initWithDictionary:v10];
      [(SADSchemaSADClientEvent *)v5 setImmediateDownloadTriggered:v11];
    }

    v12 = [dictionaryCopy objectForKeyedSubscript:@"intelligenceFeatureAvailabilityDetailedStatus"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [[SADSchemaSADIntelligenceFeatureAvailabilityDetailedStatus alloc] initWithDictionary:v12];
      [(SADSchemaSADClientEvent *)v5 setIntelligenceFeatureAvailabilityDetailedStatus:v13];
    }

    v14 = [dictionaryCopy objectForKeyedSubscript:@"intelligenceFeatureAvailabilityChangeStatus"];
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

- (SADSchemaSADClientEvent)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(SADSchemaSADClientEvent *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(SADSchemaSADClientEvent *)self dictionaryRepresentation];
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
  if (self->_availableAssetDailyStatus)
  {
    availableAssetDailyStatus = [(SADSchemaSADClientEvent *)self availableAssetDailyStatus];
    dictionaryRepresentation = [availableAssetDailyStatus dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"availableAssetDailyStatus"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"availableAssetDailyStatus"];
    }
  }

  if (self->_immediateDownloadTriggered)
  {
    immediateDownloadTriggered = [(SADSchemaSADClientEvent *)self immediateDownloadTriggered];
    dictionaryRepresentation2 = [immediateDownloadTriggered dictionaryRepresentation];
    if (dictionaryRepresentation2)
    {
      [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"immediateDownloadTriggered"];
    }

    else
    {
      null2 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null2 forKeyedSubscript:@"immediateDownloadTriggered"];
    }
  }

  if (self->_intelligenceFeatureAvailabilityChangeStatus)
  {
    intelligenceFeatureAvailabilityChangeStatus = [(SADSchemaSADClientEvent *)self intelligenceFeatureAvailabilityChangeStatus];
    dictionaryRepresentation3 = [intelligenceFeatureAvailabilityChangeStatus dictionaryRepresentation];
    if (dictionaryRepresentation3)
    {
      [dictionary setObject:dictionaryRepresentation3 forKeyedSubscript:@"intelligenceFeatureAvailabilityChangeStatus"];
    }

    else
    {
      null3 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null3 forKeyedSubscript:@"intelligenceFeatureAvailabilityChangeStatus"];
    }
  }

  if (self->_intelligenceFeatureAvailabilityDetailedStatus)
  {
    intelligenceFeatureAvailabilityDetailedStatus = [(SADSchemaSADClientEvent *)self intelligenceFeatureAvailabilityDetailedStatus];
    dictionaryRepresentation4 = [intelligenceFeatureAvailabilityDetailedStatus dictionaryRepresentation];
    if (dictionaryRepresentation4)
    {
      [dictionary setObject:dictionaryRepresentation4 forKeyedSubscript:@"intelligenceFeatureAvailabilityDetailedStatus"];
    }

    else
    {
      null4 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null4 forKeyedSubscript:@"intelligenceFeatureAvailabilityDetailedStatus"];
    }
  }

  if (self->_uodAssetsPrepared)
  {
    uodAssetsPrepared = [(SADSchemaSADClientEvent *)self uodAssetsPrepared];
    dictionaryRepresentation5 = [uodAssetsPrepared dictionaryRepresentation];
    if (dictionaryRepresentation5)
    {
      [dictionary setObject:dictionaryRepresentation5 forKeyedSubscript:@"uodAssetsPrepared"];
    }

    else
    {
      null5 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null5 forKeyedSubscript:@"uodAssetsPrepared"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(SADSchemaSADUODAssetsPrepared *)self->_uodAssetsPrepared hash];
  v4 = [(SADSchemaSADAvailableAssetDailyStatus *)self->_availableAssetDailyStatus hash]^ v3;
  v5 = [(SADSchemaSADImmediateDownloadTriggered *)self->_immediateDownloadTriggered hash];
  v6 = v4 ^ v5 ^ [(SADSchemaSADIntelligenceFeatureAvailabilityDetailedStatus *)self->_intelligenceFeatureAvailabilityDetailedStatus hash];
  return v6 ^ [(SADSchemaSADIntelligenceFeatureAvailabilityChangeStatus *)self->_intelligenceFeatureAvailabilityChangeStatus hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_28;
  }

  whichEvent_Type = self->_whichEvent_Type;
  if (whichEvent_Type != [equalCopy whichEvent_Type])
  {
    goto LABEL_28;
  }

  uodAssetsPrepared = [(SADSchemaSADClientEvent *)self uodAssetsPrepared];
  uodAssetsPrepared2 = [equalCopy uodAssetsPrepared];
  if ((uodAssetsPrepared != 0) == (uodAssetsPrepared2 == 0))
  {
    goto LABEL_27;
  }

  uodAssetsPrepared3 = [(SADSchemaSADClientEvent *)self uodAssetsPrepared];
  if (uodAssetsPrepared3)
  {
    v9 = uodAssetsPrepared3;
    uodAssetsPrepared4 = [(SADSchemaSADClientEvent *)self uodAssetsPrepared];
    uodAssetsPrepared5 = [equalCopy uodAssetsPrepared];
    v12 = [uodAssetsPrepared4 isEqual:uodAssetsPrepared5];

    if (!v12)
    {
      goto LABEL_28;
    }
  }

  else
  {
  }

  uodAssetsPrepared = [(SADSchemaSADClientEvent *)self availableAssetDailyStatus];
  uodAssetsPrepared2 = [equalCopy availableAssetDailyStatus];
  if ((uodAssetsPrepared != 0) == (uodAssetsPrepared2 == 0))
  {
    goto LABEL_27;
  }

  availableAssetDailyStatus = [(SADSchemaSADClientEvent *)self availableAssetDailyStatus];
  if (availableAssetDailyStatus)
  {
    v14 = availableAssetDailyStatus;
    availableAssetDailyStatus2 = [(SADSchemaSADClientEvent *)self availableAssetDailyStatus];
    availableAssetDailyStatus3 = [equalCopy availableAssetDailyStatus];
    v17 = [availableAssetDailyStatus2 isEqual:availableAssetDailyStatus3];

    if (!v17)
    {
      goto LABEL_28;
    }
  }

  else
  {
  }

  uodAssetsPrepared = [(SADSchemaSADClientEvent *)self immediateDownloadTriggered];
  uodAssetsPrepared2 = [equalCopy immediateDownloadTriggered];
  if ((uodAssetsPrepared != 0) == (uodAssetsPrepared2 == 0))
  {
    goto LABEL_27;
  }

  immediateDownloadTriggered = [(SADSchemaSADClientEvent *)self immediateDownloadTriggered];
  if (immediateDownloadTriggered)
  {
    v19 = immediateDownloadTriggered;
    immediateDownloadTriggered2 = [(SADSchemaSADClientEvent *)self immediateDownloadTriggered];
    immediateDownloadTriggered3 = [equalCopy immediateDownloadTriggered];
    v22 = [immediateDownloadTriggered2 isEqual:immediateDownloadTriggered3];

    if (!v22)
    {
      goto LABEL_28;
    }
  }

  else
  {
  }

  uodAssetsPrepared = [(SADSchemaSADClientEvent *)self intelligenceFeatureAvailabilityDetailedStatus];
  uodAssetsPrepared2 = [equalCopy intelligenceFeatureAvailabilityDetailedStatus];
  if ((uodAssetsPrepared != 0) == (uodAssetsPrepared2 == 0))
  {
    goto LABEL_27;
  }

  intelligenceFeatureAvailabilityDetailedStatus = [(SADSchemaSADClientEvent *)self intelligenceFeatureAvailabilityDetailedStatus];
  if (intelligenceFeatureAvailabilityDetailedStatus)
  {
    v24 = intelligenceFeatureAvailabilityDetailedStatus;
    intelligenceFeatureAvailabilityDetailedStatus2 = [(SADSchemaSADClientEvent *)self intelligenceFeatureAvailabilityDetailedStatus];
    intelligenceFeatureAvailabilityDetailedStatus3 = [equalCopy intelligenceFeatureAvailabilityDetailedStatus];
    v27 = [intelligenceFeatureAvailabilityDetailedStatus2 isEqual:intelligenceFeatureAvailabilityDetailedStatus3];

    if (!v27)
    {
      goto LABEL_28;
    }
  }

  else
  {
  }

  uodAssetsPrepared = [(SADSchemaSADClientEvent *)self intelligenceFeatureAvailabilityChangeStatus];
  uodAssetsPrepared2 = [equalCopy intelligenceFeatureAvailabilityChangeStatus];
  if ((uodAssetsPrepared != 0) != (uodAssetsPrepared2 == 0))
  {
    intelligenceFeatureAvailabilityChangeStatus = [(SADSchemaSADClientEvent *)self intelligenceFeatureAvailabilityChangeStatus];
    if (!intelligenceFeatureAvailabilityChangeStatus)
    {

LABEL_31:
      v33 = 1;
      goto LABEL_29;
    }

    v29 = intelligenceFeatureAvailabilityChangeStatus;
    intelligenceFeatureAvailabilityChangeStatus2 = [(SADSchemaSADClientEvent *)self intelligenceFeatureAvailabilityChangeStatus];
    intelligenceFeatureAvailabilityChangeStatus3 = [equalCopy intelligenceFeatureAvailabilityChangeStatus];
    v32 = [intelligenceFeatureAvailabilityChangeStatus2 isEqual:intelligenceFeatureAvailabilityChangeStatus3];

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

- (void)writeTo:(id)to
{
  toCopy = to;
  uodAssetsPrepared = [(SADSchemaSADClientEvent *)self uodAssetsPrepared];

  if (uodAssetsPrepared)
  {
    uodAssetsPrepared2 = [(SADSchemaSADClientEvent *)self uodAssetsPrepared];
    PBDataWriterWriteSubmessage();
  }

  availableAssetDailyStatus = [(SADSchemaSADClientEvent *)self availableAssetDailyStatus];

  if (availableAssetDailyStatus)
  {
    availableAssetDailyStatus2 = [(SADSchemaSADClientEvent *)self availableAssetDailyStatus];
    PBDataWriterWriteSubmessage();
  }

  immediateDownloadTriggered = [(SADSchemaSADClientEvent *)self immediateDownloadTriggered];

  if (immediateDownloadTriggered)
  {
    immediateDownloadTriggered2 = [(SADSchemaSADClientEvent *)self immediateDownloadTriggered];
    PBDataWriterWriteSubmessage();
  }

  intelligenceFeatureAvailabilityDetailedStatus = [(SADSchemaSADClientEvent *)self intelligenceFeatureAvailabilityDetailedStatus];

  if (intelligenceFeatureAvailabilityDetailedStatus)
  {
    intelligenceFeatureAvailabilityDetailedStatus2 = [(SADSchemaSADClientEvent *)self intelligenceFeatureAvailabilityDetailedStatus];
    PBDataWriterWriteSubmessage();
  }

  intelligenceFeatureAvailabilityChangeStatus = [(SADSchemaSADClientEvent *)self intelligenceFeatureAvailabilityChangeStatus];

  v13 = toCopy;
  if (intelligenceFeatureAvailabilityChangeStatus)
  {
    intelligenceFeatureAvailabilityChangeStatus2 = [(SADSchemaSADClientEvent *)self intelligenceFeatureAvailabilityChangeStatus];
    PBDataWriterWriteSubmessage();

    v13 = toCopy;
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

- (void)setIntelligenceFeatureAvailabilityChangeStatus:(id)status
{
  statusCopy = status;
  uodAssetsPrepared = self->_uodAssetsPrepared;
  self->_uodAssetsPrepared = 0;

  availableAssetDailyStatus = self->_availableAssetDailyStatus;
  self->_availableAssetDailyStatus = 0;

  immediateDownloadTriggered = self->_immediateDownloadTriggered;
  self->_immediateDownloadTriggered = 0;

  intelligenceFeatureAvailabilityDetailedStatus = self->_intelligenceFeatureAvailabilityDetailedStatus;
  self->_intelligenceFeatureAvailabilityDetailedStatus = 0;

  v9 = 105;
  if (!statusCopy)
  {
    v9 = 0;
  }

  self->_whichEvent_Type = v9;
  intelligenceFeatureAvailabilityChangeStatus = self->_intelligenceFeatureAvailabilityChangeStatus;
  self->_intelligenceFeatureAvailabilityChangeStatus = statusCopy;
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

- (void)setIntelligenceFeatureAvailabilityDetailedStatus:(id)status
{
  statusCopy = status;
  uodAssetsPrepared = self->_uodAssetsPrepared;
  self->_uodAssetsPrepared = 0;

  availableAssetDailyStatus = self->_availableAssetDailyStatus;
  self->_availableAssetDailyStatus = 0;

  immediateDownloadTriggered = self->_immediateDownloadTriggered;
  self->_immediateDownloadTriggered = 0;

  intelligenceFeatureAvailabilityChangeStatus = self->_intelligenceFeatureAvailabilityChangeStatus;
  self->_intelligenceFeatureAvailabilityChangeStatus = 0;

  v9 = 104;
  if (!statusCopy)
  {
    v9 = 0;
  }

  self->_whichEvent_Type = v9;
  intelligenceFeatureAvailabilityDetailedStatus = self->_intelligenceFeatureAvailabilityDetailedStatus;
  self->_intelligenceFeatureAvailabilityDetailedStatus = statusCopy;
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

- (void)setImmediateDownloadTriggered:(id)triggered
{
  triggeredCopy = triggered;
  uodAssetsPrepared = self->_uodAssetsPrepared;
  self->_uodAssetsPrepared = 0;

  availableAssetDailyStatus = self->_availableAssetDailyStatus;
  self->_availableAssetDailyStatus = 0;

  intelligenceFeatureAvailabilityDetailedStatus = self->_intelligenceFeatureAvailabilityDetailedStatus;
  self->_intelligenceFeatureAvailabilityDetailedStatus = 0;

  intelligenceFeatureAvailabilityChangeStatus = self->_intelligenceFeatureAvailabilityChangeStatus;
  self->_intelligenceFeatureAvailabilityChangeStatus = 0;

  v9 = 103;
  if (!triggeredCopy)
  {
    v9 = 0;
  }

  self->_whichEvent_Type = v9;
  immediateDownloadTriggered = self->_immediateDownloadTriggered;
  self->_immediateDownloadTriggered = triggeredCopy;
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

- (void)setAvailableAssetDailyStatus:(id)status
{
  statusCopy = status;
  uodAssetsPrepared = self->_uodAssetsPrepared;
  self->_uodAssetsPrepared = 0;

  immediateDownloadTriggered = self->_immediateDownloadTriggered;
  self->_immediateDownloadTriggered = 0;

  intelligenceFeatureAvailabilityDetailedStatus = self->_intelligenceFeatureAvailabilityDetailedStatus;
  self->_intelligenceFeatureAvailabilityDetailedStatus = 0;

  intelligenceFeatureAvailabilityChangeStatus = self->_intelligenceFeatureAvailabilityChangeStatus;
  self->_intelligenceFeatureAvailabilityChangeStatus = 0;

  v9 = 102;
  if (!statusCopy)
  {
    v9 = 0;
  }

  self->_whichEvent_Type = v9;
  availableAssetDailyStatus = self->_availableAssetDailyStatus;
  self->_availableAssetDailyStatus = statusCopy;
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

- (void)setUodAssetsPrepared:(id)prepared
{
  preparedCopy = prepared;
  availableAssetDailyStatus = self->_availableAssetDailyStatus;
  self->_availableAssetDailyStatus = 0;

  immediateDownloadTriggered = self->_immediateDownloadTriggered;
  self->_immediateDownloadTriggered = 0;

  intelligenceFeatureAvailabilityDetailedStatus = self->_intelligenceFeatureAvailabilityDetailedStatus;
  self->_intelligenceFeatureAvailabilityDetailedStatus = 0;

  intelligenceFeatureAvailabilityChangeStatus = self->_intelligenceFeatureAvailabilityChangeStatus;
  self->_intelligenceFeatureAvailabilityChangeStatus = 0;

  v9 = 101;
  if (!preparedCopy)
  {
    v9 = 0;
  }

  self->_whichEvent_Type = v9;
  uodAssetsPrepared = self->_uodAssetsPrepared;
  self->_uodAssetsPrepared = preparedCopy;
}

- (id)qualifiedMessageName
{
  whichEvent_Type = [(SADSchemaSADClientEvent *)self whichEvent_Type];
  if (whichEvent_Type - 101 > 4)
  {
    return @"com.apple.aiml.siri.sad.SADClientEvent";
  }

  else
  {
    return off_1E78E23E0[whichEvent_Type - 101];
  }
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  policyCopy = policy;
  v22.receiver = self;
  v22.super_class = SADSchemaSADClientEvent;
  v5 = [(SISchemaInstrumentationMessage *)&v22 applySensitiveConditionsPolicy:policyCopy];
  uodAssetsPrepared = [(SADSchemaSADClientEvent *)self uodAssetsPrepared];
  v7 = [uodAssetsPrepared applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v7 suppressMessage];

  if (suppressMessage)
  {
    [(SADSchemaSADClientEvent *)self deleteUodAssetsPrepared];
  }

  availableAssetDailyStatus = [(SADSchemaSADClientEvent *)self availableAssetDailyStatus];
  v10 = [availableAssetDailyStatus applySensitiveConditionsPolicy:policyCopy];
  suppressMessage2 = [v10 suppressMessage];

  if (suppressMessage2)
  {
    [(SADSchemaSADClientEvent *)self deleteAvailableAssetDailyStatus];
  }

  immediateDownloadTriggered = [(SADSchemaSADClientEvent *)self immediateDownloadTriggered];
  v13 = [immediateDownloadTriggered applySensitiveConditionsPolicy:policyCopy];
  suppressMessage3 = [v13 suppressMessage];

  if (suppressMessage3)
  {
    [(SADSchemaSADClientEvent *)self deleteImmediateDownloadTriggered];
  }

  intelligenceFeatureAvailabilityDetailedStatus = [(SADSchemaSADClientEvent *)self intelligenceFeatureAvailabilityDetailedStatus];
  v16 = [intelligenceFeatureAvailabilityDetailedStatus applySensitiveConditionsPolicy:policyCopy];
  suppressMessage4 = [v16 suppressMessage];

  if (suppressMessage4)
  {
    [(SADSchemaSADClientEvent *)self deleteIntelligenceFeatureAvailabilityDetailedStatus];
  }

  intelligenceFeatureAvailabilityChangeStatus = [(SADSchemaSADClientEvent *)self intelligenceFeatureAvailabilityChangeStatus];
  v19 = [intelligenceFeatureAvailabilityChangeStatus applySensitiveConditionsPolicy:policyCopy];
  suppressMessage5 = [v19 suppressMessage];

  if (suppressMessage5)
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
  whichEvent_Type = [(SADSchemaSADClientEvent *)self whichEvent_Type];
  if (whichEvent_Type - 101 > 4)
  {
    v4 = 0;
  }

  else
  {
    v4 = *(&self->super.super.super.super.isa + *off_1E78EB058[whichEvent_Type - 101]);
  }

  return v4;
}

+ (id)getInnerTypeStringByTag:(unint64_t)tag
{
  if (tag - 101 > 4)
  {
    return 0;
  }

  else
  {
    return off_1E78EB080[tag - 101];
  }
}

@end