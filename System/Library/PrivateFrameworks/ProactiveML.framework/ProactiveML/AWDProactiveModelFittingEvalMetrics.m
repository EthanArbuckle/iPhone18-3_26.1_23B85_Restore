@interface AWDProactiveModelFittingEvalMetrics
+ (AWDProactiveModelFittingEvalMetrics)evalMetricsWithRmse:(float)a3 f1:(float)a4;
+ (AWDProactiveModelFittingEvalMetrics)evalMetricsWithRmse:(float)a3 f1:(float)a4 truePositives:(unint64_t)a5 trueNegatives:(unint64_t)a6 falsePositives:(unint64_t)a7 falseNegatives:(unint64_t)a8;
- (BOOL)isEqual:(id)a3;
- (float)negativeScoresAtIndex:(unint64_t)a3;
- (float)positiveScoresAtIndex:(unint64_t)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (id)toDictionary;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)dealloc;
- (void)mergeFrom:(id)a3;
- (void)setHasF1:(BOOL)a3;
- (void)setHasFalsePositives:(BOOL)a3;
- (void)setHasRmse:(BOOL)a3;
- (void)setHasSecsToExecute:(BOOL)a3;
- (void)setHasTrueNegatives:(BOOL)a3;
- (void)setHasTruePositives:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation AWDProactiveModelFittingEvalMetrics

+ (AWDProactiveModelFittingEvalMetrics)evalMetricsWithRmse:(float)a3 f1:(float)a4 truePositives:(unint64_t)a5 trueNegatives:(unint64_t)a6 falsePositives:(unint64_t)a7 falseNegatives:(unint64_t)a8
{
  v14 = objc_opt_new();
  *&v15 = a3;
  [v14 setRmse:v15];
  *&v16 = a4;
  [v14 setF1:v16];
  [v14 setTruePositives:a5];
  [v14 setTrueNegatives:a6];
  [v14 setFalsePositives:a7];
  [v14 setFalseNegatives:a8];

  return v14;
}

