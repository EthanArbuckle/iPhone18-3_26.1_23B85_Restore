@interface AWDProactiveModelFittingQuantizedSparseVector
+ (id)quantizedSparseVectorFromDenseVector:(id)a3 numberOfBuckets:(unint64_t)a4;
+ (id)quantizedSparseVectorFromSparseVector:(id)a3 numberOfBuckets:(unint64_t)a4;
- (BOOL)isEqual:(id)a3;
- (float)originalValueAtIndex:(unint64_t)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (unsigned)indicesAtIndex:(unint64_t)a3;
- (unsigned)valuesAtIndex:(unint64_t)a3;
- (void)copyTo:(id)a3;
- (void)dealloc;
- (void)mergeFrom:(id)a3;
- (void)setHasLength:(BOOL)a3;
- (void)setHasMinValue:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation AWDProactiveModelFittingQuantizedSparseVector

- (void)mergeFrom:(id)a3
{
  v11 = a3;
  v4 = [v11 indicesCount];
  if (v4)
  {
    v5 = v4;
    for (i = 0; i != v5; ++i)
    {
      -[AWDProactiveModelFittingQuantizedSparseVector addIndices:](self, "addIndices:", [v11 indicesAtIndex:i]);
    }
  }

  v7 = [v11 valuesCount];
  if (v7)
  {
    v8 = v7;
    for (j = 0; j != v8; ++j)
    {
      -[AWDProactiveModelFittingQuantizedSparseVector addValues:](self, "addValues:", [v11 valuesAtIndex:j]);
    }
  }

  v10 = *(v11 + 68);
  if ((v10 & 2) != 0)
  {
    self->_length = *(v11 + 15);
    *&self->_has |= 2u;
    v10 = *(v11 + 68);
    if ((v10 & 4) == 0)
    {
LABEL_9:
      if ((v10 & 1) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_10;
    }
  }

  else if ((*(v11 + 68) & 4) == 0)
  {
    goto LABEL_9;
  }

  self->_minValue = *(v11 + 16);
  *&self->_has |= 4u;
  if (*(v11 + 68))
  {
LABEL_10:
    self->_bucketSize = *(v11 + 14);
    *&self->_has |= 1u;
  }

LABEL_11:
}

- (unint64_t)hash
{
  v3 = PBRepeatedUInt32Hash();
  v4 = PBRepeatedUInt32Hash();
  if ((*&self->_has & 2) == 0)
  {
    v7 = 0;
    if ((*&self->_has & 4) != 0)
    {
      goto LABEL_3;
    }

LABEL_9:
    v12 = 0;
    goto LABEL_10;
  }

  v7 = 2654435761 * self->_length;
  if ((*&self->_has & 4) == 0)
  {
    goto LABEL_9;
  }

LABEL_3:
  minValue = self->_minValue;
  if (minValue >= 0.0)
  {
    v9 = minValue;
  }

  else
  {
    v9 = -minValue;
  }

  *v5.i64 = floor(v9 + 0.5);
  v10 = (v9 - *v5.i64) * 1.84467441e19;
  *v6.i64 = *v5.i64 - trunc(*v5.i64 * 5.42101086e-20) * 1.84467441e19;
  v11.f64[0] = NAN;
  v11.f64[1] = NAN;
  v5 = vbslq_s8(vnegq_f64(v11), v6, v5);
  v12 = 2654435761u * *v5.i64;
  if (v10 >= 0.0)
  {
    if (v10 > 0.0)
    {
      v12 += v10;
    }
  }

  else
  {
    v12 -= fabs(v10);
  }

LABEL_10:
  if (*&self->_has)
  {
    bucketSize = self->_bucketSize;
    if (bucketSize >= 0.0)
    {
      v15 = bucketSize;
    }

    else
    {
      v15 = -bucketSize;
    }

    *v5.i64 = floor(v15 + 0.5);
    v16 = (v15 - *v5.i64) * 1.84467441e19;
    *v6.i64 = *v5.i64 - trunc(*v5.i64 * 5.42101086e-20) * 1.84467441e19;
    v17.f64[0] = NAN;
    v17.f64[1] = NAN;
    v13 = 2654435761u * *vbslq_s8(vnegq_f64(v17), v6, v5).i64;
    if (v16 >= 0.0)
    {
      if (v16 > 0.0)
      {
        v13 += v16;
      }
    }

    else
    {
      v13 -= fabs(v16);
    }
  }

  else
  {
    v13 = 0;
  }

  return v4 ^ v3 ^ v7 ^ v12 ^ v13;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()] || !PBRepeatedUInt32IsEqual() || !PBRepeatedUInt32IsEqual())
  {
    goto LABEL_18;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 68) & 2) == 0 || self->_length != *(v4 + 15))
    {
      goto LABEL_18;
    }
  }

  else if ((*(v4 + 68) & 2) != 0)
  {
LABEL_18:
    v5 = 0;
    goto LABEL_19;
  }

  if ((*&self->_has & 4) != 0)
  {
    if ((*(v4 + 68) & 4) == 0 || self->_minValue != *(v4 + 16))
    {
      goto LABEL_18;
    }
  }

  else if ((*(v4 + 68) & 4) != 0)
  {
    goto LABEL_18;
  }

  v5 = (*(v4 + 68) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(v4 + 68) & 1) == 0 || self->_bucketSize != *(v4 + 14))
    {
      goto LABEL_18;
    }

    v5 = 1;
  }

