@interface SIRINLUEXTERNALMatchInfo
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsMatchedAliasTypes:(id)a3;
- (int)matchedAliasTypesAtIndex:(unint64_t)a3;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)dealloc;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation SIRINLUEXTERNALMatchInfo

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (*(v4 + 104))
  {
    self->_matchSignalBitset = *(v4 + 12);
    *&self->_has |= 1u;
  }

  matchScore = self->_matchScore;
  v7 = v5[5];
  v25 = v5;
  if (matchScore)
  {
    if (!v7)
    {
      goto LABEL_9;
    }

    [(SIRICOMMONFloatValue *)matchScore mergeFrom:?];
  }

  else
  {
    if (!v7)
    {
      goto LABEL_9;
    }

    [(SIRINLUEXTERNALMatchInfo *)self setMatchScore:?];
  }

  v5 = v25;
LABEL_9:
  maxTokenCount = self->_maxTokenCount;
  v9 = v5[12];
  if (maxTokenCount)
  {
    if (!v9)
    {
      goto LABEL_15;
    }

    [(SIRICOMMONUInt32Value *)maxTokenCount mergeFrom:?];
  }

  else
  {
    if (!v9)
    {
      goto LABEL_15;
    }

    [(SIRINLUEXTERNALMatchInfo *)self setMaxTokenCount:?];
  }

  v5 = v25;
LABEL_15:
  matchedTokenCount = self->_matchedTokenCount;
  v11 = v5[9];
  if (matchedTokenCount)
  {
    if (!v11)
    {
      goto LABEL_21;
    }

    [(SIRICOMMONUInt32Value *)matchedTokenCount mergeFrom:?];
  }

  else
  {
    if (!v11)
    {
      goto LABEL_21;
    }

    [(SIRINLUEXTERNALMatchInfo *)self setMatchedTokenCount:?];
  }

  v5 = v25;
LABEL_21:
  maxStopWordCount = self->_maxStopWordCount;
  v13 = v5[11];
  if (maxStopWordCount)
  {
    if (!v13)
    {
      goto LABEL_27;
    }

    [(SIRICOMMONUInt32Value *)maxStopWordCount mergeFrom:?];
  }

  else
  {
    if (!v13)
    {
      goto LABEL_27;
    }

    [(SIRINLUEXTERNALMatchInfo *)self setMaxStopWordCount:?];
  }

  v5 = v25;
LABEL_27:
  matchedStopWordCount = self->_matchedStopWordCount;
  v15 = v5[8];
  if (matchedStopWordCount)
  {
    if (!v15)
    {
      goto LABEL_33;
    }

    [(SIRICOMMONUInt32Value *)matchedStopWordCount mergeFrom:?];
  }

  else
  {
    if (!v15)
    {
      goto LABEL_33;
    }

    [(SIRINLUEXTERNALMatchInfo *)self setMatchedStopWordCount:?];
  }

  v5 = v25;
LABEL_33:
  editDistance = self->_editDistance;
  v17 = v5[4];
  if (editDistance)
  {
    if (!v17)
    {
      goto LABEL_39;
    }

    [(SIRICOMMONUInt32Value *)editDistance mergeFrom:?];
  }

  else
  {
    if (!v17)
    {
      goto LABEL_39;
    }

    [(SIRINLUEXTERNALMatchInfo *)self setEditDistance:?];
  }

  v5 = v25;
LABEL_39:
  maxAliasCount = self->_maxAliasCount;
  v19 = v5[10];
  if (maxAliasCount)
  {
    if (!v19)
    {
      goto LABEL_45;
    }

    [(SIRICOMMONUInt32Value *)maxAliasCount mergeFrom:?];
  }

  else
  {
    if (!v19)
    {
      goto LABEL_45;
    }

    [(SIRINLUEXTERNALMatchInfo *)self setMaxAliasCount:?];
  }

  v5 = v25;
LABEL_45:
  matchedAliasCount = self->_matchedAliasCount;
  v21 = v5[7];
  if (matchedAliasCount)
  {
    if (!v21)
    {
      goto LABEL_51;
    }

    [(SIRICOMMONUInt32Value *)matchedAliasCount mergeFrom:?];
  }

  else
  {
    if (!v21)
    {
      goto LABEL_51;
    }

    [(SIRINLUEXTERNALMatchInfo *)self setMatchedAliasCount:?];
  }

  v5 = v25;
