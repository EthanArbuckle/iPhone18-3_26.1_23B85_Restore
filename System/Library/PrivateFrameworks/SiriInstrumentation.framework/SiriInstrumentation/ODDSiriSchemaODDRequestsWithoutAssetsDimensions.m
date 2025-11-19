@interface ODDSiriSchemaODDRequestsWithoutAssetsDimensions
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (ODDSiriSchemaODDRequestsWithoutAssetsDimensions)initWithDictionary:(id)a3;
- (ODDSiriSchemaODDRequestsWithoutAssetsDimensions)initWithJSON:(id)a3;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (int)assetFailureReasonAtIndex:(unint64_t)a3;
- (unint64_t)hash;
- (void)addAssetFailureReason:(int)a3;
- (void)writeTo:(id)a3;
@end

@implementation ODDSiriSchemaODDRequestsWithoutAssetsDimensions

- (ODDSiriSchemaODDRequestsWithoutAssetsDimensions)initWithDictionary:(id)a3
{
  v34 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v32.receiver = self;
  v32.super_class = ODDSiriSchemaODDRequestsWithoutAssetsDimensions;
  v5 = [(ODDSiriSchemaODDRequestsWithoutAssetsDimensions *)&v32 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"assistantDimensions"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[ODDSiriSchemaODDAssistantDimensions alloc] initWithDictionary:v6];
      [(ODDSiriSchemaODDRequestsWithoutAssetsDimensions *)v5 setAssistantDimensions:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"assetSetId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [v8 copy];
      [(ODDSiriSchemaODDRequestsWithoutAssetsDimensions *)v5 setAssetSetId:v9];
    }

    v10 = [v4 objectForKeyedSubscript:@"assetSetName"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [v10 copy];
      [(ODDSiriSchemaODDRequestsWithoutAssetsDimensions *)v5 setAssetSetName:v11];
    }

    v12 = [v4 objectForKeyedSubscript:@"previousSystemBuild"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [v12 copy];
      [(ODDSiriSchemaODDRequestsWithoutAssetsDimensions *)v5 setPreviousSystemBuild:v13];
    }

    v14 = [v4 objectForKeyedSubscript:@"buildInstallationTimestampInSecondsSince1970"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ODDSiriSchemaODDRequestsWithoutAssetsDimensions setBuildInstallationTimestampInSecondsSince1970:](v5, "setBuildInstallationTimestampInSecondsSince1970:", [v14 unsignedLongLongValue]);
    }

    v15 = [v4 objectForKeyedSubscript:@"assetFailureReason"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v24 = v12;
      v25 = v10;
      v26 = v8;
      v27 = v6;
      v30 = 0u;
      v31 = 0u;
      v28 = 0u;
      v29 = 0u;
      v16 = v15;
      v17 = [v16 countByEnumeratingWithState:&v28 objects:v33 count:16];
      if (v17)
      {
        v18 = v17;
        v19 = *v29;
        do
        {
          v20 = 0;
          do
          {
            if (*v29 != v19)
            {
              objc_enumerationMutation(v16);
            }

            v21 = *(*(&v28 + 1) + 8 * v20);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              -[ODDSiriSchemaODDRequestsWithoutAssetsDimensions addAssetFailureReason:](v5, "addAssetFailureReason:", [v21 intValue]);
            }

            ++v20;
          }

          while (v18 != v20);
          v18 = [v16 countByEnumeratingWithState:&v28 objects:v33 count:16];
        }

        while (v18);
      }

      v8 = v26;
      v6 = v27;
      v12 = v24;
      v10 = v25;
    }

    v22 = v5;
  }

  return v5;
}

