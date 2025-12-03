@interface LRSchemaLRRedactionSignal
- (BOOL)isEqual:(id)equal;
- (LRSchemaLRComponentIdentifierRedactionSignal)componentId;
- (LRSchemaLRRedactionSignal)initWithDictionary:(id)dictionary;
- (LRSchemaLRRedactionSignal)initWithJSON:(id)n;
- (LRSchemaLRTimespanRedactionSignal)timeSpan;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)deleteComponentId;
- (void)deleteIsEntireClockAffected;
- (void)deleteTimeSpan;
- (void)setComponentId:(id)id;
- (void)setHasSignalTimeNanosecondsSinceBoot:(BOOL)boot;
- (void)setIsEntireClockAffected:(BOOL)affected;
- (void)setTimeSpan:(id)span;
- (void)writeTo:(id)to;
@end

@implementation LRSchemaLRRedactionSignal

- (LRSchemaLRRedactionSignal)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v15.receiver = self;
  v15.super_class = LRSchemaLRRedactionSignal;
  v5 = [(LRSchemaLRRedactionSignal *)&v15 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"sensitivityState"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[LRSchemaLRRedactionSignal setSensitivityState:](v5, "setSensitivityState:", [v6 intValue]);
    }

    v7 = [dictionaryCopy objectForKeyedSubscript:@"signalTimeNanosecondsSinceBoot"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[LRSchemaLRRedactionSignal setSignalTimeNanosecondsSinceBoot:](v5, "setSignalTimeNanosecondsSinceBoot:", [v7 unsignedLongLongValue]);
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"isEntireClockAffected"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[LRSchemaLRRedactionSignal setIsEntireClockAffected:](v5, "setIsEntireClockAffected:", [v8 BOOLValue]);
    }

    v9 = [dictionaryCopy objectForKeyedSubscript:@"timeSpan"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = [[LRSchemaLRTimespanRedactionSignal alloc] initWithDictionary:v9];
      [(LRSchemaLRRedactionSignal *)v5 setTimeSpan:v10];
    }

    v11 = [dictionaryCopy objectForKeyedSubscript:@"componentId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = [[LRSchemaLRComponentIdentifierRedactionSignal alloc] initWithDictionary:v11];
      [(LRSchemaLRRedactionSignal *)v5 setComponentId:v12];
    }

    v13 = v5;
  }

  return v5;
}

- (LRSchemaLRRedactionSignal)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(LRSchemaLRRedactionSignal *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(LRSchemaLRRedactionSignal *)self dictionaryRepresentation];
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
  if (self->_componentId)
  {
    componentId = [(LRSchemaLRRedactionSignal *)self componentId];
    dictionaryRepresentation = [componentId dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"componentId"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"componentId"];
    }
  }

  if (self->_whichSignal == 101)
  {
    v7 = [MEMORY[0x1E696AD98] numberWithBool:{-[LRSchemaLRRedactionSignal isEntireClockAffected](self, "isEntireClockAffected")}];
    [dictionary setObject:v7 forKeyedSubscript:@"isEntireClockAffected"];
  }

  has = self->_has;
  if (has)
  {
    v9 = [(LRSchemaLRRedactionSignal *)self sensitivityState]- 1;
    if (v9 > 0xA)
    {
      v10 = @"DEVICE_SENSITIVITY_STATE_DEFAULT";
    }

    else
    {
      v10 = off_1E78D8CA8[v9];
    }

    [dictionary setObject:v10 forKeyedSubscript:@"sensitivityState"];
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    v11 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[LRSchemaLRRedactionSignal signalTimeNanosecondsSinceBoot](self, "signalTimeNanosecondsSinceBoot")}];
    [dictionary setObject:v11 forKeyedSubscript:@"signalTimeNanosecondsSinceBoot"];
  }

  if (self->_timeSpan)
  {
    timeSpan = [(LRSchemaLRRedactionSignal *)self timeSpan];
    dictionaryRepresentation2 = [timeSpan dictionaryRepresentation];
    if (dictionaryRepresentation2)
    {
      [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"timeSpan"];
    }

    else
    {
      null2 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null2 forKeyedSubscript:@"timeSpan"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v3 = 2654435761 * self->_sensitivityState;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v3 = 0;
    if ((*&self->_has & 2) != 0)
    {
LABEL_3:
      v4 = 2654435761u * self->_signalTimeNanosecondsSinceBoot;
      goto LABEL_6;
    }
  }

  v4 = 0;
LABEL_6:
  if (self->_whichSignal == 101)
  {
    v5 = 2654435761 * self->_isEntireClockAffected;
  }

  else
  {
    v5 = 0;
  }

  v6 = v4 ^ v3 ^ v5 ^ [(LRSchemaLRTimespanRedactionSignal *)self->_timeSpan hash];
  return v6 ^ [(LRSchemaLRComponentIdentifierRedactionSignal *)self->_componentId hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_21;
  }

  whichSignal = self->_whichSignal;
  if (whichSignal != [equalCopy whichSignal])
  {
    goto LABEL_21;
  }

  has = self->_has;
  v7 = equalCopy[48];
  if ((*&has & 1) != (v7 & 1))
  {
    goto LABEL_21;
  }

  if (*&has)
  {
    sensitivityState = self->_sensitivityState;
    if (sensitivityState != [equalCopy sensitivityState])
    {
      goto LABEL_21;
    }

    has = self->_has;
    v7 = equalCopy[48];
  }

  v9 = (*&has >> 1) & 1;
  if (v9 != ((v7 >> 1) & 1))
  {
    goto LABEL_21;
  }

  if (v9)
  {
    signalTimeNanosecondsSinceBoot = self->_signalTimeNanosecondsSinceBoot;
    if (signalTimeNanosecondsSinceBoot != [equalCopy signalTimeNanosecondsSinceBoot])
    {
      goto LABEL_21;
    }
  }

  isEntireClockAffected = self->_isEntireClockAffected;
  if (isEntireClockAffected != [equalCopy isEntireClockAffected])
  {
    goto LABEL_21;
  }

  timeSpan = [(LRSchemaLRRedactionSignal *)self timeSpan];
  timeSpan2 = [equalCopy timeSpan];
  if ((timeSpan != 0) == (timeSpan2 == 0))
  {
    goto LABEL_20;
  }

  timeSpan3 = [(LRSchemaLRRedactionSignal *)self timeSpan];
  if (timeSpan3)
  {
    v15 = timeSpan3;
    timeSpan4 = [(LRSchemaLRRedactionSignal *)self timeSpan];
    timeSpan5 = [equalCopy timeSpan];
    v18 = [timeSpan4 isEqual:timeSpan5];

    if (!v18)
    {
      goto LABEL_21;
    }
  }

  else
  {
  }

  timeSpan = [(LRSchemaLRRedactionSignal *)self componentId];
  timeSpan2 = [equalCopy componentId];
  if ((timeSpan != 0) != (timeSpan2 == 0))
  {
    componentId = [(LRSchemaLRRedactionSignal *)self componentId];
    if (!componentId)
    {

LABEL_24:
      v24 = 1;
      goto LABEL_22;
    }

    v20 = componentId;
    componentId2 = [(LRSchemaLRRedactionSignal *)self componentId];
    componentId3 = [equalCopy componentId];
    v23 = [componentId2 isEqual:componentId3];

    if (v23)
    {
      goto LABEL_24;
    }
  }

  else
  {
LABEL_20:
  }

LABEL_21:
  v24 = 0;
LABEL_22:

  return v24;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  has = self->_has;
  if (has)
  {
    PBDataWriterWriteInt32Field();
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    PBDataWriterWriteUint64Field();
  }

  if (self->_whichSignal == 101)
  {
    PBDataWriterWriteBOOLField();
  }

  timeSpan = [(LRSchemaLRRedactionSignal *)self timeSpan];

  if (timeSpan)
  {
    timeSpan2 = [(LRSchemaLRRedactionSignal *)self timeSpan];
    PBDataWriterWriteSubmessage();
  }

  componentId = [(LRSchemaLRRedactionSignal *)self componentId];

  v8 = toCopy;
  if (componentId)
  {
    componentId2 = [(LRSchemaLRRedactionSignal *)self componentId];
    PBDataWriterWriteSubmessage();

    v8 = toCopy;
  }
}

