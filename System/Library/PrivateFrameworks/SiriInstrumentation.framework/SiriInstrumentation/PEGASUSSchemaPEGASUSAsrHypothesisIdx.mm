@interface PEGASUSSchemaPEGASUSAsrHypothesisIdx
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (PEGASUSSchemaPEGASUSAsrHypothesisIdx)initWithDictionary:(id)dictionary;
- (PEGASUSSchemaPEGASUSAsrHypothesisIdx)initWithJSON:(id)n;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasOriginalAsrInterpretationIdx:(BOOL)idx;
- (void)writeTo:(id)to;
@end

@implementation PEGASUSSchemaPEGASUSAsrHypothesisIdx

- (PEGASUSSchemaPEGASUSAsrHypothesisIdx)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v12.receiver = self;
  v12.super_class = PEGASUSSchemaPEGASUSAsrHypothesisIdx;
  v5 = [(PEGASUSSchemaPEGASUSAsrHypothesisIdx *)&v12 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"sourceAuxKey"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(PEGASUSSchemaPEGASUSAsrHypothesisIdx *)v5 setSourceAuxKey:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"sourceAuxIdx"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[PEGASUSSchemaPEGASUSAsrHypothesisIdx setSourceAuxIdx:](v5, "setSourceAuxIdx:", [v8 unsignedIntValue]);
    }

    v9 = [dictionaryCopy objectForKeyedSubscript:@"originalAsrInterpretationIdx"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[PEGASUSSchemaPEGASUSAsrHypothesisIdx setOriginalAsrInterpretationIdx:](v5, "setOriginalAsrInterpretationIdx:", [v9 unsignedIntValue]);
    }

    v10 = v5;
  }

  return v5;
}

- (PEGASUSSchemaPEGASUSAsrHypothesisIdx)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(PEGASUSSchemaPEGASUSAsrHypothesisIdx *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(PEGASUSSchemaPEGASUSAsrHypothesisIdx *)self dictionaryRepresentation];
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
  has = self->_has;
  if ((has & 2) != 0)
  {
    v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[PEGASUSSchemaPEGASUSAsrHypothesisIdx originalAsrInterpretationIdx](self, "originalAsrInterpretationIdx")}];
    [dictionary setObject:v5 forKeyedSubscript:@"originalAsrInterpretationIdx"];

    has = self->_has;
  }

  if (has)
  {
    v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[PEGASUSSchemaPEGASUSAsrHypothesisIdx sourceAuxIdx](self, "sourceAuxIdx")}];
    [dictionary setObject:v6 forKeyedSubscript:@"sourceAuxIdx"];
  }

  if (self->_sourceAuxKey)
  {
    sourceAuxKey = [(PEGASUSSchemaPEGASUSAsrHypothesisIdx *)self sourceAuxKey];
    v8 = [sourceAuxKey copy];
    [dictionary setObject:v8 forKeyedSubscript:@"sourceAuxKey"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_16;
  }

  sourceAuxKey = [(PEGASUSSchemaPEGASUSAsrHypothesisIdx *)self sourceAuxKey];
  sourceAuxKey2 = [equalCopy sourceAuxKey];
  v7 = sourceAuxKey2;
  if ((sourceAuxKey != 0) == (sourceAuxKey2 == 0))
  {

    goto LABEL_16;
  }

  sourceAuxKey3 = [(PEGASUSSchemaPEGASUSAsrHypothesisIdx *)self sourceAuxKey];
  if (sourceAuxKey3)
  {
    v9 = sourceAuxKey3;
    sourceAuxKey4 = [(PEGASUSSchemaPEGASUSAsrHypothesisIdx *)self sourceAuxKey];
    sourceAuxKey5 = [equalCopy sourceAuxKey];
    v12 = [sourceAuxKey4 isEqual:sourceAuxKey5];

    if (!v12)
    {
      goto LABEL_16;
    }
  }

  else
  {
  }

  has = self->_has;
  v14 = equalCopy[24];
  if ((*&has & 1) != (v14 & 1))
  {
LABEL_16:
    v18 = 0;
    goto LABEL_17;
  }

  if (*&has)
  {
    sourceAuxIdx = self->_sourceAuxIdx;
    if (sourceAuxIdx == [equalCopy sourceAuxIdx])
    {
      has = self->_has;
      v14 = equalCopy[24];
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
    if (originalAsrInterpretationIdx != [equalCopy originalAsrInterpretationIdx])
    {
      goto LABEL_16;
    }
  }

  v18 = 1;
LABEL_17:

  return v18;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  sourceAuxKey = [(PEGASUSSchemaPEGASUSAsrHypothesisIdx *)self sourceAuxKey];

  if (sourceAuxKey)
  {
    PBDataWriterWriteStringField();
  }

  has = self->_has;
  if (has)
  {
    PBDataWriterWriteUint32Field();
    has = self->_has;
  }

  v6 = toCopy;
  if ((has & 2) != 0)
  {
    PBDataWriterWriteUint32Field();
    v6 = toCopy;
  }
}

- (void)setHasOriginalAsrInterpretationIdx:(BOOL)idx
{
  if (idx)
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