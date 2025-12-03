@interface STSchemaTopicalityAttributes
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (STSchemaTopicalityAttributes)initWithDictionary:(id)dictionary;
- (STSchemaTopicalityAttributes)initWithJSON:(id)n;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasCalibratedEmbeddingSimilarity:(BOOL)similarity;
- (void)setHasCountAttributeBigramMatch:(BOOL)match;
- (void)setHasCountAttributeBigramPrefixMatch:(BOOL)match;
- (void)setHasCountAttributeNgramMatch:(BOOL)match;
- (void)setHasCountAttributeNgramPrefixMatch:(BOOL)match;
- (void)setHasCountAttributeQPQUprefixMatch:(BOOL)match;
- (void)setHasCountAttributeUnigramMatch:(BOOL)match;
- (void)setHasCountAttributeUnigramPrefixMatch:(BOOL)match;
- (void)setHasUnCalibratedEmbeddingSimilarity:(BOOL)similarity;
- (void)writeTo:(id)to;
@end

@implementation STSchemaTopicalityAttributes

- (STSchemaTopicalityAttributes)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v29.receiver = self;
  v29.super_class = STSchemaTopicalityAttributes;
  v5 = [(STSchemaTopicalityAttributes *)&v29 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"countAttributeQPQUMatch"];
    objc_opt_class();
    v27 = v6;
    if (objc_opt_isKindOfClass())
    {
      -[STSchemaTopicalityAttributes setCountAttributeQPQUMatch:](v5, "setCountAttributeQPQUMatch:", [v6 unsignedIntValue]);
    }

    v7 = [dictionaryCopy objectForKeyedSubscript:@"countAttributeQPQUprefixMatch"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[STSchemaTopicalityAttributes setCountAttributeQPQUprefixMatch:](v5, "setCountAttributeQPQUprefixMatch:", [v7 unsignedIntValue]);
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"countAttributeUnigramMatch"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[STSchemaTopicalityAttributes setCountAttributeUnigramMatch:](v5, "setCountAttributeUnigramMatch:", [v8 unsignedIntValue]);
    }

    v9 = [dictionaryCopy objectForKeyedSubscript:@"countAttributeBigramMatch"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[STSchemaTopicalityAttributes setCountAttributeBigramMatch:](v5, "setCountAttributeBigramMatch:", [v9 unsignedIntValue]);
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"countAttributeNgramMatch"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[STSchemaTopicalityAttributes setCountAttributeNgramMatch:](v5, "setCountAttributeNgramMatch:", [v10 unsignedIntValue]);
    }

    v11 = [dictionaryCopy objectForKeyedSubscript:@"countAttributeUnigramPrefixMatch"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[STSchemaTopicalityAttributes setCountAttributeUnigramPrefixMatch:](v5, "setCountAttributeUnigramPrefixMatch:", [v11 unsignedIntValue]);
    }

    v12 = [dictionaryCopy objectForKeyedSubscript:@"countAttributeBigramPrefixMatch"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[STSchemaTopicalityAttributes setCountAttributeBigramPrefixMatch:](v5, "setCountAttributeBigramPrefixMatch:", [v12 unsignedIntValue]);
    }

    v13 = [dictionaryCopy objectForKeyedSubscript:@"countAttributeNgramPrefixMatch"];
    objc_opt_class();
    v28 = v13;
    if (objc_opt_isKindOfClass())
    {
      -[STSchemaTopicalityAttributes setCountAttributeNgramPrefixMatch:](v5, "setCountAttributeNgramPrefixMatch:", [v13 unsignedIntValue]);
    }

    v26 = v12;
    v14 = [dictionaryCopy objectForKeyedSubscript:@"unCalibratedEmbeddingSimilarity"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v14 floatValue];
      [(STSchemaTopicalityAttributes *)v5 setUnCalibratedEmbeddingSimilarity:?];
    }

    v15 = [dictionaryCopy objectForKeyedSubscript:@"calibratedEmbeddingSimilarity"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v15 floatValue];
      [(STSchemaTopicalityAttributes *)v5 setCalibratedEmbeddingSimilarity:?];
    }

    v16 = [dictionaryCopy objectForKeyedSubscript:@"embeddingModelId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v25 = v11;
      v17 = v10;
      v18 = v9;
      v19 = v8;
      v20 = v7;
      v21 = v14;
      v22 = [v16 copy];
      [(STSchemaTopicalityAttributes *)v5 setEmbeddingModelId:v22];

      v14 = v21;
      v7 = v20;
      v8 = v19;
      v9 = v18;
      v10 = v17;
      v11 = v25;
    }

    v23 = v5;
  }

  return v5;
}

