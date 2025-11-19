@interface PEGASUSSchemaPEGASUSWebAnswerExecution
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (PEGASUSSchemaPEGASUSWebAnswerExecution)initWithDictionary:(id)a3;
- (PEGASUSSchemaPEGASUSWebAnswerExecution)initWithJSON:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (unsigned)contentAgeInSecondsAtIndex:(unint64_t)a3;
- (void)addContentAgeInSeconds:(unsigned int)a3;
- (void)setHasAllowListType:(BOOL)a3;
- (void)setHasAnswerClass:(BOOL)a3;
- (void)setHasFuzzyMatchType:(BOOL)a3;
- (void)setHasNumCallouts:(BOOL)a3;
- (void)setHasNumHighlights:(BOOL)a3;
- (void)setHasNumLinkedCallouts:(BOOL)a3;
- (void)setHasQuality:(BOOL)a3;
- (void)setHasSubDomain:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation PEGASUSSchemaPEGASUSWebAnswerExecution

- (PEGASUSSchemaPEGASUSWebAnswerExecution)initWithDictionary:(id)a3
{
  v38 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v36.receiver = self;
  v36.super_class = PEGASUSSchemaPEGASUSWebAnswerExecution;
  v5 = [(PEGASUSSchemaPEGASUSWebAnswerExecution *)&v36 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"answerType"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[PEGASUSSchemaPEGASUSWebAnswerExecution setAnswerType:](v5, "setAnswerType:", [v6 unsignedIntValue]);
    }

    v7 = [v4 objectForKeyedSubscript:@"allowListType"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[PEGASUSSchemaPEGASUSWebAnswerExecution setAllowListType:](v5, "setAllowListType:", [v7 unsignedIntValue]);
    }

    v8 = [v4 objectForKeyedSubscript:@"fuzzyMatchType"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[PEGASUSSchemaPEGASUSWebAnswerExecution setFuzzyMatchType:](v5, "setFuzzyMatchType:", [v8 unsignedIntValue]);
    }

    v9 = [v4 objectForKeyedSubscript:@"subDomain"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[PEGASUSSchemaPEGASUSWebAnswerExecution setSubDomain:](v5, "setSubDomain:", [v9 unsignedIntValue]);
    }

    v10 = [v4 objectForKeyedSubscript:@"quality"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[PEGASUSSchemaPEGASUSWebAnswerExecution setQuality:](v5, "setQuality:", [v10 unsignedIntValue]);
    }

    v11 = [v4 objectForKeyedSubscript:@"answerClass"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[PEGASUSSchemaPEGASUSWebAnswerExecution setAnswerClass:](v5, "setAnswerClass:", [v11 unsignedIntValue]);
    }

    v12 = [v4 objectForKeyedSubscript:@"numHighlights"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[PEGASUSSchemaPEGASUSWebAnswerExecution setNumHighlights:](v5, "setNumHighlights:", [v12 unsignedIntValue]);
    }

    v31 = v11;
    v13 = [v4 objectForKeyedSubscript:@"numCallouts"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[PEGASUSSchemaPEGASUSWebAnswerExecution setNumCallouts:](v5, "setNumCallouts:", [v13 unsignedIntValue]);
    }

    v29 = v13;
    v30 = v12;
    v14 = [v4 objectForKeyedSubscript:@"numLinkedCallouts"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[PEGASUSSchemaPEGASUSWebAnswerExecution setNumLinkedCallouts:](v5, "setNumLinkedCallouts:", [v14 unsignedIntValue]);
    }

    v15 = [v4 objectForKeyedSubscript:@"contentAgeInSeconds"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v24 = v10;
      v25 = v9;
      v26 = v8;
      v27 = v7;
      v28 = v6;
      v34 = 0u;
      v35 = 0u;
      v32 = 0u;
      v33 = 0u;
      v16 = v15;
      v17 = [v16 countByEnumeratingWithState:&v32 objects:v37 count:16];
      if (v17)
      {
        v18 = v17;
        v19 = *v33;
        do
        {
          v20 = 0;
          do
          {
            if (*v33 != v19)
            {
              objc_enumerationMutation(v16);
            }

            v21 = *(*(&v32 + 1) + 8 * v20);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              -[PEGASUSSchemaPEGASUSWebAnswerExecution addContentAgeInSeconds:](v5, "addContentAgeInSeconds:", [v21 unsignedIntValue]);
            }

            ++v20;
          }

          while (v18 != v20);
          v18 = [v16 countByEnumeratingWithState:&v32 objects:v37 count:16];
        }

        while (v18);
      }

      v7 = v27;
      v6 = v28;
      v9 = v25;
      v8 = v26;
      v10 = v24;
    }

    v22 = v5;
  }

  return v5;
}

