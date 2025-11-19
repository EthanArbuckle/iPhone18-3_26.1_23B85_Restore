@interface AWDProactiveModelFittingQuantizedDenseVector
+ (id)quantizedDenseVectorFromDenseVector:(id)a3 numberOfBuckets:(unint64_t)a4;
- (BOOL)isEqual:(id)a3;
- (float)originalValueAtIndex:(unint64_t)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (unsigned)valuesAtIndex:(unint64_t)a3;
- (void)copyTo:(id)a3;
- (void)dealloc;
- (void)mergeFrom:(id)a3;
- (void)setHasMinValue:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation AWDProactiveModelFittingQuantizedDenseVector

- (float)originalValueAtIndex:(unint64_t)a3
{
  [(AWDProactiveModelFittingQuantizedDenseVector *)self minValue];
  v6 = v5;
  v7 = [(AWDProactiveModelFittingQuantizedDenseVector *)self values][4 * a3];
  [(AWDProactiveModelFittingQuantizedDenseVector *)self bucketSize];
  v9 = (v6 + (v7 * v8));
  [(AWDProactiveModelFittingQuantizedDenseVector *)self bucketSize];
  return v10 * 0.5 + v9;
}

+ (id)quantizedDenseVectorFromDenseVector:(id)a3 numberOfBuckets:(unint64_t)a4
{
  v7 = a3;
  if ([v7 count] >> 32)
  {
    v17 = [MEMORY[0x277CCA890] currentHandler];
    [v17 handleFailureInMethod:a2 object:a1 file:@"AWDProactiveModelFittingQuantizedDenseVector+PML.m" lineNumber:17 description:{@"Too big vector (length: %tu)", objc_msgSend(v7, "count")}];
  }

  v8 = objc_opt_new();
  [v7 minValue];
  v10 = v9;
  [v7 maxValue];
  v18[1] = 3221225472;
  v18[0] = MEMORY[0x277D85DD0];
  v18[2] = __105__AWDProactiveModelFittingQuantizedDenseVector_PML__quantizedDenseVectorFromDenseVector_numberOfBuckets___block_invoke;
  v18[3] = &unk_279AC0678;
  v12 = (v11 - v10) / a4;
  v20 = v12;
  v21 = v10;
  v13 = v8;
  v19 = v13;
  [v7 enumerateValuesWithBlock:v18];
  *&v14 = v12;
  [v13 setBucketSize:v14];
  *&v15 = v10;
  [v13 setMinValue:v15];

  return v13;
}

uint64_t __105__AWDProactiveModelFittingQuantizedDenseVector_PML__quantizedDenseVectorFromDenseVector_numberOfBuckets___block_invoke(uint64_t a1, float a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 40);
  if (v4 == 0.0)
  {
    a4 = 0;
  }

  else
  {
    LODWORD(a4) = vcvtms_u32_f32((a2 - *(a1 + 44)) / v4);
  }

  return [*(a1 + 32) addValues:a4];
}

- (void)mergeFrom:(id)a3
{
  v8 = a3;
  v4 = [v8 valuesCount];
  if (v4)
  {
    v5 = v4;
    for (i = 0; i != v5; ++i)
    {
      -[AWDProactiveModelFittingQuantizedDenseVector addValues:](self, "addValues:", [v8 valuesAtIndex:i]);
    }
  }

  v7 = *(v8 + 40);
  if ((v7 & 2) != 0)
  {
    self->_minValue = v8[9];
    *&self->_has |= 2u;
    v7 = *(v8 + 40);
  }

  if (v7)
  {
    self->_bucketSize = v8[8];
    *&self->_has |= 1u;
  }
}

