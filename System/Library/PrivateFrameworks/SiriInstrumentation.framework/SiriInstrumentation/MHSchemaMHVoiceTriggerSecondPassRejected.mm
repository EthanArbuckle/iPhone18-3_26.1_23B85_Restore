@interface MHSchemaMHVoiceTriggerSecondPassRejected
- (BOOL)isEqual:(id)equal;
- (MHSchemaMHVoiceTriggerSecondPassRejected)initWithDictionary:(id)dictionary;
- (MHSchemaMHVoiceTriggerSecondPassRejected)initWithJSON:(id)n;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)writeTo:(id)to;
@end

@implementation MHSchemaMHVoiceTriggerSecondPassRejected

- (MHSchemaMHVoiceTriggerSecondPassRejected)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v11.receiver = self;
  v11.super_class = MHSchemaMHVoiceTriggerSecondPassRejected;
  v5 = [(MHSchemaMHVoiceTriggerSecondPassRejected *)&v11 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"voiceTriggerEventInfo"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[MHSchemaMHVoiceTriggerEventInfo alloc] initWithDictionary:v6];
      [(MHSchemaMHVoiceTriggerSecondPassRejected *)v5 setVoiceTriggerEventInfo:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"reason"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[MHSchemaMHVoiceTriggerSecondPassRejected setReason:](v5, "setReason:", [v8 intValue]);
    }

    v9 = v5;
  }

  return v5;
}

- (MHSchemaMHVoiceTriggerSecondPassRejected)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(MHSchemaMHVoiceTriggerSecondPassRejected *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(MHSchemaMHVoiceTriggerSecondPassRejected *)self dictionaryRepresentation];
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
  if (*&self->_has)
  {
    v4 = [(MHSchemaMHVoiceTriggerSecondPassRejected *)self reason]- 1;
    if (v4 > 8)
    {
      v5 = @"MHVOICETRIGGERSECONDPASSREJECTREASON_UNKNOWN";
    }

    else
    {
      v5 = off_1E78D9AA0[v4];
    }

    [dictionary setObject:v5 forKeyedSubscript:@"reason"];
  }

  if (self->_voiceTriggerEventInfo)
  {
    voiceTriggerEventInfo = [(MHSchemaMHVoiceTriggerSecondPassRejected *)self voiceTriggerEventInfo];
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

- (unint64_t)hash
{
  v3 = [(MHSchemaMHVoiceTriggerEventInfo *)self->_voiceTriggerEventInfo hash];
  if (*&self->_has)
  {
    v4 = 2654435761 * self->_reason;
  }

  else
  {
    v4 = 0;
  }

  return v4 ^ v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_12;
  }

  voiceTriggerEventInfo = [(MHSchemaMHVoiceTriggerSecondPassRejected *)self voiceTriggerEventInfo];
  voiceTriggerEventInfo2 = [equalCopy voiceTriggerEventInfo];
  v7 = voiceTriggerEventInfo2;
  if ((voiceTriggerEventInfo != 0) == (voiceTriggerEventInfo2 == 0))
  {

LABEL_12:
    v14 = 0;
    goto LABEL_13;
  }

  voiceTriggerEventInfo3 = [(MHSchemaMHVoiceTriggerSecondPassRejected *)self voiceTriggerEventInfo];
  if (voiceTriggerEventInfo3)
  {
    v9 = voiceTriggerEventInfo3;
    voiceTriggerEventInfo4 = [(MHSchemaMHVoiceTriggerSecondPassRejected *)self voiceTriggerEventInfo];
    voiceTriggerEventInfo5 = [equalCopy voiceTriggerEventInfo];
    v12 = [voiceTriggerEventInfo4 isEqual:voiceTriggerEventInfo5];

    if (!v12)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  if ((*&self->_has & 1) != (equalCopy[20] & 1))
  {
    goto LABEL_12;
  }

  if (*&self->_has)
  {
    reason = self->_reason;
    if (reason != [equalCopy reason])
    {
      goto LABEL_12;
    }
  }

  v14 = 1;
LABEL_13:

  return v14;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  voiceTriggerEventInfo = [(MHSchemaMHVoiceTriggerSecondPassRejected *)self voiceTriggerEventInfo];

  if (voiceTriggerEventInfo)
  {
    voiceTriggerEventInfo2 = [(MHSchemaMHVoiceTriggerSecondPassRejected *)self voiceTriggerEventInfo];
    PBDataWriterWriteSubmessage();
  }

  if (*&self->_has)
  {
    PBDataWriterWriteInt32Field();
  }
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  v9.receiver = self;
  v9.super_class = MHSchemaMHVoiceTriggerSecondPassRejected;
  policyCopy = policy;
  v5 = [(SISchemaInstrumentationMessage *)&v9 applySensitiveConditionsPolicy:policyCopy];
  v6 = [(MHSchemaMHVoiceTriggerSecondPassRejected *)self voiceTriggerEventInfo:v9.receiver];
  v7 = [v6 applySensitiveConditionsPolicy:policyCopy];

  LODWORD(policyCopy) = [v7 suppressMessage];
  if (policyCopy)
  {
    [(MHSchemaMHVoiceTriggerSecondPassRejected *)self deleteVoiceTriggerEventInfo];
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