- (PEGASUSSchemaPEGASUSWebAnswerExecution)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(PEGASUSSchemaPEGASUSWebAnswerExecution *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(PEGASUSSchemaPEGASUSWebAnswerExecution *)self dictionaryRepresentation];
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
    v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[PEGASUSSchemaPEGASUSWebAnswerExecution allowListType](self, "allowListType")}];
    [v3 setObject:v11 forKeyedSubscript:@"allowListType"];

    has = self->_has;
    if ((has & 0x20) == 0)
    {
LABEL_3:
      if ((has & 1) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((has & 0x20) == 0)
  {
    goto LABEL_3;
  }

  v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[PEGASUSSchemaPEGASUSWebAnswerExecution answerClass](self, "answerClass")}];
  [v3 setObject:v12 forKeyedSubscript:@"answerClass"];

  if (*&self->_has)
  {
LABEL_4:
    v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[PEGASUSSchemaPEGASUSWebAnswerExecution answerType](self, "answerType")}];
    [v3 setObject:v5 forKeyedSubscript:@"answerType"];
  }

LABEL_5:
  if ([(NSArray *)self->_contentAgeInSeconds count])
  {
    v6 = [(PEGASUSSchemaPEGASUSWebAnswerExecution *)self contentAgeInSeconds];
    v7 = [v6 copy];
    [v3 setObject:v7 forKeyedSubscript:@"contentAgeInSeconds"];
  }

  v8 = self->_has;
  if ((v8 & 4) != 0)
  {
    v13 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[PEGASUSSchemaPEGASUSWebAnswerExecution fuzzyMatchType](self, "fuzzyMatchType")}];
    [v3 setObject:v13 forKeyedSubscript:@"fuzzyMatchType"];

    v8 = self->_has;
    if ((v8 & 0x80) == 0)
    {
LABEL_9:
      if ((v8 & 0x40) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_22;
    }
  }

  else if ((v8 & 0x80) == 0)
  {
    goto LABEL_9;
  }

  v14 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[PEGASUSSchemaPEGASUSWebAnswerExecution numCallouts](self, "numCallouts")}];
  [v3 setObject:v14 forKeyedSubscript:@"numCallouts"];

  v8 = self->_has;
  if ((v8 & 0x40) == 0)
  {
LABEL_10:
    if ((v8 & 0x100) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_23;
  }

LABEL_22:
  v15 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[PEGASUSSchemaPEGASUSWebAnswerExecution numHighlights](self, "numHighlights")}];
  [v3 setObject:v15 forKeyedSubscript:@"numHighlights"];

  v8 = self->_has;
  if ((v8 & 0x100) == 0)
  {
LABEL_11:
    if ((v8 & 0x10) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_24;
  }

LABEL_23:
  v16 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[PEGASUSSchemaPEGASUSWebAnswerExecution numLinkedCallouts](self, "numLinkedCallouts")}];
  [v3 setObject:v16 forKeyedSubscript:@"numLinkedCallouts"];

  v8 = self->_has;
  if ((v8 & 0x10) == 0)
  {
LABEL_12:
    if ((v8 & 8) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

LABEL_24:
  v17 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[PEGASUSSchemaPEGASUSWebAnswerExecution quality](self, "quality")}];
  [v3 setObject:v17 forKeyedSubscript:@"quality"];

  if ((*&self->_has & 8) != 0)
  {
LABEL_13:
    v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[PEGASUSSchemaPEGASUSWebAnswerExecution subDomain](self, "subDomain")}];
    [v3 setObject:v9 forKeyedSubscript:@"subDomain"];
  }

LABEL_14:
  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
}

