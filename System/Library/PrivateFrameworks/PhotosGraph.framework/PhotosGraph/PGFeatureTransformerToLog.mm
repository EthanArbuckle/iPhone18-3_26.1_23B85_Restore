@interface PGFeatureTransformerToLog
+ (id)instanceWithParameters:(id)parameters error:(id *)error;
@end

@implementation PGFeatureTransformerToLog

+ (id)instanceWithParameters:(id)parameters error:(id *)error
{
  v16[2] = *MEMORY[0x277D85DE8];
  parametersCopy = parameters;
  if ([parametersCopy count])
  {
    v16[0] = objc_opt_class();
    v16[1] = objc_opt_class();
    v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:2];
    v7 = [PGFeatureTransformerHelper validParameters:parametersCopy ofTypes:v6];

    if (v7)
    {
      v8 = [parametersCopy objectAtIndexedSubscript:0];
      v9 = [parametersCopy objectAtIndexedSubscript:1];
      error = -[PGFeatureSliceTransformer initFromIndex:toIndex:]([PGFeatureTransformerToLog alloc], "initFromIndex:toIndex:", [v8 integerValue], objc_msgSend(v9, "integerValue"));
    }

    else if (error)
    {
      v10 = MEMORY[0x277CCA9B8];
      v14 = *MEMORY[0x277CCA450];
      v15 = @"Failed to instantiate PGFeatureTransformerToLog: incorrect parameters.";
      v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v15 forKeys:&v14 count:1];
      *error = [v10 errorWithDomain:@"com.apple.PhotosGraph.PGFeatureTransformerToLog" code:0 userInfo:v11];

      error = 0;
    }
  }

  else
  {
    error = objc_alloc_init(PGFeatureTransformerToLog);
  }

  v12 = *MEMORY[0x277D85DE8];

  return error;
}

@end