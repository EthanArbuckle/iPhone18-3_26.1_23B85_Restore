@interface QDSchemaQDEntityMatch
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (QDSchemaQDEntityMatch)initWithDictionary:(id)dictionary;
- (QDSchemaQDEntityMatch)initWithJSON:(id)n;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (int)matchingTransformsAtIndex:(unint64_t)index;
- (unint64_t)hash;
- (void)addMatchingTransforms:(int)transforms;
- (void)setHasEndIndex:(BOOL)index;
- (void)setHasMatchScore:(BOOL)score;
- (void)setHasMatcher:(BOOL)matcher;
- (void)writeTo:(id)to;
@end

@implementation QDSchemaQDEntityMatch

- (QDSchemaQDEntityMatch)initWithDictionary:(id)dictionary
{
  v28 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v26.receiver = self;
  v26.super_class = QDSchemaQDEntityMatch;
  v5 = [(QDSchemaQDEntityMatch *)&v26 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"startIndex"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[QDSchemaQDEntityMatch setStartIndex:](v5, "setStartIndex:", [v6 unsignedIntValue]);
    }

    v7 = [dictionaryCopy objectForKeyedSubscript:@"endIndex"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[QDSchemaQDEntityMatch setEndIndex:](v5, "setEndIndex:", [v7 unsignedIntValue]);
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"matchingTransforms"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v21 = v6;
      v24 = 0u;
      v25 = 0u;
      v22 = 0u;
      v23 = 0u;
      v9 = v8;
      v10 = [v9 countByEnumeratingWithState:&v22 objects:v27 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = *v23;
        do
        {
          v13 = 0;
          do
          {
            if (*v23 != v12)
            {
              objc_enumerationMutation(v9);
            }

            v14 = *(*(&v22 + 1) + 8 * v13);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              -[QDSchemaQDEntityMatch addMatchingTransforms:](v5, "addMatchingTransforms:", [v14 intValue]);
            }

            ++v13;
          }

          while (v11 != v13);
          v11 = [v9 countByEnumeratingWithState:&v22 objects:v27 count:16];
        }

        while (v11);
      }

      v6 = v21;
    }

    v15 = [dictionaryCopy objectForKeyedSubscript:@"matcher"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[QDSchemaQDEntityMatch setMatcher:](v5, "setMatcher:", [v15 intValue]);
    }

    v16 = [dictionaryCopy objectForKeyedSubscript:@"matchScore"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v16 floatValue];
      [(QDSchemaQDEntityMatch *)v5 setMatchScore:?];
    }

    v17 = [dictionaryCopy objectForKeyedSubscript:@"originAppBundleId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v18 = [v17 copy];
      [(QDSchemaQDEntityMatch *)v5 setOriginAppBundleId:v18];
    }

    v19 = v5;
  }

  return v5;
}

- (QDSchemaQDEntityMatch)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(QDSchemaQDEntityMatch *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(QDSchemaQDEntityMatch *)self dictionaryRepresentation];
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
  if ((has & 2) == 0)
  {
    if ((*&self->_has & 8) == 0)
    {
      goto LABEL_3;
    }

LABEL_20:
    v15 = MEMORY[0x1E696AD98];
    [(QDSchemaQDEntityMatch *)self matchScore];
    v16 = [v15 numberWithFloat:?];
    [dictionary setObject:v16 forKeyedSubscript:@"matchScore"];

    if ((*&self->_has & 4) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_4;
  }

  v14 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[QDSchemaQDEntityMatch endIndex](self, "endIndex")}];
  [dictionary setObject:v14 forKeyedSubscript:@"endIndex"];

  has = self->_has;
  if ((has & 8) != 0)
  {
    goto LABEL_20;
  }

LABEL_3:
  if ((has & 4) == 0)
  {
    goto LABEL_10;
  }

LABEL_4:
  matcher = [(QDSchemaQDEntityMatch *)self matcher];
  v6 = @"QDSPANMATCHERTYPE_UNKNOWN";
  if (matcher == 1)
  {
    v6 = @"QDSPANMATCHERTYPE_SIRI_ENTITY_MATCHER";
  }

  if (matcher == 2)
  {
    v7 = @"QDSPANMATCHERTYPE_GLOBAL_ENTITY_MATCHER";
  }

  else
  {
    v7 = v6;
  }

  [dictionary setObject:v7 forKeyedSubscript:@"matcher"];