LABEL_51:
  v22 = [v5 matchedAliasTypesCount];
  if (v22)
  {
    v23 = v22;
    for (i = 0; i != v23; ++i)
    {
      -[SIRINLUEXTERNALMatchInfo addMatchedAliasTypes:](self, "addMatchedAliasTypes:", [v25 matchedAliasTypesAtIndex:i]);
    }
  }
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v3 = 2654435761 * self->_matchSignalBitset;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(SIRICOMMONFloatValue *)self->_matchScore hash]^ v3;
  v5 = [(SIRICOMMONUInt32Value *)self->_maxTokenCount hash];
  v6 = v4 ^ v5 ^ [(SIRICOMMONUInt32Value *)self->_matchedTokenCount hash];
  v7 = [(SIRICOMMONUInt32Value *)self->_maxStopWordCount hash];
  v8 = v7 ^ [(SIRICOMMONUInt32Value *)self->_matchedStopWordCount hash];
  v9 = v6 ^ v8 ^ [(SIRICOMMONUInt32Value *)self->_editDistance hash];
  v10 = [(SIRICOMMONUInt32Value *)self->_maxAliasCount hash];
  v11 = v10 ^ [(SIRICOMMONUInt32Value *)self->_matchedAliasCount hash];
  return v9 ^ v11 ^ PBRepeatedInt32Hash();
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_24;
  }

  v5 = *(v4 + 104);
  if (*&self->_has)
  {
    if ((*(v4 + 104) & 1) == 0 || self->_matchSignalBitset != *(v4 + 12))
    {
      goto LABEL_24;
    }
  }

  else if (*(v4 + 104))
  {
LABEL_24:
    IsEqual = 0;
    goto LABEL_25;
  }

  matchScore = self->_matchScore;
  if (matchScore | *(v4 + 5) && ![(SIRICOMMONFloatValue *)matchScore isEqual:?])
  {
    goto LABEL_24;
  }

  maxTokenCount = self->_maxTokenCount;
  if (maxTokenCount | *(v4 + 12))
  {
    if (![(SIRICOMMONUInt32Value *)maxTokenCount isEqual:?])
    {
      goto LABEL_24;
    }
  }

  matchedTokenCount = self->_matchedTokenCount;
  if (matchedTokenCount | *(v4 + 9))
  {
    if (![(SIRICOMMONUInt32Value *)matchedTokenCount isEqual:?])
    {
      goto LABEL_24;
    }
  }

  maxStopWordCount = self->_maxStopWordCount;
  if (maxStopWordCount | *(v4 + 11))
  {
    if (![(SIRICOMMONUInt32Value *)maxStopWordCount isEqual:?])
    {
      goto LABEL_24;
    }
  }

  matchedStopWordCount = self->_matchedStopWordCount;
  if (matchedStopWordCount | *(v4 + 8))
  {
    if (![(SIRICOMMONUInt32Value *)matchedStopWordCount isEqual:?])
    {
      goto LABEL_24;
    }
  }

  editDistance = self->_editDistance;
  if (editDistance | *(v4 + 4))
  {
    if (![(SIRICOMMONUInt32Value *)editDistance isEqual:?])
    {
      goto LABEL_24;
    }
  }

  maxAliasCount = self->_maxAliasCount;
  if (maxAliasCount | *(v4 + 10))
  {
    if (![(SIRICOMMONUInt32Value *)maxAliasCount isEqual:?])
    {
      goto LABEL_24;
    }
  }

  matchedAliasCount = self->_matchedAliasCount;
  if (matchedAliasCount | *(v4 + 7))
  {
    if (![(SIRICOMMONUInt32Value *)matchedAliasCount isEqual:?])
    {
      goto LABEL_24;
    }
  }

  IsEqual = PBRepeatedInt32IsEqual();