LABEL_19:

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  PBRepeatedUInt32Copy();
  PBRepeatedUInt32Copy();
  has = self->_has;
  if ((has & 2) == 0)
  {
    if ((*&self->_has & 4) == 0)
    {
      goto LABEL_3;
    }

LABEL_7:
    *(v4 + 64) = self->_minValue;
    *(v4 + 68) |= 4u;
    if ((*&self->_has & 1) == 0)
    {
      return v4;
    }

    goto LABEL_4;
  }

  *(v4 + 60) = self->_length;
  *(v4 + 68) |= 2u;
  has = self->_has;
  if ((has & 4) != 0)
  {
    goto LABEL_7;
  }

LABEL_3:
  if (has)
  {
LABEL_4:
    *(v4 + 56) = self->_bucketSize;
    *(v4 + 68) |= 1u;
  }

  return v4;
}

- (void)copyTo:(id)a3
{
  v11 = a3;
  if ([(AWDProactiveModelFittingQuantizedSparseVector *)self indicesCount])
  {
    [v11 clearIndices];
    v4 = [(AWDProactiveModelFittingQuantizedSparseVector *)self indicesCount];
    if (v4)
    {
      v5 = v4;
      for (i = 0; i != v5; ++i)
      {
        [v11 addIndices:{-[AWDProactiveModelFittingQuantizedSparseVector indicesAtIndex:](self, "indicesAtIndex:", i)}];
      }
    }
  }

  if ([(AWDProactiveModelFittingQuantizedSparseVector *)self valuesCount])
  {
    [v11 clearValues];
    v7 = [(AWDProactiveModelFittingQuantizedSparseVector *)self valuesCount];
    if (v7)
    {
      v8 = v7;
      for (j = 0; j != v8; ++j)
      {
        [v11 addValues:{-[AWDProactiveModelFittingQuantizedSparseVector valuesAtIndex:](self, "valuesAtIndex:", j)}];
      }
    }
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    *(v11 + 15) = self->_length;
    *(v11 + 68) |= 2u;
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_11:
      if ((has & 1) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_12;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_11;
  }

  *(v11 + 16) = LODWORD(self->_minValue);
  *(v11 + 68) |= 4u;
  if (*&self->_has)
  {
LABEL_12:
    *(v11 + 14) = LODWORD(self->_bucketSize);
    *(v11 + 68) |= 1u;
  }

LABEL_13:
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  if (self->_indices.count)
  {
    PBDataWriterPlaceMark();
    if (self->_indices.count)
    {
      v5 = 0;
      do
      {
        v6 = self->_indices.list[v5];
        PBDataWriterWriteUint32Field();
        ++v5;
      }

      while (v5 < self->_indices.count);
    }

    PBDataWriterRecallMark();
  }

  if (self->_values.count)
  {
    PBDataWriterPlaceMark();
    if (self->_values.count)
    {
      v7 = 0;
      do
      {
        v8 = self->_values.list[v7];
        PBDataWriterWriteUint32Field();
        ++v7;
      }

      while (v7 < self->_values.count);
    }

    PBDataWriterRecallMark();
  }

  has = self->_has;
  if ((has & 2) == 0)
  {
    if ((*&self->_has & 4) == 0)
    {
      goto LABEL_13;
    }

LABEL_17:
    minValue = self->_minValue;
    PBDataWriterWriteFloatField();
    if ((*&self->_has & 1) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  length = self->_length;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 4) != 0)
  {
    goto LABEL_17;
  }

LABEL_13:
  if (has)
  {
LABEL_14:
    bucketSize = self->_bucketSize;
    PBDataWriterWriteFloatField();
  }

LABEL_15:
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = PBRepeatedUInt32NSArray();
  [v3 setObject:v4 forKey:@"indices"];

  v5 = PBRepeatedUInt32NSArray();
  [v3 setObject:v5 forKey:@"values"];

  has = self->_has;
  if ((has & 2) != 0)
  {
    v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_length];
    [v3 setObject:v10 forKey:@"length"];

    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_3:
      if ((has & 1) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_3;
  }

  *&v6 = self->_minValue;
  v11 = [MEMORY[0x277CCABB0] numberWithFloat:v6];
  [v3 setObject:v11 forKey:@"minValue"];

  if (*&self->_has)
  {
LABEL_4:
    *&v6 = self->_bucketSize;
    v8 = [MEMORY[0x277CCABB0] numberWithFloat:v6];
    [v3 setObject:v8 forKey:@"bucketSize"];
  }

LABEL_5:

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = AWDProactiveModelFittingQuantizedSparseVector;
  v4 = [(AWDProactiveModelFittingQuantizedSparseVector *)&v8 description];
  v5 = [(AWDProactiveModelFittingQuantizedSparseVector *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (void)setHasMinValue:(BOOL)a3
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

- (void)setHasLength:(BOOL)a3
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

- (unsigned)valuesAtIndex:(unint64_t)a3
{
  p_values = &self->_values;
  count = self->_values.count;
  if (count <= a3)
  {
    v6 = MEMORY[0x277CBEAD8];
    v7 = *MEMORY[0x277CBE730];
    v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"idx (%tu) is out of range (%tu)", a3, count];
    v9 = [v6 exceptionWithName:v7 reason:v8 userInfo:0];
    [v9 raise];
  }

  return p_values->list[a3];
}

- (unsigned)indicesAtIndex:(unint64_t)a3
{
  p_indices = &self->_indices;
  count = self->_indices.count;
  if (count <= a3)
  {
    v6 = MEMORY[0x277CBEAD8];
    v7 = *MEMORY[0x277CBE730];
    v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"idx (%tu) is out of range (%tu)", a3, count];
    v9 = [v6 exceptionWithName:v7 reason:v8 userInfo:0];
    [v9 raise];
  }

  return p_indices->list[a3];
}

- (void)dealloc
{
  PBRepeatedUInt32Clear();
  PBRepeatedUInt32Clear();
  v3.receiver = self;
  v3.super_class = AWDProactiveModelFittingQuantizedSparseVector;
  [(AWDProactiveModelFittingQuantizedSparseVector *)&v3 dealloc];
}

- (float)originalValueAtIndex:(unint64_t)a3
{
  v5 = 0.0;
  if ([(AWDProactiveModelFittingQuantizedSparseVector *)self valuesCount])
  {
    v6 = 0;
    while ([(AWDProactiveModelFittingQuantizedSparseVector *)self indices][4 * v6] != a3)
    {
      if (++v6 >= [(AWDProactiveModelFittingQuantizedSparseVector *)self valuesCount])
      {
        return v5;
      }
    }

    [(AWDProactiveModelFittingQuantizedSparseVector *)self minValue];
    v8 = v7;
    v9 = [(AWDProactiveModelFittingQuantizedSparseVector *)self values][4 * v6];
    [(AWDProactiveModelFittingQuantizedSparseVector *)self bucketSize];
    v11 = (v8 + (v9 * v10));
    [(AWDProactiveModelFittingQuantizedSparseVector *)self bucketSize];
    return v12 * 0.5 + v11;
  }

  return v5;
}

+ (id)quantizedSparseVectorFromSparseVector:(id)a3 numberOfBuckets:(unint64_t)a4
{
  v7 = a3;
  if ([v7 length] >> 32)
  {
    v17 = [MEMORY[0x277CCA890] currentHandler];
    [v17 handleFailureInMethod:a2 object:a1 file:@"AWDProactiveModelFittingQuantizedSparseVector+PML.m" lineNumber:23 description:{@"Too big vector (length: %tu)", objc_msgSend(v7, "length")}];
  }

  v8 = objc_opt_new();
  [v7 minValue];
  v10 = v9;
  [v7 maxValue];
  v18[1] = 3221225472;
  v18[0] = MEMORY[0x277D85DD0];
  v18[2] = __108__AWDProactiveModelFittingQuantizedSparseVector_PML__quantizedSparseVectorFromSparseVector_numberOfBuckets___block_invoke;
  v18[3] = &unk_279AC0678;
  v12 = (v11 - v10) / a4;
  v20 = v12;
  v21 = v10;
  v13 = v8;
  v19 = v13;
  [v7 enumerateNonZeroValuesWithBlock:v18];
  *&v14 = v12;
  [v13 setBucketSize:v14];
  *&v15 = v10;
  [v13 setMinValue:v15];
  [v13 setLength:{objc_msgSend(v7, "length")}];

  return v13;
}

uint64_t __108__AWDProactiveModelFittingQuantizedSparseVector_PML__quantizedSparseVectorFromSparseVector_numberOfBuckets___block_invoke(uint64_t a1, uint64_t a2, float a3)
{
  v5 = *(a1 + 40);
  if (v5 == 0.0)
  {
    v3 = 0;
  }

  else
  {
    LODWORD(v3) = vcvtms_u32_f32((a3 - *(a1 + 44)) / v5);
  }

  [*(a1 + 32) addIndices:a2];
  v6 = *(a1 + 32);

  return [v6 addValues:v3];
}

+ (id)quantizedSparseVectorFromDenseVector:(id)a3 numberOfBuckets:(unint64_t)a4
{
  v6 = [PMLSparseVector sparseVectorFromDense:a3];
  v7 = [a1 quantizedSparseVectorFromSparseVector:v6 numberOfBuckets:a4];

  return v7;
}

@end