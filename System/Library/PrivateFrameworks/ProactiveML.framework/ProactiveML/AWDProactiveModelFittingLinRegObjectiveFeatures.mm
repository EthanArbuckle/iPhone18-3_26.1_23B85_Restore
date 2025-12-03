@interface AWDProactiveModelFittingLinRegObjectiveFeatures
- (BOOL)hasObjectiveFeatures;
- (BOOL)isEqual:(id)equal;
- (float)featuresValueAtIndex:(unint64_t)index;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)featuresLength;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasFeaturesL2norm:(BOOL)l2norm;
- (void)setHasFeaturesScaleFactor:(BOOL)factor;
- (void)writeTo:(id)to;
@end

@implementation AWDProactiveModelFittingLinRegObjectiveFeatures

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = fromCopy;
  if (fromCopy[7])
  {
    self->_timestamp = fromCopy[1];
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_24;
  }

  v5 = *(equalCopy + 56);
  if (*&self->_has)
  {
    if ((*(equalCopy + 56) & 1) == 0 || self->_timestamp != *(equalCopy + 1))
    {
      goto LABEL_24;
    }
  }

  else if (*(equalCopy + 56))
  {
LABEL_24:
    v10 = 0;
    goto LABEL_25;
  }

  modelInfo = self->_modelInfo;
  if (modelInfo | *(equalCopy + 4) && ![(AWDProactiveModelFittingModelInfo *)modelInfo isEqual:?])
  {
    goto LABEL_24;
  }

  sparseFloatFeatures = self->_sparseFloatFeatures;
  if (sparseFloatFeatures | *(equalCopy + 5))
  {
    if (![(AWDProactiveModelFittingSparseFloatVector *)sparseFloatFeatures isEqual:?])
    {
      goto LABEL_24;
    }
  }

  minibatchStats = self->_minibatchStats;
  if (minibatchStats | *(equalCopy + 3))
  {
    if (![(AWDProactiveModelFittingMinibatchStats *)minibatchStats isEqual:?])
    {
      goto LABEL_24;
    }
  }

  sparseQuantizedFeatures = self->_sparseQuantizedFeatures;
  if (sparseQuantizedFeatures | *(equalCopy + 6))
  {
    if (![(AWDProactiveModelFittingQuantizedSparseVector *)sparseQuantizedFeatures isEqual:?])
    {
      goto LABEL_24;
    }
  }

  if ((*&self->_has & 4) != 0)
  {
    if ((*(equalCopy + 56) & 4) == 0 || self->_featuresScaleFactor != *(equalCopy + 5))
    {
      goto LABEL_24;
    }
  }

  else if ((*(equalCopy + 56) & 4) != 0)
  {
    goto LABEL_24;
  }

  v10 = (*(equalCopy + 56) & 2) == 0;
  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 56) & 2) == 0 || self->_featuresL2norm != *(equalCopy + 4))
    {
      goto LABEL_24;
    }

    v10 = 1;
  }

LABEL_25:

  return v10;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 8) = self->_timestamp;
    *(v5 + 56) |= 1u;
  }

  v7 = [(AWDProactiveModelFittingModelInfo *)self->_modelInfo copyWithZone:zone];
  v8 = *(v6 + 32);
  *(v6 + 32) = v7;

  v9 = [(AWDProactiveModelFittingSparseFloatVector *)self->_sparseFloatFeatures copyWithZone:zone];
  v10 = *(v6 + 40);
  *(v6 + 40) = v9;

  v11 = [(AWDProactiveModelFittingMinibatchStats *)self->_minibatchStats copyWithZone:zone];
  v12 = *(v6 + 24);
  *(v6 + 24) = v11;

  v13 = [(AWDProactiveModelFittingQuantizedSparseVector *)self->_sparseQuantizedFeatures copyWithZone:zone];
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

