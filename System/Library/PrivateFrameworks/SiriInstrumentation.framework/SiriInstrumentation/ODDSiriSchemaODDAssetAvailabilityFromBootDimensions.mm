@interface ODDSiriSchemaODDAssetAvailabilityFromBootDimensions
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (ODDSiriSchemaODDAssetAvailabilityFromBootDimensions)initWithDictionary:(id)dictionary;
- (ODDSiriSchemaODDAssetAvailabilityFromBootDimensions)initWithJSON:(id)n;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)writeTo:(id)to;
@end

@implementation ODDSiriSchemaODDAssetAvailabilityFromBootDimensions

- (ODDSiriSchemaODDAssetAvailabilityFromBootDimensions)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v17.receiver = self;
  v17.super_class = ODDSiriSchemaODDAssetAvailabilityFromBootDimensions;
  v5 = [(ODDSiriSchemaODDAssetAvailabilityFromBootDimensions *)&v17 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"assistantDimensions"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[ODDSiriSchemaODDAssistantDimensions alloc] initWithDictionary:v6];
      [(ODDSiriSchemaODDAssetAvailabilityFromBootDimensions *)v5 setAssistantDimensions:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"assetSetId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [v8 copy];
      [(ODDSiriSchemaODDAssetAvailabilityFromBootDimensions *)v5 setAssetSetId:v9];
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"assetSetName"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [v10 copy];
      [(ODDSiriSchemaODDAssetAvailabilityFromBootDimensions *)v5 setAssetSetName:v11];
    }

    v12 = [dictionaryCopy objectForKeyedSubscript:@"previousSystemBuild"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [v12 copy];
      [(ODDSiriSchemaODDAssetAvailabilityFromBootDimensions *)v5 setPreviousSystemBuild:v13];
    }

    v14 = [dictionaryCopy objectForKeyedSubscript:@"buildInstallationTimestampInSecondsSince1970"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ODDSiriSchemaODDAssetAvailabilityFromBootDimensions setBuildInstallationTimestampInSecondsSince1970:](v5, "setBuildInstallationTimestampInSecondsSince1970:", [v14 unsignedLongLongValue]);
    }

    v15 = v5;
  }

  return v5;
}