- (ODDSiriSchemaODDRequestsWithoutAssetsDimensions)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(ODDSiriSchemaODDRequestsWithoutAssetsDimensions *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(ODDSiriSchemaODDRequestsWithoutAssetsDimensions *)self dictionaryRepresentation];
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
  if ([(NSArray *)self->_assetFailureReasons count])
  {
    v4 = [(ODDSiriSchemaODDRequestsWithoutAssetsDimensions *)self assetFailureReasons];
    v5 = [v4 copy];
    [v3 setObject:v5 forKeyedSubscript:@"assetFailureReason"];
  }

  if (self->_assetSetId)
  {
    v6 = [(ODDSiriSchemaODDRequestsWithoutAssetsDimensions *)self assetSetId];
    v7 = [v6 copy];
    [v3 setObject:v7 forKeyedSubscript:@"assetSetId"];
  }

  if (self->_assetSetName)
  {
    v8 = [(ODDSiriSchemaODDRequestsWithoutAssetsDimensions *)self assetSetName];
    v9 = [v8 copy];
    [v3 setObject:v9 forKeyedSubscript:@"assetSetName"];
  }

  if (self->_assistantDimensions)
  {
    v10 = [(ODDSiriSchemaODDRequestsWithoutAssetsDimensions *)self assistantDimensions];
    v11 = [v10 dictionaryRepresentation];
    if (v11)
    {
      [v3 setObject:v11 forKeyedSubscript:@"assistantDimensions"];
    }

    else
    {
      v12 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v12 forKeyedSubscript:@"assistantDimensions"];
    }
  }

  if (*&self->_has)
  {
    v13 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[ODDSiriSchemaODDRequestsWithoutAssetsDimensions buildInstallationTimestampInSecondsSince1970](self, "buildInstallationTimestampInSecondsSince1970")}];
    [v3 setObject:v13 forKeyedSubscript:@"buildInstallationTimestampInSecondsSince1970"];
  }

  if (self->_previousSystemBuild)
  {
    v14 = [(ODDSiriSchemaODDRequestsWithoutAssetsDimensions *)self previousSystemBuild];
    v15 = [v14 copy];
    [v3 setObject:v15 forKeyedSubscript:@"previousSystemBuild"];
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

  return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ [(NSArray *)self->_assetFailureReasons hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_30;
  }

  v5 = [(ODDSiriSchemaODDRequestsWithoutAssetsDimensions *)self assistantDimensions];
  v6 = [v4 assistantDimensions];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_29;
  }

  v7 = [(ODDSiriSchemaODDRequestsWithoutAssetsDimensions *)self assistantDimensions];
  if (v7)
  {
    v8 = v7;
    v9 = [(ODDSiriSchemaODDRequestsWithoutAssetsDimensions *)self assistantDimensions];
    v10 = [v4 assistantDimensions];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_30;
    }
  }

  else
  {
  }

  v5 = [(ODDSiriSchemaODDRequestsWithoutAssetsDimensions *)self assetSetId];
  v6 = [v4 assetSetId];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_29;
  }

  v12 = [(ODDSiriSchemaODDRequestsWithoutAssetsDimensions *)self assetSetId];
  if (v12)
  {
    v13 = v12;
    v14 = [(ODDSiriSchemaODDRequestsWithoutAssetsDimensions *)self assetSetId];
    v15 = [v4 assetSetId];
    v16 = [v14 isEqual:v15];

    if (!v16)
    {
      goto LABEL_30;
    }
  }

  else
  {
  }

  v5 = [(ODDSiriSchemaODDRequestsWithoutAssetsDimensions *)self assetSetName];
  v6 = [v4 assetSetName];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_29;
  }

  v17 = [(ODDSiriSchemaODDRequestsWithoutAssetsDimensions *)self assetSetName];
  if (v17)
  {
    v18 = v17;
    v19 = [(ODDSiriSchemaODDRequestsWithoutAssetsDimensions *)self assetSetName];
    v20 = [v4 assetSetName];
    v21 = [v19 isEqual:v20];

    if (!v21)
    {
      goto LABEL_30;
    }
  }

  else
  {
  }

  v5 = [(ODDSiriSchemaODDRequestsWithoutAssetsDimensions *)self previousSystemBuild];
  v6 = [v4 previousSystemBuild];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_29;
  }

  v22 = [(ODDSiriSchemaODDRequestsWithoutAssetsDimensions *)self previousSystemBuild];
  if (v22)
  {
    v23 = v22;
    v24 = [(ODDSiriSchemaODDRequestsWithoutAssetsDimensions *)self previousSystemBuild];
    v25 = [v4 previousSystemBuild];
    v26 = [v24 isEqual:v25];

    if (!v26)
    {
      goto LABEL_30;
    }
  }

  else
  {
  }

  if ((*&self->_has & 1) != (v4[56] & 1))
  {
    goto LABEL_30;
  }

  if (*&self->_has)
  {
    buildInstallationTimestampInSecondsSince1970 = self->_buildInstallationTimestampInSecondsSince1970;
    if (buildInstallationTimestampInSecondsSince1970 != [v4 buildInstallationTimestampInSecondsSince1970])
    {
      goto LABEL_30;
    }
  }

  v5 = [(ODDSiriSchemaODDRequestsWithoutAssetsDimensions *)self assetFailureReasons];
  v6 = [v4 assetFailureReasons];
  if ((v5 != 0) != (v6 == 0))
  {
    v28 = [(ODDSiriSchemaODDRequestsWithoutAssetsDimensions *)self assetFailureReasons];
    if (!v28)
    {

LABEL_33:
      v33 = 1;
      goto LABEL_31;
    }

    v29 = v28;
    v30 = [(ODDSiriSchemaODDRequestsWithoutAssetsDimensions *)self assetFailureReasons];
    v31 = [v4 assetFailureReasons];
    v32 = [v30 isEqual:v31];

    if (v32)
    {
      goto LABEL_33;
    }
  }

  else
  {
LABEL_29:
  }

