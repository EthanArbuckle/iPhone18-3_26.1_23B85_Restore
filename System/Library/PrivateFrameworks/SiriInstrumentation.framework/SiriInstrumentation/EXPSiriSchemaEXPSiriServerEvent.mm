@interface EXPSiriSchemaEXPSiriServerEvent
+ (id)getInnerTypeStringByTag:(unint64_t)tag;
- (BOOL)isEqual:(id)equal;
- (EXPSiriSchemaEXPServerCounterfactualTriggered)counterfactualTriggeredNonTier1;
- (EXPSiriSchemaEXPServerCounterfactualTriggeredTier1)counterfactualTriggered;
- (EXPSiriSchemaEXPServerExperimentTriggeredTier1)experimentTriggered;
- (EXPSiriSchemaEXPSiriServerEvent)initWithDictionary:(id)dictionary;
- (EXPSiriSchemaEXPSiriServerEvent)initWithJSON:(id)n;
- (NSData)jsonData;
- (SISchemaInstrumentationMessage)innerEvent;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)qualifiedMessageName;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)deleteCounterfactualTriggered;
- (void)deleteCounterfactualTriggeredNonTier1;
- (void)deleteExperimentTriggered;
- (void)setCounterfactualTriggered:(id)triggered;
- (void)setCounterfactualTriggeredNonTier1:(id)tier1;
- (void)setExperimentTriggered:(id)triggered;
- (void)writeTo:(id)to;
@end

@implementation EXPSiriSchemaEXPSiriServerEvent

- (EXPSiriSchemaEXPSiriServerEvent)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v14.receiver = self;
  v14.super_class = EXPSiriSchemaEXPSiriServerEvent;
  v5 = [(EXPSiriSchemaEXPSiriServerEvent *)&v14 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"experimentTriggered"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[EXPSiriSchemaEXPServerExperimentTriggeredTier1 alloc] initWithDictionary:v6];
      [(EXPSiriSchemaEXPSiriServerEvent *)v5 setExperimentTriggered:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"counterfactualTriggered"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[EXPSiriSchemaEXPServerCounterfactualTriggeredTier1 alloc] initWithDictionary:v8];
      [(EXPSiriSchemaEXPSiriServerEvent *)v5 setCounterfactualTriggered:v9];
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"counterfactualTriggeredNonTier1"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [[EXPSiriSchemaEXPServerCounterfactualTriggered alloc] initWithDictionary:v10];
      [(EXPSiriSchemaEXPSiriServerEvent *)v5 setCounterfactualTriggeredNonTier1:v11];
    }

    v12 = v5;
  }

  return v5;
}

