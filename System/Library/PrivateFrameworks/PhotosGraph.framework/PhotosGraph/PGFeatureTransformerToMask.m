@interface PGFeatureTransformerToMask
+ (id)instanceWithParameters:(id)a3 error:(id *)a4;
- (PGFeatureTransformerToMask)initWithMaskingFloatValue:(float)a3 fromIndex:(int64_t)a4 toIndex:(int64_t)a5;
- (id)applyTransformationToFloatVector:(id)a3 error:(id *)a4;
@end

@implementation PGFeatureTransformerToMask

- (id)applyTransformationToFloatVector:(id)a3 error:(id *)a4
{
  v5 = [a3 count];
  v6 = MEMORY[0x277D22C40];
  *&v7 = self->_maskingValue;

  return [v6 vectorRepeatingFloat:v5 count:v7];
}

- (PGFeatureTransformerToMask)initWithMaskingFloatValue:(float)a3 fromIndex:(int64_t)a4 toIndex:(int64_t)a5
{
  v7.receiver = self;
  v7.super_class = PGFeatureTransformerToMask;
  result = [(PGFeatureSliceTransformer *)&v7 initFromIndex:a4 toIndex:a5];
  if (result)
  {
    result->_maskingValue = a3;
  }

  return result;
}

+ (id)instanceWithParameters:(id)a3 error:(id *)a4
{
  v26[1] = *MEMORY[0x277D85DE8];
  v5 = a3;
  v26[0] = objc_opt_class();
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v26 count:1];
  if ([PGFeatureTransformerHelper validParameters:v5 ofTypes:v6])
  {

    goto LABEL_4;
  }

  v25[0] = objc_opt_class();
  v25[1] = objc_opt_class();
  v25[2] = objc_opt_class();
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v25 count:3];
  v8 = [PGFeatureTransformerHelper validParameters:v5 ofTypes:v7];

  if (v8)
  {
LABEL_4:
    v9 = [v5 objectAtIndexedSubscript:0];
    if ([v5 count] == 3)
    {
      v10 = [v5 objectAtIndexedSubscript:1];
      v11 = [v5 objectAtIndexedSubscript:2];
      v12 = [PGFeatureTransformerToMask alloc];
      [v9 floatValue];
      v14 = v13;
      v15 = [v10 integerValue];
      v16 = [v11 integerValue];
      LODWORD(v17) = v14;
      v18 = [(PGFeatureTransformerToMask *)v12 initWithMaskingFloatValue:v15 fromIndex:v16 toIndex:v17];
    }

    else
    {
      v19 = [PGFeatureTransformerToMask alloc];
      [v9 floatValue];
      v18 = [(PGFeatureTransformerToMask *)v19 initWithMaskingFloatValue:?];
    }

    goto LABEL_9;
  }

  if (a4)
  {
    v20 = MEMORY[0x277CCA9B8];
    v23 = *MEMORY[0x277CCA450];
    v24 = @"Failed to instantiate PGFeatureTransformerToMask: incorrect parameters.";
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v24 forKeys:&v23 count:1];
    [v20 errorWithDomain:@"com.apple.PhotosGraph.PGFeatureTransformerToMask" code:0 userInfo:v9];
    *a4 = v18 = 0;
LABEL_9:

    goto LABEL_10;
  }

  v18 = 0;
LABEL_10:

  v21 = *MEMORY[0x277D85DE8];

  return v18;
}

@end