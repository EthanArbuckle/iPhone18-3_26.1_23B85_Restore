@interface CLPInstSchemaCLPCurareAppIntentTaskClassificationStarted
- (BOOL)isEqual:(id)a3;
- (CLPInstSchemaCLPCurareAppIntentTaskClassificationStarted)initWithDictionary:(id)a3;
- (CLPInstSchemaCLPCurareAppIntentTaskClassificationStarted)initWithJSON:(id)a3;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)writeTo:(id)a3;
@end

@implementation CLPInstSchemaCLPCurareAppIntentTaskClassificationStarted

- (CLPInstSchemaCLPCurareAppIntentTaskClassificationStarted)initWithDictionary:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = CLPInstSchemaCLPCurareAppIntentTaskClassificationStarted;
  v5 = [(CLPInstSchemaCLPCurareAppIntentTaskClassificationStarted *)&v15 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"classifierModelType"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[CLPInstSchemaCLPCurareAppIntentTaskClassificationStarted setClassifierModelType:](v5, "setClassifierModelType:", [v6 intValue]);
    }

    v7 = [v4 objectForKeyedSubscript:@"classifierModelAsset"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = [[SISchemaAsset alloc] initWithDictionary:v7];
      [(CLPInstSchemaCLPCurareAppIntentTaskClassificationStarted *)v5 setClassifierModelAsset:v8];
    }

    v9 = [v4 objectForKeyedSubscript:@"nlv4AssetVersion"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = [[SISchemaAsset alloc] initWithDictionary:v9];
      [(CLPInstSchemaCLPCurareAppIntentTaskClassificationStarted *)v5 setNlv4AssetVersion:v10];
    }

    v11 = [v4 objectForKeyedSubscript:@"nlv4AssetVersionOverride"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = [[SISchemaAsset alloc] initWithDictionary:v11];
      [(CLPInstSchemaCLPCurareAppIntentTaskClassificationStarted *)v5 setNlv4AssetVersionOverride:v12];
    }

    v13 = v5;
  }

  return v5;
}

- (CLPInstSchemaCLPCurareAppIntentTaskClassificationStarted)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(CLPInstSchemaCLPCurareAppIntentTaskClassificationStarted *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(CLPInstSchemaCLPCurareAppIntentTaskClassificationStarted *)self dictionaryRepresentation];
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
  if (self->_classifierModelAsset)
  {
    v4 = [(CLPInstSchemaCLPCurareAppIntentTaskClassificationStarted *)self classifierModelAsset];
    v5 = [v4 dictionaryRepresentation];
    if (v5)
    {
      [v3 setObject:v5 forKeyedSubscript:@"classifierModelAsset"];
    }

    else
    {
      v6 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v6 forKeyedSubscript:@"classifierModelAsset"];
    }
  }

  if (*&self->_has)
  {
    v7 = [(CLPInstSchemaCLPCurareAppIntentTaskClassificationStarted *)self classifierModelType];
    v8 = @"CLPAPPINTENTCLASSIFIERMODELTYPE_UNKNOWN";
    if (v7 == 1)
    {
      v8 = @"CLPAPPINTENTCLASSIFIERMODELTYPE_SIMPLE_HEURISTIC_HARDCODED";
    }

    if (v7 == 2)
    {
      v9 = @"CLPAPPINTENTCLASSIFIERMODELTYPE_COREML";
    }

    else
    {
      v9 = v8;
    }

    [v3 setObject:v9 forKeyedSubscript:@"classifierModelType"];
  }

  if (self->_nlv4AssetVersion)
  {
    v10 = [(CLPInstSchemaCLPCurareAppIntentTaskClassificationStarted *)self nlv4AssetVersion];
    v11 = [v10 dictionaryRepresentation];
    if (v11)
    {
      [v3 setObject:v11 forKeyedSubscript:@"nlv4AssetVersion"];
    }

    else
    {
      v12 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v12 forKeyedSubscript:@"nlv4AssetVersion"];
    }
  }

  if (self->_nlv4AssetVersionOverride)
  {
    v13 = [(CLPInstSchemaCLPCurareAppIntentTaskClassificationStarted *)self nlv4AssetVersionOverride];
    v14 = [v13 dictionaryRepresentation];
    if (v14)
    {
      [v3 setObject:v14 forKeyedSubscript:@"nlv4AssetVersionOverride"];
    }

    else
    {
      v15 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v15 forKeyedSubscript:@"nlv4AssetVersionOverride"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v3 = 2654435761 * self->_classifierModelType;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(SISchemaAsset *)self->_classifierModelAsset hash]^ v3;
  v5 = [(SISchemaAsset *)self->_nlv4AssetVersion hash];
  return v4 ^ v5 ^ [(SISchemaAsset *)self->_nlv4AssetVersionOverride hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_20;
  }

  if ((*&self->_has & 1) != (v4[40] & 1))
  {
    goto LABEL_20;
  }

  if (*&self->_has)
  {
    classifierModelType = self->_classifierModelType;
    if (classifierModelType != [v4 classifierModelType])
    {
      goto LABEL_20;
    }
  }

  v6 = [(CLPInstSchemaCLPCurareAppIntentTaskClassificationStarted *)self classifierModelAsset];
  v7 = [v4 classifierModelAsset];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_19;
  }

  v8 = [(CLPInstSchemaCLPCurareAppIntentTaskClassificationStarted *)self classifierModelAsset];
  if (v8)
  {
    v9 = v8;
    v10 = [(CLPInstSchemaCLPCurareAppIntentTaskClassificationStarted *)self classifierModelAsset];
    v11 = [v4 classifierModelAsset];
    v12 = [v10 isEqual:v11];

    if (!v12)
    {
      goto LABEL_20;
    }
  }

  else
  {
  }

  v6 = [(CLPInstSchemaCLPCurareAppIntentTaskClassificationStarted *)self nlv4AssetVersion];
  v7 = [v4 nlv4AssetVersion];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_19;
  }

  v13 = [(CLPInstSchemaCLPCurareAppIntentTaskClassificationStarted *)self nlv4AssetVersion];
  if (v13)
  {
    v14 = v13;
    v15 = [(CLPInstSchemaCLPCurareAppIntentTaskClassificationStarted *)self nlv4AssetVersion];
    v16 = [v4 nlv4AssetVersion];
    v17 = [v15 isEqual:v16];

    if (!v17)
    {
      goto LABEL_20;
    }
  }

  else
  {
  }

  v6 = [(CLPInstSchemaCLPCurareAppIntentTaskClassificationStarted *)self nlv4AssetVersionOverride];
  v7 = [v4 nlv4AssetVersionOverride];
  if ((v6 != 0) != (v7 == 0))
  {
    v18 = [(CLPInstSchemaCLPCurareAppIntentTaskClassificationStarted *)self nlv4AssetVersionOverride];
    if (!v18)
    {

LABEL_23:
      v23 = 1;
      goto LABEL_21;
    }

    v19 = v18;
    v20 = [(CLPInstSchemaCLPCurareAppIntentTaskClassificationStarted *)self nlv4AssetVersionOverride];
    v21 = [v4 nlv4AssetVersionOverride];
    v22 = [v20 isEqual:v21];

    if (v22)
    {
      goto LABEL_23;
    }
  }

  else
  {
LABEL_19:
  }

