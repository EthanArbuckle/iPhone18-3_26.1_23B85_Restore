@interface TRISysdiagnoseLogWriter
- (BOOL)writeSysdiagnoseInfoForProvider:(id)a3 error:(id *)a4;
- (TRISysdiagnoseLogWriter)initWithDirectory:(id)a3;
@end

@implementation TRISysdiagnoseLogWriter

- (TRISysdiagnoseLogWriter)initWithDirectory:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = TRISysdiagnoseLogWriter;
  v6 = [(TRISysdiagnoseLogWriter *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_outputDirectory, a3);
  }

  return v7;
}

- (BOOL)writeSysdiagnoseInfoForProvider:(id)a3 error:(id *)a4
{
  v40[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [v6 sysdiagnoseLinesWithError:a4];
  if (v7)
  {
    v35 = 0;
    v8 = [MEMORY[0x277CCAA00] defaultManager];
    v9 = [(TRISysdiagnoseLogWriter *)self outputDirectory];
    v10 = [v8 fileExistsAtPath:v9 isDirectory:&v35];

    if (v10 && (v35 & 1) != 0)
    {
      v11 = [(TRISysdiagnoseLogWriter *)self outputDirectory];
      v12 = [v6 filename];
      v13 = [v11 stringByAppendingPathComponent:v12];

      v14 = [MEMORY[0x277CCAA00] defaultManager];
      LOBYTE(v12) = [v14 createFileAtPath:v13 contents:0 attributes:0];

      if (v12)
      {
        v15 = [MEMORY[0x277CCA9F8] fileHandleForWritingAtPath:v13];
        v31 = 0u;
        v32 = 0u;
        v33 = 0u;
        v34 = 0u;
        v16 = v7;
        v17 = [v16 countByEnumeratingWithState:&v31 objects:v36 count:16];
        if (v17)
        {
          v18 = v17;
          v29 = v13;
          obj = v16;
          v19 = *v32;
          while (2)
          {
            for (i = 0; i != v18; ++i)
            {
              if (*v32 != v19)
              {
                objc_enumerationMutation(obj);
              }

              v21 = [*(*(&v31 + 1) + 8 * i) stringByAppendingString:@"\n"];
              v22 = objc_autoreleasePoolPush();
              v23 = [v21 dataUsingEncoding:4];
              objc_autoreleasePoolPop(v22);
              LODWORD(v22) = [v15 writeData:v23 error:a4];

              if (!v22)
              {
                v24 = 0;
                goto LABEL_20;
              }
            }

            v18 = [obj countByEnumeratingWithState:&v31 objects:v36 count:16];
            v24 = 1;
            if (v18)
            {
              continue;
            }

            break;
          }

LABEL_20:
          v13 = v29;
          v16 = obj;
        }

        else
        {
          v24 = 1;
        }
      }

      else
      {
        if (!a4)
        {
          v24 = 0;
          goto LABEL_23;
        }

        v15 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Failed to create log file: %@", v13];
        v26 = MEMORY[0x277CCA9B8];
        v37 = *MEMORY[0x277CCA450];
        v38 = v15;
        v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v38 forKeys:&v37 count:1];
        [v26 errorWithDomain:@"TRIGeneralErrorDomain" code:12 userInfo:v16];
        *a4 = v24 = 0;
      }

LABEL_23:
      goto LABEL_24;
    }

    if (a4)
    {
      v25 = MEMORY[0x277CCA9B8];
      v39 = *MEMORY[0x277CCA450];
      v40[0] = @"Provided directory doesn't exist";
      v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v40 forKeys:&v39 count:1];
      [v25 errorWithDomain:@"TRIGeneralErrorDomain" code:12 userInfo:v13];
      *a4 = v24 = 0;
      goto LABEL_23;
    }
  }

  v24 = 0;
LABEL_24:

  v27 = *MEMORY[0x277D85DE8];
  return v24;
}

@end