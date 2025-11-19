@interface OPTINSchemaOPTINClientEvent
+ (id)getInnerTypeStringByTag:(unint64_t)a3;
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (OPTINSchemaOPTINClientEvent)initWithDictionary:(id)a3;
- (OPTINSchemaOPTINClientEvent)initWithJSON:(id)a3;
- (OPTINSchemaOPTINInconsistentStateDetected)inconsistentStateDetected;
- (SISchemaInstrumentationMessage)innerEvent;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)qualifiedMessageName;
- (id)suppressMessageUnderConditions;
- (void)deleteInconsistentStateDetected;
- (void)setInconsistentStateDetected:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation OPTINSchemaOPTINClientEvent

- (OPTINSchemaOPTINClientEvent)initWithDictionary:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = OPTINSchemaOPTINClientEvent;
  v5 = [(OPTINSchemaOPTINClientEvent *)&v10 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"inconsistentStateDetected"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[OPTINSchemaOPTINInconsistentStateDetected alloc] initWithDictionary:v6];
      [(OPTINSchemaOPTINClientEvent *)v5 setInconsistentStateDetected:v7];
    }

    v8 = v5;
  }

  return v5;
}

- (OPTINSchemaOPTINClientEvent)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(OPTINSchemaOPTINClientEvent *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(OPTINSchemaOPTINClientEvent *)self dictionaryRepresentation];
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
  if (self->_inconsistentStateDetected)
  {
    v4 = [(OPTINSchemaOPTINClientEvent *)self inconsistentStateDetected];
    v5 = [v4 dictionaryRepresentation];
    if (v5)
    {
      [v3 setObject:v5 forKeyedSubscript:@"inconsistentStateDetected"];
    }

    else
    {
      v6 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v6 forKeyedSubscript:@"inconsistentStateDetected"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()])
  {
    whichEvent_Type = self->_whichEvent_Type;
    if (whichEvent_Type == [v4 whichEvent_Type])
    {
      v6 = [(OPTINSchemaOPTINClientEvent *)self inconsistentStateDetected];
      v7 = [v4 inconsistentStateDetected];
      v8 = v7;
      if ((v6 != 0) != (v7 == 0))
      {
        v9 = [(OPTINSchemaOPTINClientEvent *)self inconsistentStateDetected];
        if (!v9)
        {

LABEL_11:
          v14 = 1;
          goto LABEL_9;
        }

        v10 = v9;
        v11 = [(OPTINSchemaOPTINClientEvent *)self inconsistentStateDetected];
        v12 = [v4 inconsistentStateDetected];
        v13 = [v11 isEqual:v12];

        if (v13)
        {
          goto LABEL_11;
        }
      }

      else
      {
      }
    }
  }

  v14 = 0;
LABEL_9:

  return v14;
}

- (void)writeTo:(id)a3
{
  v6 = a3;
  v4 = [(OPTINSchemaOPTINClientEvent *)self inconsistentStateDetected];

  if (v4)
  {
    v5 = [(OPTINSchemaOPTINClientEvent *)self inconsistentStateDetected];
    PBDataWriterWriteSubmessage();
  }
}

- (void)deleteInconsistentStateDetected
{
  if (self->_whichEvent_Type == 101)
  {
    self->_whichEvent_Type = 0;
    self->_inconsistentStateDetected = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (OPTINSchemaOPTINInconsistentStateDetected)inconsistentStateDetected
{
  if (self->_whichEvent_Type == 101)
  {
    v3 = self->_inconsistentStateDetected;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setInconsistentStateDetected:(id)a3
{
  v3 = 101;
  if (!a3)
  {
    v3 = 0;
  }

  self->_whichEvent_Type = v3;
  objc_storeStrong(&self->_inconsistentStateDetected, a3);
}

- (id)qualifiedMessageName
{
  if ([(OPTINSchemaOPTINClientEvent *)self whichEvent_Type]== 101)
  {
    return @"com.apple.aiml.siri.optin.OPTINClientEvent.OPTINInconsistentStateDetected";
  }

  else
  {
    return @"com.apple.aiml.siri.optin.OPTINClientEvent";
  }
}

- (id)applySensitiveConditionsPolicy:(id)a3
{
  v9.receiver = self;
  v9.super_class = OPTINSchemaOPTINClientEvent;
  v4 = a3;
  v5 = [(SISchemaInstrumentationMessage *)&v9 applySensitiveConditionsPolicy:v4];
  v6 = [(OPTINSchemaOPTINClientEvent *)self inconsistentStateDetected:v9.receiver];
  v7 = [v6 applySensitiveConditionsPolicy:v4];

  LODWORD(v4) = [v7 suppressMessage];
  if (v4)
  {
    [(OPTINSchemaOPTINClientEvent *)self deleteInconsistentStateDetected];
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
  if ([(OPTINSchemaOPTINClientEvent *)self whichEvent_Type]== 101)
  {
    v3 = self->_inconsistentStateDetected;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

+ (id)getInnerTypeStringByTag:(unint64_t)a3
{
  if (a3 == 101)
  {
    return @"inconsistentStateDetected";
  }

  else
  {
    return 0;
  }
}

@end