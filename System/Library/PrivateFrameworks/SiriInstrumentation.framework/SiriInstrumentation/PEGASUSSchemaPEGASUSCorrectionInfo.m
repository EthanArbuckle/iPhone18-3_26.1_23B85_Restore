@interface PEGASUSSchemaPEGASUSCorrectionInfo
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (PEGASUSSchemaPEGASUSCorrectionInfo)initWithDictionary:(id)a3;
- (PEGASUSSchemaPEGASUSCorrectionInfo)initWithJSON:(id)a3;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)writeTo:(id)a3;
@end

@implementation PEGASUSSchemaPEGASUSCorrectionInfo

- (PEGASUSSchemaPEGASUSCorrectionInfo)initWithDictionary:(id)a3
{
  v4 = a3;
  v17.receiver = self;
  v17.super_class = PEGASUSSchemaPEGASUSCorrectionInfo;
  v5 = [(PEGASUSSchemaPEGASUSCorrectionInfo *)&v17 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"original"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(PEGASUSSchemaPEGASUSCorrectionInfo *)v5 setOriginal:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"correction"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [v8 copy];
      [(PEGASUSSchemaPEGASUSCorrectionInfo *)v5 setCorrection:v9];
    }

    v10 = [v4 objectForKeyedSubscript:@"score"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v10 floatValue];
      [(PEGASUSSchemaPEGASUSCorrectionInfo *)v5 setScore:?];
    }

    v11 = [v4 objectForKeyedSubscript:@"sourceAuxKey"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = [v11 copy];
      [(PEGASUSSchemaPEGASUSCorrectionInfo *)v5 setSourceAuxKey:v12];
    }

    v13 = [v4 objectForKeyedSubscript:@"alignmentOffset"];
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

