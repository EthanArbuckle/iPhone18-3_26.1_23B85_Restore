@interface POMMESSchemaPOMMESRequestResult
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (POMMESSchemaPOMMESRequestResult)initWithDictionary:(id)a3;
- (POMMESSchemaPOMMESRequestResult)initWithJSON:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasIsFromResponseCache:(BOOL)a3;
- (void)setHasIsLowConfidenceKnowledgeResult:(BOOL)a3;
- (void)setHasIsQueryDirectQuestion:(BOOL)a3;
- (void)setHasPegasusPromptType:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation POMMESSchemaPOMMESRequestResult

- (POMMESSchemaPOMMESRequestResult)initWithDictionary:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = POMMESSchemaPOMMESRequestResult;
  v5 = [(POMMESSchemaPOMMESRequestResult *)&v15 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"pommesConfidenceScore"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v6 doubleValue];
      [(POMMESSchemaPOMMESRequestResult *)v5 setPommesConfidenceScore:?];
    }

    v7 = [v4 objectForKeyedSubscript:@"pegasusDomain"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = [v7 copy];
      [(POMMESSchemaPOMMESRequestResult *)v5 setPegasusDomain:v8];
    }

    v9 = [v4 objectForKeyedSubscript:@"isFromResponseCache"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[POMMESSchemaPOMMESRequestResult setIsFromResponseCache:](v5, "setIsFromResponseCache:", [v9 BOOLValue]);
    }

    v10 = [v4 objectForKeyedSubscript:@"pegasusPromptType"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[POMMESSchemaPOMMESRequestResult setPegasusPromptType:](v5, "setPegasusPromptType:", [v10 intValue]);
    }

    v11 = [v4 objectForKeyedSubscript:@"isLowConfidenceKnowledgeResult"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[POMMESSchemaPOMMESRequestResult setIsLowConfidenceKnowledgeResult:](v5, "setIsLowConfidenceKnowledgeResult:", [v11 BOOLValue]);
    }

    v12 = [v4 objectForKeyedSubscript:@"isQueryDirectQuestion"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[POMMESSchemaPOMMESRequestResult setIsQueryDirectQuestion:](v5, "setIsQueryDirectQuestion:", [v12 BOOLValue]);
    }

    v13 = v5;
  }

  return v5;
}

