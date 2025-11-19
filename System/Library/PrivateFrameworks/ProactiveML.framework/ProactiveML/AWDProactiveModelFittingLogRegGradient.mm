@interface AWDProactiveModelFittingLogRegGradient
- (BOOL)hasGradient;
- (BOOL)isEqual:(id)a3;
- (float)gradientValueAtIndex:(unint64_t)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)gradientLength;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasGradientL2norm:(BOOL)a3;
- (void)setHasGradientScaleFactor:(BOOL)a3;
- (void)setHasTimestamp:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation AWDProactiveModelFittingLogRegGradient

- (unint64_t)gradientLength
{
  if ([(AWDProactiveModelFittingLogRegGradient *)self hasSparseFloatGradient])
  {
    v3 = [(AWDProactiveModelFittingLogRegGradient *)self sparseFloatGradient];
    v4 = [v3 length];
  }

  else
  {
    if ([(AWDProactiveModelFittingLogRegGradient *)self hasSparseQuantizedGradient])
    {
      v3 = [(AWDProactiveModelFittingLogRegGradient *)self sparseQuantizedGradient];
      v5 = [v3 length];
      goto LABEL_6;
    }

    if (![(AWDProactiveModelFittingLogRegGradient *)self hasDenseQuantizedGradient])
    {
      return 0;
    }

    v3 = [(AWDProactiveModelFittingLogRegGradient *)self denseQuantizedGradient];
    v4 = [v3 valuesCount];
  }

  v5 = v4;
LABEL_6:

  return v5;
}