- (PEGASUSSchemaPEGASUSCorrectionInfo)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(PEGASUSSchemaPEGASUSCorrectionInfo *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(PEGASUSSchemaPEGASUSCorrectionInfo *)self dictionaryRepresentation];
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
  if (self->_alignmentOffset)
  {
    v4 = [(PEGASUSSchemaPEGASUSCorrectionInfo *)self alignmentOffset];
    v5 = [v4 dictionaryRepresentation];
    if (v5)
    {
      [v3 setObject:v5 forKeyedSubscript:@"alignmentOffset"];
    }

    else
    {
      v6 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v6 forKeyedSubscript:@"alignmentOffset"];
    }
  }

  if (self->_correction)
  {
    v7 = [(PEGASUSSchemaPEGASUSCorrectionInfo *)self correction];
    v8 = [v7 copy];
    [v3 setObject:v8 forKeyedSubscript:@"correction"];
  }

  if (self->_original)
  {
    v9 = [(PEGASUSSchemaPEGASUSCorrectionInfo *)self original];
    v10 = [v9 copy];
    [v3 setObject:v10 forKeyedSubscript:@"original"];
  }

  if (*&self->_has)
  {
    v11 = MEMORY[0x1E696AD98];
    [(PEGASUSSchemaPEGASUSCorrectionInfo *)self score];
    v12 = [v11 numberWithFloat:?];
    [v3 setObject:v12 forKeyedSubscript:@"score"];
  }

  if (self->_sourceAuxKey)
  {
    v13 = [(PEGASUSSchemaPEGASUSCorrectionInfo *)self sourceAuxKey];
    v14 = [v13 copy];
    [v3 setObject:v14 forKeyedSubscript:@"sourceAuxKey"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_25;
  }

  v5 = [(PEGASUSSchemaPEGASUSCorrectionInfo *)self original];
  v6 = [v4 original];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_24;
  }

  v7 = [(PEGASUSSchemaPEGASUSCorrectionInfo *)self original];
  if (v7)
  {
    v8 = v7;
    v9 = [(PEGASUSSchemaPEGASUSCorrectionInfo *)self original];
    v10 = [v4 original];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_25;
    }
  }

  else
  {
  }

  v5 = [(PEGASUSSchemaPEGASUSCorrectionInfo *)self correction];
  v6 = [v4 correction];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_24;
  }

  v12 = [(PEGASUSSchemaPEGASUSCorrectionInfo *)self correction];
  if (v12)
  {
    v13 = v12;
    v14 = [(PEGASUSSchemaPEGASUSCorrectionInfo *)self correction];
    v15 = [v4 correction];
    v16 = [v14 isEqual:v15];

    if (!v16)
    {
      goto LABEL_25;
    }
  }

  else
  {
  }

  if ((*&self->_has & 1) != (v4[48] & 1))
  {
    goto LABEL_25;
  }

  if (*&self->_has)
  {
    score = self->_score;
    [v4 score];
    if (score != v18)
    {
      goto LABEL_25;
    }
  }

  v5 = [(PEGASUSSchemaPEGASUSCorrectionInfo *)self sourceAuxKey];
  v6 = [v4 sourceAuxKey];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_24;
  }

  v19 = [(PEGASUSSchemaPEGASUSCorrectionInfo *)self sourceAuxKey];
  if (v19)
  {
    v20 = v19;
    v21 = [(PEGASUSSchemaPEGASUSCorrectionInfo *)self sourceAuxKey];
    v22 = [v4 sourceAuxKey];
    v23 = [v21 isEqual:v22];

    if (!v23)
    {
      goto LABEL_25;
    }
  }

  else
  {
  }

  v5 = [(PEGASUSSchemaPEGASUSCorrectionInfo *)self alignmentOffset];
  v6 = [v4 alignmentOffset];
  if ((v5 != 0) != (v6 == 0))
  {
    v24 = [(PEGASUSSchemaPEGASUSCorrectionInfo *)self alignmentOffset];
    if (!v24)
    {

LABEL_28:
      v29 = 1;
      goto LABEL_26;
    }

    v25 = v24;
    v26 = [(PEGASUSSchemaPEGASUSCorrectionInfo *)self alignmentOffset];
    v27 = [v4 alignmentOffset];
    v28 = [v26 isEqual:v27];

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

- (void)writeTo:(id)a3
{
  v10 = a3;
  v4 = [(PEGASUSSchemaPEGASUSCorrectionInfo *)self original];

  if (v4)
  {
    PBDataWriterWriteStringField();
  }

  v5 = [(PEGASUSSchemaPEGASUSCorrectionInfo *)self correction];

  if (v5)
  {
    PBDataWriterWriteStringField();
  }

  if (*&self->_has)
  {
    PBDataWriterWriteFloatField();
  }

  v6 = [(PEGASUSSchemaPEGASUSCorrectionInfo *)self sourceAuxKey];

  if (v6)
  {
    PBDataWriterWriteStringField();
  }

  v7 = [(PEGASUSSchemaPEGASUSCorrectionInfo *)self alignmentOffset];

  v8 = v10;
  if (v7)
  {
    v9 = [(PEGASUSSchemaPEGASUSCorrectionInfo *)self alignmentOffset];
    PBDataWriterWriteSubmessage();

    v8 = v10;
  }
}

- (id)applySensitiveConditionsPolicy:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = PEGASUSSchemaPEGASUSCorrectionInfo;
  v5 = [(SISchemaInstrumentationMessage *)&v10 applySensitiveConditionsPolicy:v4];
  if ([v4 isConditionSet:2])
  {
    [(PEGASUSSchemaPEGASUSCorrectionInfo *)self deleteOriginal];
    [(PEGASUSSchemaPEGASUSCorrectionInfo *)self deleteCorrection];
  }

  if ([v4 isConditionSet:4])
  {
    [(PEGASUSSchemaPEGASUSCorrectionInfo *)self deleteOriginal];
    [(PEGASUSSchemaPEGASUSCorrectionInfo *)self deleteCorrection];
  }

  if ([v4 isConditionSet:5])
  {
    [(PEGASUSSchemaPEGASUSCorrectionInfo *)self deleteOriginal];
    [(PEGASUSSchemaPEGASUSCorrectionInfo *)self deleteCorrection];
  }

  if ([v4 isConditionSet:6])
  {
    [(PEGASUSSchemaPEGASUSCorrectionInfo *)self deleteOriginal];
    [(PEGASUSSchemaPEGASUSCorrectionInfo *)self deleteCorrection];
  }

  if ([v4 isConditionSet:7])
  {
    [(PEGASUSSchemaPEGASUSCorrectionInfo *)self deleteOriginal];
    [(PEGASUSSchemaPEGASUSCorrectionInfo *)self deleteCorrection];
  }

  v6 = [(PEGASUSSchemaPEGASUSCorrectionInfo *)self alignmentOffset];
  v7 = [v6 applySensitiveConditionsPolicy:v4];
  v8 = [v7 suppressMessage];

  if (v8)
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