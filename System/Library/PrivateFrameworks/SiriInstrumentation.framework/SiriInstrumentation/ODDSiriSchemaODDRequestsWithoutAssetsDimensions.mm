@interface ODDSiriSchemaODDRequestsWithoutAssetsDimensions
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (ODDSiriSchemaODDRequestsWithoutAssetsDimensions)initWithDictionary:(id)dictionary;
- (ODDSiriSchemaODDRequestsWithoutAssetsDimensions)initWithJSON:(id)n;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (int)assetFailureReasonAtIndex:(unint64_t)index;
- (unint64_t)hash;
- (void)addAssetFailureReason:(int)reason;
- (void)writeTo:(id)to;
@end

@implementation ODDSiriSchemaODDRequestsWithoutAssetsDimensions

- (ODDSiriSchemaODDRequestsWithoutAssetsDimensions)initWithDictionary:(id)dictionary
{
  v34 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v32.receiver = self;
  v32.super_class = ODDSiriSchemaODDRequestsWithoutAssetsDimensions;
  v5 = [(ODDSiriSchemaODDRequestsWithoutAssetsDimensions *)&v32 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"assistantDimensions"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[ODDSiriSchemaODDAssistantDimensions alloc] initWithDictionary:v6];
      [(ODDSiriSchemaODDRequestsWithoutAssetsDimensions *)v5 setAssistantDimensions:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"assetSetId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [v8 copy];
      [(ODDSiriSchemaODDRequestsWithoutAssetsDimensions *)v5 setAssetSetId:v9];
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"assetSetName"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [v10 copy];
      [(ODDSiriSchemaODDRequestsWithoutAssetsDimensions *)v5 setAssetSetName:v11];
    }

    v12 = [dictionaryCopy objectForKeyedSubscript:@"previousSystemBuild"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [v12 copy];
      [(ODDSiriSchemaODDRequestsWithoutAssetsDimensions *)v5 setPreviousSystemBuild:v13];
    }

    v14 = [dictionaryCopy objectForKeyedSubscript:@"buildInstallationTimestampInSecondsSince1970"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ODDSiriSchemaODDRequestsWithoutAssetsDimensions setBuildInstallationTimestampInSecondsSince1970:](v5, "setBuildInstallationTimestampInSecondsSince1970:", [v14 unsignedLongLongValue]);
    }

    v15 = [dictionaryCopy objectForKeyedSubscript:@"assetFailureReason"];
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

