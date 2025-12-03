@interface PMLDenseVector
+ (id)denseVectorFromNumbers:(id)numbers;
- (PMLDenseVector)init;
- (PMLDenseVector)initWithCount:(unint64_t)count;
- (PMLDenseVector)initWithData:(id)data;
- (PMLDenseVector)initWithFloats:(const float *)floats count:(unint64_t)count;
- (PMLDenseVector)initWithFloatsNoCopy:(float *)copy count:(unint64_t)count deallocator:(id)deallocator;
- (PMLDenseVector)initWithNumbers:(id)numbers;
- (float)cosineDistanceFrom:(id)from;
- (float)density;
- (float)l1norm;
- (float)l2norm;
- (float)maxValue;
- (float)minValue;
- (float)valueAt:(unint64_t)at;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (id)sliceFrom:(int)from to:(int)to;
- (id)vecByAppendingVec:(id)vec;
- (void)enumerateNonZeroValuesWithBlock:(id)block;
- (void)enumerateValuesWithBlock:(id)block;
@end

@implementation PMLDenseVector

- (float)valueAt:(unint64_t)at
{
  if ([(PMLDenseVector *)self count]<= at)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PMLDenseVector.m" lineNumber:202 description:{@"Index %tu out of bounds (vector length: %tu)", at, -[PMLDenseVector count](self, "count")}];
  }

  return [(PMLDenseVector *)self ptr][4 * at];
}

- (void)enumerateNonZeroValuesWithBlock:(id)block
{
  blockCopy = block;
  v4 = [(PMLDenseVector *)self ptr];
  v5 = [(PMLDenseVector *)self count];
  if (v5)
  {
    v6 = v5;
    for (i = 0; i != v6; ++i)
    {
      if (v4[i] != 0.0)
      {
        blockCopy[2](blockCopy, i);
      }
    }
  }
}

- (void)enumerateValuesWithBlock:(id)block
{
  blockCopy = block;
  v4 = [(PMLDenseVector *)self ptr];
  v5 = [(PMLDenseVector *)self count];
  if (v5)
  {
    v6 = v5;
    for (i = 0; i != v6; ++i)
    {
      blockCopy[2](blockCopy, i, v4[i]);
    }
  }
}

- (float)density
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __25__PMLDenseVector_density__block_invoke;
  v6[3] = &unk_279AC02A8;
  v6[4] = &v7;
  [(PMLDenseVector *)self enumerateNonZeroValuesWithBlock:v6];
  v3 = v8[3];
  v4 = v3 / [(PMLDenseVector *)self count];
  _Block_object_dispose(&v7, 8);
  return v4;
}

- (float)maxValue
{
  v3 = [(PMLDenseVector *)self ptr];
  if (![(PMLDenseVector *)self count])
  {
    return 1.1755e-38;
  }

  v4 = 0;
  v5 = 1.1755e-38;
  do
  {
    if (v5 < v3[v4])
    {
      v5 = v3[v4];
    }

    ++v4;
  }

  while (v4 < [(PMLDenseVector *)self count]);
  return v5;
}

- (float)minValue
{
  v3 = [(PMLDenseVector *)self ptr];
  if (![(PMLDenseVector *)self count])
  {
    return 3.4028e38;
  }

  v4 = 0;
  v5 = 3.4028e38;
  do
  {
    if (v5 >= v3[v4])
    {
      v5 = v3[v4];
    }

    ++v4;
  }

  while (v4 < [(PMLDenseVector *)self count]);
  return v5;
}

- (float)l2norm
{
  v3 = [(PMLDenseVector *)self count];
  v4 = [(PMLDenseVector *)self ptr];

  MEMORY[0x282108C30](v3, v4, 1);
  return result;
}

- (float)l1norm
{
  v3 = [(PMLDenseVector *)self count];
  v4 = [(PMLDenseVector *)self ptr];

  MEMORY[0x282108B48](v3, v4, 1);
  return result;
}

- (float)cosineDistanceFrom:(id)from
{
  fromCopy = from;
  v6 = [fromCopy count];
  if (v6 != [(PMLDenseVector *)self count])
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PMLDenseVector.m" lineNumber:134 description:{@"Invalid parameter not satisfying: %@", @"other.count == self.count"}];
  }

  [(PMLDenseVector *)self count];
  [(PMLDenseVector *)self ptr];
  [fromCopy ptr];
  cblas_sdot_NEWLAPACK();
  v8 = v7;
  [(PMLDenseVector *)self l2norm];
  v10 = v9;
  [fromCopy l2norm];
  v12 = v11;

  return 1.0 - (v8 / (v10 * v12));
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [PMLMutableDenseVector allocWithZone:zone];
  data = self->_data;

  return [(PMLDenseVector *)v4 initWithData:data];
}

+ (id)denseVectorFromNumbers:(id)numbers
{
  numbersCopy = numbers;
  v5 = [[self alloc] initWithNumbers:numbersCopy];

  return v5;
}

