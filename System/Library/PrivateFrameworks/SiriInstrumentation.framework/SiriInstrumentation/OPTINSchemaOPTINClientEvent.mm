@interface OPTINSchemaOPTINClientEvent
+ (id)getInnerTypeStringByTag:(unint64_t)tag;
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (OPTINSchemaOPTINClientEvent)initWithDictionary:(id)dictionary;
- (OPTINSchemaOPTINClientEvent)initWithJSON:(id)n;
- (OPTINSchemaOPTINInconsistentStateDetected)inconsistentStateDetected;
- (SISchemaInstrumentationMessage)innerEvent;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)qualifiedMessageName;
- (id)suppressMessageUnderConditions;
- (void)deleteInconsistentStateDetected;
- (void)setInconsistentStateDetected:(id)detected;
- (void)writeTo:(id)to;
@end

@implementation OPTINSchemaOPTINClientEvent

- (OPTINSchemaOPTINClientEvent)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v10.receiver = self;
  v10.super_class = OPTINSchemaOPTINClientEvent;
  v5 = [(OPTINSchemaOPTINClientEvent *)&v10 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"inconsistentStateDetected"];
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

- (OPTINSchemaOPTINClientEvent)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(OPTINSchemaOPTINClientEvent *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(OPTINSchemaOPTINClientEvent *)self dictionaryRepresentation];
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
  if (self->_inconsistentStateDetected)
  {
    inconsistentStateDetected = [(OPTINSchemaOPTINClientEvent *)self inconsistentStateDetected];
    dictionaryRepresentation = [inconsistentStateDetected dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"inconsistentStateDetected"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"inconsistentStateDetected"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    whichEvent_Type = self->_whichEvent_Type;
    if (whichEvent_Type == [equalCopy whichEvent_Type])
    {
      inconsistentStateDetected = [(OPTINSchemaOPTINClientEvent *)self inconsistentStateDetected];
      inconsistentStateDetected2 = [equalCopy inconsistentStateDetected];
      v8 = inconsistentStateDetected2;
      if ((inconsistentStateDetected != 0) != (inconsistentStateDetected2 == 0))
      {
        inconsistentStateDetected3 = [(OPTINSchemaOPTINClientEvent *)self inconsistentStateDetected];
        if (!inconsistentStateDetected3)
        {

LABEL_11:
          v14 = 1;
          goto LABEL_9;
        }

        v10 = inconsistentStateDetected3;
        inconsistentStateDetected4 = [(OPTINSchemaOPTINClientEvent *)self inconsistentStateDetected];
        inconsistentStateDetected5 = [equalCopy inconsistentStateDetected];
        v13 = [inconsistentStateDetected4 isEqual:inconsistentStateDetected5];

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

- (void)writeTo:(id)to
{
  toCopy = to;
  inconsistentStateDetected = [(OPTINSchemaOPTINClientEvent *)self inconsistentStateDetected];

  if (inconsistentStateDetected)
  {
    inconsistentStateDetected2 = [(OPTINSchemaOPTINClientEvent *)self inconsistentStateDetected];
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

- (void)setInconsistentStateDetected:(id)detected
{
  v3 = 101;
  if (!detected)
  {
    v3 = 0;
  }

  self->_whichEvent_Type = v3;
  objc_storeStrong(&self->_inconsistentStateDetected, detected);
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

- (id)applySensitiveConditionsPolicy:(id)policy
{
  v9.receiver = self;
  v9.super_class = OPTINSchemaOPTINClientEvent;
  policyCopy = policy;
  v5 = [(SISchemaInstrumentationMessage *)&v9 applySensitiveConditionsPolicy:policyCopy];
  v6 = [(OPTINSchemaOPTINClientEvent *)self inconsistentStateDetected:v9.receiver];
  v7 = [v6 applySensitiveConditionsPolicy:policyCopy];

  LODWORD(policyCopy) = [v7 suppressMessage];
  if (policyCopy)
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

+ (id)getInnerTypeStringByTag:(unint64_t)tag
{
  if (tag == 101)
  {
    return @"inconsistentStateDetected";
  }

  else
  {
    return 0;
  }
}

@end