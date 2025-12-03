@interface PEGASUSSchemaPEGASUSSortedScore
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (PEGASUSSchemaPEGASUSSortedScore)initWithDictionary:(id)dictionary;
- (PEGASUSSchemaPEGASUSSortedScore)initWithJSON:(id)n;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)writeTo:(id)to;
@end

@implementation PEGASUSSchemaPEGASUSSortedScore

- (PEGASUSSchemaPEGASUSSortedScore)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v20.receiver = self;
  v20.super_class = PEGASUSSchemaPEGASUSSortedScore;
  v5 = [(PEGASUSSchemaPEGASUSSortedScore *)&v20 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"sortedScoreFinal"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(PEGASUSSchemaPEGASUSSortedScore *)v5 setSortedScoreFinal:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"sortedScorelinearCombiner"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [v8 copy];
      [(PEGASUSSchemaPEGASUSSortedScore *)v5 setSortedScorelinearCombiner:v9];
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"sortedScoreModelFinal"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [v10 copy];
      [(PEGASUSSchemaPEGASUSSortedScore *)v5 setSortedScoreModelFinal:v11];
    }

    v12 = [dictionaryCopy objectForKeyedSubscript:@"sortedScoreStage2"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [v12 copy];
      [(PEGASUSSchemaPEGASUSSortedScore *)v5 setSortedScoreStage2:v13];
    }

    v14 = [dictionaryCopy objectForKeyedSubscript:@"sortedScoreBoosted"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = [v14 copy];
      [(PEGASUSSchemaPEGASUSSortedScore *)v5 setSortedScoreBoosted:v15];
    }

    v16 = [dictionaryCopy objectForKeyedSubscript:@"sortedScoreKnockOut"];
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

