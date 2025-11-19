@interface LRSchemaLRRedactionSignal
- (BOOL)isEqual:(id)a3;
- (LRSchemaLRComponentIdentifierRedactionSignal)componentId;
- (LRSchemaLRRedactionSignal)initWithDictionary:(id)a3;
- (LRSchemaLRRedactionSignal)initWithJSON:(id)a3;
- (LRSchemaLRTimespanRedactionSignal)timeSpan;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)deleteComponentId;
- (void)deleteIsEntireClockAffected;
- (void)deleteTimeSpan;
- (void)setComponentId:(id)a3;
- (void)setHasSignalTimeNanosecondsSinceBoot:(BOOL)a3;
- (void)setIsEntireClockAffected:(BOOL)a3;
- (void)setTimeSpan:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation LRSchemaLRRedactionSignal

- (LRSchemaLRRedactionSignal)initWithDictionary:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = LRSchemaLRRedactionSignal;
  v5 = [(LRSchemaLRRedactionSignal *)&v15 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"sensitivityState"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[LRSchemaLRRedactionSignal setSensitivityState:](v5, "setSensitivityState:", [v6 intValue]);
    }

    v7 = [v4 objectForKeyedSubscript:@"signalTimeNanosecondsSinceBoot"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[LRSchemaLRRedactionSignal setSignalTimeNanosecondsSinceBoot:](v5, "setSignalTimeNanosecondsSinceBoot:", [v7 unsignedLongLongValue]);
    }

    v8 = [v4 objectForKeyedSubscript:@"isEntireClockAffected"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[LRSchemaLRRedactionSignal setIsEntireClockAffected:](v5, "setIsEntireClockAffected:", [v8 BOOLValue]);
    }

    v9 = [v4 objectForKeyedSubscript:@"timeSpan"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = [[LRSchemaLRTimespanRedactionSignal alloc] initWithDictionary:v9];
      [(LRSchemaLRRedactionSignal *)v5 setTimeSpan:v10];
    }

    v11 = [v4 objectForKeyedSubscript:@"componentId"];
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

