@interface INFERENCESchemaINFERENCECandidateInfo
- (BOOL)isEqual:(id)a3;
- (INFERENCESchemaINFERENCECandidateInfo)initWithDictionary:(id)a3;
- (INFERENCESchemaINFERENCECandidateInfo)initWithJSON:(id)a3;
- (NSData)jsonData;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasCandidateType:(BOOL)a3;
- (void)setHasIsShownToUser:(BOOL)a3;
- (void)setHasRank:(BOOL)a3;
- (void)setHasScore:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation INFERENCESchemaINFERENCECandidateInfo

- (INFERENCESchemaINFERENCECandidateInfo)initWithDictionary:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = INFERENCESchemaINFERENCECandidateInfo;
  v5 = [(INFERENCESchemaINFERENCECandidateInfo *)&v15 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"searchProvider"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[INFERENCESchemaINFERENCECandidateInfo setSearchProvider:](v5, "setSearchProvider:", [v6 intValue]);
    }

    v7 = [v4 objectForKeyedSubscript:@"rank"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[INFERENCESchemaINFERENCECandidateInfo setRank:](v5, "setRank:", [v7 unsignedIntValue]);
    }

    v8 = [v4 objectForKeyedSubscript:@"score"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v8 floatValue];
      [(INFERENCESchemaINFERENCECandidateInfo *)v5 setScore:?];
    }

    v9 = [v4 objectForKeyedSubscript:@"isShownToUser"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[INFERENCESchemaINFERENCECandidateInfo setIsShownToUser:](v5, "setIsShownToUser:", [v9 BOOLValue]);
    }

    v10 = [v4 objectForKeyedSubscript:@"anonymizedEntityIdentifier"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [v10 copy];
      [(INFERENCESchemaINFERENCECandidateInfo *)v5 setAnonymizedEntityIdentifier:v11];
    }

    v12 = [v4 objectForKeyedSubscript:@"candidateType"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[INFERENCESchemaINFERENCECandidateInfo setCandidateType:](v5, "setCandidateType:", [v12 intValue]);
    }

    v13 = v5;
  }

  return v5;
}

- (INFERENCESchemaINFERENCECandidateInfo)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(INFERENCESchemaINFERENCECandidateInfo *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(INFERENCESchemaINFERENCECandidateInfo *)self dictionaryRepresentation];
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
  if (self->_anonymizedEntityIdentifier)
  {
    v4 = [(INFERENCESchemaINFERENCECandidateInfo *)self anonymizedEntityIdentifier];
    v5 = [v4 copy];
    [v3 setObject:v5 forKeyedSubscript:@"anonymizedEntityIdentifier"];
  }

  has = self->_has;
  if ((has & 0x10) != 0)
  {
    v7 = [(INFERENCESchemaINFERENCECandidateInfo *)self candidateType];
    v8 = @"INFERENCECANDIDATETYPE_UNKNOWN";
    if (v7 == 1)
    {
      v8 = @"INFERENCECANDIDATETYPE_CONTACT";
    }

    if (v7 == 2)
    {
      v9 = @"INFERENCECANDIDATETYPE_CONTACT_HANDLE";
    }

    else
    {
      v9 = v8;
    }

    [v3 setObject:v9 forKeyedSubscript:@"candidateType"];
    has = self->_has;
  }

  if ((has & 8) != 0)
  {
    v10 = [MEMORY[0x1E696AD98] numberWithBool:{-[INFERENCESchemaINFERENCECandidateInfo isShownToUser](self, "isShownToUser")}];
    [v3 setObject:v10 forKeyedSubscript:@"isShownToUser"];

    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_12:
      if ((has & 4) == 0)
      {
        goto LABEL_13;
      }

LABEL_17:
      v12 = MEMORY[0x1E696AD98];
      [(INFERENCESchemaINFERENCECandidateInfo *)self score];
      v13 = [v12 numberWithFloat:?];
      [v3 setObject:v13 forKeyedSubscript:@"score"];

      if ((*&self->_has & 1) == 0)
      {
        goto LABEL_22;
      }

LABEL_18:
      v14 = [(INFERENCESchemaINFERENCECandidateInfo *)self searchProvider]- 1;
      if (v14 > 3)
      {
        v15 = @"INFERENCESEARCHPROVIDER_UNKNOWN";
      }

      else
      {
        v15 = off_1E78D8730[v14];
      }

      [v3 setObject:v15 forKeyedSubscript:@"searchProvider"];
      goto LABEL_22;
    }
  }

  else if ((has & 2) == 0)
  {
    goto LABEL_12;
  }

  v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[INFERENCESchemaINFERENCECandidateInfo rank](self, "rank")}];
  [v3 setObject:v11 forKeyedSubscript:@"rank"];

  has = self->_has;
  if ((has & 4) != 0)
  {
    goto LABEL_17;
  }

LABEL_13:
  if (has)
  {
    goto LABEL_18;
  }

