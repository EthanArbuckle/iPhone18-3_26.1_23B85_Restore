@interface ODDSiriSchemaODDMAErrorsDimensions
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (ODDSiriSchemaODDMAErrorsDimensions)initWithDictionary:(id)dictionary;
- (ODDSiriSchemaODDMAErrorsDimensions)initWithJSON:(id)n;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasIsDiscretionary:(BOOL)discretionary;
- (void)setHasIsUserPriority:(BOOL)priority;
- (void)setHasOperationType:(BOOL)type;
- (void)writeTo:(id)to;
@end

@implementation ODDSiriSchemaODDMAErrorsDimensions

- (ODDSiriSchemaODDMAErrorsDimensions)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v33.receiver = self;
  v33.super_class = ODDSiriSchemaODDMAErrorsDimensions;
  v5 = [(ODDSiriSchemaODDMAErrorsDimensions *)&v33 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"AssetSpecifier"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(ODDSiriSchemaODDMAErrorsDimensions *)v5 setAssetSpecifier:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"AssetType"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [v8 copy];
      [(ODDSiriSchemaODDMAErrorsDimensions *)v5 setAssetType:v9];
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"AssetVersion"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [v10 copy];
      [(ODDSiriSchemaODDMAErrorsDimensions *)v5 setAssetVersion:v11];
    }

    v12 = [dictionaryCopy objectForKeyedSubscript:@"Result"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [v12 copy];
      [(ODDSiriSchemaODDMAErrorsDimensions *)v5 setResult:v13];
    }

    v29 = v12;
    v14 = [dictionaryCopy objectForKeyedSubscript:@"IsMAAutoAsset"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ODDSiriSchemaODDMAErrorsDimensions setIsMAAutoAsset:](v5, "setIsMAAutoAsset:", [v14 BOOLValue]);
    }

    v28 = v14;
    v15 = [dictionaryCopy objectForKeyedSubscript:@"IsDiscretionary"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ODDSiriSchemaODDMAErrorsDimensions setIsDiscretionary:](v5, "setIsDiscretionary:", [v15 BOOLValue]);
    }

    v16 = [dictionaryCopy objectForKeyedSubscript:@"IsUserPriority"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ODDSiriSchemaODDMAErrorsDimensions setIsUserPriority:](v5, "setIsUserPriority:", [v16 BOOLValue]);
    }

    v32 = v6;
    v17 = [dictionaryCopy objectForKeyedSubscript:@"operationType"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ODDSiriSchemaODDMAErrorsDimensions setOperationType:](v5, "setOperationType:", [v17 intValue]);
    }

    v31 = v8;
    v18 = [dictionaryCopy objectForKeyedSubscript:@"operationFailureReason"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v19 = [v18 copy];
      [(ODDSiriSchemaODDMAErrorsDimensions *)v5 setOperationFailureReason:v19];
    }

    v30 = v10;
    v20 = [dictionaryCopy objectForKeyedSubscript:@"operationResult"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v21 = [v20 copy];
      [(ODDSiriSchemaODDMAErrorsDimensions *)v5 setOperationResult:v21];
    }

    v22 = [dictionaryCopy objectForKeyedSubscript:@"networkAccessType"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v23 = [[ODDSiriSchemaODDMANetworkAccessTypes alloc] initWithDictionary:v22];
      [(ODDSiriSchemaODDMAErrorsDimensions *)v5 setNetworkAccessType:v23];
    }

    v24 = [dictionaryCopy objectForKeyedSubscript:@"subSystemName"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v25 = [v24 copy];
      [(ODDSiriSchemaODDMAErrorsDimensions *)v5 setSubSystemName:v25];
    }

    v26 = v5;
  }

  return v5;
}

