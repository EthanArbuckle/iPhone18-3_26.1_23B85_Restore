@interface AWDProactiveModelFittingLinRegFeatureMatrix
- (BOOL)hasFeatureMatrix;
- (BOOL)isEqual:(id)a3;
- (float)featureMatrixValueAtRow:(unint64_t)a3 column:(unint64_t)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasFeatureMatrixL2norm:(BOOL)a3;
- (void)setHasFeatureMatrixScaleFactor:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation AWDProactiveModelFittingLinRegFeatureMatrix

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4[7])
  {
    self->_timestamp = v4[1];
    *&self->_has |= 1u;
  }

  modelInfo = self->_modelInfo;
  v7 = v5[4];
  v15 = v5;
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

    [(AWDProactiveModelFittingLinRegFeatureMatrix *)self setModelInfo:?];
  }

  v5 = v15;
LABEL_9:
  sparseFloatFeatureMatrix = self->_sparseFloatFeatureMatrix;
  v9 = v5[5];
  if (sparseFloatFeatureMatrix)
  {
    if (!v9)
    {
      goto LABEL_15;
    }

    [(AWDProactiveModelFittingSparseFloatMatrix *)sparseFloatFeatureMatrix mergeFrom:?];
  }

  else
  {
    if (!v9)
    {
      goto LABEL_15;
    }

    [(AWDProactiveModelFittingLinRegFeatureMatrix *)self setSparseFloatFeatureMatrix:?];
  }

  v5 = v15;
LABEL_15:
  minibatchStats = self->_minibatchStats;
  v11 = v5[3];
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

    [(AWDProactiveModelFittingLinRegFeatureMatrix *)self setMinibatchStats:?];
  }

  v5 = v15;
LABEL_21:
  sparseQuantizedFeatureMatrix = self->_sparseQuantizedFeatureMatrix;
  v13 = v5[6];
  if (sparseQuantizedFeatureMatrix)
  {
    if (!v13)
    {
      goto LABEL_27;
    }

    [(AWDProactiveModelFittingQuantizedSparseMatrix *)sparseQuantizedFeatureMatrix mergeFrom:?];
  }

  else
  {
    if (!v13)
    {
      goto LABEL_27;
    }

    [(AWDProactiveModelFittingLinRegFeatureMatrix *)self setSparseQuantizedFeatureMatrix:?];
  }

  v5 = v15;
