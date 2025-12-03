@interface AWDProactiveModelFittingQuantizedSparseMatrix
+ (id)quantizedSparseMatrixFromSparseMatrix:(id)matrix numberOfBuckets:(unint64_t)buckets;
- (BOOL)isEqual:(id)equal;
- (float)originalValueAtRow:(unint64_t)row column:(unint64_t)column;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (unsigned)columnIndicesAtIndex:(unint64_t)index;
- (unsigned)rowIndicesAtIndex:(unint64_t)index;
- (unsigned)valuesAtIndex:(unint64_t)index;
- (void)copyTo:(id)to;
- (void)dealloc;
- (void)mergeFrom:(id)from;
- (void)setHasColumnLength:(BOOL)length;
- (void)setHasMinValue:(BOOL)value;
- (void)setHasRowLength:(BOOL)length;
- (void)writeTo:(id)to;
@end

@implementation AWDProactiveModelFittingQuantizedSparseMatrix

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  columnIndicesCount = [fromCopy columnIndicesCount];
  if (columnIndicesCount)
  {
    v5 = columnIndicesCount;
    for (i = 0; i != v5; ++i)
    {
      -[AWDProactiveModelFittingQuantizedSparseMatrix addColumnIndices:](self, "addColumnIndices:", [fromCopy columnIndicesAtIndex:i]);
    }
  }

  if ((*(fromCopy + 96) & 2) != 0)
  {
    self->_columnLength = *(fromCopy + 21);
    *&self->_has |= 2u;
  }

  rowIndicesCount = [fromCopy rowIndicesCount];
  if (rowIndicesCount)
  {
    v8 = rowIndicesCount;
    for (j = 0; j != v8; ++j)
    {
      -[AWDProactiveModelFittingQuantizedSparseMatrix addRowIndices:](self, "addRowIndices:", [fromCopy rowIndicesAtIndex:j]);
    }
  }

  if ((*(fromCopy + 96) & 8) != 0)
  {
    self->_rowLength = *(fromCopy + 23);
    *&self->_has |= 8u;
  }

  valuesCount = [fromCopy valuesCount];
  if (valuesCount)
  {
    v11 = valuesCount;
    for (k = 0; k != v11; ++k)
    {
      -[AWDProactiveModelFittingQuantizedSparseMatrix addValues:](self, "addValues:", [fromCopy valuesAtIndex:k]);
    }
  }

  v13 = *(fromCopy + 96);
  if ((v13 & 4) != 0)
  {
    self->_minValue = *(fromCopy + 22);
    *&self->_has |= 4u;
    v13 = *(fromCopy + 96);
  }

  if (v13)
  {
    self->_bucketSize = *(fromCopy + 20);
    *&self->_has |= 1u;
  }
}

- (unint64_t)hash
{
  v3 = PBRepeatedUInt32Hash();
  if ((*&self->_has & 2) != 0)
  {
    v4 = 2654435761 * self->_columnLength;
  }

  else
  {
    v4 = 0;
  }

  v5 = PBRepeatedUInt32Hash();
  if ((*&self->_has & 8) != 0)
  {
    v6 = 2654435761 * self->_rowLength;
  }

  else
  {
    v6 = 0;
  }

  v7 = PBRepeatedUInt32Hash();
  if ((*&self->_has & 4) != 0)
  {
    minValue = self->_minValue;
    if (minValue >= 0.0)
    {
      v12 = minValue;
    }

    else
    {
      v12 = -minValue;
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

  if (*&self->_has)
  {
    bucketSize = self->_bucketSize;
    if (bucketSize >= 0.0)
    {
      v17 = bucketSize;
    }

    else
    {
      v17 = -bucketSize;
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
  if (![equalCopy isMemberOfClass:objc_opt_class()] || !PBRepeatedUInt32IsEqual())
  {
    goto LABEL_24;
  }

  v5 = *(equalCopy + 96);
  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 96) & 2) == 0 || self->_columnLength != *(equalCopy + 21))
    {
      goto LABEL_24;
    }
  }

  else if ((*(equalCopy + 96) & 2) != 0)
  {
    goto LABEL_24;
  }

  if (!PBRepeatedUInt32IsEqual())
  {
    goto LABEL_24;
  }

  v6 = *(equalCopy + 96);
  if ((*&self->_has & 8) != 0)
  {
    if ((*(equalCopy + 96) & 8) == 0 || self->_rowLength != *(equalCopy + 23))
    {
      goto LABEL_24;
    }
  }

  else if ((*(equalCopy + 96) & 8) != 0)
  {
    goto LABEL_24;
  }

  if (!PBRepeatedUInt32IsEqual())
  {
LABEL_24:
    v7 = 0;
    goto LABEL_25;
  }

  if ((*&self->_has & 4) != 0)
  {
    if ((*(equalCopy + 96) & 4) == 0 || self->_minValue != *(equalCopy + 22))
    {
      goto LABEL_24;
    }
  }

  else if ((*(equalCopy + 96) & 4) != 0)
  {
    goto LABEL_24;
  }

  v7 = (*(equalCopy + 96) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(equalCopy + 96) & 1) == 0 || self->_bucketSize != *(equalCopy + 20))
    {
      goto LABEL_24;
    }

    v7 = 1;
  }

