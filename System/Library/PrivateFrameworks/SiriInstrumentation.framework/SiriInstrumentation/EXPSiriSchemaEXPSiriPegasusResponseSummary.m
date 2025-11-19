@interface EXPSiriSchemaEXPSiriPegasusResponseSummary
- (BOOL)isEqual:(id)a3;
- (EXPSiriSchemaEXPSiriPegasusResponseSummary)initWithDictionary:(id)a3;
- (EXPSiriSchemaEXPSiriPegasusResponseSummary)initWithJSON:(id)a3;
- (NSData)jsonData;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)addCanonicalIds:(id)a3;
- (void)setHasConfidenceScore:(BOOL)a3;
- (void)setHasIsLowConfidenceKnowledgeResult:(BOOL)a3;
- (void)setHasResponseStatus:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation EXPSiriSchemaEXPSiriPegasusResponseSummary

- (EXPSiriSchemaEXPSiriPegasusResponseSummary)initWithDictionary:(id)a3
{
  v29 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v27.receiver = self;
  v27.super_class = EXPSiriSchemaEXPSiriPegasusResponseSummary;
  v5 = [(EXPSiriSchemaEXPSiriPegasusResponseSummary *)&v27 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"resultDomain"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[EXPSiriSchemaEXPSiriPegasusResponseSummary setResultDomain:](v5, "setResultDomain:", [v6 intValue]);
    }

    v7 = [v4 objectForKeyedSubscript:@"responseStatus"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[EXPSiriSchemaEXPSiriPegasusResponseSummary setResponseStatus:](v5, "setResponseStatus:", [v7 intValue]);
    }

    v8 = [v4 objectForKeyedSubscript:@"canonicalIds"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v22 = v6;
      v25 = 0u;
      v26 = 0u;
      v23 = 0u;
      v24 = 0u;
      v9 = v8;
      v10 = [v9 countByEnumeratingWithState:&v23 objects:v28 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = *v24;
        do
        {
          v13 = 0;
          do
          {
            if (*v24 != v12)
            {
              objc_enumerationMutation(v9);
            }

            v14 = *(*(&v23 + 1) + 8 * v13);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v15 = [v14 copy];
              [(EXPSiriSchemaEXPSiriPegasusResponseSummary *)v5 addCanonicalIds:v15];
            }

            ++v13;
          }

          while (v11 != v13);
          v11 = [v9 countByEnumeratingWithState:&v23 objects:v28 count:16];
        }

        while (v11);
      }

      v6 = v22;
    }

    v16 = [v4 objectForKeyedSubscript:@"catId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v17 = [v16 copy];
      [(EXPSiriSchemaEXPSiriPegasusResponseSummary *)v5 setCatId:v17];
    }

    v18 = [v4 objectForKeyedSubscript:@"confidenceScore"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v18 floatValue];
      [(EXPSiriSchemaEXPSiriPegasusResponseSummary *)v5 setConfidenceScore:?];
    }

    v19 = [v4 objectForKeyedSubscript:@"isLowConfidenceKnowledgeResult"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[EXPSiriSchemaEXPSiriPegasusResponseSummary setIsLowConfidenceKnowledgeResult:](v5, "setIsLowConfidenceKnowledgeResult:", [v19 BOOLValue]);
    }

    v20 = v5;
  }

  return v5;
}

