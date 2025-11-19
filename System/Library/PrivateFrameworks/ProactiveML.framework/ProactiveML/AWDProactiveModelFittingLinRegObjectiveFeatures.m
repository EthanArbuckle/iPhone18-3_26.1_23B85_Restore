@interface AWDProactiveModelFittingLinRegObjectiveFeatures
- (BOOL)hasObjectiveFeatures;
- (BOOL)isEqual:(id)a3;
- (float)featuresValueAtIndex:(unint64_t)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)featuresLength;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasFeaturesL2norm:(BOOL)a3;
- (void)setHasFeaturesScaleFactor:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation AWDProactiveModelFittingLinRegObjectiveFeatures

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

    [(AWDProactiveModelFittingLinRegObjectiveFeatures *)self setModelInfo:?];
  }

  v5 = v15;
LABEL_9:
  sparseFloatFeatures = self->_sparseFloatFeatures;
  v9 = v5[5];
  if (sparseFloatFeatures)
  {
    if (!v9)
    {
      goto LABEL_15;
    }

    [(AWDProactiveModelFittingSparseFloatVector *)sparseFloatFeatures mergeFrom:?];
  }

  else
  {
    if (!v9)
    {
      goto LABEL_15;
    }

    [(AWDProactiveModelFittingLinRegObjectiveFeatures *)self setSparseFloatFeatures:?];
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

    [(AWDProactiveModelFittingLinRegObjectiveFeatures *)self setMinibatchStats:?];
  }

  v5 = v15;
LABEL_21:
  sparseQuantizedFeatures = self->_sparseQuantizedFeatures;
  v13 = v5[6];
  if (sparseQuantizedFeatures)
  {
    if (!v13)
    {
      goto LABEL_27;
    }

    [(AWDProactiveModelFittingQuantizedSparseVector *)sparseQuantizedFeatures mergeFrom:?];
  }

  else
  {
    if (!v13)
    {
      goto LABEL_27;
    }

    [(AWDProactiveModelFittingLinRegObjectiveFeatures *)self setSparseQuantizedFeatures:?];
  }

  v5 = v15;
