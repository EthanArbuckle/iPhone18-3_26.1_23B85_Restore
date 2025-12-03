@interface AWDProactiveModelFittingLogRegGradient
- (BOOL)hasGradient;
- (BOOL)isEqual:(id)equal;
- (float)gradientValueAtIndex:(unint64_t)index;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)gradientLength;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasGradientL2norm:(BOOL)l2norm;
- (void)setHasGradientScaleFactor:(BOOL)factor;
- (void)setHasTimestamp:(BOOL)timestamp;
- (void)writeTo:(id)to;
@end

@implementation AWDProactiveModelFittingLogRegGradient

- (unint64_t)gradientLength
{
  if ([(AWDProactiveModelFittingLogRegGradient *)self hasSparseFloatGradient])
  {
    sparseFloatGradient = [(AWDProactiveModelFittingLogRegGradient *)self sparseFloatGradient];
    valuesCount = [sparseFloatGradient length];
  }

  else
  {
    if ([(AWDProactiveModelFittingLogRegGradient *)self hasSparseQuantizedGradient])
    {
      sparseFloatGradient = [(AWDProactiveModelFittingLogRegGradient *)self sparseQuantizedGradient];
      v5 = [sparseFloatGradient length];
      goto LABEL_6;
    }

    if (![(AWDProactiveModelFittingLogRegGradient *)self hasDenseQuantizedGradient])
    {
      return 0;
    }

    sparseFloatGradient = [(AWDProactiveModelFittingLogRegGradient *)self denseQuantizedGradient];
    valuesCount = [sparseFloatGradient valuesCount];
  }

  v5 = valuesCount;
LABEL_6:

  return v5;
}

- (float)gradientValueAtIndex:(unint64_t)index
{
  if ([(AWDProactiveModelFittingLogRegGradient *)self hasSparseFloatGradient])
  {
    sparseFloatGradient = [(AWDProactiveModelFittingLogRegGradient *)self sparseFloatGradient];
    [sparseFloatGradient valueAtIndex:index];
LABEL_8:
    v8 = v6;

    return v8;
  }

  if ([(AWDProactiveModelFittingLogRegGradient *)self hasSparseQuantizedGradient])
  {
    sparseQuantizedGradient = [(AWDProactiveModelFittingLogRegGradient *)self sparseQuantizedGradient];
LABEL_7:
    sparseFloatGradient = sparseQuantizedGradient;
    [sparseQuantizedGradient originalValueAtIndex:index];
    goto LABEL_8;
  }

  v8 = 0.0;
  if ([(AWDProactiveModelFittingLogRegGradient *)self hasDenseQuantizedGradient])
  {
    sparseQuantizedGradient = [(AWDProactiveModelFittingLogRegGradient *)self denseQuantizedGradient];
    goto LABEL_7;
  }

  return v8;
}

- (BOOL)hasGradient
{
  if ([(AWDProactiveModelFittingLogRegGradient *)self hasSparseFloatGradient]|| [(AWDProactiveModelFittingLogRegGradient *)self hasSparseQuantizedGradient])
  {
    return 1;
  }

  return [(AWDProactiveModelFittingLogRegGradient *)self hasDenseQuantizedGradient];
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = fromCopy;
  if ((fromCopy[10] & 2) != 0)
  {
    self->_timestamp = fromCopy[2];
    *&self->_has |= 2u;
  }

  modelInfo = self->_modelInfo;
  v7 = v5[7];
  v19 = v5;
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

    [(AWDProactiveModelFittingLogRegGradient *)self setModelInfo:?];
  }

  v5 = v19;
LABEL_9:
  sparseFloatGradient = self->_sparseFloatGradient;
  v9 = v5[8];
  if (sparseFloatGradient)
  {
    if (!v9)
    {
      goto LABEL_15;
    }

    [(AWDProactiveModelFittingSparseFloatVector *)sparseFloatGradient mergeFrom:?];
  }

  else
  {
    if (!v9)
    {
      goto LABEL_15;
    }

    [(AWDProactiveModelFittingLogRegGradient *)self setSparseFloatGradient:?];
  }

  v5 = v19;