LABEL_25:

  return IsEqual;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 48) = self->_matchSignalBitset;
    *(v5 + 104) |= 1u;
  }

  v7 = [(SIRICOMMONFloatValue *)self->_matchScore copyWithZone:a3];
  v8 = v6[5];
  v6[5] = v7;

  v9 = [(SIRICOMMONUInt32Value *)self->_maxTokenCount copyWithZone:a3];
  v10 = v6[12];
  v6[12] = v9;

  v11 = [(SIRICOMMONUInt32Value *)self->_matchedTokenCount copyWithZone:a3];
  v12 = v6[9];
  v6[9] = v11;

  v13 = [(SIRICOMMONUInt32Value *)self->_maxStopWordCount copyWithZone:a3];
  v14 = v6[11];
  v6[11] = v13;

  v15 = [(SIRICOMMONUInt32Value *)self->_matchedStopWordCount copyWithZone:a3];
  v16 = v6[8];
  v6[8] = v15;

  v17 = [(SIRICOMMONUInt32Value *)self->_editDistance copyWithZone:a3];
  v18 = v6[4];
  v6[4] = v17;

  v19 = [(SIRICOMMONUInt32Value *)self->_maxAliasCount copyWithZone:a3];
  v20 = v6[10];
  v6[10] = v19;

  v21 = [(SIRICOMMONUInt32Value *)self->_matchedAliasCount copyWithZone:a3];
  v22 = v6[7];
  v6[7] = v21;

  PBRepeatedInt32Copy();
  return v6;
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  if (*&self->_has)
  {
    v4[12] = self->_matchSignalBitset;
    *(v4 + 104) |= 1u;
  }

  v8 = v4;
  if (self->_matchScore)
  {
    [v4 setMatchScore:?];
  }

  if (self->_maxTokenCount)
  {
    [v8 setMaxTokenCount:?];
  }

  if (self->_matchedTokenCount)
  {
    [v8 setMatchedTokenCount:?];
  }

  if (self->_maxStopWordCount)
  {
    [v8 setMaxStopWordCount:?];
  }

  if (self->_matchedStopWordCount)
  {
    [v8 setMatchedStopWordCount:?];
  }

  if (self->_editDistance)
  {
    [v8 setEditDistance:?];
  }

  if (self->_maxAliasCount)
  {
    [v8 setMaxAliasCount:?];
  }

  if (self->_matchedAliasCount)
  {
    [v8 setMatchedAliasCount:?];
  }

  if ([(SIRINLUEXTERNALMatchInfo *)self matchedAliasTypesCount])
  {
    [v8 clearMatchedAliasTypes];
    v5 = [(SIRINLUEXTERNALMatchInfo *)self matchedAliasTypesCount];
    if (v5)
    {
      v6 = v5;
      for (i = 0; i != v6; ++i)
      {
        [v8 addMatchedAliasTypes:{-[SIRINLUEXTERNALMatchInfo matchedAliasTypesAtIndex:](self, "matchedAliasTypesAtIndex:", i)}];
      }
    }
  }
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v9 = v4;
  if (*&self->_has)
  {
    matchSignalBitset = self->_matchSignalBitset;
    PBDataWriterWriteFixed32Field();
    v4 = v9;
  }

  if (self->_matchScore)
  {
    PBDataWriterWriteSubmessage();
    v4 = v9;
  }

  if (self->_maxTokenCount)
  {
    PBDataWriterWriteSubmessage();
    v4 = v9;
  }

  if (self->_matchedTokenCount)
  {
    PBDataWriterWriteSubmessage();
    v4 = v9;
  }

  if (self->_maxStopWordCount)
  {
    PBDataWriterWriteSubmessage();
    v4 = v9;
  }

  if (self->_matchedStopWordCount)
  {
    PBDataWriterWriteSubmessage();
    v4 = v9;
  }

  if (self->_editDistance)
  {
    PBDataWriterWriteSubmessage();
    v4 = v9;
  }

  if (self->_maxAliasCount)
  {
    PBDataWriterWriteSubmessage();
    v4 = v9;
  }

  if (self->_matchedAliasCount)
  {
    PBDataWriterWriteSubmessage();
    v4 = v9;
  }

  p_matchedAliasTypes = &self->_matchedAliasTypes;
  if (p_matchedAliasTypes->count)
  {
    v7 = 0;
    do
    {
      v8 = p_matchedAliasTypes->list[v7];
      PBDataWriterWriteInt32Field();
      v4 = v9;
      ++v7;
    }

    while (v7 < p_matchedAliasTypes->count);
  }
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if (*&self->_has)
  {
    v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_matchSignalBitset];
    [v3 setObject:v4 forKey:@"match_signal_bitset"];
  }

  matchScore = self->_matchScore;
  if (matchScore)
  {
    v6 = [(SIRICOMMONFloatValue *)matchScore dictionaryRepresentation];
    [v3 setObject:v6 forKey:@"match_score"];
  }

  maxTokenCount = self->_maxTokenCount;
  if (maxTokenCount)
  {
    v8 = [(SIRICOMMONUInt32Value *)maxTokenCount dictionaryRepresentation];
    [v3 setObject:v8 forKey:@"max_token_count"];
  }

  matchedTokenCount = self->_matchedTokenCount;
  if (matchedTokenCount)
  {
    v10 = [(SIRICOMMONUInt32Value *)matchedTokenCount dictionaryRepresentation];
    [v3 setObject:v10 forKey:@"matched_token_count"];
  }

  maxStopWordCount = self->_maxStopWordCount;
  if (maxStopWordCount)
  {
    v12 = [(SIRICOMMONUInt32Value *)maxStopWordCount dictionaryRepresentation];
    [v3 setObject:v12 forKey:@"max_stop_word_count"];
  }

  matchedStopWordCount = self->_matchedStopWordCount;
  if (matchedStopWordCount)
  {
    v14 = [(SIRICOMMONUInt32Value *)matchedStopWordCount dictionaryRepresentation];
    [v3 setObject:v14 forKey:@"matched_stop_word_count"];
  }

  editDistance = self->_editDistance;
  if (editDistance)
  {
    v16 = [(SIRICOMMONUInt32Value *)editDistance dictionaryRepresentation];
    [v3 setObject:v16 forKey:@"edit_distance"];
  }

  maxAliasCount = self->_maxAliasCount;
  if (maxAliasCount)
  {
    v18 = [(SIRICOMMONUInt32Value *)maxAliasCount dictionaryRepresentation];
    [v3 setObject:v18 forKey:@"max_alias_count"];
  }

  matchedAliasCount = self->_matchedAliasCount;
  if (matchedAliasCount)
  {
    v20 = [(SIRICOMMONUInt32Value *)matchedAliasCount dictionaryRepresentation];
    [v3 setObject:v20 forKey:@"matched_alias_count"];
  }

  p_matchedAliasTypes = &self->_matchedAliasTypes;
  if (self->_matchedAliasTypes.count)
  {
    v22 = [MEMORY[0x1E695DF70] arrayWithCapacity:?];
    if (p_matchedAliasTypes->count)
    {
      v23 = 0;
      do
      {
        v24 = p_matchedAliasTypes->list[v23];
        if (v24 >= 0xC)
        {
          v25 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", p_matchedAliasTypes->list[v23]];
        }

        else
        {
          v25 = off_1E8328420[v24];
        }

        [v22 addObject:v25];

        ++v23;
      }

      while (v23 < p_matchedAliasTypes->count);
    }

    [v3 setObject:v22 forKey:@"matched_alias_types"];
  }

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = SIRINLUEXTERNALMatchInfo;
  v4 = [(SIRINLUEXTERNALMatchInfo *)&v8 description];
  v5 = [(SIRINLUEXTERNALMatchInfo *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (int)StringAsMatchedAliasTypes:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"ALIAS_TYPE_UNDEFINED"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"ALIAS_TYPE_HOME_AUTOMATION"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"ALIAS_TYPE_SYNONYM"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"ALIAS_TYPE_TRANSLITERATION"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"ALIAS_TYPE_EXPANDED_EMOJI"])
  {
    v4 = 4;
  }

  else if ([v3 isEqualToString:@"ALIAS_TYPE_CONTACT_RELATIONSHIP"])
  {
    v4 = 5;
  }

  else if ([v3 isEqualToString:@"ALIAS_TYPE_CONTACT_HYPOCORISM"])
  {
    v4 = 6;
  }

  else if ([v3 isEqualToString:@"ALIAS_TYPE_CONTACT_HANDLE"])
  {
    v4 = 7;
  }

  else if ([v3 isEqualToString:@"ALIAS_TYPE_PREFIX_MATCHING"])
  {
    v4 = 8;
  }

  else if ([v3 isEqualToString:@"ALIAS_TYPE_DIACRITIC_REMOVAL"])
  {
    v4 = 9;
  }

  else if ([v3 isEqualToString:@"ALIAS_TYPE_PHONETIC_MATCHER"])
  {
    v4 = 10;
  }

  else if ([v3 isEqualToString:@"ALIAS_TYPE_LEMMATIZATION"])
  {
    v4 = 11;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (int)matchedAliasTypesAtIndex:(unint64_t)a3
{
  p_matchedAliasTypes = &self->_matchedAliasTypes;
  count = self->_matchedAliasTypes.count;
  if (count <= a3)
  {
    v6 = MEMORY[0x1E695DF30];
    v7 = *MEMORY[0x1E695DA20];
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"idx (%lu) is out of range (%lu)", a3, count];
    v9 = [v6 exceptionWithName:v7 reason:v8 userInfo:0];
    [v9 raise];
  }

  return p_matchedAliasTypes->list[a3];
}

- (void)dealloc
{
  PBRepeatedInt32Clear();
  v3.receiver = self;
  v3.super_class = SIRINLUEXTERNALMatchInfo;
  [(SIRINLUEXTERNALMatchInfo *)&v3 dealloc];
}

@end