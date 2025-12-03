@interface EXPSiriSchemaEXPSiriClientEvent
+ (id)getInnerTypeStringByTag:(unint64_t)tag;
- (BOOL)isEqual:(id)equal;
- (EXPSiriSchemaEXPAllocationChangelogSnapshot)allocationChangelogSnapshot;
- (EXPSiriSchemaEXPAllocationSnapshot)allocationSnapshot;
- (EXPSiriSchemaEXPClientExperimentTriggeredTier1)experimentTriggered;
- (EXPSiriSchemaEXPClientSiriRequestExperimentTriggeredTier1)SiriRequestExperimentTriggered;
- (EXPSiriSchemaEXPRolloutChangeSnapshot)rolloutChangeSnapshot;
- (EXPSiriSchemaEXPSiriClientEvent)initWithDictionary:(id)dictionary;
- (EXPSiriSchemaEXPSiriClientEvent)initWithJSON:(id)n;
- (NSData)jsonData;
- (SISchemaInstrumentationMessage)innerEvent;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)qualifiedMessageName;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)deleteAllocationChangelogSnapshot;
- (void)deleteAllocationSnapshot;
- (void)deleteExperimentTriggered;
- (void)deleteRolloutChangeSnapshot;
- (void)deleteSiriRequestExperimentTriggered;
- (void)setAllocationChangelogSnapshot:(id)snapshot;
- (void)setAllocationSnapshot:(id)snapshot;
- (void)setExperimentTriggered:(id)triggered;
- (void)setRolloutChangeSnapshot:(id)snapshot;
- (void)setSiriRequestExperimentTriggered:(id)triggered;
- (void)writeTo:(id)to;
@end

@implementation EXPSiriSchemaEXPSiriClientEvent

- (EXPSiriSchemaEXPSiriClientEvent)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v18.receiver = self;
  v18.super_class = EXPSiriSchemaEXPSiriClientEvent;
  v5 = [(EXPSiriSchemaEXPSiriClientEvent *)&v18 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"allocationSnapshot"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[EXPSiriSchemaEXPAllocationSnapshot alloc] initWithDictionary:v6];
      [(EXPSiriSchemaEXPSiriClientEvent *)v5 setAllocationSnapshot:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"allocationChangelogSnapshot"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[EXPSiriSchemaEXPAllocationChangelogSnapshot alloc] initWithDictionary:v8];
      [(EXPSiriSchemaEXPSiriClientEvent *)v5 setAllocationChangelogSnapshot:v9];
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"experimentTriggered"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [[EXPSiriSchemaEXPClientExperimentTriggeredTier1 alloc] initWithDictionary:v10];
      [(EXPSiriSchemaEXPSiriClientEvent *)v5 setExperimentTriggered:v11];
    }

    v12 = [dictionaryCopy objectForKeyedSubscript:@"SiriRequestExperimentTriggered"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [[EXPSiriSchemaEXPClientSiriRequestExperimentTriggeredTier1 alloc] initWithDictionary:v12];
      [(EXPSiriSchemaEXPSiriClientEvent *)v5 setSiriRequestExperimentTriggered:v13];
    }

    v14 = [dictionaryCopy objectForKeyedSubscript:@"rolloutChangeSnapshot"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = [[EXPSiriSchemaEXPRolloutChangeSnapshot alloc] initWithDictionary:v14];
      [(EXPSiriSchemaEXPSiriClientEvent *)v5 setRolloutChangeSnapshot:v15];
    }

    v16 = v5;
  }

  return v5;
}

