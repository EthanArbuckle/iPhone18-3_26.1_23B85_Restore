@interface FLOWLINKSchemaFLOWLINKAutoShortcutTemplateUsed
- (BOOL)isEqual:(id)equal;
- (FLOWLINKSchemaFLOWLINKAutoShortcutTemplateUsed)initWithDictionary:(id)dictionary;
- (FLOWLINKSchemaFLOWLINKAutoShortcutTemplateUsed)initWithJSON:(id)n;
- (NSData)jsonData;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (void)writeTo:(id)to;
@end

@implementation FLOWLINKSchemaFLOWLINKAutoShortcutTemplateUsed

- (FLOWLINKSchemaFLOWLINKAutoShortcutTemplateUsed)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v10.receiver = self;
  v10.super_class = FLOWLINKSchemaFLOWLINKAutoShortcutTemplateUsed;
  v5 = [(FLOWLINKSchemaFLOWLINKAutoShortcutTemplateUsed *)&v10 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"autoshortcutTemplate"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(FLOWLINKSchemaFLOWLINKAutoShortcutTemplateUsed *)v5 setAutoshortcutTemplate:v7];
    }

    v8 = v5;
  }

  return v5;
}

- (FLOWLINKSchemaFLOWLINKAutoShortcutTemplateUsed)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(FLOWLINKSchemaFLOWLINKAutoShortcutTemplateUsed *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(FLOWLINKSchemaFLOWLINKAutoShortcutTemplateUsed *)self dictionaryRepresentation];
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
  if (self->_autoshortcutTemplate)
  {
    autoshortcutTemplate = [(FLOWLINKSchemaFLOWLINKAutoShortcutTemplateUsed *)self autoshortcutTemplate];
    v5 = [autoshortcutTemplate copy];
    [dictionary setObject:v5 forKeyedSubscript:@"autoshortcutTemplate"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    autoshortcutTemplate = [(FLOWLINKSchemaFLOWLINKAutoShortcutTemplateUsed *)self autoshortcutTemplate];
    autoshortcutTemplate2 = [equalCopy autoshortcutTemplate];
    v7 = autoshortcutTemplate2;
    if ((autoshortcutTemplate != 0) != (autoshortcutTemplate2 == 0))
    {
      autoshortcutTemplate3 = [(FLOWLINKSchemaFLOWLINKAutoShortcutTemplateUsed *)self autoshortcutTemplate];
      if (!autoshortcutTemplate3)
      {

LABEL_10:
        v13 = 1;
        goto LABEL_8;
      }

      v9 = autoshortcutTemplate3;
      autoshortcutTemplate4 = [(FLOWLINKSchemaFLOWLINKAutoShortcutTemplateUsed *)self autoshortcutTemplate];
      autoshortcutTemplate5 = [equalCopy autoshortcutTemplate];
      v12 = [autoshortcutTemplate4 isEqual:autoshortcutTemplate5];

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
  autoshortcutTemplate = [(FLOWLINKSchemaFLOWLINKAutoShortcutTemplateUsed *)self autoshortcutTemplate];

  if (autoshortcutTemplate)
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