- (ODDSiriSchemaODDAssetAvailabilityFromBootDimensions)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(ODDSiriSchemaODDAssetAvailabilityFromBootDimensions *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(ODDSiriSchemaODDAssetAvailabilityFromBootDimensions *)self dictionaryRepresentation];
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
  if (self->_assetSetId)
  {
    assetSetId = [(ODDSiriSchemaODDAssetAvailabilityFromBootDimensions *)self assetSetId];
    v5 = [assetSetId copy];
    [dictionary setObject:v5 forKeyedSubscript:@"assetSetId"];
  }

  if (self->_assetSetName)
  {
    assetSetName = [(ODDSiriSchemaODDAssetAvailabilityFromBootDimensions *)self assetSetName];
    v7 = [assetSetName copy];
    [dictionary setObject:v7 forKeyedSubscript:@"assetSetName"];
  }

  if (self->_assistantDimensions)
  {
    assistantDimensions = [(ODDSiriSchemaODDAssetAvailabilityFromBootDimensions *)self assistantDimensions];
    dictionaryRepresentation = [assistantDimensions dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"assistantDimensions"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"assistantDimensions"];
    }
  }

  if (*&self->_has)
  {
    v11 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[ODDSiriSchemaODDAssetAvailabilityFromBootDimensions buildInstallationTimestampInSecondsSince1970](self, "buildInstallationTimestampInSecondsSince1970")}];
    [dictionary setObject:v11 forKeyedSubscript:@"buildInstallationTimestampInSecondsSince1970"];
  }

  if (self->_previousSystemBuild)
  {
    previousSystemBuild = [(ODDSiriSchemaODDAssetAvailabilityFromBootDimensions *)self previousSystemBuild];
    v13 = [previousSystemBuild copy];
    [dictionary setObject:v13 forKeyedSubscript:@"previousSystemBuild"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(ODDSiriSchemaODDAssistantDimensions *)self->_assistantDimensions hash];
  v4 = [(NSString *)self->_assetSetId hash];
  v5 = [(NSString *)self->_assetSetName hash];
  v6 = [(NSString *)self->_previousSystemBuild hash];
  if (*&self->_has)
  {
    v7 = 2654435761u * self->_buildInstallationTimestampInSecondsSince1970;
  }

  else
  {
    v7 = 0;
  }

  return v4 ^ v3 ^ v5 ^ v6 ^ v7;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_22;
  }

  assistantDimensions = [(ODDSiriSchemaODDAssetAvailabilityFromBootDimensions *)self assistantDimensions];
  assistantDimensions2 = [equalCopy assistantDimensions];
  if ((assistantDimensions != 0) == (assistantDimensions2 == 0))
  {
    goto LABEL_21;
  }

  assistantDimensions3 = [(ODDSiriSchemaODDAssetAvailabilityFromBootDimensions *)self assistantDimensions];
  if (assistantDimensions3)
  {
    v8 = assistantDimensions3;
    assistantDimensions4 = [(ODDSiriSchemaODDAssetAvailabilityFromBootDimensions *)self assistantDimensions];
    assistantDimensions5 = [equalCopy assistantDimensions];
    v11 = [assistantDimensions4 isEqual:assistantDimensions5];

    if (!v11)
    {
      goto LABEL_22;
    }
  }

  else
  {
  }

  assistantDimensions = [(ODDSiriSchemaODDAssetAvailabilityFromBootDimensions *)self assetSetId];
  assistantDimensions2 = [equalCopy assetSetId];
  if ((assistantDimensions != 0) == (assistantDimensions2 == 0))
  {
    goto LABEL_21;
  }

  assetSetId = [(ODDSiriSchemaODDAssetAvailabilityFromBootDimensions *)self assetSetId];
  if (assetSetId)
  {
    v13 = assetSetId;
    assetSetId2 = [(ODDSiriSchemaODDAssetAvailabilityFromBootDimensions *)self assetSetId];
    assetSetId3 = [equalCopy assetSetId];
    v16 = [assetSetId2 isEqual:assetSetId3];

    if (!v16)
    {
      goto LABEL_22;
    }
  }

  else
  {
  }

  assistantDimensions = [(ODDSiriSchemaODDAssetAvailabilityFromBootDimensions *)self assetSetName];
  assistantDimensions2 = [equalCopy assetSetName];
  if ((assistantDimensions != 0) == (assistantDimensions2 == 0))
  {
    goto LABEL_21;
  }

  assetSetName = [(ODDSiriSchemaODDAssetAvailabilityFromBootDimensions *)self assetSetName];
  if (assetSetName)
  {
    v18 = assetSetName;
    assetSetName2 = [(ODDSiriSchemaODDAssetAvailabilityFromBootDimensions *)self assetSetName];
    assetSetName3 = [equalCopy assetSetName];
    v21 = [assetSetName2 isEqual:assetSetName3];

    if (!v21)
    {
      goto LABEL_22;
    }
  }

  else
  {
  }

  assistantDimensions = [(ODDSiriSchemaODDAssetAvailabilityFromBootDimensions *)self previousSystemBuild];
  assistantDimensions2 = [equalCopy previousSystemBuild];
  if ((assistantDimensions != 0) == (assistantDimensions2 == 0))
  {
LABEL_21:

    goto LABEL_22;
  }

  previousSystemBuild = [(ODDSiriSchemaODDAssetAvailabilityFromBootDimensions *)self previousSystemBuild];
  if (previousSystemBuild)
  {
    v23 = previousSystemBuild;
    previousSystemBuild2 = [(ODDSiriSchemaODDAssetAvailabilityFromBootDimensions *)self previousSystemBuild];
    previousSystemBuild3 = [equalCopy previousSystemBuild];
    v26 = [previousSystemBuild2 isEqual:previousSystemBuild3];

    if (!v26)
    {
      goto LABEL_22;
    }
  }

  else
  {
  }

  if ((*&self->_has & 1) == (equalCopy[48] & 1))
  {
    if ((*&self->_has & 1) == 0 || (buildInstallationTimestampInSecondsSince1970 = self->_buildInstallationTimestampInSecondsSince1970, buildInstallationTimestampInSecondsSince1970 == [equalCopy buildInstallationTimestampInSecondsSince1970]))
    {
      v27 = 1;
      goto LABEL_23;
    }
  }

LABEL_22:
  v27 = 0;
LABEL_23:

  return v27;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  assistantDimensions = [(ODDSiriSchemaODDAssetAvailabilityFromBootDimensions *)self assistantDimensions];

  if (assistantDimensions)
  {
    assistantDimensions2 = [(ODDSiriSchemaODDAssetAvailabilityFromBootDimensions *)self assistantDimensions];
    PBDataWriterWriteSubmessage();
  }

  assetSetId = [(ODDSiriSchemaODDAssetAvailabilityFromBootDimensions *)self assetSetId];

  if (assetSetId)
  {
    PBDataWriterWriteStringField();
  }

  assetSetName = [(ODDSiriSchemaODDAssetAvailabilityFromBootDimensions *)self assetSetName];

  if (assetSetName)
  {
    PBDataWriterWriteStringField();
  }

  previousSystemBuild = [(ODDSiriSchemaODDAssetAvailabilityFromBootDimensions *)self previousSystemBuild];

  if (previousSystemBuild)
  {
    PBDataWriterWriteStringField();
  }

  v9 = toCopy;
  if (*&self->_has)
  {
    PBDataWriterWriteUint64Field();
    v9 = toCopy;
  }
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  v9.receiver = self;
  v9.super_class = ODDSiriSchemaODDAssetAvailabilityFromBootDimensions;
  policyCopy = policy;
  v5 = [(SISchemaInstrumentationMessage *)&v9 applySensitiveConditionsPolicy:policyCopy];
  v6 = [(ODDSiriSchemaODDAssetAvailabilityFromBootDimensions *)self assistantDimensions:v9.receiver];
  v7 = [v6 applySensitiveConditionsPolicy:policyCopy];

  LODWORD(policyCopy) = [v7 suppressMessage];
  if (policyCopy)
  {
    [(ODDSiriSchemaODDAssetAvailabilityFromBootDimensions *)self deleteAssistantDimensions];
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