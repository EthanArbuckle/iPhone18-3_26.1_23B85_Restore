@interface POMMESSchemaPOMMESRequestResult
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (POMMESSchemaPOMMESRequestResult)initWithDictionary:(id)dictionary;
- (POMMESSchemaPOMMESRequestResult)initWithJSON:(id)n;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasIsFromResponseCache:(BOOL)cache;
- (void)setHasIsLowConfidenceKnowledgeResult:(BOOL)result;
- (void)setHasIsQueryDirectQuestion:(BOOL)question;
- (void)setHasPegasusPromptType:(BOOL)type;
- (void)writeTo:(id)to;
@end

@implementation POMMESSchemaPOMMESRequestResult

- (POMMESSchemaPOMMESRequestResult)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v15.receiver = self;
  v15.super_class = POMMESSchemaPOMMESRequestResult;
  v5 = [(POMMESSchemaPOMMESRequestResult *)&v15 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"pommesConfidenceScore"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v6 doubleValue];
      [(POMMESSchemaPOMMESRequestResult *)v5 setPommesConfidenceScore:?];
    }

    v7 = [dictionaryCopy objectForKeyedSubscript:@"pegasusDomain"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = [v7 copy];
      [(POMMESSchemaPOMMESRequestResult *)v5 setPegasusDomain:v8];
    }

    v9 = [dictionaryCopy objectForKeyedSubscript:@"isFromResponseCache"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[POMMESSchemaPOMMESRequestResult setIsFromResponseCache:](v5, "setIsFromResponseCache:", [v9 BOOLValue]);
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"pegasusPromptType"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[POMMESSchemaPOMMESRequestResult setPegasusPromptType:](v5, "setPegasusPromptType:", [v10 intValue]);
    }

    v11 = [dictionaryCopy objectForKeyedSubscript:@"isLowConfidenceKnowledgeResult"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[POMMESSchemaPOMMESRequestResult setIsLowConfidenceKnowledgeResult:](v5, "setIsLowConfidenceKnowledgeResult:", [v11 BOOLValue]);
    }

    v12 = [dictionaryCopy objectForKeyedSubscript:@"isQueryDirectQuestion"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[POMMESSchemaPOMMESRequestResult setIsQueryDirectQuestion:](v5, "setIsQueryDirectQuestion:", [v12 BOOLValue]);
    }

    v13 = v5;
  }

  return v5;
}

