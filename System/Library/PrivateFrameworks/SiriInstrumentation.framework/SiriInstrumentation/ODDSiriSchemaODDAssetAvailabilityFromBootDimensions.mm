@interface ODDSiriSchemaODDAssetAvailabilityFromBootDimensions
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (ODDSiriSchemaODDAssetAvailabilityFromBootDimensions)initWithDictionary:(id)a3;
- (ODDSiriSchemaODDAssetAvailabilityFromBootDimensions)initWithJSON:(id)a3;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)writeTo:(id)a3;
@end

@implementation ODDSiriSchemaODDAssetAvailabilityFromBootDimensions

- (ODDSiriSchemaODDAssetAvailabilityFromBootDimensions)initWithDictionary:(id)a3
{
  v4 = a3;
  v17.receiver = self;
  v17.super_class = ODDSiriSchemaODDAssetAvailabilityFromBootDimensions;
  v5 = [(ODDSiriSchemaODDAssetAvailabilityFromBootDimensions *)&v17 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"assistantDimensions"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[ODDSiriSchemaODDAssistantDimensions alloc] initWithDictionary:v6];
      [(ODDSiriSchemaODDAssetAvailabilityFromBootDimensions *)v5 setAssistantDimensions:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"assetSetId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [v8 copy];
      [(ODDSiriSchemaODDAssetAvailabilityFromBootDimensions *)v5 setAssetSetId:v9];
    }

    v10 = [v4 objectForKeyedSubscript:@"assetSetName"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [v10 copy];
      [(ODDSiriSchemaODDAssetAvailabilityFromBootDimensions *)v5 setAssetSetName:v11];
    }

    v12 = [v4 objectForKeyedSubscript:@"previousSystemBuild"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [v12 copy];
      [(ODDSiriSchemaODDAssetAvailabilityFromBootDimensions *)v5 setPreviousSystemBuild:v13];
    }

    v14 = [v4 objectForKeyedSubscript:@"buildInstallationTimestampInSecondsSince1970"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ODDSiriSchemaODDAssetAvailabilityFromBootDimensions setBuildInstallationTimestampInSecondsSince1970:](v5, "setBuildInstallationTimestampInSecondsSince1970:", [v14 unsignedLongLongValue]);
    }

    v15 = v5;
  }

  return v5;
}

