@interface _SFPBEmbeddingState
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (_SFPBEmbeddingState)initWithDictionary:(id)a3;
- (_SFPBEmbeddingState)initWithFacade:(id)a3;
- (_SFPBEmbeddingState)initWithJSON:(id)a3;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)writeTo:(id)a3;
@end

@implementation _SFPBEmbeddingState

- (_SFPBEmbeddingState)initWithFacade:(id)a3
{
  v4 = a3;
  v5 = [(_SFPBEmbeddingState *)self init];
  if (v5)
  {
    if ([v4 hasQueryStatus])
    {
      -[_SFPBEmbeddingState setQueryStatus:](v5, "setQueryStatus:", [v4 queryStatus]);
    }

    if ([v4 hasHasQueryEmbedding])
    {
      -[_SFPBEmbeddingState setHasQueryEmbedding:](v5, "setHasQueryEmbedding:", [v4 hasQueryEmbedding]);
    }

    if ([v4 hasHasEmbeddingResults])
    {
      -[_SFPBEmbeddingState setHasEmbeddingResults:](v5, "setHasEmbeddingResults:", [v4 hasEmbeddingResults]);
    }

    if ([v4 hasHasResults])
    {
      -[_SFPBEmbeddingState setHasResults:](v5, "setHasResults:", [v4 hasResults]);
    }

    v6 = [v4 spotlightEmbeddingState];

    if (v6)
    {
      v7 = [_SFPBSpotlightEmbeddingState alloc];
      v8 = [v4 spotlightEmbeddingState];
      v9 = [(_SFPBSpotlightEmbeddingState *)v7 initWithFacade:v8];
      [(_SFPBEmbeddingState *)v5 setSpotlightEmbeddingState:v9];
    }

    if ([v4 hasHasSuppressedResults])
    {
      -[_SFPBEmbeddingState setHasSuppressedResults:](v5, "setHasSuppressedResults:", [v4 hasSuppressedResults]);
    }

    if ([v4 hasHasKeywordResults])
    {
      -[_SFPBEmbeddingState setHasKeywordResults:](v5, "setHasKeywordResults:", [v4 hasKeywordResults]);
    }

    if ([v4 hasHasHybridResults])
    {
      -[_SFPBEmbeddingState setHasHybridResults:](v5, "setHasHybridResults:", [v4 hasHybridResults]);
    }

    if ([v4 hasHasMetadataResults])
    {
      -[_SFPBEmbeddingState setHasMetadataResults:](v5, "setHasMetadataResults:", [v4 hasMetadataResults]);
    }

    v10 = v5;
  }

  return v5;
}

- (_SFPBEmbeddingState)initWithDictionary:(id)a3
{
  v4 = a3;
  v20.receiver = self;
  v20.super_class = _SFPBEmbeddingState;
  v5 = [(_SFPBEmbeddingState *)&v20 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"queryStatus"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBEmbeddingState setQueryStatus:](v5, "setQueryStatus:", [v6 intValue]);
    }

    v19 = v6;
    v7 = [v4 objectForKeyedSubscript:@"hasQueryEmbedding"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBEmbeddingState setHasQueryEmbedding:](v5, "setHasQueryEmbedding:", [v7 BOOLValue]);
    }

    v8 = [v4 objectForKeyedSubscript:{@"hasEmbeddingResults", v7}];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBEmbeddingState setHasEmbeddingResults:](v5, "setHasEmbeddingResults:", [v8 BOOLValue]);
    }

    v9 = [v4 objectForKeyedSubscript:@"hasResults"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBEmbeddingState setHasResults:](v5, "setHasResults:", [v9 BOOLValue]);
    }

    v10 = [v4 objectForKeyedSubscript:@"spotlightEmbeddingState"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [[_SFPBSpotlightEmbeddingState alloc] initWithDictionary:v10];
      [(_SFPBEmbeddingState *)v5 setSpotlightEmbeddingState:v11];
    }

    v12 = [v4 objectForKeyedSubscript:@"hasSuppressedResults"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBEmbeddingState setHasSuppressedResults:](v5, "setHasSuppressedResults:", [v12 BOOLValue]);
    }

    v13 = [v4 objectForKeyedSubscript:@"hasKeywordResults"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBEmbeddingState setHasKeywordResults:](v5, "setHasKeywordResults:", [v13 BOOLValue]);
    }

    v14 = [v4 objectForKeyedSubscript:@"hasHybridResults"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBEmbeddingState setHasHybridResults:](v5, "setHasHybridResults:", [v14 BOOLValue]);
    }

    v15 = [v4 objectForKeyedSubscript:@"hasMetadataResults"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBEmbeddingState setHasMetadataResults:](v5, "setHasMetadataResults:", [v15 BOOLValue]);
    }

    v16 = v5;
  }

  return v5;
}

