@interface AWDProactiveModelFittingSparseFloatMatrix
+ (id)sparseFloatMatrixFromDenseMatrix:(id)a3;
+ (id)sparseFloatMatrixFromSparseMatrix:(id)a3;
- (BOOL)isEqual:(id)a3;
- (float)valueAtRow:(unint64_t)a3 column:(unint64_t)a4;
- (float)valuesAtIndex:(unint64_t)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)columnIndicesAtIndex:(unint64_t)a3;
- (unint64_t)hash;
- (unint64_t)rowIndicesAtIndex:(unint64_t)a3;
- (void)copyTo:(id)a3;
- (void)dealloc;
- (void)mergeFrom:(id)a3;
- (void)setHasRowLength:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation AWDProactiveModelFittingSparseFloatMatrix

- (void)mergeFrom:(id)a3
{
  v13 = a3;
  v4 = [v13 columnIndicesCount];
  if (v4)
  {
    v5 = v4;
    for (i = 0; i != v5; ++i)
    {
      -[AWDProactiveModelFittingSparseFloatMatrix addColumnIndices:](self, "addColumnIndices:", [v13 columnIndicesAtIndex:i]);
    }
  }

  if (v13[12])
  {
    self->_columnLength = v13[10];
    *&self->_has |= 1u;
  }

  v7 = [v13 rowIndicesCount];
  if (v7)
  {
    v8 = v7;
    for (j = 0; j != v8; ++j)
    {
      -[AWDProactiveModelFittingSparseFloatMatrix addRowIndices:](self, "addRowIndices:", [v13 rowIndicesAtIndex:j]);
    }
  }

  if ((v13[12] & 2) != 0)
  {
    self->_rowLength = v13[11];
    *&self->_has |= 2u;
  }

  v10 = [v13 valuesCount];
  if (v10)
  {
    v11 = v10;
    for (k = 0; k != v11; ++k)
    {
      [v13 valuesAtIndex:k];
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()] || !PBRepeatedUInt64IsEqual())
  {
    goto LABEL_15;
  }

  v5 = *(v4 + 96);
  if (*&self->_has)
  {
    if ((*(v4 + 96) & 1) == 0 || self->_columnLength != *(v4 + 10))
    {
      goto LABEL_15;
    }
  }

  else if (*(v4 + 96))
  {
    goto LABEL_15;
  }

  if (!PBRepeatedUInt64IsEqual())
  {
LABEL_15:
    IsEqual = 0;
    goto LABEL_16;
  }

  v6 = *(v4 + 96);
  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 96) & 2) == 0 || self->_rowLength != *(v4 + 11))
    {
      goto LABEL_15;
    }
  }

  else if ((*(v4 + 96) & 2) != 0)
  {
    goto LABEL_15;
  }

  IsEqual = PBRepeatedFloatIsEqual();
LABEL_16:

  return IsEqual;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
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