LABEL_22:
  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v5 = 2654435761 * self->_searchProvider;
    if ((*&self->_has & 2) != 0)
    {
LABEL_3:
      v6 = 2654435761 * self->_rank;
      if ((*&self->_has & 4) != 0)
      {
        goto LABEL_4;
      }

LABEL_11:
      v11 = 0;
      goto LABEL_12;
    }
  }

  else
  {
    v5 = 0;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }
  }

  v6 = 0;
  if ((*&self->_has & 4) == 0)
  {
    goto LABEL_11;
  }

LABEL_4:
  score = self->_score;
  if (score >= 0.0)
  {
    v8 = score;
  }

  else
  {
    v8 = -score;
  }

  *v2.i64 = floor(v8 + 0.5);
  v9 = (v8 - *v2.i64) * 1.84467441e19;
  *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
  v10.f64[0] = NAN;
  v10.f64[1] = NAN;
  v11 = 2654435761u * *vbslq_s8(vnegq_f64(v10), v3, v2).i64;
  if (v9 >= 0.0)
  {
    if (v9 > 0.0)
    {
      v11 += v9;
    }
  }

  else
  {
    v11 -= fabs(v9);
  }

LABEL_12:
  if ((*&self->_has & 8) != 0)
  {
    v12 = 2654435761 * self->_isShownToUser;
  }

  else
  {
    v12 = 0;
  }

  v13 = [(NSString *)self->_anonymizedEntityIdentifier hash];
  if ((*&self->_has & 0x10) != 0)
  {
    v14 = 2654435761 * self->_candidateType;
  }

  else
  {
    v14 = 0;
  }

  return v6 ^ v5 ^ v11 ^ v12 ^ v14 ^ v13;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_27;
  }

  has = self->_has;
  v6 = v4[36];
  if ((*&has & 1) != (v6 & 1))
  {
    goto LABEL_27;
  }

  if (*&has)
  {
    searchProvider = self->_searchProvider;
    if (searchProvider != [v4 searchProvider])
    {
      goto LABEL_27;
    }

    has = self->_has;
    v6 = v4[36];
  }

  v8 = (*&has >> 1) & 1;
  if (v8 != ((v6 >> 1) & 1))
  {
    goto LABEL_27;
  }

  if (v8)
  {
    rank = self->_rank;
    if (rank != [v4 rank])
    {
      goto LABEL_27;
    }

    has = self->_has;
    v6 = v4[36];
  }

  v10 = (*&has >> 2) & 1;
  if (v10 != ((v6 >> 2) & 1))
  {
    goto LABEL_27;
  }

  if (v10)
  {
    score = self->_score;
    [v4 score];
    if (score == v12)
    {
      has = self->_has;
      v6 = v4[36];
      goto LABEL_14;
    }

LABEL_27:
    v25 = 0;
    goto LABEL_28;
  }

LABEL_14:
  v13 = (*&has >> 3) & 1;
  if (v13 != ((v6 >> 3) & 1))
  {
    goto LABEL_27;
  }

  if (v13)
  {
    isShownToUser = self->_isShownToUser;
    if (isShownToUser != [v4 isShownToUser])
    {
      goto LABEL_27;
    }
  }

  v15 = [(INFERENCESchemaINFERENCECandidateInfo *)self anonymizedEntityIdentifier];
  v16 = [v4 anonymizedEntityIdentifier];
  v17 = v16;
  if ((v15 != 0) == (v16 == 0))
  {

    goto LABEL_27;
  }

  v18 = [(INFERENCESchemaINFERENCECandidateInfo *)self anonymizedEntityIdentifier];
  if (v18)
  {
    v19 = v18;
    v20 = [(INFERENCESchemaINFERENCECandidateInfo *)self anonymizedEntityIdentifier];
    v21 = [v4 anonymizedEntityIdentifier];
    v22 = [v20 isEqual:v21];

    if (!v22)
    {
      goto LABEL_27;
    }
  }

  else
  {
  }

  v23 = (*&self->_has >> 4) & 1;
  if (v23 != ((v4[36] >> 4) & 1))
  {
    goto LABEL_27;
  }

  if (v23)
  {
    candidateType = self->_candidateType;
    if (candidateType != [v4 candidateType])
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
  has = self->_has;
  if (has)
  {
    PBDataWriterWriteInt32Field();
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_15;
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
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_15:
  PBDataWriterWriteFloatField();
  if ((*&self->_has & 8) != 0)
  {
LABEL_5:
    PBDataWriterWriteBOOLField();
  }

LABEL_6:
  v5 = [(INFERENCESchemaINFERENCECandidateInfo *)self anonymizedEntityIdentifier];

  if (v5)
  {
    PBDataWriterWriteStringField();
  }

  if ((*&self->_has & 0x10) != 0)
  {
    PBDataWriterWriteInt32Field();
  }
}

- (void)setHasCandidateType:(BOOL)a3
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

- (void)setHasIsShownToUser:(BOOL)a3
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

- (void)setHasScore:(BOOL)a3
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

- (void)setHasRank:(BOOL)a3
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