LABEL_15:
  minibatchStats = self->_minibatchStats;
  v11 = v5[6];
  if (minibatchStats)
  {
    if (!v11)
    {
      goto LABEL_21;
    }

    [(AWDProactiveModelFittingMinibatchStats *)minibatchStats mergeFrom:?];
  }

  else
  {
    if (!v11)
    {
      goto LABEL_21;
    }

    [(AWDProactiveModelFittingLogRegGradient *)self setMinibatchStats:?];
  }

  v5 = v19;
LABEL_21:
  evaluationMetrics = self->_evaluationMetrics;
  v13 = v5[4];
  if (evaluationMetrics)
  {
    if (!v13)
    {
      goto LABEL_27;
    }

    [(AWDProactiveModelFittingEvalMetrics *)evaluationMetrics mergeFrom:?];
  }

  else
  {
    if (!v13)
    {
      goto LABEL_27;
    }

    [(AWDProactiveModelFittingLogRegGradient *)self setEvaluationMetrics:?];
  }

  v5 = v19;
LABEL_27:
  if (v5[10])
  {
    self->_iteration = v5[1];
    *&self->_has |= 1u;
  }

  sparseQuantizedGradient = self->_sparseQuantizedGradient;
  v15 = v5[9];
  if (sparseQuantizedGradient)
  {
    if (!v15)
    {
      goto LABEL_35;
    }

    [(AWDProactiveModelFittingQuantizedSparseVector *)sparseQuantizedGradient mergeFrom:?];
  }

  else
  {
    if (!v15)
    {
      goto LABEL_35;
    }

    [(AWDProactiveModelFittingLogRegGradient *)self setSparseQuantizedGradient:?];
  }

  v5 = v19;
LABEL_35:
  v16 = *(v5 + 80);
  if ((v16 & 8) != 0)
  {
    self->_gradientScaleFactor = *(v5 + 11);
    *&self->_has |= 8u;
    v16 = *(v5 + 80);
  }

  if ((v16 & 4) != 0)
  {
    self->_gradientL2norm = *(v5 + 10);
    *&self->_has |= 4u;
  }

  denseQuantizedGradient = self->_denseQuantizedGradient;
  v18 = v5[3];
  if (denseQuantizedGradient)
  {
    if (v18)
    {
      [(AWDProactiveModelFittingQuantizedDenseVector *)denseQuantizedGradient mergeFrom:?];
    }
  }

  else if (v18)
  {
    [(AWDProactiveModelFittingLogRegGradient *)self setDenseQuantizedGradient:?];
  }

  MEMORY[0x2821F96F8]();
}

