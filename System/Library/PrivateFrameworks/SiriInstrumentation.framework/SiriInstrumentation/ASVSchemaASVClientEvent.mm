@interface ASVSchemaASVClientEvent
+ (id)getInnerTypeStringByTag:(unint64_t)a3;
- (ASVSchemaASVClientEvent)initWithDictionary:(id)a3;
- (ASVSchemaASVClientEvent)initWithJSON:(id)a3;
- (ASVSchemaASVOutputVolumeQueried)asvOutputVolumeQueried;
- (ASVSchemaASVUserIntentDetected)asvUserIntentDetected;
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (SISchemaInstrumentationMessage)innerEvent;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)getComponentId;
- (id)qualifiedMessageName;
- (id)suppressMessageUnderConditions;
- (int)componentName;
- (unint64_t)hash;
- (void)deleteAsvOutputVolumeQueried;
- (void)deleteAsvUserIntentDetected;
- (void)setAsvOutputVolumeQueried:(id)a3;
- (void)setAsvUserIntentDetected:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation ASVSchemaASVClientEvent

- (ASVSchemaASVClientEvent)initWithDictionary:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = ASVSchemaASVClientEvent;
  v5 = [(ASVSchemaASVClientEvent *)&v14 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"eventMetadata"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[ASVSchemaASVClientEventMetadata alloc] initWithDictionary:v6];
      [(ASVSchemaASVClientEvent *)v5 setEventMetadata:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"asvOutputVolumeQueried"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[ASVSchemaASVOutputVolumeQueried alloc] initWithDictionary:v8];
      [(ASVSchemaASVClientEvent *)v5 setAsvOutputVolumeQueried:v9];
    }

    v10 = [v4 objectForKeyedSubscript:@"asvUserIntentDetected"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [[ASVSchemaASVUserIntentDetected alloc] initWithDictionary:v10];
      [(ASVSchemaASVClientEvent *)v5 setAsvUserIntentDetected:v11];
    }

    v12 = v5;
  }

  return v5;
}

