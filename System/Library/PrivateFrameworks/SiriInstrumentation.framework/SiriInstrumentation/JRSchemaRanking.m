@interface JRSchemaRanking
- (BOOL)isEqual:(id)a3;
- (JRSchemaRanking)initWithDictionary:(id)a3;
- (JRSchemaRanking)initWithJSON:(id)a3;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)addRankingMatrices:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation JRSchemaRanking

- (JRSchemaRanking)initWithDictionary:(id)a3
{
  v27 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v25.receiver = self;
  v25.super_class = JRSchemaRanking;
  v5 = [(JRSchemaRanking *)&v25 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"rankingMatrices"];
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

    v15 = [v4 objectForKeyedSubscript:{@"rankingScoreMatrix", v21}];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v16 = [[JRSchemaRankingScoreMatrix alloc] initWithDictionary:v15];
      [(JRSchemaRanking *)v5 setRankingScoreMatrix:v16];
    }

    v17 = [v4 objectForKeyedSubscript:@"rankingCandidateMatrix"];
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

- (JRSchemaRanking)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(JRSchemaRanking *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(JRSchemaRanking *)self dictionaryRepresentation];
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
  v24 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if (self->_rankingCandidateMatrix)
  {
    v4 = [(JRSchemaRanking *)self rankingCandidateMatrix];
    v5 = [v4 dictionaryRepresentation];
    if (v5)
    {
      [v3 setObject:v5 forKeyedSubscript:@"rankingCandidateMatrix"];
    }

    else
    {
      v6 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v6 forKeyedSubscript:@"rankingCandidateMatrix"];
    }
  }

  if ([(NSArray *)self->_rankingMatrices count])
  {
    v7 = [MEMORY[0x1E695DF70] array];
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

          v13 = [*(*(&v19 + 1) + 8 * i) dictionaryRepresentation];
          if (v13)
          {
            [v7 addObject:v13];
          }

          else
          {
            v14 = [MEMORY[0x1E695DFB0] null];
            [v7 addObject:v14];
          }
        }

        v10 = [(NSArray *)v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v10);
    }

    [v3 setObject:v7 forKeyedSubscript:@"rankingMatrices"];
  }

  if (self->_rankingScoreMatrix)
  {
    v15 = [(JRSchemaRanking *)self rankingScoreMatrix];
    v16 = [v15 dictionaryRepresentation];
    if (v16)
    {
      [v3 setObject:v16 forKeyedSubscript:@"rankingScoreMatrix"];
    }

    else
    {
      v17 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v17 forKeyedSubscript:@"rankingScoreMatrix"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3, v19];

  return v3;
}

- (unint64_t)hash
{
  v3 = [(NSArray *)self->_rankingMatrices hash];
  v4 = [(JRSchemaRankingScoreMatrix *)self->_rankingScoreMatrix hash]^ v3;
  return v4 ^ [(JRSchemaRankingCandidateMatrix *)self->_rankingCandidateMatrix hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_17;
  }

  v5 = [(JRSchemaRanking *)self rankingMatrices];
  v6 = [v4 rankingMatrices];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_16;
  }

  v7 = [(JRSchemaRanking *)self rankingMatrices];
  if (v7)
  {
    v8 = v7;
    v9 = [(JRSchemaRanking *)self rankingMatrices];
    v10 = [v4 rankingMatrices];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  v5 = [(JRSchemaRanking *)self rankingScoreMatrix];
  v6 = [v4 rankingScoreMatrix];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_16;
  }

  v12 = [(JRSchemaRanking *)self rankingScoreMatrix];
  if (v12)
  {
    v13 = v12;
    v14 = [(JRSchemaRanking *)self rankingScoreMatrix];
    v15 = [v4 rankingScoreMatrix];
    v16 = [v14 isEqual:v15];

    if (!v16)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  v5 = [(JRSchemaRanking *)self rankingCandidateMatrix];
  v6 = [v4 rankingCandidateMatrix];
  if ((v5 != 0) != (v6 == 0))
  {
    v17 = [(JRSchemaRanking *)self rankingCandidateMatrix];
    if (!v17)
    {

LABEL_20:
      v22 = 1;
      goto LABEL_18;
    }

    v18 = v17;
    v19 = [(JRSchemaRanking *)self rankingCandidateMatrix];
    v20 = [v4 rankingCandidateMatrix];
    v21 = [v19 isEqual:v20];

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

- (void)writeTo:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
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

  v10 = [(JRSchemaRanking *)self rankingScoreMatrix];

  if (v10)
  {
    v11 = [(JRSchemaRanking *)self rankingScoreMatrix];
    PBDataWriterWriteSubmessage();
  }

  v12 = [(JRSchemaRanking *)self rankingCandidateMatrix];

  if (v12)
  {
    v13 = [(JRSchemaRanking *)self rankingCandidateMatrix];
    PBDataWriterWriteSubmessage();
  }
}

- (void)addRankingMatrices:(id)a3
{
  v4 = a3;
  rankingMatrices = self->_rankingMatrices;
  v8 = v4;
  if (!rankingMatrices)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_rankingMatrices;
    self->_rankingMatrices = v6;

    v4 = v8;
    rankingMatrices = self->_rankingMatrices;
  }

  [(NSArray *)rankingMatrices addObject:v4];
}

- (id)applySensitiveConditionsPolicy:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = JRSchemaRanking;
  v5 = [(SISchemaInstrumentationMessage *)&v15 applySensitiveConditionsPolicy:v4];
  v6 = [(JRSchemaRanking *)self rankingMatrices];
  v7 = [(SISchemaInstrumentationMessage *)self _pruneSuppressedMessagesFromArray:v6 underConditions:v4];
  [(JRSchemaRanking *)self setRankingMatrices:v7];

  v8 = [(JRSchemaRanking *)self rankingScoreMatrix];
  v9 = [v8 applySensitiveConditionsPolicy:v4];
  v10 = [v9 suppressMessage];

  if (v10)
  {
    [(JRSchemaRanking *)self deleteRankingScoreMatrix];
  }

  v11 = [(JRSchemaRanking *)self rankingCandidateMatrix];
  v12 = [v11 applySensitiveConditionsPolicy:v4];
  v13 = [v12 suppressMessage];

  if (v13)
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