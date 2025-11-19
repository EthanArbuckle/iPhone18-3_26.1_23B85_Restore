@interface PMLDenseVector
+ (id)denseVectorFromNumbers:(id)a3;
- (PMLDenseVector)init;
- (PMLDenseVector)initWithCount:(unint64_t)a3;
- (PMLDenseVector)initWithData:(id)a3;
- (PMLDenseVector)initWithFloats:(const float *)a3 count:(unint64_t)a4;
- (PMLDenseVector)initWithFloatsNoCopy:(float *)a3 count:(unint64_t)a4 deallocator:(id)a5;
- (PMLDenseVector)initWithNumbers:(id)a3;
- (float)cosineDistanceFrom:(id)a3;
- (float)density;
- (float)l1norm;
- (float)l2norm;
- (float)maxValue;
- (float)minValue;
- (float)valueAt:(unint64_t)a3;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (id)sliceFrom:(int)a3 to:(int)a4;
- (id)vecByAppendingVec:(id)a3;
- (void)enumerateNonZeroValuesWithBlock:(id)a3;
- (void)enumerateValuesWithBlock:(id)a3;
@end

@implementation PMLDenseVector

- (float)valueAt:(unint64_t)a3
{
  if ([(PMLDenseVector *)self count]<= a3)
  {
    v7 = [MEMORY[0x277CCA890] currentHandler];
    [v7 handleFailureInMethod:a2 object:self file:@"PMLDenseVector.m" lineNumber:202 description:{@"Index %tu out of bounds (vector length: %tu)", a3, -[PMLDenseVector count](self, "count")}];
  }

  return [(PMLDenseVector *)self ptr][4 * a3];
}

- (void)enumerateNonZeroValuesWithBlock:(id)a3
{
  v8 = a3;
  v4 = [(PMLDenseVector *)self ptr];
  v5 = [(PMLDenseVector *)self count];
  if (v5)
  {
    v6 = v5;
    for (i = 0; i != v6; ++i)
    {
      if (v4[i] != 0.0)
      {
        v8[2](v8, i);
      }
    }
  }
}

