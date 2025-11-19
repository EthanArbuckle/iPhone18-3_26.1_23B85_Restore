@interface PEGASUSSchemaPEGASUSAsrHypothesisIdx
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (PEGASUSSchemaPEGASUSAsrHypothesisIdx)initWithDictionary:(id)a3;
- (PEGASUSSchemaPEGASUSAsrHypothesisIdx)initWithJSON:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasOriginalAsrInterpretationIdx:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation PEGASUSSchemaPEGASUSAsrHypothesisIdx

- (PEGASUSSchemaPEGASUSAsrHypothesisIdx)initWithDictionary:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = PEGASUSSchemaPEGASUSAsrHypothesisIdx;
  v5 = [(PEGASUSSchemaPEGASUSAsrHypothesisIdx *)&v12 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"sourceAuxKey"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(PEGASUSSchemaPEGASUSAsrHypothesisIdx *)v5 setSourceAuxKey:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"sourceAuxIdx"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[PEGASUSSchemaPEGASUSAsrHypothesisIdx setSourceAuxIdx:](v5, "setSourceAuxIdx:", [v8 unsignedIntValue]);
    }

    v9 = [v4 objectForKeyedSubscript:@"originalAsrInterpretationIdx"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[PEGASUSSchemaPEGASUSAsrHypothesisIdx setOriginalAsrInterpretationIdx:](v5, "setOriginalAsrInterpretationIdx:", [v9 unsignedIntValue]);
    }

    v10 = v5;
  }

  return v5;
}

- (PEGASUSSchemaPEGASUSAsrHypothesisIdx)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(PEGASUSSchemaPEGASUSAsrHypothesisIdx *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(PEGASUSSchemaPEGASUSAsrHypothesisIdx *)self dictionaryRepresentation];
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
  has = self->_has;
  if ((has & 2) != 0)
  {
    v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[PEGASUSSchemaPEGASUSAsrHypothesisIdx originalAsrInterpretationIdx](self, "originalAsrInterpretationIdx")}];
    [v3 setObject:v5 forKeyedSubscript:@"originalAsrInterpretationIdx"];

    has = self->_has;
  }

  if (has)
  {
    v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[PEGASUSSchemaPEGASUSAsrHypothesisIdx sourceAuxIdx](self, "sourceAuxIdx")}];
    [v3 setObject:v6 forKeyedSubscript:@"sourceAuxIdx"];
  }

  if (self->_sourceAuxKey)
  {
    v7 = [(PEGASUSSchemaPEGASUSAsrHypothesisIdx *)self sourceAuxKey];
    v8 = [v7 copy];
    [v3 setObject:v8 forKeyedSubscript:@"sourceAuxKey"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_sourceAuxKey hash];
  if (*&self->_has)
  {
    v4 = 2654435761 * self->_sourceAuxIdx;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_5:
    v5 = 0;
    return v4 ^ v3 ^ v5;
  }

  v4 = 0;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  v5 = 2654435761 * self->_originalAsrInterpretationIdx;
  return v4 ^ v3 ^ v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_16;
  }

  v5 = [(PEGASUSSchemaPEGASUSAsrHypothesisIdx *)self sourceAuxKey];
  v6 = [v4 sourceAuxKey];
  v7 = v6;
  if ((v5 != 0) == (v6 == 0))
  {

    goto LABEL_16;
  }

  v8 = [(PEGASUSSchemaPEGASUSAsrHypothesisIdx *)self sourceAuxKey];
  if (v8)
  {
    v9 = v8;
    v10 = [(PEGASUSSchemaPEGASUSAsrHypothesisIdx *)self sourceAuxKey];
    v11 = [v4 sourceAuxKey];
    v12 = [v10 isEqual:v11];

    if (!v12)
    {
      goto LABEL_16;
    }
  }

  else
  {
  }

  has = self->_has;
  v14 = v4[24];
  if ((*&has & 1) != (v14 & 1))
  {
LABEL_16:
    v18 = 0;
    goto LABEL_17;
  }

  if (*&has)
  {
    sourceAuxIdx = self->_sourceAuxIdx;
    if (sourceAuxIdx == [v4 sourceAuxIdx])
    {
      has = self->_has;
      v14 = v4[24];
      goto LABEL_12;
    }

    goto LABEL_16;
  }

LABEL_12:
  v16 = (*&has >> 1) & 1;
  if (v16 != ((v14 >> 1) & 1))
  {
    goto LABEL_16;
  }

  if (v16)
  {
    originalAsrInterpretationIdx = self->_originalAsrInterpretationIdx;
    if (originalAsrInterpretationIdx != [v4 originalAsrInterpretationIdx])
    {
      goto LABEL_16;
    }
  }

  v18 = 1;
LABEL_17:

  return v18;
}

- (void)writeTo:(id)a3
{
  v7 = a3;
  v4 = [(PEGASUSSchemaPEGASUSAsrHypothesisIdx *)self sourceAuxKey];

  if (v4)
  {
    PBDataWriterWriteStringField();
  }

  has = self->_has;
  if (has)
  {
    PBDataWriterWriteUint32Field();
    has = self->_has;
  }

  v6 = v7;
  if ((has & 2) != 0)
  {
    PBDataWriterWriteUint32Field();
    v6 = v7;
  }
}

- (void)setHasOriginalAsrInterpretationIdx:(BOOL)a3
{
  if (a3)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end