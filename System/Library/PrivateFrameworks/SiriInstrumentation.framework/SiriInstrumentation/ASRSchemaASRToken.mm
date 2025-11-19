@interface ASRSchemaASRToken
- (ASRSchemaASRToken)initWithDictionary:(id)a3;
- (ASRSchemaASRToken)initWithJSON:(id)a3;
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasAcousticCost:(BOOL)a3;
- (void)setHasAppendSpaceAfter:(BOOL)a3;
- (void)setHasConfidence:(BOOL)a3;
- (void)setHasEndTimeInNs:(BOOL)a3;
- (void)setHasGraphCost:(BOOL)a3;
- (void)setHasIsAutoPunctuation:(BOOL)a3;
- (void)setHasIsModifiedByAutoPunctuation:(BOOL)a3;
- (void)setHasSilenceStartTimeInNs:(BOOL)a3;
- (void)setHasStartTimeInNs:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation ASRSchemaASRToken

- (ASRSchemaASRToken)initWithDictionary:(id)a3
{
  v4 = a3;
  v35.receiver = self;
  v35.super_class = ASRSchemaASRToken;
  v5 = [(ASRSchemaASRToken *)&v35 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"linkIndex"];
    objc_opt_class();
    v32 = v6;
    if (objc_opt_isKindOfClass())
    {
      -[ASRSchemaASRToken setLinkIndex:](v5, "setLinkIndex:", [v6 unsignedIntValue]);
    }

    v7 = [v4 objectForKeyedSubscript:@"startTimeInNs"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ASRSchemaASRToken setStartTimeInNs:](v5, "setStartTimeInNs:", [v7 unsignedLongLongValue]);
    }

    v8 = [v4 objectForKeyedSubscript:@"endTimeInNs"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ASRSchemaASRToken setEndTimeInNs:](v5, "setEndTimeInNs:", [v8 unsignedLongLongValue]);
    }

    v9 = [v4 objectForKeyedSubscript:@"appendSpaceAfter"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ASRSchemaASRToken setAppendSpaceAfter:](v5, "setAppendSpaceAfter:", [v9 BOOLValue]);
    }

    v10 = [v4 objectForKeyedSubscript:@"silenceStartTimeInNs"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ASRSchemaASRToken setSilenceStartTimeInNs:](v5, "setSilenceStartTimeInNs:", [v10 unsignedLongLongValue]);
    }

    v11 = [v4 objectForKeyedSubscript:@"confidence"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ASRSchemaASRToken setConfidence:](v5, "setConfidence:", [v11 intValue]);
    }

    v12 = [v4 objectForKeyedSubscript:@"punctuationText"];
    objc_opt_class();
    v34 = v12;
    if (objc_opt_isKindOfClass())
    {
      v13 = v5;
      v14 = v11;
      v15 = v10;
      v16 = [v34 copy];
      [(ASRSchemaASRToken *)v13 setPunctuationText:v16];

      v10 = v15;
      v11 = v14;
      v5 = v13;
    }

    v17 = [v4 objectForKeyedSubscript:@"isAutoPunctuation"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ASRSchemaASRToken setIsAutoPunctuation:](v5, "setIsAutoPunctuation:", [v17 BOOLValue]);
    }

    v18 = [v4 objectForKeyedSubscript:@"isModifiedByAutoPunctuation"];
    objc_opt_class();
    v33 = v18;
    if (objc_opt_isKindOfClass())
    {
      -[ASRSchemaASRToken setIsModifiedByAutoPunctuation:](v5, "setIsModifiedByAutoPunctuation:", [v18 BOOLValue]);
    }

    v31 = v17;
    v19 = [v4 objectForKeyedSubscript:@"graphCost"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v19 doubleValue];
      [(ASRSchemaASRToken *)v5 setGraphCost:?];
    }

    v20 = [v4 objectForKeyedSubscript:@"acousticCost"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v20 doubleValue];
      [(ASRSchemaASRToken *)v5 setAcousticCost:?];
    }

    v21 = [v4 objectForKeyedSubscript:@"entityMetadata"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v30 = v11;
      v22 = v10;
      v23 = v9;
      v24 = v8;
      v25 = v7;
      v26 = v19;
      v27 = [[ASRSchemaASREntityMetadata alloc] initWithDictionary:v21];
      [(ASRSchemaASRToken *)v5 setEntityMetadata:v27];

      v19 = v26;
      v7 = v25;
      v8 = v24;
      v9 = v23;
      v10 = v22;
      v11 = v30;
    }

    v28 = v5;
  }

  return v5;
}