LABEL_10:
  if ([(NSArray *)self->_matchingTransforms count])
  {
    matchingTransforms = [(QDSchemaQDEntityMatch *)self matchingTransforms];
    v9 = [matchingTransforms copy];
    [dictionary setObject:v9 forKeyedSubscript:@"matchingTransforms"];
  }

  if (self->_originAppBundleId)
  {
    originAppBundleId = [(QDSchemaQDEntityMatch *)self originAppBundleId];
    v11 = [originAppBundleId copy];
    [dictionary setObject:v11 forKeyedSubscript:@"originAppBundleId"];
  }

  if (*&self->_has)
  {
    v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[QDSchemaQDEntityMatch startIndex](self, "startIndex")}];
    [dictionary setObject:v12 forKeyedSubscript:@"startIndex"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v3 = 2654435761 * self->_startIndex;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v3 = 0;
    if ((*&self->_has & 2) != 0)
    {
LABEL_3:
      v4 = 2654435761 * self->_endIndex;
      goto LABEL_6;
    }
  }

  v4 = 0;
LABEL_6:
  v5 = [(NSArray *)self->_matchingTransforms hash];
  if ((*&self->_has & 4) != 0)
  {
    v8 = 2654435761 * self->_matcher;
    if ((*&self->_has & 8) != 0)
    {
      goto LABEL_8;
    }

LABEL_14:
    v13 = 0;
    return v4 ^ v3 ^ v8 ^ v13 ^ v5 ^ [(NSString *)self->_originAppBundleId hash];
  }

  v8 = 0;
  if ((*&self->_has & 8) == 0)
  {
    goto LABEL_14;
  }

LABEL_8:
  matchScore = self->_matchScore;
  if (matchScore >= 0.0)
  {
    v10 = matchScore;
  }

  else
  {
    v10 = -matchScore;
  }

  *v6.i64 = floor(v10 + 0.5);
  v11 = (v10 - *v6.i64) * 1.84467441e19;
  *v7.i64 = *v6.i64 - trunc(*v6.i64 * 5.42101086e-20) * 1.84467441e19;
  v12.f64[0] = NAN;
  v12.f64[1] = NAN;
  v13 = 2654435761u * *vbslq_s8(vnegq_f64(v12), v7, v6).i64;
  if (v11 >= 0.0)
  {
    if (v11 > 0.0)
    {
      v13 += v11;
    }
  }

  else
  {
    v13 -= fabs(v11);
  }

  return v4 ^ v3 ^ v8 ^ v13 ^ v5 ^ [(NSString *)self->_originAppBundleId hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_26;
  }

  has = self->_has;
  v6 = equalCopy[40];
  if ((*&has & 1) != (v6 & 1))
  {
    goto LABEL_26;
  }

  if (*&has)
  {
    startIndex = self->_startIndex;
    if (startIndex != [equalCopy startIndex])
    {
      goto LABEL_26;
    }

    has = self->_has;
    v6 = equalCopy[40];
  }

  v8 = (*&has >> 1) & 1;
  if (v8 != ((v6 >> 1) & 1))
  {
    goto LABEL_26;
  }

  if (v8)
  {
    endIndex = self->_endIndex;
    if (endIndex != [equalCopy endIndex])
    {
      goto LABEL_26;
    }
  }

  matchingTransforms = [(QDSchemaQDEntityMatch *)self matchingTransforms];
  matchingTransforms2 = [equalCopy matchingTransforms];
  if ((matchingTransforms != 0) == (matchingTransforms2 == 0))
  {
    goto LABEL_25;
  }

  matchingTransforms3 = [(QDSchemaQDEntityMatch *)self matchingTransforms];
  if (matchingTransforms3)
  {
    v13 = matchingTransforms3;
    matchingTransforms4 = [(QDSchemaQDEntityMatch *)self matchingTransforms];
    matchingTransforms5 = [equalCopy matchingTransforms];
    v16 = [matchingTransforms4 isEqual:matchingTransforms5];

    if (!v16)
    {
      goto LABEL_26;
    }
  }

  else
  {
  }

  v17 = self->_has;
  v18 = (*&v17 >> 2) & 1;
  v19 = equalCopy[40];
  if (v18 != ((v19 >> 2) & 1))
  {
    goto LABEL_26;
  }

  if (v18)
  {
    matcher = self->_matcher;
    if (matcher != [equalCopy matcher])
    {
      goto LABEL_26;
    }

    v17 = self->_has;
    v19 = equalCopy[40];
  }

  v21 = (*&v17 >> 3) & 1;
  if (v21 != ((v19 >> 3) & 1))
  {
    goto LABEL_26;
  }

  if (v21)
  {
    matchScore = self->_matchScore;
    [equalCopy matchScore];
    if (matchScore != v23)
    {
      goto LABEL_26;
    }
  }

  matchingTransforms = [(QDSchemaQDEntityMatch *)self originAppBundleId];
  matchingTransforms2 = [equalCopy originAppBundleId];
  if ((matchingTransforms != 0) == (matchingTransforms2 == 0))
  {
LABEL_25:

    goto LABEL_26;
  }

  originAppBundleId = [(QDSchemaQDEntityMatch *)self originAppBundleId];
  if (!originAppBundleId)
  {

LABEL_29:
    v29 = 1;
    goto LABEL_27;
  }

  v25 = originAppBundleId;
  originAppBundleId2 = [(QDSchemaQDEntityMatch *)self originAppBundleId];
  originAppBundleId3 = [equalCopy originAppBundleId];
  v28 = [originAppBundleId2 isEqual:originAppBundleId3];

  if (v28)
  {
    goto LABEL_29;
  }

