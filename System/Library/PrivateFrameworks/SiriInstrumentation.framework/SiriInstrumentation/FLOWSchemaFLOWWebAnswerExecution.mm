@interface FLOWSchemaFLOWWebAnswerExecution
- (BOOL)isEqual:(id)a3;
- (FLOWSchemaFLOWWebAnswerExecution)initWithDictionary:(id)a3;
- (FLOWSchemaFLOWWebAnswerExecution)initWithJSON:(id)a3;
- (NSData)jsonData;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasAllowListType:(BOOL)a3;
- (void)setHasAnswerClass:(BOOL)a3;
- (void)setHasFuzzyMatchType:(BOOL)a3;
- (void)setHasQuality:(BOOL)a3;
- (void)setHasSubDomain:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation FLOWSchemaFLOWWebAnswerExecution

- (FLOWSchemaFLOWWebAnswerExecution)initWithDictionary:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = FLOWSchemaFLOWWebAnswerExecution;
  v5 = [(FLOWSchemaFLOWWebAnswerExecution *)&v14 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"answerType"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[FLOWSchemaFLOWWebAnswerExecution setAnswerType:](v5, "setAnswerType:", [v6 unsignedIntValue]);
    }

    v7 = [v4 objectForKeyedSubscript:@"allowListType"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[FLOWSchemaFLOWWebAnswerExecution setAllowListType:](v5, "setAllowListType:", [v7 unsignedIntValue]);
    }

    v8 = [v4 objectForKeyedSubscript:@"fuzzyMatchType"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[FLOWSchemaFLOWWebAnswerExecution setFuzzyMatchType:](v5, "setFuzzyMatchType:", [v8 unsignedIntValue]);
    }

    v9 = [v4 objectForKeyedSubscript:@"subDomain"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[FLOWSchemaFLOWWebAnswerExecution setSubDomain:](v5, "setSubDomain:", [v9 unsignedIntValue]);
    }

    v10 = [v4 objectForKeyedSubscript:@"quality"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[FLOWSchemaFLOWWebAnswerExecution setQuality:](v5, "setQuality:", [v10 unsignedIntValue]);
    }

    v11 = [v4 objectForKeyedSubscript:@"answerClass"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[FLOWSchemaFLOWWebAnswerExecution setAnswerClass:](v5, "setAnswerClass:", [v11 unsignedIntValue]);
    }

    v12 = v5;
  }

  return v5;
}

- (FLOWSchemaFLOWWebAnswerExecution)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(FLOWSchemaFLOWWebAnswerExecution *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(FLOWSchemaFLOWWebAnswerExecution *)self dictionaryRepresentation];
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
    v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[FLOWSchemaFLOWWebAnswerExecution allowListType](self, "allowListType")}];
    [v3 setObject:v7 forKeyedSubscript:@"allowListType"];

    has = self->_has;
    if ((has & 0x20) == 0)
    {
LABEL_3:
      if ((has & 1) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_13;
    }
  }

  else if ((*&self->_has & 0x20) == 0)
  {
    goto LABEL_3;
  }

  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[FLOWSchemaFLOWWebAnswerExecution answerClass](self, "answerClass")}];
  [v3 setObject:v8 forKeyedSubscript:@"answerClass"];

  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_4:
    if ((has & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_14;
  }

LABEL_13:
  v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[FLOWSchemaFLOWWebAnswerExecution answerType](self, "answerType")}];
  [v3 setObject:v9 forKeyedSubscript:@"answerType"];

  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_5:
    if ((has & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_15;
  }

LABEL_14:
  v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[FLOWSchemaFLOWWebAnswerExecution fuzzyMatchType](self, "fuzzyMatchType")}];
  [v3 setObject:v10 forKeyedSubscript:@"fuzzyMatchType"];

  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_6:
    if ((has & 8) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_15:
  v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[FLOWSchemaFLOWWebAnswerExecution quality](self, "quality")}];
  [v3 setObject:v11 forKeyedSubscript:@"quality"];

  if ((*&self->_has & 8) != 0)
  {
LABEL_7:
    v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[FLOWSchemaFLOWWebAnswerExecution subDomain](self, "subDomain")}];
    [v3 setObject:v5 forKeyedSubscript:@"subDomain"];
  }