- (void)enumerateValuesWithBlock:(id)a3
{
  v8 = a3;
  v4 = [(PMLDenseVector *)self ptr];
  v5 = [(PMLDenseVector *)self count];
  if (v5)
  {
    v6 = v5;
    for (i = 0; i != v6; ++i)
    {
      v8[2](v8, i, v4[i]);
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

- (float)cosineDistanceFrom:(id)a3
{
  v5 = a3;
  v6 = [v5 count];
  if (v6 != [(PMLDenseVector *)self count])
  {
    v14 = [MEMORY[0x277CCA890] currentHandler];
    [v14 handleFailureInMethod:a2 object:self file:@"PMLDenseVector.m" lineNumber:134 description:{@"Invalid parameter not satisfying: %@", @"other.count == self.count"}];
  }

  [(PMLDenseVector *)self count];
  [(PMLDenseVector *)self ptr];
  [v5 ptr];
  cblas_sdot_NEWLAPACK();
  v8 = v7;
  [(PMLDenseVector *)self l2norm];
  v10 = v9;
  [v5 l2norm];
  v12 = v11;

  return 1.0 - (v8 / (v10 * v12));
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = [PMLMutableDenseVector allocWithZone:a3];
  data = self->_data;

  return [(PMLDenseVector *)v4 initWithData:data];
}

+ (id)denseVectorFromNumbers:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithNumbers:v4];

  return v5;
}

- (id)vecByAppendingVec:(id)a3
{
  v4 = self->_data;
  v5 = [a3 data];
  v6 = [objc_alloc(MEMORY[0x277CBEB28]) initWithCapacity:{objc_msgSend(v5, "length") + -[NSMutableData length](v4, "length")}];
  [v6 appendData:v4];

  [v6 appendData:v5];
  v7 = [[PMLMutableDenseVector alloc] initWithMutableData:v6];

  return v7;
}

- (id)sliceFrom:(int)a3 to:(int)a4
{
  if (a3 < 0 || [(PMLDenseVector *)self count]<= a3)
  {
    v11 = [MEMORY[0x277CCA890] currentHandler];
    [v11 handleFailureInMethod:a2 object:self file:@"PMLDenseVector.m" lineNumber:104 description:{@"Invalid parameter not satisfying: %@", @"start >= 0 && start < self.count"}];
  }

  if (a4 < 1 || [(PMLDenseVector *)self count]< a4)
  {
    v12 = [MEMORY[0x277CCA890] currentHandler];
    [v12 handleFailureInMethod:a2 object:self file:@"PMLDenseVector.m" lineNumber:105 description:{@"Invalid parameter not satisfying: %@", @"end > 0 && end <= self.count"}];
  }

  v8 = a4 - a3;
  if (a4 < a3)
  {
    v13 = [MEMORY[0x277CCA890] currentHandler];
    [v13 handleFailureInMethod:a2 object:self file:@"PMLDenseVector.m" lineNumber:106 description:{@"Invalid parameter not satisfying: %@", @"end >= start"}];
  }

  v9 = [(PMLDenseVector *)[PMLMutableDenseVector alloc] initWithCount:v8];
  memcpy([(PMLMutableDenseVector *)v9 mutablePtr], [(PMLDenseVector *)self ptr]+ 4 * a3, 4 * v8);

  return v9;
}

- (PMLDenseVector)initWithNumbers:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = PMLDenseVector;
  v5 = [(PMLDenseVector *)&v13 init];
  if (v5)
  {
    v6 = [objc_alloc(MEMORY[0x277CBEB28]) initWithLength:{4 * objc_msgSend(v4, "count")}];
    v7 = [(NSMutableData *)v6 mutableBytes];
    if ([v4 count])
    {
      v8 = 0;
      do
      {
        v9 = [v4 objectAtIndexedSubscript:v8];
        [v9 floatValue];
        *(v7 + 4 * v8) = v10;

        ++v8;
      }

      while (v8 < [v4 count]);
    }

    data = v5->_data;
    v5->_data = v6;
  }

  return v5;
}

- (PMLDenseVector)initWithData:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = PMLDenseVector;
  v5 = [(PMLDenseVector *)&v9 init];
  if (v5)
  {
    v6 = [v4 mutableCopy];
    data = v5->_data;
    v5->_data = v6;
  }

  return v5;
}

- (PMLDenseVector)initWithFloatsNoCopy:(float *)a3 count:(unint64_t)a4 deallocator:(id)a5
{
  v8 = a5;
  v13.receiver = self;
  v13.super_class = PMLDenseVector;
  v9 = [(PMLDenseVector *)&v13 init];
  if (v9)
  {
    v10 = [objc_alloc(MEMORY[0x277CBEB28]) initWithBytesNoCopy:a3 length:4 * a4 deallocator:v8];
    data = v9->_data;
    v9->_data = v10;
  }

  return v9;
}

- (PMLDenseVector)initWithFloats:(const float *)a3 count:(unint64_t)a4
{
  v10.receiver = self;
  v10.super_class = PMLDenseVector;
  v6 = [(PMLDenseVector *)&v10 init];
  if (v6)
  {
    v7 = [objc_alloc(MEMORY[0x277CBEB28]) initWithBytes:a3 length:4 * a4];
    data = v6->_data;
    v6->_data = v7;
  }

  return v6;
}

- (PMLDenseVector)initWithCount:(unint64_t)a3
{
  v16[1] = *MEMORY[0x277D85DE8];
  v14.receiver = self;
  v14.super_class = PMLDenseVector;
  v4 = [(PMLDenseVector *)&v14 init];
  if (v4)
  {
    v5 = [objc_alloc(MEMORY[0x277CBEB28]) initWithLength:4 * a3];
    data = v4->_data;
    v4->_data = v5;

    if (!v4->_data)
    {
      v9 = MEMORY[0x277CBEAD8];
      v15 = @"count";
      v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
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