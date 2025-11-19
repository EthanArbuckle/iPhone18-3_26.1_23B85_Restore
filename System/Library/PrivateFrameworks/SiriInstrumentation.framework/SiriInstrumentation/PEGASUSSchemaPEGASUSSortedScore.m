@interface PEGASUSSchemaPEGASUSSortedScore
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (PEGASUSSchemaPEGASUSSortedScore)initWithDictionary:(id)a3;
- (PEGASUSSchemaPEGASUSSortedScore)initWithJSON:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)writeTo:(id)a3;
@end

@implementation PEGASUSSchemaPEGASUSSortedScore

- (PEGASUSSchemaPEGASUSSortedScore)initWithDictionary:(id)a3
{
  v4 = a3;
  v20.receiver = self;
  v20.super_class = PEGASUSSchemaPEGASUSSortedScore;
  v5 = [(PEGASUSSchemaPEGASUSSortedScore *)&v20 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"sortedScoreFinal"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(PEGASUSSchemaPEGASUSSortedScore *)v5 setSortedScoreFinal:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"sortedScorelinearCombiner"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [v8 copy];
      [(PEGASUSSchemaPEGASUSSortedScore *)v5 setSortedScorelinearCombiner:v9];
    }

    v10 = [v4 objectForKeyedSubscript:@"sortedScoreModelFinal"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [v10 copy];
      [(PEGASUSSchemaPEGASUSSortedScore *)v5 setSortedScoreModelFinal:v11];
    }

    v12 = [v4 objectForKeyedSubscript:@"sortedScoreStage2"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [v12 copy];
      [(PEGASUSSchemaPEGASUSSortedScore *)v5 setSortedScoreStage2:v13];
    }

    v14 = [v4 objectForKeyedSubscript:@"sortedScoreBoosted"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = [v14 copy];
      [(PEGASUSSchemaPEGASUSSortedScore *)v5 setSortedScoreBoosted:v15];
    }

    v16 = [v4 objectForKeyedSubscript:@"sortedScoreKnockOut"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v17 = [v16 copy];
      [(PEGASUSSchemaPEGASUSSortedScore *)v5 setSortedScoreKnockOut:v17];
    }

    v18 = v5;
  }

  return v5;
}