LABEL_8:
  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v2 = 2654435761 * self->_answerType;
    if ((*&self->_has & 2) != 0)
    {
LABEL_3:
      v3 = 2654435761 * self->_allowListType;
      if ((*&self->_has & 4) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_10;
    }
  }

  else
  {
    v2 = 0;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }
  }

  v3 = 0;
  if ((*&self->_has & 4) != 0)
  {
LABEL_4:
    v4 = 2654435761 * self->_fuzzyMatchType;
    if ((*&self->_has & 8) != 0)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_10:
  v4 = 0;
  if ((*&self->_has & 8) != 0)
  {
LABEL_5:
    v5 = 2654435761 * self->_subDomain;
    if ((*&self->_has & 0x10) != 0)
    {
      goto LABEL_6;
    }

LABEL_12:
    v6 = 0;
    if ((*&self->_has & 0x20) != 0)
    {
      goto LABEL_7;
    }

LABEL_13:
    v7 = 0;
    return v3 ^ v2 ^ v4 ^ v5 ^ v6 ^ v7;
  }

LABEL_11:
  v5 = 0;
  if ((*&self->_has & 0x10) == 0)
  {
    goto LABEL_12;
  }

LABEL_6:
  v6 = 2654435761 * self->_quality;
  if ((*&self->_has & 0x20) == 0)
  {
    goto LABEL_13;
  }

LABEL_7:
  v7 = 2654435761 * self->_answerClass;
  return v3 ^ v2 ^ v4 ^ v5 ^ v6 ^ v7;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_26;
  }

  has = self->_has;
  v6 = v4[32];
  if ((*&has & 1) != (v6 & 1))
  {
    goto LABEL_26;
  }

  if (*&has)
  {
    answerType = self->_answerType;
    if (answerType != [v4 answerType])
    {
      goto LABEL_26;
    }

    has = self->_has;
    v6 = v4[32];
  }

  v8 = (*&has >> 1) & 1;
  if (v8 != ((v6 >> 1) & 1))
  {
    goto LABEL_26;
  }

  if (v8)
  {
    allowListType = self->_allowListType;
    if (allowListType != [v4 allowListType])
    {
      goto LABEL_26;
    }

    has = self->_has;
    v6 = v4[32];
  }

  v10 = (*&has >> 2) & 1;
  if (v10 != ((v6 >> 2) & 1))
  {
    goto LABEL_26;
  }

  if (v10)
  {
    fuzzyMatchType = self->_fuzzyMatchType;
    if (fuzzyMatchType != [v4 fuzzyMatchType])
    {
      goto LABEL_26;
    }

    has = self->_has;
    v6 = v4[32];
  }

  v12 = (*&has >> 3) & 1;
  if (v12 != ((v6 >> 3) & 1))
  {
    goto LABEL_26;
  }

  if (v12)
  {
    subDomain = self->_subDomain;
    if (subDomain != [v4 subDomain])
    {
      goto LABEL_26;
    }

    has = self->_has;
    v6 = v4[32];
  }

  v14 = (*&has >> 4) & 1;
  if (v14 != ((v6 >> 4) & 1))
  {
    goto LABEL_26;
  }

  if (v14)
  {
    quality = self->_quality;
    if (quality == [v4 quality])
    {
      has = self->_has;
      v6 = v4[32];
      goto LABEL_22;
    }

LABEL_26:
    v18 = 0;
    goto LABEL_27;
  }

LABEL_22:
  v16 = (*&has >> 5) & 1;
  if (v16 != ((v6 >> 5) & 1))
  {
    goto LABEL_26;
  }

  if (v16)
  {
    answerClass = self->_answerClass;
    if (answerClass != [v4 answerClass])
    {
      goto LABEL_26;
    }
  }

  v18 = 1;
LABEL_27:

  return v18;
}

- (void)writeTo:(id)a3
{
  v5 = a3;
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

      goto LABEL_13;
    }
  }

  else if ((*&self->_has & 2) == 0)
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

    goto LABEL_14;
  }

LABEL_13:
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_5:
    if ((has & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_15;
  }

LABEL_14:
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_6:
    if ((has & 0x20) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_15:
  PBDataWriterWriteUint32Field();
  if ((*&self->_has & 0x20) != 0)
  {
LABEL_7:
    PBDataWriterWriteUint32Field();
  }

LABEL_8:
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

  *&self->_has = *&self->_has & 0xDF | v3;
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

  *&self->_has = *&self->_has & 0xEF | v3;
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

  *&self->_has = *&self->_has & 0xF7 | v3;
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

  *&self->_has = *&self->_has & 0xFB | v3;
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

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end