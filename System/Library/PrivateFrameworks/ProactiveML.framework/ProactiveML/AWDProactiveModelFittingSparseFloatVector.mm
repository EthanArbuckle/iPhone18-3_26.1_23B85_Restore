@interface AWDProactiveModelFittingSparseFloatVector
+ (id)sparseFloatVectorFromModelWeights:(id)weights;
+ (id)sparseFloatVectorFromSparseVector:(id)vector;
- (BOOL)isEqual:(id)equal;
- (float)valueAtIndex:(unint64_t)index;
- (float)valuesAtIndex:(unint64_t)index;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (unint64_t)indicesAtIndex:(unint64_t)index;
- (void)copyTo:(id)to;
- (void)dealloc;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation AWDProactiveModelFittingSparseFloatVector

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  indicesCount = [fromCopy indicesCount];
  if (indicesCount)
  {
    v5 = indicesCount;
    for (i = 0; i != v5; ++i)
    {
      -[AWDProactiveModelFittingSparseFloatVector addIndices:](self, "addIndices:", [fromCopy indicesAtIndex:i]);
    }
  }

  valuesCount = [fromCopy valuesCount];
  if (valuesCount)
  {
    v8 = valuesCount;
    for (j = 0; j != v8; ++j)
    {
      [fromCopy valuesAtIndex:j];
      [(AWDProactiveModelFittingSparseFloatVector *)self addValues:?];
    }
  }

  if (fromCopy[8])
  {
    self->_length = fromCopy[7];
    *&self->_has |= 1u;
  }
}

- (unint64_t)hash
{
  v3 = PBRepeatedUInt64Hash();
  v4 = PBRepeatedFloatHash();
  if (*&self->_has)
  {
    v5 = 2654435761u * self->_length;
  }

  else
  {
    v5 = 0;
  }

  return v4 ^ v3 ^ v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()] || !PBRepeatedUInt64IsEqual() || !PBRepeatedFloatIsEqual())
  {
    goto LABEL_8;
  }

  v5 = (*(equalCopy + 64) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(equalCopy + 64) & 1) != 0 && self->_length == *(equalCopy + 7))
    {
      v5 = 1;
      goto LABEL_9;
    }

LABEL_8:
    v5 = 0;
  }

LABEL_9:

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  PBRepeatedUInt64Copy();
  PBRepeatedFloatCopy();
  if (*&self->_has)
  {
    *(v4 + 56) = self->_length;
    *(v4 + 64) |= 1u;
  }

  return v4;
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if ([(AWDProactiveModelFittingSparseFloatVector *)self indicesCount])
  {
    [toCopy clearIndices];
    indicesCount = [(AWDProactiveModelFittingSparseFloatVector *)self indicesCount];
    if (indicesCount)
    {
      v5 = indicesCount;
      for (i = 0; i != v5; ++i)
      {
        [toCopy addIndices:{-[AWDProactiveModelFittingSparseFloatVector indicesAtIndex:](self, "indicesAtIndex:", i)}];
      }
    }
  }

  if ([(AWDProactiveModelFittingSparseFloatVector *)self valuesCount])
  {
    [toCopy clearValues];
    valuesCount = [(AWDProactiveModelFittingSparseFloatVector *)self valuesCount];
    if (valuesCount)
    {
      v8 = valuesCount;
      for (j = 0; j != v8; ++j)
      {
        [(AWDProactiveModelFittingSparseFloatVector *)self valuesAtIndex:j];
        [toCopy addValues:?];
      }
    }
  }

  if (*&self->_has)
  {
    *(toCopy + 7) = self->_length;
    *(toCopy + 64) |= 1u;
  }
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v10 = toCopy;
  if (self->_indices.count)
  {
    v5 = 0;
    do
    {
      v6 = self->_indices.list[v5];
      PBDataWriterWriteUint64Field();
      toCopy = v10;
      ++v5;
    }

    while (v5 < self->_indices.count);
  }

  if (self->_values.count)
  {
    v7 = 0;
    do
    {
      v8 = self->_values.list[v7];
      PBDataWriterWriteFloatField();
      toCopy = v10;
      ++v7;
    }

    while (v7 < self->_values.count);
  }

  if (*&self->_has)
  {
    length = self->_length;
    PBDataWriterWriteUint64Field();
    toCopy = v10;
  }
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v4 = PBRepeatedUInt64NSArray();
  [dictionary setObject:v4 forKey:@"indices"];

  v5 = PBRepeatedFloatNSArray();
  [dictionary setObject:v5 forKey:@"values"];

  if (*&self->_has)
  {
    v6 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_length];
    [dictionary setObject:v6 forKey:@"length"];
  }

  return dictionary;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = AWDProactiveModelFittingSparseFloatVector;
  v4 = [(AWDProactiveModelFittingSparseFloatVector *)&v8 description];
  dictionaryRepresentation = [(AWDProactiveModelFittingSparseFloatVector *)self dictionaryRepresentation];
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

