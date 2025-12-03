@interface USOSchemaUSOMatchInfo
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (USOSchemaUSOMatchInfo)initWithDictionary:(id)dictionary;
- (USOSchemaUSOMatchInfo)initWithJSON:(id)n;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (int)matchedAliasTypesAtIndex:(unint64_t)index;
- (unint64_t)hash;
- (void)addMatchedAliasTypes:(int)types;
- (void)setHasEditDistance:(BOOL)distance;
- (void)setHasMatchScore:(BOOL)score;
- (void)setHasMatchedAliasCount:(BOOL)count;
- (void)setHasMatchedStopWordCount:(BOOL)count;
- (void)setHasMatchedTokenCount:(BOOL)count;
- (void)setHasMaxAliasCount:(BOOL)count;
- (void)setHasMaxStopWordCount:(BOOL)count;
- (void)setHasMaxTokenCount:(BOOL)count;
- (void)writeTo:(id)to;
@end

@implementation USOSchemaUSOMatchInfo

- (USOSchemaUSOMatchInfo)initWithDictionary:(id)dictionary
{
  v38 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v36.receiver = self;
  v36.super_class = USOSchemaUSOMatchInfo;
  v5 = [(USOSchemaUSOMatchInfo *)&v36 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"matchSignalBitset"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[USOSchemaUSOMatchInfo setMatchSignalBitset:](v5, "setMatchSignalBitset:", [v6 unsignedIntValue]);
    }

    v7 = [dictionaryCopy objectForKeyedSubscript:@"matchScore"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v7 floatValue];
      [(USOSchemaUSOMatchInfo *)v5 setMatchScore:?];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"maxTokenCount"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[USOSchemaUSOMatchInfo setMaxTokenCount:](v5, "setMaxTokenCount:", [v8 unsignedIntValue]);
    }

    v9 = [dictionaryCopy objectForKeyedSubscript:@"matchedTokenCount"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[USOSchemaUSOMatchInfo setMatchedTokenCount:](v5, "setMatchedTokenCount:", [v9 unsignedIntValue]);
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"maxStopWordCount"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[USOSchemaUSOMatchInfo setMaxStopWordCount:](v5, "setMaxStopWordCount:", [v10 unsignedIntValue]);
    }

    v11 = [dictionaryCopy objectForKeyedSubscript:@"matchedStopWordCount"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[USOSchemaUSOMatchInfo setMatchedStopWordCount:](v5, "setMatchedStopWordCount:", [v11 unsignedIntValue]);
    }

    v12 = [dictionaryCopy objectForKeyedSubscript:@"editDistance"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[USOSchemaUSOMatchInfo setEditDistance:](v5, "setEditDistance:", [v12 unsignedIntValue]);
    }

    v31 = v11;
    v13 = [dictionaryCopy objectForKeyedSubscript:@"maxAliasCount"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[USOSchemaUSOMatchInfo setMaxAliasCount:](v5, "setMaxAliasCount:", [v13 unsignedIntValue]);
    }

    v29 = v13;
    v30 = v12;
    v14 = [dictionaryCopy objectForKeyedSubscript:@"matchedAliasCount"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[USOSchemaUSOMatchInfo setMatchedAliasCount:](v5, "setMatchedAliasCount:", [v14 unsignedIntValue]);
    }

    v15 = [dictionaryCopy objectForKeyedSubscript:@"matchedAliasTypes"];
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
              -[USOSchemaUSOMatchInfo addMatchedAliasTypes:](v5, "addMatchedAliasTypes:", [v21 intValue]);
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

