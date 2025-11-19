@interface ContactEmbeddingAnalysisPETContactEmbeddingAnalysisEvent
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation ContactEmbeddingAnalysisPETContactEmbeddingAnalysisEvent

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = ContactEmbeddingAnalysisPETContactEmbeddingAnalysisEvent;
  v4 = [(ContactEmbeddingAnalysisPETContactEmbeddingAnalysisEvent *)&v8 description];
  v5 = [(ContactEmbeddingAnalysisPETContactEmbeddingAnalysisEvent *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  embeddingsBeforeActivation = self->_embeddingsBeforeActivation;
  if (embeddingsBeforeActivation)
  {
    v5 = [(ContactEmbeddingAnalysisPETNeuralNetEmbedding *)embeddingsBeforeActivation dictionaryRepresentation];
    [v3 setObject:v5 forKey:@"embeddingsBeforeActivation"];
  }

  embeddingsAfterActivation = self->_embeddingsAfterActivation;
  if (embeddingsAfterActivation)
  {
    v7 = [(ContactEmbeddingAnalysisPETNeuralNetEmbedding *)embeddingsAfterActivation dictionaryRepresentation];
    [v3 setObject:v7 forKey:@"embeddingsAfterActivation"];
  }

  contactId = self->_contactId;
  if (contactId)
  {
    [v3 setObject:contactId forKey:@"contactId"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
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

- (void)copyTo:(id)a3
{
  embeddingsBeforeActivation = self->_embeddingsBeforeActivation;
  v5 = a3;
  [v5 setEmbeddingsBeforeActivation:embeddingsBeforeActivation];
  [v5 setEmbeddingsAfterActivation:self->_embeddingsAfterActivation];
  [v5 setContactId:self->_contactId];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(ContactEmbeddingAnalysisPETNeuralNetEmbedding *)self->_embeddingsBeforeActivation copyWithZone:a3];
  v7 = v5[3];
  v5[3] = v6;

  v8 = [(ContactEmbeddingAnalysisPETNeuralNetEmbedding *)self->_embeddingsAfterActivation copyWithZone:a3];
  v9 = v5[2];
  v5[2] = v8;

  v10 = [(NSString *)self->_contactId copyWithZone:a3];
  v11 = v5[1];
  v5[1] = v10;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && ((embeddingsBeforeActivation = self->_embeddingsBeforeActivation, !(embeddingsBeforeActivation | v4[3])) || -[ContactEmbeddingAnalysisPETNeuralNetEmbedding isEqual:](embeddingsBeforeActivation, "isEqual:")) && ((embeddingsAfterActivation = self->_embeddingsAfterActivation, !(embeddingsAfterActivation | v4[2])) || -[ContactEmbeddingAnalysisPETNeuralNetEmbedding isEqual:](embeddingsAfterActivation, "isEqual:")))
  {
    contactId = self->_contactId;
    if (contactId | v4[1])
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  embeddingsBeforeActivation = self->_embeddingsBeforeActivation;
  v6 = v4[3];
  v9 = v4;
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

  v4 = v9;
LABEL_7:
  embeddingsAfterActivation = self->_embeddingsAfterActivation;
  v8 = v4[2];
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

  v4 = v9;
LABEL_13:
  if (v4[1])
  {
    [(ContactEmbeddingAnalysisPETContactEmbeddingAnalysisEvent *)self setContactId:?];
  }

  MEMORY[0x1EEE66BB8]();
}

@end