- (float)gradientValueAtIndex:(unint64_t)a3
{
  if ([(AWDProactiveModelFittingLogRegGradient *)self hasSparseFloatGradient])
  {
    v5 = [(AWDProactiveModelFittingLogRegGradient *)self sparseFloatGradient];
    [v5 valueAtIndex:a3];
LABEL_8:
    v8 = v6;

    return v8;
  }

  if ([(AWDProactiveModelFittingLogRegGradient *)self hasSparseQuantizedGradient])
  {
    v7 = [(AWDProactiveModelFittingLogRegGradient *)self sparseQuantizedGradient];
LABEL_7:
    v5 = v7;
    [v7 originalValueAtIndex:a3];
    goto LABEL_8;
  }

  v8 = 0.0;
  if ([(AWDProactiveModelFittingLogRegGradient *)self hasDenseQuantizedGradient])
  {
    v7 = [(AWDProactiveModelFittingLogRegGradient *)self denseQuantizedGradient];
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = v4;
  if ((v4[10] & 2) != 0)
  {
    self->_timestamp = v4[2];
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_35;
  }

  v5 = *(v4 + 80);
  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 80) & 2) == 0 || self->_timestamp != *(v4 + 2))
    {
      goto LABEL_35;
    }
  }

  else if ((*(v4 + 80) & 2) != 0)
  {
    goto LABEL_35;
  }

  modelInfo = self->_modelInfo;
  if (modelInfo | *(v4 + 7) && ![(AWDProactiveModelFittingModelInfo *)modelInfo isEqual:?])
  {
    goto LABEL_35;
  }

  sparseFloatGradient = self->_sparseFloatGradient;
  if (sparseFloatGradient | *(v4 + 8))
  {
    if (![(AWDProactiveModelFittingSparseFloatVector *)sparseFloatGradient isEqual:?])
    {
      goto LABEL_35;
    }
  }

  minibatchStats = self->_minibatchStats;
  if (minibatchStats | *(v4 + 6))
  {
    if (![(AWDProactiveModelFittingMinibatchStats *)minibatchStats isEqual:?])
    {
      goto LABEL_35;
    }
  }

  evaluationMetrics = self->_evaluationMetrics;
  if (evaluationMetrics | *(v4 + 4))
  {
    if (![(AWDProactiveModelFittingEvalMetrics *)evaluationMetrics isEqual:?])
    {
      goto LABEL_35;
    }
  }

  has = self->_has;
  v11 = *(v4 + 80);
  if (has)
  {
    if ((*(v4 + 80) & 1) == 0 || self->_iteration != *(v4 + 1))
    {
      goto LABEL_35;
    }
  }

  else if (*(v4 + 80))
  {
    goto LABEL_35;
  }

  sparseQuantizedGradient = self->_sparseQuantizedGradient;
  if (sparseQuantizedGradient | *(v4 + 9))
  {
    if (![(AWDProactiveModelFittingQuantizedSparseVector *)sparseQuantizedGradient isEqual:?])
    {
LABEL_35:
      v14 = 0;
      goto LABEL_36;
    }

    has = self->_has;
    v11 = *(v4 + 80);
  }

  if ((has & 8) != 0)
  {
    if ((v11 & 8) == 0 || self->_gradientScaleFactor != *(v4 + 11))
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
    if ((v11 & 4) == 0 || self->_gradientL2norm != *(v4 + 10))
    {
      goto LABEL_35;
    }
  }

  else if ((v11 & 4) != 0)
  {
    goto LABEL_35;
  }

  denseQuantizedGradient = self->_denseQuantizedGradient;
  if (denseQuantizedGradient | *(v4 + 3))
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

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  if ((*&self->_has & 2) != 0)
  {
    *(v5 + 16) = self->_timestamp;
    *(v5 + 80) |= 2u;
  }

  v7 = [(AWDProactiveModelFittingModelInfo *)self->_modelInfo copyWithZone:a3];
  v8 = *(v6 + 56);
  *(v6 + 56) = v7;

  v9 = [(AWDProactiveModelFittingSparseFloatVector *)self->_sparseFloatGradient copyWithZone:a3];
  v10 = *(v6 + 64);
  *(v6 + 64) = v9;

  v11 = [(AWDProactiveModelFittingMinibatchStats *)self->_minibatchStats copyWithZone:a3];
  v12 = *(v6 + 48);
  *(v6 + 48) = v11;

  v13 = [(AWDProactiveModelFittingEvalMetrics *)self->_evaluationMetrics copyWithZone:a3];
  v14 = *(v6 + 32);
  *(v6 + 32) = v13;

  if (*&self->_has)
  {
    *(v6 + 8) = self->_iteration;
    *(v6 + 80) |= 1u;
  }

  v15 = [(AWDProactiveModelFittingQuantizedSparseVector *)self->_sparseQuantizedGradient copyWithZone:a3];
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

  v18 = [(AWDProactiveModelFittingQuantizedDenseVector *)self->_denseQuantizedGradient copyWithZone:a3];
  v19 = *(v6 + 24);
  *(v6 + 24) = v18;

  return v6;
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  if ((*&self->_has & 2) != 0)
  {
    v4[2] = self->_timestamp;
    *(v4 + 80) |= 2u;
  }

  v6 = v4;
  if (self->_modelInfo)
  {
    [v4 setModelInfo:?];
    v4 = v6;
  }

  if (self->_sparseFloatGradient)
  {
    [v6 setSparseFloatGradient:?];
    v4 = v6;
  }

  if (self->_minibatchStats)
  {
    [v6 setMinibatchStats:?];
    v4 = v6;
  }

  if (self->_evaluationMetrics)
  {
    [v6 setEvaluationMetrics:?];
    v4 = v6;
  }

  if (*&self->_has)
  {
    v4[1] = self->_iteration;
    *(v4 + 80) |= 1u;
  }

  if (self->_sparseQuantizedGradient)
  {
    [v6 setSparseQuantizedGradient:?];
    v4 = v6;
  }

  has = self->_has;
  if ((has & 8) != 0)
  {
    *(v4 + 11) = LODWORD(self->_gradientScaleFactor);
    *(v4 + 80) |= 8u;
    has = self->_has;
  }

  if ((has & 4) != 0)
  {
    *(v4 + 10) = LODWORD(self->_gradientL2norm);
    *(v4 + 80) |= 4u;
  }

  if (self->_denseQuantizedGradient)
  {
    [v6 setDenseQuantizedGradient:?];
    v4 = v6;
  }
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v10 = v4;
  if ((*&self->_has & 2) != 0)
  {
    timestamp = self->_timestamp;
    PBDataWriterWriteUint64Field();
    v4 = v10;
  }

  if (self->_modelInfo)
  {
    PBDataWriterWriteSubmessage();
    v4 = v10;
  }

  if (self->_sparseFloatGradient)
  {
    PBDataWriterWriteSubmessage();
    v4 = v10;
  }

  if (self->_minibatchStats)
  {
    PBDataWriterWriteSubmessage();
    v4 = v10;
  }

  if (self->_evaluationMetrics)
  {
    PBDataWriterWriteSubmessage();
    v4 = v10;
  }

  if (*&self->_has)
  {
    iteration = self->_iteration;
    PBDataWriterWriteUint64Field();
    v4 = v10;
  }

  if (self->_sparseQuantizedGradient)
  {
    PBDataWriterWriteSubmessage();
    v4 = v10;
  }

  has = self->_has;
  if ((has & 8) != 0)
  {
    gradientScaleFactor = self->_gradientScaleFactor;
    PBDataWriterWriteFloatField();
    v4 = v10;
    has = self->_has;
  }

  if ((has & 4) != 0)
  {
    gradientL2norm = self->_gradientL2norm;
    PBDataWriterWriteFloatField();
    v4 = v10;
  }

  if (self->_denseQuantizedGradient)
  {
    PBDataWriterWriteSubmessage();
    v4 = v10;
  }
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  if ((*&self->_has & 2) != 0)
  {
    v5 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_timestamp];
    [v3 setObject:v5 forKey:@"timestamp"];
  }

  modelInfo = self->_modelInfo;
  if (modelInfo)
  {
    v7 = [(AWDProactiveModelFittingModelInfo *)modelInfo dictionaryRepresentation];
    [v3 setObject:v7 forKey:@"modelInfo"];
  }

  sparseFloatGradient = self->_sparseFloatGradient;
  if (sparseFloatGradient)
  {
    v9 = [(AWDProactiveModelFittingSparseFloatVector *)sparseFloatGradient dictionaryRepresentation];
    [v3 setObject:v9 forKey:@"sparseFloatGradient"];
  }

  minibatchStats = self->_minibatchStats;
  if (minibatchStats)
  {
    v11 = [(AWDProactiveModelFittingMinibatchStats *)minibatchStats dictionaryRepresentation];
    [v3 setObject:v11 forKey:@"minibatchStats"];
  }

  evaluationMetrics = self->_evaluationMetrics;
  if (evaluationMetrics)
  {
    v13 = [(AWDProactiveModelFittingEvalMetrics *)evaluationMetrics dictionaryRepresentation];
    [v3 setObject:v13 forKey:@"evaluationMetrics"];
  }

  if (*&self->_has)
  {
    v14 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_iteration];
    [v3 setObject:v14 forKey:@"iteration"];
  }

  sparseQuantizedGradient = self->_sparseQuantizedGradient;
  if (sparseQuantizedGradient)
  {
    v16 = [(AWDProactiveModelFittingQuantizedSparseVector *)sparseQuantizedGradient dictionaryRepresentation];
    [v3 setObject:v16 forKey:@"sparseQuantizedGradient"];
  }

  has = self->_has;
  if ((has & 8) != 0)
  {
    *&v4 = self->_gradientScaleFactor;
    v18 = [MEMORY[0x277CCABB0] numberWithFloat:v4];
    [v3 setObject:v18 forKey:@"gradientScaleFactor"];

    has = self->_has;
  }

  if ((has & 4) != 0)
  {
    *&v4 = self->_gradientL2norm;
    v19 = [MEMORY[0x277CCABB0] numberWithFloat:v4];
    [v3 setObject:v19 forKey:@"gradientL2norm"];
  }

  denseQuantizedGradient = self->_denseQuantizedGradient;
  if (denseQuantizedGradient)
  {
    v21 = [(AWDProactiveModelFittingQuantizedDenseVector *)denseQuantizedGradient dictionaryRepresentation];
    [v3 setObject:v21 forKey:@"denseQuantizedGradient"];
  }

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = AWDProactiveModelFittingLogRegGradient;
  v4 = [(AWDProactiveModelFittingLogRegGradient *)&v8 description];
  v5 = [(AWDProactiveModelFittingLogRegGradient *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (void)setHasGradientL2norm:(BOOL)a3
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

- (void)setHasGradientScaleFactor:(BOOL)a3
{
  if (a3)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (void)setHasTimestamp:(BOOL)a3
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

@end