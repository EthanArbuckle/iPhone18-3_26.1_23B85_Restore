@interface PEGASUSSchemaPEGASUSCorrectionInfo
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (PEGASUSSchemaPEGASUSCorrectionInfo)initWithDictionary:(id)dictionary;
- (PEGASUSSchemaPEGASUSCorrectionInfo)initWithJSON:(id)n;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)writeTo:(id)to;
@end

@implementation PEGASUSSchemaPEGASUSCorrectionInfo

- (PEGASUSSchemaPEGASUSCorrectionInfo)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v17.receiver = self;
  v17.super_class = PEGASUSSchemaPEGASUSCorrectionInfo;
  v5 = [(PEGASUSSchemaPEGASUSCorrectionInfo *)&v17 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"original"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(PEGASUSSchemaPEGASUSCorrectionInfo *)v5 setOriginal:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"correction"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [v8 copy];
      [(PEGASUSSchemaPEGASUSCorrectionInfo *)v5 setCorrection:v9];
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"score"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v10 floatValue];
      [(PEGASUSSchemaPEGASUSCorrectionInfo *)v5 setScore:?];
    }

    v11 = [dictionaryCopy objectForKeyedSubscript:@"sourceAuxKey"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = [v11 copy];
      [(PEGASUSSchemaPEGASUSCorrectionInfo *)v5 setSourceAuxKey:v12];
    }

    v13 = [dictionaryCopy objectForKeyedSubscript:@"alignmentOffset"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v14 = [[PEGASUSSchemaPEGASUSAlignmentOffset alloc] initWithDictionary:v13];
      [(PEGASUSSchemaPEGASUSCorrectionInfo *)v5 setAlignmentOffset:v14];
    }

    v15 = v5;
  }

  return v5;
}

