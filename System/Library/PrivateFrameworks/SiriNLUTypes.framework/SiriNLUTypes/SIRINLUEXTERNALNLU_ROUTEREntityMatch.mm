@interface SIRINLUEXTERNALNLU_ROUTEREntityMatch
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsMatcherType:(id)a3;
- (int)matcherType;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasMatchScore:(BOOL)a3;
- (void)setHasMatcherType:(BOOL)a3;
- (void)setHasStartIndex:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation SIRINLUEXTERNALNLU_ROUTEREntityMatch

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v8 = v4;
  if (*(v4 + 8))
  {
    [(SIRINLUEXTERNALNLU_ROUTEREntityMatch *)self setSourceItemIdentifier:?];
    v4 = v8;
  }

  if (*(v4 + 3))
  {
    [(SIRINLUEXTERNALNLU_ROUTEREntityMatch *)self setEntityName:?];
    v4 = v8;
  }

  v5 = *(v4 + 80);
  if ((v5 & 2) != 0)
  {
    self->_startIndex = *(v4 + 2);
    *&self->_has |= 2u;
    v5 = *(v4 + 80);
    if ((v5 & 1) == 0)
    {
LABEL_7:
      if ((v5 & 4) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_8;
    }
  }

  else if ((*(v4 + 80) & 1) == 0)
  {
    goto LABEL_7;
  }

  self->_endIndex = *(v4 + 1);
  *&self->_has |= 1u;
  if ((*(v4 + 80) & 4) != 0)
  {
LABEL_8:
    self->_matchScore = *(v4 + 12);
    *&self->_has |= 4u;
  }

LABEL_9:
  matchProperties = self->_matchProperties;
  v7 = *(v4 + 5);
  if (matchProperties)
  {
    if (!v7)
    {
      goto LABEL_18;
    }

    [(SIRINLUEXTERNALNLU_ROUTERMatchProperties *)matchProperties mergeFrom:?];
  }

  else
  {
    if (!v7)
    {
      goto LABEL_18;
    }

    [(SIRINLUEXTERNALNLU_ROUTEREntityMatch *)self setMatchProperties:?];
  }

  v4 = v8;
LABEL_18:
  if ((*(v4 + 80) & 8) != 0)
  {
    self->_matcherType = *(v4 + 13);
    *&self->_has |= 8u;
  }

  if (*(v4 + 7))
  {
    [(SIRINLUEXTERNALNLU_ROUTEREntityMatch *)self setOriginAppBundleId:?];
    v4 = v8;
  }

  if (*(v4 + 9))
  {
    [(SIRINLUEXTERNALNLU_ROUTEREntityMatch *)self setUserUtterance:?];
    v4 = v8;
  }

  if (*(v4 + 4))
  {
    [(SIRINLUEXTERNALNLU_ROUTEREntityMatch *)self setIdentifier:?];
  }

  MEMORY[0x1EEE66BB8]();
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_sourceItemIdentifier hash];
  v4 = [(NSString *)self->_entityName hash];
  if ((*&self->_has & 2) == 0)
  {
    v7 = 0;
    if (*&self->_has)
    {
      goto LABEL_3;
    }

LABEL_9:
    v8 = 0;
    if ((*&self->_has & 4) != 0)
    {
      goto LABEL_4;
    }

LABEL_10:
    v12 = 0;
    goto LABEL_11;
  }

  v7 = 2654435761 * self->_startIndex;
  if ((*&self->_has & 1) == 0)
  {
    goto LABEL_9;
  }

LABEL_3:
  v8 = 2654435761 * self->_endIndex;
  if ((*&self->_has & 4) == 0)
  {
    goto LABEL_10;
  }

LABEL_4:
  matchScore = self->_matchScore;
  if (matchScore < 0.0)
  {
    matchScore = -matchScore;
  }

  *v5.i32 = floorf(matchScore + 0.5);
  v10 = (matchScore - *v5.i32) * 1.8447e19;
  *v6.i32 = *v5.i32 - (truncf(*v5.i32 * 5.421e-20) * 1.8447e19);
  v11.i64[0] = 0x8000000080000000;
  v11.i64[1] = 0x8000000080000000;
  v12 = 2654435761u * *vbslq_s8(v11, v6, v5).i32;
  if (v10 >= 0.0)
  {
    if (v10 > 0.0)
    {
      v12 += v10;
    }
  }

  else
  {
    v12 -= fabsf(v10);
  }