- (ASVSchemaASVClientEvent)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(ASVSchemaASVClientEvent *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(ASVSchemaASVClientEvent *)self dictionaryRepresentation];
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
  if (self->_asvOutputVolumeQueried)
  {
    v4 = [(ASVSchemaASVClientEvent *)self asvOutputVolumeQueried];
    v5 = [v4 dictionaryRepresentation];
    if (v5)
    {
      [v3 setObject:v5 forKeyedSubscript:@"asvOutputVolumeQueried"];
    }

    else
    {
      v6 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v6 forKeyedSubscript:@"asvOutputVolumeQueried"];
    }
  }

  if (self->_asvUserIntentDetected)
  {
    v7 = [(ASVSchemaASVClientEvent *)self asvUserIntentDetected];
    v8 = [v7 dictionaryRepresentation];
    if (v8)
    {
      [v3 setObject:v8 forKeyedSubscript:@"asvUserIntentDetected"];
    }

    else
    {
      v9 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v9 forKeyedSubscript:@"asvUserIntentDetected"];
    }
  }

  if (self->_eventMetadata)
  {
    v10 = [(ASVSchemaASVClientEvent *)self eventMetadata];
    v11 = [v10 dictionaryRepresentation];
    if (v11)
    {
      [v3 setObject:v11 forKeyedSubscript:@"eventMetadata"];
    }

    else
    {
      v12 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v12 forKeyedSubscript:@"eventMetadata"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
}

- (unint64_t)hash
{
  v3 = [(ASVSchemaASVClientEventMetadata *)self->_eventMetadata hash];
  v4 = [(ASVSchemaASVOutputVolumeQueried *)self->_asvOutputVolumeQueried hash]^ v3;
  return v4 ^ [(ASVSchemaASVUserIntentDetected *)self->_asvUserIntentDetected hash];
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

  v6 = [(ASVSchemaASVClientEvent *)self eventMetadata];
  v7 = [v4 eventMetadata];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_17;
  }

  v8 = [(ASVSchemaASVClientEvent *)self eventMetadata];
  if (v8)
  {
    v9 = v8;
    v10 = [(ASVSchemaASVClientEvent *)self eventMetadata];
    v11 = [v4 eventMetadata];
    v12 = [v10 isEqual:v11];

    if (!v12)
    {
      goto LABEL_18;
    }
  }

  else
  {
  }

  v6 = [(ASVSchemaASVClientEvent *)self asvOutputVolumeQueried];
  v7 = [v4 asvOutputVolumeQueried];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_17;
  }

  v13 = [(ASVSchemaASVClientEvent *)self asvOutputVolumeQueried];
  if (v13)
  {
    v14 = v13;
    v15 = [(ASVSchemaASVClientEvent *)self asvOutputVolumeQueried];
    v16 = [v4 asvOutputVolumeQueried];
    v17 = [v15 isEqual:v16];

    if (!v17)
    {
      goto LABEL_18;
    }
  }

  else
  {
  }

  v6 = [(ASVSchemaASVClientEvent *)self asvUserIntentDetected];
  v7 = [v4 asvUserIntentDetected];
  if ((v6 != 0) != (v7 == 0))
  {
    v18 = [(ASVSchemaASVClientEvent *)self asvUserIntentDetected];
    if (!v18)
    {

LABEL_21:
      v23 = 1;
      goto LABEL_19;
    }

    v19 = v18;
    v20 = [(ASVSchemaASVClientEvent *)self asvUserIntentDetected];
    v21 = [v4 asvUserIntentDetected];
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
  v4 = [(ASVSchemaASVClientEvent *)self eventMetadata];

  if (v4)
  {
    v5 = [(ASVSchemaASVClientEvent *)self eventMetadata];
    PBDataWriterWriteSubmessage();
  }

  v6 = [(ASVSchemaASVClientEvent *)self asvOutputVolumeQueried];

  if (v6)
  {
    v7 = [(ASVSchemaASVClientEvent *)self asvOutputVolumeQueried];
    PBDataWriterWriteSubmessage();
  }

  v8 = [(ASVSchemaASVClientEvent *)self asvUserIntentDetected];

  v9 = v11;
  if (v8)
  {
    v10 = [(ASVSchemaASVClientEvent *)self asvUserIntentDetected];
    PBDataWriterWriteSubmessage();

    v9 = v11;
  }
}