- (EXPSiriSchemaEXPSiriClientEvent)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(EXPSiriSchemaEXPSiriClientEvent *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(EXPSiriSchemaEXPSiriClientEvent *)self dictionaryRepresentation];
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
  if (self->_SiriRequestExperimentTriggered)
  {
    siriRequestExperimentTriggered = [(EXPSiriSchemaEXPSiriClientEvent *)self SiriRequestExperimentTriggered];
    dictionaryRepresentation = [siriRequestExperimentTriggered dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"SiriRequestExperimentTriggered"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"SiriRequestExperimentTriggered"];
    }
  }

  if (self->_allocationChangelogSnapshot)
  {
    allocationChangelogSnapshot = [(EXPSiriSchemaEXPSiriClientEvent *)self allocationChangelogSnapshot];
    dictionaryRepresentation2 = [allocationChangelogSnapshot dictionaryRepresentation];
    if (dictionaryRepresentation2)
    {
      [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"allocationChangelogSnapshot"];
    }

    else
    {
      null2 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null2 forKeyedSubscript:@"allocationChangelogSnapshot"];
    }
  }

  if (self->_allocationSnapshot)
  {
    allocationSnapshot = [(EXPSiriSchemaEXPSiriClientEvent *)self allocationSnapshot];
    dictionaryRepresentation3 = [allocationSnapshot dictionaryRepresentation];
    if (dictionaryRepresentation3)
    {
      [dictionary setObject:dictionaryRepresentation3 forKeyedSubscript:@"allocationSnapshot"];
    }

    else
    {
      null3 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null3 forKeyedSubscript:@"allocationSnapshot"];
    }
  }

  if (self->_experimentTriggered)
  {
    experimentTriggered = [(EXPSiriSchemaEXPSiriClientEvent *)self experimentTriggered];
    dictionaryRepresentation4 = [experimentTriggered dictionaryRepresentation];
    if (dictionaryRepresentation4)
    {
      [dictionary setObject:dictionaryRepresentation4 forKeyedSubscript:@"experimentTriggered"];
    }

    else
    {
      null4 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null4 forKeyedSubscript:@"experimentTriggered"];
    }
  }

  if (self->_rolloutChangeSnapshot)
  {
    rolloutChangeSnapshot = [(EXPSiriSchemaEXPSiriClientEvent *)self rolloutChangeSnapshot];
    dictionaryRepresentation5 = [rolloutChangeSnapshot dictionaryRepresentation];
    if (dictionaryRepresentation5)
    {
      [dictionary setObject:dictionaryRepresentation5 forKeyedSubscript:@"rolloutChangeSnapshot"];
    }

    else
    {
      null5 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null5 forKeyedSubscript:@"rolloutChangeSnapshot"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(EXPSiriSchemaEXPAllocationSnapshot *)self->_allocationSnapshot hash];
  v4 = [(EXPSiriSchemaEXPAllocationChangelogSnapshot *)self->_allocationChangelogSnapshot hash]^ v3;
  v5 = [(EXPSiriSchemaEXPClientExperimentTriggeredTier1 *)self->_experimentTriggered hash];
  v6 = v4 ^ v5 ^ [(EXPSiriSchemaEXPClientSiriRequestExperimentTriggeredTier1 *)self->_SiriRequestExperimentTriggered hash];
  return v6 ^ [(EXPSiriSchemaEXPRolloutChangeSnapshot *)self->_rolloutChangeSnapshot hash];
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

  allocationSnapshot = [(EXPSiriSchemaEXPSiriClientEvent *)self allocationSnapshot];
  allocationSnapshot2 = [equalCopy allocationSnapshot];
  if ((allocationSnapshot != 0) == (allocationSnapshot2 == 0))
  {
    goto LABEL_27;
  }

  allocationSnapshot3 = [(EXPSiriSchemaEXPSiriClientEvent *)self allocationSnapshot];
  if (allocationSnapshot3)
  {
    v9 = allocationSnapshot3;
    allocationSnapshot4 = [(EXPSiriSchemaEXPSiriClientEvent *)self allocationSnapshot];
    allocationSnapshot5 = [equalCopy allocationSnapshot];
    v12 = [allocationSnapshot4 isEqual:allocationSnapshot5];

    if (!v12)
    {
      goto LABEL_28;
    }
  }

  else
  {
  }

  allocationSnapshot = [(EXPSiriSchemaEXPSiriClientEvent *)self allocationChangelogSnapshot];
  allocationSnapshot2 = [equalCopy allocationChangelogSnapshot];
  if ((allocationSnapshot != 0) == (allocationSnapshot2 == 0))
  {
    goto LABEL_27;
  }

  allocationChangelogSnapshot = [(EXPSiriSchemaEXPSiriClientEvent *)self allocationChangelogSnapshot];
  if (allocationChangelogSnapshot)
  {
    v14 = allocationChangelogSnapshot;
    allocationChangelogSnapshot2 = [(EXPSiriSchemaEXPSiriClientEvent *)self allocationChangelogSnapshot];
    allocationChangelogSnapshot3 = [equalCopy allocationChangelogSnapshot];
    v17 = [allocationChangelogSnapshot2 isEqual:allocationChangelogSnapshot3];

    if (!v17)
    {
      goto LABEL_28;
    }
  }

  else
  {
  }

  allocationSnapshot = [(EXPSiriSchemaEXPSiriClientEvent *)self experimentTriggered];
  allocationSnapshot2 = [equalCopy experimentTriggered];
  if ((allocationSnapshot != 0) == (allocationSnapshot2 == 0))
  {
    goto LABEL_27;
  }

  experimentTriggered = [(EXPSiriSchemaEXPSiriClientEvent *)self experimentTriggered];
  if (experimentTriggered)
  {
    v19 = experimentTriggered;
    experimentTriggered2 = [(EXPSiriSchemaEXPSiriClientEvent *)self experimentTriggered];
    experimentTriggered3 = [equalCopy experimentTriggered];
    v22 = [experimentTriggered2 isEqual:experimentTriggered3];

    if (!v22)
    {
      goto LABEL_28;
    }
  }

  else
  {
  }

  allocationSnapshot = [(EXPSiriSchemaEXPSiriClientEvent *)self SiriRequestExperimentTriggered];
  allocationSnapshot2 = [equalCopy SiriRequestExperimentTriggered];
  if ((allocationSnapshot != 0) == (allocationSnapshot2 == 0))
  {
    goto LABEL_27;
  }

  siriRequestExperimentTriggered = [(EXPSiriSchemaEXPSiriClientEvent *)self SiriRequestExperimentTriggered];
  if (siriRequestExperimentTriggered)
  {
    v24 = siriRequestExperimentTriggered;
    siriRequestExperimentTriggered2 = [(EXPSiriSchemaEXPSiriClientEvent *)self SiriRequestExperimentTriggered];
    siriRequestExperimentTriggered3 = [equalCopy SiriRequestExperimentTriggered];
    v27 = [siriRequestExperimentTriggered2 isEqual:siriRequestExperimentTriggered3];

    if (!v27)
    {
      goto LABEL_28;
    }
  }

  else
  {
  }

  allocationSnapshot = [(EXPSiriSchemaEXPSiriClientEvent *)self rolloutChangeSnapshot];
  allocationSnapshot2 = [equalCopy rolloutChangeSnapshot];
  if ((allocationSnapshot != 0) != (allocationSnapshot2 == 0))
  {
    rolloutChangeSnapshot = [(EXPSiriSchemaEXPSiriClientEvent *)self rolloutChangeSnapshot];
    if (!rolloutChangeSnapshot)
    {

LABEL_31:
      v33 = 1;
      goto LABEL_29;
    }

    v29 = rolloutChangeSnapshot;
    rolloutChangeSnapshot2 = [(EXPSiriSchemaEXPSiriClientEvent *)self rolloutChangeSnapshot];
    rolloutChangeSnapshot3 = [equalCopy rolloutChangeSnapshot];
    v32 = [rolloutChangeSnapshot2 isEqual:rolloutChangeSnapshot3];

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
  allocationSnapshot = [(EXPSiriSchemaEXPSiriClientEvent *)self allocationSnapshot];

  if (allocationSnapshot)
  {
    allocationSnapshot2 = [(EXPSiriSchemaEXPSiriClientEvent *)self allocationSnapshot];
    PBDataWriterWriteSubmessage();
  }

  allocationChangelogSnapshot = [(EXPSiriSchemaEXPSiriClientEvent *)self allocationChangelogSnapshot];

  if (allocationChangelogSnapshot)
  {
    allocationChangelogSnapshot2 = [(EXPSiriSchemaEXPSiriClientEvent *)self allocationChangelogSnapshot];
    PBDataWriterWriteSubmessage();
  }

  experimentTriggered = [(EXPSiriSchemaEXPSiriClientEvent *)self experimentTriggered];

  if (experimentTriggered)
  {
    experimentTriggered2 = [(EXPSiriSchemaEXPSiriClientEvent *)self experimentTriggered];
    PBDataWriterWriteSubmessage();
  }

  siriRequestExperimentTriggered = [(EXPSiriSchemaEXPSiriClientEvent *)self SiriRequestExperimentTriggered];

  if (siriRequestExperimentTriggered)
  {
    siriRequestExperimentTriggered2 = [(EXPSiriSchemaEXPSiriClientEvent *)self SiriRequestExperimentTriggered];
    PBDataWriterWriteSubmessage();
  }

  rolloutChangeSnapshot = [(EXPSiriSchemaEXPSiriClientEvent *)self rolloutChangeSnapshot];

  v13 = toCopy;
  if (rolloutChangeSnapshot)
  {
    rolloutChangeSnapshot2 = [(EXPSiriSchemaEXPSiriClientEvent *)self rolloutChangeSnapshot];
    PBDataWriterWriteSubmessage();

    v13 = toCopy;
  }
}

- (void)deleteRolloutChangeSnapshot
{
  if (self->_whichEvent_Type == 105)
  {
    self->_whichEvent_Type = 0;
    self->_rolloutChangeSnapshot = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (EXPSiriSchemaEXPRolloutChangeSnapshot)rolloutChangeSnapshot
{
  if (self->_whichEvent_Type == 105)
  {
    v3 = self->_rolloutChangeSnapshot;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setRolloutChangeSnapshot:(id)snapshot
{
  snapshotCopy = snapshot;
  allocationSnapshot = self->_allocationSnapshot;
  self->_allocationSnapshot = 0;

  allocationChangelogSnapshot = self->_allocationChangelogSnapshot;
  self->_allocationChangelogSnapshot = 0;

  experimentTriggered = self->_experimentTriggered;
  self->_experimentTriggered = 0;

  SiriRequestExperimentTriggered = self->_SiriRequestExperimentTriggered;
  self->_SiriRequestExperimentTriggered = 0;

  v9 = 105;
  if (!snapshotCopy)
  {
    v9 = 0;
  }

  self->_whichEvent_Type = v9;
  rolloutChangeSnapshot = self->_rolloutChangeSnapshot;
  self->_rolloutChangeSnapshot = snapshotCopy;
}

- (void)deleteSiriRequestExperimentTriggered
{
  if (self->_whichEvent_Type == 104)
  {
    self->_whichEvent_Type = 0;
    self->_SiriRequestExperimentTriggered = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (EXPSiriSchemaEXPClientSiriRequestExperimentTriggeredTier1)SiriRequestExperimentTriggered
{
  if (self->_whichEvent_Type == 104)
  {
    v3 = self->_SiriRequestExperimentTriggered;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setSiriRequestExperimentTriggered:(id)triggered
{
  triggeredCopy = triggered;
  allocationSnapshot = self->_allocationSnapshot;
  self->_allocationSnapshot = 0;

  allocationChangelogSnapshot = self->_allocationChangelogSnapshot;
  self->_allocationChangelogSnapshot = 0;

  experimentTriggered = self->_experimentTriggered;
  self->_experimentTriggered = 0;

  rolloutChangeSnapshot = self->_rolloutChangeSnapshot;
  self->_rolloutChangeSnapshot = 0;

  v9 = 104;
  if (!triggeredCopy)
  {
    v9 = 0;
  }

  self->_whichEvent_Type = v9;
  SiriRequestExperimentTriggered = self->_SiriRequestExperimentTriggered;
  self->_SiriRequestExperimentTriggered = triggeredCopy;
}

- (void)deleteExperimentTriggered
{
  if (self->_whichEvent_Type == 103)
  {
    self->_whichEvent_Type = 0;
    self->_experimentTriggered = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (EXPSiriSchemaEXPClientExperimentTriggeredTier1)experimentTriggered
{
  if (self->_whichEvent_Type == 103)
  {
    v3 = self->_experimentTriggered;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setExperimentTriggered:(id)triggered
{
  triggeredCopy = triggered;
  allocationSnapshot = self->_allocationSnapshot;
  self->_allocationSnapshot = 0;

  allocationChangelogSnapshot = self->_allocationChangelogSnapshot;
  self->_allocationChangelogSnapshot = 0;

  SiriRequestExperimentTriggered = self->_SiriRequestExperimentTriggered;
  self->_SiriRequestExperimentTriggered = 0;

  rolloutChangeSnapshot = self->_rolloutChangeSnapshot;
  self->_rolloutChangeSnapshot = 0;

  v9 = 103;
  if (!triggeredCopy)
  {
    v9 = 0;
  }

  self->_whichEvent_Type = v9;
  experimentTriggered = self->_experimentTriggered;
  self->_experimentTriggered = triggeredCopy;
}

- (void)deleteAllocationChangelogSnapshot
{
  if (self->_whichEvent_Type == 102)
  {
    self->_whichEvent_Type = 0;
    self->_allocationChangelogSnapshot = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (EXPSiriSchemaEXPAllocationChangelogSnapshot)allocationChangelogSnapshot
{
  if (self->_whichEvent_Type == 102)
  {
    v3 = self->_allocationChangelogSnapshot;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setAllocationChangelogSnapshot:(id)snapshot
{
  snapshotCopy = snapshot;
  allocationSnapshot = self->_allocationSnapshot;
  self->_allocationSnapshot = 0;

  experimentTriggered = self->_experimentTriggered;
  self->_experimentTriggered = 0;

  SiriRequestExperimentTriggered = self->_SiriRequestExperimentTriggered;
  self->_SiriRequestExperimentTriggered = 0;

  rolloutChangeSnapshot = self->_rolloutChangeSnapshot;
  self->_rolloutChangeSnapshot = 0;

  v9 = 102;
  if (!snapshotCopy)
  {
    v9 = 0;
  }

  self->_whichEvent_Type = v9;
  allocationChangelogSnapshot = self->_allocationChangelogSnapshot;
  self->_allocationChangelogSnapshot = snapshotCopy;
}

- (void)deleteAllocationSnapshot
{
  if (self->_whichEvent_Type == 101)
  {
    self->_whichEvent_Type = 0;
    self->_allocationSnapshot = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (EXPSiriSchemaEXPAllocationSnapshot)allocationSnapshot
{
  if (self->_whichEvent_Type == 101)
  {
    v3 = self->_allocationSnapshot;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setAllocationSnapshot:(id)snapshot
{
  snapshotCopy = snapshot;
  allocationChangelogSnapshot = self->_allocationChangelogSnapshot;
  self->_allocationChangelogSnapshot = 0;

  experimentTriggered = self->_experimentTriggered;
  self->_experimentTriggered = 0;

  SiriRequestExperimentTriggered = self->_SiriRequestExperimentTriggered;
  self->_SiriRequestExperimentTriggered = 0;

  rolloutChangeSnapshot = self->_rolloutChangeSnapshot;
  self->_rolloutChangeSnapshot = 0;

  v9 = 101;
  if (!snapshotCopy)
  {
    v9 = 0;
  }

  self->_whichEvent_Type = v9;
  allocationSnapshot = self->_allocationSnapshot;
  self->_allocationSnapshot = snapshotCopy;
}

- (id)qualifiedMessageName
{
  whichEvent_Type = [(EXPSiriSchemaEXPSiriClientEvent *)self whichEvent_Type];
  if (whichEvent_Type - 101 > 4)
  {
    return @"com.apple.aiml.exp.siri.EXPSiriClientEvent";
  }

  else
  {
    return off_1E78D4AD0[whichEvent_Type - 101];
  }
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  policyCopy = policy;
  v22.receiver = self;
  v22.super_class = EXPSiriSchemaEXPSiriClientEvent;
  v5 = [(SISchemaInstrumentationMessage *)&v22 applySensitiveConditionsPolicy:policyCopy];
  allocationSnapshot = [(EXPSiriSchemaEXPSiriClientEvent *)self allocationSnapshot];
  v7 = [allocationSnapshot applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v7 suppressMessage];

  if (suppressMessage)
  {
    [(EXPSiriSchemaEXPSiriClientEvent *)self deleteAllocationSnapshot];
  }

  allocationChangelogSnapshot = [(EXPSiriSchemaEXPSiriClientEvent *)self allocationChangelogSnapshot];
  v10 = [allocationChangelogSnapshot applySensitiveConditionsPolicy:policyCopy];
  suppressMessage2 = [v10 suppressMessage];

  if (suppressMessage2)
  {
    [(EXPSiriSchemaEXPSiriClientEvent *)self deleteAllocationChangelogSnapshot];
  }

  experimentTriggered = [(EXPSiriSchemaEXPSiriClientEvent *)self experimentTriggered];
  v13 = [experimentTriggered applySensitiveConditionsPolicy:policyCopy];
  suppressMessage3 = [v13 suppressMessage];

  if (suppressMessage3)
  {
    [(EXPSiriSchemaEXPSiriClientEvent *)self deleteExperimentTriggered];
  }

  siriRequestExperimentTriggered = [(EXPSiriSchemaEXPSiriClientEvent *)self SiriRequestExperimentTriggered];
  v16 = [siriRequestExperimentTriggered applySensitiveConditionsPolicy:policyCopy];
  suppressMessage4 = [v16 suppressMessage];

  if (suppressMessage4)
  {
    [(EXPSiriSchemaEXPSiriClientEvent *)self deleteSiriRequestExperimentTriggered];
  }

  rolloutChangeSnapshot = [(EXPSiriSchemaEXPSiriClientEvent *)self rolloutChangeSnapshot];
  v19 = [rolloutChangeSnapshot applySensitiveConditionsPolicy:policyCopy];
  suppressMessage5 = [v19 suppressMessage];

  if (suppressMessage5)
  {
    [(EXPSiriSchemaEXPSiriClientEvent *)self deleteRolloutChangeSnapshot];
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
  whichEvent_Type = [(EXPSiriSchemaEXPSiriClientEvent *)self whichEvent_Type];
  if (whichEvent_Type - 101 > 4)
  {
    v4 = 0;
  }

  else
  {
    v4 = *(&self->super.super.super.super.isa + *off_1E78E95A8[whichEvent_Type - 101]);
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
    return off_1E78E95D0[tag - 101];
  }
}

@end