LABEL_27:
  v14 = *(v5 + 56);
  if ((v14 & 4) != 0)
  {
    self->_featureMatrixScaleFactor = *(v5 + 5);
    *&self->_has |= 4u;
    v14 = *(v5 + 56);
  }

  if ((v14 & 2) != 0)
  {
    self->_featureMatrixL2norm = *(v5 + 4);
    *&self->_has |= 2u;
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
  v5 = [(AWDProactiveModelFittingSparseFloatMatrix *)self->_sparseFloatFeatureMatrix hash];
  v6 = [(AWDProactiveModelFittingMinibatchStats *)self->_minibatchStats hash];
  v7 = [(AWDProactiveModelFittingQuantizedSparseMatrix *)self->_sparseQuantizedFeatureMatrix hash];
  if ((*&self->_has & 4) != 0)
  {
    featureMatrixScaleFactor = self->_featureMatrixScaleFactor;
    if (featureMatrixScaleFactor >= 0.0)
    {
      v12 = featureMatrixScaleFactor;
    }

    else
    {
      v12 = -featureMatrixScaleFactor;
    }

    *v8.i64 = floor(v12 + 0.5);
    v13 = (v12 - *v8.i64) * 1.84467441e19;
    *v9.i64 = *v8.i64 - trunc(*v8.i64 * 5.42101086e-20) * 1.84467441e19;
    v14.f64[0] = NAN;
    v14.f64[1] = NAN;
    v8 = vbslq_s8(vnegq_f64(v14), v9, v8);
    v10 = 2654435761u * *v8.i64;
    if (v13 >= 0.0)
    {
      if (v13 > 0.0)
      {
        v10 += v13;
      }
    }

    else
    {
      v10 -= fabs(v13);
    }
  }

  else
  {
    v10 = 0;
  }

  if ((*&self->_has & 2) != 0)
  {
    featureMatrixL2norm = self->_featureMatrixL2norm;
    if (featureMatrixL2norm >= 0.0)
    {
      v17 = featureMatrixL2norm;
    }

    else
    {
      v17 = -featureMatrixL2norm;
    }

    *v8.i64 = floor(v17 + 0.5);
    v18 = (v17 - *v8.i64) * 1.84467441e19;
    *v9.i64 = *v8.i64 - trunc(*v8.i64 * 5.42101086e-20) * 1.84467441e19;
    v19.f64[0] = NAN;
    v19.f64[1] = NAN;
    v15 = 2654435761u * *vbslq_s8(vnegq_f64(v19), v9, v8).i64;
    if (v18 >= 0.0)
    {
      if (v18 > 0.0)
      {
        v15 += v18;
      }
    }

    else
    {
      v15 -= fabs(v18);
    }
  }

  else
  {
    v15 = 0;
  }

  return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v10 ^ v15;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_24;
  }

  v5 = *(v4 + 56);
  if (*&self->_has)
  {
    if ((*(v4 + 56) & 1) == 0 || self->_timestamp != *(v4 + 1))
    {
      goto LABEL_24;
    }
  }

  else if (*(v4 + 56))
  {
LABEL_24:
    v10 = 0;
    goto LABEL_25;
  }

  modelInfo = self->_modelInfo;
  if (modelInfo | *(v4 + 4) && ![(AWDProactiveModelFittingModelInfo *)modelInfo isEqual:?])
  {
    goto LABEL_24;
  }

  sparseFloatFeatureMatrix = self->_sparseFloatFeatureMatrix;
  if (sparseFloatFeatureMatrix | *(v4 + 5))
  {
    if (![(AWDProactiveModelFittingSparseFloatMatrix *)sparseFloatFeatureMatrix isEqual:?])
    {
      goto LABEL_24;
    }
  }

  minibatchStats = self->_minibatchStats;
  if (minibatchStats | *(v4 + 3))
  {
    if (![(AWDProactiveModelFittingMinibatchStats *)minibatchStats isEqual:?])
    {
      goto LABEL_24;
    }
  }

  sparseQuantizedFeatureMatrix = self->_sparseQuantizedFeatureMatrix;
  if (sparseQuantizedFeatureMatrix | *(v4 + 6))
  {
    if (![(AWDProactiveModelFittingQuantizedSparseMatrix *)sparseQuantizedFeatureMatrix isEqual:?])
    {
      goto LABEL_24;
    }
  }

  if ((*&self->_has & 4) != 0)
  {
    if ((*(v4 + 56) & 4) == 0 || self->_featureMatrixScaleFactor != *(v4 + 5))
    {
      goto LABEL_24;
    }
  }

  else if ((*(v4 + 56) & 4) != 0)
  {
    goto LABEL_24;
  }

  v10 = (*(v4 + 56) & 2) == 0;
  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 56) & 2) == 0 || self->_featureMatrixL2norm != *(v4 + 4))
    {
      goto LABEL_24;
    }

    v10 = 1;
  }

LABEL_25:

  return v10;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 8) = self->_timestamp;
    *(v5 + 56) |= 1u;
  }

  v7 = [(AWDProactiveModelFittingModelInfo *)self->_modelInfo copyWithZone:a3];
  v8 = *(v6 + 32);
  *(v6 + 32) = v7;

  v9 = [(AWDProactiveModelFittingSparseFloatMatrix *)self->_sparseFloatFeatureMatrix copyWithZone:a3];
  v10 = *(v6 + 40);
  *(v6 + 40) = v9;

  v11 = [(AWDProactiveModelFittingMinibatchStats *)self->_minibatchStats copyWithZone:a3];
  v12 = *(v6 + 24);
  *(v6 + 24) = v11;

  v13 = [(AWDProactiveModelFittingQuantizedSparseMatrix *)self->_sparseQuantizedFeatureMatrix copyWithZone:a3];
  v14 = *(v6 + 48);
  *(v6 + 48) = v13;

  has = self->_has;
  if ((has & 4) != 0)
  {
    *(v6 + 20) = self->_featureMatrixScaleFactor;
    *(v6 + 56) |= 4u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    *(v6 + 16) = self->_featureMatrixL2norm;
    *(v6 + 56) |= 2u;
  }

  return v6;
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  if (*&self->_has)
  {
    v4[1] = self->_timestamp;
    *(v4 + 56) |= 1u;
  }

  v6 = v4;
  if (self->_modelInfo)
  {
    [v4 setModelInfo:?];
    v4 = v6;
  }

  if (self->_sparseFloatFeatureMatrix)
  {
    [v6 setSparseFloatFeatureMatrix:?];
    v4 = v6;
  }

  if (self->_minibatchStats)
  {
    [v6 setMinibatchStats:?];
    v4 = v6;
  }

  if (self->_sparseQuantizedFeatureMatrix)
  {
    [v6 setSparseQuantizedFeatureMatrix:?];
    v4 = v6;
  }

  has = self->_has;
  if ((has & 4) != 0)
  {
    *(v4 + 5) = LODWORD(self->_featureMatrixScaleFactor);
    *(v4 + 56) |= 4u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    *(v4 + 4) = LODWORD(self->_featureMatrixL2norm);
    *(v4 + 56) |= 2u;
  }
}