- (STSchemaTopicalityAttributes)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(STSchemaTopicalityAttributes *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(STSchemaTopicalityAttributes *)self dictionaryRepresentation];
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
  if ((has & 0x200) != 0)
  {
    v11 = MEMORY[0x1E696AD98];
    [(STSchemaTopicalityAttributes *)self calibratedEmbeddingSimilarity];
    v12 = [v11 numberWithFloat:?];
    [dictionary setObject:v12 forKeyedSubscript:@"calibratedEmbeddingSimilarity"];

    has = self->_has;
    if ((has & 8) == 0)
    {
LABEL_3:
      if ((has & 0x40) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_20;
    }
  }

  else if ((has & 8) == 0)
  {
    goto LABEL_3;
  }

  v13 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[STSchemaTopicalityAttributes countAttributeBigramMatch](self, "countAttributeBigramMatch")}];
  [dictionary setObject:v13 forKeyedSubscript:@"countAttributeBigramMatch"];

  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_4:
    if ((has & 0x10) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_21;
  }

LABEL_20:
  v14 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[STSchemaTopicalityAttributes countAttributeBigramPrefixMatch](self, "countAttributeBigramPrefixMatch")}];
  [dictionary setObject:v14 forKeyedSubscript:@"countAttributeBigramPrefixMatch"];

  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_5:
    if ((has & 0x80) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_22;
  }

LABEL_21:
  v15 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[STSchemaTopicalityAttributes countAttributeNgramMatch](self, "countAttributeNgramMatch")}];
  [dictionary setObject:v15 forKeyedSubscript:@"countAttributeNgramMatch"];

  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_6:
    if ((has & 1) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_23;
  }

LABEL_22:
  v16 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[STSchemaTopicalityAttributes countAttributeNgramPrefixMatch](self, "countAttributeNgramPrefixMatch")}];
  [dictionary setObject:v16 forKeyedSubscript:@"countAttributeNgramPrefixMatch"];

  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_7:
    if ((has & 2) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_24;
  }

LABEL_23:
  v17 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[STSchemaTopicalityAttributes countAttributeQPQUMatch](self, "countAttributeQPQUMatch")}];
  [dictionary setObject:v17 forKeyedSubscript:@"countAttributeQPQUMatch"];

  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_8:
    if ((has & 4) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_25;
  }

LABEL_24:
  v18 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[STSchemaTopicalityAttributes countAttributeQPQUprefixMatch](self, "countAttributeQPQUprefixMatch")}];
  [dictionary setObject:v18 forKeyedSubscript:@"countAttributeQPQUprefixMatch"];

  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_9:
    if ((has & 0x20) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

LABEL_25:
  v19 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[STSchemaTopicalityAttributes countAttributeUnigramMatch](self, "countAttributeUnigramMatch")}];
  [dictionary setObject:v19 forKeyedSubscript:@"countAttributeUnigramMatch"];

  if ((*&self->_has & 0x20) != 0)
  {
LABEL_10:
    v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[STSchemaTopicalityAttributes countAttributeUnigramPrefixMatch](self, "countAttributeUnigramPrefixMatch")}];
    [dictionary setObject:v5 forKeyedSubscript:@"countAttributeUnigramPrefixMatch"];
  }