- (EXPSiriSchemaEXPSiriServerEvent)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(EXPSiriSchemaEXPSiriServerEvent *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(EXPSiriSchemaEXPSiriServerEvent *)self dictionaryRepresentation];
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
  if (self->_counterfactualTriggered)
  {
    counterfactualTriggered = [(EXPSiriSchemaEXPSiriServerEvent *)self counterfactualTriggered];
    dictionaryRepresentation = [counterfactualTriggered dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"counterfactualTriggered"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"counterfactualTriggered"];
    }
  }

  if (self->_counterfactualTriggeredNonTier1)
  {
    counterfactualTriggeredNonTier1 = [(EXPSiriSchemaEXPSiriServerEvent *)self counterfactualTriggeredNonTier1];
    dictionaryRepresentation2 = [counterfactualTriggeredNonTier1 dictionaryRepresentation];
    if (dictionaryRepresentation2)
    {
      [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"counterfactualTriggeredNonTier1"];
    }

    else
    {
      null2 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null2 forKeyedSubscript:@"counterfactualTriggeredNonTier1"];
    }
  }

  if (self->_experimentTriggered)
  {
    experimentTriggered = [(EXPSiriSchemaEXPSiriServerEvent *)self experimentTriggered];
    dictionaryRepresentation3 = [experimentTriggered dictionaryRepresentation];
    if (dictionaryRepresentation3)
    {
      [dictionary setObject:dictionaryRepresentation3 forKeyedSubscript:@"experimentTriggered"];
    }

    else
    {
      null3 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null3 forKeyedSubscript:@"experimentTriggered"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(EXPSiriSchemaEXPServerExperimentTriggeredTier1 *)self->_experimentTriggered hash];
  v4 = [(EXPSiriSchemaEXPServerCounterfactualTriggeredTier1 *)self->_counterfactualTriggered hash]^ v3;
  return v4 ^ [(EXPSiriSchemaEXPServerCounterfactualTriggered *)self->_counterfactualTriggeredNonTier1 hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_18;
  }

  whichEvent_Type = self->_whichEvent_Type;
  if (whichEvent_Type != [equalCopy whichEvent_Type])
  {
    goto LABEL_18;
  }

  experimentTriggered = [(EXPSiriSchemaEXPSiriServerEvent *)self experimentTriggered];
  experimentTriggered2 = [equalCopy experimentTriggered];
  if ((experimentTriggered != 0) == (experimentTriggered2 == 0))
  {
    goto LABEL_17;
  }

  experimentTriggered3 = [(EXPSiriSchemaEXPSiriServerEvent *)self experimentTriggered];
  if (experimentTriggered3)
  {
    v9 = experimentTriggered3;
    experimentTriggered4 = [(EXPSiriSchemaEXPSiriServerEvent *)self experimentTriggered];
    experimentTriggered5 = [equalCopy experimentTriggered];
    v12 = [experimentTriggered4 isEqual:experimentTriggered5];

    if (!v12)
    {
      goto LABEL_18;
    }
  }

  else
  {
  }

  experimentTriggered = [(EXPSiriSchemaEXPSiriServerEvent *)self counterfactualTriggered];
  experimentTriggered2 = [equalCopy counterfactualTriggered];
  if ((experimentTriggered != 0) == (experimentTriggered2 == 0))
  {
    goto LABEL_17;
  }

  counterfactualTriggered = [(EXPSiriSchemaEXPSiriServerEvent *)self counterfactualTriggered];
  if (counterfactualTriggered)
  {
    v14 = counterfactualTriggered;
    counterfactualTriggered2 = [(EXPSiriSchemaEXPSiriServerEvent *)self counterfactualTriggered];
    counterfactualTriggered3 = [equalCopy counterfactualTriggered];
    v17 = [counterfactualTriggered2 isEqual:counterfactualTriggered3];

    if (!v17)
    {
      goto LABEL_18;
    }
  }

  else
  {
  }

  experimentTriggered = [(EXPSiriSchemaEXPSiriServerEvent *)self counterfactualTriggeredNonTier1];
  experimentTriggered2 = [equalCopy counterfactualTriggeredNonTier1];
  if ((experimentTriggered != 0) != (experimentTriggered2 == 0))
  {
    counterfactualTriggeredNonTier1 = [(EXPSiriSchemaEXPSiriServerEvent *)self counterfactualTriggeredNonTier1];
    if (!counterfactualTriggeredNonTier1)
    {

LABEL_21:
      v23 = 1;
      goto LABEL_19;
    }

    v19 = counterfactualTriggeredNonTier1;
    counterfactualTriggeredNonTier12 = [(EXPSiriSchemaEXPSiriServerEvent *)self counterfactualTriggeredNonTier1];
    counterfactualTriggeredNonTier13 = [equalCopy counterfactualTriggeredNonTier1];
    v22 = [counterfactualTriggeredNonTier12 isEqual:counterfactualTriggeredNonTier13];

    if (v22)
    {
      goto LABEL_21;
    }
  }

  else
  {
LABEL_17:
  }

LABEL_18:
  v23 = 0;
LABEL_19:

  return v23;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  experimentTriggered = [(EXPSiriSchemaEXPSiriServerEvent *)self experimentTriggered];

  if (experimentTriggered)
  {
    experimentTriggered2 = [(EXPSiriSchemaEXPSiriServerEvent *)self experimentTriggered];
    PBDataWriterWriteSubmessage();
  }

  counterfactualTriggered = [(EXPSiriSchemaEXPSiriServerEvent *)self counterfactualTriggered];

  if (counterfactualTriggered)
  {
    counterfactualTriggered2 = [(EXPSiriSchemaEXPSiriServerEvent *)self counterfactualTriggered];
    PBDataWriterWriteSubmessage();
  }

  counterfactualTriggeredNonTier1 = [(EXPSiriSchemaEXPSiriServerEvent *)self counterfactualTriggeredNonTier1];

  v9 = toCopy;
  if (counterfactualTriggeredNonTier1)
  {
    counterfactualTriggeredNonTier12 = [(EXPSiriSchemaEXPSiriServerEvent *)self counterfactualTriggeredNonTier1];
    PBDataWriterWriteSubmessage();

    v9 = toCopy;
  }
}