- (LRSchemaLRRedactionSignal)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(LRSchemaLRRedactionSignal *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(LRSchemaLRRedactionSignal *)self dictionaryRepresentation];
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
  if (self->_componentId)
  {
    v4 = [(LRSchemaLRRedactionSignal *)self componentId];
    v5 = [v4 dictionaryRepresentation];
    if (v5)
    {
      [v3 setObject:v5 forKeyedSubscript:@"componentId"];
    }

    else
    {
      v6 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v6 forKeyedSubscript:@"componentId"];
    }
  }

  if (self->_whichSignal == 101)
  {
    v7 = [MEMORY[0x1E696AD98] numberWithBool:{-[LRSchemaLRRedactionSignal isEntireClockAffected](self, "isEntireClockAffected")}];
    [v3 setObject:v7 forKeyedSubscript:@"isEntireClockAffected"];
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

    [v3 setObject:v10 forKeyedSubscript:@"sensitivityState"];
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    v11 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[LRSchemaLRRedactionSignal signalTimeNanosecondsSinceBoot](self, "signalTimeNanosecondsSinceBoot")}];
    [v3 setObject:v11 forKeyedSubscript:@"signalTimeNanosecondsSinceBoot"];
  }

  if (self->_timeSpan)
  {
    v12 = [(LRSchemaLRRedactionSignal *)self timeSpan];
    v13 = [v12 dictionaryRepresentation];
    if (v13)
    {
      [v3 setObject:v13 forKeyedSubscript:@"timeSpan"];
    }

    else
    {
      v14 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v14 forKeyedSubscript:@"timeSpan"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_21;
  }

  whichSignal = self->_whichSignal;
  if (whichSignal != [v4 whichSignal])
  {
    goto LABEL_21;
  }

  has = self->_has;
  v7 = v4[48];
  if ((*&has & 1) != (v7 & 1))
  {
    goto LABEL_21;
  }

  if (*&has)
  {
    sensitivityState = self->_sensitivityState;
    if (sensitivityState != [v4 sensitivityState])
    {
      goto LABEL_21;
    }

    has = self->_has;
    v7 = v4[48];
  }

  v9 = (*&has >> 1) & 1;
  if (v9 != ((v7 >> 1) & 1))
  {
    goto LABEL_21;
  }

  if (v9)
  {
    signalTimeNanosecondsSinceBoot = self->_signalTimeNanosecondsSinceBoot;
    if (signalTimeNanosecondsSinceBoot != [v4 signalTimeNanosecondsSinceBoot])
    {
      goto LABEL_21;
    }
  }

  isEntireClockAffected = self->_isEntireClockAffected;
  if (isEntireClockAffected != [v4 isEntireClockAffected])
  {
    goto LABEL_21;
  }

  v12 = [(LRSchemaLRRedactionSignal *)self timeSpan];
  v13 = [v4 timeSpan];
  if ((v12 != 0) == (v13 == 0))
  {
    goto LABEL_20;
  }

  v14 = [(LRSchemaLRRedactionSignal *)self timeSpan];
  if (v14)
  {
    v15 = v14;
    v16 = [(LRSchemaLRRedactionSignal *)self timeSpan];
    v17 = [v4 timeSpan];
    v18 = [v16 isEqual:v17];

    if (!v18)
    {
      goto LABEL_21;
    }
  }

  else
  {
  }

  v12 = [(LRSchemaLRRedactionSignal *)self componentId];
  v13 = [v4 componentId];
  if ((v12 != 0) != (v13 == 0))
  {
    v19 = [(LRSchemaLRRedactionSignal *)self componentId];
    if (!v19)
    {

LABEL_24:
      v24 = 1;
      goto LABEL_22;
    }

    v20 = v19;
    v21 = [(LRSchemaLRRedactionSignal *)self componentId];
    v22 = [v4 componentId];
    v23 = [v21 isEqual:v22];

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

- (void)writeTo:(id)a3
{
  v10 = a3;
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

  v5 = [(LRSchemaLRRedactionSignal *)self timeSpan];

  if (v5)
  {
    v6 = [(LRSchemaLRRedactionSignal *)self timeSpan];
    PBDataWriterWriteSubmessage();
  }

  v7 = [(LRSchemaLRRedactionSignal *)self componentId];

  v8 = v10;
  if (v7)
  {
    v9 = [(LRSchemaLRRedactionSignal *)self componentId];
    PBDataWriterWriteSubmessage();

    v8 = v10;
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

- (void)setComponentId:(id)a3
{
  v4 = a3;
  self->_isEntireClockAffected = 0;
  timeSpan = self->_timeSpan;
  self->_timeSpan = 0;

  v6 = 103;
  if (!v4)
  {
    v6 = 0;
  }

  self->_whichSignal = v6;
  componentId = self->_componentId;
  self->_componentId = v4;
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

- (void)setTimeSpan:(id)a3
{
  v4 = a3;
  self->_isEntireClockAffected = 0;
  componentId = self->_componentId;
  self->_componentId = 0;

  v6 = 102;
  if (!v4)
  {
    v6 = 0;
  }

  self->_whichSignal = v6;
  timeSpan = self->_timeSpan;
  self->_timeSpan = v4;
}

- (void)deleteIsEntireClockAffected
{
  if (self->_whichSignal == 101)
  {
    self->_whichSignal = 0;
    self->_isEntireClockAffected = 0;
  }
}

- (void)setIsEntireClockAffected:(BOOL)a3
{
  timeSpan = self->_timeSpan;
  self->_timeSpan = 0;

  componentId = self->_componentId;
  self->_componentId = 0;

  self->_whichSignal = 101;
  self->_isEntireClockAffected = a3;
}

- (void)setHasSignalTimeNanosecondsSinceBoot:(BOOL)a3
{
  if (a3)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (id)applySensitiveConditionsPolicy:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = LRSchemaLRRedactionSignal;
  v5 = [(SISchemaInstrumentationMessage *)&v13 applySensitiveConditionsPolicy:v4];
  v6 = [(LRSchemaLRRedactionSignal *)self timeSpan];
  v7 = [v6 applySensitiveConditionsPolicy:v4];
  v8 = [v7 suppressMessage];

  if (v8)
  {
    [(LRSchemaLRRedactionSignal *)self deleteTimeSpan];
  }

  v9 = [(LRSchemaLRRedactionSignal *)self componentId];
  v10 = [v9 applySensitiveConditionsPolicy:v4];
  v11 = [v10 suppressMessage];

  if (v11)
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