- (USOSchemaUSOMatchInfo)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(USOSchemaUSOMatchInfo *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(USOSchemaUSOMatchInfo *)self dictionaryRepresentation];
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
  if ((has & 0x40) != 0)
  {
    v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[USOSchemaUSOMatchInfo editDistance](self, "editDistance")}];
    [dictionary setObject:v11 forKeyedSubscript:@"editDistance"];

    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 1) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_19;
    }
  }

  else if ((has & 2) == 0)
  {
    goto LABEL_3;
  }

  v12 = MEMORY[0x1E696AD98];
  [(USOSchemaUSOMatchInfo *)self matchScore];
  v13 = [v12 numberWithFloat:?];
  [dictionary setObject:v13 forKeyedSubscript:@"matchScore"];

  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_4:
    if ((has & 0x100) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_19:
  v14 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[USOSchemaUSOMatchInfo matchSignalBitset](self, "matchSignalBitset")}];
  [dictionary setObject:v14 forKeyedSubscript:@"matchSignalBitset"];

  if ((*&self->_has & 0x100) != 0)
  {
LABEL_5:
    v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[USOSchemaUSOMatchInfo matchedAliasCount](self, "matchedAliasCount")}];
    [dictionary setObject:v5 forKeyedSubscript:@"matchedAliasCount"];
  }

LABEL_6:
  if ([(NSArray *)self->_matchedAliasTypes count])
  {
    matchedAliasTypes = [(USOSchemaUSOMatchInfo *)self matchedAliasTypes];
    v7 = [matchedAliasTypes copy];
    [dictionary setObject:v7 forKeyedSubscript:@"matchedAliasTypes"];
  }

  v8 = self->_has;
  if ((v8 & 0x20) != 0)
  {
    v15 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[USOSchemaUSOMatchInfo matchedStopWordCount](self, "matchedStopWordCount")}];
    [dictionary setObject:v15 forKeyedSubscript:@"matchedStopWordCount"];

    v8 = self->_has;
    if ((v8 & 8) == 0)
    {
LABEL_10:
      if ((v8 & 0x80) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_23;
    }
  }

  else if ((v8 & 8) == 0)
  {
    goto LABEL_10;
  }

  v16 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[USOSchemaUSOMatchInfo matchedTokenCount](self, "matchedTokenCount")}];
  [dictionary setObject:v16 forKeyedSubscript:@"matchedTokenCount"];

  v8 = self->_has;
  if ((v8 & 0x80) == 0)
  {
LABEL_11:
    if ((v8 & 0x10) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_24;
  }

LABEL_23:
  v17 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[USOSchemaUSOMatchInfo maxAliasCount](self, "maxAliasCount")}];
  [dictionary setObject:v17 forKeyedSubscript:@"maxAliasCount"];

  v8 = self->_has;
  if ((v8 & 0x10) == 0)
  {
LABEL_12:
    if ((v8 & 4) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

LABEL_24:
  v18 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[USOSchemaUSOMatchInfo maxStopWordCount](self, "maxStopWordCount")}];
  [dictionary setObject:v18 forKeyedSubscript:@"maxStopWordCount"];

  if ((*&self->_has & 4) != 0)
  {
LABEL_13:
    v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[USOSchemaUSOMatchInfo maxTokenCount](self, "maxTokenCount")}];
    [dictionary setObject:v9 forKeyedSubscript:@"maxTokenCount"];
  }