- (_SFPBEmbeddingState)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(_SFPBEmbeddingState *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(_SFPBEmbeddingState *)self dictionaryRepresentation];
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
  if (self->_hasEmbeddingResults)
  {
    v4 = [MEMORY[0x1E696AD98] numberWithBool:{-[_SFPBEmbeddingState hasEmbeddingResults](self, "hasEmbeddingResults")}];
    [v3 setObject:v4 forKeyedSubscript:@"hasEmbeddingResults"];
  }

  if (self->_hasHybridResults)
  {
    v5 = [MEMORY[0x1E696AD98] numberWithBool:{-[_SFPBEmbeddingState hasHybridResults](self, "hasHybridResults")}];
    [v3 setObject:v5 forKeyedSubscript:@"hasHybridResults"];
  }

  if (self->_hasKeywordResults)
  {
    v6 = [MEMORY[0x1E696AD98] numberWithBool:{-[_SFPBEmbeddingState hasKeywordResults](self, "hasKeywordResults")}];
    [v3 setObject:v6 forKeyedSubscript:@"hasKeywordResults"];
  }

  if (self->_hasMetadataResults)
  {
    v7 = [MEMORY[0x1E696AD98] numberWithBool:{-[_SFPBEmbeddingState hasMetadataResults](self, "hasMetadataResults")}];
    [v3 setObject:v7 forKeyedSubscript:@"hasMetadataResults"];
  }

  if (self->_hasQueryEmbedding)
  {
    v8 = [MEMORY[0x1E696AD98] numberWithBool:{-[_SFPBEmbeddingState hasQueryEmbedding](self, "hasQueryEmbedding")}];
    [v3 setObject:v8 forKeyedSubscript:@"hasQueryEmbedding"];
  }

  if (self->_hasResults)
  {
    v9 = [MEMORY[0x1E696AD98] numberWithBool:{-[_SFPBEmbeddingState hasResults](self, "hasResults")}];
    [v3 setObject:v9 forKeyedSubscript:@"hasResults"];
  }

  if (self->_hasSuppressedResults)
  {
    v10 = [MEMORY[0x1E696AD98] numberWithBool:{-[_SFPBEmbeddingState hasSuppressedResults](self, "hasSuppressedResults")}];
    [v3 setObject:v10 forKeyedSubscript:@"hasSuppressedResults"];
  }

  if (self->_queryStatus)
  {
    v11 = [(_SFPBEmbeddingState *)self queryStatus];
    if (v11 >= 4)
    {
      v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v11];
    }

    else
    {
      v12 = off_1E7ACE560[v11];
    }

    [v3 setObject:v12 forKeyedSubscript:@"queryStatus"];
  }

  if (self->_spotlightEmbeddingState)
  {
    v13 = [(_SFPBEmbeddingState *)self spotlightEmbeddingState];
    v14 = [v13 dictionaryRepresentation];
    if (v14)
    {
      [v3 setObject:v14 forKeyedSubscript:@"spotlightEmbeddingState"];
    }

    else
    {
      v15 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v15 forKeyedSubscript:@"spotlightEmbeddingState"];
    }
  }

  return v3;
}