LABEL_11:
  if (self->_embeddingModelId)
  {
    embeddingModelId = [(STSchemaTopicalityAttributes *)self embeddingModelId];
    v7 = [embeddingModelId copy];
    [dictionary setObject:v7 forKeyedSubscript:@"embeddingModelId"];
  }

  if ((*&self->_has & 0x100) != 0)
  {
    v8 = MEMORY[0x1E696AD98];
    [(STSchemaTopicalityAttributes *)self unCalibratedEmbeddingSimilarity];
    v9 = [v8 numberWithFloat:?];
    [dictionary setObject:v9 forKeyedSubscript:@"unCalibratedEmbeddingSimilarity"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  has = self->_has;
  if (has)
  {
    v9 = 2654435761 * self->_countAttributeQPQUMatch;
    if ((has & 2) != 0)
    {
LABEL_3:
      v10 = 2654435761 * self->_countAttributeQPQUprefixMatch;
      if ((has & 4) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_17;
    }
  }

  else
  {
    v9 = 0;
    if ((has & 2) != 0)
    {
      goto LABEL_3;
    }
  }

  v10 = 0;
  if ((has & 4) != 0)
  {
LABEL_4:
    v11 = 2654435761 * self->_countAttributeUnigramMatch;
    if ((has & 8) != 0)
    {
      goto LABEL_5;
    }

    goto LABEL_18;
  }

LABEL_17:
  v11 = 0;
  if ((has & 8) != 0)
  {
LABEL_5:
    v12 = 2654435761 * self->_countAttributeBigramMatch;
    if ((has & 0x10) != 0)
    {
      goto LABEL_6;
    }

    goto LABEL_19;
  }

LABEL_18:
  v12 = 0;
  if ((has & 0x10) != 0)
  {
LABEL_6:
    v13 = 2654435761 * self->_countAttributeNgramMatch;
    if ((has & 0x20) != 0)
    {
      goto LABEL_7;
    }

    goto LABEL_20;
  }

LABEL_19:
  v13 = 0;
  if ((has & 0x20) != 0)
  {
LABEL_7:
    v14 = 2654435761 * self->_countAttributeUnigramPrefixMatch;
    if ((has & 0x40) != 0)
    {
      goto LABEL_8;
    }

    goto LABEL_21;
  }

LABEL_20:
  v14 = 0;
  if ((has & 0x40) != 0)
  {
LABEL_8:
    v15 = 2654435761 * self->_countAttributeBigramPrefixMatch;
    if ((has & 0x80) != 0)
    {
      goto LABEL_9;
    }

    goto LABEL_22;
  }

LABEL_21:
  v15 = 0;
  if ((has & 0x80) != 0)
  {
LABEL_9:
    v16 = 2654435761 * self->_countAttributeNgramPrefixMatch;
    if ((*&self->_has & 0x100) != 0)
    {
      goto LABEL_10;
    }

LABEL_23:
    v21 = 0;
    goto LABEL_24;
  }

LABEL_22:
  v16 = 0;
  if ((*&self->_has & 0x100) == 0)
  {
    goto LABEL_23;
  }

LABEL_10:
  unCalibratedEmbeddingSimilarity = self->_unCalibratedEmbeddingSimilarity;
  if (unCalibratedEmbeddingSimilarity >= 0.0)
  {
    v18 = unCalibratedEmbeddingSimilarity;
  }

  else
  {
    v18 = -unCalibratedEmbeddingSimilarity;
  }

  *v6.i64 = floor(v18 + 0.5);
  v19 = (v18 - *v6.i64) * 1.84467441e19;
  *v7.i64 = *v6.i64 - trunc(*v6.i64 * 5.42101086e-20) * 1.84467441e19;
  v20.f64[0] = NAN;
  v20.f64[1] = NAN;
  v6 = vbslq_s8(vnegq_f64(v20), v7, v6);
  v21 = 2654435761u * *v6.i64;
  if (v19 >= 0.0)
  {
    if (v19 > 0.0)
    {
      v21 += v19;
    }
  }

  else
  {
    v21 -= fabs(v19);
  }

LABEL_24:
  if ((*&self->_has & 0x200) != 0)
  {
    calibratedEmbeddingSimilarity = self->_calibratedEmbeddingSimilarity;
    if (calibratedEmbeddingSimilarity >= 0.0)
    {
      v24 = calibratedEmbeddingSimilarity;
    }

    else
    {
      v24 = -calibratedEmbeddingSimilarity;
    }

    *v6.i64 = floor(v24 + 0.5);
    v25 = (v24 - *v6.i64) * 1.84467441e19;
    *v7.i64 = *v6.i64 - trunc(*v6.i64 * 5.42101086e-20) * 1.84467441e19;
    v26.f64[0] = NAN;
    v26.f64[1] = NAN;
    v22 = 2654435761u * *vbslq_s8(vnegq_f64(v26), v7, v6).i64;
    if (v25 >= 0.0)
    {
      if (v25 > 0.0)
      {
        v22 += v25;
      }
    }

    else
    {
      v22 -= fabs(v25);
    }
  }

  else
  {
    v22 = 0;
  }

  return v10 ^ v9 ^ v11 ^ v12 ^ v13 ^ v14 ^ v15 ^ v16 ^ v21 ^ v22 ^ [(NSString *)self->_embeddingModelId hash:v3];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_46;
  }

  has = self->_has;
  v6 = equalCopy[28];
  if ((*&has & 1) != (v6 & 1))
  {
    goto LABEL_46;
  }

  if (*&has)
  {
    countAttributeQPQUMatch = self->_countAttributeQPQUMatch;
    if (countAttributeQPQUMatch != [equalCopy countAttributeQPQUMatch])
    {
      goto LABEL_46;
    }

    has = self->_has;
    v6 = equalCopy[28];
  }

  v8 = (*&has >> 1) & 1;
  if (v8 == ((v6 >> 1) & 1))
  {
    if (v8)
    {
      countAttributeQPQUprefixMatch = self->_countAttributeQPQUprefixMatch;
      if (countAttributeQPQUprefixMatch != [equalCopy countAttributeQPQUprefixMatch])
      {
        goto LABEL_46;
      }

      has = self->_has;
      v6 = equalCopy[28];
    }

    v10 = (*&has >> 2) & 1;
    if (v10 == ((v6 >> 2) & 1))
    {
      if (v10)
      {
        countAttributeUnigramMatch = self->_countAttributeUnigramMatch;
        if (countAttributeUnigramMatch != [equalCopy countAttributeUnigramMatch])
        {
          goto LABEL_46;
        }

        has = self->_has;
        v6 = equalCopy[28];
      }

      v12 = (*&has >> 3) & 1;
      if (v12 == ((v6 >> 3) & 1))
      {
        if (v12)
        {
          countAttributeBigramMatch = self->_countAttributeBigramMatch;
          if (countAttributeBigramMatch != [equalCopy countAttributeBigramMatch])
          {
            goto LABEL_46;
          }

          has = self->_has;
          v6 = equalCopy[28];
        }

        v14 = (*&has >> 4) & 1;
        if (v14 == ((v6 >> 4) & 1))
        {
          if (v14)
          {
            countAttributeNgramMatch = self->_countAttributeNgramMatch;
            if (countAttributeNgramMatch != [equalCopy countAttributeNgramMatch])
            {
              goto LABEL_46;
            }

            has = self->_has;
            v6 = equalCopy[28];
          }

          v16 = (*&has >> 5) & 1;
          if (v16 == ((v6 >> 5) & 1))
          {
            if (v16)
            {
              countAttributeUnigramPrefixMatch = self->_countAttributeUnigramPrefixMatch;
              if (countAttributeUnigramPrefixMatch != [equalCopy countAttributeUnigramPrefixMatch])
              {
                goto LABEL_46;
              }

              has = self->_has;
              v6 = equalCopy[28];
            }

            v18 = (*&has >> 6) & 1;
            if (v18 == ((v6 >> 6) & 1))
            {
              if (v18)
              {
                countAttributeBigramPrefixMatch = self->_countAttributeBigramPrefixMatch;
                if (countAttributeBigramPrefixMatch != [equalCopy countAttributeBigramPrefixMatch])
                {
                  goto LABEL_46;
                }

                has = self->_has;
                v6 = equalCopy[28];
              }

              v20 = (*&has >> 7) & 1;
              if (v20 == ((v6 >> 7) & 1))
              {
                if (v20)
                {
                  countAttributeNgramPrefixMatch = self->_countAttributeNgramPrefixMatch;
                  if (countAttributeNgramPrefixMatch != [equalCopy countAttributeNgramPrefixMatch])
                  {
                    goto LABEL_46;
                  }

                  has = self->_has;
                  v6 = equalCopy[28];
                }

                v22 = (*&has >> 8) & 1;
                if (v22 == ((v6 >> 8) & 1))
                {
                  if (v22)
                  {
                    unCalibratedEmbeddingSimilarity = self->_unCalibratedEmbeddingSimilarity;
                    [equalCopy unCalibratedEmbeddingSimilarity];
                    if (unCalibratedEmbeddingSimilarity != v24)
                    {
                      goto LABEL_46;
                    }

                    has = self->_has;
                    v6 = equalCopy[28];
                  }

                  v25 = (*&has >> 9) & 1;
                  if (v25 == ((v6 >> 9) & 1))
                  {
                    if (!v25 || (calibratedEmbeddingSimilarity = self->_calibratedEmbeddingSimilarity, [equalCopy calibratedEmbeddingSimilarity], calibratedEmbeddingSimilarity == v27))
                    {
                      embeddingModelId = [(STSchemaTopicalityAttributes *)self embeddingModelId];
                      embeddingModelId2 = [equalCopy embeddingModelId];
                      v30 = embeddingModelId2;
                      if ((embeddingModelId != 0) != (embeddingModelId2 == 0))
                      {
                        embeddingModelId3 = [(STSchemaTopicalityAttributes *)self embeddingModelId];
                        if (!embeddingModelId3)
                        {

LABEL_49:
                          v36 = 1;
                          goto LABEL_47;
                        }

                        v32 = embeddingModelId3;
                        embeddingModelId4 = [(STSchemaTopicalityAttributes *)self embeddingModelId];
                        embeddingModelId5 = [equalCopy embeddingModelId];
                        v35 = [embeddingModelId4 isEqual:embeddingModelId5];

                        if (v35)
                        {
                          goto LABEL_49;
                        }
                      }

                      else
                      {
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

LABEL_46:
  v36 = 0;
LABEL_47:

  return v36;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  has = self->_has;
  if (has)
  {
    PBDataWriterWriteUint32Field();
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_19;
    }
  }

  else if ((has & 2) == 0)
  {
    goto LABEL_3;
  }

  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_4:
    if ((has & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_20;
  }

LABEL_19:
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_5:
    if ((has & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_21;
  }

LABEL_20:
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_6:
    if ((has & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_22;
  }

LABEL_21:
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_7:
    if ((has & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_23;
  }

LABEL_22:
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_8:
    if ((has & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_24;
  }

LABEL_23:
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_9:
    if ((has & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_25;
  }

LABEL_24:
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x100) == 0)
  {
LABEL_10:
    if ((has & 0x200) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

LABEL_25:
  PBDataWriterWriteFloatField();
  if ((*&self->_has & 0x200) != 0)
  {
LABEL_11:
    PBDataWriterWriteFloatField();
  }

LABEL_12:
  embeddingModelId = [(STSchemaTopicalityAttributes *)self embeddingModelId];

  v6 = toCopy;
  if (embeddingModelId)
  {
    PBDataWriterWriteStringField();
    v6 = toCopy;
  }
}

- (void)setHasCalibratedEmbeddingSimilarity:(BOOL)similarity
{
  if (similarity)
  {
    v3 = 512;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFDFF | v3;
}

- (void)setHasUnCalibratedEmbeddingSimilarity:(BOOL)similarity
{
  if (similarity)
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFEFF | v3;
}

- (void)setHasCountAttributeNgramPrefixMatch:(BOOL)match
{
  if (match)
  {
    v3 = 128;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFF7F | v3;
}

- (void)setHasCountAttributeBigramPrefixMatch:(BOOL)match
{
  if (match)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFBF | v3;
}

- (void)setHasCountAttributeUnigramPrefixMatch:(BOOL)match
{
  if (match)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFDF | v3;
}

- (void)setHasCountAttributeNgramMatch:(BOOL)match
{
  if (match)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFEF | v3;
}

- (void)setHasCountAttributeBigramMatch:(BOOL)match
{
  if (match)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFF7 | v3;
}

- (void)setHasCountAttributeUnigramMatch:(BOOL)match
{
  if (match)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFB | v3;
}

- (void)setHasCountAttributeQPQUprefixMatch:(BOOL)match
{
  if (match)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFD | v3;
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end