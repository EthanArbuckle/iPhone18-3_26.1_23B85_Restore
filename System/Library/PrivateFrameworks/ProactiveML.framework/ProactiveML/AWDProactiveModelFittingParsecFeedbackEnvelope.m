@interface AWDProactiveModelFittingParsecFeedbackEnvelope
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation AWDProactiveModelFittingParsecFeedbackEnvelope

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  evaluation = self->_evaluation;
  v15 = v4;
  v6 = v4[1];
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && ((evaluation = self->_evaluation, !(evaluation | v4[1])) || -[AWDProactiveModelFittingEvaluation isEqual:](evaluation, "isEqual:")) && ((logRegWeights = self->_logRegWeights, !(logRegWeights | v4[5])) || -[AWDProactiveModelFittingLogRegWeights isEqual:](logRegWeights, "isEqual:")) && ((logRegGradient = self->_logRegGradient, !(logRegGradient | v4[4])) || -[AWDProactiveModelFittingLogRegGradient isEqual:](logRegGradient, "isEqual:")) && ((linRegFeatureMatrix = self->_linRegFeatureMatrix, !(linRegFeatureMatrix | v4[2])) || -[AWDProactiveModelFittingLinRegFeatureMatrix isEqual:](linRegFeatureMatrix, "isEqual:")))
  {
    linRegObjectiveFeatures = self->_linRegObjectiveFeatures;
    if (linRegObjectiveFeatures | v4[3])
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

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(AWDProactiveModelFittingEvaluation *)self->_evaluation copyWithZone:a3];
  v7 = v5[1];
  v5[1] = v6;

  v8 = [(AWDProactiveModelFittingLogRegWeights *)self->_logRegWeights copyWithZone:a3];
  v9 = v5[5];
  v5[5] = v8;

  v10 = [(AWDProactiveModelFittingLogRegGradient *)self->_logRegGradient copyWithZone:a3];
  v11 = v5[4];
  v5[4] = v10;

  v12 = [(AWDProactiveModelFittingLinRegFeatureMatrix *)self->_linRegFeatureMatrix copyWithZone:a3];
  v13 = v5[2];
  v5[2] = v12;

  v14 = [(AWDProactiveModelFittingLinRegObjectiveFeatures *)self->_linRegObjectiveFeatures copyWithZone:a3];
  v15 = v5[3];
  v5[3] = v14;

  return v5;
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_evaluation)
  {
    [v4 setEvaluation:?];
    v4 = v5;
  }

  if (self->_logRegWeights)
  {
    [v5 setLogRegWeights:?];
    v4 = v5;
  }

  if (self->_logRegGradient)
  {
    [v5 setLogRegGradient:?];
    v4 = v5;
  }

  if (self->_linRegFeatureMatrix)
  {
    [v5 setLinRegFeatureMatrix:?];
    v4 = v5;
  }

  if (self->_linRegObjectiveFeatures)
  {
    [v5 setLinRegObjectiveFeatures:?];
    v4 = v5;
  }
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_evaluation)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (self->_logRegWeights)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (self->_logRegGradient)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (self->_linRegFeatureMatrix)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (self->_linRegObjectiveFeatures)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  evaluation = self->_evaluation;
  if (evaluation)
  {
    v5 = [(AWDProactiveModelFittingEvaluation *)evaluation dictionaryRepresentation];
    [v3 setObject:v5 forKey:@"evaluation"];
  }

  logRegWeights = self->_logRegWeights;
  if (logRegWeights)
  {
    v7 = [(AWDProactiveModelFittingLogRegWeights *)logRegWeights dictionaryRepresentation];
    [v3 setObject:v7 forKey:@"logRegWeights"];
  }

  logRegGradient = self->_logRegGradient;
  if (logRegGradient)
  {
    v9 = [(AWDProactiveModelFittingLogRegGradient *)logRegGradient dictionaryRepresentation];
    [v3 setObject:v9 forKey:@"logRegGradient"];
  }

  linRegFeatureMatrix = self->_linRegFeatureMatrix;
  if (linRegFeatureMatrix)
  {
    v11 = [(AWDProactiveModelFittingLinRegFeatureMatrix *)linRegFeatureMatrix dictionaryRepresentation];
    [v3 setObject:v11 forKey:@"linRegFeatureMatrix"];
  }

  linRegObjectiveFeatures = self->_linRegObjectiveFeatures;
  if (linRegObjectiveFeatures)
  {
    v13 = [(AWDProactiveModelFittingLinRegObjectiveFeatures *)linRegObjectiveFeatures dictionaryRepresentation];
    [v3 setObject:v13 forKey:@"linRegObjectiveFeatures"];
  }

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = AWDProactiveModelFittingParsecFeedbackEnvelope;
  v4 = [(AWDProactiveModelFittingParsecFeedbackEnvelope *)&v8 description];
  v5 = [(AWDProactiveModelFittingParsecFeedbackEnvelope *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

@end