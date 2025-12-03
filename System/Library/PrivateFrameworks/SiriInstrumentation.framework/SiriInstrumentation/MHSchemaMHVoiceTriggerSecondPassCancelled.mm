@interface MHSchemaMHVoiceTriggerSecondPassCancelled
- (BOOL)isEqual:(id)equal;
- (MHSchemaMHVoiceTriggerSecondPassCancelled)initWithDictionary:(id)dictionary;
- (MHSchemaMHVoiceTriggerSecondPassCancelled)initWithJSON:(id)n;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (void)writeTo:(id)to;
@end

@implementation MHSchemaMHVoiceTriggerSecondPassCancelled

- (MHSchemaMHVoiceTriggerSecondPassCancelled)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v10.receiver = self;
  v10.super_class = MHSchemaMHVoiceTriggerSecondPassCancelled;
  v5 = [(MHSchemaMHVoiceTriggerSecondPassCancelled *)&v10 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"voiceTriggerEventInfo"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[MHSchemaMHVoiceTriggerEventInfo alloc] initWithDictionary:v6];
      [(MHSchemaMHVoiceTriggerSecondPassCancelled *)v5 setVoiceTriggerEventInfo:v7];
    }

    v8 = v5;
  }

  return v5;
}

- (MHSchemaMHVoiceTriggerSecondPassCancelled)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(MHSchemaMHVoiceTriggerSecondPassCancelled *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(MHSchemaMHVoiceTriggerSecondPassCancelled *)self dictionaryRepresentation];
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
  if (self->_voiceTriggerEventInfo)
  {
    voiceTriggerEventInfo = [(MHSchemaMHVoiceTriggerSecondPassCancelled *)self voiceTriggerEventInfo];
    dictionaryRepresentation = [voiceTriggerEventInfo dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"voiceTriggerEventInfo"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"voiceTriggerEventInfo"];
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
    voiceTriggerEventInfo = [(MHSchemaMHVoiceTriggerSecondPassCancelled *)self voiceTriggerEventInfo];
    voiceTriggerEventInfo2 = [equalCopy voiceTriggerEventInfo];
    v7 = voiceTriggerEventInfo2;
    if ((voiceTriggerEventInfo != 0) != (voiceTriggerEventInfo2 == 0))
    {
      voiceTriggerEventInfo3 = [(MHSchemaMHVoiceTriggerSecondPassCancelled *)self voiceTriggerEventInfo];
      if (!voiceTriggerEventInfo3)
      {

LABEL_10:
        v13 = 1;
        goto LABEL_8;
      }

      v9 = voiceTriggerEventInfo3;
      voiceTriggerEventInfo4 = [(MHSchemaMHVoiceTriggerSecondPassCancelled *)self voiceTriggerEventInfo];
      voiceTriggerEventInfo5 = [equalCopy voiceTriggerEventInfo];
      v12 = [voiceTriggerEventInfo4 isEqual:voiceTriggerEventInfo5];

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
  voiceTriggerEventInfo = [(MHSchemaMHVoiceTriggerSecondPassCancelled *)self voiceTriggerEventInfo];

  if (voiceTriggerEventInfo)
  {
    voiceTriggerEventInfo2 = [(MHSchemaMHVoiceTriggerSecondPassCancelled *)self voiceTriggerEventInfo];
    PBDataWriterWriteSubmessage();
  }
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  v9.receiver = self;
  v9.super_class = MHSchemaMHVoiceTriggerSecondPassCancelled;
  policyCopy = policy;
  v5 = [(SISchemaInstrumentationMessage *)&v9 applySensitiveConditionsPolicy:policyCopy];
  v6 = [(MHSchemaMHVoiceTriggerSecondPassCancelled *)self voiceTriggerEventInfo:v9.receiver];
  v7 = [v6 applySensitiveConditionsPolicy:policyCopy];

  LODWORD(policyCopy) = [v7 suppressMessage];
  if (policyCopy)
  {
    [(MHSchemaMHVoiceTriggerSecondPassCancelled *)self deleteVoiceTriggerEventInfo];
  }

  return v5;
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end