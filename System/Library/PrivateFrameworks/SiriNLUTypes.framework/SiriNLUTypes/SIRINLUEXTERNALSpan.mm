@interface SIRINLUEXTERNALSpan
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsMatcherNames:(id)a3;
- (int)matcherNamesAtIndex:(unint64_t)a3;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)dealloc;
- (void)mergeFrom:(id)a3;
- (void)setHasEndTokenIndex:(BOOL)a3;
- (void)setHasStartTokenIndex:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation SIRINLUEXTERNALSpan

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v11 = v4;
  if (*(v4 + 7))
  {
    [(SIRINLUEXTERNALSpan *)self setLabel:?];
    v4 = v11;
  }

  if (*(v4 + 6))
  {
    [(SIRINLUEXTERNALSpan *)self setInput:?];
    v4 = v11;
  }

  v5 = *(v4 + 80);
  if ((v5 & 4) != 0)
  {
    self->_startTokenIndex = *(v4 + 16);
    *&self->_has |= 4u;
    v5 = *(v4 + 80);
  }

  if ((v5 & 2) != 0)
  {
    self->_endTokenIndex = *(v4 + 10);
    *&self->_has |= 2u;
  }

  usoGraph = self->_usoGraph;
  v7 = *(v4 + 9);
  if (usoGraph)
  {
    if (!v7)
    {
      goto LABEL_15;
    }

    [(SIRINLUEXTERNALUsoGraph *)usoGraph mergeFrom:?];
  }

  else
  {
    if (!v7)
    {
      goto LABEL_15;
    }

    [(SIRINLUEXTERNALSpan *)self setUsoGraph:?];
  }

  v4 = v11;
LABEL_15:
  if (*(v4 + 80))
  {
    self->_score = *(v4 + 4);
    *&self->_has |= 1u;
  }

  v8 = [v4 matcherNamesCount];
  if (v8)
  {
    v9 = v8;
    for (i = 0; i != v9; ++i)
    {
      -[SIRINLUEXTERNALSpan addMatcherNames:](self, "addMatcherNames:", [v11 matcherNamesAtIndex:i]);
    }
  }
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_label hash];
  v4 = [(NSString *)self->_input hash];
  if ((*&self->_has & 4) != 0)
  {
    v5 = 2654435761 * self->_startTokenIndex;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v5 = 0;
    if ((*&self->_has & 2) != 0)
    {
LABEL_3:
      v6 = 2654435761 * self->_endTokenIndex;
      goto LABEL_6;
    }
  }

  v6 = 0;
LABEL_6:
  v7 = [(SIRINLUEXTERNALUsoGraph *)self->_usoGraph hash];
  if (*&self->_has)
  {
    score = self->_score;
    if (score < 0.0)
    {
      score = -score;
    }

    *v8.i64 = floor(score + 0.5);
    v12 = (score - *v8.i64) * 1.84467441e19;
    *v9.i64 = *v8.i64 - trunc(*v8.i64 * 5.42101086e-20) * 1.84467441e19;
    v13.f64[0] = NAN;
    v13.f64[1] = NAN;
    v10 = 2654435761u * *vbslq_s8(vnegq_f64(v13), v9, v8).i64;
    if (v12 >= 0.0)
    {
      if (v12 > 0.0)
      {
        v10 += v12;
      }
    }

    else
    {
      v10 -= fabs(v12);
    }
  }

  else
  {
    v10 = 0;
  }

  return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v10 ^ PBRepeatedInt32Hash();
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_25;
  }

  label = self->_label;
  if (label | *(v4 + 7))
  {
    if (![(NSString *)label isEqual:?])
    {
      goto LABEL_25;
    }
  }

  input = self->_input;
  if (input | *(v4 + 6))
  {
    if (![(NSString *)input isEqual:?])
    {
      goto LABEL_25;
    }
  }

  has = self->_has;
  v8 = *(v4 + 80);
  if ((has & 4) != 0)
  {
    if ((*(v4 + 80) & 4) == 0 || self->_startTokenIndex != *(v4 + 16))
    {
      goto LABEL_25;
    }
  }

  else if ((*(v4 + 80) & 4) != 0)
  {
    goto LABEL_25;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 80) & 2) == 0 || self->_endTokenIndex != *(v4 + 10))
    {
      goto LABEL_25;
    }
  }

  else if ((*(v4 + 80) & 2) != 0)
  {
    goto LABEL_25;
  }

  usoGraph = self->_usoGraph;
  if (usoGraph | *(v4 + 9))
  {
    if (![(SIRINLUEXTERNALUsoGraph *)usoGraph isEqual:?])
    {
LABEL_25:
      IsEqual = 0;
      goto LABEL_26;
    }

    has = self->_has;
    v8 = *(v4 + 80);
  }

  if (has)
  {
    if ((v8 & 1) == 0 || self->_score != *(v4 + 4))
    {
      goto LABEL_25;
    }
  }

  else if (v8)
  {
    goto LABEL_25;
  }

  IsEqual = PBRepeatedInt32IsEqual();