- (EXPSiriSchemaEXPSiriPegasusResponseSummary)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(EXPSiriSchemaEXPSiriPegasusResponseSummary *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(EXPSiriSchemaEXPSiriPegasusResponseSummary *)self dictionaryRepresentation];
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
  if (self->_canonicalIds)
  {
    v4 = [(EXPSiriSchemaEXPSiriPegasusResponseSummary *)self canonicalIds];
    v5 = [v4 copy];
    [v3 setObject:v5 forKeyedSubscript:@"canonicalIds"];
  }

  if (self->_catId)
  {
    v6 = [(EXPSiriSchemaEXPSiriPegasusResponseSummary *)self catId];
    v7 = [v6 copy];
    [v3 setObject:v7 forKeyedSubscript:@"catId"];
  }

  v8 = *(&self->_isLowConfidenceKnowledgeResult + 1);
  if ((v8 & 4) != 0)
  {
    v9 = MEMORY[0x1E696AD98];
    [(EXPSiriSchemaEXPSiriPegasusResponseSummary *)self confidenceScore];
    v10 = [v9 numberWithFloat:?];
    [v3 setObject:v10 forKeyedSubscript:@"confidenceScore"];

    v8 = *(&self->_isLowConfidenceKnowledgeResult + 1);
    if ((v8 & 8) == 0)
    {
LABEL_7:
      if ((v8 & 2) == 0)
      {
        goto LABEL_8;
      }

LABEL_12:
      v12 = [(EXPSiriSchemaEXPSiriPegasusResponseSummary *)self responseStatus]- 1;
      if (v12 > 2)
      {
        v13 = @"PEGASUSRESPONSESTATUS_UNKNOWN";
      }

      else
      {
        v13 = off_1E78D4AF8[v12];
      }

      [v3 setObject:v13 forKeyedSubscript:@"responseStatus"];
      if (!*(&self->_isLowConfidenceKnowledgeResult + 1))
      {
        goto LABEL_20;
      }

      goto LABEL_16;
    }
  }

  else if ((*(&self->_isLowConfidenceKnowledgeResult + 1) & 8) == 0)
  {
    goto LABEL_7;
  }

  v11 = [MEMORY[0x1E696AD98] numberWithBool:{-[EXPSiriSchemaEXPSiriPegasusResponseSummary isLowConfidenceKnowledgeResult](self, "isLowConfidenceKnowledgeResult")}];
  [v3 setObject:v11 forKeyedSubscript:@"isLowConfidenceKnowledgeResult"];

  v8 = *(&self->_isLowConfidenceKnowledgeResult + 1);
  if ((v8 & 2) != 0)
  {
    goto LABEL_12;
  }

LABEL_8:
  if (v8)
  {
LABEL_16:
    v14 = [(EXPSiriSchemaEXPSiriPegasusResponseSummary *)self resultDomain]- 1;
    if (v14 > 0x1E)
    {
      v15 = @"PEGASUSDOMAIN_UNKNOWN";
    }

    else
    {
      v15 = off_1E78D4B10[v14];
    }

    [v3 setObject:v15 forKeyedSubscript:@"resultDomain"];
  }

LABEL_20:
  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
}

- (unint64_t)hash
{
  if (*(&self->_isLowConfidenceKnowledgeResult + 1))
  {
    v3 = 2654435761 * self->_resultDomain;
    if ((*(&self->_isLowConfidenceKnowledgeResult + 1) & 2) != 0)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v3 = 0;
    if ((*(&self->_isLowConfidenceKnowledgeResult + 1) & 2) != 0)
    {
LABEL_3:
      v4 = 2654435761 * self->_responseStatus;
      goto LABEL_6;
    }
  }

  v4 = 0;
LABEL_6:
  v5 = [(NSArray *)self->_canonicalIds hash];
  v6 = [(NSString *)self->_catId hash];
  if ((*(&self->_isLowConfidenceKnowledgeResult + 1) & 4) != 0)
  {
    confidenceScore = self->_confidenceScore;
    if (confidenceScore >= 0.0)
    {
      v11 = confidenceScore;
    }

    else
    {
      v11 = -confidenceScore;
    }

    *v7.i64 = floor(v11 + 0.5);
    v12 = (v11 - *v7.i64) * 1.84467441e19;
    *v8.i64 = *v7.i64 - trunc(*v7.i64 * 5.42101086e-20) * 1.84467441e19;
    v13.f64[0] = NAN;
    v13.f64[1] = NAN;
    v9 = 2654435761u * *vbslq_s8(vnegq_f64(v13), v8, v7).i64;
    if (v12 >= 0.0)
    {
      if (v12 > 0.0)
      {
        v9 += v12;
      }
    }

    else
    {
      v9 -= fabs(v12);
    }
  }

  else
  {
    v9 = 0;
  }

  if ((*(&self->_isLowConfidenceKnowledgeResult + 1) & 8) != 0)
  {
    v14 = 2654435761 * self->_isLowConfidenceKnowledgeResult;
  }

  else
  {
    v14 = 0;
  }

  return v4 ^ v3 ^ v5 ^ v6 ^ v9 ^ v14;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_19;
  }

  v5 = *(&self->_isLowConfidenceKnowledgeResult + 1);
  v6 = v4[37];
  if ((v5 & 1) != (v6 & 1))
  {
    goto LABEL_19;
  }

  if (v5)
  {
    resultDomain = self->_resultDomain;
    if (resultDomain != [v4 resultDomain])
    {
      goto LABEL_19;
    }

    v5 = *(&self->_isLowConfidenceKnowledgeResult + 1);
    v6 = v4[37];
  }

  v8 = (v5 >> 1) & 1;
  if (v8 != ((v6 >> 1) & 1))
  {
    goto LABEL_19;
  }

  if (v8)
  {
    responseStatus = self->_responseStatus;
    if (responseStatus != [v4 responseStatus])
    {
      goto LABEL_19;
    }
  }

  v10 = [(EXPSiriSchemaEXPSiriPegasusResponseSummary *)self canonicalIds];
  v11 = [v4 canonicalIds];
  if ((v10 != 0) == (v11 == 0))
  {
    goto LABEL_18;
  }

  v12 = [(EXPSiriSchemaEXPSiriPegasusResponseSummary *)self canonicalIds];
  if (v12)
  {
    v13 = v12;
    v14 = [(EXPSiriSchemaEXPSiriPegasusResponseSummary *)self canonicalIds];
    v15 = [v4 canonicalIds];
    v16 = [v14 isEqual:v15];

    if (!v16)
    {
      goto LABEL_19;
    }
  }

  else
  {
  }

  v10 = [(EXPSiriSchemaEXPSiriPegasusResponseSummary *)self catId];
  v11 = [v4 catId];
  if ((v10 != 0) == (v11 == 0))
  {
LABEL_18:

    goto LABEL_19;
  }

  v17 = [(EXPSiriSchemaEXPSiriPegasusResponseSummary *)self catId];
  if (v17)
  {
    v18 = v17;
    v19 = [(EXPSiriSchemaEXPSiriPegasusResponseSummary *)self catId];
    v20 = [v4 catId];
    v21 = [v19 isEqual:v20];

    if (!v21)
    {
      goto LABEL_19;
    }
  }

  else
  {
  }

  v24 = *(&self->_isLowConfidenceKnowledgeResult + 1);
  v25 = (v24 >> 2) & 1;
  v26 = v4[37];
  if (v25 == ((v26 >> 2) & 1))
  {
    if (v25)
    {
      confidenceScore = self->_confidenceScore;
      [v4 confidenceScore];
      if (confidenceScore != v28)
      {
        goto LABEL_19;
      }

      v24 = *(&self->_isLowConfidenceKnowledgeResult + 1);
      v26 = v4[37];
    }

    v29 = (v24 >> 3) & 1;
    if (v29 == ((v26 >> 3) & 1))
    {
      if (!v29 || (isLowConfidenceKnowledgeResult = self->_isLowConfidenceKnowledgeResult, isLowConfidenceKnowledgeResult == [v4 isLowConfidenceKnowledgeResult]))
      {
        v22 = 1;
        goto LABEL_20;
      }
    }
  }

