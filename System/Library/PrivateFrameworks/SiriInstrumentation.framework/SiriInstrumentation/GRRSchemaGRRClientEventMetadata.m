@interface GRRSchemaGRRClientEventMetadata
- (BOOL)isEqual:(id)a3;
- (GRRSchemaGRRClientEventMetadata)initWithDictionary:(id)a3;
- (GRRSchemaGRRClientEventMetadata)initWithJSON:(id)a3;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (void)writeTo:(id)a3;
@end

@implementation GRRSchemaGRRClientEventMetadata

- (GRRSchemaGRRClientEventMetadata)initWithDictionary:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = GRRSchemaGRRClientEventMetadata;
  v5 = [(GRRSchemaGRRClientEventMetadata *)&v12 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"grrId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[SISchemaUUID alloc] initWithDictionary:v6];
      [(GRRSchemaGRRClientEventMetadata *)v5 setGrrId:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"resultCandidateId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [v8 copy];
      [(GRRSchemaGRRClientEventMetadata *)v5 setResultCandidateId:v9];
    }

    v10 = v5;
  }

  return v5;
}

- (GRRSchemaGRRClientEventMetadata)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(GRRSchemaGRRClientEventMetadata *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(GRRSchemaGRRClientEventMetadata *)self dictionaryRepresentation];
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
  if (self->_grrId)
  {
    v4 = [(GRRSchemaGRRClientEventMetadata *)self grrId];
    v5 = [v4 dictionaryRepresentation];
    if (v5)
    {
      [v3 setObject:v5 forKeyedSubscript:@"grrId"];
    }

    else
    {
      v6 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v6 forKeyedSubscript:@"grrId"];
    }
  }

  if (self->_resultCandidateId)
  {
    v7 = [(GRRSchemaGRRClientEventMetadata *)self resultCandidateId];
    v8 = [v7 copy];
    [v3 setObject:v8 forKeyedSubscript:@"resultCandidateId"];
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

  v5 = [(GRRSchemaGRRClientEventMetadata *)self grrId];
  v6 = [v4 grrId];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_11;
  }

  v7 = [(GRRSchemaGRRClientEventMetadata *)self grrId];
  if (v7)
  {
    v8 = v7;
    v9 = [(GRRSchemaGRRClientEventMetadata *)self grrId];
    v10 = [v4 grrId];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  v5 = [(GRRSchemaGRRClientEventMetadata *)self resultCandidateId];
  v6 = [v4 resultCandidateId];
  if ((v5 != 0) != (v6 == 0))
  {
    v12 = [(GRRSchemaGRRClientEventMetadata *)self resultCandidateId];
    if (!v12)
    {

LABEL_15:
      v17 = 1;
      goto LABEL_13;
    }

    v13 = v12;
    v14 = [(GRRSchemaGRRClientEventMetadata *)self resultCandidateId];
    v15 = [v4 resultCandidateId];
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
  v4 = [(GRRSchemaGRRClientEventMetadata *)self grrId];

  if (v4)
  {
    v5 = [(GRRSchemaGRRClientEventMetadata *)self grrId];
    PBDataWriterWriteSubmessage();
  }

  v6 = [(GRRSchemaGRRClientEventMetadata *)self resultCandidateId];

  if (v6)
  {
    PBDataWriterWriteStringField();
  }
}

- (id)applySensitiveConditionsPolicy:(id)a3
{
  v9.receiver = self;
  v9.super_class = GRRSchemaGRRClientEventMetadata;
  v4 = a3;
  v5 = [(SISchemaInstrumentationMessage *)&v9 applySensitiveConditionsPolicy:v4];
  v6 = [(GRRSchemaGRRClientEventMetadata *)self grrId:v9.receiver];
  v7 = [v6 applySensitiveConditionsPolicy:v4];

  LODWORD(v4) = [v7 suppressMessage];
  if (v4)
  {
    [(GRRSchemaGRRClientEventMetadata *)self deleteGrrId];
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