- (unint64_t)hash
{
  if ((*&self->_has & 2) != 0)
  {
    v3 = 2654435761u * self->_timestamp;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(AWDProactiveModelFittingModelInfo *)self->_modelInfo hash];
  v5 = [(AWDProactiveModelFittingSparseFloatVector *)self->_sparseFloatGradient hash];
  v6 = [(AWDProactiveModelFittingMinibatchStats *)self->_minibatchStats hash];
  v7 = [(AWDProactiveModelFittingEvalMetrics *)self->_evaluationMetrics hash];
  if (*&self->_has)
  {
    v8 = 2654435761u * self->_iteration;
  }

  else
  {
    v8 = 0;
  }

  v9 = [(AWDProactiveModelFittingQuantizedSparseVector *)self->_sparseQuantizedGradient hash];
  if ((*&self->_has & 8) != 0)
  {
    gradientScaleFactor = self->_gradientScaleFactor;
    if (gradientScaleFactor >= 0.0)
    {
      v14 = gradientScaleFactor;
    }

    else
    {
      v14 = -gradientScaleFactor;
    }

    *v10.i64 = floor(v14 + 0.5);
    v15 = (v14 - *v10.i64) * 1.84467441e19;
    *v11.i64 = *v10.i64 - trunc(*v10.i64 * 5.42101086e-20) * 1.84467441e19;
    v16.f64[0] = NAN;
    v16.f64[1] = NAN;
    v10 = vbslq_s8(vnegq_f64(v16), v11, v10);
    v12 = 2654435761u * *v10.i64;
    if (v15 >= 0.0)
    {
      if (v15 > 0.0)
      {
        v12 += v15;
      }
    }

    else
    {
      v12 -= fabs(v15);
    }
  }

  else
  {
    v12 = 0;
  }

  if ((*&self->_has & 4) != 0)
  {
    gradientL2norm = self->_gradientL2norm;
    if (gradientL2norm >= 0.0)
    {
      v19 = gradientL2norm;
    }

    else
    {
      v19 = -gradientL2norm;
    }

    *v10.i64 = floor(v19 + 0.5);
    v20 = (v19 - *v10.i64) * 1.84467441e19;
    *v11.i64 = *v10.i64 - trunc(*v10.i64 * 5.42101086e-20) * 1.84467441e19;
    v21.f64[0] = NAN;
    v21.f64[1] = NAN;
    v17 = 2654435761u * *vbslq_s8(vnegq_f64(v21), v11, v10).i64;
    if (v20 >= 0.0)
    {
      if (v20 > 0.0)
      {
        v17 += v20;
      }
    }

    else
    {
      v17 -= fabs(v20);
    }
  }

  else
  {
    v17 = 0;
  }

  return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v12 ^ v17 ^ [(AWDProactiveModelFittingQuantizedDenseVector *)self->_denseQuantizedGradient hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_35;
  }

  v5 = *(equalCopy + 80);
  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 80) & 2) == 0 || self->_timestamp != *(equalCopy + 2))
    {
      goto LABEL_35;
    }
  }

  else if ((*(equalCopy + 80) & 2) != 0)
  {
    goto LABEL_35;
  }

  modelInfo = self->_modelInfo;
  if (modelInfo | *(equalCopy + 7) && ![(AWDProactiveModelFittingModelInfo *)modelInfo isEqual:?])
  {
    goto LABEL_35;
  }

  sparseFloatGradient = self->_sparseFloatGradient;
  if (sparseFloatGradient | *(equalCopy + 8))
  {
    if (![(AWDProactiveModelFittingSparseFloatVector *)sparseFloatGradient isEqual:?])
    {
      goto LABEL_35;
    }
  }

  minibatchStats = self->_minibatchStats;
  if (minibatchStats | *(equalCopy + 6))
  {
    if (![(AWDProactiveModelFittingMinibatchStats *)minibatchStats isEqual:?])
    {
      goto LABEL_35;
    }
  }

  evaluationMetrics = self->_evaluationMetrics;
  if (evaluationMetrics | *(equalCopy + 4))
  {
    if (![(AWDProactiveModelFittingEvalMetrics *)evaluationMetrics isEqual:?])
    {
      goto LABEL_35;
    }
  }

  has = self->_has;
  v11 = *(equalCopy + 80);
  if (has)
  {
    if ((*(equalCopy + 80) & 1) == 0 || self->_iteration != *(equalCopy + 1))
    {
      goto LABEL_35;
    }
  }

  else if (*(equalCopy + 80))
  {
    goto LABEL_35;
  }

  sparseQuantizedGradient = self->_sparseQuantizedGradient;
  if (sparseQuantizedGradient | *(equalCopy + 9))
  {
    if (![(AWDProactiveModelFittingQuantizedSparseVector *)sparseQuantizedGradient isEqual:?])
    {
LABEL_35:
      v14 = 0;
      goto LABEL_36;
    }

    has = self->_has;
    v11 = *(equalCopy + 80);
  }

  if ((has & 8) != 0)
  {
    if ((v11 & 8) == 0 || self->_gradientScaleFactor != *(equalCopy + 11))
    {
      goto LABEL_35;
    }
  }

  else if ((v11 & 8) != 0)
  {
    goto LABEL_35;
  }

  if ((has & 4) != 0)
  {
    if ((v11 & 4) == 0 || self->_gradientL2norm != *(equalCopy + 10))
    {
      goto LABEL_35;
    }
  }

  else if ((v11 & 4) != 0)
  {
    goto LABEL_35;
  }

  denseQuantizedGradient = self->_denseQuantizedGradient;
  if (denseQuantizedGradient | *(equalCopy + 3))
  {
    v14 = [(AWDProactiveModelFittingQuantizedDenseVector *)denseQuantizedGradient isEqual:?];
  }

  else
  {
    v14 = 1;
  }