LABEL_25:

  return v7;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  PBRepeatedUInt32Copy();
  if ((*&self->_has & 2) != 0)
  {
    *(v4 + 84) = self->_columnLength;
    *(v4 + 96) |= 2u;
  }

  PBRepeatedUInt32Copy();
  if ((*&self->_has & 8) != 0)
  {
    *(v4 + 92) = self->_rowLength;
    *(v4 + 96) |= 8u;
  }

  PBRepeatedUInt32Copy();
  has = self->_has;
  if ((has & 4) != 0)
  {
    *(v4 + 88) = self->_minValue;
    *(v4 + 96) |= 4u;
    has = self->_has;
  }

  if (has)
  {
    *(v4 + 80) = self->_bucketSize;
    *(v4 + 96) |= 1u;
  }

  return v4;
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if ([(AWDProactiveModelFittingQuantizedSparseMatrix *)self columnIndicesCount])
  {
    [toCopy clearColumnIndices];
    columnIndicesCount = [(AWDProactiveModelFittingQuantizedSparseMatrix *)self columnIndicesCount];
    if (columnIndicesCount)
    {
      v5 = columnIndicesCount;
      for (i = 0; i != v5; ++i)
      {
        [toCopy addColumnIndices:{-[AWDProactiveModelFittingQuantizedSparseMatrix columnIndicesAtIndex:](self, "columnIndicesAtIndex:", i)}];
      }
    }
  }

  if ((*&self->_has & 2) != 0)
  {
    *(toCopy + 21) = self->_columnLength;
    *(toCopy + 96) |= 2u;
  }

  if ([(AWDProactiveModelFittingQuantizedSparseMatrix *)self rowIndicesCount])
  {
    [toCopy clearRowIndices];
    rowIndicesCount = [(AWDProactiveModelFittingQuantizedSparseMatrix *)self rowIndicesCount];
    if (rowIndicesCount)
    {
      v8 = rowIndicesCount;
      for (j = 0; j != v8; ++j)
      {
        [toCopy addRowIndices:{-[AWDProactiveModelFittingQuantizedSparseMatrix rowIndicesAtIndex:](self, "rowIndicesAtIndex:", j)}];
      }
    }
  }

  if ((*&self->_has & 8) != 0)
  {
    *(toCopy + 23) = self->_rowLength;
    *(toCopy + 96) |= 8u;
  }

  if ([(AWDProactiveModelFittingQuantizedSparseMatrix *)self valuesCount])
  {
    [toCopy clearValues];
    valuesCount = [(AWDProactiveModelFittingQuantizedSparseMatrix *)self valuesCount];
    if (valuesCount)
    {
      v11 = valuesCount;
      for (k = 0; k != v11; ++k)
      {
        [toCopy addValues:{-[AWDProactiveModelFittingQuantizedSparseMatrix valuesAtIndex:](self, "valuesAtIndex:", k)}];
      }
    }
  }

  has = self->_has;
  if ((has & 4) != 0)
  {
    *(toCopy + 22) = LODWORD(self->_minValue);
    *(toCopy + 96) |= 4u;
    has = self->_has;
  }

  if (has)
  {
    *(toCopy + 20) = LODWORD(self->_bucketSize);
    *(toCopy + 96) |= 1u;
  }
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if (self->_columnIndices.count)
  {
    PBDataWriterPlaceMark();
    if (self->_columnIndices.count)
    {
      v5 = 0;
      do
      {
        v6 = self->_columnIndices.list[v5];
        PBDataWriterWriteUint32Field();
        ++v5;
      }

      while (v5 < self->_columnIndices.count);
    }

    PBDataWriterRecallMark();
  }

  if ((*&self->_has & 2) != 0)
  {
    columnLength = self->_columnLength;
    PBDataWriterWriteUint32Field();
  }

  if (self->_rowIndices.count)
  {
    PBDataWriterPlaceMark();
    if (self->_rowIndices.count)
    {
      v8 = 0;
      do
      {
        v9 = self->_rowIndices.list[v8];
        PBDataWriterWriteUint32Field();
        ++v8;
      }

      while (v8 < self->_rowIndices.count);
    }

    PBDataWriterRecallMark();
  }

  if ((*&self->_has & 8) != 0)
  {
    rowLength = self->_rowLength;
    PBDataWriterWriteUint32Field();
  }

  if (self->_values.count)
  {
    PBDataWriterPlaceMark();
    if (self->_values.count)
    {
      v11 = 0;
      do
      {
        v12 = self->_values.list[v11];
        PBDataWriterWriteUint32Field();
        ++v11;
      }

      while (v11 < self->_values.count);
    }

    PBDataWriterRecallMark();
  }

  has = self->_has;
  if ((has & 4) != 0)
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
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v4 = PBRepeatedUInt32NSArray();
  [dictionary setObject:v4 forKey:@"columnIndices"];

  if ((*&self->_has & 2) != 0)
  {
    v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_columnLength];
    [dictionary setObject:v5 forKey:@"columnLength"];
  }

  v6 = PBRepeatedUInt32NSArray();
  [dictionary setObject:v6 forKey:@"rowIndices"];

  if ((*&self->_has & 8) != 0)
  {
    v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_rowLength];
    [dictionary setObject:v7 forKey:@"rowLength"];
  }

  v8 = PBRepeatedUInt32NSArray();
  [dictionary setObject:v8 forKey:@"values"];

  has = self->_has;
  if ((has & 4) != 0)
  {
    *&v9 = self->_minValue;
    v11 = [MEMORY[0x277CCABB0] numberWithFloat:v9];
    [dictionary setObject:v11 forKey:@"minValue"];

    has = self->_has;
  }

  if (has)
  {
    *&v9 = self->_bucketSize;
    v12 = [MEMORY[0x277CCABB0] numberWithFloat:v9];
    [dictionary setObject:v12 forKey:@"bucketSize"];
  }

  return dictionary;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = AWDProactiveModelFittingQuantizedSparseMatrix;
  v4 = [(AWDProactiveModelFittingQuantizedSparseMatrix *)&v8 description];
  dictionaryRepresentation = [(AWDProactiveModelFittingQuantizedSparseMatrix *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (void)setHasMinValue:(BOOL)value
{
  if (value)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (unsigned)valuesAtIndex:(unint64_t)index
{
  p_values = &self->_values;
  count = self->_values.count;
  if (count <= index)
  {
    v6 = MEMORY[0x277CBEAD8];
    v7 = *MEMORY[0x277CBE730];
    v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"idx (%tu) is out of range (%tu)", index, count];
    v9 = [v6 exceptionWithName:v7 reason:v8 userInfo:0];
    [v9 raise];
  }

  return p_values->list[index];
}

- (void)setHasRowLength:(BOOL)length
{
  if (length)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (unsigned)rowIndicesAtIndex:(unint64_t)index
{
  p_rowIndices = &self->_rowIndices;
  count = self->_rowIndices.count;
  if (count <= index)
  {
    v6 = MEMORY[0x277CBEAD8];
    v7 = *MEMORY[0x277CBE730];
    v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"idx (%tu) is out of range (%tu)", index, count];
    v9 = [v6 exceptionWithName:v7 reason:v8 userInfo:0];
    [v9 raise];
  }

  return p_rowIndices->list[index];
}

- (void)setHasColumnLength:(BOOL)length
{
  if (length)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (unsigned)columnIndicesAtIndex:(unint64_t)index
{
  p_columnIndices = &self->_columnIndices;
  count = self->_columnIndices.count;
  if (count <= index)
  {
    v6 = MEMORY[0x277CBEAD8];
    v7 = *MEMORY[0x277CBE730];
    v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"idx (%tu) is out of range (%tu)", index, count];
    v9 = [v6 exceptionWithName:v7 reason:v8 userInfo:0];
    [v9 raise];
  }

  return p_columnIndices->list[index];
}

- (void)dealloc
{
  PBRepeatedUInt32Clear();
  PBRepeatedUInt32Clear();
  PBRepeatedUInt32Clear();
  v3.receiver = self;
  v3.super_class = AWDProactiveModelFittingQuantizedSparseMatrix;
  [(AWDProactiveModelFittingQuantizedSparseMatrix *)&v3 dealloc];
}

- (float)originalValueAtRow:(unint64_t)row column:(unint64_t)column
{
  v7 = 0.0;
  if ([(AWDProactiveModelFittingQuantizedSparseMatrix *)self valuesCount])
  {
    v8 = 0;
    while ([(AWDProactiveModelFittingQuantizedSparseMatrix *)self rowIndices][4 * v8] != row || [(AWDProactiveModelFittingQuantizedSparseMatrix *)self columnIndices][4 * v8] != column)
    {
      if (++v8 >= [(AWDProactiveModelFittingQuantizedSparseMatrix *)self valuesCount])
      {
        return v7;
      }
    }

    [(AWDProactiveModelFittingQuantizedSparseMatrix *)self minValue];
    v10 = v9;
    v11 = [(AWDProactiveModelFittingQuantizedSparseMatrix *)self values][4 * v8];
    [(AWDProactiveModelFittingQuantizedSparseMatrix *)self bucketSize];
    v13 = (v10 + (v11 * v12));
    [(AWDProactiveModelFittingQuantizedSparseMatrix *)self bucketSize];
    return v14 * 0.5 + v13;
  }

  return v7;
}

+ (id)quantizedSparseMatrixFromSparseMatrix:(id)matrix numberOfBuckets:(unint64_t)buckets
{
  matrixCopy = matrix;
  if ([matrixCopy numberOfRows] >> 32)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"AWDProactiveModelFittingQuantizedSparseMatrix+PML.m" lineNumber:16 description:{@"Too big matrix (rows: %tu)", objc_msgSend(matrixCopy, "numberOfRows")}];
  }

  if ([matrixCopy numberOfColumns] >> 32)
  {
    currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"AWDProactiveModelFittingQuantizedSparseMatrix+PML.m" lineNumber:17 description:{@"Too big matrix (cols: %tu)", objc_msgSend(matrixCopy, "numberOfColumns")}];
  }

  v8 = objc_opt_new();
  [matrixCopy minValue];
  v10 = v9;
  [matrixCopy maxValue];
  v19[1] = 3221225472;
  v19[0] = MEMORY[0x277D85DD0];
  v19[2] = __108__AWDProactiveModelFittingQuantizedSparseMatrix_PML__quantizedSparseMatrixFromSparseMatrix_numberOfBuckets___block_invoke;
  v19[3] = &unk_279AC01F0;
  v12 = (v11 - v10) / buckets;
  v21 = v12;
  v22 = v10;
  v13 = v8;
  v20 = v13;
  [matrixCopy enumerateNonZeroValuesWithBlock:v19];
  *&v14 = v12;
  [v13 setBucketSize:v14];
  *&v15 = v10;
  [v13 setMinValue:v15];
  [v13 setColumnLength:{objc_msgSend(matrixCopy, "numberOfColumns")}];
  [v13 setRowLength:{objc_msgSend(matrixCopy, "numberOfRows")}];

  return v13;
}

uint64_t __108__AWDProactiveModelFittingQuantizedSparseMatrix_PML__quantizedSparseMatrixFromSparseMatrix_numberOfBuckets___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, float a4)
{
  v7 = *(a1 + 40);
  if (v7 == 0.0)
  {
    v4 = 0;
  }

  else
  {
    LODWORD(v4) = vcvtms_u32_f32((a4 - *(a1 + 44)) / v7);
  }

  [*(a1 + 32) addRowIndices:a2];
  [*(a1 + 32) addColumnIndices:a3];
  v8 = *(a1 + 32);

  return [v8 addValues:v4];
}

@end