- (PEGASUSSchemaPEGASUSSortedScore)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(PEGASUSSchemaPEGASUSSortedScore *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(PEGASUSSchemaPEGASUSSortedScore *)self dictionaryRepresentation];
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
  if (self->_sortedScoreBoosted)
  {
    sortedScoreBoosted = [(PEGASUSSchemaPEGASUSSortedScore *)self sortedScoreBoosted];
    v5 = [sortedScoreBoosted copy];
    [dictionary setObject:v5 forKeyedSubscript:@"sortedScoreBoosted"];
  }

  if (self->_sortedScoreFinal)
  {
    sortedScoreFinal = [(PEGASUSSchemaPEGASUSSortedScore *)self sortedScoreFinal];
    v7 = [sortedScoreFinal copy];
    [dictionary setObject:v7 forKeyedSubscript:@"sortedScoreFinal"];
  }

  if (self->_sortedScoreKnockOut)
  {
    sortedScoreKnockOut = [(PEGASUSSchemaPEGASUSSortedScore *)self sortedScoreKnockOut];
    v9 = [sortedScoreKnockOut copy];
    [dictionary setObject:v9 forKeyedSubscript:@"sortedScoreKnockOut"];
  }

  if (self->_sortedScoreModelFinal)
  {
    sortedScoreModelFinal = [(PEGASUSSchemaPEGASUSSortedScore *)self sortedScoreModelFinal];
    v11 = [sortedScoreModelFinal copy];
    [dictionary setObject:v11 forKeyedSubscript:@"sortedScoreModelFinal"];
  }

  if (self->_sortedScoreStage2)
  {
    sortedScoreStage2 = [(PEGASUSSchemaPEGASUSSortedScore *)self sortedScoreStage2];
    v13 = [sortedScoreStage2 copy];
    [dictionary setObject:v13 forKeyedSubscript:@"sortedScoreStage2"];
  }

  if (self->_sortedScorelinearCombiner)
  {
    sortedScorelinearCombiner = [(PEGASUSSchemaPEGASUSSortedScore *)self sortedScorelinearCombiner];
    v15 = [sortedScorelinearCombiner copy];
    [dictionary setObject:v15 forKeyedSubscript:@"sortedScorelinearCombiner"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_32;
  }

  sortedScoreFinal = [(PEGASUSSchemaPEGASUSSortedScore *)self sortedScoreFinal];
  sortedScoreFinal2 = [equalCopy sortedScoreFinal];
  if ((sortedScoreFinal != 0) == (sortedScoreFinal2 == 0))
  {
    goto LABEL_31;
  }

  sortedScoreFinal3 = [(PEGASUSSchemaPEGASUSSortedScore *)self sortedScoreFinal];
  if (sortedScoreFinal3)
  {
    v8 = sortedScoreFinal3;
    sortedScoreFinal4 = [(PEGASUSSchemaPEGASUSSortedScore *)self sortedScoreFinal];
    sortedScoreFinal5 = [equalCopy sortedScoreFinal];
    v11 = [sortedScoreFinal4 isEqual:sortedScoreFinal5];

    if (!v11)
    {
      goto LABEL_32;
    }
  }

  else
  {
  }

  sortedScoreFinal = [(PEGASUSSchemaPEGASUSSortedScore *)self sortedScorelinearCombiner];
  sortedScoreFinal2 = [equalCopy sortedScorelinearCombiner];
  if ((sortedScoreFinal != 0) == (sortedScoreFinal2 == 0))
  {
    goto LABEL_31;
  }

  sortedScorelinearCombiner = [(PEGASUSSchemaPEGASUSSortedScore *)self sortedScorelinearCombiner];
  if (sortedScorelinearCombiner)
  {
    v13 = sortedScorelinearCombiner;
    sortedScorelinearCombiner2 = [(PEGASUSSchemaPEGASUSSortedScore *)self sortedScorelinearCombiner];
    sortedScorelinearCombiner3 = [equalCopy sortedScorelinearCombiner];
    v16 = [sortedScorelinearCombiner2 isEqual:sortedScorelinearCombiner3];

    if (!v16)
    {
      goto LABEL_32;
    }
  }

  else
  {
  }

  sortedScoreFinal = [(PEGASUSSchemaPEGASUSSortedScore *)self sortedScoreModelFinal];
  sortedScoreFinal2 = [equalCopy sortedScoreModelFinal];
  if ((sortedScoreFinal != 0) == (sortedScoreFinal2 == 0))
  {
    goto LABEL_31;
  }

  sortedScoreModelFinal = [(PEGASUSSchemaPEGASUSSortedScore *)self sortedScoreModelFinal];
  if (sortedScoreModelFinal)
  {
    v18 = sortedScoreModelFinal;
    sortedScoreModelFinal2 = [(PEGASUSSchemaPEGASUSSortedScore *)self sortedScoreModelFinal];
    sortedScoreModelFinal3 = [equalCopy sortedScoreModelFinal];
    v21 = [sortedScoreModelFinal2 isEqual:sortedScoreModelFinal3];

    if (!v21)
    {
      goto LABEL_32;
    }
  }

  else
  {
  }

  sortedScoreFinal = [(PEGASUSSchemaPEGASUSSortedScore *)self sortedScoreStage2];
  sortedScoreFinal2 = [equalCopy sortedScoreStage2];
  if ((sortedScoreFinal != 0) == (sortedScoreFinal2 == 0))
  {
    goto LABEL_31;
  }

  sortedScoreStage2 = [(PEGASUSSchemaPEGASUSSortedScore *)self sortedScoreStage2];
  if (sortedScoreStage2)
  {
    v23 = sortedScoreStage2;
    sortedScoreStage22 = [(PEGASUSSchemaPEGASUSSortedScore *)self sortedScoreStage2];
    sortedScoreStage23 = [equalCopy sortedScoreStage2];
    v26 = [sortedScoreStage22 isEqual:sortedScoreStage23];

    if (!v26)
    {
      goto LABEL_32;
    }
  }

  else
  {
  }

  sortedScoreFinal = [(PEGASUSSchemaPEGASUSSortedScore *)self sortedScoreBoosted];
  sortedScoreFinal2 = [equalCopy sortedScoreBoosted];
  if ((sortedScoreFinal != 0) == (sortedScoreFinal2 == 0))
  {
    goto LABEL_31;
  }

  sortedScoreBoosted = [(PEGASUSSchemaPEGASUSSortedScore *)self sortedScoreBoosted];
  if (sortedScoreBoosted)
  {
    v28 = sortedScoreBoosted;
    sortedScoreBoosted2 = [(PEGASUSSchemaPEGASUSSortedScore *)self sortedScoreBoosted];
    sortedScoreBoosted3 = [equalCopy sortedScoreBoosted];
    v31 = [sortedScoreBoosted2 isEqual:sortedScoreBoosted3];

    if (!v31)
    {
      goto LABEL_32;
    }
  }

  else
  {
  }

  sortedScoreFinal = [(PEGASUSSchemaPEGASUSSortedScore *)self sortedScoreKnockOut];
  sortedScoreFinal2 = [equalCopy sortedScoreKnockOut];
  if ((sortedScoreFinal != 0) != (sortedScoreFinal2 == 0))
  {
    sortedScoreKnockOut = [(PEGASUSSchemaPEGASUSSortedScore *)self sortedScoreKnockOut];
    if (!sortedScoreKnockOut)
    {

LABEL_35:
      v37 = 1;
      goto LABEL_33;
    }

    v33 = sortedScoreKnockOut;
    sortedScoreKnockOut2 = [(PEGASUSSchemaPEGASUSSortedScore *)self sortedScoreKnockOut];
    sortedScoreKnockOut3 = [equalCopy sortedScoreKnockOut];
    v36 = [sortedScoreKnockOut2 isEqual:sortedScoreKnockOut3];

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

- (void)writeTo:(id)to
{
  toCopy = to;
  sortedScoreFinal = [(PEGASUSSchemaPEGASUSSortedScore *)self sortedScoreFinal];

  if (sortedScoreFinal)
  {
    PBDataWriterWriteStringField();
  }

  sortedScorelinearCombiner = [(PEGASUSSchemaPEGASUSSortedScore *)self sortedScorelinearCombiner];

  if (sortedScorelinearCombiner)
  {
    PBDataWriterWriteStringField();
  }

  sortedScoreModelFinal = [(PEGASUSSchemaPEGASUSSortedScore *)self sortedScoreModelFinal];

  if (sortedScoreModelFinal)
  {
    PBDataWriterWriteStringField();
  }

  sortedScoreStage2 = [(PEGASUSSchemaPEGASUSSortedScore *)self sortedScoreStage2];

  if (sortedScoreStage2)
  {
    PBDataWriterWriteStringField();
  }

  sortedScoreBoosted = [(PEGASUSSchemaPEGASUSSortedScore *)self sortedScoreBoosted];

  if (sortedScoreBoosted)
  {
    PBDataWriterWriteStringField();
  }

  sortedScoreKnockOut = [(PEGASUSSchemaPEGASUSSortedScore *)self sortedScoreKnockOut];

  v10 = toCopy;
  if (sortedScoreKnockOut)
  {
    PBDataWriterWriteStringField();
    v10 = toCopy;
  }
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end