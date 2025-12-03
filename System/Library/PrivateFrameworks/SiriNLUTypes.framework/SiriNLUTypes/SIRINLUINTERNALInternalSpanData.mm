@interface SIRINLUINTERNALInternalSpanData
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation SIRINLUINTERNALInternalSpanData

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  siriVocabularySpanData = self->_siriVocabularySpanData;
  v15 = fromCopy;
  v6 = fromCopy[5];
  if (siriVocabularySpanData)
  {
    if (v6)
    {
      [(SIRINLUINTERNALSiriVocabularySpanData *)siriVocabularySpanData mergeFrom:?];
    }
  }

  else if (v6)
  {
    [(SIRINLUINTERNALInternalSpanData *)self setSiriVocabularySpanData:?];
  }

  plumSpanData = self->_plumSpanData;
  v8 = v15[4];
  if (plumSpanData)
  {
    if (v8)
    {
      [(SIRINLUINTERNALPLUMSpanData *)plumSpanData mergeFrom:?];
    }
  }

  else if (v8)
  {
    [(SIRINLUINTERNALInternalSpanData *)self setPlumSpanData:?];
  }

  overtonKgSpanData = self->_overtonKgSpanData;
  v10 = v15[3];
  if (overtonKgSpanData)
  {
    if (v10)
    {
      [(SIRINLUINTERNALOvertonKGSpanData *)overtonKgSpanData mergeFrom:?];
    }
  }

  else if (v10)
  {
    [(SIRINLUINTERNALInternalSpanData *)self setOvertonKgSpanData:?];
  }

  mentionDetectorSpanData = self->_mentionDetectorSpanData;
  v12 = v15[1];
  if (mentionDetectorSpanData)
  {
    if (v12)
    {
      [(SIRINLUINTERNALMentionDetectorSpanData *)mentionDetectorSpanData mergeFrom:?];
    }
  }

  else if (v12)
  {
    [(SIRINLUINTERNALInternalSpanData *)self setMentionDetectorSpanData:?];
  }

  mentionResolverSpanData = self->_mentionResolverSpanData;
  v14 = v15[2];
  if (mentionResolverSpanData)
  {
    if (v14)
    {
      [(SIRINLUINTERNALMentionResolverSpanData *)mentionResolverSpanData mergeFrom:?];
    }
  }

  else if (v14)
  {
    [(SIRINLUINTERNALInternalSpanData *)self setMentionResolverSpanData:?];
  }
}

