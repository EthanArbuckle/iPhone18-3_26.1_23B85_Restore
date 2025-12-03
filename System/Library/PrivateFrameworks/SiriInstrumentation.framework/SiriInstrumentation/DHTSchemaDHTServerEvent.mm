@interface DHTSchemaDHTServerEvent
+ (id)getInnerTypeStringByTag:(unint64_t)tag;
- (BOOL)isEqual:(id)equal;
- (DHTSchemaDHTDeleteTrigger)deleteTrigger;
- (DHTSchemaDHTServerEvent)initWithDictionary:(id)dictionary;
- (DHTSchemaDHTServerEvent)initWithJSON:(id)n;
- (NSData)jsonData;
- (SISchemaInstrumentationMessage)innerEvent;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)qualifiedMessageName;
- (id)suppressMessageUnderConditions;
- (void)deleteDeleteTrigger;
- (void)setDeleteTrigger:(id)trigger;
- (void)writeTo:(id)to;
@end

@implementation DHTSchemaDHTServerEvent

- (DHTSchemaDHTServerEvent)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v10.receiver = self;
  v10.super_class = DHTSchemaDHTServerEvent;
  v5 = [(DHTSchemaDHTServerEvent *)&v10 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"deleteTrigger"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[DHTSchemaDHTDeleteTrigger alloc] initWithDictionary:v6];
      [(DHTSchemaDHTServerEvent *)v5 setDeleteTrigger:v7];
    }

    v8 = v5;
  }

  return v5;
}

- (DHTSchemaDHTServerEvent)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(DHTSchemaDHTServerEvent *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(DHTSchemaDHTServerEvent *)self dictionaryRepresentation];
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
  if (self->_deleteTrigger)
  {
    deleteTrigger = [(DHTSchemaDHTServerEvent *)self deleteTrigger];
    dictionaryRepresentation = [deleteTrigger dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"deleteTrigger"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"deleteTrigger"];
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
      deleteTrigger = [(DHTSchemaDHTServerEvent *)self deleteTrigger];
      deleteTrigger2 = [equalCopy deleteTrigger];
      v8 = deleteTrigger2;
      if ((deleteTrigger != 0) != (deleteTrigger2 == 0))
      {
        deleteTrigger3 = [(DHTSchemaDHTServerEvent *)self deleteTrigger];
        if (!deleteTrigger3)
        {

LABEL_11:
          v14 = 1;
          goto LABEL_9;
        }

        v10 = deleteTrigger3;
        deleteTrigger4 = [(DHTSchemaDHTServerEvent *)self deleteTrigger];
        deleteTrigger5 = [equalCopy deleteTrigger];
        v13 = [deleteTrigger4 isEqual:deleteTrigger5];

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
  deleteTrigger = [(DHTSchemaDHTServerEvent *)self deleteTrigger];

  if (deleteTrigger)
  {
    deleteTrigger2 = [(DHTSchemaDHTServerEvent *)self deleteTrigger];
    PBDataWriterWriteSubmessage();
  }
}

- (void)deleteDeleteTrigger
{
  if (self->_whichEvent_Type == 101)
  {
    self->_whichEvent_Type = 0;
    self->_deleteTrigger = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (DHTSchemaDHTDeleteTrigger)deleteTrigger
{
  if (self->_whichEvent_Type == 101)
  {
    v3 = self->_deleteTrigger;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setDeleteTrigger:(id)trigger
{
  v3 = 101;
  if (!trigger)
  {
    v3 = 0;
  }

  self->_whichEvent_Type = v3;
  objc_storeStrong(&self->_deleteTrigger, trigger);
}

- (id)qualifiedMessageName
{
  if ([(DHTSchemaDHTServerEvent *)self whichEvent_Type]== 101)
  {
    return @"com.apple.aiml.siri.dht.DHTServerEvent.DHTDeleteTrigger";
  }

  else
  {
    return @"com.apple.aiml.siri.dht.DHTServerEvent";
  }
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  v9.receiver = self;
  v9.super_class = DHTSchemaDHTServerEvent;
  policyCopy = policy;
  v5 = [(SISchemaInstrumentationMessage *)&v9 applySensitiveConditionsPolicy:policyCopy];
  v6 = [(DHTSchemaDHTServerEvent *)self deleteTrigger:v9.receiver];
  v7 = [v6 applySensitiveConditionsPolicy:policyCopy];

  LODWORD(policyCopy) = [v7 suppressMessage];
  if (policyCopy)
  {
    [(DHTSchemaDHTServerEvent *)self deleteDeleteTrigger];
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
  if ([(DHTSchemaDHTServerEvent *)self whichEvent_Type]== 101)
  {
    v3 = self->_deleteTrigger;
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
    return @"deleteTrigger";
  }

  else
  {
    return 0;
  }
}

@end