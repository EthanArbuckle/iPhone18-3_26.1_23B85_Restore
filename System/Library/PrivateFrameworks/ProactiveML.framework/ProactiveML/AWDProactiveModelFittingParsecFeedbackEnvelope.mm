@interface AWDProactiveModelFittingParsecFeedbackEnvelope
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation AWDProactiveModelFittingParsecFeedbackEnvelope

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  evaluation = self->_evaluation;
  v15 = fromCopy;
  v6 = fromCopy[1];
  if (evaluation)
  {
    if (v6)
    {
      [(AWDProactiveModelFittingEvaluation *)evaluation mergeFrom:?];
    }
  }

  else if (v6)
  {
    [(AWDProactiveModelFittingParsecFeedbackEnvelope *)self setEvaluation:?];
  }

  logRegWeights = self->_logRegWeights;
  v8 = v15[5];
  if (logRegWeights)
  {
    if (v8)
    {
      [(AWDProactiveModelFittingLogRegWeights *)logRegWeights mergeFrom:?];
    }
  }

  else if (v8)
  {
    [(AWDProactiveModelFittingParsecFeedbackEnvelope *)self setLogRegWeights:?];
  }

  logRegGradient = self->_logRegGradient;
  v10 = v15[4];
  if (logRegGradient)
  {
    if (v10)
    {
      [(AWDProactiveModelFittingLogRegGradient *)logRegGradient mergeFrom:?];
    }
  }

  else if (v10)
  {
    [(AWDProactiveModelFittingParsecFeedbackEnvelope *)self setLogRegGradient:?];
  }

  linRegFeatureMatrix = self->_linRegFeatureMatrix;
  v12 = v15[2];
  if (linRegFeatureMatrix)
  {
    if (v12)
    {
      [(AWDProactiveModelFittingLinRegFeatureMatrix *)linRegFeatureMatrix mergeFrom:?];
    }
  }

  else if (v12)
  {
    [(AWDProactiveModelFittingParsecFeedbackEnvelope *)self setLinRegFeatureMatrix:?];
  }

  linRegObjectiveFeatures = self->_linRegObjectiveFeatures;
  v14 = v15[3];
  if (linRegObjectiveFeatures)
  {
    if (v14)
    {
      [(AWDProactiveModelFittingLinRegObjectiveFeatures *)linRegObjectiveFeatures mergeFrom:?];
    }
  }

  else if (v14)
  {
    [(AWDProactiveModelFittingParsecFeedbackEnvelope *)self setLinRegObjectiveFeatures:?];
  }
}

