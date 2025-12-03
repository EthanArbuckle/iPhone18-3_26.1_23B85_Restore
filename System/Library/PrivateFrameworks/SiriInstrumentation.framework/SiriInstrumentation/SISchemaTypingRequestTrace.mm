@interface SISchemaTypingRequestTrace
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (SISchemaTypingRequestTrace)initWithDictionary:(id)dictionary;
- (SISchemaTypingRequestTrace)initWithJSON:(id)n;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (void)writeTo:(id)to;
@end

@implementation SISchemaTypingRequestTrace

- (SISchemaTypingRequestTrace)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v10.receiver = self;
  v10.super_class = SISchemaTypingRequestTrace;
  v5 = [(SISchemaTypingRequestTrace *)&v10 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"keyboardAppearanceBringUpTurnID"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBase64EncodedString:v6 options:0];
      [(SISchemaTypingRequestTrace *)v5 setKeyboardAppearanceBringUpTurnID:v7];
    }

    v8 = v5;
  }

  return v5;
}

- (SISchemaTypingRequestTrace)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(SISchemaTypingRequestTrace *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(SISchemaTypingRequestTrace *)self dictionaryRepresentation];
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
  if (self->_keyboardAppearanceBringUpTurnID)
  {
    keyboardAppearanceBringUpTurnID = [(SISchemaTypingRequestTrace *)self keyboardAppearanceBringUpTurnID];
    v5 = [keyboardAppearanceBringUpTurnID base64EncodedStringWithOptions:0];
    if (v5)
    {
      [dictionary setObject:v5 forKeyedSubscript:@"keyboardAppearanceBringUpTurnID"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"keyboardAppearanceBringUpTurnID"];
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
    keyboardAppearanceBringUpTurnID = [(SISchemaTypingRequestTrace *)self keyboardAppearanceBringUpTurnID];
    keyboardAppearanceBringUpTurnID2 = [equalCopy keyboardAppearanceBringUpTurnID];
    v7 = keyboardAppearanceBringUpTurnID2;
    if ((keyboardAppearanceBringUpTurnID != 0) != (keyboardAppearanceBringUpTurnID2 == 0))
    {
      keyboardAppearanceBringUpTurnID3 = [(SISchemaTypingRequestTrace *)self keyboardAppearanceBringUpTurnID];
      if (!keyboardAppearanceBringUpTurnID3)
      {

LABEL_10:
        v13 = 1;
        goto LABEL_8;
      }

      v9 = keyboardAppearanceBringUpTurnID3;
      keyboardAppearanceBringUpTurnID4 = [(SISchemaTypingRequestTrace *)self keyboardAppearanceBringUpTurnID];
      keyboardAppearanceBringUpTurnID5 = [equalCopy keyboardAppearanceBringUpTurnID];
      v12 = [keyboardAppearanceBringUpTurnID4 isEqual:keyboardAppearanceBringUpTurnID5];

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
  keyboardAppearanceBringUpTurnID = [(SISchemaTypingRequestTrace *)self keyboardAppearanceBringUpTurnID];

  if (keyboardAppearanceBringUpTurnID)
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