LABEL_30:
  v33 = 0;
LABEL_31:

  return v33;
}

- (void)writeTo:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(ODDSiriSchemaODDRequestsWithoutAssetsDimensions *)self assistantDimensions];

  if (v5)
  {
    v6 = [(ODDSiriSchemaODDRequestsWithoutAssetsDimensions *)self assistantDimensions];
    PBDataWriterWriteSubmessage();
  }

  v7 = [(ODDSiriSchemaODDRequestsWithoutAssetsDimensions *)self assetSetId];

  if (v7)
  {
    PBDataWriterWriteStringField();
  }

  v8 = [(ODDSiriSchemaODDRequestsWithoutAssetsDimensions *)self assetSetName];

  if (v8)
  {
    PBDataWriterWriteStringField();
  }

  v9 = [(ODDSiriSchemaODDRequestsWithoutAssetsDimensions *)self previousSystemBuild];

  if (v9)
  {
    PBDataWriterWriteStringField();
  }

  if (*&self->_has)
  {
    PBDataWriterWriteUint64Field();
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v10 = self->_assetFailureReasons;
  v11 = [(NSArray *)v10 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v16;
    do
    {
      v14 = 0;
      do
      {
        if (*v16 != v13)
        {
          objc_enumerationMutation(v10);
        }

        [*(*(&v15 + 1) + 8 * v14) intValue];
        PBDataWriterWriteInt32Field();
        ++v14;
      }

      while (v12 != v14);
      v12 = [(NSArray *)v10 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v12);
  }
}

- (int)assetFailureReasonAtIndex:(unint64_t)a3
{
  v3 = [(NSArray *)self->_assetFailureReasons objectAtIndexedSubscript:a3];
  v4 = [v3 intValue];

  return v4;
}

- (void)addAssetFailureReason:(int)a3
{
  v3 = *&a3;
  assetFailureReasons = self->_assetFailureReasons;
  if (!assetFailureReasons)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_assetFailureReasons;
    self->_assetFailureReasons = v6;

    assetFailureReasons = self->_assetFailureReasons;
  }

  v8 = [MEMORY[0x1E696AD98] numberWithInt:v3];
  [(NSArray *)assetFailureReasons addObject:v8];
}

- (id)applySensitiveConditionsPolicy:(id)a3
{
  v9.receiver = self;
  v9.super_class = ODDSiriSchemaODDRequestsWithoutAssetsDimensions;
  v4 = a3;
  v5 = [(SISchemaInstrumentationMessage *)&v9 applySensitiveConditionsPolicy:v4];
  v6 = [(ODDSiriSchemaODDRequestsWithoutAssetsDimensions *)self assistantDimensions:v9.receiver];
  v7 = [v6 applySensitiveConditionsPolicy:v4];

  LODWORD(v4) = [v7 suppressMessage];
  if (v4)
  {
    [(ODDSiriSchemaODDRequestsWithoutAssetsDimensions *)self deleteAssistantDimensions];
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