- (POMMESSchemaPOMMESRequestResult)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(POMMESSchemaPOMMESRequestResult *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(POMMESSchemaPOMMESRequestResult *)self dictionaryRepresentation];
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
  v4 = *(&self->_isQueryDirectQuestion + 1);
  if ((v4 & 2) != 0)
  {
    v15 = [MEMORY[0x1E696AD98] numberWithBool:{-[POMMESSchemaPOMMESRequestResult isFromResponseCache](self, "isFromResponseCache")}];
    [dictionary setObject:v15 forKeyedSubscript:@"isFromResponseCache"];

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
  [dictionary setObject:v16 forKeyedSubscript:@"isLowConfidenceKnowledgeResult"];

  if ((*(&self->_isQueryDirectQuestion + 1) & 0x10) != 0)
  {
LABEL_4:
    v5 = [MEMORY[0x1E696AD98] numberWithBool:{-[POMMESSchemaPOMMESRequestResult isQueryDirectQuestion](self, "isQueryDirectQuestion")}];
    [dictionary setObject:v5 forKeyedSubscript:@"isQueryDirectQuestion"];
  }

LABEL_5:
  if (self->_pegasusDomain)
  {
    pegasusDomain = [(POMMESSchemaPOMMESRequestResult *)self pegasusDomain];
    v7 = [pegasusDomain copy];
    [dictionary setObject:v7 forKeyedSubscript:@"pegasusDomain"];
  }

  v8 = *(&self->_isQueryDirectQuestion + 1);
  if ((v8 & 4) != 0)
  {
    pegasusPromptType = [(POMMESSchemaPOMMESRequestResult *)self pegasusPromptType];
    v10 = @"POMMESPEGASUSPROMPTTYPE_UNKNOWN";
    if (pegasusPromptType == 1)
    {
      v10 = @"POMMESPEGASUSPROMPTTYPE_SHARE_DEVICE_LOCATION";
    }

    if (pegasusPromptType == 2)
    {
      v11 = @"POMMESPEGASUSPROMPTTYPE_SHARE_PRECISE_DEVICE_LOCATION";
    }

    else
    {
      v11 = v10;
    }

    [dictionary setObject:v11 forKeyedSubscript:@"pegasusPromptType"];
    v8 = *(&self->_isQueryDirectQuestion + 1);
  }

  if (v8)
  {
    v12 = MEMORY[0x1E696AD98];
    [(POMMESSchemaPOMMESRequestResult *)self pommesConfidenceScore];
    v13 = [v12 numberWithDouble:?];
    [dictionary setObject:v13 forKeyedSubscript:@"pommesConfidenceScore"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_27;
  }

  if (*(&self->_isQueryDirectQuestion + 1) != (equalCopy[34] & 1))
  {
    goto LABEL_27;
  }

  if (*(&self->_isQueryDirectQuestion + 1))
  {
    pommesConfidenceScore = self->_pommesConfidenceScore;
    [equalCopy pommesConfidenceScore];
    if (pommesConfidenceScore != v6)
    {
      goto LABEL_27;
    }
  }

  pegasusDomain = [(POMMESSchemaPOMMESRequestResult *)self pegasusDomain];
  pegasusDomain2 = [equalCopy pegasusDomain];
  v9 = pegasusDomain2;
  if ((pegasusDomain != 0) == (pegasusDomain2 == 0))
  {

    goto LABEL_27;
  }

  pegasusDomain3 = [(POMMESSchemaPOMMESRequestResult *)self pegasusDomain];
  if (pegasusDomain3)
  {
    v11 = pegasusDomain3;
    pegasusDomain4 = [(POMMESSchemaPOMMESRequestResult *)self pegasusDomain];
    pegasusDomain5 = [equalCopy pegasusDomain];
    v14 = [pegasusDomain4 isEqual:pegasusDomain5];

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
  v17 = equalCopy[34];
  if (v16 != ((v17 >> 1) & 1))
  {
LABEL_27:
    v25 = 0;
    goto LABEL_28;
  }

  if (v16)
  {
    isFromResponseCache = self->_isFromResponseCache;
    if (isFromResponseCache != [equalCopy isFromResponseCache])
    {
      goto LABEL_27;
    }

    v15 = *(&self->_isQueryDirectQuestion + 1);
    v17 = equalCopy[34];
  }

  v19 = (v15 >> 2) & 1;
  if (v19 != ((v17 >> 2) & 1))
  {
    goto LABEL_27;
  }

  if (v19)
  {
    pegasusPromptType = self->_pegasusPromptType;
    if (pegasusPromptType != [equalCopy pegasusPromptType])
    {
      goto LABEL_27;
    }

    v15 = *(&self->_isQueryDirectQuestion + 1);
    v17 = equalCopy[34];
  }

  v21 = (v15 >> 3) & 1;
  if (v21 != ((v17 >> 3) & 1))
  {
    goto LABEL_27;
  }

  if (v21)
  {
    isLowConfidenceKnowledgeResult = self->_isLowConfidenceKnowledgeResult;
    if (isLowConfidenceKnowledgeResult == [equalCopy isLowConfidenceKnowledgeResult])
    {
      v15 = *(&self->_isQueryDirectQuestion + 1);
      v17 = equalCopy[34];
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
    if (isQueryDirectQuestion != [equalCopy isQueryDirectQuestion])
    {
      goto LABEL_27;
    }
  }

  v25 = 1;
LABEL_28:

  return v25;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if (*(&self->_isQueryDirectQuestion + 1))
  {
    PBDataWriterWriteDoubleField();
  }

  pegasusDomain = [(POMMESSchemaPOMMESRequestResult *)self pegasusDomain];

  if (pegasusDomain)
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

- (void)setHasIsQueryDirectQuestion:(BOOL)question
{
  if (question)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_isQueryDirectQuestion + 1) = *(&self->_isQueryDirectQuestion + 1) & 0xEF | v3;
}

- (void)setHasIsLowConfidenceKnowledgeResult:(BOOL)result
{
  if (result)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_isQueryDirectQuestion + 1) = *(&self->_isQueryDirectQuestion + 1) & 0xF7 | v3;
}

- (void)setHasPegasusPromptType:(BOOL)type
{
  if (type)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_isQueryDirectQuestion + 1) = *(&self->_isQueryDirectQuestion + 1) & 0xFB | v3;
}

- (void)setHasIsFromResponseCache:(BOOL)cache
{
  if (cache)
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