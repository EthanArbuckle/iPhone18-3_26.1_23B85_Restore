@interface MHSchemaMHAcousticFalseTriggerMitigationStarted
- (BOOL)isEqual:(id)equal;
- (MHSchemaMHAcousticFalseTriggerMitigationStarted)initWithDictionary:(id)dictionary;
- (MHSchemaMHAcousticFalseTriggerMitigationStarted)initWithJSON:(id)n;
- (NSData)jsonData;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)writeTo:(id)to;
@end

@implementation MHSchemaMHAcousticFalseTriggerMitigationStarted

- (MHSchemaMHAcousticFalseTriggerMitigationStarted)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v11.receiver = self;
  v11.super_class = MHSchemaMHAcousticFalseTriggerMitigationStarted;
  v5 = [(MHSchemaMHAcousticFalseTriggerMitigationStarted *)&v11 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"modelVersion"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(MHSchemaMHAcousticFalseTriggerMitigationStarted *)v5 setModelVersion:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"mitigationType"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[MHSchemaMHAcousticFalseTriggerMitigationStarted setMitigationType:](v5, "setMitigationType:", [v8 intValue]);
    }

    v9 = v5;
  }

  return v5;
}

- (MHSchemaMHAcousticFalseTriggerMitigationStarted)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(MHSchemaMHAcousticFalseTriggerMitigationStarted *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(MHSchemaMHAcousticFalseTriggerMitigationStarted *)self dictionaryRepresentation];
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
    mitigationType = [(MHSchemaMHAcousticFalseTriggerMitigationStarted *)self mitigationType];
    v5 = @"MHACOUSTICFALSETRIGGERMITIGATOR_TYPE_UNKNOWN";
    if (mitigationType == 1)
    {
      v5 = @"MHACOUSTICFALSETRIGGERMITIGATOR_TYPE_VOICETRIGGER";
    }

    if (mitigationType == 2)
    {
      v6 = @"MHACOUSTICFALSETRIGGERMITIGATOR_TYPE_CONTINUOUS_CONVERSATION";
    }

    else
    {
      v6 = v5;
    }

    [dictionary setObject:v6 forKeyedSubscript:@"mitigationType"];
  }

  if (self->_modelVersion)
  {
    modelVersion = [(MHSchemaMHAcousticFalseTriggerMitigationStarted *)self modelVersion];
    v8 = [modelVersion copy];
    [dictionary setObject:v8 forKeyedSubscript:@"modelVersion"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_modelVersion hash];
  if (*&self->_has)
  {
    v4 = 2654435761 * self->_mitigationType;
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

  modelVersion = [(MHSchemaMHAcousticFalseTriggerMitigationStarted *)self modelVersion];
  modelVersion2 = [equalCopy modelVersion];
  v7 = modelVersion2;
  if ((modelVersion != 0) == (modelVersion2 == 0))
  {

LABEL_12:
    v14 = 0;
    goto LABEL_13;
  }

  modelVersion3 = [(MHSchemaMHAcousticFalseTriggerMitigationStarted *)self modelVersion];
  if (modelVersion3)
  {
    v9 = modelVersion3;
    modelVersion4 = [(MHSchemaMHAcousticFalseTriggerMitigationStarted *)self modelVersion];
    modelVersion5 = [equalCopy modelVersion];
    v12 = [modelVersion4 isEqual:modelVersion5];

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
    mitigationType = self->_mitigationType;
    if (mitigationType != [equalCopy mitigationType])
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
  modelVersion = [(MHSchemaMHAcousticFalseTriggerMitigationStarted *)self modelVersion];

  if (modelVersion)
  {
    PBDataWriterWriteStringField();
  }

  if (*&self->_has)
  {
    PBDataWriterWriteInt32Field();
  }
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end