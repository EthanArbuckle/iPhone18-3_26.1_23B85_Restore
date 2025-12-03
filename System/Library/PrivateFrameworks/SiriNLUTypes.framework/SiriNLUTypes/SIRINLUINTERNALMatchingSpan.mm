@interface SIRINLUINTERNALMatchingSpan
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsMatcherNames:(id)names;
- (int)matcherNamesAtIndex:(unint64_t)index;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)dealloc;
- (void)mergeFrom:(id)from;
- (void)setHasStartTokenIndex:(BOOL)index;
- (void)writeTo:(id)to;
@end

@implementation SIRINLUINTERNALMatchingSpan

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v14 = fromCopy;
  if (*(fromCopy + 7))
  {
    [(SIRINLUINTERNALMatchingSpan *)self setLabel:?];
    fromCopy = v14;
  }

  if (*(fromCopy + 5))
  {
    [(SIRINLUINTERNALMatchingSpan *)self setInput:?];
    fromCopy = v14;
  }

  v5 = *(fromCopy + 88);
  if ((v5 & 2) != 0)
  {
    self->_startTokenIndex = *(fromCopy + 18);
    *&self->_has |= 2u;
    v5 = *(fromCopy + 88);
  }

  if (v5)
  {
    self->_endTokenIndex = *(fromCopy + 8);
    *&self->_has |= 1u;
  }

  usoGraph = self->_usoGraph;
  v7 = *(fromCopy + 10);
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

    [(SIRINLUINTERNALMatchingSpan *)self setUsoGraph:?];
  }

  fromCopy = v14;
LABEL_15:
  matcherNamesCount = [fromCopy matcherNamesCount];
  if (matcherNamesCount)
  {
    v9 = matcherNamesCount;
    for (i = 0; i != v9; ++i)
    {
      -[SIRINLUINTERNALMatchingSpan addMatcherNames:](self, "addMatcherNames:", [v14 matcherNamesAtIndex:i]);
    }
  }

  internalSpanData = self->_internalSpanData;
  v12 = v14;
  v13 = v14[6];
  if (internalSpanData)
  {
    if (!v13)
    {
      goto LABEL_24;
    }

    [(SIRINLUINTERNALInternalSpanData *)internalSpanData mergeFrom:?];
  }

  else
  {
    if (!v13)
    {
      goto LABEL_24;
    }

    [(SIRINLUINTERNALMatchingSpan *)self setInternalSpanData:?];
  }

  v12 = v14;
LABEL_24:
  if (v12[8])
  {
    [(SIRINLUINTERNALMatchingSpan *)self setSemanticValue:?];
  }

  MEMORY[0x1EEE66BB8]();
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_label hash];
  v4 = [(NSString *)self->_input hash];
  if ((*&self->_has & 2) != 0)
  {
    v5 = 2654435761 * self->_startTokenIndex;
    if (*&self->_has)
    {
      goto LABEL_3;
    }

LABEL_5:
    v6 = 0;
    goto LABEL_6;
  }

  v5 = 0;
  if ((*&self->_has & 1) == 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  v6 = 2654435761 * self->_endTokenIndex;
LABEL_6:
  v7 = v4 ^ v3 ^ v5 ^ v6 ^ [(SIRINLUEXTERNALUsoGraph *)self->_usoGraph hash];
  v8 = PBRepeatedInt32Hash();
  v9 = v8 ^ [(SIRINLUINTERNALInternalSpanData *)self->_internalSpanData hash];
  return v7 ^ v9 ^ [(NSString *)self->_semanticValue hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_23;
  }

  label = self->_label;
  if (label | *(equalCopy + 7))
  {
    if (![(NSString *)label isEqual:?])
    {
      goto LABEL_23;
    }
  }

  input = self->_input;
  if (input | *(equalCopy + 5))
  {
    if (![(NSString *)input isEqual:?])
    {
      goto LABEL_23;
    }
  }

  v7 = *(equalCopy + 88);
  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 88) & 2) == 0 || self->_startTokenIndex != *(equalCopy + 18))
    {
      goto LABEL_23;
    }
  }

  else if ((*(equalCopy + 88) & 2) != 0)
  {
LABEL_23:
    v11 = 0;
    goto LABEL_24;
  }

  if (*&self->_has)
  {
    if ((*(equalCopy + 88) & 1) == 0 || self->_endTokenIndex != *(equalCopy + 8))
    {
      goto LABEL_23;
    }
  }

  else if (*(equalCopy + 88))
  {
    goto LABEL_23;
  }

  usoGraph = self->_usoGraph;
  if (usoGraph | *(equalCopy + 10) && ![(SIRINLUEXTERNALUsoGraph *)usoGraph isEqual:?])
  {
    goto LABEL_23;
  }

  if (!PBRepeatedInt32IsEqual())
  {
    goto LABEL_23;
  }

  internalSpanData = self->_internalSpanData;
  if (internalSpanData | *(equalCopy + 6))
  {
    if (![(SIRINLUINTERNALInternalSpanData *)internalSpanData isEqual:?])
    {
      goto LABEL_23;
    }
  }

  semanticValue = self->_semanticValue;
  if (semanticValue | *(equalCopy + 8))
  {
    v11 = [(NSString *)semanticValue isEqual:?];
  }

  else
  {
    v11 = 1;
  }

