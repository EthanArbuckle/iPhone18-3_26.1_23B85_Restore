@interface PGFeatureSliceTransformer
+ (id)instanceWithParameters:(id)parameters error:(id *)error;
+ (id)name;
- (id)applyTransformationToFloatVector:(id)vector error:(id *)error;
- (id)floatVectorWithFloatVector:(id)vector error:(id *)error;
- (id)initFromIndex:(int64_t)index toIndex:(int64_t)toIndex;
@end

@implementation PGFeatureSliceTransformer

- (id)applyTransformationToFloatVector:(id)vector error:(id *)error
{
  vectorCopy = vector;
  v6 = MEMORY[0x277CBEAD8];
  v7 = *MEMORY[0x277CBE658];
  v8 = MEMORY[0x277CCACA8];
  v9 = NSStringFromSelector(a2);
  v10 = [v8 stringWithFormat:@"You must override %@ in a subclass", v9];
  v11 = [v6 exceptionWithName:v7 reason:v10 userInfo:0];
  v12 = v11;

  objc_exception_throw(v11);
}

- (id)floatVectorWithFloatVector:(id)vector error:(id *)error
{
  vectorCopy = vector;
  fromIndex = [(PGFeatureSliceTransformer *)self fromIndex];
  v8 = fromIndex & ~(fromIndex >> 63);
  v9 = [vectorCopy count];
  if (v8 >= v9)
  {
    v10 = v9;
  }

  else
  {
    v10 = v8;
  }

  toIndex = [(PGFeatureSliceTransformer *)self toIndex];
  v12 = [vectorCopy count];
  if (toIndex >= v12)
  {
    v13 = v12;
  }

  else
  {
    v13 = toIndex;
  }

  v14 = v13 & ~(v13 >> 63);
  v15 = [vectorCopy sliceFromStart:0 toEnd:v10];
  v16 = [vectorCopy sliceFromStart:v10 toEnd:v14];
  v17 = [vectorCopy sliceFromStart:v14 toEnd:{objc_msgSend(vectorCopy, "count")}];

  v18 = [(PGFeatureSliceTransformer *)self applyTransformationToFloatVector:v16 error:error];
  if (v18)
  {
    v19 = [v15 vectorByAppendingVector:v18];
    v20 = [v19 vectorByAppendingVector:v17];
  }

  else
  {
    v20 = 0;
  }

  return v20;
}

- (id)initFromIndex:(int64_t)index toIndex:(int64_t)toIndex
{
  v7.receiver = self;
  v7.super_class = PGFeatureSliceTransformer;
  result = [(PGFeatureSliceTransformer *)&v7 init];
  if (result)
  {
    *(result + 1) = index;
    *(result + 2) = toIndex;
  }

  return result;
}

+ (id)name
{
  v2 = MEMORY[0x277CBEAD8];
  v3 = *MEMORY[0x277CBE658];
  v4 = MEMORY[0x277CCACA8];
  v5 = NSStringFromSelector(a2);
  v6 = [v4 stringWithFormat:@"You must override %@ in a subclass", v5];
  v7 = [v2 exceptionWithName:v3 reason:v6 userInfo:0];
  v8 = v7;

  objc_exception_throw(v7);
}

+ (id)instanceWithParameters:(id)parameters error:(id *)error
{
  parametersCopy = parameters;
  v6 = MEMORY[0x277CBEAD8];
  v7 = *MEMORY[0x277CBE658];
  v8 = MEMORY[0x277CCACA8];
  v9 = NSStringFromSelector(a2);
  v10 = [v8 stringWithFormat:@"You must override %@ in a subclass", v9];
  v11 = [v6 exceptionWithName:v7 reason:v10 userInfo:0];
  v12 = v11;

  objc_exception_throw(v11);
}

@end