@interface EXPSiriSchemaEXPSiriServerEvent
+ (id)getInnerTypeStringByTag:(unint64_t)a3;
- (BOOL)isEqual:(id)a3;
- (EXPSiriSchemaEXPServerCounterfactualTriggered)counterfactualTriggeredNonTier1;
- (EXPSiriSchemaEXPServerCounterfactualTriggeredTier1)counterfactualTriggered;
- (EXPSiriSchemaEXPServerExperimentTriggeredTier1)experimentTriggered;
- (EXPSiriSchemaEXPSiriServerEvent)initWithDictionary:(id)a3;
- (EXPSiriSchemaEXPSiriServerEvent)initWithJSON:(id)a3;
- (NSData)jsonData;
- (SISchemaInstrumentationMessage)innerEvent;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)qualifiedMessageName;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)deleteCounterfactualTriggered;
- (void)deleteCounterfactualTriggeredNonTier1;
- (void)deleteExperimentTriggered;
- (void)setCounterfactualTriggered:(id)a3;
- (void)setCounterfactualTriggeredNonTier1:(id)a3;
- (void)setExperimentTriggered:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation EXPSiriSchemaEXPSiriServerEvent

- (EXPSiriSchemaEXPSiriServerEvent)initWithDictionary:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = EXPSiriSchemaEXPSiriServerEvent;
  v5 = [(EXPSiriSchemaEXPSiriServerEvent *)&v14 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"experimentTriggered"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[EXPSiriSchemaEXPServerExperimentTriggeredTier1 alloc] initWithDictionary:v6];
      [(EXPSiriSchemaEXPSiriServerEvent *)v5 setExperimentTriggered:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"counterfactualTriggered"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[EXPSiriSchemaEXPServerCounterfactualTriggeredTier1 alloc] initWithDictionary:v8];
      [(EXPSiriSchemaEXPSiriServerEvent *)v5 setCounterfactualTriggered:v9];
    }

    v10 = [v4 objectForKeyedSubscript:@"counterfactualTriggeredNonTier1"];
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

