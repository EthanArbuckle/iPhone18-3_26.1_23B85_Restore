@interface GRRSchemaGRRSource
- (BOOL)isEqual:(id)equal;
- (GRRSchemaGRRSource)initWithDictionary:(id)dictionary;
- (GRRSchemaGRRSource)initWithJSON:(id)n;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)writeTo:(id)to;
@end

@implementation GRRSchemaGRRSource

- (GRRSchemaGRRSource)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v11.receiver = self;
  v11.super_class = GRRSchemaGRRSource;
  v5 = [(GRRSchemaGRRSource *)&v11 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"sourceId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[SISchemaUUID alloc] initWithDictionary:v6];
      [(GRRSchemaGRRSource *)v5 setSourceId:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"sourceType"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[GRRSchemaGRRSource setSourceType:](v5, "setSourceType:", [v8 intValue]);
    }

    v9 = v5;
  }

  return v5;
}

- (GRRSchemaGRRSource)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(GRRSchemaGRRSource *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(GRRSchemaGRRSource *)self dictionaryRepresentation];
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
  if (self->_sourceId)
  {
    sourceId = [(GRRSchemaGRRSource *)self sourceId];
    dictionaryRepresentation = [sourceId dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"sourceId"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"sourceId"];
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

    [dictionary setObject:v8 forKeyedSubscript:@"sourceType"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_12;
  }

  sourceId = [(GRRSchemaGRRSource *)self sourceId];
  sourceId2 = [equalCopy sourceId];
  v7 = sourceId2;
  if ((sourceId != 0) == (sourceId2 == 0))
  {

LABEL_12:
    v14 = 0;
    goto LABEL_13;
  }

  sourceId3 = [(GRRSchemaGRRSource *)self sourceId];
  if (sourceId3)
  {
    v9 = sourceId3;
    sourceId4 = [(GRRSchemaGRRSource *)self sourceId];
    sourceId5 = [equalCopy sourceId];
    v12 = [sourceId4 isEqual:sourceId5];

    if (!v12)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  if ((*&self->_has & 1) != (equalCopy[20] & 1))
  {
    goto LABEL_12;
  }

  if (*&self->_has)
  {
    sourceType = self->_sourceType;
    if (sourceType != [equalCopy sourceType])
    {
      goto LABEL_12;
    }
  }

  v14 = 1;
LABEL_13:

  return v14;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  sourceId = [(GRRSchemaGRRSource *)self sourceId];

  if (sourceId)
  {
    sourceId2 = [(GRRSchemaGRRSource *)self sourceId];
    PBDataWriterWriteSubmessage();
  }

  if (*&self->_has)
  {
    PBDataWriterWriteInt32Field();
  }
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  v9.receiver = self;
  v9.super_class = GRRSchemaGRRSource;
  policyCopy = policy;
  v5 = [(SISchemaInstrumentationMessage *)&v9 applySensitiveConditionsPolicy:policyCopy];
  v6 = [(GRRSchemaGRRSource *)self sourceId:v9.receiver];
  v7 = [v6 applySensitiveConditionsPolicy:policyCopy];

  LODWORD(policyCopy) = [v7 suppressMessage];
  if (policyCopy)
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