- (id)vecByAppendingVec:(id)vec
{
  v4 = self->_data;
  data = [vec data];
  v6 = [objc_alloc(MEMORY[0x277CBEB28]) initWithCapacity:{objc_msgSend(data, "length") + -[NSMutableData length](v4, "length")}];
  [v6 appendData:v4];

  [v6 appendData:data];
  v7 = [[PMLMutableDenseVector alloc] initWithMutableData:v6];

  return v7;
}

- (id)sliceFrom:(int)from to:(int)to
{
  if (from < 0 || [(PMLDenseVector *)self count]<= from)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PMLDenseVector.m" lineNumber:104 description:{@"Invalid parameter not satisfying: %@", @"start >= 0 && start < self.count"}];
  }

  if (to < 1 || [(PMLDenseVector *)self count]< to)
  {
    currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"PMLDenseVector.m" lineNumber:105 description:{@"Invalid parameter not satisfying: %@", @"end > 0 && end <= self.count"}];
  }

  v8 = to - from;
  if (to < from)
  {
    currentHandler3 = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler3 handleFailureInMethod:a2 object:self file:@"PMLDenseVector.m" lineNumber:106 description:{@"Invalid parameter not satisfying: %@", @"end >= start"}];
  }

  v9 = [(PMLDenseVector *)[PMLMutableDenseVector alloc] initWithCount:v8];
  memcpy([(PMLMutableDenseVector *)v9 mutablePtr], [(PMLDenseVector *)self ptr]+ 4 * from, 4 * v8);

  return v9;
}

- (PMLDenseVector)initWithNumbers:(id)numbers
{
  numbersCopy = numbers;
  v13.receiver = self;
  v13.super_class = PMLDenseVector;
  v5 = [(PMLDenseVector *)&v13 init];
  if (v5)
  {
    v6 = [objc_alloc(MEMORY[0x277CBEB28]) initWithLength:{4 * objc_msgSend(numbersCopy, "count")}];
    mutableBytes = [(NSMutableData *)v6 mutableBytes];
    if ([numbersCopy count])
    {
      v8 = 0;
      do
      {
        v9 = [numbersCopy objectAtIndexedSubscript:v8];
        [v9 floatValue];
        *(mutableBytes + 4 * v8) = v10;

        ++v8;
      }

      while (v8 < [numbersCopy count]);
    }

    data = v5->_data;
    v5->_data = v6;
  }

  return v5;
}

- (PMLDenseVector)initWithData:(id)data
{
  dataCopy = data;
  v9.receiver = self;
  v9.super_class = PMLDenseVector;
  v5 = [(PMLDenseVector *)&v9 init];
  if (v5)
  {
    v6 = [dataCopy mutableCopy];
    data = v5->_data;
    v5->_data = v6;
  }

  return v5;
}

- (PMLDenseVector)initWithFloatsNoCopy:(float *)copy count:(unint64_t)count deallocator:(id)deallocator
{
  deallocatorCopy = deallocator;
  v13.receiver = self;
  v13.super_class = PMLDenseVector;
  v9 = [(PMLDenseVector *)&v13 init];
  if (v9)
  {
    v10 = [objc_alloc(MEMORY[0x277CBEB28]) initWithBytesNoCopy:copy length:4 * count deallocator:deallocatorCopy];
    data = v9->_data;
    v9->_data = v10;
  }

  return v9;
}

- (PMLDenseVector)initWithFloats:(const float *)floats count:(unint64_t)count
{
  v10.receiver = self;
  v10.super_class = PMLDenseVector;
  v6 = [(PMLDenseVector *)&v10 init];
  if (v6)
  {
    v7 = [objc_alloc(MEMORY[0x277CBEB28]) initWithBytes:floats length:4 * count];
    data = v6->_data;
    v6->_data = v7;
  }

  return v6;
}

- (PMLDenseVector)initWithCount:(unint64_t)count
{
  v16[1] = *MEMORY[0x277D85DE8];
  v14.receiver = self;
  v14.super_class = PMLDenseVector;
  v4 = [(PMLDenseVector *)&v14 init];
  if (v4)
  {
    v5 = [objc_alloc(MEMORY[0x277CBEB28]) initWithLength:4 * count];
    data = v4->_data;
    v4->_data = v5;

    if (!v4->_data)
    {
      v9 = MEMORY[0x277CBEAD8];
      v15 = @"count";
      v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:count];
      v16[0] = v10;
      v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:&v15 count:1];
      v12 = [v9 exceptionWithName:@"PMLMutableDenseVectorAllocationFailure" reason:@"Failed to allocate NSData." userInfo:v11];
      v13 = v12;

      objc_exception_throw(v12);
    }
  }

  v7 = *MEMORY[0x277D85DE8];
  return v4;
}

- (PMLDenseVector)init
{
  v6.receiver = self;
  v6.super_class = PMLDenseVector;
  v2 = [(PMLDenseVector *)&v6 init];
  if (v2)
  {
    v3 = objc_opt_new();
    data = v2->_data;
    v2->_data = v3;
  }

  return v2;
}

@end