- (unint64_t)hash
{
  v3 = [(SIRINLUINTERNALSiriVocabularySpanData *)self->_siriVocabularySpanData hash];
  v4 = [(SIRINLUINTERNALPLUMSpanData *)self->_plumSpanData hash]^ v3;
  v5 = [(SIRINLUINTERNALOvertonKGSpanData *)self->_overtonKgSpanData hash];
  v6 = v4 ^ v5 ^ [(SIRINLUINTERNALMentionDetectorSpanData *)self->_mentionDetectorSpanData hash];
  return v6 ^ [(SIRINLUINTERNALMentionResolverSpanData *)self->_mentionResolverSpanData hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((siriVocabularySpanData = self->_siriVocabularySpanData, !(siriVocabularySpanData | equalCopy[5])) || -[SIRINLUINTERNALSiriVocabularySpanData isEqual:](siriVocabularySpanData, "isEqual:")) && ((plumSpanData = self->_plumSpanData, !(plumSpanData | equalCopy[4])) || -[SIRINLUINTERNALPLUMSpanData isEqual:](plumSpanData, "isEqual:")) && ((overtonKgSpanData = self->_overtonKgSpanData, !(overtonKgSpanData | equalCopy[3])) || -[SIRINLUINTERNALOvertonKGSpanData isEqual:](overtonKgSpanData, "isEqual:")) && ((mentionDetectorSpanData = self->_mentionDetectorSpanData, !(mentionDetectorSpanData | equalCopy[1])) || -[SIRINLUINTERNALMentionDetectorSpanData isEqual:](mentionDetectorSpanData, "isEqual:")))
  {
    mentionResolverSpanData = self->_mentionResolverSpanData;
    if (mentionResolverSpanData | equalCopy[2])
    {
      v10 = [(SIRINLUINTERNALMentionResolverSpanData *)mentionResolverSpanData isEqual:?];
    }

    else
    {
      v10 = 1;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(SIRINLUINTERNALSiriVocabularySpanData *)self->_siriVocabularySpanData copyWithZone:zone];
  v7 = v5[5];
  v5[5] = v6;

  v8 = [(SIRINLUINTERNALPLUMSpanData *)self->_plumSpanData copyWithZone:zone];
  v9 = v5[4];
  v5[4] = v8;

  v10 = [(SIRINLUINTERNALOvertonKGSpanData *)self->_overtonKgSpanData copyWithZone:zone];
  v11 = v5[3];
  v5[3] = v10;

  v12 = [(SIRINLUINTERNALMentionDetectorSpanData *)self->_mentionDetectorSpanData copyWithZone:zone];
  v13 = v5[1];
  v5[1] = v12;

  v14 = [(SIRINLUINTERNALMentionResolverSpanData *)self->_mentionResolverSpanData copyWithZone:zone];
  v15 = v5[2];
  v5[2] = v14;

  return v5;
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_siriVocabularySpanData)
  {
    [toCopy setSiriVocabularySpanData:?];
    toCopy = v5;
  }

  if (self->_plumSpanData)
  {
    [v5 setPlumSpanData:?];
    toCopy = v5;
  }

  if (self->_overtonKgSpanData)
  {
    [v5 setOvertonKgSpanData:?];
    toCopy = v5;
  }

  if (self->_mentionDetectorSpanData)
  {
    [v5 setMentionDetectorSpanData:?];
    toCopy = v5;
  }

  if (self->_mentionResolverSpanData)
  {
    [v5 setMentionResolverSpanData:?];
    toCopy = v5;
  }
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_siriVocabularySpanData)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }

  if (self->_plumSpanData)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }

  if (self->_overtonKgSpanData)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }

  if (self->_mentionDetectorSpanData)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }

  if (self->_mentionResolverSpanData)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  siriVocabularySpanData = self->_siriVocabularySpanData;
  if (siriVocabularySpanData)
  {
    dictionaryRepresentation = [(SIRINLUINTERNALSiriVocabularySpanData *)siriVocabularySpanData dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation forKey:@"siri_vocabulary_span_data"];
  }

  plumSpanData = self->_plumSpanData;
  if (plumSpanData)
  {
    dictionaryRepresentation2 = [(SIRINLUINTERNALPLUMSpanData *)plumSpanData dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation2 forKey:@"plum_span_data"];
  }

  overtonKgSpanData = self->_overtonKgSpanData;
  if (overtonKgSpanData)
  {
    dictionaryRepresentation3 = [(SIRINLUINTERNALOvertonKGSpanData *)overtonKgSpanData dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation3 forKey:@"overton_kg_span_data"];
  }

  mentionDetectorSpanData = self->_mentionDetectorSpanData;
  if (mentionDetectorSpanData)
  {
    dictionaryRepresentation4 = [(SIRINLUINTERNALMentionDetectorSpanData *)mentionDetectorSpanData dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation4 forKey:@"mention_detector_span_data"];
  }

  mentionResolverSpanData = self->_mentionResolverSpanData;
  if (mentionResolverSpanData)
  {
    dictionaryRepresentation5 = [(SIRINLUINTERNALMentionResolverSpanData *)mentionResolverSpanData dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation5 forKey:@"mention_resolver_span_data"];
  }

  return dictionary;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = SIRINLUINTERNALInternalSpanData;
  v4 = [(SIRINLUINTERNALInternalSpanData *)&v8 description];
  dictionaryRepresentation = [(SIRINLUINTERNALInternalSpanData *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

@end