- (unint64_t)hash
{
  v3 = PBRepeatedUInt32Hash();
  if ((*&self->_has & 2) != 0)
  {
    minValue = self->_minValue;
    if (minValue >= 0.0)
    {
      v8 = minValue;
    }

    else
    {
      v8 = -minValue;
    }

    *v4.i64 = floor(v8 + 0.5);
    v9 = (v8 - *v4.i64) * 1.84467441e19;
    *v5.i64 = *v4.i64 - trunc(*v4.i64 * 5.42101086e-20) * 1.84467441e19;
    v10.f64[0] = NAN;
    v10.f64[1] = NAN;
    v4 = vbslq_s8(vnegq_f64(v10), v5, v4);
    v6 = 2654435761u * *v4.i64;
    if (v9 >= 0.0)
    {
      if (v9 > 0.0)
      {
        v6 += v9;
      }
    }

    else
    {
      v6 -= fabs(v9);
    }
  }

  else
  {
    v6 = 0;
  }

  if (*&self->_has)
  {
    bucketSize = self->_bucketSize;
    if (bucketSize >= 0.0)
    {
      v13 = bucketSize;
    }

    else
    {
      v13 = -bucketSize;
    }

    *v4.i64 = floor(v13 + 0.5);
    v14 = (v13 - *v4.i64) * 1.84467441e19;
    *v5.i64 = *v4.i64 - trunc(*v4.i64 * 5.42101086e-20) * 1.84467441e19;
    v15.f64[0] = NAN;
    v15.f64[1] = NAN;
    v11 = 2654435761u * *vbslq_s8(vnegq_f64(v15), v5, v4).i64;
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

  return v6 ^ v3 ^ v11;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()] || !PBRepeatedUInt32IsEqual())
  {
    goto LABEL_12;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 40) & 2) == 0 || self->_minValue != *(v4 + 9))
    {
      goto LABEL_12;
    }
  }

  else if ((*(v4 + 40) & 2) != 0)
  {
LABEL_12:
    v5 = 0;
    goto LABEL_13;
  }

  v5 = (*(v4 + 40) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(v4 + 40) & 1) == 0 || self->_bucketSize != *(v4 + 8))
    {
      goto LABEL_12;
    }

    v5 = 1;
  }

LABEL_13:

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  PBRepeatedUInt32Copy();
  has = self->_has;
  if ((has & 2) != 0)
  {
    *(v4 + 36) = self->_minValue;
    *(v4 + 40) |= 2u;
    has = self->_has;
  }

  if (has)
  {
    *(v4 + 32) = self->_bucketSize;
    *(v4 + 40) |= 1u;
  }

  return v4;
}

- (void)copyTo:(id)a3
{
  v8 = a3;
  if ([(AWDProactiveModelFittingQuantizedDenseVector *)self valuesCount])
  {
    [v8 clearValues];
    v4 = [(AWDProactiveModelFittingQuantizedDenseVector *)self valuesCount];
    if (v4)
    {
      v5 = v4;
      for (i = 0; i != v5; ++i)
      {
        [v8 addValues:{-[AWDProactiveModelFittingQuantizedDenseVector valuesAtIndex:](self, "valuesAtIndex:", i)}];
      }
    }
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    *(v8 + 9) = LODWORD(self->_minValue);
    *(v8 + 40) |= 2u;
    has = self->_has;
  }

  if (has)
  {
    *(v8 + 8) = LODWORD(self->_bucketSize);
    *(v8 + 40) |= 1u;
  }
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  if (self->_values.count)
  {
    PBDataWriterPlaceMark();
    if (self->_values.count)
    {
      v5 = 0;
      do
      {
        v6 = self->_values.list[v5];
        PBDataWriterWriteUint32Field();
        ++v5;
      }

      while (v5 < self->_values.count);
    }

    PBDataWriterRecallMark();
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    minValue = self->_minValue;
    PBDataWriterWriteFloatField();
    has = self->_has;
  }

  if (has)
  {
    bucketSize = self->_bucketSize;
    PBDataWriterWriteFloatField();
  }
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = PBRepeatedUInt32NSArray();
  [v3 setObject:v4 forKey:@"values"];

  has = self->_has;
  if ((has & 2) != 0)
  {
    *&v5 = self->_minValue;
    v7 = [MEMORY[0x277CCABB0] numberWithFloat:v5];
    [v3 setObject:v7 forKey:@"minValue"];

    has = self->_has;
  }

  if (has)
  {
    *&v5 = self->_bucketSize;
    v8 = [MEMORY[0x277CCABB0] numberWithFloat:v5];
    [v3 setObject:v8 forKey:@"bucketSize"];
  }

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = AWDProactiveModelFittingQuantizedDenseVector;
  v4 = [(AWDProactiveModelFittingQuantizedDenseVector *)&v8 description];
  v5 = [(AWDProactiveModelFittingQuantizedDenseVector *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (void)setHasMinValue:(BOOL)a3
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

- (void)dealloc
{
  PBRepeatedUInt32Clear();
  v3.receiver = self;
  v3.super_class = AWDProactiveModelFittingQuantizedDenseVector;
  [(AWDProactiveModelFittingQuantizedDenseVector *)&v3 dealloc];
}

@end