- (void)deleteCounterfactualTriggeredNonTier1
{
  if (self->_whichEvent_Type == 103)
  {
    self->_whichEvent_Type = 0;
    self->_counterfactualTriggeredNonTier1 = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (EXPSiriSchemaEXPServerCounterfactualTriggered)counterfactualTriggeredNonTier1
{
  if (self->_whichEvent_Type == 103)
  {
    v3 = self->_counterfactualTriggeredNonTier1;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setCounterfactualTriggeredNonTier1:(id)tier1
{
  tier1Copy = tier1;
  experimentTriggered = self->_experimentTriggered;
  self->_experimentTriggered = 0;

  counterfactualTriggered = self->_counterfactualTriggered;
  self->_counterfactualTriggered = 0;

  v7 = 103;
  if (!tier1Copy)
  {
    v7 = 0;
  }

  self->_whichEvent_Type = v7;
  counterfactualTriggeredNonTier1 = self->_counterfactualTriggeredNonTier1;
  self->_counterfactualTriggeredNonTier1 = tier1Copy;
}

- (void)deleteCounterfactualTriggered
{
  if (self->_whichEvent_Type == 102)
  {
    self->_whichEvent_Type = 0;
    self->_counterfactualTriggered = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (EXPSiriSchemaEXPServerCounterfactualTriggeredTier1)counterfactualTriggered
{
  if (self->_whichEvent_Type == 102)
  {
    v3 = self->_counterfactualTriggered;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setCounterfactualTriggered:(id)triggered
{
  triggeredCopy = triggered;
  experimentTriggered = self->_experimentTriggered;
  self->_experimentTriggered = 0;

  counterfactualTriggeredNonTier1 = self->_counterfactualTriggeredNonTier1;
  self->_counterfactualTriggeredNonTier1 = 0;

  v7 = 102;
  if (!triggeredCopy)
  {
    v7 = 0;
  }

  self->_whichEvent_Type = v7;
  counterfactualTriggered = self->_counterfactualTriggered;
  self->_counterfactualTriggered = triggeredCopy;
}

- (void)deleteExperimentTriggered
{
  if (self->_whichEvent_Type == 101)
  {
    self->_whichEvent_Type = 0;
    self->_experimentTriggered = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (EXPSiriSchemaEXPServerExperimentTriggeredTier1)experimentTriggered
{
  if (self->_whichEvent_Type == 101)
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
  counterfactualTriggered = self->_counterfactualTriggered;
  self->_counterfactualTriggered = 0;

  counterfactualTriggeredNonTier1 = self->_counterfactualTriggeredNonTier1;
  self->_counterfactualTriggeredNonTier1 = 0;

  v7 = 101;
  if (!triggeredCopy)
  {
    v7 = 0;
  }

  self->_whichEvent_Type = v7;
  experimentTriggered = self->_experimentTriggered;
  self->_experimentTriggered = triggeredCopy;
}

- (id)qualifiedMessageName
{
  whichEvent_Type = [(EXPSiriSchemaEXPSiriServerEvent *)self whichEvent_Type];
  if (whichEvent_Type - 101 > 2)
  {
    return @"com.apple.aiml.exp.siri.EXPSiriServerEvent";
  }

  else
  {
    return off_1E78D4C28[whichEvent_Type - 101];
  }
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  policyCopy = policy;
  v16.receiver = self;
  v16.super_class = EXPSiriSchemaEXPSiriServerEvent;
  v5 = [(SISchemaInstrumentationMessage *)&v16 applySensitiveConditionsPolicy:policyCopy];
  experimentTriggered = [(EXPSiriSchemaEXPSiriServerEvent *)self experimentTriggered];
  v7 = [experimentTriggered applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v7 suppressMessage];

  if (suppressMessage)
  {
    [(EXPSiriSchemaEXPSiriServerEvent *)self deleteExperimentTriggered];
  }

  counterfactualTriggered = [(EXPSiriSchemaEXPSiriServerEvent *)self counterfactualTriggered];
  v10 = [counterfactualTriggered applySensitiveConditionsPolicy:policyCopy];
  suppressMessage2 = [v10 suppressMessage];

  if (suppressMessage2)
  {
    [(EXPSiriSchemaEXPSiriServerEvent *)self deleteCounterfactualTriggered];
  }

  counterfactualTriggeredNonTier1 = [(EXPSiriSchemaEXPSiriServerEvent *)self counterfactualTriggeredNonTier1];
  v13 = [counterfactualTriggeredNonTier1 applySensitiveConditionsPolicy:policyCopy];
  suppressMessage3 = [v13 suppressMessage];

  if (suppressMessage3)
  {
    [(EXPSiriSchemaEXPSiriServerEvent *)self deleteCounterfactualTriggeredNonTier1];
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
  whichEvent_Type = [(EXPSiriSchemaEXPSiriServerEvent *)self whichEvent_Type];
  if (whichEvent_Type - 101 > 2)
  {
    v4 = 0;
  }

  else
  {
    v4 = *(&self->super.super.super.super.isa + *off_1E78E95F8[whichEvent_Type - 101]);
  }

  return v4;
}

+ (id)getInnerTypeStringByTag:(unint64_t)tag
{
  if (tag - 101 > 2)
  {
    return 0;
  }

  else
  {
    return off_1E78E9610[tag - 101];
  }
}

@end