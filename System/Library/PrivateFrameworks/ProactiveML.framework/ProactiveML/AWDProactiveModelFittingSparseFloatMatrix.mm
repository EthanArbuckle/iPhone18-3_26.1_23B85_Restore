@interface AWDProactiveModelFittingSparseFloatMatrix
+ (id)sparseFloatMatrixFromDenseMatrix:(id)matrix;
+ (id)sparseFloatMatrixFromSparseMatrix:(id)matrix;
- (BOOL)isEqual:(id)equal;
- (float)valueAtRow:(unint64_t)row column:(unint64_t)column;
- (float)valuesAtIndex:(unint64_t)index;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)columnIndicesAtIndex:(unint64_t)index;
- (unint64_t)hash;
- (unint64_t)rowIndicesAtIndex:(unint64_t)index;
- (void)copyTo:(id)to;
- (void)dealloc;
- (void)mergeFrom:(id)from;
- (void)setHasRowLength:(BOOL)length;
- (void)writeTo:(id)to;
@end

@implementation AWDProactiveModelFittingSparseFloatMatrix

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  columnIndicesCount = [fromCopy columnIndicesCount];
  if (columnIndicesCount)
  {
    v5 = columnIndicesCount;
    for (i = 0; i != v5; ++i)
    {
      -[AWDProactiveModelFittingSparseFloatMatrix addColumnIndices:](self, "addColumnIndices:", [fromCopy columnIndicesAtIndex:i]);
    }
  }

  if (fromCopy[12])
  {
    self->_columnLength = fromCopy[10];
    *&self->_has |= 1u;
  }

  rowIndicesCount = [fromCopy rowIndicesCount];
  if (rowIndicesCount)
  {
    v8 = rowIndicesCount;
    for (j = 0; j != v8; ++j)
    {
      -[AWDProactiveModelFittingSparseFloatMatrix addRowIndices:](self, "addRowIndices:", [fromCopy rowIndicesAtIndex:j]);
    }
  }

  if ((fromCopy[12] & 2) != 0)
  {
    self->_rowLength = fromCopy[11];
    *&self->_has |= 2u;
  }

  valuesCount = [fromCopy valuesCount];
  if (valuesCount)
  {
    v11 = valuesCount;
    for (k = 0; k != v11; ++k)
    {
      [fromCopy valuesAtIndex:k];
      [(AWDProactiveModelFittingSparseFloatMatrix *)self addValues:?];
    }
  }
}

- (unint64_t)hash
{
  v3 = PBRepeatedUInt64Hash();
  if (*&self->_has)
  {
    v4 = 2654435761u * self->_columnLength;
  }

  else
  {
    v4 = 0;
  }

  v5 = PBRepeatedUInt64Hash();
  if ((*&self->_has & 2) != 0)
  {
    v6 = 2654435761u * self->_rowLength;
  }

  else
  {
    v6 = 0;
  }

  return v4 ^ v3 ^ v5 ^ v6 ^ PBRepeatedFloatHash();
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()] || !PBRepeatedUInt64IsEqual())
  {
    goto LABEL_15;
  }

  v5 = *(equalCopy + 96);
  if (*&self->_has)
  {
    if ((*(equalCopy + 96) & 1) == 0 || self->_columnLength != *(equalCopy + 10))
    {
      goto LABEL_15;
    }
  }

  else if (*(equalCopy + 96))
  {
    goto LABEL_15;
  }

  if (!PBRepeatedUInt64IsEqual())
  {
LABEL_15:
    IsEqual = 0;
    goto LABEL_16;
  }

  v6 = *(equalCopy + 96);
  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 96) & 2) == 0 || self->_rowLength != *(equalCopy + 11))
    {
      goto LABEL_15;
    }
  }

  else if ((*(equalCopy + 96) & 2) != 0)
  {
    goto LABEL_15;
  }

  IsEqual = PBRepeatedFloatIsEqual();
