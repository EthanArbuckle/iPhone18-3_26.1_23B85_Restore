@interface JRSchemaRanking
- (BOOL)isEqual:(id)equal;
- (JRSchemaRanking)initWithDictionary:(id)dictionary;
- (JRSchemaRanking)initWithJSON:(id)n;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)addRankingMatrices:(id)matrices;
- (void)writeTo:(id)to;
@end

@implementation JRSchemaRanking

- (JRSchemaRanking)initWithDictionary:(id)dictionary
{
  v27 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v25.receiver = self;
  v25.super_class = JRSchemaRanking;
  v5 = [(JRSchemaRanking *)&v25 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"rankingMatrices"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v23 = 0u;
      v24 = 0u;
      v21 = 0u;
      v22 = 0u;
      v7 = v6;
      v8 = [v7 countByEnumeratingWithState:&v21 objects:v26 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v22;
        do
        {
          v11 = 0;
          do
          {
            if (*v22 != v10)
            {
              objc_enumerationMutation(v7);
            }

            v12 = *(*(&v21 + 1) + 8 * v11);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v13 = [JRSchemaRankingMatrix alloc];
              v14 = [(JRSchemaRankingMatrix *)v13 initWithDictionary:v12, v21];
              [(JRSchemaRanking *)v5 addRankingMatrices:v14];
            }

            ++v11;
          }

          while (v9 != v11);
          v9 = [v7 countByEnumeratingWithState:&v21 objects:v26 count:16];
        }

        while (v9);
      }
    }

    v15 = [dictionaryCopy objectForKeyedSubscript:{@"rankingScoreMatrix", v21}];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v16 = [[JRSchemaRankingScoreMatrix alloc] initWithDictionary:v15];
      [(JRSchemaRanking *)v5 setRankingScoreMatrix:v16];
    }

    v17 = [dictionaryCopy objectForKeyedSubscript:@"rankingCandidateMatrix"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v18 = [[JRSchemaRankingCandidateMatrix alloc] initWithDictionary:v17];
      [(JRSchemaRanking *)v5 setRankingCandidateMatrix:v18];
    }

    v19 = v5;
  }

  return v5;
}