LABEL_11:
  v13 = [(SIRINLUEXTERNALNLU_ROUTERMatchProperties *)self->_matchProperties hash];
  if ((*&self->_has & 8) != 0)
  {
    v14 = 2654435761 * self->_matcherType;
  }

  else
  {
    v14 = 0;
  }

  v15 = v4 ^ v3 ^ v7 ^ v8 ^ v12 ^ v13;
  v16 = v14 ^ [(NSString *)self->_originAppBundleId hash];
  v17 = v15 ^ v16 ^ [(NSString *)self->_userUtterance hash];
  return v17 ^ [(NSString *)self->_identifier hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_35;
  }

  sourceItemIdentifier = self->_sourceItemIdentifier;
  if (sourceItemIdentifier | *(v4 + 8))
  {
    if (![(NSString *)sourceItemIdentifier isEqual:?])
    {
      goto LABEL_35;
    }
  }

  entityName = self->_entityName;
  if (entityName | *(v4 + 3))
  {
    if (![(NSString *)entityName isEqual:?])
    {
      goto LABEL_35;
    }
  }

  has = self->_has;
  v8 = *(v4 + 80);
  if ((has & 2) != 0)
  {
    if ((*(v4 + 80) & 2) == 0 || self->_startIndex != *(v4 + 2))
    {
      goto LABEL_35;
    }
  }

  else if ((*(v4 + 80) & 2) != 0)
  {
    goto LABEL_35;
  }

  if (*&self->_has)
  {
    if ((*(v4 + 80) & 1) == 0 || self->_endIndex != *(v4 + 1))
    {
      goto LABEL_35;
    }
  }

  else if (*(v4 + 80))
  {
    goto LABEL_35;
  }

  if ((*&self->_has & 4) != 0)
  {
    if ((*(v4 + 80) & 4) == 0 || self->_matchScore != *(v4 + 12))
    {
      goto LABEL_35;
    }
  }

  else if ((*(v4 + 80) & 4) != 0)
  {
    goto LABEL_35;
  }

  matchProperties = self->_matchProperties;
  if (matchProperties | *(v4 + 5))
  {
    if (![(SIRINLUEXTERNALNLU_ROUTERMatchProperties *)matchProperties isEqual:?])
    {
LABEL_35:
      v13 = 0;
      goto LABEL_36;
    }

    has = self->_has;
    v8 = *(v4 + 80);
  }

  if ((has & 8) != 0)
  {
    if ((v8 & 8) == 0 || self->_matcherType != *(v4 + 13))
    {
      goto LABEL_35;
    }
  }

  else if ((v8 & 8) != 0)
  {
    goto LABEL_35;
  }

  originAppBundleId = self->_originAppBundleId;
  if (originAppBundleId | *(v4 + 7) && ![(NSString *)originAppBundleId isEqual:?])
  {
    goto LABEL_35;
  }

  userUtterance = self->_userUtterance;
  if (userUtterance | *(v4 + 9))
  {
    if (![(NSString *)userUtterance isEqual:?])
    {
      goto LABEL_35;
    }
  }

  identifier = self->_identifier;
  if (identifier | *(v4 + 4))
  {
    v13 = [(NSString *)identifier isEqual:?];
  }

  else
  {
    v13 = 1;
  }

LABEL_36:

  return v13;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_sourceItemIdentifier copyWithZone:a3];
  v7 = *(v5 + 64);
  *(v5 + 64) = v6;

  v8 = [(NSString *)self->_entityName copyWithZone:a3];
  v9 = *(v5 + 24);
  *(v5 + 24) = v8;

  has = self->_has;
  if ((has & 2) != 0)
  {
    *(v5 + 16) = self->_startIndex;
    *(v5 + 80) |= 2u;
    has = self->_has;
    if ((has & 1) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*&self->_has & 1) == 0)
  {
    goto LABEL_3;
  }

  *(v5 + 8) = self->_endIndex;
  *(v5 + 80) |= 1u;
  if ((*&self->_has & 4) != 0)
  {
LABEL_4:
    *(v5 + 48) = self->_matchScore;
    *(v5 + 80) |= 4u;
  }