LABEL_16:

  return IsEqual;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  PBRepeatedUInt64Copy();
  if (*&self->_has)
  {
    *(v4 + 80) = self->_columnLength;
    *(v4 + 96) |= 1u;
  }

  PBRepeatedUInt64Copy();
  if ((*&self->_has & 2) != 0)
  {
    *(v4 + 88) = self->_rowLength;
    *(v4 + 96) |= 2u;
  }

  PBRepeatedFloatCopy();
  return v4;
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if ([(AWDProactiveModelFittingSparseFloatMatrix *)self columnIndicesCount])
  {
    [toCopy clearColumnIndices];
    columnIndicesCount = [(AWDProactiveModelFittingSparseFloatMatrix *)self columnIndicesCount];
    if (columnIndicesCount)
    {
      v5 = columnIndicesCount;
      for (i = 0; i != v5; ++i)
      {
        [toCopy addColumnIndices:{-[AWDProactiveModelFittingSparseFloatMatrix columnIndicesAtIndex:](self, "columnIndicesAtIndex:", i)}];
      }
    }
  }

  if (*&self->_has)
  {
    *(toCopy + 10) = self->_columnLength;
    *(toCopy + 96) |= 1u;
  }

  if ([(AWDProactiveModelFittingSparseFloatMatrix *)self rowIndicesCount])
  {
    [toCopy clearRowIndices];
    rowIndicesCount = [(AWDProactiveModelFittingSparseFloatMatrix *)self rowIndicesCount];
    if (rowIndicesCount)
    {
      v8 = rowIndicesCount;
      for (j = 0; j != v8; ++j)
      {
        [toCopy addRowIndices:{-[AWDProactiveModelFittingSparseFloatMatrix rowIndicesAtIndex:](self, "rowIndicesAtIndex:", j)}];
      }
    }
  }

  if ((*&self->_has & 2) != 0)
  {
    *(toCopy + 11) = self->_rowLength;
    *(toCopy + 96) |= 2u;
  }

  if ([(AWDProactiveModelFittingSparseFloatMatrix *)self valuesCount])
  {
    [toCopy clearValues];
    valuesCount = [(AWDProactiveModelFittingSparseFloatMatrix *)self valuesCount];
    if (valuesCount)
    {
      v11 = valuesCount;
      for (k = 0; k != v11; ++k)
      {
        [(AWDProactiveModelFittingSparseFloatMatrix *)self valuesAtIndex:k];
        [toCopy addValues:?];
      }
    }
  }
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v14 = toCopy;
  if (self->_columnIndices.count)
  {
    v5 = 0;
    do
    {
      v6 = self->_columnIndices.list[v5];
      PBDataWriterWriteUint64Field();
      toCopy = v14;
      ++v5;
    }

    while (v5 < self->_columnIndices.count);
  }

  if (*&self->_has)
  {
    columnLength = self->_columnLength;
    PBDataWriterWriteUint64Field();
    toCopy = v14;
  }

  if (self->_rowIndices.count)
  {
    v8 = 0;
    do
    {
      v9 = self->_rowIndices.list[v8];
      PBDataWriterWriteUint64Field();
      toCopy = v14;
      ++v8;
    }

    while (v8 < self->_rowIndices.count);
  }

  if ((*&self->_has & 2) != 0)
  {
    rowLength = self->_rowLength;
    PBDataWriterWriteUint64Field();
    toCopy = v14;
  }

  p_values = &self->_values;
  if (p_values->count)
  {
    v12 = 0;
    do
    {
      v13 = p_values->list[v12];
      PBDataWriterWriteFloatField();
      toCopy = v14;
      ++v12;
    }

    while (v12 < p_values->count);
  }
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v4 = PBRepeatedUInt64NSArray();
  [dictionary setObject:v4 forKey:@"columnIndices"];

  if (*&self->_has)
  {
    v5 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_columnLength];
    [dictionary setObject:v5 forKey:@"columnLength"];
  }

  v6 = PBRepeatedUInt64NSArray();
  [dictionary setObject:v6 forKey:@"rowIndices"];

  if ((*&self->_has & 2) != 0)
  {
    v7 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_rowLength];
    [dictionary setObject:v7 forKey:@"rowLength"];
  }

  v8 = PBRepeatedFloatNSArray();
  [dictionary setObject:v8 forKey:@"values"];

  return dictionary;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = AWDProactiveModelFittingSparseFloatMatrix;
  v4 = [(AWDProactiveModelFittingSparseFloatMatrix *)&v8 description];
  dictionaryRepresentation = [(AWDProactiveModelFittingSparseFloatMatrix *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (float)valuesAtIndex:(unint64_t)index
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
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (unint64_t)rowIndicesAtIndex:(unint64_t)index
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

- (unint64_t)columnIndicesAtIndex:(unint64_t)index
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
  PBRepeatedUInt64Clear();
  PBRepeatedUInt64Clear();
  PBRepeatedFloatClear();
  v3.receiver = self;
  v3.super_class = AWDProactiveModelFittingSparseFloatMatrix;
  [(AWDProactiveModelFittingSparseFloatMatrix *)&v3 dealloc];
}

- (float)valueAtRow:(unint64_t)row column:(unint64_t)column
{
  v7 = 0.0;
  if ([(AWDProactiveModelFittingSparseFloatMatrix *)self valuesCount])
  {
    v8 = 0;
    while ([(AWDProactiveModelFittingSparseFloatMatrix *)self rowIndices][8 * v8] != row || [(AWDProactiveModelFittingSparseFloatMatrix *)self columnIndices][8 * v8] != column)
    {
      if (++v8 >= [(AWDProactiveModelFittingSparseFloatMatrix *)self valuesCount])
      {
        return v7;
      }
    }

    return [(AWDProactiveModelFittingSparseFloatMatrix *)self values][4 * v8];
  }

  return v7;
}

+ (id)sparseFloatMatrixFromSparseMatrix:(id)matrix
{
  matrixCopy = matrix;
  v4 = objc_opt_new();
  [v4 setColumnLength:{objc_msgSend(matrixCopy, "numberOfColumns")}];
  [v4 setRowLength:{objc_msgSend(matrixCopy, "numberOfRows")}];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __84__AWDProactiveModelFittingSparseFloatMatrix_PML__sparseFloatMatrixFromSparseMatrix___block_invoke;
  v7[3] = &unk_279AC04A0;
  v5 = v4;
  v8 = v5;
  [matrixCopy enumerateNonZeroValuesWithBlock:v7];

  return v5;
}

uint64_t __84__AWDProactiveModelFittingSparseFloatMatrix_PML__sparseFloatMatrixFromSparseMatrix___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, float a4)
{
  [*(a1 + 32) addRowIndices:a2];
  [*(a1 + 32) addColumnIndices:a3];
  v7 = *(a1 + 32);
  *&v8 = a4;

  return [v7 addValues:v8];
}

+ (id)sparseFloatMatrixFromDenseMatrix:(id)matrix
{
  matrixCopy = matrix;
  v4 = objc_opt_new();
  [v4 setColumnLength:{objc_msgSend(matrixCopy, "numberOfColumns")}];
  [v4 setRowLength:{objc_msgSend(matrixCopy, "numberOfRows")}];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __83__AWDProactiveModelFittingSparseFloatMatrix_PML__sparseFloatMatrixFromDenseMatrix___block_invoke;
  v7[3] = &unk_279AC04A0;
  v5 = v4;
  v8 = v5;
  [matrixCopy enumerateNonZeroValuesWithBlock:v7];

  return v5;
}

uint64_t __83__AWDProactiveModelFittingSparseFloatMatrix_PML__sparseFloatMatrixFromDenseMatrix___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, float a4)
{
  [*(a1 + 32) addRowIndices:a2];
  [*(a1 + 32) addColumnIndices:a3];
  v7 = *(a1 + 32);
  *&v8 = a4;

  return [v7 addValues:v8];
}

@end