LABEL_36:

  return v14;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  if ((*&self->_has & 2) != 0)
  {
    *(v5 + 16) = self->_timestamp;
    *(v5 + 80) |= 2u;
  }

  v7 = [(AWDProactiveModelFittingModelInfo *)self->_modelInfo copyWithZone:zone];
  v8 = *(v6 + 56);
  *(v6 + 56) = v7;

  v9 = [(AWDProactiveModelFittingSparseFloatVector *)self->_sparseFloatGradient copyWithZone:zone];
  v10 = *(v6 + 64);
  *(v6 + 64) = v9;

  v11 = [(AWDProactiveModelFittingMinibatchStats *)self->_minibatchStats copyWithZone:zone];
  v12 = *(v6 + 48);
  *(v6 + 48) = v11;

  v13 = [(AWDProactiveModelFittingEvalMetrics *)self->_evaluationMetrics copyWithZone:zone];
  v14 = *(v6 + 32);
  *(v6 + 32) = v13;

  if (*&self->_has)
  {
    *(v6 + 8) = self->_iteration;
    *(v6 + 80) |= 1u;
  }

  v15 = [(AWDProactiveModelFittingQuantizedSparseVector *)self->_sparseQuantizedGradient copyWithZone:zone];
  v16 = *(v6 + 72);
  *(v6 + 72) = v15;

  has = self->_has;
  if ((has & 8) != 0)
  {
    *(v6 + 44) = self->_gradientScaleFactor;
    *(v6 + 80) |= 8u;
    has = self->_has;
  }

  if ((has & 4) != 0)
  {
    *(v6 + 40) = self->_gradientL2norm;
    *(v6 + 80) |= 4u;
  }

  v18 = [(AWDProactiveModelFittingQuantizedDenseVector *)self->_denseQuantizedGradient copyWithZone:zone];
  v19 = *(v6 + 24);
  *(v6 + 24) = v18;

  return v6;
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if ((*&self->_has & 2) != 0)
  {
    toCopy[2] = self->_timestamp;
    *(toCopy + 80) |= 2u;
  }

  v6 = toCopy;
  if (self->_modelInfo)
  {
    [toCopy setModelInfo:?];
    toCopy = v6;
  }

  if (self->_sparseFloatGradient)
  {
    [v6 setSparseFloatGradient:?];
    toCopy = v6;
  }

  if (self->_minibatchStats)
  {
    [v6 setMinibatchStats:?];
    toCopy = v6;
  }

  if (self->_evaluationMetrics)
  {
    [v6 setEvaluationMetrics:?];
    toCopy = v6;
  }

  if (*&self->_has)
  {
    toCopy[1] = self->_iteration;
    *(toCopy + 80) |= 1u;
  }

  if (self->_sparseQuantizedGradient)
  {
    [v6 setSparseQuantizedGradient:?];
    toCopy = v6;
  }

  has = self->_has;
  if ((has & 8) != 0)
  {
    *(toCopy + 11) = LODWORD(self->_gradientScaleFactor);
    *(toCopy + 80) |= 8u;
    has = self->_has;
  }

  if ((has & 4) != 0)
  {
    *(toCopy + 10) = LODWORD(self->_gradientL2norm);
    *(toCopy + 80) |= 4u;
  }

  if (self->_denseQuantizedGradient)
  {
    [v6 setDenseQuantizedGradient:?];
    toCopy = v6;
  }
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v10 = toCopy;
  if ((*&self->_has & 2) != 0)
  {
    timestamp = self->_timestamp;
    PBDataWriterWriteUint64Field();
    toCopy = v10;
  }

  if (self->_modelInfo)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v10;
  }

  if (self->_sparseFloatGradient)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v10;
  }

  if (self->_minibatchStats)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v10;
  }

  if (self->_evaluationMetrics)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v10;
  }

  if (*&self->_has)
  {
    iteration = self->_iteration;
    PBDataWriterWriteUint64Field();
    toCopy = v10;
  }

  if (self->_sparseQuantizedGradient)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v10;
  }

  has = self->_has;
  if ((has & 8) != 0)
  {
    gradientScaleFactor = self->_gradientScaleFactor;
    PBDataWriterWriteFloatField();
    toCopy = v10;
    has = self->_has;
  }

  if ((has & 4) != 0)
  {
    gradientL2norm = self->_gradientL2norm;
    PBDataWriterWriteFloatField();
    toCopy = v10;
  }

  if (self->_denseQuantizedGradient)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v10;
  }
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  if ((*&self->_has & 2) != 0)
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

  sparseFloatGradient = self->_sparseFloatGradient;
  if (sparseFloatGradient)
  {
    dictionaryRepresentation2 = [(AWDProactiveModelFittingSparseFloatVector *)sparseFloatGradient dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation2 forKey:@"sparseFloatGradient"];
  }

  minibatchStats = self->_minibatchStats;
  if (minibatchStats)
  {
    dictionaryRepresentation3 = [(AWDProactiveModelFittingMinibatchStats *)minibatchStats dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation3 forKey:@"minibatchStats"];
  }

  evaluationMetrics = self->_evaluationMetrics;
  if (evaluationMetrics)
  {
    dictionaryRepresentation4 = [(AWDProactiveModelFittingEvalMetrics *)evaluationMetrics dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation4 forKey:@"evaluationMetrics"];
  }

  if (*&self->_has)
  {
    v14 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_iteration];
    [dictionary setObject:v14 forKey:@"iteration"];
  }

  sparseQuantizedGradient = self->_sparseQuantizedGradient;
  if (sparseQuantizedGradient)
  {
    dictionaryRepresentation5 = [(AWDProactiveModelFittingQuantizedSparseVector *)sparseQuantizedGradient dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation5 forKey:@"sparseQuantizedGradient"];
  }

  has = self->_has;
  if ((has & 8) != 0)
  {
    *&v4 = self->_gradientScaleFactor;
    v18 = [MEMORY[0x277CCABB0] numberWithFloat:v4];
    [dictionary setObject:v18 forKey:@"gradientScaleFactor"];

    has = self->_has;
  }

  if ((has & 4) != 0)
  {
    *&v4 = self->_gradientL2norm;
    v19 = [MEMORY[0x277CCABB0] numberWithFloat:v4];
    [dictionary setObject:v19 forKey:@"gradientL2norm"];
  }

  denseQuantizedGradient = self->_denseQuantizedGradient;
  if (denseQuantizedGradient)
  {
    dictionaryRepresentation6 = [(AWDProactiveModelFittingQuantizedDenseVector *)denseQuantizedGradient dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation6 forKey:@"denseQuantizedGradient"];
  }

  return dictionary;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = AWDProactiveModelFittingLogRegGradient;
  v4 = [(AWDProactiveModelFittingLogRegGradient *)&v8 description];
  dictionaryRepresentation = [(AWDProactiveModelFittingLogRegGradient *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (void)setHasGradientL2norm:(BOOL)l2norm
{
  if (l2norm)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasGradientScaleFactor:(BOOL)factor
{
  if (factor)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (void)setHasTimestamp:(BOOL)timestamp
{
  if (timestamp)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

@end