- (unint64_t)hash
{
  v3 = [(AWDProactiveModelFittingEvaluation *)self->_evaluation hash];
  v4 = [(AWDProactiveModelFittingLogRegWeights *)self->_logRegWeights hash]^ v3;
  v5 = [(AWDProactiveModelFittingLogRegGradient *)self->_logRegGradient hash];
  v6 = v4 ^ v5 ^ [(AWDProactiveModelFittingLinRegFeatureMatrix *)self->_linRegFeatureMatrix hash];
  return v6 ^ [(AWDProactiveModelFittingLinRegObjectiveFeatures *)self->_linRegObjectiveFeatures hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((evaluation = self->_evaluation, !(evaluation | equalCopy[1])) || -[AWDProactiveModelFittingEvaluation isEqual:](evaluation, "isEqual:")) && ((logRegWeights = self->_logRegWeights, !(logRegWeights | equalCopy[5])) || -[AWDProactiveModelFittingLogRegWeights isEqual:](logRegWeights, "isEqual:")) && ((logRegGradient = self->_logRegGradient, !(logRegGradient | equalCopy[4])) || -[AWDProactiveModelFittingLogRegGradient isEqual:](logRegGradient, "isEqual:")) && ((linRegFeatureMatrix = self->_linRegFeatureMatrix, !(linRegFeatureMatrix | equalCopy[2])) || -[AWDProactiveModelFittingLinRegFeatureMatrix isEqual:](linRegFeatureMatrix, "isEqual:")))
  {
    linRegObjectiveFeatures = self->_linRegObjectiveFeatures;
    if (linRegObjectiveFeatures | equalCopy[3])
    {
      v10 = [(AWDProactiveModelFittingLinRegObjectiveFeatures *)linRegObjectiveFeatures isEqual:?];
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
  v6 = [(AWDProactiveModelFittingEvaluation *)self->_evaluation copyWithZone:zone];
  v7 = v5[1];
  v5[1] = v6;

  v8 = [(AWDProactiveModelFittingLogRegWeights *)self->_logRegWeights copyWithZone:zone];
  v9 = v5[5];
  v5[5] = v8;

  v10 = [(AWDProactiveModelFittingLogRegGradient *)self->_logRegGradient copyWithZone:zone];
  v11 = v5[4];
  v5[4] = v10;

  v12 = [(AWDProactiveModelFittingLinRegFeatureMatrix *)self->_linRegFeatureMatrix copyWithZone:zone];
  v13 = v5[2];
  v5[2] = v12;

  v14 = [(AWDProactiveModelFittingLinRegObjectiveFeatures *)self->_linRegObjectiveFeatures copyWithZone:zone];
  v15 = v5[3];
  v5[3] = v14;

  return v5;
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_evaluation)
  {
    [toCopy setEvaluation:?];
    toCopy = v5;
  }

  if (self->_logRegWeights)
  {
    [v5 setLogRegWeights:?];
    toCopy = v5;
  }

  if (self->_logRegGradient)
  {
    [v5 setLogRegGradient:?];
    toCopy = v5;
  }

  if (self->_linRegFeatureMatrix)
  {
    [v5 setLinRegFeatureMatrix:?];
    toCopy = v5;
  }

  if (self->_linRegObjectiveFeatures)
  {
    [v5 setLinRegObjectiveFeatures:?];
    toCopy = v5;
  }
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_evaluation)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }

  if (self->_logRegWeights)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }

  if (self->_logRegGradient)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }

  if (self->_linRegFeatureMatrix)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }

  if (self->_linRegObjectiveFeatures)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  evaluation = self->_evaluation;
  if (evaluation)
  {
    dictionaryRepresentation = [(AWDProactiveModelFittingEvaluation *)evaluation dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation forKey:@"evaluation"];
  }

  logRegWeights = self->_logRegWeights;
  if (logRegWeights)
  {
    dictionaryRepresentation2 = [(AWDProactiveModelFittingLogRegWeights *)logRegWeights dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation2 forKey:@"logRegWeights"];
  }

  logRegGradient = self->_logRegGradient;
  if (logRegGradient)
  {
    dictionaryRepresentation3 = [(AWDProactiveModelFittingLogRegGradient *)logRegGradient dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation3 forKey:@"logRegGradient"];
  }

  linRegFeatureMatrix = self->_linRegFeatureMatrix;
  if (linRegFeatureMatrix)
  {
    dictionaryRepresentation4 = [(AWDProactiveModelFittingLinRegFeatureMatrix *)linRegFeatureMatrix dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation4 forKey:@"linRegFeatureMatrix"];
  }

  linRegObjectiveFeatures = self->_linRegObjectiveFeatures;
  if (linRegObjectiveFeatures)
  {
    dictionaryRepresentation5 = [(AWDProactiveModelFittingLinRegObjectiveFeatures *)linRegObjectiveFeatures dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation5 forKey:@"linRegObjectiveFeatures"];
  }

  return dictionary;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = AWDProactiveModelFittingParsecFeedbackEnvelope;
  v4 = [(AWDProactiveModelFittingParsecFeedbackEnvelope *)&v8 description];
  dictionaryRepresentation = [(AWDProactiveModelFittingParsecFeedbackEnvelope *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

@end