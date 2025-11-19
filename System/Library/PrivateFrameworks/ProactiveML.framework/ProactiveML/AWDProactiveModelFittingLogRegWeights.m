@interface AWDProactiveModelFittingLogRegWeights
- (BOOL)hasWeights;
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasWeightsL2norm:(BOOL)a3;
- (void)setHasWeightsScaleFactor:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation AWDProactiveModelFittingLogRegWeights

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4[9])
  {
    self->_timestamp = v4[1];
    *&self->_has |= 1u;
  }

  modelInfo = self->_modelInfo;
  v7 = v5[5];
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

    [(AWDProactiveModelFittingLogRegWeights *)self setModelInfo:?];
  }

  v5 = v19;
LABEL_9:
  sparseFloatWeights = self->_sparseFloatWeights;
  v9 = v5[6];
  if (sparseFloatWeights)
  {
    if (!v9)
    {
      goto LABEL_15;
    }

    [(AWDProactiveModelFittingSparseFloatVector *)sparseFloatWeights mergeFrom:?];
  }

  else
  {
    if (!v9)
    {
      goto LABEL_15;
    }

    [(AWDProactiveModelFittingLogRegWeights *)self setSparseFloatWeights:?];
  }

  v5 = v19;
LABEL_15:
  minibatchStats = self->_minibatchStats;
  v11 = v5[4];
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

    [(AWDProactiveModelFittingLogRegWeights *)self setMinibatchStats:?];
  }

  v5 = v19;
LABEL_21:
  evaluationMetrics = self->_evaluationMetrics;
  v13 = v5[3];
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

    [(AWDProactiveModelFittingLogRegWeights *)self setEvaluationMetrics:?];
  }

  v5 = v19;
LABEL_27:
  sparseQuantizedWeights = self->_sparseQuantizedWeights;
  v15 = v5[7];
  if (sparseQuantizedWeights)
  {
    if (!v15)
    {
      goto LABEL_33;
    }

    [(AWDProactiveModelFittingQuantizedSparseVector *)sparseQuantizedWeights mergeFrom:?];
  }

  else
  {
    if (!v15)
    {
      goto LABEL_33;
    }

    [(AWDProactiveModelFittingLogRegWeights *)self setSparseQuantizedWeights:?];
  }

  v5 = v19;