- (void)deleteComponentId
{
  if (self->_whichSignal == 103)
  {
    self->_whichSignal = 0;
    self->_componentId = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (LRSchemaLRComponentIdentifierRedactionSignal)componentId
{
  if (self->_whichSignal == 103)
  {
    v3 = self->_componentId;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setComponentId:(id)id
{
  idCopy = id;
  self->_isEntireClockAffected = 0;
  timeSpan = self->_timeSpan;
  self->_timeSpan = 0;

  v6 = 103;
  if (!idCopy)
  {
    v6 = 0;
  }

  self->_whichSignal = v6;
  componentId = self->_componentId;
  self->_componentId = idCopy;
}

- (void)deleteTimeSpan
{
  if (self->_whichSignal == 102)
  {
    self->_whichSignal = 0;
    self->_timeSpan = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (LRSchemaLRTimespanRedactionSignal)timeSpan
{
  if (self->_whichSignal == 102)
  {
    v3 = self->_timeSpan;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setTimeSpan:(id)span
{
  spanCopy = span;
  self->_isEntireClockAffected = 0;
  componentId = self->_componentId;
  self->_componentId = 0;

  v6 = 102;
  if (!spanCopy)
  {
    v6 = 0;
  }

  self->_whichSignal = v6;
  timeSpan = self->_timeSpan;
  self->_timeSpan = spanCopy;
}

- (void)deleteIsEntireClockAffected
{
  if (self->_whichSignal == 101)
  {
    self->_whichSignal = 0;
    self->_isEntireClockAffected = 0;
  }
}

- (void)setIsEntireClockAffected:(BOOL)affected
{
  timeSpan = self->_timeSpan;
  self->_timeSpan = 0;

  componentId = self->_componentId;
  self->_componentId = 0;

  self->_whichSignal = 101;
  self->_isEntireClockAffected = affected;
}

- (void)setHasSignalTimeNanosecondsSinceBoot:(BOOL)boot
{
  if (boot)
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
  policyCopy = policy;
  v13.receiver = self;
  v13.super_class = LRSchemaLRRedactionSignal;
  v5 = [(SISchemaInstrumentationMessage *)&v13 applySensitiveConditionsPolicy:policyCopy];
  timeSpan = [(LRSchemaLRRedactionSignal *)self timeSpan];
  v7 = [timeSpan applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v7 suppressMessage];

  if (suppressMessage)
  {
    [(LRSchemaLRRedactionSignal *)self deleteTimeSpan];
  }

  componentId = [(LRSchemaLRRedactionSignal *)self componentId];
  v10 = [componentId applySensitiveConditionsPolicy:policyCopy];
  suppressMessage2 = [v10 suppressMessage];

  if (suppressMessage2)
  {
    [(LRSchemaLRRedactionSignal *)self deleteComponentId];
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