- (PEGASUSSchemaPEGASUSCorrectionInfo)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(PEGASUSSchemaPEGASUSCorrectionInfo *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(PEGASUSSchemaPEGASUSCorrectionInfo *)self dictionaryRepresentation];
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
  if (self->_alignmentOffset)
  {
    alignmentOffset = [(PEGASUSSchemaPEGASUSCorrectionInfo *)self alignmentOffset];
    dictionaryRepresentation = [alignmentOffset dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"alignmentOffset"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"alignmentOffset"];
    }
  }

  if (self->_correction)
  {
    correction = [(PEGASUSSchemaPEGASUSCorrectionInfo *)self correction];
    v8 = [correction copy];
    [dictionary setObject:v8 forKeyedSubscript:@"correction"];
  }

  if (self->_original)
  {
    original = [(PEGASUSSchemaPEGASUSCorrectionInfo *)self original];
    v10 = [original copy];
    [dictionary setObject:v10 forKeyedSubscript:@"original"];
  }

  if (*&self->_has)
  {
    v11 = MEMORY[0x1E696AD98];
    [(PEGASUSSchemaPEGASUSCorrectionInfo *)self score];
    v12 = [v11 numberWithFloat:?];
    [dictionary setObject:v12 forKeyedSubscript:@"score"];
  }

  if (self->_sourceAuxKey)
  {
    sourceAuxKey = [(PEGASUSSchemaPEGASUSCorrectionInfo *)self sourceAuxKey];
    v14 = [sourceAuxKey copy];
    [dictionary setObject:v14 forKeyedSubscript:@"sourceAuxKey"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_original hash];
  v4 = [(NSString *)self->_correction hash];
  if (*&self->_has)
  {
    score = self->_score;
    if (score >= 0.0)
    {
      v9 = score;
    }

    else
    {
      v9 = -score;
    }

    *v5.i64 = floor(v9 + 0.5);
    v10 = (v9 - *v5.i64) * 1.84467441e19;
    *v6.i64 = *v5.i64 - trunc(*v5.i64 * 5.42101086e-20) * 1.84467441e19;
    v11.f64[0] = NAN;
    v11.f64[1] = NAN;
    v7 = 2654435761u * *vbslq_s8(vnegq_f64(v11), v6, v5).i64;
    if (v10 >= 0.0)
    {
      if (v10 > 0.0)
      {
        v7 += v10;
      }
    }

    else
    {
      v7 -= fabs(v10);
    }
  }

  else
  {
    v7 = 0;
  }

  v12 = v4 ^ v3 ^ v7 ^ [(NSString *)self->_sourceAuxKey hash];
  return v12 ^ [(PEGASUSSchemaPEGASUSAlignmentOffset *)self->_alignmentOffset hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_25;
  }

  original = [(PEGASUSSchemaPEGASUSCorrectionInfo *)self original];
  original2 = [equalCopy original];
  if ((original != 0) == (original2 == 0))
  {
    goto LABEL_24;
  }

  original3 = [(PEGASUSSchemaPEGASUSCorrectionInfo *)self original];
  if (original3)
  {
    v8 = original3;
    original4 = [(PEGASUSSchemaPEGASUSCorrectionInfo *)self original];
    original5 = [equalCopy original];
    v11 = [original4 isEqual:original5];

    if (!v11)
    {
      goto LABEL_25;
    }
  }

  else
  {
  }

  original = [(PEGASUSSchemaPEGASUSCorrectionInfo *)self correction];
  original2 = [equalCopy correction];
  if ((original != 0) == (original2 == 0))
  {
    goto LABEL_24;
  }

  correction = [(PEGASUSSchemaPEGASUSCorrectionInfo *)self correction];
  if (correction)
  {
    v13 = correction;
    correction2 = [(PEGASUSSchemaPEGASUSCorrectionInfo *)self correction];
    correction3 = [equalCopy correction];
    v16 = [correction2 isEqual:correction3];

    if (!v16)
    {
      goto LABEL_25;
    }
  }

  else
  {
  }

  if ((*&self->_has & 1) != (equalCopy[48] & 1))
  {
    goto LABEL_25;
  }

  if (*&self->_has)
  {
    score = self->_score;
    [equalCopy score];
    if (score != v18)
    {
      goto LABEL_25;
    }
  }

  original = [(PEGASUSSchemaPEGASUSCorrectionInfo *)self sourceAuxKey];
  original2 = [equalCopy sourceAuxKey];
  if ((original != 0) == (original2 == 0))
  {
    goto LABEL_24;
  }

  sourceAuxKey = [(PEGASUSSchemaPEGASUSCorrectionInfo *)self sourceAuxKey];
  if (sourceAuxKey)
  {
    v20 = sourceAuxKey;
    sourceAuxKey2 = [(PEGASUSSchemaPEGASUSCorrectionInfo *)self sourceAuxKey];
    sourceAuxKey3 = [equalCopy sourceAuxKey];
    v23 = [sourceAuxKey2 isEqual:sourceAuxKey3];

    if (!v23)
    {
      goto LABEL_25;
    }
  }

  else
  {
  }

  original = [(PEGASUSSchemaPEGASUSCorrectionInfo *)self alignmentOffset];
  original2 = [equalCopy alignmentOffset];
  if ((original != 0) != (original2 == 0))
  {
    alignmentOffset = [(PEGASUSSchemaPEGASUSCorrectionInfo *)self alignmentOffset];
    if (!alignmentOffset)
    {

LABEL_28:
      v29 = 1;
      goto LABEL_26;
    }

    v25 = alignmentOffset;
    alignmentOffset2 = [(PEGASUSSchemaPEGASUSCorrectionInfo *)self alignmentOffset];
    alignmentOffset3 = [equalCopy alignmentOffset];
    v28 = [alignmentOffset2 isEqual:alignmentOffset3];

    if (v28)
    {
      goto LABEL_28;
    }
  }

  else
  {
LABEL_24:
  }

LABEL_25:
  v29 = 0;
LABEL_26:

  return v29;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  original = [(PEGASUSSchemaPEGASUSCorrectionInfo *)self original];

  if (original)
  {
    PBDataWriterWriteStringField();
  }

  correction = [(PEGASUSSchemaPEGASUSCorrectionInfo *)self correction];

  if (correction)
  {
    PBDataWriterWriteStringField();
  }

  if (*&self->_has)
  {
    PBDataWriterWriteFloatField();
  }

  sourceAuxKey = [(PEGASUSSchemaPEGASUSCorrectionInfo *)self sourceAuxKey];

  if (sourceAuxKey)
  {
    PBDataWriterWriteStringField();
  }

  alignmentOffset = [(PEGASUSSchemaPEGASUSCorrectionInfo *)self alignmentOffset];

  v8 = toCopy;
  if (alignmentOffset)
  {
    alignmentOffset2 = [(PEGASUSSchemaPEGASUSCorrectionInfo *)self alignmentOffset];
    PBDataWriterWriteSubmessage();

    v8 = toCopy;
  }
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  policyCopy = policy;
  v10.receiver = self;
  v10.super_class = PEGASUSSchemaPEGASUSCorrectionInfo;
  v5 = [(SISchemaInstrumentationMessage *)&v10 applySensitiveConditionsPolicy:policyCopy];
  if ([policyCopy isConditionSet:2])
  {
    [(PEGASUSSchemaPEGASUSCorrectionInfo *)self deleteOriginal];
    [(PEGASUSSchemaPEGASUSCorrectionInfo *)self deleteCorrection];
  }

  if ([policyCopy isConditionSet:4])
  {
    [(PEGASUSSchemaPEGASUSCorrectionInfo *)self deleteOriginal];
    [(PEGASUSSchemaPEGASUSCorrectionInfo *)self deleteCorrection];
  }

  if ([policyCopy isConditionSet:5])
  {
    [(PEGASUSSchemaPEGASUSCorrectionInfo *)self deleteOriginal];
    [(PEGASUSSchemaPEGASUSCorrectionInfo *)self deleteCorrection];
  }

  if ([policyCopy isConditionSet:6])
  {
    [(PEGASUSSchemaPEGASUSCorrectionInfo *)self deleteOriginal];
    [(PEGASUSSchemaPEGASUSCorrectionInfo *)self deleteCorrection];
  }

  if ([policyCopy isConditionSet:7])
  {
    [(PEGASUSSchemaPEGASUSCorrectionInfo *)self deleteOriginal];
    [(PEGASUSSchemaPEGASUSCorrectionInfo *)self deleteCorrection];
  }

  alignmentOffset = [(PEGASUSSchemaPEGASUSCorrectionInfo *)self alignmentOffset];
  v7 = [alignmentOffset applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v7 suppressMessage];

  if (suppressMessage)
  {
    [(PEGASUSSchemaPEGASUSCorrectionInfo *)self deleteAlignmentOffset];
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