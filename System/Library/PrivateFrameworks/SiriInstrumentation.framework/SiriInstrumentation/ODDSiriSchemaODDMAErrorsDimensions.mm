@interface ODDSiriSchemaODDMAErrorsDimensions
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (ODDSiriSchemaODDMAErrorsDimensions)initWithDictionary:(id)a3;
- (ODDSiriSchemaODDMAErrorsDimensions)initWithJSON:(id)a3;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasIsDiscretionary:(BOOL)a3;
- (void)setHasIsUserPriority:(BOOL)a3;
- (void)setHasOperationType:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation ODDSiriSchemaODDMAErrorsDimensions

- (ODDSiriSchemaODDMAErrorsDimensions)initWithDictionary:(id)a3
{
  v4 = a3;
  v33.receiver = self;
  v33.super_class = ODDSiriSchemaODDMAErrorsDimensions;
  v5 = [(ODDSiriSchemaODDMAErrorsDimensions *)&v33 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"AssetSpecifier"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(ODDSiriSchemaODDMAErrorsDimensions *)v5 setAssetSpecifier:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"AssetType"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [v8 copy];
      [(ODDSiriSchemaODDMAErrorsDimensions *)v5 setAssetType:v9];
    }

    v10 = [v4 objectForKeyedSubscript:@"AssetVersion"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [v10 copy];
      [(ODDSiriSchemaODDMAErrorsDimensions *)v5 setAssetVersion:v11];
    }

    v12 = [v4 objectForKeyedSubscript:@"Result"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [v12 copy];
      [(ODDSiriSchemaODDMAErrorsDimensions *)v5 setResult:v13];
    }

    v29 = v12;
    v14 = [v4 objectForKeyedSubscript:@"IsMAAutoAsset"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ODDSiriSchemaODDMAErrorsDimensions setIsMAAutoAsset:](v5, "setIsMAAutoAsset:", [v14 BOOLValue]);
    }

    v28 = v14;
    v15 = [v4 objectForKeyedSubscript:@"IsDiscretionary"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ODDSiriSchemaODDMAErrorsDimensions setIsDiscretionary:](v5, "setIsDiscretionary:", [v15 BOOLValue]);
    }

    v16 = [v4 objectForKeyedSubscript:@"IsUserPriority"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ODDSiriSchemaODDMAErrorsDimensions setIsUserPriority:](v5, "setIsUserPriority:", [v16 BOOLValue]);
    }

    v32 = v6;
    v17 = [v4 objectForKeyedSubscript:@"operationType"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ODDSiriSchemaODDMAErrorsDimensions setOperationType:](v5, "setOperationType:", [v17 intValue]);
    }

    v31 = v8;
    v18 = [v4 objectForKeyedSubscript:@"operationFailureReason"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v19 = [v18 copy];
      [(ODDSiriSchemaODDMAErrorsDimensions *)v5 setOperationFailureReason:v19];
    }

    v30 = v10;
    v20 = [v4 objectForKeyedSubscript:@"operationResult"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v21 = [v20 copy];
      [(ODDSiriSchemaODDMAErrorsDimensions *)v5 setOperationResult:v21];
    }

    v22 = [v4 objectForKeyedSubscript:@"networkAccessType"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v23 = [[ODDSiriSchemaODDMANetworkAccessTypes alloc] initWithDictionary:v22];
      [(ODDSiriSchemaODDMAErrorsDimensions *)v5 setNetworkAccessType:v23];
    }

    v24 = [v4 objectForKeyedSubscript:@"subSystemName"];
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