- (unint64_t)hash
{
  v3 = 2654435761 * self->_queryStatus;
  if (self->_hasQueryEmbedding)
  {
    v4 = 2654435761;
  }

  else
  {
    v4 = 0;
  }

  if (self->_hasEmbeddingResults)
  {
    v5 = 2654435761;
  }

  else
  {
    v5 = 0;
  }

  if (self->_hasResults)
  {
    v6 = 2654435761;
  }

  else
  {
    v6 = 0;
  }

  v7 = [(_SFPBSpotlightEmbeddingState *)self->_spotlightEmbeddingState hash];
  if (self->_hasSuppressedResults)
  {
    v8 = 2654435761;
  }

  else
  {
    v8 = 0;
  }

  if (self->_hasKeywordResults)
  {
    v9 = 2654435761;
  }

  else
  {
    v9 = 0;
  }

  if (self->_hasHybridResults)
  {
    v10 = 2654435761;
  }

  else
  {
    v10 = 0;
  }

  if (self->_hasMetadataResults)
  {
    v11 = 2654435761;
  }

  else
  {
    v11 = 0;
  }

  return v4 ^ v5 ^ v6 ^ v7 ^ v3 ^ v8 ^ v9 ^ v10 ^ v11;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_16;
  }

  queryStatus = self->_queryStatus;
  if (queryStatus != [v4 queryStatus])
  {
    goto LABEL_16;
  }

  hasQueryEmbedding = self->_hasQueryEmbedding;
  if (hasQueryEmbedding != [v4 hasQueryEmbedding])
  {
    goto LABEL_16;
  }

  hasEmbeddingResults = self->_hasEmbeddingResults;
  if (hasEmbeddingResults != [v4 hasEmbeddingResults])
  {
    goto LABEL_16;
  }

  hasResults = self->_hasResults;
  if (hasResults != [v4 hasResults])
  {
    goto LABEL_16;
  }

  v9 = [(_SFPBEmbeddingState *)self spotlightEmbeddingState];
  v10 = [v4 spotlightEmbeddingState];
  v11 = v10;
  if ((v9 != 0) == (v10 == 0))
  {

LABEL_16:
    v21 = 0;
    goto LABEL_17;
  }

  v12 = [(_SFPBEmbeddingState *)self spotlightEmbeddingState];
  if (v12)
  {
    v13 = v12;
    v14 = [(_SFPBEmbeddingState *)self spotlightEmbeddingState];
    v15 = [v4 spotlightEmbeddingState];
    v16 = [v14 isEqual:v15];

    if (!v16)
    {
      goto LABEL_16;
    }
  }

  else
  {
  }

  hasSuppressedResults = self->_hasSuppressedResults;
  if (hasSuppressedResults != [v4 hasSuppressedResults])
  {
    goto LABEL_16;
  }

  hasKeywordResults = self->_hasKeywordResults;
  if (hasKeywordResults != [v4 hasKeywordResults])
  {
    goto LABEL_16;
  }

  hasHybridResults = self->_hasHybridResults;
  if (hasHybridResults != [v4 hasHybridResults])
  {
    goto LABEL_16;
  }

  hasMetadataResults = self->_hasMetadataResults;
  v21 = hasMetadataResults == [v4 hasMetadataResults];
LABEL_17:

  return v21;
}

- (void)writeTo:(id)a3
{
  v5 = a3;
  if ([(_SFPBEmbeddingState *)self queryStatus])
  {
    PBDataWriterWriteInt32Field();
  }

  if ([(_SFPBEmbeddingState *)self hasQueryEmbedding])
  {
    PBDataWriterWriteBOOLField();
  }

  if ([(_SFPBEmbeddingState *)self hasEmbeddingResults])
  {
    PBDataWriterWriteBOOLField();
  }

  if ([(_SFPBEmbeddingState *)self hasResults])
  {
    PBDataWriterWriteBOOLField();
  }

  v4 = [(_SFPBEmbeddingState *)self spotlightEmbeddingState];
  if (v4)
  {
    PBDataWriterWriteSubmessage();
  }

  if ([(_SFPBEmbeddingState *)self hasSuppressedResults])
  {
    PBDataWriterWriteBOOLField();
  }

  if ([(_SFPBEmbeddingState *)self hasKeywordResults])
  {
    PBDataWriterWriteBOOLField();
  }

  if ([(_SFPBEmbeddingState *)self hasHybridResults])
  {
    PBDataWriterWriteBOOLField();
  }

  if ([(_SFPBEmbeddingState *)self hasMetadataResults])
  {
    PBDataWriterWriteBOOLField();
  }
}

@end