- (POMMESSchemaPOMMESRequestResult)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(POMMESSchemaPOMMESRequestResult *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(POMMESSchemaPOMMESRequestResult *)self dictionaryRepresentation];
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
  v4 = *(&self->_isQueryDirectQuestion + 1);
  if ((v4 & 2) != 0)
  {
    v15 = [MEMORY[0x1E696AD98] numberWithBool:{-[POMMESSchemaPOMMESRequestResult isFromResponseCache](self, "isFromResponseCache")}];
    [v3 setObject:v15 forKeyedSubscript:@"isFromResponseCache"];

    v4 = *(&self->_isQueryDirectQuestion + 1);
    if ((v4 & 8) == 0)
    {
LABEL_3:
      if ((v4 & 0x10) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*(&self->_isQueryDirectQuestion + 1) & 8) == 0)
  {
    goto LABEL_3;
  }

  v16 = [MEMORY[0x1E696AD98] numberWithBool:{-[POMMESSchemaPOMMESRequestResult isLowConfidenceKnowledgeResult](self, "isLowConfidenceKnowledgeResult")}];
  [v3 setObject:v16 forKeyedSubscript:@"isLowConfidenceKnowledgeResult"];

  if ((*(&self->_isQueryDirectQuestion + 1) & 0x10) != 0)
  {
LABEL_4:
    v5 = [MEMORY[0x1E696AD98] numberWithBool:{-[POMMESSchemaPOMMESRequestResult isQueryDirectQuestion](self, "isQueryDirectQuestion")}];
    [v3 setObject:v5 forKeyedSubscript:@"isQueryDirectQuestion"];
  }

LABEL_5:
  if (self->_pegasusDomain)
  {
    v6 = [(POMMESSchemaPOMMESRequestResult *)self pegasusDomain];
    v7 = [v6 copy];
    [v3 setObject:v7 forKeyedSubscript:@"pegasusDomain"];
  }

  v8 = *(&self->_isQueryDirectQuestion + 1);
  if ((v8 & 4) != 0)
  {
    v9 = [(POMMESSchemaPOMMESRequestResult *)self pegasusPromptType];
    v10 = @"POMMESPEGASUSPROMPTTYPE_UNKNOWN";
    if (v9 == 1)
    {
      v10 = @"POMMESPEGASUSPROMPTTYPE_SHARE_DEVICE_LOCATION";
    }

    if (v9 == 2)
    {
      v11 = @"POMMESPEGASUSPROMPTTYPE_SHARE_PRECISE_DEVICE_LOCATION";
    }

    else
    {
      v11 = v10;
    }

    [v3 setObject:v11 forKeyedSubscript:@"pegasusPromptType"];
    v8 = *(&self->_isQueryDirectQuestion + 1);
  }

  if (v8)
  {
    v12 = MEMORY[0x1E696AD98];
    [(POMMESSchemaPOMMESRequestResult *)self pommesConfidenceScore];
    v13 = [v12 numberWithDouble:?];
    [v3 setObject:v13 forKeyedSubscript:@"pommesConfidenceScore"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
}

- (unint64_t)hash
{
  if (*(&self->_isQueryDirectQuestion + 1))
  {
    pommesConfidenceScore = self->_pommesConfidenceScore;
    if (pommesConfidenceScore < 0.0)
    {
      pommesConfidenceScore = -pommesConfidenceScore;
    }

    *v2.i64 = floor(pommesConfidenceScore + 0.5);
    v7 = (pommesConfidenceScore - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v8.f64[0] = NAN;
    v8.f64[1] = NAN;
    v5 = 2654435761u * *vbslq_s8(vnegq_f64(v8), v3, v2).i64;
    if (v7 >= 0.0)
    {
      if (v7 > 0.0)
      {
        v5 += v7;
      }
    }

    else
    {
      v5 -= fabs(v7);
    }
  }

  else
  {
    v5 = 0;
  }

  v9 = [(NSString *)self->_pegasusDomain hash];
  if ((*(&self->_isQueryDirectQuestion + 1) & 2) != 0)
  {
    v10 = 2654435761 * self->_isFromResponseCache;
    if ((*(&self->_isQueryDirectQuestion + 1) & 4) != 0)
    {
LABEL_11:
      v11 = 2654435761 * self->_pegasusPromptType;
      if ((*(&self->_isQueryDirectQuestion + 1) & 8) != 0)
      {
        goto LABEL_12;
      }

LABEL_16:
      v12 = 0;
      if ((*(&self->_isQueryDirectQuestion + 1) & 0x10) != 0)
      {
        goto LABEL_13;
      }

LABEL_17:
      v13 = 0;
      return v9 ^ v5 ^ v10 ^ v11 ^ v12 ^ v13;
    }
  }

  else
  {
    v10 = 0;
    if ((*(&self->_isQueryDirectQuestion + 1) & 4) != 0)
    {
      goto LABEL_11;
    }
  }

  v11 = 0;
  if ((*(&self->_isQueryDirectQuestion + 1) & 8) == 0)
  {
    goto LABEL_16;
  }

LABEL_12:
  v12 = 2654435761 * self->_isLowConfidenceKnowledgeResult;
  if ((*(&self->_isQueryDirectQuestion + 1) & 0x10) == 0)
  {
    goto LABEL_17;
  }

LABEL_13:
  v13 = 2654435761 * self->_isQueryDirectQuestion;
  return v9 ^ v5 ^ v10 ^ v11 ^ v12 ^ v13;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_27;
  }

  if (*(&self->_isQueryDirectQuestion + 1) != (v4[34] & 1))
  {
    goto LABEL_27;
  }

  if (*(&self->_isQueryDirectQuestion + 1))
  {
    pommesConfidenceScore = self->_pommesConfidenceScore;
    [v4 pommesConfidenceScore];
    if (pommesConfidenceScore != v6)
    {
      goto LABEL_27;
    }
  }

  v7 = [(POMMESSchemaPOMMESRequestResult *)self pegasusDomain];
  v8 = [v4 pegasusDomain];
  v9 = v8;
  if ((v7 != 0) == (v8 == 0))
  {

    goto LABEL_27;
  }

  v10 = [(POMMESSchemaPOMMESRequestResult *)self pegasusDomain];
  if (v10)
  {
    v11 = v10;
    v12 = [(POMMESSchemaPOMMESRequestResult *)self pegasusDomain];
    v13 = [v4 pegasusDomain];
    v14 = [v12 isEqual:v13];

    if (!v14)
    {
      goto LABEL_27;
    }
  }

  else
  {
  }

  v15 = *(&self->_isQueryDirectQuestion + 1);
  v16 = (v15 >> 1) & 1;
  v17 = v4[34];
  if (v16 != ((v17 >> 1) & 1))
  {
LABEL_27:
    v25 = 0;
    goto LABEL_28;
  }

  if (v16)
  {
    isFromResponseCache = self->_isFromResponseCache;
    if (isFromResponseCache != [v4 isFromResponseCache])
    {
      goto LABEL_27;
    }

    v15 = *(&self->_isQueryDirectQuestion + 1);
    v17 = v4[34];
  }

  v19 = (v15 >> 2) & 1;
  if (v19 != ((v17 >> 2) & 1))
  {
    goto LABEL_27;
  }

  if (v19)
  {
    pegasusPromptType = self->_pegasusPromptType;
    if (pegasusPromptType != [v4 pegasusPromptType])
    {
      goto LABEL_27;
    }

    v15 = *(&self->_isQueryDirectQuestion + 1);
    v17 = v4[34];
  }

  v21 = (v15 >> 3) & 1;
  if (v21 != ((v17 >> 3) & 1))
  {
    goto LABEL_27;
  }

  if (v21)
  {
    isLowConfidenceKnowledgeResult = self->_isLowConfidenceKnowledgeResult;
    if (isLowConfidenceKnowledgeResult == [v4 isLowConfidenceKnowledgeResult])
    {
      v15 = *(&self->_isQueryDirectQuestion + 1);
      v17 = v4[34];
      goto LABEL_23;
    }

    goto LABEL_27;
  }

LABEL_23:
  v23 = (v15 >> 4) & 1;
  if (v23 != ((v17 >> 4) & 1))
  {
    goto LABEL_27;
  }

  if (v23)
  {
    isQueryDirectQuestion = self->_isQueryDirectQuestion;
    if (isQueryDirectQuestion != [v4 isQueryDirectQuestion])
    {
      goto LABEL_27;
    }
  }

  v25 = 1;
LABEL_28:

  return v25;
}

- (void)writeTo:(id)a3
{
  v6 = a3;
  if (*(&self->_isQueryDirectQuestion + 1))
  {
    PBDataWriterWriteDoubleField();
  }

  v4 = [(POMMESSchemaPOMMESRequestResult *)self pegasusDomain];

  if (v4)
  {
    PBDataWriterWriteStringField();
  }

  v5 = *(&self->_isQueryDirectQuestion + 1);
  if ((v5 & 2) != 0)
  {
    PBDataWriterWriteBOOLField();
    v5 = *(&self->_isQueryDirectQuestion + 1);
    if ((v5 & 4) == 0)
    {
LABEL_7:
      if ((v5 & 8) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_15;
    }
  }

  else if ((*(&self->_isQueryDirectQuestion + 1) & 4) == 0)
  {
    goto LABEL_7;
  }

  PBDataWriterWriteInt32Field();
  v5 = *(&self->_isQueryDirectQuestion + 1);
  if ((v5 & 8) == 0)
  {
LABEL_8:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

LABEL_15:
  PBDataWriterWriteBOOLField();
  if ((*(&self->_isQueryDirectQuestion + 1) & 0x10) != 0)
  {
LABEL_9:
    PBDataWriterWriteBOOLField();
  }

LABEL_10:
}

- (void)setHasIsQueryDirectQuestion:(BOOL)a3
{
  if (a3)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_isQueryDirectQuestion + 1) = *(&self->_isQueryDirectQuestion + 1) & 0xEF | v3;
}

- (void)setHasIsLowConfidenceKnowledgeResult:(BOOL)a3
{
  if (a3)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_isQueryDirectQuestion + 1) = *(&self->_isQueryDirectQuestion + 1) & 0xF7 | v3;
}

- (void)setHasPegasusPromptType:(BOOL)a3
{
  if (a3)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_isQueryDirectQuestion + 1) = *(&self->_isQueryDirectQuestion + 1) & 0xFB | v3;
}

- (void)setHasIsFromResponseCache:(BOOL)a3
{
  if (a3)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_isQueryDirectQuestion + 1) = *(&self->_isQueryDirectQuestion + 1) & 0xFD | v3;
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end