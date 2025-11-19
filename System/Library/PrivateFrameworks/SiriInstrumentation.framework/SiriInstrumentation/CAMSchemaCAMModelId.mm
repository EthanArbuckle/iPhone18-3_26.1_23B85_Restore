@interface CAMSchemaCAMModelId
- (BOOL)isEqual:(id)a3;
- (CAMSchemaCAMModelId)initWithDictionary:(id)a3;
- (CAMSchemaCAMModelId)initWithJSON:(id)a3;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (void)writeTo:(id)a3;
@end

@implementation CAMSchemaCAMModelId

- (CAMSchemaCAMModelId)initWithDictionary:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = CAMSchemaCAMModelId;
  v5 = [(CAMSchemaCAMModelId *)&v12 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"modelName"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(CAMSchemaCAMModelId *)v5 setModelName:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"modelVersion"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[SISchemaVersion alloc] initWithDictionary:v8];
      [(CAMSchemaCAMModelId *)v5 setModelVersion:v9];
    }

    v10 = v5;
  }

  return v5;
}

- (CAMSchemaCAMModelId)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(CAMSchemaCAMModelId *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(CAMSchemaCAMModelId *)self dictionaryRepresentation];
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
  if (self->_modelName)
  {
    v4 = [(CAMSchemaCAMModelId *)self modelName];
    v5 = [v4 copy];
    [v3 setObject:v5 forKeyedSubscript:@"modelName"];
  }

  if (self->_modelVersion)
  {
    v6 = [(CAMSchemaCAMModelId *)self modelVersion];
    v7 = [v6 dictionaryRepresentation];
    if (v7)
    {
      [v3 setObject:v7 forKeyedSubscript:@"modelVersion"];
    }

    else
    {
      v8 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v8 forKeyedSubscript:@"modelVersion"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_12;
  }

  v5 = [(CAMSchemaCAMModelId *)self modelName];
  v6 = [v4 modelName];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_11;
  }

  v7 = [(CAMSchemaCAMModelId *)self modelName];
  if (v7)
  {
    v8 = v7;
    v9 = [(CAMSchemaCAMModelId *)self modelName];
    v10 = [v4 modelName];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  v5 = [(CAMSchemaCAMModelId *)self modelVersion];
  v6 = [v4 modelVersion];
  if ((v5 != 0) != (v6 == 0))
  {
    v12 = [(CAMSchemaCAMModelId *)self modelVersion];
    if (!v12)
    {

LABEL_15:
      v17 = 1;
      goto LABEL_13;
    }

    v13 = v12;
    v14 = [(CAMSchemaCAMModelId *)self modelVersion];
    v15 = [v4 modelVersion];
    v16 = [v14 isEqual:v15];

    if (v16)
    {
      goto LABEL_15;
    }
  }

  else
  {
LABEL_11:
  }

LABEL_12:
  v17 = 0;
LABEL_13:

  return v17;
}

- (void)writeTo:(id)a3
{
  v7 = a3;
  v4 = [(CAMSchemaCAMModelId *)self modelName];

  if (v4)
  {
    PBDataWriterWriteStringField();
  }

  v5 = [(CAMSchemaCAMModelId *)self modelVersion];

  if (v5)
  {
    v6 = [(CAMSchemaCAMModelId *)self modelVersion];
    PBDataWriterWriteSubmessage();
  }
}

- (id)applySensitiveConditionsPolicy:(id)a3
{
  v9.receiver = self;
  v9.super_class = CAMSchemaCAMModelId;
  v4 = a3;
  v5 = [(SISchemaInstrumentationMessage *)&v9 applySensitiveConditionsPolicy:v4];
  v6 = [(CAMSchemaCAMModelId *)self modelVersion:v9.receiver];
  v7 = [v6 applySensitiveConditionsPolicy:v4];

  LODWORD(v4) = [v7 suppressMessage];
  if (v4)
  {
    [(CAMSchemaCAMModelId *)self deleteModelVersion];
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