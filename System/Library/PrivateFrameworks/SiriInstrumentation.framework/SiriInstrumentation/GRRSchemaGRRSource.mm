@interface GRRSchemaGRRSource
- (BOOL)isEqual:(id)a3;
- (GRRSchemaGRRSource)initWithDictionary:(id)a3;
- (GRRSchemaGRRSource)initWithJSON:(id)a3;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)writeTo:(id)a3;
@end

@implementation GRRSchemaGRRSource

- (GRRSchemaGRRSource)initWithDictionary:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = GRRSchemaGRRSource;
  v5 = [(GRRSchemaGRRSource *)&v11 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"sourceId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[SISchemaUUID alloc] initWithDictionary:v6];
      [(GRRSchemaGRRSource *)v5 setSourceId:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"sourceType"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[GRRSchemaGRRSource setSourceType:](v5, "setSourceType:", [v8 intValue]);
    }

    v9 = v5;
  }

  return v5;
}

- (GRRSchemaGRRSource)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(GRRSchemaGRRSource *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(GRRSchemaGRRSource *)self dictionaryRepresentation];
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
  if (self->_sourceId)
  {
    v4 = [(GRRSchemaGRRSource *)self sourceId];
    v5 = [v4 dictionaryRepresentation];
    if (v5)
    {
      [v3 setObject:v5 forKeyedSubscript:@"sourceId"];
    }

    else
    {
      v6 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v6 forKeyedSubscript:@"sourceId"];
    }
  }

  if (*&self->_has)
  {
    v7 = [(GRRSchemaGRRSource *)self sourceType]- 1;
    if (v7 > 5)
    {
      v8 = @"GRRSOURCETYPE_UNKNOWN";
    }

    else
    {
      v8 = off_1E78D79B8[v7];
    }

    [v3 setObject:v8 forKeyedSubscript:@"sourceType"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
}

- (unint64_t)hash
{
  v3 = [(SISchemaUUID *)self->_sourceId hash];
  if (*&self->_has)
  {
    v4 = 2654435761 * self->_sourceType;
  }

  else
  {
    v4 = 0;
  }

  return v4 ^ v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_12;
  }

  v5 = [(GRRSchemaGRRSource *)self sourceId];
  v6 = [v4 sourceId];
  v7 = v6;
  if ((v5 != 0) == (v6 == 0))
  {

LABEL_12:
    v14 = 0;
    goto LABEL_13;
  }

  v8 = [(GRRSchemaGRRSource *)self sourceId];
  if (v8)
  {
    v9 = v8;
    v10 = [(GRRSchemaGRRSource *)self sourceId];
    v11 = [v4 sourceId];
    v12 = [v10 isEqual:v11];

    if (!v12)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  if ((*&self->_has & 1) != (v4[20] & 1))
  {
    goto LABEL_12;
  }

  if (*&self->_has)
  {
    sourceType = self->_sourceType;
    if (sourceType != [v4 sourceType])
    {
      goto LABEL_12;
    }
  }

  v14 = 1;
LABEL_13:

  return v14;
}

- (void)writeTo:(id)a3
{
  v6 = a3;
  v4 = [(GRRSchemaGRRSource *)self sourceId];

  if (v4)
  {
    v5 = [(GRRSchemaGRRSource *)self sourceId];
    PBDataWriterWriteSubmessage();
  }

  if (*&self->_has)
  {
    PBDataWriterWriteInt32Field();
  }
}

- (id)applySensitiveConditionsPolicy:(id)a3
{
  v9.receiver = self;
  v9.super_class = GRRSchemaGRRSource;
  v4 = a3;
  v5 = [(SISchemaInstrumentationMessage *)&v9 applySensitiveConditionsPolicy:v4];
  v6 = [(GRRSchemaGRRSource *)self sourceId:v9.receiver];
  v7 = [v6 applySensitiveConditionsPolicy:v4];

  LODWORD(v4) = [v7 suppressMessage];
  if (v4)
  {
    [(GRRSchemaGRRSource *)self deleteSourceId];
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