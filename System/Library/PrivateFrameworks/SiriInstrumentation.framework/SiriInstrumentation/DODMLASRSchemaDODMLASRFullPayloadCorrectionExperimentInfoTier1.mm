@interface DODMLASRSchemaDODMLASRFullPayloadCorrectionExperimentInfoTier1
- (BOOL)isEqual:(id)equal;
- (DODMLASRSchemaDODMLASRFullPayloadCorrectionExperimentInfoTier1)initWithDictionary:(id)dictionary;
- (DODMLASRSchemaDODMLASRFullPayloadCorrectionExperimentInfoTier1)initWithJSON:(id)n;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (void)writeTo:(id)to;
@end

@implementation DODMLASRSchemaDODMLASRFullPayloadCorrectionExperimentInfoTier1

- (DODMLASRSchemaDODMLASRFullPayloadCorrectionExperimentInfoTier1)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v10.receiver = self;
  v10.super_class = DODMLASRSchemaDODMLASRFullPayloadCorrectionExperimentInfoTier1;
  v5 = [(DODMLASRSchemaDODMLASRFullPayloadCorrectionExperimentInfoTier1 *)&v10 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"infoTier1"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[ASRSchemaASRFullPayloadCorrectionInfoTier1 alloc] initWithDictionary:v6];
      [(DODMLASRSchemaDODMLASRFullPayloadCorrectionExperimentInfoTier1 *)v5 setInfoTier1:v7];
    }

    v8 = v5;
  }

  return v5;
}

- (DODMLASRSchemaDODMLASRFullPayloadCorrectionExperimentInfoTier1)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(DODMLASRSchemaDODMLASRFullPayloadCorrectionExperimentInfoTier1 *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(DODMLASRSchemaDODMLASRFullPayloadCorrectionExperimentInfoTier1 *)self dictionaryRepresentation];
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
  if (self->_infoTier1)
  {
    infoTier1 = [(DODMLASRSchemaDODMLASRFullPayloadCorrectionExperimentInfoTier1 *)self infoTier1];
    dictionaryRepresentation = [infoTier1 dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"infoTier1"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"infoTier1"];
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
    infoTier1 = [(DODMLASRSchemaDODMLASRFullPayloadCorrectionExperimentInfoTier1 *)self infoTier1];
    infoTier12 = [equalCopy infoTier1];
    v7 = infoTier12;
    if ((infoTier1 != 0) != (infoTier12 == 0))
    {
      infoTier13 = [(DODMLASRSchemaDODMLASRFullPayloadCorrectionExperimentInfoTier1 *)self infoTier1];
      if (!infoTier13)
      {

LABEL_10:
        v13 = 1;
        goto LABEL_8;
      }

      v9 = infoTier13;
      infoTier14 = [(DODMLASRSchemaDODMLASRFullPayloadCorrectionExperimentInfoTier1 *)self infoTier1];
      infoTier15 = [equalCopy infoTier1];
      v12 = [infoTier14 isEqual:infoTier15];

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
  infoTier1 = [(DODMLASRSchemaDODMLASRFullPayloadCorrectionExperimentInfoTier1 *)self infoTier1];

  if (infoTier1)
  {
    infoTier12 = [(DODMLASRSchemaDODMLASRFullPayloadCorrectionExperimentInfoTier1 *)self infoTier1];
    PBDataWriterWriteSubmessage();
  }
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  v9.receiver = self;
  v9.super_class = DODMLASRSchemaDODMLASRFullPayloadCorrectionExperimentInfoTier1;
  policyCopy = policy;
  v5 = [(SISchemaInstrumentationMessage *)&v9 applySensitiveConditionsPolicy:policyCopy];
  v6 = [(DODMLASRSchemaDODMLASRFullPayloadCorrectionExperimentInfoTier1 *)self infoTier1:v9.receiver];
  v7 = [v6 applySensitiveConditionsPolicy:policyCopy];

  LODWORD(policyCopy) = [v7 suppressMessage];
  if (policyCopy)
  {
    [(DODMLASRSchemaDODMLASRFullPayloadCorrectionExperimentInfoTier1 *)self deleteInfoTier1];
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