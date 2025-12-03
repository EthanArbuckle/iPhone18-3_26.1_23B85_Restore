@interface FLOWSchemaFLOWVoiceShortcutAction
- (BOOL)isEqual:(id)equal;
- (FLOWSchemaFLOWVoiceShortcutAction)initWithDictionary:(id)dictionary;
- (FLOWSchemaFLOWVoiceShortcutAction)initWithJSON:(id)n;
- (NSData)jsonData;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)writeTo:(id)to;
@end

@implementation FLOWSchemaFLOWVoiceShortcutAction

- (FLOWSchemaFLOWVoiceShortcutAction)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v16.receiver = self;
  v16.super_class = FLOWSchemaFLOWVoiceShortcutAction;
  v5 = [(FLOWSchemaFLOWVoiceShortcutAction *)&v16 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"appId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(FLOWSchemaFLOWVoiceShortcutAction *)v5 setAppId:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"intentCategory"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [v8 copy];
      [(FLOWSchemaFLOWVoiceShortcutAction *)v5 setIntentCategory:v9];
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"intentName"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [v10 copy];
      [(FLOWSchemaFLOWVoiceShortcutAction *)v5 setIntentName:v11];
    }

    v12 = [dictionaryCopy objectForKeyedSubscript:@"intentNLDomain"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [v12 copy];
      [(FLOWSchemaFLOWVoiceShortcutAction *)v5 setIntentNLDomain:v13];
    }

    v14 = v5;
  }

  return v5;
}

- (FLOWSchemaFLOWVoiceShortcutAction)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(FLOWSchemaFLOWVoiceShortcutAction *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(FLOWSchemaFLOWVoiceShortcutAction *)self dictionaryRepresentation];
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
  if (self->_appId)
  {
    appId = [(FLOWSchemaFLOWVoiceShortcutAction *)self appId];
    v5 = [appId copy];
    [dictionary setObject:v5 forKeyedSubscript:@"appId"];
  }

  if (self->_intentCategory)
  {
    intentCategory = [(FLOWSchemaFLOWVoiceShortcutAction *)self intentCategory];
    v7 = [intentCategory copy];
    [dictionary setObject:v7 forKeyedSubscript:@"intentCategory"];
  }

  if (self->_intentNLDomain)
  {
    intentNLDomain = [(FLOWSchemaFLOWVoiceShortcutAction *)self intentNLDomain];
    v9 = [intentNLDomain copy];
    [dictionary setObject:v9 forKeyedSubscript:@"intentNLDomain"];
  }

  if (self->_intentName)
  {
    intentName = [(FLOWSchemaFLOWVoiceShortcutAction *)self intentName];
    v11 = [intentName copy];
    [dictionary setObject:v11 forKeyedSubscript:@"intentName"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_appId hash];
  v4 = [(NSString *)self->_intentCategory hash]^ v3;
  v5 = [(NSString *)self->_intentName hash];
  return v4 ^ v5 ^ [(NSString *)self->_intentNLDomain hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_22;
  }

  appId = [(FLOWSchemaFLOWVoiceShortcutAction *)self appId];
  appId2 = [equalCopy appId];
  if ((appId != 0) == (appId2 == 0))
  {
    goto LABEL_21;
  }

  appId3 = [(FLOWSchemaFLOWVoiceShortcutAction *)self appId];
  if (appId3)
  {
    v8 = appId3;
    appId4 = [(FLOWSchemaFLOWVoiceShortcutAction *)self appId];
    appId5 = [equalCopy appId];
    v11 = [appId4 isEqual:appId5];

    if (!v11)
    {
      goto LABEL_22;
    }
  }

  else
  {
  }

  appId = [(FLOWSchemaFLOWVoiceShortcutAction *)self intentCategory];
  appId2 = [equalCopy intentCategory];
  if ((appId != 0) == (appId2 == 0))
  {
    goto LABEL_21;
  }

  intentCategory = [(FLOWSchemaFLOWVoiceShortcutAction *)self intentCategory];
  if (intentCategory)
  {
    v13 = intentCategory;
    intentCategory2 = [(FLOWSchemaFLOWVoiceShortcutAction *)self intentCategory];
    intentCategory3 = [equalCopy intentCategory];
    v16 = [intentCategory2 isEqual:intentCategory3];

    if (!v16)
    {
      goto LABEL_22;
    }
  }

  else
  {
  }

  appId = [(FLOWSchemaFLOWVoiceShortcutAction *)self intentName];
  appId2 = [equalCopy intentName];
  if ((appId != 0) == (appId2 == 0))
  {
    goto LABEL_21;
  }

  intentName = [(FLOWSchemaFLOWVoiceShortcutAction *)self intentName];
  if (intentName)
  {
    v18 = intentName;
    intentName2 = [(FLOWSchemaFLOWVoiceShortcutAction *)self intentName];
    intentName3 = [equalCopy intentName];
    v21 = [intentName2 isEqual:intentName3];

    if (!v21)
    {
      goto LABEL_22;
    }
  }

  else
  {
  }

  appId = [(FLOWSchemaFLOWVoiceShortcutAction *)self intentNLDomain];
  appId2 = [equalCopy intentNLDomain];
  if ((appId != 0) != (appId2 == 0))
  {
    intentNLDomain = [(FLOWSchemaFLOWVoiceShortcutAction *)self intentNLDomain];
    if (!intentNLDomain)
    {

LABEL_25:
      v27 = 1;
      goto LABEL_23;
    }

    v23 = intentNLDomain;
    intentNLDomain2 = [(FLOWSchemaFLOWVoiceShortcutAction *)self intentNLDomain];
    intentNLDomain3 = [equalCopy intentNLDomain];
    v26 = [intentNLDomain2 isEqual:intentNLDomain3];

    if (v26)
    {
      goto LABEL_25;
    }
  }

  else
  {
LABEL_21:
  }

LABEL_22:
  v27 = 0;
LABEL_23:

  return v27;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  appId = [(FLOWSchemaFLOWVoiceShortcutAction *)self appId];

  if (appId)
  {
    PBDataWriterWriteStringField();
  }

  intentCategory = [(FLOWSchemaFLOWVoiceShortcutAction *)self intentCategory];

  if (intentCategory)
  {
    PBDataWriterWriteStringField();
  }

  intentName = [(FLOWSchemaFLOWVoiceShortcutAction *)self intentName];

  if (intentName)
  {
    PBDataWriterWriteStringField();
  }

  intentNLDomain = [(FLOWSchemaFLOWVoiceShortcutAction *)self intentNLDomain];

  v8 = toCopy;
  if (intentNLDomain)
  {
    PBDataWriterWriteStringField();
    v8 = toCopy;
  }
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end