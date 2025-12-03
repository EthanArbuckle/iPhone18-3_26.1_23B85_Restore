@interface INFERENCESchemaINFERENCECandidateInfo
- (BOOL)isEqual:(id)equal;
- (INFERENCESchemaINFERENCECandidateInfo)initWithDictionary:(id)dictionary;
- (INFERENCESchemaINFERENCECandidateInfo)initWithJSON:(id)n;
- (NSData)jsonData;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasCandidateType:(BOOL)type;
- (void)setHasIsShownToUser:(BOOL)user;
- (void)setHasRank:(BOOL)rank;
- (void)setHasScore:(BOOL)score;
- (void)writeTo:(id)to;
@end

@implementation INFERENCESchemaINFERENCECandidateInfo

- (INFERENCESchemaINFERENCECandidateInfo)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v15.receiver = self;
  v15.super_class = INFERENCESchemaINFERENCECandidateInfo;
  v5 = [(INFERENCESchemaINFERENCECandidateInfo *)&v15 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"searchProvider"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[INFERENCESchemaINFERENCECandidateInfo setSearchProvider:](v5, "setSearchProvider:", [v6 intValue]);
    }

    v7 = [dictionaryCopy objectForKeyedSubscript:@"rank"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[INFERENCESchemaINFERENCECandidateInfo setRank:](v5, "setRank:", [v7 unsignedIntValue]);
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"score"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v8 floatValue];
      [(INFERENCESchemaINFERENCECandidateInfo *)v5 setScore:?];
    }

    v9 = [dictionaryCopy objectForKeyedSubscript:@"isShownToUser"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[INFERENCESchemaINFERENCECandidateInfo setIsShownToUser:](v5, "setIsShownToUser:", [v9 BOOLValue]);
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"anonymizedEntityIdentifier"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [v10 copy];
      [(INFERENCESchemaINFERENCECandidateInfo *)v5 setAnonymizedEntityIdentifier:v11];
    }

    v12 = [dictionaryCopy objectForKeyedSubscript:@"candidateType"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[INFERENCESchemaINFERENCECandidateInfo setCandidateType:](v5, "setCandidateType:", [v12 intValue]);
    }

    v13 = v5;
  }

  return v5;
}

- (INFERENCESchemaINFERENCECandidateInfo)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(INFERENCESchemaINFERENCECandidateInfo *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(INFERENCESchemaINFERENCECandidateInfo *)self dictionaryRepresentation];
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
  if (self->_anonymizedEntityIdentifier)
  {
    anonymizedEntityIdentifier = [(INFERENCESchemaINFERENCECandidateInfo *)self anonymizedEntityIdentifier];
    v5 = [anonymizedEntityIdentifier copy];
    [dictionary setObject:v5 forKeyedSubscript:@"anonymizedEntityIdentifier"];
  }

  has = self->_has;
  if ((has & 0x10) != 0)
  {
    candidateType = [(INFERENCESchemaINFERENCECandidateInfo *)self candidateType];
    v8 = @"INFERENCECANDIDATETYPE_UNKNOWN";
    if (candidateType == 1)
    {
      v8 = @"INFERENCECANDIDATETYPE_CONTACT";
    }

    if (candidateType == 2)
    {
      v9 = @"INFERENCECANDIDATETYPE_CONTACT_HANDLE";
    }

    else
    {
      v9 = v8;
    }

    [dictionary setObject:v9 forKeyedSubscript:@"candidateType"];
    has = self->_has;
  }

  if ((has & 8) != 0)
  {
    v10 = [MEMORY[0x1E696AD98] numberWithBool:{-[INFERENCESchemaINFERENCECandidateInfo isShownToUser](self, "isShownToUser")}];
    [dictionary setObject:v10 forKeyedSubscript:@"isShownToUser"];

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
      [dictionary setObject:v13 forKeyedSubscript:@"score"];

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

      [dictionary setObject:v15 forKeyedSubscript:@"searchProvider"];
      goto LABEL_22;
    }
  }

  else if ((has & 2) == 0)
  {
    goto LABEL_12;
  }

  v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[INFERENCESchemaINFERENCECandidateInfo rank](self, "rank")}];
  [dictionary setObject:v11 forKeyedSubscript:@"rank"];

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
  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_27;
  }

  has = self->_has;
  v6 = equalCopy[36];
  if ((*&has & 1) != (v6 & 1))
  {
    goto LABEL_27;
  }

  if (*&has)
  {
    searchProvider = self->_searchProvider;
    if (searchProvider != [equalCopy searchProvider])
    {
      goto LABEL_27;
    }

    has = self->_has;
    v6 = equalCopy[36];
  }

  v8 = (*&has >> 1) & 1;
  if (v8 != ((v6 >> 1) & 1))
  {
    goto LABEL_27;
  }

  if (v8)
  {
    rank = self->_rank;
    if (rank != [equalCopy rank])
    {
      goto LABEL_27;
    }

    has = self->_has;
    v6 = equalCopy[36];
  }

  v10 = (*&has >> 2) & 1;
  if (v10 != ((v6 >> 2) & 1))
  {
    goto LABEL_27;
  }

  if (v10)
  {
    score = self->_score;
    [equalCopy score];
    if (score == v12)
    {
      has = self->_has;
      v6 = equalCopy[36];
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
    if (isShownToUser != [equalCopy isShownToUser])
    {
      goto LABEL_27;
    }
  }

  anonymizedEntityIdentifier = [(INFERENCESchemaINFERENCECandidateInfo *)self anonymizedEntityIdentifier];
  anonymizedEntityIdentifier2 = [equalCopy anonymizedEntityIdentifier];
  v17 = anonymizedEntityIdentifier2;
  if ((anonymizedEntityIdentifier != 0) == (anonymizedEntityIdentifier2 == 0))
  {

    goto LABEL_27;
  }

  anonymizedEntityIdentifier3 = [(INFERENCESchemaINFERENCECandidateInfo *)self anonymizedEntityIdentifier];
  if (anonymizedEntityIdentifier3)
  {
    v19 = anonymizedEntityIdentifier3;
    anonymizedEntityIdentifier4 = [(INFERENCESchemaINFERENCECandidateInfo *)self anonymizedEntityIdentifier];
    anonymizedEntityIdentifier5 = [equalCopy anonymizedEntityIdentifier];
    v22 = [anonymizedEntityIdentifier4 isEqual:anonymizedEntityIdentifier5];

    if (!v22)
    {
      goto LABEL_27;
    }
  }

  else
  {
  }

  v23 = (*&self->_has >> 4) & 1;
  if (v23 != ((equalCopy[36] >> 4) & 1))
  {
    goto LABEL_27;
  }

  if (v23)
  {
    candidateType = self->_candidateType;
    if (candidateType != [equalCopy candidateType])
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
  anonymizedEntityIdentifier = [(INFERENCESchemaINFERENCECandidateInfo *)self anonymizedEntityIdentifier];

  if (anonymizedEntityIdentifier)
  {
    PBDataWriterWriteStringField();
  }

  if ((*&self->_has & 0x10) != 0)
  {
    PBDataWriterWriteInt32Field();
  }
}

- (void)setHasCandidateType:(BOOL)type
{
  if (type)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEF | v3;
}

- (void)setHasIsShownToUser:(BOOL)user
{
  if (user)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (void)setHasScore:(BOOL)score
{
  if (score)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasRank:(BOOL)rank
{
  if (rank)
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