LABEL_20:
  v23 = 0;
LABEL_21:

  return v23;
}

- (void)writeTo:(id)a3
{
  v11 = a3;
  if (*&self->_has)
  {
    PBDataWriterWriteInt32Field();
  }

  v4 = [(CLPInstSchemaCLPCurareAppIntentTaskClassificationStarted *)self classifierModelAsset];

  if (v4)
  {
    v5 = [(CLPInstSchemaCLPCurareAppIntentTaskClassificationStarted *)self classifierModelAsset];
    PBDataWriterWriteSubmessage();
  }

  v6 = [(CLPInstSchemaCLPCurareAppIntentTaskClassificationStarted *)self nlv4AssetVersion];

  if (v6)
  {
    v7 = [(CLPInstSchemaCLPCurareAppIntentTaskClassificationStarted *)self nlv4AssetVersion];
    PBDataWriterWriteSubmessage();
  }

  v8 = [(CLPInstSchemaCLPCurareAppIntentTaskClassificationStarted *)self nlv4AssetVersionOverride];

  v9 = v11;
  if (v8)
  {
    v10 = [(CLPInstSchemaCLPCurareAppIntentTaskClassificationStarted *)self nlv4AssetVersionOverride];
    PBDataWriterWriteSubmessage();

    v9 = v11;
  }
}

- (id)applySensitiveConditionsPolicy:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = CLPInstSchemaCLPCurareAppIntentTaskClassificationStarted;
  v5 = [(SISchemaInstrumentationMessage *)&v16 applySensitiveConditionsPolicy:v4];
  v6 = [(CLPInstSchemaCLPCurareAppIntentTaskClassificationStarted *)self classifierModelAsset];
  v7 = [v6 applySensitiveConditionsPolicy:v4];
  v8 = [v7 suppressMessage];

  if (v8)
  {
    [(CLPInstSchemaCLPCurareAppIntentTaskClassificationStarted *)self deleteClassifierModelAsset];
  }

  v9 = [(CLPInstSchemaCLPCurareAppIntentTaskClassificationStarted *)self nlv4AssetVersion];
  v10 = [v9 applySensitiveConditionsPolicy:v4];
  v11 = [v10 suppressMessage];

  if (v11)
  {
    [(CLPInstSchemaCLPCurareAppIntentTaskClassificationStarted *)self deleteNlv4AssetVersion];
  }

  v12 = [(CLPInstSchemaCLPCurareAppIntentTaskClassificationStarted *)self nlv4AssetVersionOverride];
  v13 = [v12 applySensitiveConditionsPolicy:v4];
  v14 = [v13 suppressMessage];

  if (v14)
  {
    [(CLPInstSchemaCLPCurareAppIntentTaskClassificationStarted *)self deleteNlv4AssetVersionOverride];
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