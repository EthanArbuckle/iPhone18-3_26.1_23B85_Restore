@interface LRSchemaLRClientEvent
+ (id)getInnerTypeStringByTag:(unint64_t)tag;
- (BOOL)isEqual:(id)equal;
- (LRSchemaLRClientEvent)initWithDictionary:(id)dictionary;
- (LRSchemaLRClientEvent)initWithJSON:(id)n;
- (LRSchemaLRRedactionSummaryReported)redactionSummaryReported;
- (NSData)jsonData;
- (SISchemaInstrumentationMessage)innerEvent;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)qualifiedMessageName;
- (id)suppressMessageUnderConditions;
- (void)deleteRedactionSummaryReported;
- (void)setRedactionSummaryReported:(id)reported;
- (void)writeTo:(id)to;
@end

@implementation LRSchemaLRClientEvent

- (LRSchemaLRClientEvent)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v10.receiver = self;
  v10.super_class = LRSchemaLRClientEvent;
  v5 = [(LRSchemaLRClientEvent *)&v10 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"redactionSummaryReported"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[LRSchemaLRRedactionSummaryReported alloc] initWithDictionary:v6];
      [(LRSchemaLRClientEvent *)v5 setRedactionSummaryReported:v7];
    }

    v8 = v5;
  }

  return v5;
}

- (LRSchemaLRClientEvent)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(LRSchemaLRClientEvent *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(LRSchemaLRClientEvent *)self dictionaryRepresentation];
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
  if (self->_redactionSummaryReported)
  {
    redactionSummaryReported = [(LRSchemaLRClientEvent *)self redactionSummaryReported];
    dictionaryRepresentation = [redactionSummaryReported dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"redactionSummaryReported"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"redactionSummaryReported"];
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
      redactionSummaryReported = [(LRSchemaLRClientEvent *)self redactionSummaryReported];
      redactionSummaryReported2 = [equalCopy redactionSummaryReported];
      v8 = redactionSummaryReported2;
      if ((redactionSummaryReported != 0) != (redactionSummaryReported2 == 0))
      {
        redactionSummaryReported3 = [(LRSchemaLRClientEvent *)self redactionSummaryReported];
        if (!redactionSummaryReported3)
        {

LABEL_11:
          v14 = 1;
          goto LABEL_9;
        }

        v10 = redactionSummaryReported3;
        redactionSummaryReported4 = [(LRSchemaLRClientEvent *)self redactionSummaryReported];
        redactionSummaryReported5 = [equalCopy redactionSummaryReported];
        v13 = [redactionSummaryReported4 isEqual:redactionSummaryReported5];

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
  redactionSummaryReported = [(LRSchemaLRClientEvent *)self redactionSummaryReported];

  if (redactionSummaryReported)
  {
    redactionSummaryReported2 = [(LRSchemaLRClientEvent *)self redactionSummaryReported];
    PBDataWriterWriteSubmessage();
  }
}

- (void)deleteRedactionSummaryReported
{
  if (self->_whichEvent_Type == 101)
  {
    self->_whichEvent_Type = 0;
    self->_redactionSummaryReported = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (LRSchemaLRRedactionSummaryReported)redactionSummaryReported
{
  if (self->_whichEvent_Type == 101)
  {
    v3 = self->_redactionSummaryReported;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setRedactionSummaryReported:(id)reported
{
  v3 = 101;
  if (!reported)
  {
    v3 = 0;
  }

  self->_whichEvent_Type = v3;
  objc_storeStrong(&self->_redactionSummaryReported, reported);
}

- (id)qualifiedMessageName
{
  if ([(LRSchemaLRClientEvent *)self whichEvent_Type]== 101)
  {
    return @"com.apple.aiml.redaction.LRClientEvent.LRRedactionSummaryReported";
  }

  else
  {
    return @"com.apple.aiml.redaction.LRClientEvent";
  }
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  v9.receiver = self;
  v9.super_class = LRSchemaLRClientEvent;
  policyCopy = policy;
  v5 = [(SISchemaInstrumentationMessage *)&v9 applySensitiveConditionsPolicy:policyCopy];
  v6 = [(LRSchemaLRClientEvent *)self redactionSummaryReported:v9.receiver];
  v7 = [v6 applySensitiveConditionsPolicy:policyCopy];

  LODWORD(policyCopy) = [v7 suppressMessage];
  if (policyCopy)
  {
    [(LRSchemaLRClientEvent *)self deleteRedactionSummaryReported];
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
  if ([(LRSchemaLRClientEvent *)self whichEvent_Type]== 101)
  {
    v3 = self->_redactionSummaryReported;
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
    return @"redactionSummaryReported";
  }

  else
  {
    return 0;
  }
}

@end