- (ASRSchemaASRToken)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(ASRSchemaASRToken *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(ASRSchemaASRToken *)self dictionaryRepresentation];
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
  if ((has & 0x200) != 0)
  {
    v8 = MEMORY[0x1E696AD98];
    [(ASRSchemaASRToken *)self acousticCost];
    v9 = [v8 numberWithDouble:?];
    [v3 setObject:v9 forKeyedSubscript:@"acousticCost"];

    has = self->_has;
    if ((has & 8) == 0)
    {
LABEL_3:
      if ((has & 0x20) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else if ((has & 8) == 0)
  {
    goto LABEL_3;
  }

  v10 = [MEMORY[0x1E696AD98] numberWithBool:{-[ASRSchemaASRToken appendSpaceAfter](self, "appendSpaceAfter")}];
  [v3 setObject:v10 forKeyedSubscript:@"appendSpaceAfter"];

  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_4:
    if ((has & 4) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_11:
  v11 = [MEMORY[0x1E696AD98] numberWithInt:{-[ASRSchemaASRToken confidence](self, "confidence")}];
  [v3 setObject:v11 forKeyedSubscript:@"confidence"];

  if ((*&self->_has & 4) != 0)
  {
LABEL_5:
    v5 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[ASRSchemaASRToken endTimeInNs](self, "endTimeInNs")}];
    [v3 setObject:v5 forKeyedSubscript:@"endTimeInNs"];
  }

LABEL_6:
  if (self->_entityMetadata)
  {
    v6 = [(ASRSchemaASRToken *)self entityMetadata];
    v7 = [v6 dictionaryRepresentation];
    if (v7)
    {
      [v3 setObject:v7 forKeyedSubscript:@"entityMetadata"];
    }

    else
    {
      v12 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v12 forKeyedSubscript:@"entityMetadata"];
    }
  }

  v13 = self->_has;
  if ((v13 & 0x100) != 0)
  {
    v21 = MEMORY[0x1E696AD98];
    [(ASRSchemaASRToken *)self graphCost];
    v22 = [v21 numberWithDouble:?];
    [v3 setObject:v22 forKeyedSubscript:@"graphCost"];

    v13 = self->_has;
    if ((v13 & 0x40) == 0)
    {
LABEL_17:
      if ((v13 & 0x80) == 0)
      {
        goto LABEL_18;
      }

      goto LABEL_31;
    }
  }

  else if ((v13 & 0x40) == 0)
  {
    goto LABEL_17;
  }

  v23 = [MEMORY[0x1E696AD98] numberWithBool:{-[ASRSchemaASRToken isAutoPunctuation](self, "isAutoPunctuation")}];
  [v3 setObject:v23 forKeyedSubscript:@"isAutoPunctuation"];

  v13 = self->_has;
  if ((v13 & 0x80) == 0)
  {
LABEL_18:
    if ((v13 & 1) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

LABEL_31:
  v24 = [MEMORY[0x1E696AD98] numberWithBool:{-[ASRSchemaASRToken isModifiedByAutoPunctuation](self, "isModifiedByAutoPunctuation")}];
  [v3 setObject:v24 forKeyedSubscript:@"isModifiedByAutoPunctuation"];

  if (*&self->_has)
  {
LABEL_19:
    v14 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[ASRSchemaASRToken linkIndex](self, "linkIndex")}];
    [v3 setObject:v14 forKeyedSubscript:@"linkIndex"];
  }

LABEL_20:
  if (self->_punctuationText)
  {
    v15 = [(ASRSchemaASRToken *)self punctuationText];
    v16 = [v15 copy];
    [v3 setObject:v16 forKeyedSubscript:@"punctuationText"];
  }

  v17 = self->_has;
  if ((v17 & 0x10) != 0)
  {
    v18 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[ASRSchemaASRToken silenceStartTimeInNs](self, "silenceStartTimeInNs")}];
    [v3 setObject:v18 forKeyedSubscript:@"silenceStartTimeInNs"];

    v17 = self->_has;
  }

  if ((v17 & 2) != 0)
  {
    v19 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[ASRSchemaASRToken startTimeInNs](self, "startTimeInNs")}];
    [v3 setObject:v19 forKeyedSubscript:@"startTimeInNs"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
}

