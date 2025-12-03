@interface AWDProactiveModelFittingSession
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasConfidenceScore:(BOOL)score;
- (void)setHasSupervisionType:(BOOL)type;
- (void)setHasTimestamp:(BOOL)timestamp;
- (void)writeTo:(id)to;
@end

@implementation AWDProactiveModelFittingSession

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = fromCopy;
  if ((fromCopy[7] & 4) != 0)
  {
    self->_timestamp = fromCopy[3];
    *&self->_has |= 4u;
  }

  modelInfo = self->_modelInfo;
  v7 = v5[5];
  v11 = v5;
  if (modelInfo)
  {
    if (!v7)
    {
      goto LABEL_9;
    }

    [(AWDProactiveModelFittingModelInfo *)modelInfo mergeFrom:?];
  }

  else
  {
    if (!v7)
    {
      goto LABEL_9;
    }

    [(AWDProactiveModelFittingSession *)self setModelInfo:?];
  }

  v5 = v11;
LABEL_9:
  if (v5[7])
  {
    self->_label = v5[1];
    *&self->_has |= 1u;
  }

  sparseFloatFeatures = self->_sparseFloatFeatures;
  v9 = v5[6];
  if (sparseFloatFeatures)
  {
    if (!v9)
    {
      goto LABEL_17;
    }

    [(AWDProactiveModelFittingSparseFloatVector *)sparseFloatFeatures mergeFrom:?];
  }

  else
  {
    if (!v9)
    {
      goto LABEL_17;
    }

    [(AWDProactiveModelFittingSession *)self setSparseFloatFeatures:?];
  }

  v5 = v11;
LABEL_17:
  v10 = *(v5 + 56);
  if ((v10 & 2) != 0)
  {
    self->_supervisionType = v5[2];
    *&self->_has |= 2u;
    v10 = *(v5 + 56);
  }

  if ((v10 & 8) != 0)
  {
    self->_confidenceScore = *(v5 + 8);
    *&self->_has |= 8u;
  }

  MEMORY[0x2821F96F8]();
}

- (unint64_t)hash
{
  if ((*&self->_has & 4) != 0)
  {
    v3 = 2654435761u * self->_timestamp;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(AWDProactiveModelFittingModelInfo *)self->_modelInfo hash];
  if (*&self->_has)
  {
    v5 = 2654435761u * self->_label;
  }

  else
  {
    v5 = 0;
  }

  v6 = [(AWDProactiveModelFittingSparseFloatVector *)self->_sparseFloatFeatures hash];
  if ((*&self->_has & 2) != 0)
  {
    v9 = 2654435761u * self->_supervisionType;
    if ((*&self->_has & 8) != 0)
    {
      goto LABEL_9;
    }

LABEL_15:
    v14 = 0;
    return v4 ^ v3 ^ v5 ^ v6 ^ v9 ^ v14;
  }

  v9 = 0;
  if ((*&self->_has & 8) == 0)
  {
    goto LABEL_15;
  }

LABEL_9:
  confidenceScore = self->_confidenceScore;
  if (confidenceScore >= 0.0)
  {
    v11 = confidenceScore;
  }

  else
  {
    v11 = -confidenceScore;
  }

  *v7.i64 = floor(v11 + 0.5);
  v12 = (v11 - *v7.i64) * 1.84467441e19;
  *v8.i64 = *v7.i64 - trunc(*v7.i64 * 5.42101086e-20) * 1.84467441e19;
  v13.f64[0] = NAN;
  v13.f64[1] = NAN;
  v14 = 2654435761u * *vbslq_s8(vnegq_f64(v13), v8, v7).i64;
  if (v12 >= 0.0)
  {
    if (v12 > 0.0)
    {
      v14 += v12;
    }
  }

  else
  {
    v14 -= fabs(v12);
  }

  return v4 ^ v3 ^ v5 ^ v6 ^ v9 ^ v14;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_27;
  }

  has = self->_has;
  v6 = *(equalCopy + 56);
  if ((has & 4) != 0)
  {
    if ((*(equalCopy + 56) & 4) == 0 || self->_timestamp != *(equalCopy + 3))
    {
      goto LABEL_27;
    }
  }

  else if ((*(equalCopy + 56) & 4) != 0)
  {
    goto LABEL_27;
  }

  modelInfo = self->_modelInfo;
  if (modelInfo | *(equalCopy + 5))
  {
    if (![(AWDProactiveModelFittingModelInfo *)modelInfo isEqual:?])
    {
      goto LABEL_27;
    }

    has = self->_has;
    v6 = *(equalCopy + 56);
  }

  if (has)
  {
    if ((v6 & 1) == 0 || self->_label != *(equalCopy + 1))
    {
      goto LABEL_27;
    }
  }

  else if (v6)
  {
    goto LABEL_27;
  }

  sparseFloatFeatures = self->_sparseFloatFeatures;
  if (sparseFloatFeatures | *(equalCopy + 6))
  {
    if ([(AWDProactiveModelFittingSparseFloatVector *)sparseFloatFeatures isEqual:?])
    {
      has = self->_has;
      v6 = *(equalCopy + 56);
      goto LABEL_18;
    }

LABEL_27:
    v9 = 0;
    goto LABEL_28;
  }