LABEL_33:
  v16 = *(v5 + 72);
  if ((v16 & 4) != 0)
  {
    self->_weightsScaleFactor = *(v5 + 17);
    *&self->_has |= 4u;
    v16 = *(v5 + 72);
  }

  if ((v16 & 2) != 0)
  {
    self->_weightsL2norm = *(v5 + 16);
    *&self->_has |= 2u;
  }

  denseQuantizedWeights = self->_denseQuantizedWeights;
  v18 = v5[2];
  if (denseQuantizedWeights)
  {
    if (v18)
    {
      [(AWDProactiveModelFittingQuantizedDenseVector *)denseQuantizedWeights mergeFrom:?];
    }
  }

  else if (v18)
  {
    [(AWDProactiveModelFittingLogRegWeights *)self setDenseQuantizedWeights:?];
  }

  MEMORY[0x2821F96F8]();
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v3 = 2654435761u * self->_timestamp;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(AWDProactiveModelFittingModelInfo *)self->_modelInfo hash];
  v5 = [(AWDProactiveModelFittingSparseFloatVector *)self->_sparseFloatWeights hash];
  v6 = [(AWDProactiveModelFittingMinibatchStats *)self->_minibatchStats hash];
  v7 = [(AWDProactiveModelFittingEvalMetrics *)self->_evaluationMetrics hash];
  v8 = [(AWDProactiveModelFittingQuantizedSparseVector *)self->_sparseQuantizedWeights hash];
  if ((*&self->_has & 4) != 0)
  {
    weightsScaleFactor = self->_weightsScaleFactor;
    if (weightsScaleFactor >= 0.0)
    {
      v13 = weightsScaleFactor;
    }

    else
    {
      v13 = -weightsScaleFactor;
    }

    *v9.i64 = floor(v13 + 0.5);
    v14 = (v13 - *v9.i64) * 1.84467441e19;
    *v10.i64 = *v9.i64 - trunc(*v9.i64 * 5.42101086e-20) * 1.84467441e19;
    v15.f64[0] = NAN;
    v15.f64[1] = NAN;
    v9 = vbslq_s8(vnegq_f64(v15), v10, v9);
    v11 = 2654435761u * *v9.i64;
    if (v14 >= 0.0)
    {
      if (v14 > 0.0)
      {
        v11 += v14;
      }
    }

    else
    {
      v11 -= fabs(v14);
    }
  }

  else
  {
    v11 = 0;
  }

  if ((*&self->_has & 2) != 0)
  {
    weightsL2norm = self->_weightsL2norm;
    if (weightsL2norm >= 0.0)
    {
      v18 = weightsL2norm;
    }

    else
    {
      v18 = -weightsL2norm;
    }

    *v9.i64 = floor(v18 + 0.5);
    v19 = (v18 - *v9.i64) * 1.84467441e19;
    *v10.i64 = *v9.i64 - trunc(*v9.i64 * 5.42101086e-20) * 1.84467441e19;
    v20.f64[0] = NAN;
    v20.f64[1] = NAN;
    v16 = 2654435761u * *vbslq_s8(vnegq_f64(v20), v10, v9).i64;
    if (v19 >= 0.0)
    {
      if (v19 > 0.0)
      {
        v16 += v19;
      }
    }

    else
    {
      v16 -= fabs(v19);
    }
  }

  else
  {
    v16 = 0;
  }

  return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v11 ^ v16 ^ [(AWDProactiveModelFittingQuantizedDenseVector *)self->_denseQuantizedWeights hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_29;
  }

  v5 = *(v4 + 72);
  if (*&self->_has)
  {
    if ((*(v4 + 72) & 1) == 0 || self->_timestamp != *(v4 + 1))
    {
      goto LABEL_29;
    }
  }

  else if (*(v4 + 72))
  {
LABEL_29:
    v13 = 0;
    goto LABEL_30;
  }

  modelInfo = self->_modelInfo;
  if (modelInfo | *(v4 + 5) && ![(AWDProactiveModelFittingModelInfo *)modelInfo isEqual:?])
  {
    goto LABEL_29;
  }

  sparseFloatWeights = self->_sparseFloatWeights;
  if (sparseFloatWeights | *(v4 + 6))
  {
    if (![(AWDProactiveModelFittingSparseFloatVector *)sparseFloatWeights isEqual:?])
    {
      goto LABEL_29;
    }
  }

  minibatchStats = self->_minibatchStats;
  if (minibatchStats | *(v4 + 4))
  {
    if (![(AWDProactiveModelFittingMinibatchStats *)minibatchStats isEqual:?])
    {
      goto LABEL_29;
    }
  }

  evaluationMetrics = self->_evaluationMetrics;
  if (evaluationMetrics | *(v4 + 3))
  {
    if (![(AWDProactiveModelFittingEvalMetrics *)evaluationMetrics isEqual:?])
    {
      goto LABEL_29;
    }
  }

  sparseQuantizedWeights = self->_sparseQuantizedWeights;
  if (sparseQuantizedWeights | *(v4 + 7))
  {
    if (![(AWDProactiveModelFittingQuantizedSparseVector *)sparseQuantizedWeights isEqual:?])
    {
      goto LABEL_29;
    }
  }

  v11 = *(v4 + 72);
  if ((*&self->_has & 4) != 0)
  {
    if ((*(v4 + 72) & 4) == 0 || self->_weightsScaleFactor != *(v4 + 17))
    {
      goto LABEL_29;
    }
  }

  else if ((*(v4 + 72) & 4) != 0)
  {
    goto LABEL_29;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 72) & 2) == 0 || self->_weightsL2norm != *(v4 + 16))
    {
      goto LABEL_29;
    }
  }

  else if ((*(v4 + 72) & 2) != 0)
  {
    goto LABEL_29;
  }

  denseQuantizedWeights = self->_denseQuantizedWeights;
  if (denseQuantizedWeights | *(v4 + 2))
  {
    v13 = [(AWDProactiveModelFittingQuantizedDenseVector *)denseQuantizedWeights isEqual:?];
  }

  else
  {
    v13 = 1;
  }