LABEL_27:
  v14 = *(v5 + 56);
  if ((v14 & 4) != 0)
  {
    self->_featuresScaleFactor = *(v5 + 5);
    *&self->_has |= 4u;
    v14 = *(v5 + 56);
  }

  if ((v14 & 2) != 0)
  {
    self->_featuresL2norm = *(v5 + 4);
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
  v5 = [(AWDProactiveModelFittingSparseFloatVector *)self->_sparseFloatFeatures hash];
  v6 = [(AWDProactiveModelFittingMinibatchStats *)self->_minibatchStats hash];
  v7 = [(AWDProactiveModelFittingQuantizedSparseVector *)self->_sparseQuantizedFeatures hash];
  if ((*&self->_has & 4) != 0)
  {
    featuresScaleFactor = self->_featuresScaleFactor;
    if (featuresScaleFactor >= 0.0)
    {
      v12 = featuresScaleFactor;
    }

    else
    {
      v12 = -featuresScaleFactor;
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
    featuresL2norm = self->_featuresL2norm;
    if (featuresL2norm >= 0.0)
    {
      v17 = featuresL2norm;
    }

    else
    {
      v17 = -featuresL2norm;
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

  sparseFloatFeatures = self->_sparseFloatFeatures;
  if (sparseFloatFeatures | *(v4 + 5))
  {
    if (![(AWDProactiveModelFittingSparseFloatVector *)sparseFloatFeatures isEqual:?])
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

  sparseQuantizedFeatures = self->_sparseQuantizedFeatures;
  if (sparseQuantizedFeatures | *(v4 + 6))
  {
    if (![(AWDProactiveModelFittingQuantizedSparseVector *)sparseQuantizedFeatures isEqual:?])
    {
      goto LABEL_24;
    }
  }

  if ((*&self->_has & 4) != 0)
  {
    if ((*(v4 + 56) & 4) == 0 || self->_featuresScaleFactor != *(v4 + 5))
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
    if ((*(v4 + 56) & 2) == 0 || self->_featuresL2norm != *(v4 + 4))
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

  v9 = [(AWDProactiveModelFittingSparseFloatVector *)self->_sparseFloatFeatures copyWithZone:a3];
  v10 = *(v6 + 40);
  *(v6 + 40) = v9;

  v11 = [(AWDProactiveModelFittingMinibatchStats *)self->_minibatchStats copyWithZone:a3];
  v12 = *(v6 + 24);
  *(v6 + 24) = v11;

  v13 = [(AWDProactiveModelFittingQuantizedSparseVector *)self->_sparseQuantizedFeatures copyWithZone:a3];
  v14 = *(v6 + 48);
  *(v6 + 48) = v13;

  has = self->_has;
  if ((has & 4) != 0)
  {
    *(v6 + 20) = self->_featuresScaleFactor;
    *(v6 + 56) |= 4u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    *(v6 + 16) = self->_featuresL2norm;
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

  if (self->_sparseFloatFeatures)
  {
    [v6 setSparseFloatFeatures:?];
    v4 = v6;
  }

  if (self->_minibatchStats)
  {
    [v6 setMinibatchStats:?];
    v4 = v6;
  }

  if (self->_sparseQuantizedFeatures)
  {
    [v6 setSparseQuantizedFeatures:?];
    v4 = v6;
  }

  has = self->_has;
  if ((has & 4) != 0)
  {
    *(v4 + 5) = LODWORD(self->_featuresScaleFactor);
    *(v4 + 56) |= 4u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    *(v4 + 4) = LODWORD(self->_featuresL2norm);
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

  if (self->_sparseFloatFeatures)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_minibatchStats)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_sparseQuantizedFeatures)
  {
    PBDataWriterWriteSubmessage();
  }

  has = self->_has;
  if ((has & 4) != 0)
  {
    featuresScaleFactor = self->_featuresScaleFactor;
    PBDataWriterWriteFloatField();
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    featuresL2norm = self->_featuresL2norm;
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

  sparseFloatFeatures = self->_sparseFloatFeatures;
  if (sparseFloatFeatures)
  {
    v9 = [(AWDProactiveModelFittingSparseFloatVector *)sparseFloatFeatures dictionaryRepresentation];
    [v3 setObject:v9 forKey:@"sparseFloatFeatures"];
  }

  minibatchStats = self->_minibatchStats;
  if (minibatchStats)
  {
    v11 = [(AWDProactiveModelFittingMinibatchStats *)minibatchStats dictionaryRepresentation];
    [v3 setObject:v11 forKey:@"minibatchStats"];
  }

  sparseQuantizedFeatures = self->_sparseQuantizedFeatures;
  if (sparseQuantizedFeatures)
  {
    v13 = [(AWDProactiveModelFittingQuantizedSparseVector *)sparseQuantizedFeatures dictionaryRepresentation];
    [v3 setObject:v13 forKey:@"sparseQuantizedFeatures"];
  }

  has = self->_has;
  if ((has & 4) != 0)
  {
    *&v4 = self->_featuresScaleFactor;
    v15 = [MEMORY[0x277CCABB0] numberWithFloat:v4];
    [v3 setObject:v15 forKey:@"featuresScaleFactor"];

    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    *&v4 = self->_featuresL2norm;
    v16 = [MEMORY[0x277CCABB0] numberWithFloat:v4];
    [v3 setObject:v16 forKey:@"featuresL2norm"];
  }

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = AWDProactiveModelFittingLinRegObjectiveFeatures;
  v4 = [(AWDProactiveModelFittingLinRegObjectiveFeatures *)&v8 description];
  v5 = [(AWDProactiveModelFittingLinRegObjectiveFeatures *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (void)setHasFeaturesL2norm:(BOOL)a3
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

- (void)setHasFeaturesScaleFactor:(BOOL)a3
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

- (unint64_t)featuresLength
{
  if ([(AWDProactiveModelFittingLinRegObjectiveFeatures *)self hasSparseFloatFeatures])
  {
    v3 = [(AWDProactiveModelFittingLinRegObjectiveFeatures *)self sparseFloatFeatures];
    v4 = [v3 length];
  }

  else
  {
    if (![(AWDProactiveModelFittingLinRegObjectiveFeatures *)self hasSparseQuantizedFeatures])
    {
      return 0;
    }

    v3 = [(AWDProactiveModelFittingLinRegObjectiveFeatures *)self sparseQuantizedFeatures];
    v4 = [v3 length];
  }

  return v4;
}

- (float)featuresValueAtIndex:(unint64_t)a3
{
  if ([(AWDProactiveModelFittingLinRegObjectiveFeatures *)self hasSparseFloatFeatures])
  {
    v5 = [(AWDProactiveModelFittingLinRegObjectiveFeatures *)self sparseFloatFeatures];
    [v5 valueAtIndex:a3];
LABEL_5:
    v7 = v6;

    return v7;
  }

  v7 = 0.0;
  if ([(AWDProactiveModelFittingLinRegObjectiveFeatures *)self hasSparseQuantizedFeatures])
  {
    v5 = [(AWDProactiveModelFittingLinRegObjectiveFeatures *)self sparseQuantizedFeatures];
    [v5 originalValueAtIndex:a3];
    goto LABEL_5;
  }

  return v7;
}

- (BOOL)hasObjectiveFeatures
{
  if ([(AWDProactiveModelFittingLinRegObjectiveFeatures *)self hasSparseFloatFeatures])
  {
    return 1;
  }

  return [(AWDProactiveModelFittingLinRegObjectiveFeatures *)self hasSparseQuantizedFeatures];
}

@end