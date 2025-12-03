@interface TRISysdiagnoseLogWriter
- (BOOL)writeSysdiagnoseInfoForProvider:(id)provider error:(id *)error;
- (TRISysdiagnoseLogWriter)initWithDirectory:(id)directory;
@end

@implementation TRISysdiagnoseLogWriter

- (TRISysdiagnoseLogWriter)initWithDirectory:(id)directory
{
  directoryCopy = directory;
  v9.receiver = self;
  v9.super_class = TRISysdiagnoseLogWriter;
  v6 = [(TRISysdiagnoseLogWriter *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_outputDirectory, directory);
  }

  return v7;
}

- (BOOL)writeSysdiagnoseInfoForProvider:(id)provider error:(id *)error
{
  v40[1] = *MEMORY[0x277D85DE8];
  providerCopy = provider;
  v7 = [providerCopy sysdiagnoseLinesWithError:error];
  if (v7)
  {
    v35 = 0;
    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    outputDirectory = [(TRISysdiagnoseLogWriter *)self outputDirectory];
    v10 = [defaultManager fileExistsAtPath:outputDirectory isDirectory:&v35];

    if (v10 && (v35 & 1) != 0)
    {
      outputDirectory2 = [(TRISysdiagnoseLogWriter *)self outputDirectory];
      filename = [providerCopy filename];
      v13 = [outputDirectory2 stringByAppendingPathComponent:filename];

      defaultManager2 = [MEMORY[0x277CCAA00] defaultManager];
      LOBYTE(filename) = [defaultManager2 createFileAtPath:v13 contents:0 attributes:0];

      if (filename)
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
              LODWORD(v22) = [v15 writeData:v23 error:error];

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
        if (!error)
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
        *error = v24 = 0;
      }

LABEL_23:
      goto LABEL_24;
    }

    if (error)
    {
      v25 = MEMORY[0x277CCA9B8];
      v39 = *MEMORY[0x277CCA450];
      v40[0] = @"Provided directory doesn't exist";
      v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v40 forKeys:&v39 count:1];
      [v25 errorWithDomain:@"TRIGeneralErrorDomain" code:12 userInfo:v13];
      *error = v24 = 0;
      goto LABEL_23;
    }
  }

  v24 = 0;
LABEL_24:

  v27 = *MEMORY[0x277D85DE8];
  return v24;
}

@end