LABEL_26:
  v29 = 0;
LABEL_27:

  return v29;
}

- (void)writeTo:(id)to
{
  v18 = *MEMORY[0x1E69E9840];
  toCopy = to;
  has = self->_has;
  if (has)
  {
    PBDataWriterWriteUint32Field();
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    PBDataWriterWriteUint32Field();
  }

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = self->_matchingTransforms;
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

        [*(*(&v13 + 1) + 8 * i) intValue];
        PBDataWriterWriteInt32Field();
      }

      v8 = [(NSArray *)v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  v11 = self->_has;
  if ((v11 & 4) != 0)
  {
    PBDataWriterWriteInt32Field();
    v11 = self->_has;
  }

  if ((v11 & 8) != 0)
  {
    PBDataWriterWriteFloatField();
  }

  originAppBundleId = [(QDSchemaQDEntityMatch *)self originAppBundleId];

  if (originAppBundleId)
  {
    PBDataWriterWriteStringField();
  }
}

- (void)setHasMatchScore:(BOOL)score
{
  if (score)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (void)setHasMatcher:(BOOL)matcher
{
  if (matcher)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (int)matchingTransformsAtIndex:(unint64_t)index
{
  v3 = [(NSArray *)self->_matchingTransforms objectAtIndexedSubscript:index];
  intValue = [v3 intValue];

  return intValue;
}

- (void)addMatchingTransforms:(int)transforms
{
  v3 = *&transforms;
  matchingTransforms = self->_matchingTransforms;
  if (!matchingTransforms)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_matchingTransforms;
    self->_matchingTransforms = array;

    matchingTransforms = self->_matchingTransforms;
  }

  v8 = [MEMORY[0x1E696AD98] numberWithInt:v3];
  [(NSArray *)matchingTransforms addObject:v8];
}

- (void)setHasEndIndex:(BOOL)index
{
  if (index)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  v8.receiver = self;
  v8.super_class = QDSchemaQDEntityMatch;
  policyCopy = policy;
  v5 = [(SISchemaInstrumentationMessage *)&v8 applySensitiveConditionsPolicy:policyCopy];
  v6 = [policyCopy isConditionSet:{4, v8.receiver, v8.super_class}];

  if (v6)
  {
    [(QDSchemaQDEntityMatch *)self deleteOriginAppBundleId];
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