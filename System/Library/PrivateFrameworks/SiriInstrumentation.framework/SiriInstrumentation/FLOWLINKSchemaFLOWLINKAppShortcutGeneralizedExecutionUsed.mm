@interface FLOWLINKSchemaFLOWLINKAppShortcutGeneralizedExecutionUsed
- (BOOL)isEqual:(id)equal;
- (FLOWLINKSchemaFLOWLINKAppShortcutGeneralizedExecutionUsed)initWithDictionary:(id)dictionary;
- (FLOWLINKSchemaFLOWLINKAppShortcutGeneralizedExecutionUsed)initWithJSON:(id)n;
- (NSData)jsonData;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (void)writeTo:(id)to;
@end

@implementation FLOWLINKSchemaFLOWLINKAppShortcutGeneralizedExecutionUsed

- (FLOWLINKSchemaFLOWLINKAppShortcutGeneralizedExecutionUsed)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v10.receiver = self;
  v10.super_class = FLOWLINKSchemaFLOWLINKAppShortcutGeneralizedExecutionUsed;
  v5 = [(FLOWLINKSchemaFLOWLINKAppShortcutGeneralizedExecutionUsed *)&v10 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"appShortcutId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(FLOWLINKSchemaFLOWLINKAppShortcutGeneralizedExecutionUsed *)v5 setAppShortcutId:v7];
    }

    v8 = v5;
  }

  return v5;
}

- (FLOWLINKSchemaFLOWLINKAppShortcutGeneralizedExecutionUsed)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(FLOWLINKSchemaFLOWLINKAppShortcutGeneralizedExecutionUsed *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(FLOWLINKSchemaFLOWLINKAppShortcutGeneralizedExecutionUsed *)self dictionaryRepresentation];
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
  if (self->_appShortcutId)
  {
    appShortcutId = [(FLOWLINKSchemaFLOWLINKAppShortcutGeneralizedExecutionUsed *)self appShortcutId];
    v5 = [appShortcutId copy];
    [dictionary setObject:v5 forKeyedSubscript:@"appShortcutId"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    appShortcutId = [(FLOWLINKSchemaFLOWLINKAppShortcutGeneralizedExecutionUsed *)self appShortcutId];
    appShortcutId2 = [equalCopy appShortcutId];
    v7 = appShortcutId2;
    if ((appShortcutId != 0) != (appShortcutId2 == 0))
    {
      appShortcutId3 = [(FLOWLINKSchemaFLOWLINKAppShortcutGeneralizedExecutionUsed *)self appShortcutId];
      if (!appShortcutId3)
      {

LABEL_10:
        v13 = 1;
        goto LABEL_8;
      }

      v9 = appShortcutId3;
      appShortcutId4 = [(FLOWLINKSchemaFLOWLINKAppShortcutGeneralizedExecutionUsed *)self appShortcutId];
      appShortcutId5 = [equalCopy appShortcutId];
      v12 = [appShortcutId4 isEqual:appShortcutId5];

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
  appShortcutId = [(FLOWLINKSchemaFLOWLINKAppShortcutGeneralizedExecutionUsed *)self appShortcutId];

  if (appShortcutId)
  {
    PBDataWriterWriteStringField();
  }
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end