- (ODDSiriSchemaODDMAErrorsDimensions)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(ODDSiriSchemaODDMAErrorsDimensions *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(ODDSiriSchemaODDMAErrorsDimensions *)self dictionaryRepresentation];
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
  if (self->_AssetSpecifier)
  {
    assetSpecifier = [(ODDSiriSchemaODDMAErrorsDimensions *)self AssetSpecifier];
    v5 = [assetSpecifier copy];
    [dictionary setObject:v5 forKeyedSubscript:@"AssetSpecifier"];
  }

  if (self->_AssetType)
  {
    assetType = [(ODDSiriSchemaODDMAErrorsDimensions *)self AssetType];
    v7 = [assetType copy];
    [dictionary setObject:v7 forKeyedSubscript:@"AssetType"];
  }

  if (self->_AssetVersion)
  {
    assetVersion = [(ODDSiriSchemaODDMAErrorsDimensions *)self AssetVersion];
    v9 = [assetVersion copy];
    [dictionary setObject:v9 forKeyedSubscript:@"AssetVersion"];
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    v16 = [MEMORY[0x1E696AD98] numberWithBool:{-[ODDSiriSchemaODDMAErrorsDimensions IsDiscretionary](self, "IsDiscretionary")}];
    [dictionary setObject:v16 forKeyedSubscript:@"IsDiscretionary"];

    has = self->_has;
    if ((has & 1) == 0)
    {
LABEL_9:
      if ((has & 4) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_10;
    }
  }

  else if ((*&self->_has & 1) == 0)
  {
    goto LABEL_9;
  }

  v17 = [MEMORY[0x1E696AD98] numberWithBool:{-[ODDSiriSchemaODDMAErrorsDimensions IsMAAutoAsset](self, "IsMAAutoAsset")}];
  [dictionary setObject:v17 forKeyedSubscript:@"IsMAAutoAsset"];

  if ((*&self->_has & 4) != 0)
  {
LABEL_10:
    v11 = [MEMORY[0x1E696AD98] numberWithBool:{-[ODDSiriSchemaODDMAErrorsDimensions IsUserPriority](self, "IsUserPriority")}];
    [dictionary setObject:v11 forKeyedSubscript:@"IsUserPriority"];
  }

LABEL_11:
  if (self->_Result)
  {
    result = [(ODDSiriSchemaODDMAErrorsDimensions *)self Result];
    v13 = [result copy];
    [dictionary setObject:v13 forKeyedSubscript:@"Result"];
  }

  if (self->_networkAccessType)
  {
    networkAccessType = [(ODDSiriSchemaODDMAErrorsDimensions *)self networkAccessType];
    dictionaryRepresentation = [networkAccessType dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"networkAccessType"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"networkAccessType"];
    }
  }

  if (self->_operationFailureReason)
  {
    operationFailureReason = [(ODDSiriSchemaODDMAErrorsDimensions *)self operationFailureReason];
    v20 = [operationFailureReason copy];
    [dictionary setObject:v20 forKeyedSubscript:@"operationFailureReason"];
  }

  if (self->_operationResult)
  {
    operationResult = [(ODDSiriSchemaODDMAErrorsDimensions *)self operationResult];
    v22 = [operationResult copy];
    [dictionary setObject:v22 forKeyedSubscript:@"operationResult"];
  }

  if ((*&self->_has & 8) != 0)
  {
    v23 = [(ODDSiriSchemaODDMAErrorsDimensions *)self operationType]- 1;
    if (v23 > 6)
    {
      v24 = @"ODDMAOPERATION_UNKNOWN";
    }

    else
    {
      v24 = off_1E78DD918[v23];
    }

    [dictionary setObject:v24 forKeyedSubscript:@"operationType"];
  }

  if (self->_subSystemName)
  {
    subSystemName = [(ODDSiriSchemaODDMAErrorsDimensions *)self subSystemName];
    v26 = [subSystemName copy];
    [dictionary setObject:v26 forKeyedSubscript:@"subSystemName"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_AssetSpecifier hash];
  v4 = [(NSString *)self->_AssetType hash];
  v5 = [(NSString *)self->_AssetVersion hash];
  v6 = [(NSString *)self->_Result hash];
  if (*&self->_has)
  {
    v7 = 2654435761 * self->_IsMAAutoAsset;
    if ((*&self->_has & 2) != 0)
    {
LABEL_3:
      v8 = 2654435761 * self->_IsDiscretionary;
      if ((*&self->_has & 4) != 0)
      {
        goto LABEL_4;
      }

LABEL_8:
      v9 = 0;
      if ((*&self->_has & 8) != 0)
      {
        goto LABEL_5;
      }

LABEL_9:
      v10 = 0;
      goto LABEL_10;
    }
  }

  else
  {
    v7 = 0;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }
  }

  v8 = 0;
  if ((*&self->_has & 4) == 0)
  {
    goto LABEL_8;
  }