- (JRSchemaRanking)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(JRSchemaRanking *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(JRSchemaRanking *)self dictionaryRepresentation];
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
  v24 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if (self->_rankingCandidateMatrix)
  {
    rankingCandidateMatrix = [(JRSchemaRanking *)self rankingCandidateMatrix];
    dictionaryRepresentation = [rankingCandidateMatrix dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"rankingCandidateMatrix"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"rankingCandidateMatrix"];
    }
  }

  if ([(NSArray *)self->_rankingMatrices count])
  {
    array = [MEMORY[0x1E695DF70] array];
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v8 = self->_rankingMatrices;
    v9 = [(NSArray *)v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v20;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v20 != v11)
          {
            objc_enumerationMutation(v8);
          }

          dictionaryRepresentation2 = [*(*(&v19 + 1) + 8 * i) dictionaryRepresentation];
          if (dictionaryRepresentation2)
          {
            [array addObject:dictionaryRepresentation2];
          }

          else
          {
            null2 = [MEMORY[0x1E695DFB0] null];
            [array addObject:null2];
          }
        }

        v10 = [(NSArray *)v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v10);
    }

    [dictionary setObject:array forKeyedSubscript:@"rankingMatrices"];
  }

  if (self->_rankingScoreMatrix)
  {
    rankingScoreMatrix = [(JRSchemaRanking *)self rankingScoreMatrix];
    dictionaryRepresentation3 = [rankingScoreMatrix dictionaryRepresentation];
    if (dictionaryRepresentation3)
    {
      [dictionary setObject:dictionaryRepresentation3 forKeyedSubscript:@"rankingScoreMatrix"];
    }

    else
    {
      null3 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null3 forKeyedSubscript:@"rankingScoreMatrix"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary, v19];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(NSArray *)self->_rankingMatrices hash];
  v4 = [(JRSchemaRankingScoreMatrix *)self->_rankingScoreMatrix hash]^ v3;
  return v4 ^ [(JRSchemaRankingCandidateMatrix *)self->_rankingCandidateMatrix hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_17;
  }

  rankingMatrices = [(JRSchemaRanking *)self rankingMatrices];
  rankingMatrices2 = [equalCopy rankingMatrices];
  if ((rankingMatrices != 0) == (rankingMatrices2 == 0))
  {
    goto LABEL_16;
  }

  rankingMatrices3 = [(JRSchemaRanking *)self rankingMatrices];
  if (rankingMatrices3)
  {
    v8 = rankingMatrices3;
    rankingMatrices4 = [(JRSchemaRanking *)self rankingMatrices];
    rankingMatrices5 = [equalCopy rankingMatrices];
    v11 = [rankingMatrices4 isEqual:rankingMatrices5];

    if (!v11)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  rankingMatrices = [(JRSchemaRanking *)self rankingScoreMatrix];
  rankingMatrices2 = [equalCopy rankingScoreMatrix];
  if ((rankingMatrices != 0) == (rankingMatrices2 == 0))
  {
    goto LABEL_16;
  }

  rankingScoreMatrix = [(JRSchemaRanking *)self rankingScoreMatrix];
  if (rankingScoreMatrix)
  {
    v13 = rankingScoreMatrix;
    rankingScoreMatrix2 = [(JRSchemaRanking *)self rankingScoreMatrix];
    rankingScoreMatrix3 = [equalCopy rankingScoreMatrix];
    v16 = [rankingScoreMatrix2 isEqual:rankingScoreMatrix3];

    if (!v16)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  rankingMatrices = [(JRSchemaRanking *)self rankingCandidateMatrix];
  rankingMatrices2 = [equalCopy rankingCandidateMatrix];
  if ((rankingMatrices != 0) != (rankingMatrices2 == 0))
  {
    rankingCandidateMatrix = [(JRSchemaRanking *)self rankingCandidateMatrix];
    if (!rankingCandidateMatrix)
    {

LABEL_20:
      v22 = 1;
      goto LABEL_18;
    }

    v18 = rankingCandidateMatrix;
    rankingCandidateMatrix2 = [(JRSchemaRanking *)self rankingCandidateMatrix];
    rankingCandidateMatrix3 = [equalCopy rankingCandidateMatrix];
    v21 = [rankingCandidateMatrix2 isEqual:rankingCandidateMatrix3];

    if (v21)
    {
      goto LABEL_20;
    }
  }

  else
  {
LABEL_16:
  }

LABEL_17:
  v22 = 0;
LABEL_18:

  return v22;
}

- (void)writeTo:(id)to
{
  v19 = *MEMORY[0x1E69E9840];
  toCopy = to;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = self->_rankingMatrices;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      v9 = 0;
      do
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        PBDataWriterWriteSubmessage();
        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  rankingScoreMatrix = [(JRSchemaRanking *)self rankingScoreMatrix];

  if (rankingScoreMatrix)
  {
    rankingScoreMatrix2 = [(JRSchemaRanking *)self rankingScoreMatrix];
    PBDataWriterWriteSubmessage();
  }

  rankingCandidateMatrix = [(JRSchemaRanking *)self rankingCandidateMatrix];

  if (rankingCandidateMatrix)
  {
    rankingCandidateMatrix2 = [(JRSchemaRanking *)self rankingCandidateMatrix];
    PBDataWriterWriteSubmessage();
  }
}

- (void)addRankingMatrices:(id)matrices
{
  matricesCopy = matrices;
  rankingMatrices = self->_rankingMatrices;
  v8 = matricesCopy;
  if (!rankingMatrices)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_rankingMatrices;
    self->_rankingMatrices = array;

    matricesCopy = v8;
    rankingMatrices = self->_rankingMatrices;
  }

  [(NSArray *)rankingMatrices addObject:matricesCopy];
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  policyCopy = policy;
  v15.receiver = self;
  v15.super_class = JRSchemaRanking;
  v5 = [(SISchemaInstrumentationMessage *)&v15 applySensitiveConditionsPolicy:policyCopy];
  rankingMatrices = [(JRSchemaRanking *)self rankingMatrices];
  v7 = [(SISchemaInstrumentationMessage *)self _pruneSuppressedMessagesFromArray:rankingMatrices underConditions:policyCopy];
  [(JRSchemaRanking *)self setRankingMatrices:v7];

  rankingScoreMatrix = [(JRSchemaRanking *)self rankingScoreMatrix];
  v9 = [rankingScoreMatrix applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v9 suppressMessage];

  if (suppressMessage)
  {
    [(JRSchemaRanking *)self deleteRankingScoreMatrix];
  }

  rankingCandidateMatrix = [(JRSchemaRanking *)self rankingCandidateMatrix];
  v12 = [rankingCandidateMatrix applySensitiveConditionsPolicy:policyCopy];
  suppressMessage2 = [v12 suppressMessage];

  if (suppressMessage2)
  {
    [(JRSchemaRanking *)self deleteRankingCandidateMatrix];
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