- (ODDSiriSchemaODDRequestsWithoutAssetsDimensions)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(ODDSiriSchemaODDRequestsWithoutAssetsDimensions *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(ODDSiriSchemaODDRequestsWithoutAssetsDimensions *)self dictionaryRepresentation];
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
  if ([(NSArray *)self->_assetFailureReasons count])
  {
    assetFailureReasons = [(ODDSiriSchemaODDRequestsWithoutAssetsDimensions *)self assetFailureReasons];
    v5 = [assetFailureReasons copy];
    [dictionary setObject:v5 forKeyedSubscript:@"assetFailureReason"];
  }

  if (self->_assetSetId)
  {
    assetSetId = [(ODDSiriSchemaODDRequestsWithoutAssetsDimensions *)self assetSetId];
    v7 = [assetSetId copy];
    [dictionary setObject:v7 forKeyedSubscript:@"assetSetId"];
  }

  if (self->_assetSetName)
  {
    assetSetName = [(ODDSiriSchemaODDRequestsWithoutAssetsDimensions *)self assetSetName];
    v9 = [assetSetName copy];
    [dictionary setObject:v9 forKeyedSubscript:@"assetSetName"];
  }

  if (self->_assistantDimensions)
  {
    assistantDimensions = [(ODDSiriSchemaODDRequestsWithoutAssetsDimensions *)self assistantDimensions];
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
    v13 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[ODDSiriSchemaODDRequestsWithoutAssetsDimensions buildInstallationTimestampInSecondsSince1970](self, "buildInstallationTimestampInSecondsSince1970")}];
    [dictionary setObject:v13 forKeyedSubscript:@"buildInstallationTimestampInSecondsSince1970"];
  }

  if (self->_previousSystemBuild)
  {
    previousSystemBuild = [(ODDSiriSchemaODDRequestsWithoutAssetsDimensions *)self previousSystemBuild];
    v15 = [previousSystemBuild copy];
    [dictionary setObject:v15 forKeyedSubscript:@"previousSystemBuild"];
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

  return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ [(NSArray *)self->_assetFailureReasons hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_30;
  }

  assistantDimensions = [(ODDSiriSchemaODDRequestsWithoutAssetsDimensions *)self assistantDimensions];
  assistantDimensions2 = [equalCopy assistantDimensions];
  if ((assistantDimensions != 0) == (assistantDimensions2 == 0))
  {
    goto LABEL_29;
  }

  assistantDimensions3 = [(ODDSiriSchemaODDRequestsWithoutAssetsDimensions *)self assistantDimensions];
  if (assistantDimensions3)
  {
    v8 = assistantDimensions3;
    assistantDimensions4 = [(ODDSiriSchemaODDRequestsWithoutAssetsDimensions *)self assistantDimensions];
    assistantDimensions5 = [equalCopy assistantDimensions];
    v11 = [assistantDimensions4 isEqual:assistantDimensions5];

    if (!v11)
    {
      goto LABEL_30;
    }
  }

  else
  {
  }

  assistantDimensions = [(ODDSiriSchemaODDRequestsWithoutAssetsDimensions *)self assetSetId];
  assistantDimensions2 = [equalCopy assetSetId];
  if ((assistantDimensions != 0) == (assistantDimensions2 == 0))
  {
    goto LABEL_29;
  }

  assetSetId = [(ODDSiriSchemaODDRequestsWithoutAssetsDimensions *)self assetSetId];
  if (assetSetId)
  {
    v13 = assetSetId;
    assetSetId2 = [(ODDSiriSchemaODDRequestsWithoutAssetsDimensions *)self assetSetId];
    assetSetId3 = [equalCopy assetSetId];
    v16 = [assetSetId2 isEqual:assetSetId3];

    if (!v16)
    {
      goto LABEL_30;
    }
  }

  else
  {
  }

  assistantDimensions = [(ODDSiriSchemaODDRequestsWithoutAssetsDimensions *)self assetSetName];
  assistantDimensions2 = [equalCopy assetSetName];
  if ((assistantDimensions != 0) == (assistantDimensions2 == 0))
  {
    goto LABEL_29;
  }

  assetSetName = [(ODDSiriSchemaODDRequestsWithoutAssetsDimensions *)self assetSetName];
  if (assetSetName)
  {
    v18 = assetSetName;
    assetSetName2 = [(ODDSiriSchemaODDRequestsWithoutAssetsDimensions *)self assetSetName];
    assetSetName3 = [equalCopy assetSetName];
    v21 = [assetSetName2 isEqual:assetSetName3];

    if (!v21)
    {
      goto LABEL_30;
    }
  }

  else
  {
  }

  assistantDimensions = [(ODDSiriSchemaODDRequestsWithoutAssetsDimensions *)self previousSystemBuild];
  assistantDimensions2 = [equalCopy previousSystemBuild];
  if ((assistantDimensions != 0) == (assistantDimensions2 == 0))
  {
    goto LABEL_29;
  }

  previousSystemBuild = [(ODDSiriSchemaODDRequestsWithoutAssetsDimensions *)self previousSystemBuild];
  if (previousSystemBuild)
  {
    v23 = previousSystemBuild;
    previousSystemBuild2 = [(ODDSiriSchemaODDRequestsWithoutAssetsDimensions *)self previousSystemBuild];
    previousSystemBuild3 = [equalCopy previousSystemBuild];
    v26 = [previousSystemBuild2 isEqual:previousSystemBuild3];

    if (!v26)
    {
      goto LABEL_30;
    }
  }

  else
  {
  }

  if ((*&self->_has & 1) != (equalCopy[56] & 1))
  {
    goto LABEL_30;
  }

  if (*&self->_has)
  {
    buildInstallationTimestampInSecondsSince1970 = self->_buildInstallationTimestampInSecondsSince1970;
    if (buildInstallationTimestampInSecondsSince1970 != [equalCopy buildInstallationTimestampInSecondsSince1970])
    {
      goto LABEL_30;
    }
  }

  assistantDimensions = [(ODDSiriSchemaODDRequestsWithoutAssetsDimensions *)self assetFailureReasons];
  assistantDimensions2 = [equalCopy assetFailureReasons];
  if ((assistantDimensions != 0) != (assistantDimensions2 == 0))
  {
    assetFailureReasons = [(ODDSiriSchemaODDRequestsWithoutAssetsDimensions *)self assetFailureReasons];
    if (!assetFailureReasons)
    {

LABEL_33:
      v33 = 1;
      goto LABEL_31;
    }

    v29 = assetFailureReasons;
    assetFailureReasons2 = [(ODDSiriSchemaODDRequestsWithoutAssetsDimensions *)self assetFailureReasons];
    assetFailureReasons3 = [equalCopy assetFailureReasons];
    v32 = [assetFailureReasons2 isEqual:assetFailureReasons3];

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

- (void)writeTo:(id)to
{
  v20 = *MEMORY[0x1E69E9840];
  toCopy = to;
  assistantDimensions = [(ODDSiriSchemaODDRequestsWithoutAssetsDimensions *)self assistantDimensions];

  if (assistantDimensions)
  {
    assistantDimensions2 = [(ODDSiriSchemaODDRequestsWithoutAssetsDimensions *)self assistantDimensions];
    PBDataWriterWriteSubmessage();
  }

  assetSetId = [(ODDSiriSchemaODDRequestsWithoutAssetsDimensions *)self assetSetId];

  if (assetSetId)
  {
    PBDataWriterWriteStringField();
  }

  assetSetName = [(ODDSiriSchemaODDRequestsWithoutAssetsDimensions *)self assetSetName];

  if (assetSetName)
  {
    PBDataWriterWriteStringField();
  }

  previousSystemBuild = [(ODDSiriSchemaODDRequestsWithoutAssetsDimensions *)self previousSystemBuild];

  if (previousSystemBuild)
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

- (int)assetFailureReasonAtIndex:(unint64_t)index
{
  v3 = [(NSArray *)self->_assetFailureReasons objectAtIndexedSubscript:index];
  intValue = [v3 intValue];

  return intValue;
}

- (void)addAssetFailureReason:(int)reason
{
  v3 = *&reason;
  assetFailureReasons = self->_assetFailureReasons;
  if (!assetFailureReasons)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_assetFailureReasons;
    self->_assetFailureReasons = array;

    assetFailureReasons = self->_assetFailureReasons;
  }

  v8 = [MEMORY[0x1E696AD98] numberWithInt:v3];
  [(NSArray *)assetFailureReasons addObject:v8];
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  v9.receiver = self;
  v9.super_class = ODDSiriSchemaODDRequestsWithoutAssetsDimensions;
  policyCopy = policy;
  v5 = [(SISchemaInstrumentationMessage *)&v9 applySensitiveConditionsPolicy:policyCopy];
  v6 = [(ODDSiriSchemaODDRequestsWithoutAssetsDimensions *)self assistantDimensions:v9.receiver];
  v7 = [v6 applySensitiveConditionsPolicy:policyCopy];

  LODWORD(policyCopy) = [v7 suppressMessage];
  if (policyCopy)
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