+ (AWDProactiveModelFittingEvalMetrics)evalMetricsWithRmse:(float)a3 f1:(float)a4
{
  v6 = objc_opt_new();
  *&v7 = a3;
  [v6 setRmse:v7];
  *&v8 = a4;
  [v6 setF1:v8];

  return v6;
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = *(v4 + 100);
  if ((v5 & 0x20) != 0)
  {
    self->_rmse = *(v4 + 23);
    *&self->_has |= 0x20u;
    v5 = *(v4 + 100);
    if ((v5 & 0x10) == 0)
    {
LABEL_3:
      if ((v5 & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_21;
    }
  }

  else if ((*(v4 + 100) & 0x10) == 0)
  {
    goto LABEL_3;
  }

  self->_f1 = *(v4 + 22);
  *&self->_has |= 0x10u;
  v5 = *(v4 + 100);
  if ((v5 & 8) == 0)
  {
LABEL_4:
    if ((v5 & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_22;
  }

LABEL_21:
  self->_truePositives = *(v4 + 10);
  *&self->_has |= 8u;
  v5 = *(v4 + 100);
  if ((v5 & 4) == 0)
  {
LABEL_5:
    if ((v5 & 2) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_23;
  }

LABEL_22:
  self->_trueNegatives = *(v4 + 9);
  *&self->_has |= 4u;
  v5 = *(v4 + 100);
  if ((v5 & 2) == 0)
  {
LABEL_6:
    if ((v5 & 1) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_23:
  self->_falsePositives = *(v4 + 8);
  *&self->_has |= 2u;
  if (*(v4 + 100))
  {
LABEL_7:
    self->_falseNegatives = *(v4 + 7);
    *&self->_has |= 1u;
  }

LABEL_8:
  v12 = v4;
  v6 = [v4 positiveScoresCount];
  if (v6)
  {
    v7 = v6;
    for (i = 0; i != v7; ++i)
    {
      [v12 positiveScoresAtIndex:i];
      [(AWDProactiveModelFittingEvalMetrics *)self addPositiveScores:?];
    }
  }

  v9 = [v12 negativeScoresCount];
  if (v9)
  {
    v10 = v9;
    for (j = 0; j != v10; ++j)
    {
      [v12 negativeScoresAtIndex:j];
      [(AWDProactiveModelFittingEvalMetrics *)self addNegativeScores:?];
    }
  }

  if ((v12[25] & 0x40) != 0)
  {
    self->_secsToExecute = v12[24];
    *&self->_has |= 0x40u;
  }
}

- (unint64_t)hash
{
  if ((*&self->_has & 0x20) != 0)
  {
    rmse = self->_rmse;
    if (rmse >= 0.0)
    {
      v7 = rmse;
    }

    else
    {
      v7 = -rmse;
    }

    *v2.i64 = floor(v7 + 0.5);
    v8 = (v7 - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v9.f64[0] = NAN;
    v9.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v9), v3, v2);
    v5 = 2654435761u * *v2.i64;
    if (v8 >= 0.0)
    {
      if (v8 > 0.0)
      {
        v5 += v8;
      }
    }

    else
    {
      v5 -= fabs(v8);
    }
  }

  else
  {
    v5 = 0;
  }

  if ((*&self->_has & 0x10) != 0)
  {
    f1 = self->_f1;
    if (f1 >= 0.0)
    {
      v12 = f1;
    }

    else
    {
      v12 = -f1;
    }

    *v2.i64 = floor(v12 + 0.5);
    v13 = (v12 - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v14.f64[0] = NAN;
    v14.f64[1] = NAN;
    v10 = 2654435761u * *vbslq_s8(vnegq_f64(v14), v3, v2).i64;
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

  if ((*&self->_has & 8) != 0)
  {
    v15 = 2654435761u * self->_truePositives;
    if ((*&self->_has & 4) != 0)
    {
LABEL_21:
      v16 = 2654435761u * self->_trueNegatives;
      if ((*&self->_has & 2) != 0)
      {
        goto LABEL_22;
      }

LABEL_26:
      v17 = 0;
      if (*&self->_has)
      {
        goto LABEL_23;
      }

      goto LABEL_27;
    }
  }

  else
  {
    v15 = 0;
    if ((*&self->_has & 4) != 0)
    {
      goto LABEL_21;
    }
  }

  v16 = 0;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_26;
  }

LABEL_22:
  v17 = 2654435761u * self->_falsePositives;
  if (*&self->_has)
  {
LABEL_23:
    v18 = 2654435761u * self->_falseNegatives;
    goto LABEL_28;
  }

LABEL_27:
  v18 = 0;
LABEL_28:
  v19 = PBRepeatedFloatHash();
  v20 = PBRepeatedFloatHash();
  if ((*&self->_has & 0x40) != 0)
  {
    secsToExecute = self->_secsToExecute;
    if (secsToExecute >= 0.0)
    {
      v25 = secsToExecute;
    }

    else
    {
      v25 = -secsToExecute;
    }

    *v21.i64 = floor(v25 + 0.5);
    v26 = (v25 - *v21.i64) * 1.84467441e19;
    *v22.i64 = *v21.i64 - trunc(*v21.i64 * 5.42101086e-20) * 1.84467441e19;
    v27.f64[0] = NAN;
    v27.f64[1] = NAN;
    v23 = 2654435761u * *vbslq_s8(vnegq_f64(v27), v22, v21).i64;
    if (v26 >= 0.0)
    {
      if (v26 > 0.0)
      {
        v23 += v26;
      }
    }

    else
    {
      v23 -= fabs(v26);
    }
  }

  else
  {
    v23 = 0;
  }

  return v10 ^ v5 ^ v15 ^ v16 ^ v17 ^ v18 ^ v19 ^ v20 ^ v23;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_38;
  }

  v5 = *(v4 + 100);
  if ((*&self->_has & 0x20) != 0)
  {
    if ((*(v4 + 100) & 0x20) == 0 || self->_rmse != *(v4 + 23))
    {
      goto LABEL_38;
    }
  }

  else if ((*(v4 + 100) & 0x20) != 0)
  {
LABEL_38:
    v6 = 0;
    goto LABEL_39;
  }

  if ((*&self->_has & 0x10) != 0)
  {
    if ((*(v4 + 100) & 0x10) == 0 || self->_f1 != *(v4 + 22))
    {
      goto LABEL_38;
    }
  }

  else if ((*(v4 + 100) & 0x10) != 0)
  {
    goto LABEL_38;
  }

  if ((*&self->_has & 8) != 0)
  {
    if ((*(v4 + 100) & 8) == 0 || self->_truePositives != *(v4 + 10))
    {
      goto LABEL_38;
    }
  }

  else if ((*(v4 + 100) & 8) != 0)
  {
    goto LABEL_38;
  }

  if ((*&self->_has & 4) != 0)
  {
    if ((*(v4 + 100) & 4) == 0 || self->_trueNegatives != *(v4 + 9))
    {
      goto LABEL_38;
    }
  }

  else if ((*(v4 + 100) & 4) != 0)
  {
    goto LABEL_38;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 100) & 2) == 0 || self->_falsePositives != *(v4 + 8))
    {
      goto LABEL_38;
    }
  }

  else if ((*(v4 + 100) & 2) != 0)
  {
    goto LABEL_38;
  }

  if (*&self->_has)
  {
    if ((*(v4 + 100) & 1) == 0 || self->_falseNegatives != *(v4 + 7))
    {
      goto LABEL_38;
    }
  }

  else if (*(v4 + 100))
  {
    goto LABEL_38;
  }

  if (!PBRepeatedFloatIsEqual() || !PBRepeatedFloatIsEqual())
  {
    goto LABEL_38;
  }

  v6 = (*(v4 + 100) & 0x40) == 0;
  if ((*&self->_has & 0x40) != 0)
  {
    if ((*(v4 + 100) & 0x40) == 0 || self->_secsToExecute != *(v4 + 24))
    {
      goto LABEL_38;
    }

    v6 = 1;
  }

LABEL_39:

  return v6;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v5 = v4;
  has = self->_has;
  if ((has & 0x20) != 0)
  {
    *(v4 + 92) = self->_rmse;
    *(v4 + 100) |= 0x20u;
    has = self->_has;
    if ((has & 0x10) == 0)
    {
LABEL_3:
      if ((has & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_13;
    }
  }

  else if ((*&self->_has & 0x10) == 0)
  {
    goto LABEL_3;
  }

  *(v4 + 88) = self->_f1;
  *(v4 + 100) |= 0x10u;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_4:
    if ((has & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_14;
  }

LABEL_13:
  *(v4 + 80) = self->_truePositives;
  *(v4 + 100) |= 8u;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_5:
    if ((has & 2) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_15;
  }

LABEL_14:
  *(v4 + 72) = self->_trueNegatives;
  *(v4 + 100) |= 4u;
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_6:
    if ((has & 1) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_15:
  *(v4 + 64) = self->_falsePositives;
  *(v4 + 100) |= 2u;
  if (*&self->_has)
  {
LABEL_7:
    *(v4 + 56) = self->_falseNegatives;
    *(v4 + 100) |= 1u;
  }

LABEL_8:
  PBRepeatedFloatCopy();
  PBRepeatedFloatCopy();
  if ((*&self->_has & 0x40) != 0)
  {
    *(v5 + 96) = self->_secsToExecute;
    *(v5 + 100) |= 0x40u;
  }

  return v5;
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  if ((has & 0x20) != 0)
  {
    v4[23] = LODWORD(self->_rmse);
    *(v4 + 100) |= 0x20u;
    has = self->_has;
    if ((has & 0x10) == 0)
    {
LABEL_3:
      if ((has & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_23;
    }
  }

  else if ((*&self->_has & 0x10) == 0)
  {
    goto LABEL_3;
  }

  v4[22] = LODWORD(self->_f1);
  *(v4 + 100) |= 0x10u;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_4:
    if ((has & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_24;
  }

LABEL_23:
  *(v4 + 10) = self->_truePositives;
  *(v4 + 100) |= 8u;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_5:
    if ((has & 2) == 0)
    {
      goto LABEL_6;
    }

LABEL_25:
    *(v4 + 8) = self->_falsePositives;
    *(v4 + 100) |= 2u;
    if ((*&self->_has & 1) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_24:
  *(v4 + 9) = self->_trueNegatives;
  *(v4 + 100) |= 4u;
  has = self->_has;
  if ((has & 2) != 0)
  {
    goto LABEL_25;
  }

LABEL_6:
  if (has)
  {
LABEL_7:
    *(v4 + 7) = self->_falseNegatives;
    *(v4 + 100) |= 1u;
  }

LABEL_8:
  v12 = v4;
  if ([(AWDProactiveModelFittingEvalMetrics *)self positiveScoresCount])
  {
    [v12 clearPositiveScores];
    v6 = [(AWDProactiveModelFittingEvalMetrics *)self positiveScoresCount];
    if (v6)
    {
      v7 = v6;
      for (i = 0; i != v7; ++i)
      {
        [(AWDProactiveModelFittingEvalMetrics *)self positiveScoresAtIndex:i];
        [v12 addPositiveScores:?];
      }
    }
  }

  if ([(AWDProactiveModelFittingEvalMetrics *)self negativeScoresCount])
  {
    [v12 clearNegativeScores];
    v9 = [(AWDProactiveModelFittingEvalMetrics *)self negativeScoresCount];
    if (v9)
    {
      v10 = v9;
      for (j = 0; j != v10; ++j)
      {
        [(AWDProactiveModelFittingEvalMetrics *)self negativeScoresAtIndex:j];
        [v12 addNegativeScores:?];
      }
    }
  }

  if ((*&self->_has & 0x40) != 0)
  {
    *(v12 + 24) = LODWORD(self->_secsToExecute);
    *(v12 + 100) |= 0x40u;
  }
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  if ((has & 0x20) != 0)
  {
    rmse = self->_rmse;
    PBDataWriterWriteFloatField();
    has = self->_has;
    if ((has & 0x10) == 0)
    {
LABEL_3:
      if ((has & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_23;
    }
  }

  else if ((*&self->_has & 0x10) == 0)
  {
    goto LABEL_3;
  }

  f1 = self->_f1;
  PBDataWriterWriteFloatField();
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_4:
    if ((has & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_24;
  }

LABEL_23:
  truePositives = self->_truePositives;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_5:
    if ((has & 2) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_25;
  }

LABEL_24:
  trueNegatives = self->_trueNegatives;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_6:
    if ((has & 1) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_25:
  falsePositives = self->_falsePositives;
  PBDataWriterWriteUint64Field();
  if (*&self->_has)
  {
LABEL_7:
    falseNegatives = self->_falseNegatives;
    PBDataWriterWriteUint64Field();
  }

LABEL_8:
  if (self->_positiveScores.count)
  {
    PBDataWriterPlaceMark();
    if (self->_positiveScores.count)
    {
      v7 = 0;
      do
      {
        v8 = self->_positiveScores.list[v7];
        PBDataWriterWriteFloatField();
        ++v7;
      }

      while (v7 < self->_positiveScores.count);
    }

    PBDataWriterRecallMark();
  }

  if (self->_negativeScores.count)
  {
    PBDataWriterPlaceMark();
    if (self->_negativeScores.count)
    {
      v9 = 0;
      do
      {
        v10 = self->_negativeScores.list[v9];
        PBDataWriterWriteFloatField();
        ++v9;
      }

      while (v9 < self->_negativeScores.count);
    }

    PBDataWriterRecallMark();
  }

  if ((*&self->_has & 0x40) != 0)
  {
    secsToExecute = self->_secsToExecute;
    PBDataWriterWriteFloatField();
  }
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  has = self->_has;
  if ((has & 0x20) != 0)
  {
    *&v4 = self->_rmse;
    v12 = [MEMORY[0x277CCABB0] numberWithFloat:v4];
    [v3 setObject:v12 forKey:@"rmse"];

    has = self->_has;
    if ((has & 0x10) == 0)
    {
LABEL_3:
      if ((has & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_15;
    }
  }

  else if ((*&self->_has & 0x10) == 0)
  {
    goto LABEL_3;
  }

  *&v4 = self->_f1;
  v13 = [MEMORY[0x277CCABB0] numberWithFloat:v4];
  [v3 setObject:v13 forKey:@"f1"];

  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_4:
    if ((has & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_16;
  }

LABEL_15:
  v14 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_truePositives];
  [v3 setObject:v14 forKey:@"truePositives"];

  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_5:
    if ((has & 2) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_17;
  }

LABEL_16:
  v15 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_trueNegatives];
  [v3 setObject:v15 forKey:@"trueNegatives"];

  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_6:
    if ((has & 1) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_17:
  v16 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_falsePositives];
  [v3 setObject:v16 forKey:@"falsePositives"];

  if (*&self->_has)
  {
LABEL_7:
    v6 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_falseNegatives];
    [v3 setObject:v6 forKey:@"falseNegatives"];
  }

LABEL_8:
  v7 = PBRepeatedFloatNSArray();
  [v3 setObject:v7 forKey:@"positiveScores"];

  v8 = PBRepeatedFloatNSArray();
  [v3 setObject:v8 forKey:@"negativeScores"];

  if ((*&self->_has & 0x40) != 0)
  {
    *&v9 = self->_secsToExecute;
    v10 = [MEMORY[0x277CCABB0] numberWithFloat:v9];
    [v3 setObject:v10 forKey:@"secsToExecute"];
  }

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = AWDProactiveModelFittingEvalMetrics;
  v4 = [(AWDProactiveModelFittingEvalMetrics *)&v8 description];
  v5 = [(AWDProactiveModelFittingEvalMetrics *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (void)setHasSecsToExecute:(BOOL)a3
{
  if (a3)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xBF | v3;
}

- (float)negativeScoresAtIndex:(unint64_t)a3
{
  p_negativeScores = &self->_negativeScores;
  count = self->_negativeScores.count;
  if (count <= a3)
  {
    v6 = MEMORY[0x277CBEAD8];
    v7 = *MEMORY[0x277CBE730];
    v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"idx (%tu) is out of range (%tu)", a3, count];
    v9 = [v6 exceptionWithName:v7 reason:v8 userInfo:0];
    [v9 raise];
  }

  return p_negativeScores->list[a3];
}

- (float)positiveScoresAtIndex:(unint64_t)a3
{
  p_positiveScores = &self->_positiveScores;
  count = self->_positiveScores.count;
  if (count <= a3)
  {
    v6 = MEMORY[0x277CBEAD8];
    v7 = *MEMORY[0x277CBE730];
    v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"idx (%tu) is out of range (%tu)", a3, count];
    v9 = [v6 exceptionWithName:v7 reason:v8 userInfo:0];
    [v9 raise];
  }

  return p_positiveScores->list[a3];
}

- (void)setHasFalsePositives:(BOOL)a3
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

- (void)setHasTrueNegatives:(BOOL)a3
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

- (void)setHasTruePositives:(BOOL)a3
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

- (void)setHasF1:(BOOL)a3
{
  if (a3)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEF | v3;
}

- (void)setHasRmse:(BOOL)a3
{
  if (a3)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xDF | v3;
}

- (void)dealloc
{
  PBRepeatedFloatClear();
  PBRepeatedFloatClear();
  v3.receiver = self;
  v3.super_class = AWDProactiveModelFittingEvalMetrics;
  [(AWDProactiveModelFittingEvalMetrics *)&v3 dealloc];
}

- (id)toDictionary
{
  v27[8] = *MEMORY[0x277D85DE8];
  v3 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[AWDProactiveModelFittingEvalMetrics positiveScoresCount](self, "positiveScoresCount")}];
  if ([(AWDProactiveModelFittingEvalMetrics *)self positiveScoresCount])
  {
    v4 = 0;
    do
    {
      v5 = objc_autoreleasePoolPush();
      v6 = objc_alloc(MEMORY[0x277CCABB0]);
      LODWORD(v7) = [(AWDProactiveModelFittingEvalMetrics *)self positiveScores][4 * v4];
      v8 = [v6 initWithFloat:v7];
      [v3 addObject:v8];

      objc_autoreleasePoolPop(v5);
      ++v4;
    }

    while ([(AWDProactiveModelFittingEvalMetrics *)self positiveScoresCount]> v4);
  }

  v9 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[AWDProactiveModelFittingEvalMetrics negativeScoresCount](self, "negativeScoresCount")}];
  if ([(AWDProactiveModelFittingEvalMetrics *)self negativeScoresCount])
  {
    v10 = 0;
    do
    {
      v11 = objc_autoreleasePoolPush();
      v12 = objc_alloc(MEMORY[0x277CCABB0]);
      LODWORD(v13) = [(AWDProactiveModelFittingEvalMetrics *)self negativeScores][4 * v10];
      v14 = [v12 initWithFloat:v13];
      [v9 addObject:v14];

      objc_autoreleasePoolPop(v11);
      ++v10;
    }

    while ([(AWDProactiveModelFittingEvalMetrics *)self negativeScoresCount]> v10);
  }

  v26[0] = @"rmse";
  v15 = MEMORY[0x277CCABB0];
  [(AWDProactiveModelFittingEvalMetrics *)self rmse];
  v16 = [v15 numberWithFloat:?];
  v27[0] = v16;
  v26[1] = @"f1";
  v17 = MEMORY[0x277CCABB0];
  [(AWDProactiveModelFittingEvalMetrics *)self f1];
  v18 = [v17 numberWithFloat:?];
  v27[1] = v18;
  v26[2] = @"truePositives";
  v19 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{-[AWDProactiveModelFittingEvalMetrics truePositives](self, "truePositives")}];
  v27[2] = v19;
  v26[3] = @"trueNegatives";
  v20 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{-[AWDProactiveModelFittingEvalMetrics trueNegatives](self, "trueNegatives")}];
  v27[3] = v20;
  v26[4] = @"falsePositives";
  v21 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{-[AWDProactiveModelFittingEvalMetrics falsePositives](self, "falsePositives")}];
  v27[4] = v21;
  v26[5] = @"falseNegatives";
  v22 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{-[AWDProactiveModelFittingEvalMetrics falseNegatives](self, "falseNegatives")}];
  v27[5] = v22;
  v27[6] = v3;
  v26[6] = @"positiveScores";
  v26[7] = @"negativeScores";
  v27[7] = v9;
  v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v27 forKeys:v26 count:8];

  v24 = *MEMORY[0x277D85DE8];

  return v23;
}

@end