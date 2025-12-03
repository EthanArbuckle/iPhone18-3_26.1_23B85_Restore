@interface PGFeatureTransformerMultiplyByScalar
+ (id)instanceWithParameters:(id)parameters error:(id *)error;
- (PGFeatureTransformerMultiplyByScalar)initWithScalarToMultiply:(float)multiply fromIndex:(int64_t)index toIndex:(int64_t)toIndex;
- (id)applyTransformationToFloatVector:(id)vector error:(id *)error;
@end

@implementation PGFeatureTransformerMultiplyByScalar

- (id)applyTransformationToFloatVector:(id)vector error:(id *)error
{
  vectorCopy = vector;
  [(PGFeatureTransformerMultiplyByScalar *)self scalarToMultiply];
  v6 = [vectorCopy vectorByMultiplyingByScalar:?];

  return v6;
}

- (PGFeatureTransformerMultiplyByScalar)initWithScalarToMultiply:(float)multiply fromIndex:(int64_t)index toIndex:(int64_t)toIndex
{
  v7.receiver = self;
  v7.super_class = PGFeatureTransformerMultiplyByScalar;
  result = [(PGFeatureSliceTransformer *)&v7 initFromIndex:index toIndex:toIndex];
  if (result)
  {
    result->_scalarToMultiply = multiply;
  }

  return result;
}

+ (id)instanceWithParameters:(id)parameters error:(id *)error
{
  v26[1] = *MEMORY[0x277D85DE8];
  parametersCopy = parameters;
  v26[0] = objc_opt_class();
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v26 count:1];
  if ([PGFeatureTransformerHelper validParameters:parametersCopy ofTypes:v6])
  {

    goto LABEL_4;
  }

  v25[0] = objc_opt_class();
  v25[1] = objc_opt_class();
  v25[2] = objc_opt_class();
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v25 count:3];
  v8 = [PGFeatureTransformerHelper validParameters:parametersCopy ofTypes:v7];

  if (v8)
  {
LABEL_4:
    v9 = [parametersCopy objectAtIndexedSubscript:0];
    if ([parametersCopy count] == 3)
    {
      v10 = [parametersCopy objectAtIndexedSubscript:1];
      v11 = [parametersCopy objectAtIndexedSubscript:2];
      v12 = [PGFeatureTransformerMultiplyByScalar alloc];
      [v9 floatValue];
      v14 = v13;
      integerValue = [v10 integerValue];
      integerValue2 = [v11 integerValue];
      LODWORD(v17) = v14;
      v18 = [(PGFeatureTransformerMultiplyByScalar *)v12 initWithScalarToMultiply:integerValue fromIndex:integerValue2 toIndex:v17];
    }

    else
    {
      v19 = [PGFeatureTransformerMultiplyByScalar alloc];
      [v9 floatValue];
      v18 = [(PGFeatureTransformerMultiplyByScalar *)v19 initWithScalarToMultiply:?];
    }

    goto LABEL_9;
  }

  if (error)
  {
    v20 = MEMORY[0x277CCA9B8];
    v23 = *MEMORY[0x277CCA450];
    v24 = @"Failed to instantiate PGFeatureTransformerMultiplyByScalar: incorrect parameters.";
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v24 forKeys:&v23 count:1];
    [v20 errorWithDomain:@"com.apple.PhotosGraph.PGFeatureTransformerMultiplyByScalar" code:0 userInfo:v9];
    *error = v18 = 0;
LABEL_9:

    goto LABEL_10;
  }

  v18 = 0;
LABEL_10:

  v21 = *MEMORY[0x277D85DE8];

  return v18;
}

@end