- (unint64_t)hash
{
  has = self->_has;
  if (has)
  {
    v4 = 2654435761 * self->_linkIndex;
    if ((has & 2) != 0)
    {
LABEL_3:
      v5 = 2654435761u * self->_startTimeInNs;
      if ((has & 4) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_10;
    }
  }

  else
  {
    v4 = 0;
    if ((has & 2) != 0)
    {
      goto LABEL_3;
    }
  }

  v5 = 0;
  if ((has & 4) != 0)
  {
LABEL_4:
    v6 = 2654435761u * self->_endTimeInNs;
    if ((has & 8) != 0)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_10:
  v6 = 0;
  if ((has & 8) != 0)
  {
LABEL_5:
    v7 = 2654435761 * self->_appendSpaceAfter;
    if ((has & 0x10) != 0)
    {
      goto LABEL_6;
    }

LABEL_12:
    v8 = 0;
    if ((has & 0x20) != 0)
    {
      goto LABEL_7;
    }

    goto LABEL_13;
  }

LABEL_11:
  v7 = 0;
  if ((has & 0x10) == 0)
  {
    goto LABEL_12;
  }

LABEL_6:
  v8 = 2654435761u * self->_silenceStartTimeInNs;
  if ((has & 0x20) != 0)
  {
LABEL_7:
    v9 = 2654435761 * self->_confidence;
    goto LABEL_14;
  }

LABEL_13:
  v9 = 0;
LABEL_14:
  v10 = [(NSString *)self->_punctuationText hash];
  v13 = self->_has;
  if ((v13 & 0x40) == 0)
  {
    v14 = 0;
    if ((v13 & 0x80) != 0)
    {
      goto LABEL_16;
    }

LABEL_22:
    v15 = 0;
    if ((*&self->_has & 0x100) != 0)
    {
      goto LABEL_17;
    }

LABEL_23:
    v19 = 0;
    goto LABEL_24;
  }

  v14 = 2654435761 * self->_isAutoPunctuation;
  if ((v13 & 0x80) == 0)
  {
    goto LABEL_22;
  }

LABEL_16:
  v15 = 2654435761 * self->_isModifiedByAutoPunctuation;
  if ((*&self->_has & 0x100) == 0)
  {
    goto LABEL_23;
  }

LABEL_17:
  graphCost = self->_graphCost;
  if (graphCost < 0.0)
  {
    graphCost = -graphCost;
  }

  *v11.i64 = floor(graphCost + 0.5);
  v17 = (graphCost - *v11.i64) * 1.84467441e19;
  *v12.i64 = *v11.i64 - trunc(*v11.i64 * 5.42101086e-20) * 1.84467441e19;
  v18.f64[0] = NAN;
  v18.f64[1] = NAN;
  v11 = vbslq_s8(vnegq_f64(v18), v12, v11);
  v19 = 2654435761u * *v11.i64;
  if (v17 >= 0.0)
  {
    if (v17 > 0.0)
    {
      v19 += v17;
    }
  }

  else
  {
    v19 -= fabs(v17);
  }

LABEL_24:
  if ((*&self->_has & 0x200) != 0)
  {
    acousticCost = self->_acousticCost;
    if (acousticCost < 0.0)
    {
      acousticCost = -acousticCost;
    }

    *v11.i64 = floor(acousticCost + 0.5);
    v22 = (acousticCost - *v11.i64) * 1.84467441e19;
    *v12.i64 = *v11.i64 - trunc(*v11.i64 * 5.42101086e-20) * 1.84467441e19;
    v23.f64[0] = NAN;
    v23.f64[1] = NAN;
    v20 = 2654435761u * *vbslq_s8(vnegq_f64(v23), v12, v11).i64;
    if (v22 >= 0.0)
    {
      if (v22 > 0.0)
      {
        v20 += v22;
      }
    }

    else
    {
      v20 -= fabs(v22);
    }
  }

  else
  {
    v20 = 0;
  }

  return v5 ^ v4 ^ v6 ^ v7 ^ v8 ^ v9 ^ v14 ^ v15 ^ v19 ^ v20 ^ v10 ^ [(ASRSchemaASREntityMetadata *)self->_entityMetadata hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_50;
  }

  has = self->_has;
  v6 = v4[48];
  if ((*&has & 1) != (v6 & 1))
  {
    goto LABEL_50;
  }

  if (*&has)
  {
    linkIndex = self->_linkIndex;
    if (linkIndex != [v4 linkIndex])
    {
      goto LABEL_50;
    }

    has = self->_has;
    v6 = v4[48];
  }

  v8 = (*&has >> 1) & 1;
  if (v8 != ((v6 >> 1) & 1))
  {
    goto LABEL_50;
  }

  if (v8)
  {
    startTimeInNs = self->_startTimeInNs;
    if (startTimeInNs != [v4 startTimeInNs])
    {
      goto LABEL_50;
    }

    has = self->_has;
    v6 = v4[48];
  }

  v10 = (*&has >> 2) & 1;
  if (v10 != ((v6 >> 2) & 1))
  {
    goto LABEL_50;
  }

  if (v10)
  {
    endTimeInNs = self->_endTimeInNs;
    if (endTimeInNs != [v4 endTimeInNs])
    {
      goto LABEL_50;
    }

    has = self->_has;
    v6 = v4[48];
  }

  v12 = (*&has >> 3) & 1;
  if (v12 != ((v6 >> 3) & 1))
  {
    goto LABEL_50;
  }

  if (v12)
  {
    appendSpaceAfter = self->_appendSpaceAfter;
    if (appendSpaceAfter != [v4 appendSpaceAfter])
    {
      goto LABEL_50;
    }

    has = self->_has;
    v6 = v4[48];
  }

  v14 = (*&has >> 4) & 1;
  if (v14 != ((v6 >> 4) & 1))
  {
    goto LABEL_50;
  }

  if (v14)
  {
    silenceStartTimeInNs = self->_silenceStartTimeInNs;
    if (silenceStartTimeInNs != [v4 silenceStartTimeInNs])
    {
      goto LABEL_50;
    }

    has = self->_has;
    v6 = v4[48];
  }

  v16 = (*&has >> 5) & 1;
  if (v16 != ((v6 >> 5) & 1))
  {
    goto LABEL_50;
  }

  if (v16)
  {
    confidence = self->_confidence;
    if (confidence != [v4 confidence])
    {
      goto LABEL_50;
    }
  }

  v18 = [(ASRSchemaASRToken *)self punctuationText];
  v19 = [v4 punctuationText];
  if ((v18 != 0) == (v19 == 0))
  {
    goto LABEL_49;
  }

  v20 = [(ASRSchemaASRToken *)self punctuationText];
  if (v20)
  {
    v21 = v20;
    v22 = [(ASRSchemaASRToken *)self punctuationText];
    v23 = [v4 punctuationText];
    v24 = [v22 isEqual:v23];

    if (!v24)
    {
      goto LABEL_50;
    }
  }

  else
  {
  }

  v25 = self->_has;
  v26 = (*&v25 >> 6) & 1;
  v27 = v4[48];
  if (v26 != ((v27 >> 6) & 1))
  {
    goto LABEL_50;
  }

  if (v26)
  {
    isAutoPunctuation = self->_isAutoPunctuation;
    if (isAutoPunctuation != [v4 isAutoPunctuation])
    {
      goto LABEL_50;
    }

    v25 = self->_has;
    v27 = v4[48];
  }

  v29 = (*&v25 >> 7) & 1;
  if (v29 != ((v27 >> 7) & 1))
  {
    goto LABEL_50;
  }

  if (v29)
  {
    isModifiedByAutoPunctuation = self->_isModifiedByAutoPunctuation;
    if (isModifiedByAutoPunctuation != [v4 isModifiedByAutoPunctuation])
    {
      goto LABEL_50;
    }

    v25 = self->_has;
    v27 = v4[48];
  }

  v31 = (*&v25 >> 8) & 1;
  if (v31 != ((v27 >> 8) & 1))
  {
    goto LABEL_50;
  }

  if (v31)
  {
    graphCost = self->_graphCost;
    [v4 graphCost];
    if (graphCost != v33)
    {
      goto LABEL_50;
    }

    v25 = self->_has;
    v27 = v4[48];
  }

  v34 = (*&v25 >> 9) & 1;
  if (v34 != ((v27 >> 9) & 1))
  {
    goto LABEL_50;
  }

  if (v34)
  {
    acousticCost = self->_acousticCost;
    [v4 acousticCost];
    if (acousticCost != v36)
    {
      goto LABEL_50;
    }
  }

  v18 = [(ASRSchemaASRToken *)self entityMetadata];
  v19 = [v4 entityMetadata];
  if ((v18 != 0) == (v19 == 0))
  {
LABEL_49:

    goto LABEL_50;
  }

  v37 = [(ASRSchemaASRToken *)self entityMetadata];
  if (!v37)
  {

LABEL_53:
    v42 = 1;
    goto LABEL_51;
  }

  v38 = v37;
  v39 = [(ASRSchemaASRToken *)self entityMetadata];
  v40 = [v4 entityMetadata];
  v41 = [v39 isEqual:v40];

  if (v41)
  {
    goto LABEL_53;
  }

LABEL_50:
  v42 = 0;
LABEL_51:

  return v42;
}

- (void)writeTo:(id)a3
{
  v10 = a3;
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

      goto LABEL_22;
    }
  }

  else if ((has & 2) == 0)
  {
    goto LABEL_3;
  }

  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_4:
    if ((has & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_23;
  }

LABEL_22:
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_5:
    if ((has & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_24;
  }

LABEL_23:
  PBDataWriterWriteBOOLField();
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

LABEL_24:
  PBDataWriterWriteUint64Field();
  if ((*&self->_has & 0x20) != 0)
  {
LABEL_7:
    PBDataWriterWriteInt32Field();
  }

LABEL_8:
  v5 = [(ASRSchemaASRToken *)self punctuationText];

  if (v5)
  {
    PBDataWriterWriteStringField();
  }

  v6 = self->_has;
  if ((v6 & 0x40) != 0)
  {
    PBDataWriterWriteBOOLField();
    v6 = self->_has;
    if ((v6 & 0x80) == 0)
    {
LABEL_12:
      if ((v6 & 0x100) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_28;
    }
  }

  else if ((v6 & 0x80) == 0)
  {
    goto LABEL_12;
  }

  PBDataWriterWriteBOOLField();
  v6 = self->_has;
  if ((v6 & 0x100) == 0)
  {
LABEL_13:
    if ((v6 & 0x200) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

LABEL_28:
  PBDataWriterWriteDoubleField();
  if ((*&self->_has & 0x200) != 0)
  {
LABEL_14:
    PBDataWriterWriteDoubleField();
  }

LABEL_15:
  v7 = [(ASRSchemaASRToken *)self entityMetadata];

  v8 = v10;
  if (v7)
  {
    v9 = [(ASRSchemaASRToken *)self entityMetadata];
    PBDataWriterWriteSubmessage();

    v8 = v10;
  }
}

- (void)setHasAcousticCost:(BOOL)a3
{
  if (a3)
  {
    v3 = 512;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFDFF | v3;
}

- (void)setHasGraphCost:(BOOL)a3
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

- (void)setHasIsModifiedByAutoPunctuation:(BOOL)a3
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

- (void)setHasIsAutoPunctuation:(BOOL)a3
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

- (void)setHasConfidence:(BOOL)a3
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

- (void)setHasSilenceStartTimeInNs:(BOOL)a3
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

- (void)setHasAppendSpaceAfter:(BOOL)a3
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

- (void)setHasEndTimeInNs:(BOOL)a3
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

- (void)setHasStartTimeInNs:(BOOL)a3
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

- (id)applySensitiveConditionsPolicy:(id)a3
{
  v9.receiver = self;
  v9.super_class = ASRSchemaASRToken;
  v4 = a3;
  v5 = [(SISchemaInstrumentationMessage *)&v9 applySensitiveConditionsPolicy:v4];
  v6 = [(ASRSchemaASRToken *)self entityMetadata:v9.receiver];
  v7 = [v6 applySensitiveConditionsPolicy:v4];

  LODWORD(v4) = [v7 suppressMessage];
  if (v4)
  {
    [(ASRSchemaASRToken *)self deleteEntityMetadata];
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