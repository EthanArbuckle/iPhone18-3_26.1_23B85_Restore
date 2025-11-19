@interface PGFeatureTransformerToUnitNorm
+ (id)instanceWithParameters:(id)a3 error:(id *)a4;
- (id)_generateErrorWithErrorCode:(int64_t)a3 andMessage:(id)a4;
- (id)applyTransformationToFloatVector:(id)a3 error:(id *)a4;
@end

@implementation PGFeatureTransformerToUnitNorm

- (id)_generateErrorWithErrorCode:(int64_t)a3 andMessage:(id)a4
{
  v13[1] = *MEMORY[0x277D85DE8];
  v5 = MEMORY[0x277CCA9B8];
  v12 = @"message";
  v13[0] = a4;
  v6 = MEMORY[0x277CBEAC0];
  v7 = a4;
  v8 = [v6 dictionaryWithObjects:v13 forKeys:&v12 count:1];
  v9 = [v5 errorWithDomain:@"com.apple.PhotosGraph.PGFeatureTransformerToUnitNorm" code:a3 userInfo:v8];

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

- (id)applyTransformationToFloatVector:(id)a3 error:(id *)a4
{
  v6 = a3;
  LODWORD(v7) = 2.0;
  v8 = [v6 vectorByElementwiseRaisingToExponent:v7];
  [v8 sum];
  if (sqrtf(v9) == 0.0)
  {
    if (a4)
    {
      [(PGFeatureTransformerToUnitNorm *)self _generateErrorWithErrorCode:0 andMessage:@"Divide by 0 is not valid operation."];
      *a4 = v10 = 0;
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = [v6 vectorByDividingByScalar:?];
  }

  return v10;
}

+ (id)instanceWithParameters:(id)a3 error:(id *)a4
{
  v16[2] = *MEMORY[0x277D85DE8];
  v5 = a3;
  if ([v5 count])
  {
    v16[0] = objc_opt_class();
    v16[1] = objc_opt_class();
    v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:2];
    v7 = [PGFeatureTransformerHelper validParameters:v5 ofTypes:v6];

    if (v7)
    {
      v8 = [v5 objectAtIndexedSubscript:0];
      v9 = [v5 objectAtIndexedSubscript:1];
      a4 = -[PGFeatureSliceTransformer initFromIndex:toIndex:]([PGFeatureTransformerToUnitNorm alloc], "initFromIndex:toIndex:", [v8 integerValue], objc_msgSend(v9, "integerValue"));
    }

    else if (a4)
    {
      v10 = MEMORY[0x277CCA9B8];
      v14 = *MEMORY[0x277CCA450];
      v15 = @"Failed to instantiate PGFeatureTransformerToUnitNorm: incorrect parameters.";
      v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v15 forKeys:&v14 count:1];
      *a4 = [v10 errorWithDomain:@"com.apple.PhotosGraph.PGFeatureTransformerToUnitNorm" code:1 userInfo:v11];

      a4 = 0;
    }
  }

  else
  {
    a4 = objc_alloc_init(PGFeatureTransformerToUnitNorm);
  }

  v12 = *MEMORY[0x277D85DE8];

  return a4;
}

@end