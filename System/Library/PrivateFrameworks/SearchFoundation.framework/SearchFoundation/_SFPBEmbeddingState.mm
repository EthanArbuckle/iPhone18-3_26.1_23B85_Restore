@interface _SFPBEmbeddingState
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (_SFPBEmbeddingState)initWithDictionary:(id)dictionary;
- (_SFPBEmbeddingState)initWithFacade:(id)facade;
- (_SFPBEmbeddingState)initWithJSON:(id)n;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)writeTo:(id)to;
@end

@implementation _SFPBEmbeddingState

- (_SFPBEmbeddingState)initWithFacade:(id)facade
{
  facadeCopy = facade;
  v5 = [(_SFPBEmbeddingState *)self init];
  if (v5)
  {
    if ([facadeCopy hasQueryStatus])
    {
      -[_SFPBEmbeddingState setQueryStatus:](v5, "setQueryStatus:", [facadeCopy queryStatus]);
    }

    if ([facadeCopy hasHasQueryEmbedding])
    {
      -[_SFPBEmbeddingState setHasQueryEmbedding:](v5, "setHasQueryEmbedding:", [facadeCopy hasQueryEmbedding]);
    }

    if ([facadeCopy hasHasEmbeddingResults])
    {
      -[_SFPBEmbeddingState setHasEmbeddingResults:](v5, "setHasEmbeddingResults:", [facadeCopy hasEmbeddingResults]);
    }

    if ([facadeCopy hasHasResults])
    {
      -[_SFPBEmbeddingState setHasResults:](v5, "setHasResults:", [facadeCopy hasResults]);
    }

    spotlightEmbeddingState = [facadeCopy spotlightEmbeddingState];

    if (spotlightEmbeddingState)
    {
      v7 = [_SFPBSpotlightEmbeddingState alloc];
      spotlightEmbeddingState2 = [facadeCopy spotlightEmbeddingState];
      v9 = [(_SFPBSpotlightEmbeddingState *)v7 initWithFacade:spotlightEmbeddingState2];
      [(_SFPBEmbeddingState *)v5 setSpotlightEmbeddingState:v9];
    }

    if ([facadeCopy hasHasSuppressedResults])
    {
      -[_SFPBEmbeddingState setHasSuppressedResults:](v5, "setHasSuppressedResults:", [facadeCopy hasSuppressedResults]);
    }

    if ([facadeCopy hasHasKeywordResults])
    {
      -[_SFPBEmbeddingState setHasKeywordResults:](v5, "setHasKeywordResults:", [facadeCopy hasKeywordResults]);
    }

    if ([facadeCopy hasHasHybridResults])
    {
      -[_SFPBEmbeddingState setHasHybridResults:](v5, "setHasHybridResults:", [facadeCopy hasHybridResults]);
    }

    if ([facadeCopy hasHasMetadataResults])
    {
      -[_SFPBEmbeddingState setHasMetadataResults:](v5, "setHasMetadataResults:", [facadeCopy hasMetadataResults]);
    }

    v10 = v5;
  }

  return v5;
}

- (_SFPBEmbeddingState)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v20.receiver = self;
  v20.super_class = _SFPBEmbeddingState;
  v5 = [(_SFPBEmbeddingState *)&v20 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"queryStatus"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBEmbeddingState setQueryStatus:](v5, "setQueryStatus:", [v6 intValue]);
    }

    v19 = v6;
    v7 = [dictionaryCopy objectForKeyedSubscript:@"hasQueryEmbedding"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBEmbeddingState setHasQueryEmbedding:](v5, "setHasQueryEmbedding:", [v7 BOOLValue]);
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:{@"hasEmbeddingResults", v7}];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBEmbeddingState setHasEmbeddingResults:](v5, "setHasEmbeddingResults:", [v8 BOOLValue]);
    }

    v9 = [dictionaryCopy objectForKeyedSubscript:@"hasResults"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBEmbeddingState setHasResults:](v5, "setHasResults:", [v9 BOOLValue]);
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"spotlightEmbeddingState"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [[_SFPBSpotlightEmbeddingState alloc] initWithDictionary:v10];
      [(_SFPBEmbeddingState *)v5 setSpotlightEmbeddingState:v11];
    }

    v12 = [dictionaryCopy objectForKeyedSubscript:@"hasSuppressedResults"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBEmbeddingState setHasSuppressedResults:](v5, "setHasSuppressedResults:", [v12 BOOLValue]);
    }

    v13 = [dictionaryCopy objectForKeyedSubscript:@"hasKeywordResults"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBEmbeddingState setHasKeywordResults:](v5, "setHasKeywordResults:", [v13 BOOLValue]);
    }

    v14 = [dictionaryCopy objectForKeyedSubscript:@"hasHybridResults"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBEmbeddingState setHasHybridResults:](v5, "setHasHybridResults:", [v14 BOOLValue]);
    }

    v15 = [dictionaryCopy objectForKeyedSubscript:@"hasMetadataResults"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBEmbeddingState setHasMetadataResults:](v5, "setHasMetadataResults:", [v15 BOOLValue]);
    }

    v16 = v5;
  }

  return v5;
}

