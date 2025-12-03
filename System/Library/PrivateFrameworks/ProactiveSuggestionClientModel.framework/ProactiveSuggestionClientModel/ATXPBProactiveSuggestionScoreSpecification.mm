@interface ATXPBProactiveSuggestionScoreSpecification
- (BOOL)isEqual:(id)equal;
- (__CFString)suggestedConfidenceCategoryAsString:(__CFString *)string;
- (double)rawScore;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (uint64_t)StringAsSuggestedConfidenceCategory:(uint64_t)category;
- (uint64_t)hasRawScore;
- (uint64_t)hasSuggestedConfidenceCategory;
- (uint64_t)setHasRawScore:(uint64_t)result;
- (uint64_t)setHasSuggestedConfidenceCategory:(uint64_t)result;
- (uint64_t)setRawScore:(uint64_t)result;
- (uint64_t)setSuggestedConfidenceCategory:(uint64_t)result;
- (uint64_t)suggestedConfidenceCategory;
- (unint64_t)hash;
- (void)copyTo:(uint64_t)to;
- (void)mergeFrom:(uint64_t)from;
- (void)writeTo:(id)to;
@end

@implementation ATXPBProactiveSuggestionScoreSpecification

- (double)rawScore
{
  if (self)
  {
    return *(self + 8);
  }

  else
  {
    return 0.0;
  }
}

- (uint64_t)suggestedConfidenceCategory
{
  if (result)
  {
    if ((*(result + 20) & 2) != 0)
    {
      return *(result + 16);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = ATXPBProactiveSuggestionScoreSpecification;
  v4 = [(ATXPBProactiveSuggestionScoreSpecification *)&v8 description];
  dictionaryRepresentation = [(ATXPBProactiveSuggestionScoreSpecification *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  has = self->_has;
  if (has)
  {
    v5 = [MEMORY[0x1E696AD98] numberWithDouble:self->_rawScore];
    [dictionary setObject:v5 forKey:@"rawScore"];

    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    suggestedConfidenceCategory = self->_suggestedConfidenceCategory;
    if (suggestedConfidenceCategory >= 5)
    {
      v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_suggestedConfidenceCategory];
    }

    else
    {
      v7 = off_1E86A4CD8[suggestedConfidenceCategory];
    }

    [dictionary setObject:v7 forKey:@"suggestedConfidenceCategory"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  has = self->_has;
  v8 = toCopy;
  if (has)
  {
    rawScore = self->_rawScore;
    PBDataWriterWriteDoubleField();
    toCopy = v8;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    suggestedConfidenceCategory = self->_suggestedConfidenceCategory;
    PBDataWriterWriteInt32Field();
    toCopy = v8;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  has = self->_has;
  if (has)
  {
    *(result + 1) = *&self->_rawScore;
    *(result + 20) |= 1u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    *(result + 4) = self->_suggestedConfidenceCategory;
    *(result + 20) |= 2u;
  }

  return result;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_11;
  }

  if (*&self->_has)
  {
    if ((*(equalCopy + 20) & 1) == 0 || self->_rawScore != *(equalCopy + 1))
    {
      goto LABEL_11;
    }
  }

  else if (*(equalCopy + 20))
  {
LABEL_11:
    v5 = 0;
    goto LABEL_12;
  }

  v5 = (*(equalCopy + 20) & 2) == 0;
  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 20) & 2) == 0 || self->_suggestedConfidenceCategory != *(equalCopy + 4))
    {
      goto LABEL_11;
    }

    v5 = 1;
  }

LABEL_12:

  return v5;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    rawScore = self->_rawScore;
    if (rawScore < 0.0)
    {
      rawScore = -rawScore;
    }

    *v2.i64 = floor(rawScore + 0.5);
    v6 = (rawScore - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v7.f64[0] = NAN;
    v7.f64[1] = NAN;
    v4 = 2654435761u * *vbslq_s8(vnegq_f64(v7), v3, v2).i64;
    if (v6 >= 0.0)
    {
      if (v6 > 0.0)
      {
        v4 += v6;
      }
    }

    else
    {
      v4 -= fabs(v6);
    }
  }

  else
  {
    v4 = 0;
  }

  if ((*&self->_has & 2) != 0)
  {
    v8 = 2654435761 * self->_suggestedConfidenceCategory;
  }

  else
  {
    v8 = 0;
  }

  return v8 ^ v4;
}

- (uint64_t)setRawScore:(uint64_t)result
{
  if (result)
  {
    *(result + 20) |= 1u;
    *(result + 8) = a2;
  }

  return result;
}

- (uint64_t)setHasRawScore:(uint64_t)result
{
  if (result)
  {
    *(result + 20) = *(result + 20) & 0xFE | a2;
  }

  return result;
}

- (uint64_t)hasRawScore
{
  if (result)
  {
    return *(result + 20) & 1;
  }

  return result;
}

- (uint64_t)setSuggestedConfidenceCategory:(uint64_t)result
{
  if (result)
  {
    *(result + 20) |= 2u;
    *(result + 16) = a2;
  }

  return result;
}

- (uint64_t)setHasSuggestedConfidenceCategory:(uint64_t)result
{
  if (result)
  {
    if (a2)
    {
      v2 = 2;
    }

    else
    {
      v2 = 0;
    }

    *(result + 20) = *(result + 20) & 0xFD | v2;
  }

  return result;
}

- (uint64_t)hasSuggestedConfidenceCategory
{
  if (result)
  {
    return (*(result + 20) >> 1) & 1;
  }

  return result;
}

- (__CFString)suggestedConfidenceCategoryAsString:(__CFString *)string
{
  if (!string)
  {
LABEL_4:

    return string;
  }

  if (a2 < 5)
  {
    string = off_1E86A4CD8[a2];
    goto LABEL_4;
  }

  string = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a2];

  return string;
}

- (uint64_t)StringAsSuggestedConfidenceCategory:(uint64_t)category
{
  v3 = a2;
  v4 = v3;
  if (category)
  {
    v5 = v3;
    if ([v5 isEqualToString:@"Unknown"])
    {
      v6 = 0;
    }

    else if ([v5 isEqualToString:@"Fallback"])
    {
      v6 = 1;
    }

    else if ([v5 isEqualToString:@"LowConfidence"])
    {
      v6 = 2;
    }

    else if ([v5 isEqualToString:@"MediumConfidence"])
    {
      v6 = 3;
    }

    else if ([v5 isEqualToString:@"HighConfidence"])
    {
      v6 = 4;
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)copyTo:(uint64_t)to
{
  v3 = a2;
  if (to)
  {
    v4 = *(to + 20);
    if (v4)
    {
      v3[1] = *(to + 8);
      *(v3 + 20) |= 1u;
      v4 = *(to + 20);
    }

    if ((v4 & 2) != 0)
    {
      *(v3 + 4) = *(to + 16);
      *(v3 + 20) |= 2u;
    }
  }
}

- (void)mergeFrom:(uint64_t)from
{
  v3 = a2;
  if (from)
  {
    v4 = v3[20];
    if (v4)
    {
      *(from + 8) = *(v3 + 1);
      *(from + 20) |= 1u;
      v4 = v3[20];
    }

    if ((v4 & 2) != 0)
    {
      *(from + 16) = *(v3 + 4);
      *(from + 20) |= 2u;
    }
  }
}

@end