LABEL_26:

  return IsEqual;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_label copyWithZone:a3];
  v7 = *(v5 + 56);
  *(v5 + 56) = v6;

  v8 = [(NSString *)self->_input copyWithZone:a3];
  v9 = *(v5 + 48);
  *(v5 + 48) = v8;

  has = self->_has;
  if ((has & 4) != 0)
  {
    *(v5 + 64) = self->_startTokenIndex;
    *(v5 + 80) |= 4u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    *(v5 + 40) = self->_endTokenIndex;
    *(v5 + 80) |= 2u;
  }

  v11 = [(SIRINLUEXTERNALUsoGraph *)self->_usoGraph copyWithZone:a3];
  v12 = *(v5 + 72);
  *(v5 + 72) = v11;

  if (*&self->_has)
  {
    *(v5 + 32) = self->_score;
    *(v5 + 80) |= 1u;
  }

  PBRepeatedInt32Copy();
  return v5;
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v9 = v4;
  if (self->_label)
  {
    [v4 setLabel:?];
    v4 = v9;
  }

  if (self->_input)
  {
    [v9 setInput:?];
    v4 = v9;
  }

  has = self->_has;
  if ((has & 4) != 0)
  {
    *(v4 + 16) = self->_startTokenIndex;
    *(v4 + 80) |= 4u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    *(v4 + 10) = self->_endTokenIndex;
    *(v4 + 80) |= 2u;
  }

  if (self->_usoGraph)
  {
    [v9 setUsoGraph:?];
    v4 = v9;
  }

  if (*&self->_has)
  {
    *(v4 + 4) = *&self->_score;
    *(v4 + 80) |= 1u;
  }

  if ([(SIRINLUEXTERNALSpan *)self matcherNamesCount])
  {
    [v9 clearMatcherNames];
    v6 = [(SIRINLUEXTERNALSpan *)self matcherNamesCount];
    if (v6)
    {
      v7 = v6;
      for (i = 0; i != v7; ++i)
      {
        [v9 addMatcherNames:{-[SIRINLUEXTERNALSpan matcherNamesAtIndex:](self, "matcherNamesAtIndex:", i)}];
      }
    }
  }
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v12 = v4;
  if (self->_label)
  {
    PBDataWriterWriteStringField();
    v4 = v12;
  }

  if (self->_input)
  {
    PBDataWriterWriteStringField();
    v4 = v12;
  }

  has = self->_has;
  if ((has & 4) != 0)
  {
    startTokenIndex = self->_startTokenIndex;
    PBDataWriterWriteUint32Field();
    v4 = v12;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    endTokenIndex = self->_endTokenIndex;
    PBDataWriterWriteUint32Field();
    v4 = v12;
  }

  if (self->_usoGraph)
  {
    PBDataWriterWriteSubmessage();
    v4 = v12;
  }

  if (*&self->_has)
  {
    score = self->_score;
    PBDataWriterWriteDoubleField();
    v4 = v12;
  }

  p_matcherNames = &self->_matcherNames;
  if (p_matcherNames->count)
  {
    v10 = 0;
    do
    {
      v11 = p_matcherNames->list[v10];
      PBDataWriterWriteInt32Field();
      v4 = v12;
      ++v10;
    }

    while (v10 < p_matcherNames->count);
  }
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = v3;
  label = self->_label;
  if (label)
  {
    [v3 setObject:label forKey:@"label"];
  }

  input = self->_input;
  if (input)
  {
    [v4 setObject:input forKey:@"input"];
  }

  has = self->_has;
  if ((has & 4) != 0)
  {
    v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_startTokenIndex];
    [v4 setObject:v8 forKey:@"start_token_index"];

    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_endTokenIndex];
    [v4 setObject:v9 forKey:@"end_token_index"];
  }

  usoGraph = self->_usoGraph;
  if (usoGraph)
  {
    v11 = [(SIRINLUEXTERNALUsoGraph *)usoGraph dictionaryRepresentation];
    [v4 setObject:v11 forKey:@"uso_graph"];
  }

  if (*&self->_has)
  {
    v12 = [MEMORY[0x1E696AD98] numberWithDouble:self->_score];
    [v4 setObject:v12 forKey:@"score"];
  }

  p_matcherNames = &self->_matcherNames;
  if (self->_matcherNames.count)
  {
    v14 = [MEMORY[0x1E695DF70] arrayWithCapacity:?];
    if (p_matcherNames->count)
    {
      v15 = 0;
      do
      {
        v16 = p_matcherNames->list[v15];
        if (v16 >= 5)
        {
          v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", p_matcherNames->list[v15]];
        }

        else
        {
          v17 = off_1E8328158[v16];
        }

        [v14 addObject:v17];

        ++v15;
      }

      while (v15 < p_matcherNames->count);
    }

    [v4 setObject:v14 forKey:@"matcher_names"];
  }

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = SIRINLUEXTERNALSpan;
  v4 = [(SIRINLUEXTERNALSpan *)&v8 description];
  v5 = [(SIRINLUEXTERNALSpan *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (int)StringAsMatcherNames:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"UNKNOWN"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"SIRI_VOCABULARY_MATCHER"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"MRR_DETECTOR"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"MRR_MATCHER"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"CONTEXT_MATCHER"])
  {
    v4 = 4;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (int)matcherNamesAtIndex:(unint64_t)a3
{
  p_matcherNames = &self->_matcherNames;
  count = self->_matcherNames.count;
  if (count <= a3)
  {
    v6 = MEMORY[0x1E695DF30];
    v7 = *MEMORY[0x1E695DA20];
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"idx (%lu) is out of range (%lu)", a3, count];
    v9 = [v6 exceptionWithName:v7 reason:v8 userInfo:0];
    [v9 raise];
  }

  return p_matcherNames->list[a3];
}

- (void)setHasEndTokenIndex:(BOOL)a3
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

- (void)setHasStartTokenIndex:(BOOL)a3
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

- (void)dealloc
{
  PBRepeatedInt32Clear();
  v3.receiver = self;
  v3.super_class = SIRINLUEXTERNALSpan;
  [(SIRINLUEXTERNALSpan *)&v3 dealloc];
}

@end