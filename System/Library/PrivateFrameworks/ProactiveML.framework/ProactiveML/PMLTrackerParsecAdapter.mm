@interface PMLTrackerParsecAdapter
+ (BOOL)_writeDataForTransparency:(id)transparency;
+ (id)wrappedMessage:(id)message;
- (void)postMetricId:(unsigned int)id message:(id)message;
@end

@implementation PMLTrackerParsecAdapter

- (void)postMetricId:(unsigned int)id message:(id)message
{
  v17 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  v5 = [PMLTrackerParsecAdapter wrappedMessage:messageCopy];
  if ([objc_opt_class() _writeDataForTransparency:v5])
  {
    data = [v5 data];
    v7 = [objc_alloc(MEMORY[0x277D4C310]) initWithType:5 data:data];
    v8 = PML_LogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v11 = objc_opt_class();
      v12 = v11;
      v13 = 138412546;
      v14 = v11;
      v15 = 2048;
      v16 = [data length];
      _os_log_debug_impl(&dword_260D68000, v8, OS_LOG_TYPE_DEBUG, "Sending %@ (size: %tu) to Parsec.", &v13, 0x16u);
    }

    mEMORY[0x277D007C0] = [MEMORY[0x277D007C0] sharedSession];
    [mEMORY[0x277D007C0] sendCustomFeedback:v7];
  }

  else
  {
    data = PML_LogHandle();
    if (os_log_type_enabled(data, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v13) = 0;
      _os_log_error_impl(&dword_260D68000, data, OS_LOG_TYPE_ERROR, "Failed writing analytics log for data transparency. Skip upload", &v13, 2u);
    }
  }

  v10 = *MEMORY[0x277D85DE8];
}

+ (id)wrappedMessage:(id)message
{
  v10 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  v4 = objc_opt_new();
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v4 setEvaluation:messageCopy];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v4 setLogRegWeights:messageCopy];
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [v4 setLogRegGradient:messageCopy];
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v4 setLinRegFeatureMatrix:messageCopy];
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [v4 setLinRegObjectiveFeatures:messageCopy];
          }

          else
          {
            v5 = PML_LogHandle();
            if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              v9 = messageCopy;
              _os_log_error_impl(&dword_260D68000, v5, OS_LOG_TYPE_ERROR, "Unsupported proto buf message: %@", buf, 0xCu);
            }

            [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE658] format:{@"Unsupported proto buf message: %@", messageCopy}];
          }
        }
      }
    }
  }

  v6 = *MEMORY[0x277D85DE8];

  return v4;
}

+ (BOOL)_writeDataForTransparency:(id)transparency
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CCAAA0];
  dictionaryRepresentation = [transparency dictionaryRepresentation];
  v13 = 0;
  v5 = [v3 dataWithJSONObject:dictionaryRepresentation options:1 error:&v13];
  v6 = v13;

  if (v5)
  {
    v12 = v5;
    v7 = OSAWriteLogForSubmission();
    v8 = v12;
  }

  else
  {
    v8 = PML_LogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      localizedDescription = [v6 localizedDescription];
      *buf = 138412290;
      v15 = localizedDescription;
      _os_log_error_impl(&dword_260D68000, v8, OS_LOG_TYPE_ERROR, "Error serializing trystero envelope to JSON: %@", buf, 0xCu);
    }

    v7 = 0;
  }

  v9 = *MEMORY[0x277D85DE8];
  return v7;
}

@end