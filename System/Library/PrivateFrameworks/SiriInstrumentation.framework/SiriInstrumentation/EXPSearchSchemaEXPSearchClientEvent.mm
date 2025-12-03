@interface EXPSearchSchemaEXPSearchClientEvent
+ (id)getInnerTypeStringByTag:(unint64_t)tag;
- (BOOL)isEqual:(id)equal;
- (EXPSearchSchemaEXPSearchClientEvent)initWithDictionary:(id)dictionary;
- (EXPSearchSchemaEXPSearchClientEvent)initWithJSON:(id)n;
- (EXPSearchSchemaEXPSearchSessionExperiments)sessionExperiments;
- (NSData)jsonData;
- (SISchemaInstrumentationMessage)innerEvent;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)qualifiedMessageName;
- (id)suppressMessageUnderConditions;
- (void)deleteSessionExperiments;
- (void)setSessionExperiments:(id)experiments;
- (void)writeTo:(id)to;
@end

@implementation EXPSearchSchemaEXPSearchClientEvent

- (EXPSearchSchemaEXPSearchClientEvent)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v10.receiver = self;
  v10.super_class = EXPSearchSchemaEXPSearchClientEvent;
  v5 = [(EXPSearchSchemaEXPSearchClientEvent *)&v10 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"sessionExperiments"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[EXPSearchSchemaEXPSearchSessionExperiments alloc] initWithDictionary:v6];
      [(EXPSearchSchemaEXPSearchClientEvent *)v5 setSessionExperiments:v7];
    }

    v8 = v5;
  }

  return v5;
}

- (EXPSearchSchemaEXPSearchClientEvent)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(EXPSearchSchemaEXPSearchClientEvent *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(EXPSearchSchemaEXPSearchClientEvent *)self dictionaryRepresentation];
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
  if (self->_sessionExperiments)
  {
    sessionExperiments = [(EXPSearchSchemaEXPSearchClientEvent *)self sessionExperiments];
    dictionaryRepresentation = [sessionExperiments dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"sessionExperiments"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"sessionExperiments"];
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
      sessionExperiments = [(EXPSearchSchemaEXPSearchClientEvent *)self sessionExperiments];
      sessionExperiments2 = [equalCopy sessionExperiments];
      v8 = sessionExperiments2;
      if ((sessionExperiments != 0) != (sessionExperiments2 == 0))
      {
        sessionExperiments3 = [(EXPSearchSchemaEXPSearchClientEvent *)self sessionExperiments];
        if (!sessionExperiments3)
        {

LABEL_11:
          v14 = 1;
          goto LABEL_9;
        }

        v10 = sessionExperiments3;
        sessionExperiments4 = [(EXPSearchSchemaEXPSearchClientEvent *)self sessionExperiments];
        sessionExperiments5 = [equalCopy sessionExperiments];
        v13 = [sessionExperiments4 isEqual:sessionExperiments5];

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
  sessionExperiments = [(EXPSearchSchemaEXPSearchClientEvent *)self sessionExperiments];

  if (sessionExperiments)
  {
    sessionExperiments2 = [(EXPSearchSchemaEXPSearchClientEvent *)self sessionExperiments];
    PBDataWriterWriteSubmessage();
  }
}

- (void)deleteSessionExperiments
{
  if (self->_whichEvent_Type == 101)
  {
    self->_whichEvent_Type = 0;
    self->_sessionExperiments = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (EXPSearchSchemaEXPSearchSessionExperiments)sessionExperiments
{
  if (self->_whichEvent_Type == 101)
  {
    v3 = self->_sessionExperiments;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setSessionExperiments:(id)experiments
{
  v3 = 101;
  if (!experiments)
  {
    v3 = 0;
  }

  self->_whichEvent_Type = v3;
  objc_storeStrong(&self->_sessionExperiments, experiments);
}

- (id)qualifiedMessageName
{
  if ([(EXPSearchSchemaEXPSearchClientEvent *)self whichEvent_Type]== 101)
  {
    return @"com.apple.aiml.exp.search.EXPSearchClientEvent.EXPSearchSessionExperiments";
  }

  else
  {
    return @"com.apple.aiml.exp.search.EXPSearchClientEvent";
  }
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  v9.receiver = self;
  v9.super_class = EXPSearchSchemaEXPSearchClientEvent;
  policyCopy = policy;
  v5 = [(SISchemaInstrumentationMessage *)&v9 applySensitiveConditionsPolicy:policyCopy];
  v6 = [(EXPSearchSchemaEXPSearchClientEvent *)self sessionExperiments:v9.receiver];
  v7 = [v6 applySensitiveConditionsPolicy:policyCopy];

  LODWORD(policyCopy) = [v7 suppressMessage];
  if (policyCopy)
  {
    [(EXPSearchSchemaEXPSearchClientEvent *)self deleteSessionExperiments];
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
  if ([(EXPSearchSchemaEXPSearchClientEvent *)self whichEvent_Type]== 101)
  {
    v3 = self->_sessionExperiments;
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
    return @"sessionExperiments";
  }

  else
  {
    return 0;
  }
}

@end