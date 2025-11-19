@interface RTPredictedContextUtility
+ (BOOL)deleteModelWithOutError:(id *)a3;
+ (BOOL)writeModel:(id)a3 error:(id *)a4;
+ (id)modelPath;
+ (id)readAlgorithmStateWithError:(id *)a3;
+ (id)readModelWithError:(id *)a3;
@end

@implementation RTPredictedContextUtility

+ (id)modelPath
{
  v2 = [MEMORY[0x277CCAA00] routineCacheDirectoryPath];
  v3 = [v2 stringByAppendingPathComponent:@"PredictedContext.bin"];

  return v3;
}

+ (id)readModelWithError:(id *)a3
{
  v4 = [objc_opt_class() modelPath];
  v5 = [MEMORY[0x277CCAA00] defaultManager];
  v6 = [v5 fileExistsAtPath:v4];

  if (!v6)
  {
    v7 = 0;
    v8 = 0;
    if (!a3)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v10 = 0;
  v7 = [MEMORY[0x277CBEA90] dataWithContentsOfFile:v4 options:0 error:&v10];
  v8 = v10;
  if (a3)
  {
LABEL_5:
    v8 = v8;
    *a3 = v8;
  }

LABEL_6:

  return v7;
}

+ (id)readAlgorithmStateWithError:(id *)a3
{
  v9 = 0;
  v4 = [objc_opt_class() readModelWithError:&v9];
  v5 = v9;
  if (v4)
  {
    v6 = [objc_alloc(MEMORY[0x277D3F850]) initWithData:v4];
    if (!a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v6 = 0;
  if (a3)
  {
LABEL_3:
    v7 = v5;
    *a3 = v5;
  }

LABEL_4:

  return v6;
}

+ (BOOL)writeModel:(id)a3 error:(id *)a4
{
  v20[1] = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (v5 || !a4)
  {
    v7 = +[RTPredictedContextUtility modelPath];
    v17 = *MEMORY[0x277CCA1B0];
    v18 = *MEMORY[0x277CCA1A0];
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v18 forKeys:&v17 count:1];
    v10 = [MEMORY[0x277CCAA00] defaultManager];
    LODWORD(v8) = [v10 createFileAtPath:v7 contents:v5 attributes:v9];

    if (a4 && !v8)
    {
      v11 = MEMORY[0x277CCA9B8];
      v12 = *MEMORY[0x277D01448];
      v15 = *MEMORY[0x277CCA450];
      v16 = @"failed to write model";
      v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v16 forKeys:&v15 count:1];
      *a4 = [v11 errorWithDomain:v12 code:7 userInfo:v13];
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
    *a4 = LOBYTE(v8) = 0;
  }

  return v8;
}

+ (BOOL)deleteModelWithOutError:(id *)a3
{
  v17[1] = *MEMORY[0x277D85DE8];
  v4 = +[RTPredictedContextUtility modelPath];
  v5 = [MEMORY[0x277CCAA00] defaultManager];
  v6 = [v5 fileExistsAtPath:v4];

  if (v6)
  {
    v7 = [MEMORY[0x277CCAA00] defaultManager];
    v15 = 0;
    v8 = [v7 removeItemAtPath:v4 error:&v15];
    v9 = v15;

    if (a3 && (v8 & 1) == 0)
    {
      v10 = v9;
      v8 = 0;
      *a3 = v9;
    }
  }

  else
  {
    if (a3)
    {
      v11 = MEMORY[0x277CCA9B8];
      v12 = *MEMORY[0x277D01448];
      v16 = *MEMORY[0x277CCA450];
      v17[0] = @"Model file doesn't exist.";
      v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:&v16 count:1];
      *a3 = [v11 errorWithDomain:v12 code:0 userInfo:v13];
    }

    v9 = 0;
    v8 = 0;
  }

  return v8;
}

@end