- (EXPSiriSchemaEXPSiriServerEvent)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(EXPSiriSchemaEXPSiriServerEvent *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(EXPSiriSchemaEXPSiriServerEvent *)self dictionaryRepresentation];
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
  if (self->_counterfactualTriggered)
  {
    v4 = [(EXPSiriSchemaEXPSiriServerEvent *)self counterfactualTriggered];
    v5 = [v4 dictionaryRepresentation];
    if (v5)
    {
      [v3 setObject:v5 forKeyedSubscript:@"counterfactualTriggered"];
    }

    else
    {
      v6 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v6 forKeyedSubscript:@"counterfactualTriggered"];
    }
  }

  if (self->_counterfactualTriggeredNonTier1)
  {
    v7 = [(EXPSiriSchemaEXPSiriServerEvent *)self counterfactualTriggeredNonTier1];
    v8 = [v7 dictionaryRepresentation];
    if (v8)
    {
      [v3 setObject:v8 forKeyedSubscript:@"counterfactualTriggeredNonTier1"];
    }

    else
    {
      v9 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v9 forKeyedSubscript:@"counterfactualTriggeredNonTier1"];
    }
  }

  if (self->_experimentTriggered)
  {
    v10 = [(EXPSiriSchemaEXPSiriServerEvent *)self experimentTriggered];
    v11 = [v10 dictionaryRepresentation];
    if (v11)
    {
      [v3 setObject:v11 forKeyedSubscript:@"experimentTriggered"];
    }

    else
    {
      v12 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v12 forKeyedSubscript:@"experimentTriggered"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
}

- (unint64_t)hash
{
  v3 = [(EXPSiriSchemaEXPServerExperimentTriggeredTier1 *)self->_experimentTriggered hash];
  v4 = [(EXPSiriSchemaEXPServerCounterfactualTriggeredTier1 *)self->_counterfactualTriggered hash]^ v3;
  return v4 ^ [(EXPSiriSchemaEXPServerCounterfactualTriggered *)self->_counterfactualTriggeredNonTier1 hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_18;
  }

  whichEvent_Type = self->_whichEvent_Type;
  if (whichEvent_Type != [v4 whichEvent_Type])
  {
    goto LABEL_18;
  }

  v6 = [(EXPSiriSchemaEXPSiriServerEvent *)self experimentTriggered];
  v7 = [v4 experimentTriggered];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_17;
  }

  v8 = [(EXPSiriSchemaEXPSiriServerEvent *)self experimentTriggered];
  if (v8)
  {
    v9 = v8;
    v10 = [(EXPSiriSchemaEXPSiriServerEvent *)self experimentTriggered];
    v11 = [v4 experimentTriggered];
    v12 = [v10 isEqual:v11];

    if (!v12)
    {
      goto LABEL_18;
    }
  }

  else
  {
  }

  v6 = [(EXPSiriSchemaEXPSiriServerEvent *)self counterfactualTriggered];
  v7 = [v4 counterfactualTriggered];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_17;
  }

  v13 = [(EXPSiriSchemaEXPSiriServerEvent *)self counterfactualTriggered];
  if (v13)
  {
    v14 = v13;
    v15 = [(EXPSiriSchemaEXPSiriServerEvent *)self counterfactualTriggered];
    v16 = [v4 counterfactualTriggered];
    v17 = [v15 isEqual:v16];

    if (!v17)
    {
      goto LABEL_18;
    }
  }

  else
  {
  }

  v6 = [(EXPSiriSchemaEXPSiriServerEvent *)self counterfactualTriggeredNonTier1];
  v7 = [v4 counterfactualTriggeredNonTier1];
  if ((v6 != 0) != (v7 == 0))
  {
    v18 = [(EXPSiriSchemaEXPSiriServerEvent *)self counterfactualTriggeredNonTier1];
    if (!v18)
    {

LABEL_21:
      v23 = 1;
      goto LABEL_19;
    }

    v19 = v18;
    v20 = [(EXPSiriSchemaEXPSiriServerEvent *)self counterfactualTriggeredNonTier1];
    v21 = [v4 counterfactualTriggeredNonTier1];
    v22 = [v20 isEqual:v21];

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

- (void)writeTo:(id)a3
{
  v11 = a3;
  v4 = [(EXPSiriSchemaEXPSiriServerEvent *)self experimentTriggered];

  if (v4)
  {
    v5 = [(EXPSiriSchemaEXPSiriServerEvent *)self experimentTriggered];
    PBDataWriterWriteSubmessage();
  }

  v6 = [(EXPSiriSchemaEXPSiriServerEvent *)self counterfactualTriggered];

  if (v6)
  {
    v7 = [(EXPSiriSchemaEXPSiriServerEvent *)self counterfactualTriggered];
    PBDataWriterWriteSubmessage();
  }

  v8 = [(EXPSiriSchemaEXPSiriServerEvent *)self counterfactualTriggeredNonTier1];

  v9 = v11;
  if (v8)
  {
    v10 = [(EXPSiriSchemaEXPSiriServerEvent *)self counterfactualTriggeredNonTier1];
    PBDataWriterWriteSubmessage();

    v9 = v11;
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

- (void)setCounterfactualTriggeredNonTier1:(id)a3
{
  v4 = a3;
  experimentTriggered = self->_experimentTriggered;
  self->_experimentTriggered = 0;

  counterfactualTriggered = self->_counterfactualTriggered;
  self->_counterfactualTriggered = 0;

  v7 = 103;
  if (!v4)
  {
    v7 = 0;
  }

  self->_whichEvent_Type = v7;
  counterfactualTriggeredNonTier1 = self->_counterfactualTriggeredNonTier1;
  self->_counterfactualTriggeredNonTier1 = v4;
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

- (void)setCounterfactualTriggered:(id)a3
{
  v4 = a3;
  experimentTriggered = self->_experimentTriggered;
  self->_experimentTriggered = 0;

  counterfactualTriggeredNonTier1 = self->_counterfactualTriggeredNonTier1;
  self->_counterfactualTriggeredNonTier1 = 0;

  v7 = 102;
  if (!v4)
  {
    v7 = 0;
  }

  self->_whichEvent_Type = v7;
  counterfactualTriggered = self->_counterfactualTriggered;
  self->_counterfactualTriggered = v4;
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

- (void)setExperimentTriggered:(id)a3
{
  v4 = a3;
  counterfactualTriggered = self->_counterfactualTriggered;
  self->_counterfactualTriggered = 0;

  counterfactualTriggeredNonTier1 = self->_counterfactualTriggeredNonTier1;
  self->_counterfactualTriggeredNonTier1 = 0;

  v7 = 101;
  if (!v4)
  {
    v7 = 0;
  }

  self->_whichEvent_Type = v7;
  experimentTriggered = self->_experimentTriggered;
  self->_experimentTriggered = v4;
}

- (id)qualifiedMessageName
{
  v2 = [(EXPSiriSchemaEXPSiriServerEvent *)self whichEvent_Type];
  if (v2 - 101 > 2)
  {
    return @"com.apple.aiml.exp.siri.EXPSiriServerEvent";
  }

  else
  {
    return off_1E78D4C28[v2 - 101];
  }
}

- (id)applySensitiveConditionsPolicy:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = EXPSiriSchemaEXPSiriServerEvent;
  v5 = [(SISchemaInstrumentationMessage *)&v16 applySensitiveConditionsPolicy:v4];
  v6 = [(EXPSiriSchemaEXPSiriServerEvent *)self experimentTriggered];
  v7 = [v6 applySensitiveConditionsPolicy:v4];
  v8 = [v7 suppressMessage];

  if (v8)
  {
    [(EXPSiriSchemaEXPSiriServerEvent *)self deleteExperimentTriggered];
  }

  v9 = [(EXPSiriSchemaEXPSiriServerEvent *)self counterfactualTriggered];
  v10 = [v9 applySensitiveConditionsPolicy:v4];
  v11 = [v10 suppressMessage];

  if (v11)
  {
    [(EXPSiriSchemaEXPSiriServerEvent *)self deleteCounterfactualTriggered];
  }

  v12 = [(EXPSiriSchemaEXPSiriServerEvent *)self counterfactualTriggeredNonTier1];
  v13 = [v12 applySensitiveConditionsPolicy:v4];
  v14 = [v13 suppressMessage];

  if (v14)
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
  v3 = [(EXPSiriSchemaEXPSiriServerEvent *)self whichEvent_Type];
  if (v3 - 101 > 2)
  {
    v4 = 0;
  }

  else
  {
    v4 = *(&self->super.super.super.super.isa + *off_1E78E95F8[v3 - 101]);
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
    return off_1E78E9610[a3 - 101];
  }
}

@end