- (void)writeTo:(id)a3
{
  v8 = a3;
  if (*&self->_has)
  {
    timestamp = self->_timestamp;
    PBDataWriterWriteUint64Field();
  }

  if (self->_modelInfo)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_sparseFloatFeatureMatrix)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_minibatchStats)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_sparseQuantizedFeatureMatrix)
  {
    PBDataWriterWriteSubmessage();
  }

  has = self->_has;
  if ((has & 4) != 0)
  {
    featureMatrixScaleFactor = self->_featureMatrixScaleFactor;
    PBDataWriterWriteFloatField();
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    featureMatrixL2norm = self->_featureMatrixL2norm;
    PBDataWriterWriteFloatField();
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

  sparseFloatFeatureMatrix = self->_sparseFloatFeatureMatrix;
  if (sparseFloatFeatureMatrix)
  {
    v9 = [(AWDProactiveModelFittingSparseFloatMatrix *)sparseFloatFeatureMatrix dictionaryRepresentation];
    [v3 setObject:v9 forKey:@"sparseFloatFeatureMatrix"];
  }

  minibatchStats = self->_minibatchStats;
  if (minibatchStats)
  {
    v11 = [(AWDProactiveModelFittingMinibatchStats *)minibatchStats dictionaryRepresentation];
    [v3 setObject:v11 forKey:@"minibatchStats"];
  }

  sparseQuantizedFeatureMatrix = self->_sparseQuantizedFeatureMatrix;
  if (sparseQuantizedFeatureMatrix)
  {
    v13 = [(AWDProactiveModelFittingQuantizedSparseMatrix *)sparseQuantizedFeatureMatrix dictionaryRepresentation];
    [v3 setObject:v13 forKey:@"sparseQuantizedFeatureMatrix"];
  }

  has = self->_has;
  if ((has & 4) != 0)
  {
    *&v4 = self->_featureMatrixScaleFactor;
    v15 = [MEMORY[0x277CCABB0] numberWithFloat:v4];
    [v3 setObject:v15 forKey:@"featureMatrixScaleFactor"];

    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    *&v4 = self->_featureMatrixL2norm;
    v16 = [MEMORY[0x277CCABB0] numberWithFloat:v4];
    [v3 setObject:v16 forKey:@"featureMatrixL2norm"];
  }

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = AWDProactiveModelFittingLinRegFeatureMatrix;
  v4 = [(AWDProactiveModelFittingLinRegFeatureMatrix *)&v8 description];
  v5 = [(AWDProactiveModelFittingLinRegFeatureMatrix *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (void)setHasFeatureMatrixL2norm:(BOOL)a3
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

- (void)setHasFeatureMatrixScaleFactor:(BOOL)a3
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

- (float)featureMatrixValueAtRow:(unint64_t)a3 column:(unint64_t)a4
{
  if ([(AWDProactiveModelFittingLinRegFeatureMatrix *)self hasSparseFloatFeatureMatrix])
  {
    v7 = [(AWDProactiveModelFittingLinRegFeatureMatrix *)self sparseFloatFeatureMatrix];
    [v7 valueAtRow:a3 column:a4];
LABEL_5:
    v9 = v8;

    return v9;
  }

  v9 = 0.0;
  if ([(AWDProactiveModelFittingLinRegFeatureMatrix *)self hasSparseQuantizedFeatureMatrix])
  {
    v7 = [(AWDProactiveModelFittingLinRegFeatureMatrix *)self sparseQuantizedFeatureMatrix];
    [v7 originalValueAtRow:a3 column:a4];
    goto LABEL_5;
  }

  return v9;
}

- (BOOL)hasFeatureMatrix
{
  if ([(AWDProactiveModelFittingLinRegFeatureMatrix *)self hasSparseFloatFeatureMatrix])
  {
    return 1;
  }

  return [(AWDProactiveModelFittingLinRegFeatureMatrix *)self hasSparseQuantizedFeatureMatrix];
}

@end