@interface SIRINLUINTERNALInternalSpanData
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation SIRINLUINTERNALInternalSpanData

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  siriVocabularySpanData = self->_siriVocabularySpanData;
  v15 = v4;
  v6 = v4[5];
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && ((siriVocabularySpanData = self->_siriVocabularySpanData, !(siriVocabularySpanData | v4[5])) || -[SIRINLUINTERNALSiriVocabularySpanData isEqual:](siriVocabularySpanData, "isEqual:")) && ((plumSpanData = self->_plumSpanData, !(plumSpanData | v4[4])) || -[SIRINLUINTERNALPLUMSpanData isEqual:](plumSpanData, "isEqual:")) && ((overtonKgSpanData = self->_overtonKgSpanData, !(overtonKgSpanData | v4[3])) || -[SIRINLUINTERNALOvertonKGSpanData isEqual:](overtonKgSpanData, "isEqual:")) && ((mentionDetectorSpanData = self->_mentionDetectorSpanData, !(mentionDetectorSpanData | v4[1])) || -[SIRINLUINTERNALMentionDetectorSpanData isEqual:](mentionDetectorSpanData, "isEqual:")))
  {
    mentionResolverSpanData = self->_mentionResolverSpanData;
    if (mentionResolverSpanData | v4[2])
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

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(SIRINLUINTERNALSiriVocabularySpanData *)self->_siriVocabularySpanData copyWithZone:a3];
  v7 = v5[5];
  v5[5] = v6;

  v8 = [(SIRINLUINTERNALPLUMSpanData *)self->_plumSpanData copyWithZone:a3];
  v9 = v5[4];
  v5[4] = v8;

  v10 = [(SIRINLUINTERNALOvertonKGSpanData *)self->_overtonKgSpanData copyWithZone:a3];
  v11 = v5[3];
  v5[3] = v10;

  v12 = [(SIRINLUINTERNALMentionDetectorSpanData *)self->_mentionDetectorSpanData copyWithZone:a3];
  v13 = v5[1];
  v5[1] = v12;

  v14 = [(SIRINLUINTERNALMentionResolverSpanData *)self->_mentionResolverSpanData copyWithZone:a3];
  v15 = v5[2];
  v5[2] = v14;

  return v5;
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_siriVocabularySpanData)
  {
    [v4 setSiriVocabularySpanData:?];
    v4 = v5;
  }

  if (self->_plumSpanData)
  {
    [v5 setPlumSpanData:?];
    v4 = v5;
  }

  if (self->_overtonKgSpanData)
  {
    [v5 setOvertonKgSpanData:?];
    v4 = v5;
  }

  if (self->_mentionDetectorSpanData)
  {
    [v5 setMentionDetectorSpanData:?];
    v4 = v5;
  }

  if (self->_mentionResolverSpanData)
  {
    [v5 setMentionResolverSpanData:?];
    v4 = v5;
  }
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_siriVocabularySpanData)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (self->_plumSpanData)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (self->_overtonKgSpanData)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (self->_mentionDetectorSpanData)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (self->_mentionResolverSpanData)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  siriVocabularySpanData = self->_siriVocabularySpanData;
  if (siriVocabularySpanData)
  {
    v5 = [(SIRINLUINTERNALSiriVocabularySpanData *)siriVocabularySpanData dictionaryRepresentation];
    [v3 setObject:v5 forKey:@"siri_vocabulary_span_data"];
  }

  plumSpanData = self->_plumSpanData;
  if (plumSpanData)
  {
    v7 = [(SIRINLUINTERNALPLUMSpanData *)plumSpanData dictionaryRepresentation];
    [v3 setObject:v7 forKey:@"plum_span_data"];
  }

  overtonKgSpanData = self->_overtonKgSpanData;
  if (overtonKgSpanData)
  {
    v9 = [(SIRINLUINTERNALOvertonKGSpanData *)overtonKgSpanData dictionaryRepresentation];
    [v3 setObject:v9 forKey:@"overton_kg_span_data"];
  }

  mentionDetectorSpanData = self->_mentionDetectorSpanData;
  if (mentionDetectorSpanData)
  {
    v11 = [(SIRINLUINTERNALMentionDetectorSpanData *)mentionDetectorSpanData dictionaryRepresentation];
    [v3 setObject:v11 forKey:@"mention_detector_span_data"];
  }

  mentionResolverSpanData = self->_mentionResolverSpanData;
  if (mentionResolverSpanData)
  {
    v13 = [(SIRINLUINTERNALMentionResolverSpanData *)mentionResolverSpanData dictionaryRepresentation];
    [v3 setObject:v13 forKey:@"mention_resolver_span_data"];
  }

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = SIRINLUINTERNALInternalSpanData;
  v4 = [(SIRINLUINTERNALInternalSpanData *)&v8 description];
  v5 = [(SIRINLUINTERNALInternalSpanData *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

@end