@interface PGFeatureTransformerExclude
+ (id)instanceWithParameters:(id)a3 error:(id *)a4;
- (id)applyTransformationToFloatVector:(id)a3 error:(id *)a4;
@end

@implementation PGFeatureTransformerExclude

- (id)applyTransformationToFloatVector:(id)a3 error:(id *)a4
{
  v4 = objc_alloc(MEMORY[0x277D22C40]);
  v5 = [v4 initWithArray:MEMORY[0x277CBEBF8]];

  return v5;
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
      a4 = -[PGFeatureSliceTransformer initFromIndex:toIndex:]([PGFeatureTransformerExclude alloc], "initFromIndex:toIndex:", [v8 integerValue], objc_msgSend(v9, "integerValue"));
    }

    else if (a4)
    {
      v10 = MEMORY[0x277CCA9B8];
      v14 = *MEMORY[0x277CCA450];
      v15 = @"Failed to instantiate PGFeatureTransformerExclude: incorrect parameters.";
      v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v15 forKeys:&v14 count:1];
      *a4 = [v10 errorWithDomain:@"com.apple.PhotosGraph.PGFeatureTransformerExclude" code:0 userInfo:v11];

      a4 = 0;
    }
  }

  else
  {
    a4 = objc_alloc_init(PGFeatureTransformerExclude);
  }

  v12 = *MEMORY[0x277D85DE8];

  return a4;
}

@end