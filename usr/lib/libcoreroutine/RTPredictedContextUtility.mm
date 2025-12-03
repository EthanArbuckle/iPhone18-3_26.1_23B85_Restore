@interface RTPredictedContextUtility
+ (BOOL)deleteModelWithOutError:(id *)error;
+ (BOOL)writeModel:(id)model error:(id *)error;
+ (id)modelPath;
+ (id)readAlgorithmStateWithError:(id *)error;
+ (id)readModelWithError:(id *)error;
@end

@implementation RTPredictedContextUtility

+ (id)modelPath
{
  routineCacheDirectoryPath = [MEMORY[0x277CCAA00] routineCacheDirectoryPath];
  v3 = [routineCacheDirectoryPath stringByAppendingPathComponent:@"PredictedContext.bin"];

  return v3;
}

+ (id)readModelWithError:(id *)error
{
  modelPath = [objc_opt_class() modelPath];
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v6 = [defaultManager fileExistsAtPath:modelPath];

  if (!v6)
  {
    v7 = 0;
    v8 = 0;
    if (!error)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v10 = 0;
  v7 = [MEMORY[0x277CBEA90] dataWithContentsOfFile:modelPath options:0 error:&v10];
  v8 = v10;
  if (error)
  {
LABEL_5:
    v8 = v8;
    *error = v8;
  }

LABEL_6:

  return v7;
}

+ (id)readAlgorithmStateWithError:(id *)error
{
  v9 = 0;
  v4 = [objc_opt_class() readModelWithError:&v9];
  v5 = v9;
  if (v4)
  {
    v6 = [objc_alloc(MEMORY[0x277D3F850]) initWithData:v4];
    if (!error)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v6 = 0;
  if (error)
  {
LABEL_3:
    v7 = v5;
    *error = v5;
  }

LABEL_4:

  return v6;
}

+ (BOOL)writeModel:(id)model error:(id *)error
{
  v20[1] = *MEMORY[0x277D85DE8];
  modelCopy = model;
  if (modelCopy || !error)
  {
    v7 = +[RTPredictedContextUtility modelPath];
    v17 = *MEMORY[0x277CCA1B0];
    v18 = *MEMORY[0x277CCA1A0];
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v18 forKeys:&v17 count:1];
    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    LODWORD(v8) = [defaultManager createFileAtPath:v7 contents:modelCopy attributes:v9];

    if (error && !v8)
    {
      v11 = MEMORY[0x277CCA9B8];
      v12 = *MEMORY[0x277D01448];
      v15 = *MEMORY[0x277CCA450];
      v16 = @"failed to write model";
      v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v16 forKeys:&v15 count:1];
      *error = [v11 errorWithDomain:v12 code:7 userInfo:v13];
    }
  }

  else
  {
    v8 = MEMORY[0x277CCA9B8];
    v6 = *MEMORY[0x277D01448];
    v19 = *MEMORY[0x277CCA450];
    v20[0] = @"nil model";
    v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:&v19 count:1];
    [v8 errorWithDomain:v6 code:7 userInfo:v7];
    *error = LOBYTE(v8) = 0;
  }

  return v8;
}

+ (BOOL)deleteModelWithOutError:(id *)error
{
  v17[1] = *MEMORY[0x277D85DE8];
  v4 = +[RTPredictedContextUtility modelPath];
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v6 = [defaultManager fileExistsAtPath:v4];

  if (v6)
  {
    defaultManager2 = [MEMORY[0x277CCAA00] defaultManager];
    v15 = 0;
    v8 = [defaultManager2 removeItemAtPath:v4 error:&v15];
    v9 = v15;

    if (error && (v8 & 1) == 0)
    {
      v10 = v9;
      v8 = 0;
      *error = v9;
    }
  }

  else
  {
    if (error)
    {
      v11 = MEMORY[0x277CCA9B8];
      v12 = *MEMORY[0x277D01448];
      v16 = *MEMORY[0x277CCA450];
      v17[0] = @"Model file doesn't exist.";
      v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:&v16 count:1];
      *error = [v11 errorWithDomain:v12 code:0 userInfo:v13];
    }

    v9 = 0;
    v8 = 0;
  }

  return v8;
}

@end