- (PEGASUSSchemaPEGASUSSortedScore)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(PEGASUSSchemaPEGASUSSortedScore *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(PEGASUSSchemaPEGASUSSortedScore *)self dictionaryRepresentation];
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
  if (self->_sortedScoreBoosted)
  {
    v4 = [(PEGASUSSchemaPEGASUSSortedScore *)self sortedScoreBoosted];
    v5 = [v4 copy];
    [v3 setObject:v5 forKeyedSubscript:@"sortedScoreBoosted"];
  }

  if (self->_sortedScoreFinal)
  {
    v6 = [(PEGASUSSchemaPEGASUSSortedScore *)self sortedScoreFinal];
    v7 = [v6 copy];
    [v3 setObject:v7 forKeyedSubscript:@"sortedScoreFinal"];
  }

  if (self->_sortedScoreKnockOut)
  {
    v8 = [(PEGASUSSchemaPEGASUSSortedScore *)self sortedScoreKnockOut];
    v9 = [v8 copy];
    [v3 setObject:v9 forKeyedSubscript:@"sortedScoreKnockOut"];
  }

  if (self->_sortedScoreModelFinal)
  {
    v10 = [(PEGASUSSchemaPEGASUSSortedScore *)self sortedScoreModelFinal];
    v11 = [v10 copy];
    [v3 setObject:v11 forKeyedSubscript:@"sortedScoreModelFinal"];
  }

  if (self->_sortedScoreStage2)
  {
    v12 = [(PEGASUSSchemaPEGASUSSortedScore *)self sortedScoreStage2];
    v13 = [v12 copy];
    [v3 setObject:v13 forKeyedSubscript:@"sortedScoreStage2"];
  }

  if (self->_sortedScorelinearCombiner)
  {
    v14 = [(PEGASUSSchemaPEGASUSSortedScore *)self sortedScorelinearCombiner];
    v15 = [v14 copy];
    [v3 setObject:v15 forKeyedSubscript:@"sortedScorelinearCombiner"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_sortedScoreFinal hash];
  v4 = [(NSString *)self->_sortedScorelinearCombiner hash]^ v3;
  v5 = [(NSString *)self->_sortedScoreModelFinal hash];
  v6 = v4 ^ v5 ^ [(NSString *)self->_sortedScoreStage2 hash];
  v7 = [(NSString *)self->_sortedScoreBoosted hash];
  return v6 ^ v7 ^ [(NSString *)self->_sortedScoreKnockOut hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_32;
  }

  v5 = [(PEGASUSSchemaPEGASUSSortedScore *)self sortedScoreFinal];
  v6 = [v4 sortedScoreFinal];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_31;
  }

  v7 = [(PEGASUSSchemaPEGASUSSortedScore *)self sortedScoreFinal];
  if (v7)
  {
    v8 = v7;
    v9 = [(PEGASUSSchemaPEGASUSSortedScore *)self sortedScoreFinal];
    v10 = [v4 sortedScoreFinal];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_32;
    }
  }

  else
  {
  }

  v5 = [(PEGASUSSchemaPEGASUSSortedScore *)self sortedScorelinearCombiner];
  v6 = [v4 sortedScorelinearCombiner];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_31;
  }

  v12 = [(PEGASUSSchemaPEGASUSSortedScore *)self sortedScorelinearCombiner];
  if (v12)
  {
    v13 = v12;
    v14 = [(PEGASUSSchemaPEGASUSSortedScore *)self sortedScorelinearCombiner];
    v15 = [v4 sortedScorelinearCombiner];
    v16 = [v14 isEqual:v15];

    if (!v16)
    {
      goto LABEL_32;
    }
  }

  else
  {
  }

  v5 = [(PEGASUSSchemaPEGASUSSortedScore *)self sortedScoreModelFinal];
  v6 = [v4 sortedScoreModelFinal];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_31;
  }

  v17 = [(PEGASUSSchemaPEGASUSSortedScore *)self sortedScoreModelFinal];
  if (v17)
  {
    v18 = v17;
    v19 = [(PEGASUSSchemaPEGASUSSortedScore *)self sortedScoreModelFinal];
    v20 = [v4 sortedScoreModelFinal];
    v21 = [v19 isEqual:v20];

    if (!v21)
    {
      goto LABEL_32;
    }
  }

  else
  {
  }

  v5 = [(PEGASUSSchemaPEGASUSSortedScore *)self sortedScoreStage2];
  v6 = [v4 sortedScoreStage2];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_31;
  }

  v22 = [(PEGASUSSchemaPEGASUSSortedScore *)self sortedScoreStage2];
  if (v22)
  {
    v23 = v22;
    v24 = [(PEGASUSSchemaPEGASUSSortedScore *)self sortedScoreStage2];
    v25 = [v4 sortedScoreStage2];
    v26 = [v24 isEqual:v25];

    if (!v26)
    {
      goto LABEL_32;
    }
  }

  else
  {
  }

  v5 = [(PEGASUSSchemaPEGASUSSortedScore *)self sortedScoreBoosted];
  v6 = [v4 sortedScoreBoosted];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_31;
  }

  v27 = [(PEGASUSSchemaPEGASUSSortedScore *)self sortedScoreBoosted];
  if (v27)
  {
    v28 = v27;
    v29 = [(PEGASUSSchemaPEGASUSSortedScore *)self sortedScoreBoosted];
    v30 = [v4 sortedScoreBoosted];
    v31 = [v29 isEqual:v30];

    if (!v31)
    {
      goto LABEL_32;
    }
  }

  else
  {
  }

  v5 = [(PEGASUSSchemaPEGASUSSortedScore *)self sortedScoreKnockOut];
  v6 = [v4 sortedScoreKnockOut];
  if ((v5 != 0) != (v6 == 0))
  {
    v32 = [(PEGASUSSchemaPEGASUSSortedScore *)self sortedScoreKnockOut];
    if (!v32)
    {

LABEL_35:
      v37 = 1;
      goto LABEL_33;
    }

    v33 = v32;
    v34 = [(PEGASUSSchemaPEGASUSSortedScore *)self sortedScoreKnockOut];
    v35 = [v4 sortedScoreKnockOut];
    v36 = [v34 isEqual:v35];

    if (v36)
    {
      goto LABEL_35;
    }
  }

  else
  {
LABEL_31:
  }

LABEL_32:
  v37 = 0;
LABEL_33:

  return v37;
}

- (void)writeTo:(id)a3
{
  v11 = a3;
  v4 = [(PEGASUSSchemaPEGASUSSortedScore *)self sortedScoreFinal];

  if (v4)
  {
    PBDataWriterWriteStringField();
  }

  v5 = [(PEGASUSSchemaPEGASUSSortedScore *)self sortedScorelinearCombiner];

  if (v5)
  {
    PBDataWriterWriteStringField();
  }

  v6 = [(PEGASUSSchemaPEGASUSSortedScore *)self sortedScoreModelFinal];

  if (v6)
  {
    PBDataWriterWriteStringField();
  }

  v7 = [(PEGASUSSchemaPEGASUSSortedScore *)self sortedScoreStage2];

  if (v7)
  {
    PBDataWriterWriteStringField();
  }

  v8 = [(PEGASUSSchemaPEGASUSSortedScore *)self sortedScoreBoosted];

  if (v8)
  {
    PBDataWriterWriteStringField();
  }

  v9 = [(PEGASUSSchemaPEGASUSSortedScore *)self sortedScoreKnockOut];

  v10 = v11;
  if (v9)
  {
    PBDataWriterWriteStringField();
    v10 = v11;
  }
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end