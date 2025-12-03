@interface SISchemaConversationTrace
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (SISchemaConversationTrace)initWithDictionary:(id)dictionary;
- (SISchemaConversationTrace)initWithJSON:(id)n;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (void)willProduceDictionaryRepresentation:(id)representation;
- (void)writeTo:(id)to;
@end

@implementation SISchemaConversationTrace

- (void)willProduceDictionaryRepresentation:(id)representation
{
  representationCopy = representation;
  previousTurnID = [(SISchemaConversationTrace *)self previousTurnID];
  v5 = previousTurnID;
  if (previousTurnID && [previousTurnID length] == 16)
  {
    si_asNSUUID = [v5 si_asNSUUID];
    uUIDString = [si_asNSUUID UUIDString];
    [representationCopy setObject:uUIDString forKeyedSubscript:@"previousTurnID"];
  }
}

- (SISchemaConversationTrace)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v10.receiver = self;
  v10.super_class = SISchemaConversationTrace;
  v5 = [(SISchemaConversationTrace *)&v10 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"previousTurnID"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBase64EncodedString:v6 options:0];
      [(SISchemaConversationTrace *)v5 setPreviousTurnID:v7];
    }

    v8 = v5;
  }

  return v5;
}

- (SISchemaConversationTrace)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(SISchemaConversationTrace *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(SISchemaConversationTrace *)self dictionaryRepresentation];
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
  if (self->_previousTurnID)
  {
    previousTurnID = [(SISchemaConversationTrace *)self previousTurnID];
    v5 = [previousTurnID base64EncodedStringWithOptions:0];
    if (v5)
    {
      [dictionary setObject:v5 forKeyedSubscript:@"previousTurnID"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"previousTurnID"];
    }
  }

  [(SISchemaConversationTrace *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    previousTurnID = [(SISchemaConversationTrace *)self previousTurnID];
    previousTurnID2 = [equalCopy previousTurnID];
    v7 = previousTurnID2;
    if ((previousTurnID != 0) != (previousTurnID2 == 0))
    {
      previousTurnID3 = [(SISchemaConversationTrace *)self previousTurnID];
      if (!previousTurnID3)
      {

LABEL_10:
        v13 = 1;
        goto LABEL_8;
      }

      v9 = previousTurnID3;
      previousTurnID4 = [(SISchemaConversationTrace *)self previousTurnID];
      previousTurnID5 = [equalCopy previousTurnID];
      v12 = [previousTurnID4 isEqual:previousTurnID5];

      if (v12)
      {
        goto LABEL_10;
      }
    }

    else
    {
    }
  }

  v13 = 0;
LABEL_8:

  return v13;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  previousTurnID = [(SISchemaConversationTrace *)self previousTurnID];

  if (previousTurnID)
  {
    PBDataWriterWriteDataField();
  }
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end