LABEL_19:
  v22 = 0;
LABEL_20:

  return v22;
}

- (void)writeTo:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = *(&self->_isLowConfidenceKnowledgeResult + 1);
  if (v5)
  {
    PBDataWriterWriteInt32Field();
    v5 = *(&self->_isLowConfidenceKnowledgeResult + 1);
  }

  if ((v5 & 2) != 0)
  {
    PBDataWriterWriteInt32Field();
  }

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = self->_canonicalIds;
  v7 = [(NSArray *)v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v6);
        }

        PBDataWriterWriteStringField();
      }

      v8 = [(NSArray *)v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  v11 = [(EXPSiriSchemaEXPSiriPegasusResponseSummary *)self catId];

  if (v11)
  {
    PBDataWriterWriteStringField();
  }

  v12 = *(&self->_isLowConfidenceKnowledgeResult + 1);
  if ((v12 & 4) != 0)
  {
    PBDataWriterWriteFloatField();
    v12 = *(&self->_isLowConfidenceKnowledgeResult + 1);
  }

  if ((v12 & 8) != 0)
  {
    PBDataWriterWriteBOOLField();
  }
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

  *(&self->_isLowConfidenceKnowledgeResult + 1) = *(&self->_isLowConfidenceKnowledgeResult + 1) & 0xF7 | v3;
}

- (void)setHasConfidenceScore:(BOOL)a3
{
  if (a3)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_isLowConfidenceKnowledgeResult + 1) = *(&self->_isLowConfidenceKnowledgeResult + 1) & 0xFB | v3;
}

- (void)addCanonicalIds:(id)a3
{
  v4 = a3;
  canonicalIds = self->_canonicalIds;
  v8 = v4;
  if (!canonicalIds)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_canonicalIds;
    self->_canonicalIds = v6;

    v4 = v8;
    canonicalIds = self->_canonicalIds;
  }

  [(NSArray *)canonicalIds addObject:v4];
}

- (void)setHasResponseStatus:(BOOL)a3
{
  if (a3)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_isLowConfidenceKnowledgeResult + 1) = *(&self->_isLowConfidenceKnowledgeResult + 1) & 0xFD | v3;
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end