LABEL_5:
  v11 = [(SIRINLUEXTERNALNLU_ROUTERMatchProperties *)self->_matchProperties copyWithZone:a3];
  v12 = *(v5 + 40);
  *(v5 + 40) = v11;

  if ((*&self->_has & 8) != 0)
  {
    *(v5 + 52) = self->_matcherType;
    *(v5 + 80) |= 8u;
  }

  v13 = [(NSString *)self->_originAppBundleId copyWithZone:a3];
  v14 = *(v5 + 56);
  *(v5 + 56) = v13;

  v15 = [(NSString *)self->_userUtterance copyWithZone:a3];
  v16 = *(v5 + 72);
  *(v5 + 72) = v15;

  v17 = [(NSString *)self->_identifier copyWithZone:a3];
  v18 = *(v5 + 32);
  *(v5 + 32) = v17;

  return v5;
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v6 = v4;
  if (self->_sourceItemIdentifier)
  {
    [v4 setSourceItemIdentifier:?];
    v4 = v6;
  }

  if (self->_entityName)
  {
    [v6 setEntityName:?];
    v4 = v6;
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    *(v4 + 2) = self->_startIndex;
    *(v4 + 80) |= 2u;
    has = self->_has;
    if ((has & 1) == 0)
    {
LABEL_7:
      if ((has & 4) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_8;
    }
  }

  else if ((*&self->_has & 1) == 0)
  {
    goto LABEL_7;
  }

  *(v4 + 1) = self->_endIndex;
  *(v4 + 80) |= 1u;
  if ((*&self->_has & 4) != 0)
  {
LABEL_8:
    *(v4 + 12) = LODWORD(self->_matchScore);
    *(v4 + 80) |= 4u;
  }

LABEL_9:
  if (self->_matchProperties)
  {
    [v6 setMatchProperties:?];
    v4 = v6;
  }

  if ((*&self->_has & 8) != 0)
  {
    *(v4 + 13) = self->_matcherType;
    *(v4 + 80) |= 8u;
  }

  if (self->_originAppBundleId)
  {
    [v6 setOriginAppBundleId:?];
    v4 = v6;
  }

  if (self->_userUtterance)
  {
    [v6 setUserUtterance:?];
    v4 = v6;
  }

  if (self->_identifier)
  {
    [v6 setIdentifier:?];
    v4 = v6;
  }
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v10 = v4;
  if (self->_sourceItemIdentifier)
  {
    PBDataWriterWriteStringField();
    v4 = v10;
  }

  if (self->_entityName)
  {
    PBDataWriterWriteStringField();
    v4 = v10;
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    startIndex = self->_startIndex;
    PBDataWriterWriteInt64Field();
    v4 = v10;
    has = self->_has;
    if ((has & 1) == 0)
    {
LABEL_7:
      if ((has & 4) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_8;
    }
  }

  else if ((*&self->_has & 1) == 0)
  {
    goto LABEL_7;
  }

  endIndex = self->_endIndex;
  PBDataWriterWriteInt64Field();
  v4 = v10;
  if ((*&self->_has & 4) != 0)
  {
LABEL_8:
    matchScore = self->_matchScore;
    PBDataWriterWriteFloatField();
    v4 = v10;
  }

LABEL_9:
  if (self->_matchProperties)
  {
    PBDataWriterWriteSubmessage();
    v4 = v10;
  }

  if ((*&self->_has & 8) != 0)
  {
    matcherType = self->_matcherType;
    PBDataWriterWriteInt32Field();
    v4 = v10;
  }

  if (self->_originAppBundleId)
  {
    PBDataWriterWriteStringField();
    v4 = v10;
  }

  if (self->_userUtterance)
  {
    PBDataWriterWriteStringField();
    v4 = v10;
  }

  if (self->_identifier)
  {
    PBDataWriterWriteStringField();
    v4 = v10;
  }
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v5 = v3;
  sourceItemIdentifier = self->_sourceItemIdentifier;
  if (sourceItemIdentifier)
  {
    [v3 setObject:sourceItemIdentifier forKey:@"sourceItemIdentifier"];
  }

  entityName = self->_entityName;
  if (entityName)
  {
    [v5 setObject:entityName forKey:@"entityName"];
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    v14 = [MEMORY[0x1E696AD98] numberWithLongLong:self->_startIndex];
    [v5 setObject:v14 forKey:@"startIndex"];

    has = self->_has;
    if ((has & 1) == 0)
    {
LABEL_7:
      if ((has & 4) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_8;
    }
  }

  else if ((*&self->_has & 1) == 0)
  {
    goto LABEL_7;
  }

  v15 = [MEMORY[0x1E696AD98] numberWithLongLong:self->_endIndex];
  [v5 setObject:v15 forKey:@"endIndex"];

  if ((*&self->_has & 4) != 0)
  {
LABEL_8:
    *&v4 = self->_matchScore;
    v9 = [MEMORY[0x1E696AD98] numberWithFloat:v4];
    [v5 setObject:v9 forKey:@"matchScore"];
  }

LABEL_9:
  matchProperties = self->_matchProperties;
  if (matchProperties)
  {
    v11 = [(SIRINLUEXTERNALNLU_ROUTERMatchProperties *)matchProperties dictionaryRepresentation];
    [v5 setObject:v11 forKey:@"matchProperties"];
  }

  if ((*&self->_has & 8) != 0)
  {
    matcherType = self->_matcherType;
    if (matcherType >= 3)
    {
      v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_matcherType];
    }

    else
    {
      v13 = off_1E8327FA0[matcherType];
    }

    [v5 setObject:v13 forKey:@"matcherType"];
  }

  originAppBundleId = self->_originAppBundleId;
  if (originAppBundleId)
  {
    [v5 setObject:originAppBundleId forKey:@"originAppBundleId"];
  }

  userUtterance = self->_userUtterance;
  if (userUtterance)
  {
    [v5 setObject:userUtterance forKey:@"userUtterance"];
  }

  identifier = self->_identifier;
  if (identifier)
  {
    [v5 setObject:identifier forKey:@"identifier"];
  }

  return v5;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = SIRINLUEXTERNALNLU_ROUTEREntityMatch;
  v4 = [(SIRINLUEXTERNALNLU_ROUTEREntityMatch *)&v8 description];
  v5 = [(SIRINLUEXTERNALNLU_ROUTEREntityMatch *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (int)StringAsMatcherType:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"unknown"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"siriEntityMatcher"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"globalEntityMatcher"])
  {
    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setHasMatcherType:(BOOL)a3
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

- (int)matcherType
{
  if ((*&self->_has & 8) != 0)
  {
    return self->_matcherType;
  }

  else
  {
    return 0;
  }
}

- (void)setHasMatchScore:(BOOL)a3
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

- (void)setHasStartIndex:(BOOL)a3
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

@end