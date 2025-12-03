@interface ODMSiriSchemaODMSiriEventMetadata
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (ODMSiriSchemaODMSiriEventMetadata)initWithDictionary:(id)dictionary;
- (ODMSiriSchemaODMSiriEventMetadata)initWithJSON:(id)n;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)writeTo:(id)to;
@end

@implementation ODMSiriSchemaODMSiriEventMetadata

- (ODMSiriSchemaODMSiriEventMetadata)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v14.receiver = self;
  v14.super_class = ODMSiriSchemaODMSiriEventMetadata;
  v5 = [(ODMSiriSchemaODMSiriEventMetadata *)&v14 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"odmId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[SISchemaUUID alloc] initWithDictionary:v6];
      [(ODMSiriSchemaODMSiriEventMetadata *)v5 setOdmId:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"pluginVersion"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [v8 copy];
      [(ODMSiriSchemaODMSiriEventMetadata *)v5 setPluginVersion:v9];
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"trialExperimentIdentifiers"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [[ODMSiriSchemaODMTrialExperimentIdentifiers alloc] initWithDictionary:v10];
      [(ODMSiriSchemaODMSiriEventMetadata *)v5 setTrialExperimentIdentifiers:v11];
    }

    v12 = v5;
  }

  return v5;
}

- (ODMSiriSchemaODMSiriEventMetadata)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(ODMSiriSchemaODMSiriEventMetadata *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(ODMSiriSchemaODMSiriEventMetadata *)self dictionaryRepresentation];
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
  if (self->_odmId)
  {
    odmId = [(ODMSiriSchemaODMSiriEventMetadata *)self odmId];
    dictionaryRepresentation = [odmId dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"odmId"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"odmId"];
    }
  }

  if (self->_pluginVersion)
  {
    pluginVersion = [(ODMSiriSchemaODMSiriEventMetadata *)self pluginVersion];
    v8 = [pluginVersion copy];
    [dictionary setObject:v8 forKeyedSubscript:@"pluginVersion"];
  }

  if (self->_trialExperimentIdentifiers)
  {
    trialExperimentIdentifiers = [(ODMSiriSchemaODMSiriEventMetadata *)self trialExperimentIdentifiers];
    dictionaryRepresentation2 = [trialExperimentIdentifiers dictionaryRepresentation];
    if (dictionaryRepresentation2)
    {
      [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"trialExperimentIdentifiers"];
    }

    else
    {
      null2 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null2 forKeyedSubscript:@"trialExperimentIdentifiers"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(SISchemaUUID *)self->_odmId hash];
  v4 = [(NSString *)self->_pluginVersion hash]^ v3;
  return v4 ^ [(ODMSiriSchemaODMTrialExperimentIdentifiers *)self->_trialExperimentIdentifiers hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_17;
  }

  odmId = [(ODMSiriSchemaODMSiriEventMetadata *)self odmId];
  odmId2 = [equalCopy odmId];
  if ((odmId != 0) == (odmId2 == 0))
  {
    goto LABEL_16;
  }

  odmId3 = [(ODMSiriSchemaODMSiriEventMetadata *)self odmId];
  if (odmId3)
  {
    v8 = odmId3;
    odmId4 = [(ODMSiriSchemaODMSiriEventMetadata *)self odmId];
    odmId5 = [equalCopy odmId];
    v11 = [odmId4 isEqual:odmId5];

    if (!v11)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  odmId = [(ODMSiriSchemaODMSiriEventMetadata *)self pluginVersion];
  odmId2 = [equalCopy pluginVersion];
  if ((odmId != 0) == (odmId2 == 0))
  {
    goto LABEL_16;
  }

  pluginVersion = [(ODMSiriSchemaODMSiriEventMetadata *)self pluginVersion];
  if (pluginVersion)
  {
    v13 = pluginVersion;
    pluginVersion2 = [(ODMSiriSchemaODMSiriEventMetadata *)self pluginVersion];
    pluginVersion3 = [equalCopy pluginVersion];
    v16 = [pluginVersion2 isEqual:pluginVersion3];

    if (!v16)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  odmId = [(ODMSiriSchemaODMSiriEventMetadata *)self trialExperimentIdentifiers];
  odmId2 = [equalCopy trialExperimentIdentifiers];
  if ((odmId != 0) != (odmId2 == 0))
  {
    trialExperimentIdentifiers = [(ODMSiriSchemaODMSiriEventMetadata *)self trialExperimentIdentifiers];
    if (!trialExperimentIdentifiers)
    {

LABEL_20:
      v22 = 1;
      goto LABEL_18;
    }

    v18 = trialExperimentIdentifiers;
    trialExperimentIdentifiers2 = [(ODMSiriSchemaODMSiriEventMetadata *)self trialExperimentIdentifiers];
    trialExperimentIdentifiers3 = [equalCopy trialExperimentIdentifiers];
    v21 = [trialExperimentIdentifiers2 isEqual:trialExperimentIdentifiers3];

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
  odmId = [(ODMSiriSchemaODMSiriEventMetadata *)self odmId];

  if (odmId)
  {
    odmId2 = [(ODMSiriSchemaODMSiriEventMetadata *)self odmId];
    PBDataWriterWriteSubmessage();
  }

  pluginVersion = [(ODMSiriSchemaODMSiriEventMetadata *)self pluginVersion];

  if (pluginVersion)
  {
    PBDataWriterWriteStringField();
  }

  trialExperimentIdentifiers = [(ODMSiriSchemaODMSiriEventMetadata *)self trialExperimentIdentifiers];

  v8 = toCopy;
  if (trialExperimentIdentifiers)
  {
    trialExperimentIdentifiers2 = [(ODMSiriSchemaODMSiriEventMetadata *)self trialExperimentIdentifiers];
    PBDataWriterWriteSubmessage();

    v8 = toCopy;
  }
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  policyCopy = policy;
  v13.receiver = self;
  v13.super_class = ODMSiriSchemaODMSiriEventMetadata;
  v5 = [(SISchemaInstrumentationMessage *)&v13 applySensitiveConditionsPolicy:policyCopy];
  odmId = [(ODMSiriSchemaODMSiriEventMetadata *)self odmId];
  v7 = [odmId applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v7 suppressMessage];

  if (suppressMessage)
  {
    [(ODMSiriSchemaODMSiriEventMetadata *)self deleteOdmId];
  }

  trialExperimentIdentifiers = [(ODMSiriSchemaODMSiriEventMetadata *)self trialExperimentIdentifiers];
  v10 = [trialExperimentIdentifiers applySensitiveConditionsPolicy:policyCopy];
  suppressMessage2 = [v10 suppressMessage];

  if (suppressMessage2)
  {
    [(ODMSiriSchemaODMSiriEventMetadata *)self deleteTrialExperimentIdentifiers];
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