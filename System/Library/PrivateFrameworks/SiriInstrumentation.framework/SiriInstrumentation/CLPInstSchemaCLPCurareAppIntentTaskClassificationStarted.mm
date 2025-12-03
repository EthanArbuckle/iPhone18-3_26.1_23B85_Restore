@interface CLPInstSchemaCLPCurareAppIntentTaskClassificationStarted
- (BOOL)isEqual:(id)equal;
- (CLPInstSchemaCLPCurareAppIntentTaskClassificationStarted)initWithDictionary:(id)dictionary;
- (CLPInstSchemaCLPCurareAppIntentTaskClassificationStarted)initWithJSON:(id)n;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)writeTo:(id)to;
@end

@implementation CLPInstSchemaCLPCurareAppIntentTaskClassificationStarted

- (CLPInstSchemaCLPCurareAppIntentTaskClassificationStarted)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v15.receiver = self;
  v15.super_class = CLPInstSchemaCLPCurareAppIntentTaskClassificationStarted;
  v5 = [(CLPInstSchemaCLPCurareAppIntentTaskClassificationStarted *)&v15 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"classifierModelType"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[CLPInstSchemaCLPCurareAppIntentTaskClassificationStarted setClassifierModelType:](v5, "setClassifierModelType:", [v6 intValue]);
    }

    v7 = [dictionaryCopy objectForKeyedSubscript:@"classifierModelAsset"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = [[SISchemaAsset alloc] initWithDictionary:v7];
      [(CLPInstSchemaCLPCurareAppIntentTaskClassificationStarted *)v5 setClassifierModelAsset:v8];
    }

    v9 = [dictionaryCopy objectForKeyedSubscript:@"nlv4AssetVersion"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = [[SISchemaAsset alloc] initWithDictionary:v9];
      [(CLPInstSchemaCLPCurareAppIntentTaskClassificationStarted *)v5 setNlv4AssetVersion:v10];
    }

    v11 = [dictionaryCopy objectForKeyedSubscript:@"nlv4AssetVersionOverride"];
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