- (unint64_t)hash
{
  has = self->_has;
  if (has)
  {
    v7 = 2654435761 * self->_answerType;
    if ((has & 2) != 0)
    {
LABEL_3:
      v8 = 2654435761 * self->_allowListType;
      if ((has & 4) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_13;
    }
  }

  else
  {
    v7 = 0;
    if ((has & 2) != 0)
    {
      goto LABEL_3;
    }
  }

  v8 = 0;
  if ((has & 4) != 0)
  {
LABEL_4:
    v9 = 2654435761 * self->_fuzzyMatchType;
    if ((has & 8) != 0)
    {
      goto LABEL_5;
    }

    goto LABEL_14;
  }

LABEL_13:
  v9 = 0;
  if ((has & 8) != 0)
  {
LABEL_5:
    v10 = 2654435761 * self->_subDomain;
    if ((has & 0x10) != 0)
    {
      goto LABEL_6;
    }

    goto LABEL_15;
  }

LABEL_14:
  v10 = 0;
  if ((has & 0x10) != 0)
  {
LABEL_6:
    v11 = 2654435761 * self->_quality;
    if ((has & 0x20) != 0)
    {
      goto LABEL_7;
    }

    goto LABEL_16;
  }

LABEL_15:
  v11 = 0;
  if ((has & 0x20) != 0)
  {
LABEL_7:
    v12 = 2654435761 * self->_answerClass;
    if ((has & 0x40) != 0)
    {
      goto LABEL_8;
    }

    goto LABEL_17;
  }

LABEL_16:
  v12 = 0;
  if ((has & 0x40) != 0)
  {
LABEL_8:
    v13 = 2654435761 * self->_numHighlights;
    if ((has & 0x80) != 0)
    {
      goto LABEL_9;
    }

LABEL_18:
    v14 = 0;
    if ((*&self->_has & 0x100) != 0)
    {
      goto LABEL_10;
    }

LABEL_19:
    v15 = 0;
    return v8 ^ v7 ^ v9 ^ v10 ^ v11 ^ v12 ^ v13 ^ v14 ^ v15 ^ [(NSArray *)self->_contentAgeInSeconds hash:v3];
  }

LABEL_17:
  v13 = 0;
  if ((has & 0x80) == 0)
  {
    goto LABEL_18;
  }

LABEL_9:
  v14 = 2654435761 * self->_numCallouts;
  if ((*&self->_has & 0x100) == 0)
  {
    goto LABEL_19;
  }

LABEL_10:
  v15 = 2654435761 * self->_numLinkedCallouts;
  return v8 ^ v7 ^ v9 ^ v10 ^ v11 ^ v12 ^ v13 ^ v14 ^ v15 ^ [(NSArray *)self->_contentAgeInSeconds hash:v3];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_42;
  }

  has = self->_has;
  v6 = v4[28];
  if ((*&has & 1) != (v6 & 1))
  {
    goto LABEL_42;
  }

  if (*&has)
  {
    answerType = self->_answerType;
    if (answerType != [v4 answerType])
    {
      goto LABEL_42;
    }

    has = self->_has;
    v6 = v4[28];
  }

  v8 = (*&has >> 1) & 1;
  if (v8 == ((v6 >> 1) & 1))
  {
    if (v8)
    {
      allowListType = self->_allowListType;
      if (allowListType != [v4 allowListType])
      {
        goto LABEL_42;
      }

      has = self->_has;
      v6 = v4[28];
    }

    v10 = (*&has >> 2) & 1;
    if (v10 == ((v6 >> 2) & 1))
    {
      if (v10)
      {
        fuzzyMatchType = self->_fuzzyMatchType;
        if (fuzzyMatchType != [v4 fuzzyMatchType])
        {
          goto LABEL_42;
        }

        has = self->_has;
        v6 = v4[28];
      }

      v12 = (*&has >> 3) & 1;
      if (v12 == ((v6 >> 3) & 1))
      {
        if (v12)
        {
          subDomain = self->_subDomain;
          if (subDomain != [v4 subDomain])
          {
            goto LABEL_42;
          }

          has = self->_has;
          v6 = v4[28];
        }

        v14 = (*&has >> 4) & 1;
        if (v14 == ((v6 >> 4) & 1))
        {
          if (v14)
          {
            quality = self->_quality;
            if (quality != [v4 quality])
            {
              goto LABEL_42;
            }

            has = self->_has;
            v6 = v4[28];
          }

          v16 = (*&has >> 5) & 1;
          if (v16 == ((v6 >> 5) & 1))
          {
            if (v16)
            {
              answerClass = self->_answerClass;
              if (answerClass != [v4 answerClass])
              {
                goto LABEL_42;
              }

              has = self->_has;
              v6 = v4[28];
            }

            v18 = (*&has >> 6) & 1;
            if (v18 == ((v6 >> 6) & 1))
            {
              if (v18)
              {
                numHighlights = self->_numHighlights;
                if (numHighlights != [v4 numHighlights])
                {
                  goto LABEL_42;
                }

                has = self->_has;
                v6 = v4[28];
              }

              v20 = (*&has >> 7) & 1;
              if (v20 == ((v6 >> 7) & 1))
              {
                if (v20)
                {
                  numCallouts = self->_numCallouts;
                  if (numCallouts != [v4 numCallouts])
                  {
                    goto LABEL_42;
                  }

                  has = self->_has;
                  v6 = v4[28];
                }

                v22 = (*&has >> 8) & 1;
                if (v22 == ((v6 >> 8) & 1))
                {
                  if (!v22 || (numLinkedCallouts = self->_numLinkedCallouts, numLinkedCallouts == [v4 numLinkedCallouts]))
                  {
                    v24 = [(PEGASUSSchemaPEGASUSWebAnswerExecution *)self contentAgeInSeconds];
                    v25 = [v4 contentAgeInSeconds];
                    v26 = v25;
                    if ((v24 != 0) != (v25 == 0))
                    {
                      v27 = [(PEGASUSSchemaPEGASUSWebAnswerExecution *)self contentAgeInSeconds];
                      if (!v27)
                      {

LABEL_45:
                        v32 = 1;
                        goto LABEL_43;
                      }

                      v28 = v27;
                      v29 = [(PEGASUSSchemaPEGASUSWebAnswerExecution *)self contentAgeInSeconds];
                      v30 = [v4 contentAgeInSeconds];
                      v31 = [v29 isEqual:v30];

                      if (v31)
                      {
                        goto LABEL_45;
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

LABEL_42:
  v32 = 0;
LABEL_43:

  return v32;
}

- (void)writeTo:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a3;
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

      goto LABEL_21;
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

    goto LABEL_22;
  }

LABEL_21:
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_5:
    if ((has & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_23;
  }

LABEL_22:
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_6:
    if ((has & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_24;
  }

LABEL_23:
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_7:
    if ((has & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_25;
  }

LABEL_24:
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_8:
    if ((has & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_26;
  }

LABEL_25:
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_9:
    if ((has & 0x100) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

LABEL_26:
  PBDataWriterWriteUint32Field();
  if ((*&self->_has & 0x100) != 0)
  {
LABEL_10:
    PBDataWriterWriteUint32Field();
  }

LABEL_11:
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v6 = self->_contentAgeInSeconds;
  v7 = [(NSArray *)v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v12;
    do
    {
      v10 = 0;
      do
      {
        if (*v12 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [*(*(&v11 + 1) + 8 * v10) unsignedIntValue];
        PBDataWriterWriteUint32Field();
        ++v10;
      }

      while (v8 != v10);
      v8 = [(NSArray *)v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v8);
  }
}

- (unsigned)contentAgeInSecondsAtIndex:(unint64_t)a3
{
  v3 = [(NSArray *)self->_contentAgeInSeconds objectAtIndexedSubscript:a3];
  v4 = [v3 unsignedIntValue];

  return v4;
}

- (void)addContentAgeInSeconds:(unsigned int)a3
{
  v3 = *&a3;
  contentAgeInSeconds = self->_contentAgeInSeconds;
  if (!contentAgeInSeconds)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_contentAgeInSeconds;
    self->_contentAgeInSeconds = v6;

    contentAgeInSeconds = self->_contentAgeInSeconds;
  }

  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v3];
  [(NSArray *)contentAgeInSeconds addObject:v8];
}

- (void)setHasNumLinkedCallouts:(BOOL)a3
{
  if (a3)
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFEFF | v3;
}

- (void)setHasNumCallouts:(BOOL)a3
{
  if (a3)
  {
    v3 = 128;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFF7F | v3;
}

- (void)setHasNumHighlights:(BOOL)a3
{
  if (a3)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFBF | v3;
}

- (void)setHasAnswerClass:(BOOL)a3
{
  if (a3)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFDF | v3;
}

- (void)setHasQuality:(BOOL)a3
{
  if (a3)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFEF | v3;
}

- (void)setHasSubDomain:(BOOL)a3
{
  if (a3)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFF7 | v3;
}

- (void)setHasFuzzyMatchType:(BOOL)a3
{
  if (a3)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFB | v3;
}

- (void)setHasAllowListType:(BOOL)a3
{
  if (a3)
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