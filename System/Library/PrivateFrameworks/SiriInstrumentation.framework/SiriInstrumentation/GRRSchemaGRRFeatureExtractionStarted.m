@interface GRRSchemaGRRFeatureExtractionStarted
- (BOOL)isEqual:(id)a3;
- (GRRSchemaGRRFeatureExtractionStarted)initWithDictionary:(id)a3;
- (GRRSchemaGRRFeatureExtractionStarted)initWithJSON:(id)a3;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (void)writeTo:(id)a3;
@end

@implementation GRRSchemaGRRFeatureExtractionStarted

- (GRRSchemaGRRFeatureExtractionStarted)initWithDictionary:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = GRRSchemaGRRFeatureExtractionStarted;
  v5 = [(GRRSchemaGRRFeatureExtractionStarted *)&v10 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"source"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[GRRSchemaGRRSource alloc] initWithDictionary:v6];
      [(GRRSchemaGRRFeatureExtractionStarted *)v5 setSource:v7];
    }

    v8 = v5;
  }

  return v5;
}

- (GRRSchemaGRRFeatureExtractionStarted)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(GRRSchemaGRRFeatureExtractionStarted *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(GRRSchemaGRRFeatureExtractionStarted *)self dictionaryRepresentation];
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
  if (self->_source)
  {
    v4 = [(GRRSchemaGRRFeatureExtractionStarted *)self source];
    v5 = [v4 dictionaryRepresentation];
    if (v5)
    {
      [v3 setObject:v5 forKeyedSubscript:@"source"];
    }

    else
    {
      v6 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v6 forKeyedSubscript:@"source"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()])
  {
    v5 = [(GRRSchemaGRRFeatureExtractionStarted *)self source];
    v6 = [v4 source];
    v7 = v6;
    if ((v5 != 0) != (v6 == 0))
    {
      v8 = [(GRRSchemaGRRFeatureExtractionStarted *)self source];
      if (!v8)
      {

LABEL_10:
        v13 = 1;
        goto LABEL_8;
      }

      v9 = v8;
      v10 = [(GRRSchemaGRRFeatureExtractionStarted *)self source];
      v11 = [v4 source];
      v12 = [v10 isEqual:v11];

      if (v12)
      {
        goto LABEL_10;
      }
    }

    else
    {
    }
  }

  v13 = 0;
LABEL_8:

  return v13;
}

- (void)writeTo:(id)a3
{
  v6 = a3;
  v4 = [(GRRSchemaGRRFeatureExtractionStarted *)self source];

  if (v4)
  {
    v5 = [(GRRSchemaGRRFeatureExtractionStarted *)self source];
    PBDataWriterWriteSubmessage();
  }
}

- (id)applySensitiveConditionsPolicy:(id)a3
{
  v9.receiver = self;
  v9.super_class = GRRSchemaGRRFeatureExtractionStarted;
  v4 = a3;
  v5 = [(SISchemaInstrumentationMessage *)&v9 applySensitiveConditionsPolicy:v4];
  v6 = [(GRRSchemaGRRFeatureExtractionStarted *)self source:v9.receiver];
  v7 = [v6 applySensitiveConditionsPolicy:v4];

  LODWORD(v4) = [v7 suppressMessage];
  if (v4)
  {
    [(GRRSchemaGRRFeatureExtractionStarted *)self deleteSource];
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