- (CLPInstSchemaCLPCurareAppIntentTaskClassificationStarted)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(CLPInstSchemaCLPCurareAppIntentTaskClassificationStarted *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(CLPInstSchemaCLPCurareAppIntentTaskClassificationStarted *)self dictionaryRepresentation];
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
  if (self->_classifierModelAsset)
  {
    classifierModelAsset = [(CLPInstSchemaCLPCurareAppIntentTaskClassificationStarted *)self classifierModelAsset];
    dictionaryRepresentation = [classifierModelAsset dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"classifierModelAsset"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"classifierModelAsset"];
    }
  }

  if (*&self->_has)
  {
    classifierModelType = [(CLPInstSchemaCLPCurareAppIntentTaskClassificationStarted *)self classifierModelType];
    v8 = @"CLPAPPINTENTCLASSIFIERMODELTYPE_UNKNOWN";
    if (classifierModelType == 1)
    {
      v8 = @"CLPAPPINTENTCLASSIFIERMODELTYPE_SIMPLE_HEURISTIC_HARDCODED";
    }

    if (classifierModelType == 2)
    {
      v9 = @"CLPAPPINTENTCLASSIFIERMODELTYPE_COREML";
    }

    else
    {
      v9 = v8;
    }

    [dictionary setObject:v9 forKeyedSubscript:@"classifierModelType"];
  }

  if (self->_nlv4AssetVersion)
  {
    nlv4AssetVersion = [(CLPInstSchemaCLPCurareAppIntentTaskClassificationStarted *)self nlv4AssetVersion];
    dictionaryRepresentation2 = [nlv4AssetVersion dictionaryRepresentation];
    if (dictionaryRepresentation2)
    {
      [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"nlv4AssetVersion"];
    }

    else
    {
      null2 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null2 forKeyedSubscript:@"nlv4AssetVersion"];
    }
  }

  if (self->_nlv4AssetVersionOverride)
  {
    nlv4AssetVersionOverride = [(CLPInstSchemaCLPCurareAppIntentTaskClassificationStarted *)self nlv4AssetVersionOverride];
    dictionaryRepresentation3 = [nlv4AssetVersionOverride dictionaryRepresentation];
    if (dictionaryRepresentation3)
    {
      [dictionary setObject:dictionaryRepresentation3 forKeyedSubscript:@"nlv4AssetVersionOverride"];
    }

    else
    {
      null3 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null3 forKeyedSubscript:@"nlv4AssetVersionOverride"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_20;
  }

  if ((*&self->_has & 1) != (equalCopy[40] & 1))
  {
    goto LABEL_20;
  }

  if (*&self->_has)
  {
    classifierModelType = self->_classifierModelType;
    if (classifierModelType != [equalCopy classifierModelType])
    {
      goto LABEL_20;
    }
  }

  classifierModelAsset = [(CLPInstSchemaCLPCurareAppIntentTaskClassificationStarted *)self classifierModelAsset];
  classifierModelAsset2 = [equalCopy classifierModelAsset];
  if ((classifierModelAsset != 0) == (classifierModelAsset2 == 0))
  {
    goto LABEL_19;
  }

  classifierModelAsset3 = [(CLPInstSchemaCLPCurareAppIntentTaskClassificationStarted *)self classifierModelAsset];
  if (classifierModelAsset3)
  {
    v9 = classifierModelAsset3;
    classifierModelAsset4 = [(CLPInstSchemaCLPCurareAppIntentTaskClassificationStarted *)self classifierModelAsset];
    classifierModelAsset5 = [equalCopy classifierModelAsset];
    v12 = [classifierModelAsset4 isEqual:classifierModelAsset5];

    if (!v12)
    {
      goto LABEL_20;
    }
  }

  else
  {
  }

  classifierModelAsset = [(CLPInstSchemaCLPCurareAppIntentTaskClassificationStarted *)self nlv4AssetVersion];
  classifierModelAsset2 = [equalCopy nlv4AssetVersion];
  if ((classifierModelAsset != 0) == (classifierModelAsset2 == 0))
  {
    goto LABEL_19;
  }

  nlv4AssetVersion = [(CLPInstSchemaCLPCurareAppIntentTaskClassificationStarted *)self nlv4AssetVersion];
  if (nlv4AssetVersion)
  {
    v14 = nlv4AssetVersion;
    nlv4AssetVersion2 = [(CLPInstSchemaCLPCurareAppIntentTaskClassificationStarted *)self nlv4AssetVersion];
    nlv4AssetVersion3 = [equalCopy nlv4AssetVersion];
    v17 = [nlv4AssetVersion2 isEqual:nlv4AssetVersion3];

    if (!v17)
    {
      goto LABEL_20;
    }
  }

  else
  {
  }

  classifierModelAsset = [(CLPInstSchemaCLPCurareAppIntentTaskClassificationStarted *)self nlv4AssetVersionOverride];
  classifierModelAsset2 = [equalCopy nlv4AssetVersionOverride];
  if ((classifierModelAsset != 0) != (classifierModelAsset2 == 0))
  {
    nlv4AssetVersionOverride = [(CLPInstSchemaCLPCurareAppIntentTaskClassificationStarted *)self nlv4AssetVersionOverride];
    if (!nlv4AssetVersionOverride)
    {

LABEL_23:
      v23 = 1;
      goto LABEL_21;
    }

    v19 = nlv4AssetVersionOverride;
    nlv4AssetVersionOverride2 = [(CLPInstSchemaCLPCurareAppIntentTaskClassificationStarted *)self nlv4AssetVersionOverride];
    nlv4AssetVersionOverride3 = [equalCopy nlv4AssetVersionOverride];
    v22 = [nlv4AssetVersionOverride2 isEqual:nlv4AssetVersionOverride3];

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

- (void)writeTo:(id)to
{
  toCopy = to;
  if (*&self->_has)
  {
    PBDataWriterWriteInt32Field();
  }

  classifierModelAsset = [(CLPInstSchemaCLPCurareAppIntentTaskClassificationStarted *)self classifierModelAsset];

  if (classifierModelAsset)
  {
    classifierModelAsset2 = [(CLPInstSchemaCLPCurareAppIntentTaskClassificationStarted *)self classifierModelAsset];
    PBDataWriterWriteSubmessage();
  }

  nlv4AssetVersion = [(CLPInstSchemaCLPCurareAppIntentTaskClassificationStarted *)self nlv4AssetVersion];

  if (nlv4AssetVersion)
  {
    nlv4AssetVersion2 = [(CLPInstSchemaCLPCurareAppIntentTaskClassificationStarted *)self nlv4AssetVersion];
    PBDataWriterWriteSubmessage();
  }

  nlv4AssetVersionOverride = [(CLPInstSchemaCLPCurareAppIntentTaskClassificationStarted *)self nlv4AssetVersionOverride];

  v9 = toCopy;
  if (nlv4AssetVersionOverride)
  {
    nlv4AssetVersionOverride2 = [(CLPInstSchemaCLPCurareAppIntentTaskClassificationStarted *)self nlv4AssetVersionOverride];
    PBDataWriterWriteSubmessage();

    v9 = toCopy;
  }
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  policyCopy = policy;
  v16.receiver = self;
  v16.super_class = CLPInstSchemaCLPCurareAppIntentTaskClassificationStarted;
  v5 = [(SISchemaInstrumentationMessage *)&v16 applySensitiveConditionsPolicy:policyCopy];
  classifierModelAsset = [(CLPInstSchemaCLPCurareAppIntentTaskClassificationStarted *)self classifierModelAsset];
  v7 = [classifierModelAsset applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v7 suppressMessage];

  if (suppressMessage)
  {
    [(CLPInstSchemaCLPCurareAppIntentTaskClassificationStarted *)self deleteClassifierModelAsset];
  }

  nlv4AssetVersion = [(CLPInstSchemaCLPCurareAppIntentTaskClassificationStarted *)self nlv4AssetVersion];
  v10 = [nlv4AssetVersion applySensitiveConditionsPolicy:policyCopy];
  suppressMessage2 = [v10 suppressMessage];

  if (suppressMessage2)
  {
    [(CLPInstSchemaCLPCurareAppIntentTaskClassificationStarted *)self deleteNlv4AssetVersion];
  }

  nlv4AssetVersionOverride = [(CLPInstSchemaCLPCurareAppIntentTaskClassificationStarted *)self nlv4AssetVersionOverride];
  v13 = [nlv4AssetVersionOverride applySensitiveConditionsPolicy:policyCopy];
  suppressMessage3 = [v13 suppressMessage];

  if (suppressMessage3)
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