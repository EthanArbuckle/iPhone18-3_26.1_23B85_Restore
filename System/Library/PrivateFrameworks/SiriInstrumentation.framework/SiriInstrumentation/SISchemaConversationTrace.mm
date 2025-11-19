@interface SISchemaConversationTrace
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (SISchemaConversationTrace)initWithDictionary:(id)a3;
- (SISchemaConversationTrace)initWithJSON:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (void)willProduceDictionaryRepresentation:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation SISchemaConversationTrace

- (void)willProduceDictionaryRepresentation:(id)a3
{
  v8 = a3;
  v4 = [(SISchemaConversationTrace *)self previousTurnID];
  v5 = v4;
  if (v4 && [v4 length] == 16)
  {
    v6 = [v5 si_asNSUUID];
    v7 = [v6 UUIDString];
    [v8 setObject:v7 forKeyedSubscript:@"previousTurnID"];
  }
}

- (SISchemaConversationTrace)initWithDictionary:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = SISchemaConversationTrace;
  v5 = [(SISchemaConversationTrace *)&v10 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"previousTurnID"];
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

- (SISchemaConversationTrace)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(SISchemaConversationTrace *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(SISchemaConversationTrace *)self dictionaryRepresentation];
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
  if (self->_previousTurnID)
  {
    v4 = [(SISchemaConversationTrace *)self previousTurnID];
    v5 = [v4 base64EncodedStringWithOptions:0];
    if (v5)
    {
      [v3 setObject:v5 forKeyedSubscript:@"previousTurnID"];
    }

    else
    {
      v6 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v6 forKeyedSubscript:@"previousTurnID"];
    }
  }

  [(SISchemaConversationTrace *)self willProduceDictionaryRepresentation:v3];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()])
  {
    v5 = [(SISchemaConversationTrace *)self previousTurnID];
    v6 = [v4 previousTurnID];
    v7 = v6;
    if ((v5 != 0) != (v6 == 0))
    {
      v8 = [(SISchemaConversationTrace *)self previousTurnID];
      if (!v8)
      {

LABEL_10:
        v13 = 1;
        goto LABEL_8;
      }

      v9 = v8;
      v10 = [(SISchemaConversationTrace *)self previousTurnID];
      v11 = [v4 previousTurnID];
      v12 = [v10 isEqual:v11];

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

- (void)writeTo:(id)a3
{
  v5 = a3;
  v4 = [(SISchemaConversationTrace *)self previousTurnID];

  if (v4)
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