LABEL_18:
  if ((has & 2) != 0)
  {
    if ((v6 & 2) == 0 || self->_supervisionType != *(equalCopy + 2))
    {
      goto LABEL_27;
    }
  }

  else if ((v6 & 2) != 0)
  {
    goto LABEL_27;
  }

  v9 = (v6 & 8) == 0;
  if ((has & 8) != 0)
  {
    if ((v6 & 8) == 0 || self->_confidenceScore != *(equalCopy + 8))
    {
      goto LABEL_27;
    }

    v9 = 1;
  }

LABEL_28:

  return v9;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  if ((*&self->_has & 4) != 0)
  {
    *(v5 + 24) = self->_timestamp;
    *(v5 + 56) |= 4u;
  }

  v7 = [(AWDProactiveModelFittingModelInfo *)self->_modelInfo copyWithZone:zone];
  v8 = *(v6 + 40);
  *(v6 + 40) = v7;

  if (*&self->_has)
  {
    *(v6 + 8) = self->_label;
    *(v6 + 56) |= 1u;
  }

  v9 = [(AWDProactiveModelFittingSparseFloatVector *)self->_sparseFloatFeatures copyWithZone:zone];
  v10 = *(v6 + 48);
  *(v6 + 48) = v9;

  has = self->_has;
  if ((has & 2) != 0)
  {
    *(v6 + 16) = self->_supervisionType;
    *(v6 + 56) |= 2u;
    has = self->_has;
  }

  if ((has & 8) != 0)
  {
    *(v6 + 32) = self->_confidenceScore;
    *(v6 + 56) |= 8u;
  }

  return v6;
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if ((*&self->_has & 4) != 0)
  {
    toCopy[3] = self->_timestamp;
    *(toCopy + 56) |= 4u;
  }

  v6 = toCopy;
  if (self->_modelInfo)
  {
    [toCopy setModelInfo:?];
    toCopy = v6;
  }

  if (*&self->_has)
  {
    toCopy[1] = self->_label;
    *(toCopy + 56) |= 1u;
  }

  if (self->_sparseFloatFeatures)
  {
    [v6 setSparseFloatFeatures:?];
    toCopy = v6;
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    toCopy[2] = self->_supervisionType;
    *(toCopy + 56) |= 2u;
    has = self->_has;
  }

  if ((has & 8) != 0)
  {
    *(toCopy + 8) = LODWORD(self->_confidenceScore);
    *(toCopy + 56) |= 8u;
  }
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if ((*&self->_has & 4) != 0)
  {
    timestamp = self->_timestamp;
    PBDataWriterWriteUint64Field();
  }

  if (self->_modelInfo)
  {
    PBDataWriterWriteSubmessage();
  }

  if (*&self->_has)
  {
    label = self->_label;
    PBDataWriterWriteUint64Field();
  }

  if (self->_sparseFloatFeatures)
  {
    PBDataWriterWriteSubmessage();
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    supervisionType = self->_supervisionType;
    PBDataWriterWriteUint64Field();
    has = self->_has;
  }

  if ((has & 8) != 0)
  {
    confidenceScore = self->_confidenceScore;
    PBDataWriterWriteFloatField();
  }
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  if ((*&self->_has & 4) != 0)
  {
    v5 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_timestamp];
    [dictionary setObject:v5 forKey:@"timestamp"];
  }

  modelInfo = self->_modelInfo;
  if (modelInfo)
  {
    dictionaryRepresentation = [(AWDProactiveModelFittingModelInfo *)modelInfo dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation forKey:@"modelInfo"];
  }

  if (*&self->_has)
  {
    v8 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_label];
    [dictionary setObject:v8 forKey:@"label"];
  }

  sparseFloatFeatures = self->_sparseFloatFeatures;
  if (sparseFloatFeatures)
  {
    dictionaryRepresentation2 = [(AWDProactiveModelFittingSparseFloatVector *)sparseFloatFeatures dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation2 forKey:@"sparseFloatFeatures"];
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    v12 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_supervisionType];
    [dictionary setObject:v12 forKey:@"supervisionType"];

    has = self->_has;
  }

  if ((has & 8) != 0)
  {
    *&v4 = self->_confidenceScore;
    v13 = [MEMORY[0x277CCABB0] numberWithFloat:v4];
    [dictionary setObject:v13 forKey:@"confidenceScore"];
  }

  return dictionary;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = AWDProactiveModelFittingSession;
  v4 = [(AWDProactiveModelFittingSession *)&v8 description];
  dictionaryRepresentation = [(AWDProactiveModelFittingSession *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (void)setHasConfidenceScore:(BOOL)score
{
  if (score)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (void)setHasSupervisionType:(BOOL)type
{
  if (type)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (void)setHasTimestamp:(BOOL)timestamp
{
  if (timestamp)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

@end