- (ODDSiriSchemaODDMAErrorsDimensions)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(ODDSiriSchemaODDMAErrorsDimensions *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(ODDSiriSchemaODDMAErrorsDimensions *)self dictionaryRepresentation];
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
  if (self->_AssetSpecifier)
  {
    v4 = [(ODDSiriSchemaODDMAErrorsDimensions *)self AssetSpecifier];
    v5 = [v4 copy];
    [v3 setObject:v5 forKeyedSubscript:@"AssetSpecifier"];
  }

  if (self->_AssetType)
  {
    v6 = [(ODDSiriSchemaODDMAErrorsDimensions *)self AssetType];
    v7 = [v6 copy];
    [v3 setObject:v7 forKeyedSubscript:@"AssetType"];
  }

  if (self->_AssetVersion)
  {
    v8 = [(ODDSiriSchemaODDMAErrorsDimensions *)self AssetVersion];
    v9 = [v8 copy];
    [v3 setObject:v9 forKeyedSubscript:@"AssetVersion"];
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    v16 = [MEMORY[0x1E696AD98] numberWithBool:{-[ODDSiriSchemaODDMAErrorsDimensions IsDiscretionary](self, "IsDiscretionary")}];
    [v3 setObject:v16 forKeyedSubscript:@"IsDiscretionary"];

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
  [v3 setObject:v17 forKeyedSubscript:@"IsMAAutoAsset"];

  if ((*&self->_has & 4) != 0)
  {
LABEL_10:
    v11 = [MEMORY[0x1E696AD98] numberWithBool:{-[ODDSiriSchemaODDMAErrorsDimensions IsUserPriority](self, "IsUserPriority")}];
    [v3 setObject:v11 forKeyedSubscript:@"IsUserPriority"];
  }

LABEL_11:
  if (self->_Result)
  {
    v12 = [(ODDSiriSchemaODDMAErrorsDimensions *)self Result];
    v13 = [v12 copy];
    [v3 setObject:v13 forKeyedSubscript:@"Result"];
  }

  if (self->_networkAccessType)
  {
    v14 = [(ODDSiriSchemaODDMAErrorsDimensions *)self networkAccessType];
    v15 = [v14 dictionaryRepresentation];
    if (v15)
    {
      [v3 setObject:v15 forKeyedSubscript:@"networkAccessType"];
    }

    else
    {
      v18 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v18 forKeyedSubscript:@"networkAccessType"];
    }
  }

  if (self->_operationFailureReason)
  {
    v19 = [(ODDSiriSchemaODDMAErrorsDimensions *)self operationFailureReason];
    v20 = [v19 copy];
    [v3 setObject:v20 forKeyedSubscript:@"operationFailureReason"];
  }

  if (self->_operationResult)
  {
    v21 = [(ODDSiriSchemaODDMAErrorsDimensions *)self operationResult];
    v22 = [v21 copy];
    [v3 setObject:v22 forKeyedSubscript:@"operationResult"];
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

    [v3 setObject:v24 forKeyedSubscript:@"operationType"];
  }

  if (self->_subSystemName)
  {
    v25 = [(ODDSiriSchemaODDMAErrorsDimensions *)self subSystemName];
    v26 = [v25 copy];
    [v3 setObject:v26 forKeyedSubscript:@"subSystemName"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_57;
  }

  v5 = [(ODDSiriSchemaODDMAErrorsDimensions *)self AssetSpecifier];
  v6 = [v4 AssetSpecifier];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_56;
  }

  v7 = [(ODDSiriSchemaODDMAErrorsDimensions *)self AssetSpecifier];
  if (v7)
  {
    v8 = v7;
    v9 = [(ODDSiriSchemaODDMAErrorsDimensions *)self AssetSpecifier];
    v10 = [v4 AssetSpecifier];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_57;
    }
  }

  else
  {
  }

  v5 = [(ODDSiriSchemaODDMAErrorsDimensions *)self AssetType];
  v6 = [v4 AssetType];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_56;
  }

  v12 = [(ODDSiriSchemaODDMAErrorsDimensions *)self AssetType];
  if (v12)
  {
    v13 = v12;
    v14 = [(ODDSiriSchemaODDMAErrorsDimensions *)self AssetType];
    v15 = [v4 AssetType];
    v16 = [v14 isEqual:v15];

    if (!v16)
    {
      goto LABEL_57;
    }
  }

  else
  {
  }

  v5 = [(ODDSiriSchemaODDMAErrorsDimensions *)self AssetVersion];
  v6 = [v4 AssetVersion];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_56;
  }

  v17 = [(ODDSiriSchemaODDMAErrorsDimensions *)self AssetVersion];
  if (v17)
  {
    v18 = v17;
    v19 = [(ODDSiriSchemaODDMAErrorsDimensions *)self AssetVersion];
    v20 = [v4 AssetVersion];
    v21 = [v19 isEqual:v20];

    if (!v21)
    {
      goto LABEL_57;
    }
  }

  else
  {
  }

  v5 = [(ODDSiriSchemaODDMAErrorsDimensions *)self Result];
  v6 = [v4 Result];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_56;
  }

  v22 = [(ODDSiriSchemaODDMAErrorsDimensions *)self Result];
  if (v22)
  {
    v23 = v22;
    v24 = [(ODDSiriSchemaODDMAErrorsDimensions *)self Result];
    v25 = [v4 Result];
    v26 = [v24 isEqual:v25];

    if (!v26)
    {
      goto LABEL_57;
    }
  }

  else
  {
  }

  has = self->_has;
  v28 = v4[80];
  if ((*&has & 1) != (v28 & 1))
  {
    goto LABEL_57;
  }

  if (*&has)
  {
    IsMAAutoAsset = self->_IsMAAutoAsset;
    if (IsMAAutoAsset != [v4 IsMAAutoAsset])
    {
      goto LABEL_57;
    }

    has = self->_has;
    v28 = v4[80];
  }

  v30 = (*&has >> 1) & 1;
  if (v30 != ((v28 >> 1) & 1))
  {
    goto LABEL_57;
  }

  if (v30)
  {
    IsDiscretionary = self->_IsDiscretionary;
    if (IsDiscretionary != [v4 IsDiscretionary])
    {
      goto LABEL_57;
    }

    has = self->_has;
    v28 = v4[80];
  }

  v32 = (*&has >> 2) & 1;
  if (v32 != ((v28 >> 2) & 1))
  {
    goto LABEL_57;
  }

  if (v32)
  {
    IsUserPriority = self->_IsUserPriority;
    if (IsUserPriority != [v4 IsUserPriority])
    {
      goto LABEL_57;
    }

    has = self->_has;
    v28 = v4[80];
  }

  v34 = (*&has >> 3) & 1;
  if (v34 != ((v28 >> 3) & 1))
  {
    goto LABEL_57;
  }

  if (v34)
  {
    operationType = self->_operationType;
    if (operationType != [v4 operationType])
    {
      goto LABEL_57;
    }
  }

  v5 = [(ODDSiriSchemaODDMAErrorsDimensions *)self operationFailureReason];
  v6 = [v4 operationFailureReason];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_56;
  }

  v36 = [(ODDSiriSchemaODDMAErrorsDimensions *)self operationFailureReason];
  if (v36)
  {
    v37 = v36;
    v38 = [(ODDSiriSchemaODDMAErrorsDimensions *)self operationFailureReason];
    v39 = [v4 operationFailureReason];
    v40 = [v38 isEqual:v39];

    if (!v40)
    {
      goto LABEL_57;
    }
  }

  else
  {
  }

  v5 = [(ODDSiriSchemaODDMAErrorsDimensions *)self operationResult];
  v6 = [v4 operationResult];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_56;
  }

  v41 = [(ODDSiriSchemaODDMAErrorsDimensions *)self operationResult];
  if (v41)
  {
    v42 = v41;
    v43 = [(ODDSiriSchemaODDMAErrorsDimensions *)self operationResult];
    v44 = [v4 operationResult];
    v45 = [v43 isEqual:v44];

    if (!v45)
    {
      goto LABEL_57;
    }
  }

  else
  {
  }

  v5 = [(ODDSiriSchemaODDMAErrorsDimensions *)self networkAccessType];
  v6 = [v4 networkAccessType];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_56;
  }

  v46 = [(ODDSiriSchemaODDMAErrorsDimensions *)self networkAccessType];
  if (v46)
  {
    v47 = v46;
    v48 = [(ODDSiriSchemaODDMAErrorsDimensions *)self networkAccessType];
    v49 = [v4 networkAccessType];
    v50 = [v48 isEqual:v49];

    if (!v50)
    {
      goto LABEL_57;
    }
  }

  else
  {
  }

  v5 = [(ODDSiriSchemaODDMAErrorsDimensions *)self subSystemName];
  v6 = [v4 subSystemName];
  if ((v5 != 0) == (v6 == 0))
  {
LABEL_56:

    goto LABEL_57;
  }

  v51 = [(ODDSiriSchemaODDMAErrorsDimensions *)self subSystemName];
  if (!v51)
  {

LABEL_60:
    v56 = 1;
    goto LABEL_58;
  }

  v52 = v51;
  v53 = [(ODDSiriSchemaODDMAErrorsDimensions *)self subSystemName];
  v54 = [v4 subSystemName];
  v55 = [v53 isEqual:v54];

  if (v55)
  {
    goto LABEL_60;
  }