- (void)copyTo:(id)a3
{
  v13 = a3;
  if ([(AWDProactiveModelFittingSparseFloatMatrix *)self columnIndicesCount])
  {
    [v13 clearColumnIndices];
    v4 = [(AWDProactiveModelFittingSparseFloatMatrix *)self columnIndicesCount];
    if (v4)
    {
      v5 = v4;
      for (i = 0; i != v5; ++i)
      {
        [v13 addColumnIndices:{-[AWDProactiveModelFittingSparseFloatMatrix columnIndicesAtIndex:](self, "columnIndicesAtIndex:", i)}];
      }
    }
  }

  if (*&self->_has)
  {
    *(v13 + 10) = self->_columnLength;
    *(v13 + 96) |= 1u;
  }

  if ([(AWDProactiveModelFittingSparseFloatMatrix *)self rowIndicesCount])
  {
    [v13 clearRowIndices];
    v7 = [(AWDProactiveModelFittingSparseFloatMatrix *)self rowIndicesCount];
    if (v7)
    {
      v8 = v7;
      for (j = 0; j != v8; ++j)
      {
        [v13 addRowIndices:{-[AWDProactiveModelFittingSparseFloatMatrix rowIndicesAtIndex:](self, "rowIndicesAtIndex:", j)}];
      }
    }
  }

  if ((*&self->_has & 2) != 0)
  {
    *(v13 + 11) = self->_rowLength;
    *(v13 + 96) |= 2u;
  }

  if ([(AWDProactiveModelFittingSparseFloatMatrix *)self valuesCount])
  {
    [v13 clearValues];
    v10 = [(AWDProactiveModelFittingSparseFloatMatrix *)self valuesCount];
    if (v10)
    {
      v11 = v10;
      for (k = 0; k != v11; ++k)
      {
        [(AWDProactiveModelFittingSparseFloatMatrix *)self valuesAtIndex:k];
        [v13 addValues:?];
      }
    }
  }
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v14 = v4;
  if (self->_columnIndices.count)
  {
    v5 = 0;
    do
    {
      v6 = self->_columnIndices.list[v5];
      PBDataWriterWriteUint64Field();
      v4 = v14;
      ++v5;
    }

    while (v5 < self->_columnIndices.count);
  }

  if (*&self->_has)
  {
    columnLength = self->_columnLength;
    PBDataWriterWriteUint64Field();
    v4 = v14;
  }

  if (self->_rowIndices.count)
  {
    v8 = 0;
    do
    {
      v9 = self->_rowIndices.list[v8];
      PBDataWriterWriteUint64Field();
      v4 = v14;
      ++v8;
    }

    while (v8 < self->_rowIndices.count);
  }

  if ((*&self->_has & 2) != 0)
  {
    rowLength = self->_rowLength;
    PBDataWriterWriteUint64Field();
    v4 = v14;
  }

  p_values = &self->_values;
  if (p_values->count)
  {
    v12 = 0;
    do
    {
      v13 = p_values->list[v12];
      PBDataWriterWriteFloatField();
      v4 = v14;
      ++v12;
    }

    while (v12 < p_values->count);
  }
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = PBRepeatedUInt64NSArray();
  [v3 setObject:v4 forKey:@"columnIndices"];

  if (*&self->_has)
  {
    v5 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_columnLength];
    [v3 setObject:v5 forKey:@"columnLength"];
  }

  v6 = PBRepeatedUInt64NSArray();
  [v3 setObject:v6 forKey:@"rowIndices"];

  if ((*&self->_has & 2) != 0)
  {
    v7 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_rowLength];
    [v3 setObject:v7 forKey:@"rowLength"];
  }

  v8 = PBRepeatedFloatNSArray();
  [v3 setObject:v8 forKey:@"values"];

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = AWDProactiveModelFittingSparseFloatMatrix;
  v4 = [(AWDProactiveModelFittingSparseFloatMatrix *)&v8 description];
  v5 = [(AWDProactiveModelFittingSparseFloatMatrix *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (float)valuesAtIndex:(unint64_t)a3
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

- (void)setHasRowLength:(BOOL)a3
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

- (unint64_t)rowIndicesAtIndex:(unint64_t)a3
{
  p_rowIndices = &self->_rowIndices;
  count = self->_rowIndices.count;
  if (count <= a3)
  {
    v6 = MEMORY[0x277CBEAD8];
    v7 = *MEMORY[0x277CBE730];
    v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"idx (%tu) is out of range (%tu)", a3, count];
    v9 = [v6 exceptionWithName:v7 reason:v8 userInfo:0];
    [v9 raise];
  }

  return p_rowIndices->list[a3];
}

- (unint64_t)columnIndicesAtIndex:(unint64_t)a3
{
  p_columnIndices = &self->_columnIndices;
  count = self->_columnIndices.count;
  if (count <= a3)
  {
    v6 = MEMORY[0x277CBEAD8];
    v7 = *MEMORY[0x277CBE730];
    v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"idx (%tu) is out of range (%tu)", a3, count];
    v9 = [v6 exceptionWithName:v7 reason:v8 userInfo:0];
    [v9 raise];
  }

  return p_columnIndices->list[a3];
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

- (float)valueAtRow:(unint64_t)a3 column:(unint64_t)a4
{
  v7 = 0.0;
  if ([(AWDProactiveModelFittingSparseFloatMatrix *)self valuesCount])
  {
    v8 = 0;
    while ([(AWDProactiveModelFittingSparseFloatMatrix *)self rowIndices][8 * v8] != a3 || [(AWDProactiveModelFittingSparseFloatMatrix *)self columnIndices][8 * v8] != a4)
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

+ (id)sparseFloatMatrixFromSparseMatrix:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  [v4 setColumnLength:{objc_msgSend(v3, "numberOfColumns")}];
  [v4 setRowLength:{objc_msgSend(v3, "numberOfRows")}];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __84__AWDProactiveModelFittingSparseFloatMatrix_PML__sparseFloatMatrixFromSparseMatrix___block_invoke;
  v7[3] = &unk_279AC04A0;
  v5 = v4;
  v8 = v5;
  [v3 enumerateNonZeroValuesWithBlock:v7];

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

+ (id)sparseFloatMatrixFromDenseMatrix:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  [v4 setColumnLength:{objc_msgSend(v3, "numberOfColumns")}];
  [v4 setRowLength:{objc_msgSend(v3, "numberOfRows")}];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __83__AWDProactiveModelFittingSparseFloatMatrix_PML__sparseFloatMatrixFromDenseMatrix___block_invoke;
  v7[3] = &unk_279AC04A0;
  v5 = v4;
  v8 = v5;
  [v3 enumerateNonZeroValuesWithBlock:v7];

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