LABEL_30:

  return v13;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 8) = self->_timestamp;
    *(v5 + 72) |= 1u;
  }

  v7 = [(AWDProactiveModelFittingModelInfo *)self->_modelInfo copyWithZone:a3];
  v8 = *(v6 + 40);
  *(v6 + 40) = v7;

  v9 = [(AWDProactiveModelFittingSparseFloatVector *)self->_sparseFloatWeights copyWithZone:a3];
  v10 = *(v6 + 48);
  *(v6 + 48) = v9;

  v11 = [(AWDProactiveModelFittingMinibatchStats *)self->_minibatchStats copyWithZone:a3];
  v12 = *(v6 + 32);
  *(v6 + 32) = v11;

  v13 = [(AWDProactiveModelFittingEvalMetrics *)self->_evaluationMetrics copyWithZone:a3];
  v14 = *(v6 + 24);
  *(v6 + 24) = v13;

  v15 = [(AWDProactiveModelFittingQuantizedSparseVector *)self->_sparseQuantizedWeights copyWithZone:a3];
  v16 = *(v6 + 56);
  *(v6 + 56) = v15;

  has = self->_has;
  if ((has & 4) != 0)
  {
    *(v6 + 68) = self->_weightsScaleFactor;
    *(v6 + 72) |= 4u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    *(v6 + 64) = self->_weightsL2norm;
    *(v6 + 72) |= 2u;
  }

  v18 = [(AWDProactiveModelFittingQuantizedDenseVector *)self->_denseQuantizedWeights copyWithZone:a3];
  v19 = *(v6 + 16);
  *(v6 + 16) = v18;

  return v6;
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  if (*&self->_has)
  {
    v4[1] = self->_timestamp;
    *(v4 + 72) |= 1u;
  }

  v6 = v4;
  if (self->_modelInfo)
  {
    [v4 setModelInfo:?];
    v4 = v6;
  }

  if (self->_sparseFloatWeights)
  {
    [v6 setSparseFloatWeights:?];
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

  if (self->_sparseQuantizedWeights)
  {
    [v6 setSparseQuantizedWeights:?];
    v4 = v6;
  }

  has = self->_has;
  if ((has & 4) != 0)
  {
    *(v4 + 17) = LODWORD(self->_weightsScaleFactor);
    *(v4 + 72) |= 4u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    *(v4 + 16) = LODWORD(self->_weightsL2norm);
    *(v4 + 72) |= 2u;
  }

  if (self->_denseQuantizedWeights)
  {
    [v6 setDenseQuantizedWeights:?];
    v4 = v6;
  }
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v9 = v4;
  if (*&self->_has)
  {
    timestamp = self->_timestamp;
    PBDataWriterWriteUint64Field();
    v4 = v9;
  }

  if (self->_modelInfo)
  {
    PBDataWriterWriteSubmessage();
    v4 = v9;
  }

  if (self->_sparseFloatWeights)
  {
    PBDataWriterWriteSubmessage();
    v4 = v9;
  }

  if (self->_minibatchStats)
  {
    PBDataWriterWriteSubmessage();
    v4 = v9;
  }

  if (self->_evaluationMetrics)
  {
    PBDataWriterWriteSubmessage();
    v4 = v9;
  }

  if (self->_sparseQuantizedWeights)
  {
    PBDataWriterWriteSubmessage();
    v4 = v9;
  }

  has = self->_has;
  if ((has & 4) != 0)
  {
    weightsScaleFactor = self->_weightsScaleFactor;
    PBDataWriterWriteFloatField();
    v4 = v9;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    weightsL2norm = self->_weightsL2norm;
    PBDataWriterWriteFloatField();
    v4 = v9;
  }

  if (self->_denseQuantizedWeights)
  {
    PBDataWriterWriteSubmessage();
    v4 = v9;
  }
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  if (*&self->_has)
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

  sparseFloatWeights = self->_sparseFloatWeights;
  if (sparseFloatWeights)
  {
    v9 = [(AWDProactiveModelFittingSparseFloatVector *)sparseFloatWeights dictionaryRepresentation];
    [v3 setObject:v9 forKey:@"sparseFloatWeights"];
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

  sparseQuantizedWeights = self->_sparseQuantizedWeights;
  if (sparseQuantizedWeights)
  {
    v15 = [(AWDProactiveModelFittingQuantizedSparseVector *)sparseQuantizedWeights dictionaryRepresentation];
    [v3 setObject:v15 forKey:@"sparseQuantizedWeights"];
  }

  has = self->_has;
  if ((has & 4) != 0)
  {
    *&v4 = self->_weightsScaleFactor;
    v17 = [MEMORY[0x277CCABB0] numberWithFloat:v4];
    [v3 setObject:v17 forKey:@"weightsScaleFactor"];

    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    *&v4 = self->_weightsL2norm;
    v18 = [MEMORY[0x277CCABB0] numberWithFloat:v4];
    [v3 setObject:v18 forKey:@"weightsL2norm"];
  }

  denseQuantizedWeights = self->_denseQuantizedWeights;
  if (denseQuantizedWeights)
  {
    v20 = [(AWDProactiveModelFittingQuantizedDenseVector *)denseQuantizedWeights dictionaryRepresentation];
    [v3 setObject:v20 forKey:@"denseQuantizedWeights"];
  }

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = AWDProactiveModelFittingLogRegWeights;
  v4 = [(AWDProactiveModelFittingLogRegWeights *)&v8 description];
  v5 = [(AWDProactiveModelFittingLogRegWeights *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (void)setHasWeightsL2norm:(BOOL)a3
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

- (void)setHasWeightsScaleFactor:(BOOL)a3
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

- (BOOL)hasWeights
{
  if ([(AWDProactiveModelFittingLogRegWeights *)self hasSparseFloatWeights]|| [(AWDProactiveModelFittingLogRegWeights *)self hasSparseQuantizedWeights])
  {
    return 1;
  }

  return [(AWDProactiveModelFittingLogRegWeights *)self hasDenseQuantizedWeights];
}

@end