LABEL_24:

  return v11;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_label copyWithZone:zone];
  v7 = *(v5 + 56);
  *(v5 + 56) = v6;

  v8 = [(NSString *)self->_input copyWithZone:zone];
  v9 = *(v5 + 40);
  *(v5 + 40) = v8;

  has = self->_has;
  if ((has & 2) != 0)
  {
    *(v5 + 72) = self->_startTokenIndex;
    *(v5 + 88) |= 2u;
    has = self->_has;
  }

  if (has)
  {
    *(v5 + 32) = self->_endTokenIndex;
    *(v5 + 88) |= 1u;
  }

  v11 = [(SIRINLUEXTERNALUsoGraph *)self->_usoGraph copyWithZone:zone];
  v12 = *(v5 + 80);
  *(v5 + 80) = v11;

  PBRepeatedInt32Copy();
  v13 = [(SIRINLUINTERNALInternalSpanData *)self->_internalSpanData copyWithZone:zone];
  v14 = *(v5 + 48);
  *(v5 + 48) = v13;

  v15 = [(NSString *)self->_semanticValue copyWithZone:zone];
  v16 = *(v5 + 64);
  *(v5 + 64) = v15;

  return v5;
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v10 = toCopy;
  if (self->_label)
  {
    [toCopy setLabel:?];
    toCopy = v10;
  }

  if (self->_input)
  {
    [v10 setInput:?];
    toCopy = v10;
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    *(toCopy + 18) = self->_startTokenIndex;
    *(toCopy + 88) |= 2u;
    has = self->_has;
  }

  if (has)
  {
    *(toCopy + 8) = self->_endTokenIndex;
    *(toCopy + 88) |= 1u;
  }

  if (self->_usoGraph)
  {
    [v10 setUsoGraph:?];
  }

  if ([(SIRINLUINTERNALMatchingSpan *)self matcherNamesCount])
  {
    [v10 clearMatcherNames];
    matcherNamesCount = [(SIRINLUINTERNALMatchingSpan *)self matcherNamesCount];
    if (matcherNamesCount)
    {
      v7 = matcherNamesCount;
      for (i = 0; i != v7; ++i)
      {
        [v10 addMatcherNames:{-[SIRINLUINTERNALMatchingSpan matcherNamesAtIndex:](self, "matcherNamesAtIndex:", i)}];
      }
    }
  }

  if (self->_internalSpanData)
  {
    [v10 setInternalSpanData:?];
  }

  v9 = v10;
  if (self->_semanticValue)
  {
    [v10 setSemanticValue:?];
    v9 = v10;
  }
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v10 = toCopy;
  if (self->_label)
  {
    PBDataWriterWriteStringField();
    toCopy = v10;
  }

  if (self->_input)
  {
    PBDataWriterWriteStringField();
    toCopy = v10;
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    startTokenIndex = self->_startTokenIndex;
    PBDataWriterWriteUint32Field();
    toCopy = v10;
    has = self->_has;
  }

  if (has)
  {
    endTokenIndex = self->_endTokenIndex;
    PBDataWriterWriteUint32Field();
    toCopy = v10;
  }

  if (self->_usoGraph)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v10;
  }

  if (self->_matcherNames.count)
  {
    v8 = 0;
    do
    {
      v9 = self->_matcherNames.list[v8];
      PBDataWriterWriteInt32Field();
      toCopy = v10;
      ++v8;
    }

    while (v8 < self->_matcherNames.count);
  }

  if (self->_internalSpanData)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v10;
  }

  if (self->_semanticValue)
  {
    PBDataWriterWriteStringField();
    toCopy = v10;
  }
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v4 = dictionary;
  label = self->_label;
  if (label)
  {
    [dictionary setObject:label forKey:@"label"];
  }

  input = self->_input;
  if (input)
  {
    [v4 setObject:input forKey:@"input"];
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_startTokenIndex];
    [v4 setObject:v8 forKey:@"start_token_index"];

    has = self->_has;
  }

  if (has)
  {
    v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_endTokenIndex];
    [v4 setObject:v9 forKey:@"end_token_index"];
  }

  usoGraph = self->_usoGraph;
  if (usoGraph)
  {
    dictionaryRepresentation = [(SIRINLUEXTERNALUsoGraph *)usoGraph dictionaryRepresentation];
    [v4 setObject:dictionaryRepresentation forKey:@"uso_graph"];
  }

  p_matcherNames = &self->_matcherNames;
  if (self->_matcherNames.count)
  {
    v13 = [MEMORY[0x1E695DF70] arrayWithCapacity:?];
    if (self->_matcherNames.count)
    {
      v14 = 0;
      do
      {
        v15 = p_matcherNames->list[v14];
        if (v15 >= 9)
        {
          v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", p_matcherNames->list[v14]];
        }

        else
        {
          v16 = off_1E8328220[v15];
        }

        [v13 addObject:v16];

        ++v14;
      }

      while (v14 < self->_matcherNames.count);
    }

    [v4 setObject:v13 forKey:@"matcher_names"];
  }

  internalSpanData = self->_internalSpanData;
  if (internalSpanData)
  {
    dictionaryRepresentation2 = [(SIRINLUINTERNALInternalSpanData *)internalSpanData dictionaryRepresentation];
    [v4 setObject:dictionaryRepresentation2 forKey:@"internal_span_data"];
  }

  semanticValue = self->_semanticValue;
  if (semanticValue)
  {
    [v4 setObject:semanticValue forKey:@"semantic_value"];
  }

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = SIRINLUINTERNALMatchingSpan;
  v4 = [(SIRINLUINTERNALMatchingSpan *)&v8 description];
  dictionaryRepresentation = [(SIRINLUINTERNALMatchingSpan *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (int)StringAsMatcherNames:(id)names
{
  namesCopy = names;
  if ([namesCopy isEqualToString:@"DATADETECTOR_MATCHER"])
  {
    v4 = 0;
  }

  else if ([namesCopy isEqualToString:@"PLUM_MATCHER"])
  {
    v4 = 1;
  }

  else if ([namesCopy isEqualToString:@"SIRI_VOCABULARY_MATCHER"])
  {
    v4 = 2;
  }

  else if ([namesCopy isEqualToString:@"VOC_TRIE_MATCHER"])
  {
    v4 = 3;
  }

  else if ([namesCopy isEqualToString:@"CONTEXT_MATCHER"])
  {
    v4 = 4;
  }

  else if ([namesCopy isEqualToString:@"OVERTON_KG_MATCHER"])
  {
    v4 = 5;
  }

  else if ([namesCopy isEqualToString:@"MRR_DETECTOR"])
  {
    v4 = 6;
  }

  else if ([namesCopy isEqualToString:@"MRR_MATCHER"])
  {
    v4 = 7;
  }

  else if ([namesCopy isEqualToString:@"REGEX_MATCHER"])
  {
    v4 = 8;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (int)matcherNamesAtIndex:(unint64_t)index
{
  p_matcherNames = &self->_matcherNames;
  count = self->_matcherNames.count;
  if (count <= index)
  {
    v6 = MEMORY[0x1E695DF30];
    v7 = *MEMORY[0x1E695DA20];
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"idx (%lu) is out of range (%lu)", index, count];
    v9 = [v6 exceptionWithName:v7 reason:v8 userInfo:0];
    [v9 raise];
  }

  return p_matcherNames->list[index];
}

- (void)setHasStartTokenIndex:(BOOL)index
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

- (void)dealloc
{
  PBRepeatedInt32Clear();
  v3.receiver = self;
  v3.super_class = SIRINLUINTERNALMatchingSpan;
  [(SIRINLUINTERNALMatchingSpan *)&v3 dealloc];
}

@end