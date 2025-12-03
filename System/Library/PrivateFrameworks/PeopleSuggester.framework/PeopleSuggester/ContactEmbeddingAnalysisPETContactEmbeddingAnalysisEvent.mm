@interface ContactEmbeddingAnalysisPETContactEmbeddingAnalysisEvent
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation ContactEmbeddingAnalysisPETContactEmbeddingAnalysisEvent

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = ContactEmbeddingAnalysisPETContactEmbeddingAnalysisEvent;
  v4 = [(ContactEmbeddingAnalysisPETContactEmbeddingAnalysisEvent *)&v8 description];
  dictionaryRepresentation = [(ContactEmbeddingAnalysisPETContactEmbeddingAnalysisEvent *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  embeddingsBeforeActivation = self->_embeddingsBeforeActivation;
  if (embeddingsBeforeActivation)
  {
    dictionaryRepresentation = [(ContactEmbeddingAnalysisPETNeuralNetEmbedding *)embeddingsBeforeActivation dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation forKey:@"embeddingsBeforeActivation"];
  }

  embeddingsAfterActivation = self->_embeddingsAfterActivation;
  if (embeddingsAfterActivation)
  {
    dictionaryRepresentation2 = [(ContactEmbeddingAnalysisPETNeuralNetEmbedding *)embeddingsAfterActivation dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation2 forKey:@"embeddingsAfterActivation"];
  }

  contactId = self->_contactId;
  if (contactId)
  {
    [dictionary setObject:contactId forKey:@"contactId"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if (!self->_embeddingsBeforeActivation)
  {
    [ContactEmbeddingAnalysisPETContactEmbeddingAnalysisEvent writeTo:];
  }

  PBDataWriterWriteSubmessage();
  if (!self->_embeddingsAfterActivation)
  {
    [ContactEmbeddingAnalysisPETContactEmbeddingAnalysisEvent writeTo:];
  }

  PBDataWriterWriteSubmessage();
  if (!self->_contactId)
  {
    [ContactEmbeddingAnalysisPETContactEmbeddingAnalysisEvent writeTo:];
  }

  PBDataWriterWriteStringField();
}

- (void)copyTo:(id)to
{
  embeddingsBeforeActivation = self->_embeddingsBeforeActivation;
  toCopy = to;
  [toCopy setEmbeddingsBeforeActivation:embeddingsBeforeActivation];
  [toCopy setEmbeddingsAfterActivation:self->_embeddingsAfterActivation];
  [toCopy setContactId:self->_contactId];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(ContactEmbeddingAnalysisPETNeuralNetEmbedding *)self->_embeddingsBeforeActivation copyWithZone:zone];
  v7 = v5[3];
  v5[3] = v6;

  v8 = [(ContactEmbeddingAnalysisPETNeuralNetEmbedding *)self->_embeddingsAfterActivation copyWithZone:zone];
  v9 = v5[2];
  v5[2] = v8;

  v10 = [(NSString *)self->_contactId copyWithZone:zone];
  v11 = v5[1];
  v5[1] = v10;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((embeddingsBeforeActivation = self->_embeddingsBeforeActivation, !(embeddingsBeforeActivation | equalCopy[3])) || -[ContactEmbeddingAnalysisPETNeuralNetEmbedding isEqual:](embeddingsBeforeActivation, "isEqual:")) && ((embeddingsAfterActivation = self->_embeddingsAfterActivation, !(embeddingsAfterActivation | equalCopy[2])) || -[ContactEmbeddingAnalysisPETNeuralNetEmbedding isEqual:](embeddingsAfterActivation, "isEqual:")))
  {
    contactId = self->_contactId;
    if (contactId | equalCopy[1])
    {
      v8 = [(NSString *)contactId isEqual:?];
    }

    else
    {
      v8 = 1;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (unint64_t)hash
{
  v3 = [(ContactEmbeddingAnalysisPETNeuralNetEmbedding *)self->_embeddingsBeforeActivation hash];
  v4 = [(ContactEmbeddingAnalysisPETNeuralNetEmbedding *)self->_embeddingsAfterActivation hash]^ v3;
  return v4 ^ [(NSString *)self->_contactId hash];
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  embeddingsBeforeActivation = self->_embeddingsBeforeActivation;
  v6 = fromCopy[3];
  v9 = fromCopy;
  if (embeddingsBeforeActivation)
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    [(ContactEmbeddingAnalysisPETNeuralNetEmbedding *)embeddingsBeforeActivation mergeFrom:?];
  }

  else
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    [(ContactEmbeddingAnalysisPETContactEmbeddingAnalysisEvent *)self setEmbeddingsBeforeActivation:?];
  }

  fromCopy = v9;
LABEL_7:
  embeddingsAfterActivation = self->_embeddingsAfterActivation;
  v8 = fromCopy[2];
  if (embeddingsAfterActivation)
  {
    if (!v8)
    {
      goto LABEL_13;
    }

    [(ContactEmbeddingAnalysisPETNeuralNetEmbedding *)embeddingsAfterActivation mergeFrom:?];
  }

  else
  {
    if (!v8)
    {
      goto LABEL_13;
    }

    [(ContactEmbeddingAnalysisPETContactEmbeddingAnalysisEvent *)self setEmbeddingsAfterActivation:?];
  }

  fromCopy = v9;
LABEL_13:
  if (fromCopy[1])
  {
    [(ContactEmbeddingAnalysisPETContactEmbeddingAnalysisEvent *)self setContactId:?];
  }

  MEMORY[0x1EEE66BB8]();
}

@end