LABEL_4:
  v9 = 2654435761 * self->_IsUserPriority;
  if ((*&self->_has & 8) == 0)
  {
    goto LABEL_9;
  }

LABEL_5:
  v10 = 2654435761 * self->_operationType;
LABEL_10:
  v11 = v4 ^ v3 ^ v5 ^ v6;
  v12 = v7 ^ v8 ^ v9 ^ v10 ^ [(NSString *)self->_operationFailureReason hash];
  v13 = v11 ^ v12 ^ [(NSString *)self->_operationResult hash];
  v14 = [(ODDSiriSchemaODDMANetworkAccessTypes *)self->_networkAccessType hash];
  return v13 ^ v14 ^ [(NSString *)self->_subSystemName hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_57;
  }

  assetSpecifier = [(ODDSiriSchemaODDMAErrorsDimensions *)self AssetSpecifier];
  assetSpecifier2 = [equalCopy AssetSpecifier];
  if ((assetSpecifier != 0) == (assetSpecifier2 == 0))
  {
    goto LABEL_56;
  }

  assetSpecifier3 = [(ODDSiriSchemaODDMAErrorsDimensions *)self AssetSpecifier];
  if (assetSpecifier3)
  {
    v8 = assetSpecifier3;
    assetSpecifier4 = [(ODDSiriSchemaODDMAErrorsDimensions *)self AssetSpecifier];
    assetSpecifier5 = [equalCopy AssetSpecifier];
    v11 = [assetSpecifier4 isEqual:assetSpecifier5];

    if (!v11)
    {
      goto LABEL_57;
    }
  }

  else
  {
  }

  assetSpecifier = [(ODDSiriSchemaODDMAErrorsDimensions *)self AssetType];
  assetSpecifier2 = [equalCopy AssetType];
  if ((assetSpecifier != 0) == (assetSpecifier2 == 0))
  {
    goto LABEL_56;
  }

  assetType = [(ODDSiriSchemaODDMAErrorsDimensions *)self AssetType];
  if (assetType)
  {
    v13 = assetType;
    assetType2 = [(ODDSiriSchemaODDMAErrorsDimensions *)self AssetType];
    assetType3 = [equalCopy AssetType];
    v16 = [assetType2 isEqual:assetType3];

    if (!v16)
    {
      goto LABEL_57;
    }
  }

  else
  {
  }

  assetSpecifier = [(ODDSiriSchemaODDMAErrorsDimensions *)self AssetVersion];
  assetSpecifier2 = [equalCopy AssetVersion];
  if ((assetSpecifier != 0) == (assetSpecifier2 == 0))
  {
    goto LABEL_56;
  }

  assetVersion = [(ODDSiriSchemaODDMAErrorsDimensions *)self AssetVersion];
  if (assetVersion)
  {
    v18 = assetVersion;
    assetVersion2 = [(ODDSiriSchemaODDMAErrorsDimensions *)self AssetVersion];
    assetVersion3 = [equalCopy AssetVersion];
    v21 = [assetVersion2 isEqual:assetVersion3];

    if (!v21)
    {
      goto LABEL_57;
    }
  }

  else
  {
  }

  assetSpecifier = [(ODDSiriSchemaODDMAErrorsDimensions *)self Result];
  assetSpecifier2 = [equalCopy Result];
  if ((assetSpecifier != 0) == (assetSpecifier2 == 0))
  {
    goto LABEL_56;
  }

  result = [(ODDSiriSchemaODDMAErrorsDimensions *)self Result];
  if (result)
  {
    v23 = result;
    result2 = [(ODDSiriSchemaODDMAErrorsDimensions *)self Result];
    result3 = [equalCopy Result];
    v26 = [result2 isEqual:result3];

    if (!v26)
    {
      goto LABEL_57;
    }
  }

  else
  {
  }

  has = self->_has;
  v28 = equalCopy[80];
  if ((*&has & 1) != (v28 & 1))
  {
    goto LABEL_57;
  }

  if (*&has)
  {
    IsMAAutoAsset = self->_IsMAAutoAsset;
    if (IsMAAutoAsset != [equalCopy IsMAAutoAsset])
    {
      goto LABEL_57;
    }

    has = self->_has;
    v28 = equalCopy[80];
  }

  v30 = (*&has >> 1) & 1;
  if (v30 != ((v28 >> 1) & 1))
  {
    goto LABEL_57;
  }

  if (v30)
  {
    IsDiscretionary = self->_IsDiscretionary;
    if (IsDiscretionary != [equalCopy IsDiscretionary])
    {
      goto LABEL_57;
    }

    has = self->_has;
    v28 = equalCopy[80];
  }

  v32 = (*&has >> 2) & 1;
  if (v32 != ((v28 >> 2) & 1))
  {
    goto LABEL_57;
  }

  if (v32)
  {
    IsUserPriority = self->_IsUserPriority;
    if (IsUserPriority != [equalCopy IsUserPriority])
    {
      goto LABEL_57;
    }

    has = self->_has;
    v28 = equalCopy[80];
  }

  v34 = (*&has >> 3) & 1;
  if (v34 != ((v28 >> 3) & 1))
  {
    goto LABEL_57;
  }

  if (v34)
  {
    operationType = self->_operationType;
    if (operationType != [equalCopy operationType])
    {
      goto LABEL_57;
    }
  }

  assetSpecifier = [(ODDSiriSchemaODDMAErrorsDimensions *)self operationFailureReason];
  assetSpecifier2 = [equalCopy operationFailureReason];
  if ((assetSpecifier != 0) == (assetSpecifier2 == 0))
  {
    goto LABEL_56;
  }

  operationFailureReason = [(ODDSiriSchemaODDMAErrorsDimensions *)self operationFailureReason];
  if (operationFailureReason)
  {
    v37 = operationFailureReason;
    operationFailureReason2 = [(ODDSiriSchemaODDMAErrorsDimensions *)self operationFailureReason];
    operationFailureReason3 = [equalCopy operationFailureReason];
    v40 = [operationFailureReason2 isEqual:operationFailureReason3];

    if (!v40)
    {
      goto LABEL_57;
    }
  }

  else
  {
  }

  assetSpecifier = [(ODDSiriSchemaODDMAErrorsDimensions *)self operationResult];
  assetSpecifier2 = [equalCopy operationResult];
  if ((assetSpecifier != 0) == (assetSpecifier2 == 0))
  {
    goto LABEL_56;
  }

  operationResult = [(ODDSiriSchemaODDMAErrorsDimensions *)self operationResult];
  if (operationResult)
  {
    v42 = operationResult;
    operationResult2 = [(ODDSiriSchemaODDMAErrorsDimensions *)self operationResult];
    operationResult3 = [equalCopy operationResult];
    v45 = [operationResult2 isEqual:operationResult3];

    if (!v45)
    {
      goto LABEL_57;
    }
  }

  else
  {
  }

  assetSpecifier = [(ODDSiriSchemaODDMAErrorsDimensions *)self networkAccessType];
  assetSpecifier2 = [equalCopy networkAccessType];
  if ((assetSpecifier != 0) == (assetSpecifier2 == 0))
  {
    goto LABEL_56;
  }

  networkAccessType = [(ODDSiriSchemaODDMAErrorsDimensions *)self networkAccessType];
  if (networkAccessType)
  {
    v47 = networkAccessType;
    networkAccessType2 = [(ODDSiriSchemaODDMAErrorsDimensions *)self networkAccessType];
    networkAccessType3 = [equalCopy networkAccessType];
    v50 = [networkAccessType2 isEqual:networkAccessType3];

    if (!v50)
    {
      goto LABEL_57;
    }
  }

  else
  {
  }

  assetSpecifier = [(ODDSiriSchemaODDMAErrorsDimensions *)self subSystemName];
  assetSpecifier2 = [equalCopy subSystemName];
  if ((assetSpecifier != 0) == (assetSpecifier2 == 0))
  {
LABEL_56:

    goto LABEL_57;
  }

  subSystemName = [(ODDSiriSchemaODDMAErrorsDimensions *)self subSystemName];
  if (!subSystemName)
  {

LABEL_60:
    v56 = 1;
    goto LABEL_58;
  }

  v52 = subSystemName;
  subSystemName2 = [(ODDSiriSchemaODDMAErrorsDimensions *)self subSystemName];
  subSystemName3 = [equalCopy subSystemName];
  v55 = [subSystemName2 isEqual:subSystemName3];

  if (v55)
  {
    goto LABEL_60;
  }