- (void)deleteAsvUserIntentDetected
{
  if (self->_whichEvent_Type == 102)
  {
    self->_whichEvent_Type = 0;
    self->_asvUserIntentDetected = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (ASVSchemaASVUserIntentDetected)asvUserIntentDetected
{
  if (self->_whichEvent_Type == 102)
  {
    v3 = self->_asvUserIntentDetected;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setAsvUserIntentDetected:(id)a3
{
  v4 = a3;
  asvOutputVolumeQueried = self->_asvOutputVolumeQueried;
  self->_asvOutputVolumeQueried = 0;

  v6 = 102;
  if (!v4)
  {
    v6 = 0;
  }

  self->_whichEvent_Type = v6;
  asvUserIntentDetected = self->_asvUserIntentDetected;
  self->_asvUserIntentDetected = v4;
}

- (void)deleteAsvOutputVolumeQueried
{
  if (self->_whichEvent_Type == 101)
  {
    self->_whichEvent_Type = 0;
    self->_asvOutputVolumeQueried = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (ASVSchemaASVOutputVolumeQueried)asvOutputVolumeQueried
{
  if (self->_whichEvent_Type == 101)
  {
    v3 = self->_asvOutputVolumeQueried;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setAsvOutputVolumeQueried:(id)a3
{
  v4 = a3;
  asvUserIntentDetected = self->_asvUserIntentDetected;
  self->_asvUserIntentDetected = 0;

  v6 = 101;
  if (!v4)
  {
    v6 = 0;
  }

  self->_whichEvent_Type = v6;
  asvOutputVolumeQueried = self->_asvOutputVolumeQueried;
  self->_asvOutputVolumeQueried = v4;
}

- (id)qualifiedMessageName
{
  v2 = [(ASVSchemaASVClientEvent *)self whichEvent_Type];
  v3 = @"com.apple.aiml.siri.asv.ASVClientEvent";
  if (v2 == 102)
  {
    v3 = @"com.apple.aiml.siri.asv.ASVClientEvent.ASVUserIntentDetected";
  }

  if (v2 == 101)
  {
    return @"com.apple.aiml.siri.asv.ASVClientEvent.ASVOutputVolumeQueried";
  }

  else
  {
    return v3;
  }
}

- (id)applySensitiveConditionsPolicy:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = ASVSchemaASVClientEvent;
  v5 = [(SISchemaInstrumentationMessage *)&v16 applySensitiveConditionsPolicy:v4];
  v6 = [(ASVSchemaASVClientEvent *)self eventMetadata];
  v7 = [v6 applySensitiveConditionsPolicy:v4];
  v8 = [v7 suppressMessage];

  if (v8)
  {
    [(ASVSchemaASVClientEvent *)self deleteEventMetadata];
  }

  v9 = [(ASVSchemaASVClientEvent *)self asvOutputVolumeQueried];
  v10 = [v9 applySensitiveConditionsPolicy:v4];
  v11 = [v10 suppressMessage];

  if (v11)
  {
    [(ASVSchemaASVClientEvent *)self deleteAsvOutputVolumeQueried];
  }

  v12 = [(ASVSchemaASVClientEvent *)self asvUserIntentDetected];
  v13 = [v12 applySensitiveConditionsPolicy:v4];
  v14 = [v13 suppressMessage];

  if (v14)
  {
    [(ASVSchemaASVClientEvent *)self deleteAsvUserIntentDetected];
  }

  return v5;
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

- (int)componentName
{
  v2 = [(ASVSchemaASVClientEvent *)self eventMetadata];
  v3 = [v2 asvId];

  if (v3)
  {
    v4 = [v3 value];
    if (v4)
    {
      v5 = [v3 value];
      v6 = [v5 length];

      if (v6)
      {
        LODWORD(v4) = 66;
      }

      else
      {
        LODWORD(v4) = 0;
      }
    }
  }

  else
  {
    LODWORD(v4) = 0;
  }

  return v4;
}

- (id)getComponentId
{
  v2 = [(ASVSchemaASVClientEvent *)self eventMetadata];
  v3 = [v2 asvId];

  if (!v3)
  {
    goto LABEL_5;
  }

  v4 = [v3 value];
  if (!v4)
  {
    goto LABEL_6;
  }

  v5 = [v3 value];
  v6 = [v5 length];

  if (v6)
  {
    v4 = v3;
  }

  else
  {
LABEL_5:
    v4 = 0;
  }

LABEL_6:

  return v4;
}

- (SISchemaInstrumentationMessage)innerEvent
{
  v3 = [(ASVSchemaASVClientEvent *)self whichEvent_Type];
  if (v3 == 101)
  {
    v4 = &OBJC_IVAR___ASVSchemaASVClientEvent__asvOutputVolumeQueried;
    goto LABEL_5;
  }

  if (v3 == 102)
  {
    v4 = &OBJC_IVAR___ASVSchemaASVClientEvent__asvUserIntentDetected;
LABEL_5:
    v5 = *(&self->super.super.super.super.isa + *v4);
    goto LABEL_7;
  }

  v5 = 0;
LABEL_7:

  return v5;
}

+ (id)getInnerTypeStringByTag:(unint64_t)a3
{
  v3 = @"asvUserIntentDetected";
  if (a3 != 102)
  {
    v3 = 0;
  }

  if (a3 == 101)
  {
    return @"asvOutputVolumeQueried";
  }

  else
  {
    return v3;
  }
}

@end