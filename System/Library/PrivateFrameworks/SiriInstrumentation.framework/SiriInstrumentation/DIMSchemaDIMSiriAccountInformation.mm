@interface DIMSchemaDIMSiriAccountInformation
- (BOOL)isEqual:(id)equal;
- (DIMSchemaDIMSiriAccountInformation)initWithDictionary:(id)dictionary;
- (DIMSchemaDIMSiriAccountInformation)initWithJSON:(id)n;
- (NSData)jsonData;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)writeTo:(id)to;
@end

@implementation DIMSchemaDIMSiriAccountInformation

- (DIMSchemaDIMSiriAccountInformation)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v14.receiver = self;
  v14.super_class = DIMSchemaDIMSiriAccountInformation;
  v5 = [(DIMSchemaDIMSiriAccountInformation *)&v14 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"siriDeviceId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(DIMSchemaDIMSiriAccountInformation *)v5 setSiriDeviceId:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"siriSpeechId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [v8 copy];
      [(DIMSchemaDIMSiriAccountInformation *)v5 setSiriSpeechId:v9];
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"siriUserId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [v10 copy];
      [(DIMSchemaDIMSiriAccountInformation *)v5 setSiriUserId:v11];
    }

    v12 = v5;
  }

  return v5;
}

- (DIMSchemaDIMSiriAccountInformation)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(DIMSchemaDIMSiriAccountInformation *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(DIMSchemaDIMSiriAccountInformation *)self dictionaryRepresentation];
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
  if (self->_siriDeviceId)
  {
    siriDeviceId = [(DIMSchemaDIMSiriAccountInformation *)self siriDeviceId];
    v5 = [siriDeviceId copy];
    [dictionary setObject:v5 forKeyedSubscript:@"siriDeviceId"];
  }

  if (self->_siriSpeechId)
  {
    siriSpeechId = [(DIMSchemaDIMSiriAccountInformation *)self siriSpeechId];
    v7 = [siriSpeechId copy];
    [dictionary setObject:v7 forKeyedSubscript:@"siriSpeechId"];
  }

  if (self->_siriUserId)
  {
    siriUserId = [(DIMSchemaDIMSiriAccountInformation *)self siriUserId];
    v9 = [siriUserId copy];
    [dictionary setObject:v9 forKeyedSubscript:@"siriUserId"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_siriDeviceId hash];
  v4 = [(NSString *)self->_siriSpeechId hash]^ v3;
  return v4 ^ [(NSString *)self->_siriUserId hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_17;
  }

  siriDeviceId = [(DIMSchemaDIMSiriAccountInformation *)self siriDeviceId];
  siriDeviceId2 = [equalCopy siriDeviceId];
  if ((siriDeviceId != 0) == (siriDeviceId2 == 0))
  {
    goto LABEL_16;
  }

  siriDeviceId3 = [(DIMSchemaDIMSiriAccountInformation *)self siriDeviceId];
  if (siriDeviceId3)
  {
    v8 = siriDeviceId3;
    siriDeviceId4 = [(DIMSchemaDIMSiriAccountInformation *)self siriDeviceId];
    siriDeviceId5 = [equalCopy siriDeviceId];
    v11 = [siriDeviceId4 isEqual:siriDeviceId5];

    if (!v11)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  siriDeviceId = [(DIMSchemaDIMSiriAccountInformation *)self siriSpeechId];
  siriDeviceId2 = [equalCopy siriSpeechId];
  if ((siriDeviceId != 0) == (siriDeviceId2 == 0))
  {
    goto LABEL_16;
  }

  siriSpeechId = [(DIMSchemaDIMSiriAccountInformation *)self siriSpeechId];
  if (siriSpeechId)
  {
    v13 = siriSpeechId;
    siriSpeechId2 = [(DIMSchemaDIMSiriAccountInformation *)self siriSpeechId];
    siriSpeechId3 = [equalCopy siriSpeechId];
    v16 = [siriSpeechId2 isEqual:siriSpeechId3];

    if (!v16)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  siriDeviceId = [(DIMSchemaDIMSiriAccountInformation *)self siriUserId];
  siriDeviceId2 = [equalCopy siriUserId];
  if ((siriDeviceId != 0) != (siriDeviceId2 == 0))
  {
    siriUserId = [(DIMSchemaDIMSiriAccountInformation *)self siriUserId];
    if (!siriUserId)
    {

LABEL_20:
      v22 = 1;
      goto LABEL_18;
    }

    v18 = siriUserId;
    siriUserId2 = [(DIMSchemaDIMSiriAccountInformation *)self siriUserId];
    siriUserId3 = [equalCopy siriUserId];
    v21 = [siriUserId2 isEqual:siriUserId3];

    if (v21)
    {
      goto LABEL_20;
    }
  }

  else
  {
LABEL_16:
  }

LABEL_17:
  v22 = 0;
LABEL_18:

  return v22;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  siriDeviceId = [(DIMSchemaDIMSiriAccountInformation *)self siriDeviceId];

  if (siriDeviceId)
  {
    PBDataWriterWriteStringField();
  }

  siriSpeechId = [(DIMSchemaDIMSiriAccountInformation *)self siriSpeechId];

  if (siriSpeechId)
  {
    PBDataWriterWriteStringField();
  }

  siriUserId = [(DIMSchemaDIMSiriAccountInformation *)self siriUserId];

  v7 = toCopy;
  if (siriUserId)
  {
    PBDataWriterWriteStringField();
    v7 = toCopy;
  }
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];
  [(SISensitiveConditionsSet *)v2 addCondition:4];
  [(SISensitiveConditionsSet *)v2 addCondition:8];

  return v2;
}

@end