- (unint64_t)indicesAtIndex:(unint64_t)index
{
  p_indices = &self->_indices;
  count = self->_indices.count;
  if (count <= index)
  {
    v6 = MEMORY[0x277CBEAD8];
    v7 = *MEMORY[0x277CBE730];
    v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"idx (%tu) is out of range (%tu)", index, count];
    v9 = [v6 exceptionWithName:v7 reason:v8 userInfo:0];
    [v9 raise];
  }

  return p_indices->list[index];
}

- (void)dealloc
{
  PBRepeatedUInt64Clear();
  PBRepeatedFloatClear();
  v3.receiver = self;
  v3.super_class = AWDProactiveModelFittingSparseFloatVector;
  [(AWDProactiveModelFittingSparseFloatVector *)&v3 dealloc];
}

- (float)valueAtIndex:(unint64_t)index
{
  v5 = 0.0;
  if ([(AWDProactiveModelFittingSparseFloatVector *)self valuesCount])
  {
    v6 = 0;
    while ([(AWDProactiveModelFittingSparseFloatVector *)self indices][8 * v6] != index)
    {
      if (++v6 >= [(AWDProactiveModelFittingSparseFloatVector *)self valuesCount])
      {
        return v5;
      }
    }

    return [(AWDProactiveModelFittingSparseFloatVector *)self values][4 * v6];
  }

  return v5;
}

+ (id)sparseFloatVectorFromSparseVector:(id)vector
{
  vectorCopy = vector;
  v4 = objc_opt_new();
  [v4 setLength:{objc_msgSend(vectorCopy, "length")}];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __84__AWDProactiveModelFittingSparseFloatVector_PML__sparseFloatVectorFromSparseVector___block_invoke;
  v7[3] = &unk_279AC02D0;
  v5 = v4;
  v8 = v5;
  [vectorCopy enumerateNonZeroValuesWithBlock:v7];

  return v5;
}

uint64_t __84__AWDProactiveModelFittingSparseFloatVector_PML__sparseFloatVectorFromSparseVector___block_invoke(uint64_t a1, uint64_t a2, float a3)
{
  [*(a1 + 32) addIndices:a2];
  v5 = *(a1 + 32);
  *&v6 = a3;

  return [v5 addValues:v6];
}

+ (id)sparseFloatVectorFromModelWeights:(id)weights
{
  weightsCopy = weights;
  v4 = objc_opt_new();
  [v4 setLength:{objc_msgSend(weightsCopy, "length")}];
  if ([weightsCopy length])
  {
    v5 = 0;
    do
    {
      v6 = *([weightsCopy values] + 4 * v5);
      if (v6 != 0.0)
      {
        [v4 addIndices:v5];
        *&v7 = v6;
        [v4 addValues:v7];
      }

      ++v5;
    }

    while (v5 < [weightsCopy length]);
  }

  return v4;
}

@end