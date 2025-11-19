@interface STSchemaSTGeneralSearchResult
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (STSchemaSTGeneralSearchResult)initWithDictionary:(id)a3;
- (STSchemaSTGeneralSearchResult)initWithJSON:(id)a3;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)writeTo:(id)a3;
@end

@implementation STSchemaSTGeneralSearchResult

- (STSchemaSTGeneralSearchResult)initWithDictionary:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = STSchemaSTGeneralSearchResult;
  v5 = [(STSchemaSTGeneralSearchResult *)&v13 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"generalSearchResultId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[SISchemaUUID alloc] initWithDictionary:v6];
      [(STSchemaSTGeneralSearchResult *)v5 setGeneralSearchResultId:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"bundleId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [v8 copy];
      [(STSchemaSTGeneralSearchResult *)v5 setBundleId:v9];
    }

    v10 = [v4 objectForKeyedSubscript:@"resultType"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[STSchemaSTGeneralSearchResult setResultType:](v5, "setResultType:", [v10 intValue]);
    }

    v11 = v5;
  }

  return v5;
}

- (STSchemaSTGeneralSearchResult)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(STSchemaSTGeneralSearchResult *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(STSchemaSTGeneralSearchResult *)self dictionaryRepresentation];
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
  if (self->_bundleId)
  {
    v4 = [(STSchemaSTGeneralSearchResult *)self bundleId];
    v5 = [v4 copy];
    [v3 setObject:v5 forKeyedSubscript:@"bundleId"];
  }

  if (self->_generalSearchResultId)
  {
    v6 = [(STSchemaSTGeneralSearchResult *)self generalSearchResultId];
    v7 = [v6 dictionaryRepresentation];
    if (v7)
    {
      [v3 setObject:v7 forKeyedSubscript:@"generalSearchResultId"];
    }

    else
    {
      v8 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v8 forKeyedSubscript:@"generalSearchResultId"];
    }
  }

  if (*&self->_has)
  {
    v9 = [(STSchemaSTGeneralSearchResult *)self resultType]- 1;
    if (v9 > 3)
    {
      v10 = @"STGENERALSEARCHRESULTTYPE_UNKNOWN";
    }

    else
    {
      v10 = off_1E78E78A0[v9];
    }

    [v3 setObject:v10 forKeyedSubscript:@"resultType"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
}

- (unint64_t)hash
{
  v3 = [(SISchemaUUID *)self->_generalSearchResultId hash];
  v4 = [(NSString *)self->_bundleId hash];
  if (*&self->_has)
  {
    v5 = 2654435761 * self->_resultType;
  }

  else
  {
    v5 = 0;
  }

  return v4 ^ v3 ^ v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_12;
  }

  v5 = [(STSchemaSTGeneralSearchResult *)self generalSearchResultId];
  v6 = [v4 generalSearchResultId];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_11;
  }

  v7 = [(STSchemaSTGeneralSearchResult *)self generalSearchResultId];
  if (v7)
  {
    v8 = v7;
    v9 = [(STSchemaSTGeneralSearchResult *)self generalSearchResultId];
    v10 = [v4 generalSearchResultId];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  v5 = [(STSchemaSTGeneralSearchResult *)self bundleId];
  v6 = [v4 bundleId];
  if ((v5 != 0) == (v6 == 0))
  {
LABEL_11:

    goto LABEL_12;
  }

  v12 = [(STSchemaSTGeneralSearchResult *)self bundleId];
  if (v12)
  {
    v13 = v12;
    v14 = [(STSchemaSTGeneralSearchResult *)self bundleId];
    v15 = [v4 bundleId];
    v16 = [v14 isEqual:v15];

    if (!v16)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  if ((*&self->_has & 1) == (v4[28] & 1))
  {
    if ((*&self->_has & 1) == 0 || (resultType = self->_resultType, resultType == [v4 resultType]))
    {
      v17 = 1;
      goto LABEL_13;
    }
  }

LABEL_12:
  v17 = 0;
LABEL_13:

  return v17;
}

- (void)writeTo:(id)a3
{
  v8 = a3;
  v4 = [(STSchemaSTGeneralSearchResult *)self generalSearchResultId];

  if (v4)
  {
    v5 = [(STSchemaSTGeneralSearchResult *)self generalSearchResultId];
    PBDataWriterWriteSubmessage();
  }

  v6 = [(STSchemaSTGeneralSearchResult *)self bundleId];

  if (v6)
  {
    PBDataWriterWriteStringField();
  }

  v7 = v8;
  if (*&self->_has)
  {
    PBDataWriterWriteInt32Field();
    v7 = v8;
  }
}

- (id)applySensitiveConditionsPolicy:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = STSchemaSTGeneralSearchResult;
  v5 = [(SISchemaInstrumentationMessage *)&v10 applySensitiveConditionsPolicy:v4];
  if ([v4 isConditionSet:4])
  {
    [(STSchemaSTGeneralSearchResult *)self deleteBundleId];
  }

  v6 = [(STSchemaSTGeneralSearchResult *)self generalSearchResultId];
  v7 = [v6 applySensitiveConditionsPolicy:v4];
  v8 = [v7 suppressMessage];

  if (v8)
  {
    [(STSchemaSTGeneralSearchResult *)self deleteGeneralSearchResultId];
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