- (void)copyTo:(id)to
{
  toCopy = to;
  if (*&self->_has)
  {
    toCopy[1] = self->_timestamp;
    *(toCopy + 56) |= 1u;
  }

  v6 = toCopy;
  if (self->_modelInfo)
  {
    [toCopy setModelInfo:?];
    toCopy = v6;
  }

  if (self->_sparseFloatFeatures)
  {
    [v6 setSparseFloatFeatures:?];
    toCopy = v6;
  }

  if (self->_minibatchStats)
  {
    [v6 setMinibatchStats:?];
    toCopy = v6;
  }

  if (self->_sparseQuantizedFeatures)
  {
    [v6 setSparseQuantizedFeatures:?];
    toCopy = v6;
  }

  has = self->_has;
  if ((has & 4) != 0)
  {
    *(toCopy + 5) = LODWORD(self->_featuresScaleFactor);
    *(toCopy + 56) |= 4u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    *(toCopy + 4) = LODWORD(self->_featuresL2norm);
    *(toCopy + 56) |= 2u;
  }
}

- (void)writeTo:(id)to
{
  toCopy = to;
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
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  if (*&self->_has)
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

  sparseFloatFeatures = self->_sparseFloatFeatures;
  if (sparseFloatFeatures)
  {
    dictionaryRepresentation2 = [(AWDProactiveModelFittingSparseFloatVector *)sparseFloatFeatures dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation2 forKey:@"sparseFloatFeatures"];
  }

  minibatchStats = self->_minibatchStats;
  if (minibatchStats)
  {
    dictionaryRepresentation3 = [(AWDProactiveModelFittingMinibatchStats *)minibatchStats dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation3 forKey:@"minibatchStats"];
  }

  sparseQuantizedFeatures = self->_sparseQuantizedFeatures;
  if (sparseQuantizedFeatures)
  {
    dictionaryRepresentation4 = [(AWDProactiveModelFittingQuantizedSparseVector *)sparseQuantizedFeatures dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation4 forKey:@"sparseQuantizedFeatures"];
  }

  has = self->_has;
  if ((has & 4) != 0)
  {
    *&v4 = self->_featuresScaleFactor;
    v15 = [MEMORY[0x277CCABB0] numberWithFloat:v4];
    [dictionary setObject:v15 forKey:@"featuresScaleFactor"];

    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    *&v4 = self->_featuresL2norm;
    v16 = [MEMORY[0x277CCABB0] numberWithFloat:v4];
    [dictionary setObject:v16 forKey:@"featuresL2norm"];
  }

  return dictionary;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = AWDProactiveModelFittingLinRegObjectiveFeatures;
  v4 = [(AWDProactiveModelFittingLinRegObjectiveFeatures *)&v8 description];
  dictionaryRepresentation = [(AWDProactiveModelFittingLinRegObjectiveFeatures *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (void)setHasFeaturesL2norm:(BOOL)l2norm
{
  if (l2norm)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (void)setHasFeaturesScaleFactor:(BOOL)factor
{
  if (factor)
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
    sparseFloatFeatures = [(AWDProactiveModelFittingLinRegObjectiveFeatures *)self sparseFloatFeatures];
    v4 = [sparseFloatFeatures length];
  }

  else
  {
    if (![(AWDProactiveModelFittingLinRegObjectiveFeatures *)self hasSparseQuantizedFeatures])
    {
      return 0;
    }

    sparseFloatFeatures = [(AWDProactiveModelFittingLinRegObjectiveFeatures *)self sparseQuantizedFeatures];
    v4 = [sparseFloatFeatures length];
  }

  return v4;
}

- (float)featuresValueAtIndex:(unint64_t)index
{
  if ([(AWDProactiveModelFittingLinRegObjectiveFeatures *)self hasSparseFloatFeatures])
  {
    sparseFloatFeatures = [(AWDProactiveModelFittingLinRegObjectiveFeatures *)self sparseFloatFeatures];
    [sparseFloatFeatures valueAtIndex:index];
LABEL_5:
    v7 = v6;

    return v7;
  }

  v7 = 0.0;
  if ([(AWDProactiveModelFittingLinRegObjectiveFeatures *)self hasSparseQuantizedFeatures])
  {
    sparseFloatFeatures = [(AWDProactiveModelFittingLinRegObjectiveFeatures *)self sparseQuantizedFeatures];
    [sparseFloatFeatures originalValueAtIndex:index];
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