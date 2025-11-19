@interface DIMSchemaDIMSiriAccountInformation
- (BOOL)isEqual:(id)a3;
- (DIMSchemaDIMSiriAccountInformation)initWithDictionary:(id)a3;
- (DIMSchemaDIMSiriAccountInformation)initWithJSON:(id)a3;
- (NSData)jsonData;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)writeTo:(id)a3;
@end

@implementation DIMSchemaDIMSiriAccountInformation

- (DIMSchemaDIMSiriAccountInformation)initWithDictionary:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = DIMSchemaDIMSiriAccountInformation;
  v5 = [(DIMSchemaDIMSiriAccountInformation *)&v14 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"siriDeviceId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(DIMSchemaDIMSiriAccountInformation *)v5 setSiriDeviceId:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"siriSpeechId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [v8 copy];
      [(DIMSchemaDIMSiriAccountInformation *)v5 setSiriSpeechId:v9];
    }

    v10 = [v4 objectForKeyedSubscript:@"siriUserId"];
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

- (DIMSchemaDIMSiriAccountInformation)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(DIMSchemaDIMSiriAccountInformation *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(DIMSchemaDIMSiriAccountInformation *)self dictionaryRepresentation];
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
  if (self->_siriDeviceId)
  {
    v4 = [(DIMSchemaDIMSiriAccountInformation *)self siriDeviceId];
    v5 = [v4 copy];
    [v3 setObject:v5 forKeyedSubscript:@"siriDeviceId"];
  }

  if (self->_siriSpeechId)
  {
    v6 = [(DIMSchemaDIMSiriAccountInformation *)self siriSpeechId];
    v7 = [v6 copy];
    [v3 setObject:v7 forKeyedSubscript:@"siriSpeechId"];
  }

  if (self->_siriUserId)
  {
    v8 = [(DIMSchemaDIMSiriAccountInformation *)self siriUserId];
    v9 = [v8 copy];
    [v3 setObject:v9 forKeyedSubscript:@"siriUserId"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_siriDeviceId hash];
  v4 = [(NSString *)self->_siriSpeechId hash]^ v3;
  return v4 ^ [(NSString *)self->_siriUserId hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_17;
  }

  v5 = [(DIMSchemaDIMSiriAccountInformation *)self siriDeviceId];
  v6 = [v4 siriDeviceId];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_16;
  }

  v7 = [(DIMSchemaDIMSiriAccountInformation *)self siriDeviceId];
  if (v7)
  {
    v8 = v7;
    v9 = [(DIMSchemaDIMSiriAccountInformation *)self siriDeviceId];
    v10 = [v4 siriDeviceId];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  v5 = [(DIMSchemaDIMSiriAccountInformation *)self siriSpeechId];
  v6 = [v4 siriSpeechId];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_16;
  }

  v12 = [(DIMSchemaDIMSiriAccountInformation *)self siriSpeechId];
  if (v12)
  {
    v13 = v12;
    v14 = [(DIMSchemaDIMSiriAccountInformation *)self siriSpeechId];
    v15 = [v4 siriSpeechId];
    v16 = [v14 isEqual:v15];

    if (!v16)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  v5 = [(DIMSchemaDIMSiriAccountInformation *)self siriUserId];
  v6 = [v4 siriUserId];
  if ((v5 != 0) != (v6 == 0))
  {
    v17 = [(DIMSchemaDIMSiriAccountInformation *)self siriUserId];
    if (!v17)
    {

LABEL_20:
      v22 = 1;
      goto LABEL_18;
    }

    v18 = v17;
    v19 = [(DIMSchemaDIMSiriAccountInformation *)self siriUserId];
    v20 = [v4 siriUserId];
    v21 = [v19 isEqual:v20];

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

- (void)writeTo:(id)a3
{
  v8 = a3;
  v4 = [(DIMSchemaDIMSiriAccountInformation *)self siriDeviceId];

  if (v4)
  {
    PBDataWriterWriteStringField();
  }

  v5 = [(DIMSchemaDIMSiriAccountInformation *)self siriSpeechId];

  if (v5)
  {
    PBDataWriterWriteStringField();
  }

  v6 = [(DIMSchemaDIMSiriAccountInformation *)self siriUserId];

  v7 = v8;
  if (v6)
  {
    PBDataWriterWriteStringField();
    v7 = v8;
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