- (_SFPBEmbeddingState)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(_SFPBEmbeddingState *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(_SFPBEmbeddingState *)self dictionaryRepresentation];
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
  if (self->_hasEmbeddingResults)
  {
    v4 = [MEMORY[0x1E696AD98] numberWithBool:{-[_SFPBEmbeddingState hasEmbeddingResults](self, "hasEmbeddingResults")}];
    [dictionary setObject:v4 forKeyedSubscript:@"hasEmbeddingResults"];
  }

  if (self->_hasHybridResults)
  {
    v5 = [MEMORY[0x1E696AD98] numberWithBool:{-[_SFPBEmbeddingState hasHybridResults](self, "hasHybridResults")}];
    [dictionary setObject:v5 forKeyedSubscript:@"hasHybridResults"];
  }

  if (self->_hasKeywordResults)
  {
    v6 = [MEMORY[0x1E696AD98] numberWithBool:{-[_SFPBEmbeddingState hasKeywordResults](self, "hasKeywordResults")}];
    [dictionary setObject:v6 forKeyedSubscript:@"hasKeywordResults"];
  }

  if (self->_hasMetadataResults)
  {
    v7 = [MEMORY[0x1E696AD98] numberWithBool:{-[_SFPBEmbeddingState hasMetadataResults](self, "hasMetadataResults")}];
    [dictionary setObject:v7 forKeyedSubscript:@"hasMetadataResults"];
  }

  if (self->_hasQueryEmbedding)
  {
    v8 = [MEMORY[0x1E696AD98] numberWithBool:{-[_SFPBEmbeddingState hasQueryEmbedding](self, "hasQueryEmbedding")}];
    [dictionary setObject:v8 forKeyedSubscript:@"hasQueryEmbedding"];
  }

  if (self->_hasResults)
  {
    v9 = [MEMORY[0x1E696AD98] numberWithBool:{-[_SFPBEmbeddingState hasResults](self, "hasResults")}];
    [dictionary setObject:v9 forKeyedSubscript:@"hasResults"];
  }

  if (self->_hasSuppressedResults)
  {
    v10 = [MEMORY[0x1E696AD98] numberWithBool:{-[_SFPBEmbeddingState hasSuppressedResults](self, "hasSuppressedResults")}];
    [dictionary setObject:v10 forKeyedSubscript:@"hasSuppressedResults"];
  }

  if (self->_queryStatus)
  {
    queryStatus = [(_SFPBEmbeddingState *)self queryStatus];
    if (queryStatus >= 4)
    {
      v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", queryStatus];
    }

    else
    {
      v12 = off_1E7ACE560[queryStatus];
    }

    [dictionary setObject:v12 forKeyedSubscript:@"queryStatus"];
  }

  if (self->_spotlightEmbeddingState)
  {
    spotlightEmbeddingState = [(_SFPBEmbeddingState *)self spotlightEmbeddingState];
    dictionaryRepresentation = [spotlightEmbeddingState dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"spotlightEmbeddingState"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"spotlightEmbeddingState"];
    }
  }

  return dictionary;
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_16;
  }

  queryStatus = self->_queryStatus;
  if (queryStatus != [equalCopy queryStatus])
  {
    goto LABEL_16;
  }

  hasQueryEmbedding = self->_hasQueryEmbedding;
  if (hasQueryEmbedding != [equalCopy hasQueryEmbedding])
  {
    goto LABEL_16;
  }

  hasEmbeddingResults = self->_hasEmbeddingResults;
  if (hasEmbeddingResults != [equalCopy hasEmbeddingResults])
  {
    goto LABEL_16;
  }

  hasResults = self->_hasResults;
  if (hasResults != [equalCopy hasResults])
  {
    goto LABEL_16;
  }

  spotlightEmbeddingState = [(_SFPBEmbeddingState *)self spotlightEmbeddingState];
  spotlightEmbeddingState2 = [equalCopy spotlightEmbeddingState];
  v11 = spotlightEmbeddingState2;
  if ((spotlightEmbeddingState != 0) == (spotlightEmbeddingState2 == 0))
  {

LABEL_16:
    v21 = 0;
    goto LABEL_17;
  }

  spotlightEmbeddingState3 = [(_SFPBEmbeddingState *)self spotlightEmbeddingState];
  if (spotlightEmbeddingState3)
  {
    v13 = spotlightEmbeddingState3;
    spotlightEmbeddingState4 = [(_SFPBEmbeddingState *)self spotlightEmbeddingState];
    spotlightEmbeddingState5 = [equalCopy spotlightEmbeddingState];
    v16 = [spotlightEmbeddingState4 isEqual:spotlightEmbeddingState5];

    if (!v16)
    {
      goto LABEL_16;
    }
  }

  else
  {
  }

  hasSuppressedResults = self->_hasSuppressedResults;
  if (hasSuppressedResults != [equalCopy hasSuppressedResults])
  {
    goto LABEL_16;
  }

  hasKeywordResults = self->_hasKeywordResults;
  if (hasKeywordResults != [equalCopy hasKeywordResults])
  {
    goto LABEL_16;
  }

  hasHybridResults = self->_hasHybridResults;
  if (hasHybridResults != [equalCopy hasHybridResults])
  {
    goto LABEL_16;
  }

  hasMetadataResults = self->_hasMetadataResults;
  v21 = hasMetadataResults == [equalCopy hasMetadataResults];
LABEL_17:

  return v21;
}

- (void)writeTo:(id)to
{
  toCopy = to;
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

  spotlightEmbeddingState = [(_SFPBEmbeddingState *)self spotlightEmbeddingState];
  if (spotlightEmbeddingState)
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