- (ODDSiriSchemaODDAssetAvailabilityFromBootDimensions)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(ODDSiriSchemaODDAssetAvailabilityFromBootDimensions *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(ODDSiriSchemaODDAssetAvailabilityFromBootDimensions *)self dictionaryRepresentation];
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
  if (self->_assetSetId)
  {
    v4 = [(ODDSiriSchemaODDAssetAvailabilityFromBootDimensions *)self assetSetId];
    v5 = [v4 copy];
    [v3 setObject:v5 forKeyedSubscript:@"assetSetId"];
  }

  if (self->_assetSetName)
  {
    v6 = [(ODDSiriSchemaODDAssetAvailabilityFromBootDimensions *)self assetSetName];
    v7 = [v6 copy];
    [v3 setObject:v7 forKeyedSubscript:@"assetSetName"];
  }

  if (self->_assistantDimensions)
  {
    v8 = [(ODDSiriSchemaODDAssetAvailabilityFromBootDimensions *)self assistantDimensions];
    v9 = [v8 dictionaryRepresentation];
    if (v9)
    {
      [v3 setObject:v9 forKeyedSubscript:@"assistantDimensions"];
    }

    else
    {
      v10 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v10 forKeyedSubscript:@"assistantDimensions"];
    }
  }

  if (*&self->_has)
  {
    v11 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[ODDSiriSchemaODDAssetAvailabilityFromBootDimensions buildInstallationTimestampInSecondsSince1970](self, "buildInstallationTimestampInSecondsSince1970")}];
    [v3 setObject:v11 forKeyedSubscript:@"buildInstallationTimestampInSecondsSince1970"];
  }

  if (self->_previousSystemBuild)
  {
    v12 = [(ODDSiriSchemaODDAssetAvailabilityFromBootDimensions *)self previousSystemBuild];
    v13 = [v12 copy];
    [v3 setObject:v13 forKeyedSubscript:@"previousSystemBuild"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_22;
  }

  v5 = [(ODDSiriSchemaODDAssetAvailabilityFromBootDimensions *)self assistantDimensions];
  v6 = [v4 assistantDimensions];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_21;
  }

  v7 = [(ODDSiriSchemaODDAssetAvailabilityFromBootDimensions *)self assistantDimensions];
  if (v7)
  {
    v8 = v7;
    v9 = [(ODDSiriSchemaODDAssetAvailabilityFromBootDimensions *)self assistantDimensions];
    v10 = [v4 assistantDimensions];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_22;
    }
  }

  else
  {
  }

  v5 = [(ODDSiriSchemaODDAssetAvailabilityFromBootDimensions *)self assetSetId];
  v6 = [v4 assetSetId];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_21;
  }

  v12 = [(ODDSiriSchemaODDAssetAvailabilityFromBootDimensions *)self assetSetId];
  if (v12)
  {
    v13 = v12;
    v14 = [(ODDSiriSchemaODDAssetAvailabilityFromBootDimensions *)self assetSetId];
    v15 = [v4 assetSetId];
    v16 = [v14 isEqual:v15];

    if (!v16)
    {
      goto LABEL_22;
    }
  }

  else
  {
  }

  v5 = [(ODDSiriSchemaODDAssetAvailabilityFromBootDimensions *)self assetSetName];
  v6 = [v4 assetSetName];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_21;
  }

  v17 = [(ODDSiriSchemaODDAssetAvailabilityFromBootDimensions *)self assetSetName];
  if (v17)
  {
    v18 = v17;
    v19 = [(ODDSiriSchemaODDAssetAvailabilityFromBootDimensions *)self assetSetName];
    v20 = [v4 assetSetName];
    v21 = [v19 isEqual:v20];

    if (!v21)
    {
      goto LABEL_22;
    }
  }

  else
  {
  }

  v5 = [(ODDSiriSchemaODDAssetAvailabilityFromBootDimensions *)self previousSystemBuild];
  v6 = [v4 previousSystemBuild];
  if ((v5 != 0) == (v6 == 0))
  {
LABEL_21:

    goto LABEL_22;
  }

  v22 = [(ODDSiriSchemaODDAssetAvailabilityFromBootDimensions *)self previousSystemBuild];
  if (v22)
  {
    v23 = v22;
    v24 = [(ODDSiriSchemaODDAssetAvailabilityFromBootDimensions *)self previousSystemBuild];
    v25 = [v4 previousSystemBuild];
    v26 = [v24 isEqual:v25];

    if (!v26)
    {
      goto LABEL_22;
    }
  }

  else
  {
  }

  if ((*&self->_has & 1) == (v4[48] & 1))
  {
    if ((*&self->_has & 1) == 0 || (buildInstallationTimestampInSecondsSince1970 = self->_buildInstallationTimestampInSecondsSince1970, buildInstallationTimestampInSecondsSince1970 == [v4 buildInstallationTimestampInSecondsSince1970]))
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

- (void)writeTo:(id)a3
{
  v10 = a3;
  v4 = [(ODDSiriSchemaODDAssetAvailabilityFromBootDimensions *)self assistantDimensions];

  if (v4)
  {
    v5 = [(ODDSiriSchemaODDAssetAvailabilityFromBootDimensions *)self assistantDimensions];
    PBDataWriterWriteSubmessage();
  }

  v6 = [(ODDSiriSchemaODDAssetAvailabilityFromBootDimensions *)self assetSetId];

  if (v6)
  {
    PBDataWriterWriteStringField();
  }

  v7 = [(ODDSiriSchemaODDAssetAvailabilityFromBootDimensions *)self assetSetName];

  if (v7)
  {
    PBDataWriterWriteStringField();
  }

  v8 = [(ODDSiriSchemaODDAssetAvailabilityFromBootDimensions *)self previousSystemBuild];

  if (v8)
  {
    PBDataWriterWriteStringField();
  }

  v9 = v10;
  if (*&self->_has)
  {
    PBDataWriterWriteUint64Field();
    v9 = v10;
  }
}

- (id)applySensitiveConditionsPolicy:(id)a3
{
  v9.receiver = self;
  v9.super_class = ODDSiriSchemaODDAssetAvailabilityFromBootDimensions;
  v4 = a3;
  v5 = [(SISchemaInstrumentationMessage *)&v9 applySensitiveConditionsPolicy:v4];
  v6 = [(ODDSiriSchemaODDAssetAvailabilityFromBootDimensions *)self assistantDimensions:v9.receiver];
  v7 = [v6 applySensitiveConditionsPolicy:v4];

  LODWORD(v4) = [v7 suppressMessage];
  if (v4)
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