LABEL_57:
  v56 = 0;
LABEL_58:

  return v56;
}

- (void)writeTo:(id)a3
{
  v15 = a3;
  v4 = [(ODDSiriSchemaODDMAErrorsDimensions *)self AssetSpecifier];

  if (v4)
  {
    PBDataWriterWriteStringField();
  }

  v5 = [(ODDSiriSchemaODDMAErrorsDimensions *)self AssetType];

  if (v5)
  {
    PBDataWriterWriteStringField();
  }

  v6 = [(ODDSiriSchemaODDMAErrorsDimensions *)self AssetVersion];

  if (v6)
  {
    PBDataWriterWriteStringField();
  }

  v7 = [(ODDSiriSchemaODDMAErrorsDimensions *)self Result];

  if (v7)
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
  v9 = [(ODDSiriSchemaODDMAErrorsDimensions *)self operationFailureReason];

  if (v9)
  {
    PBDataWriterWriteStringField();
  }

  v10 = [(ODDSiriSchemaODDMAErrorsDimensions *)self operationResult];

  if (v10)
  {
    PBDataWriterWriteStringField();
  }

  v11 = [(ODDSiriSchemaODDMAErrorsDimensions *)self networkAccessType];

  if (v11)
  {
    v12 = [(ODDSiriSchemaODDMAErrorsDimensions *)self networkAccessType];
    PBDataWriterWriteSubmessage();
  }

  v13 = [(ODDSiriSchemaODDMAErrorsDimensions *)self subSystemName];

  v14 = v15;
  if (v13)
  {
    PBDataWriterWriteStringField();
    v14 = v15;
  }
}

- (void)setHasOperationType:(BOOL)a3
{
  if (a3)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (void)setHasIsUserPriority:(BOOL)a3
{
  if (a3)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasIsDiscretionary:(BOOL)a3
{
  if (a3)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (id)applySensitiveConditionsPolicy:(id)a3
{
  v9.receiver = self;
  v9.super_class = ODDSiriSchemaODDMAErrorsDimensions;
  v4 = a3;
  v5 = [(SISchemaInstrumentationMessage *)&v9 applySensitiveConditionsPolicy:v4];
  v6 = [(ODDSiriSchemaODDMAErrorsDimensions *)self networkAccessType:v9.receiver];
  v7 = [v6 applySensitiveConditionsPolicy:v4];

  LODWORD(v4) = [v7 suppressMessage];
  if (v4)
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