LABEL_14:
  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  has = self->_has;
  if (has)
  {
    v9 = 2654435761 * self->_matchSignalBitset;
    if ((has & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_9:
    v14 = 0;
    goto LABEL_10;
  }

  v9 = 0;
  if ((has & 2) == 0)
  {
    goto LABEL_9;
  }

LABEL_3:
  matchScore = self->_matchScore;
  if (matchScore >= 0.0)
  {
    v11 = matchScore;
  }

  else
  {
    v11 = -matchScore;
  }

  *v6.i64 = floor(v11 + 0.5);
  v12 = (v11 - *v6.i64) * 1.84467441e19;
  *v7.i64 = *v6.i64 - trunc(*v6.i64 * 5.42101086e-20) * 1.84467441e19;
  v13.f64[0] = NAN;
  v13.f64[1] = NAN;
  v14 = 2654435761u * *vbslq_s8(vnegq_f64(v13), v7, v6).i64;
  if (v12 >= 0.0)
  {
    if (v12 > 0.0)
    {
      v14 += v12;
    }
  }

  else
  {
    v14 -= fabs(v12);
  }

LABEL_10:
  if ((has & 4) != 0)
  {
    v15 = 2654435761 * self->_maxTokenCount;
    if ((has & 8) != 0)
    {
LABEL_12:
      v16 = 2654435761 * self->_matchedTokenCount;
      if ((has & 0x10) != 0)
      {
        goto LABEL_13;
      }

      goto LABEL_20;
    }
  }

  else
  {
    v15 = 0;
    if ((has & 8) != 0)
    {
      goto LABEL_12;
    }
  }

  v16 = 0;
  if ((has & 0x10) != 0)
  {
LABEL_13:
    v17 = 2654435761 * self->_maxStopWordCount;
    if ((has & 0x20) != 0)
    {
      goto LABEL_14;
    }

    goto LABEL_21;
  }

LABEL_20:
  v17 = 0;
  if ((has & 0x20) != 0)
  {
LABEL_14:
    v18 = 2654435761 * self->_matchedStopWordCount;
    if ((has & 0x40) != 0)
    {
      goto LABEL_15;
    }

    goto LABEL_22;
  }

LABEL_21:
  v18 = 0;
  if ((has & 0x40) != 0)
  {
LABEL_15:
    v19 = 2654435761 * self->_editDistance;
    if ((has & 0x80) != 0)
    {
      goto LABEL_16;
    }

LABEL_23:
    v20 = 0;
    if ((*&self->_has & 0x100) != 0)
    {
      goto LABEL_17;
    }

LABEL_24:
    v21 = 0;
    return v14 ^ v9 ^ v15 ^ v16 ^ v17 ^ v18 ^ v19 ^ v20 ^ v21 ^ [(NSArray *)self->_matchedAliasTypes hash:v3];
  }

LABEL_22:
  v19 = 0;
  if ((has & 0x80) == 0)
  {
    goto LABEL_23;
  }

LABEL_16:
  v20 = 2654435761 * self->_maxAliasCount;
  if ((*&self->_has & 0x100) == 0)
  {
    goto LABEL_24;
  }

LABEL_17:
  v21 = 2654435761 * self->_matchedAliasCount;
  return v14 ^ v9 ^ v15 ^ v16 ^ v17 ^ v18 ^ v19 ^ v20 ^ v21 ^ [(NSArray *)self->_matchedAliasTypes hash:v3];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_42;
  }

  has = self->_has;
  v6 = equalCopy[28];
  if ((*&has & 1) != (v6 & 1))
  {
    goto LABEL_42;
  }

  if (*&has)
  {
    matchSignalBitset = self->_matchSignalBitset;
    if (matchSignalBitset != [equalCopy matchSignalBitset])
    {
      goto LABEL_42;
    }

    has = self->_has;
    v6 = equalCopy[28];
  }

  v8 = (*&has >> 1) & 1;
  if (v8 == ((v6 >> 1) & 1))
  {
    if (v8)
    {
      matchScore = self->_matchScore;
      [equalCopy matchScore];
      if (matchScore != v10)
      {
        goto LABEL_42;
      }

      has = self->_has;
      v6 = equalCopy[28];
    }

    v11 = (*&has >> 2) & 1;
    if (v11 == ((v6 >> 2) & 1))
    {
      if (v11)
      {
        maxTokenCount = self->_maxTokenCount;
        if (maxTokenCount != [equalCopy maxTokenCount])
        {
          goto LABEL_42;
        }

        has = self->_has;
        v6 = equalCopy[28];
      }

      v13 = (*&has >> 3) & 1;
      if (v13 == ((v6 >> 3) & 1))
      {
        if (v13)
        {
          matchedTokenCount = self->_matchedTokenCount;
          if (matchedTokenCount != [equalCopy matchedTokenCount])
          {
            goto LABEL_42;
          }

          has = self->_has;
          v6 = equalCopy[28];
        }

        v15 = (*&has >> 4) & 1;
        if (v15 == ((v6 >> 4) & 1))
        {
          if (v15)
          {
            maxStopWordCount = self->_maxStopWordCount;
            if (maxStopWordCount != [equalCopy maxStopWordCount])
            {
              goto LABEL_42;
            }

            has = self->_has;
            v6 = equalCopy[28];
          }

          v17 = (*&has >> 5) & 1;
          if (v17 == ((v6 >> 5) & 1))
          {
            if (v17)
            {
              matchedStopWordCount = self->_matchedStopWordCount;
              if (matchedStopWordCount != [equalCopy matchedStopWordCount])
              {
                goto LABEL_42;
              }

              has = self->_has;
              v6 = equalCopy[28];
            }

            v19 = (*&has >> 6) & 1;
            if (v19 == ((v6 >> 6) & 1))
            {
              if (v19)
              {
                editDistance = self->_editDistance;
                if (editDistance != [equalCopy editDistance])
                {
                  goto LABEL_42;
                }

                has = self->_has;
                v6 = equalCopy[28];
              }

              v21 = (*&has >> 7) & 1;
              if (v21 == ((v6 >> 7) & 1))
              {
                if (v21)
                {
                  maxAliasCount = self->_maxAliasCount;
                  if (maxAliasCount != [equalCopy maxAliasCount])
                  {
                    goto LABEL_42;
                  }

                  has = self->_has;
                  v6 = equalCopy[28];
                }

                v23 = (*&has >> 8) & 1;
                if (v23 == ((v6 >> 8) & 1))
                {
                  if (!v23 || (matchedAliasCount = self->_matchedAliasCount, matchedAliasCount == [equalCopy matchedAliasCount]))
                  {
                    matchedAliasTypes = [(USOSchemaUSOMatchInfo *)self matchedAliasTypes];
                    matchedAliasTypes2 = [equalCopy matchedAliasTypes];
                    v27 = matchedAliasTypes2;
                    if ((matchedAliasTypes != 0) != (matchedAliasTypes2 == 0))
                    {
                      matchedAliasTypes3 = [(USOSchemaUSOMatchInfo *)self matchedAliasTypes];
                      if (!matchedAliasTypes3)
                      {

LABEL_45:
                        v33 = 1;
                        goto LABEL_43;
                      }

                      v29 = matchedAliasTypes3;
                      matchedAliasTypes4 = [(USOSchemaUSOMatchInfo *)self matchedAliasTypes];
                      matchedAliasTypes5 = [equalCopy matchedAliasTypes];
                      v32 = [matchedAliasTypes4 isEqual:matchedAliasTypes5];

                      if (v32)
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
  v33 = 0;
LABEL_43:

  return v33;
}

- (void)writeTo:(id)to
{
  v16 = *MEMORY[0x1E69E9840];
  toCopy = to;
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

  PBDataWriterWriteFloatField();
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
  v6 = self->_matchedAliasTypes;
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

        [*(*(&v11 + 1) + 8 * v10) intValue];
        PBDataWriterWriteInt32Field();
        ++v10;
      }

      while (v8 != v10);
      v8 = [(NSArray *)v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v8);
  }
}

- (int)matchedAliasTypesAtIndex:(unint64_t)index
{
  v3 = [(NSArray *)self->_matchedAliasTypes objectAtIndexedSubscript:index];
  intValue = [v3 intValue];

  return intValue;
}

- (void)addMatchedAliasTypes:(int)types
{
  v3 = *&types;
  matchedAliasTypes = self->_matchedAliasTypes;
  if (!matchedAliasTypes)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_matchedAliasTypes;
    self->_matchedAliasTypes = array;

    matchedAliasTypes = self->_matchedAliasTypes;
  }

  v8 = [MEMORY[0x1E696AD98] numberWithInt:v3];
  [(NSArray *)matchedAliasTypes addObject:v8];
}

- (void)setHasMatchedAliasCount:(BOOL)count
{
  if (count)
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFEFF | v3;
}

- (void)setHasMaxAliasCount:(BOOL)count
{
  if (count)
  {
    v3 = 128;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFF7F | v3;
}

- (void)setHasEditDistance:(BOOL)distance
{
  if (distance)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFBF | v3;
}

- (void)setHasMatchedStopWordCount:(BOOL)count
{
  if (count)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFDF | v3;
}

- (void)setHasMaxStopWordCount:(BOOL)count
{
  if (count)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFEF | v3;
}

- (void)setHasMatchedTokenCount:(BOOL)count
{
  if (count)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFF7 | v3;
}

- (void)setHasMaxTokenCount:(BOOL)count
{
  if (count)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFB | v3;
}

- (void)setHasMatchScore:(BOOL)score
{
  if (score)
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