LABEL_57:
  v56 = 0;
LABEL_58:

  return v56;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  assetSpecifier = [(ODDSiriSchemaODDMAErrorsDimensions *)self AssetSpecifier];

  if (assetSpecifier)
  {
    PBDataWriterWriteStringField();
  }

  assetType = [(ODDSiriSchemaODDMAErrorsDimensions *)self AssetType];

  if (assetType)
  {
    PBDataWriterWriteStringField();
  }

  assetVersion = [(ODDSiriSchemaODDMAErrorsDimensions *)self AssetVersion];

  if (assetVersion)
  {
    PBDataWriterWriteStringField();
  }

  result = [(ODDSiriSchemaODDMAErrorsDimensions *)self Result];

  if (result)
  {
    PBDataWriterWriteStringField();
  }

  has = self->_has;
  if (has)
  {
    PBDataWriterWriteBOOLField();
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_11:
      if ((has & 4) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_27;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_11;
  }

  PBDataWriterWriteBOOLField();
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_12:
    if ((has & 8) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

LABEL_27:
  PBDataWriterWriteBOOLField();
  if ((*&self->_has & 8) != 0)
  {
LABEL_13:
    PBDataWriterWriteInt32Field();
  }

LABEL_14:
  operationFailureReason = [(ODDSiriSchemaODDMAErrorsDimensions *)self operationFailureReason];

  if (operationFailureReason)
  {
    PBDataWriterWriteStringField();
  }

  operationResult = [(ODDSiriSchemaODDMAErrorsDimensions *)self operationResult];

  if (operationResult)
  {
    PBDataWriterWriteStringField();
  }

  networkAccessType = [(ODDSiriSchemaODDMAErrorsDimensions *)self networkAccessType];

  if (networkAccessType)
  {
    networkAccessType2 = [(ODDSiriSchemaODDMAErrorsDimensions *)self networkAccessType];
    PBDataWriterWriteSubmessage();
  }

  subSystemName = [(ODDSiriSchemaODDMAErrorsDimensions *)self subSystemName];

  v14 = toCopy;
  if (subSystemName)
  {
    PBDataWriterWriteStringField();
    v14 = toCopy;
  }
}

- (void)setHasOperationType:(BOOL)type
{
  if (type)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (void)setHasIsUserPriority:(BOOL)priority
{
  if (priority)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasIsDiscretionary:(BOOL)discretionary
{
  if (discretionary)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  v9.receiver = self;
  v9.super_class = ODDSiriSchemaODDMAErrorsDimensions;
  policyCopy = policy;
  v5 = [(SISchemaInstrumentationMessage *)&v9 applySensitiveConditionsPolicy:policyCopy];
  v6 = [(ODDSiriSchemaODDMAErrorsDimensions *)self networkAccessType:v9.receiver];
  v7 = [v6 applySensitiveConditionsPolicy:policyCopy];

  LODWORD(policyCopy) = [v7 suppressMessage];
  if (policyCopy)
  {
    [(ODDSiriSchemaODDMAErrorsDimensions *)self deleteNetworkAccessType];
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