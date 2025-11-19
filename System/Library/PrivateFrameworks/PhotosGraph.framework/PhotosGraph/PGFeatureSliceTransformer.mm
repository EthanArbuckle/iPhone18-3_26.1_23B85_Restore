@interface PGFeatureSliceTransformer
+ (id)instanceWithParameters:(id)a3 error:(id *)a4;
+ (id)name;
- (id)applyTransformationToFloatVector:(id)a3 error:(id *)a4;
- (id)floatVectorWithFloatVector:(id)a3 error:(id *)a4;
- (id)initFromIndex:(int64_t)a3 toIndex:(int64_t)a4;
@end

@implementation PGFeatureSliceTransformer

- (id)applyTransformationToFloatVector:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = MEMORY[0x277CBEAD8];
  v7 = *MEMORY[0x277CBE658];
  v8 = MEMORY[0x277CCACA8];
  v9 = NSStringFromSelector(a2);
  v10 = [v8 stringWithFormat:@"You must override %@ in a subclass", v9];
  v11 = [v6 exceptionWithName:v7 reason:v10 userInfo:0];
  v12 = v11;

  objc_exception_throw(v11);
}

- (id)floatVectorWithFloatVector:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(PGFeatureSliceTransformer *)self fromIndex];
  v8 = v7 & ~(v7 >> 63);
  v9 = [v6 count];
  if (v8 >= v9)
  {
    v10 = v9;
  }

  else
  {
    v10 = v8;
  }

  v11 = [(PGFeatureSliceTransformer *)self toIndex];
  v12 = [v6 count];
  if (v11 >= v12)
  {
    v13 = v12;
  }

  else
  {
    v13 = v11;
  }

  v14 = v13 & ~(v13 >> 63);
  v15 = [v6 sliceFromStart:0 toEnd:v10];
  v16 = [v6 sliceFromStart:v10 toEnd:v14];
  v17 = [v6 sliceFromStart:v14 toEnd:{objc_msgSend(v6, "count")}];

  v18 = [(PGFeatureSliceTransformer *)self applyTransformationToFloatVector:v16 error:a4];
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

- (id)initFromIndex:(int64_t)a3 toIndex:(int64_t)a4
{
  v7.receiver = self;
  v7.super_class = PGFeatureSliceTransformer;
  result = [(PGFeatureSliceTransformer *)&v7 init];
  if (result)
  {
    *(result + 1) = a3;
    *(result + 2) = a4;
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

+ (id)instanceWithParameters:(id)a3 error:(id *)a4
{
  v5 = a3;
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