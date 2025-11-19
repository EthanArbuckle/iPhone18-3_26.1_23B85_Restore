@interface SNLPITFMModelInfo
+ (id)stringForModelType:(unint64_t)a3;
- (SNLPITFMModelInfo)initWithType:(unint64_t)a3 loggingComponent:(int)a4 errorDomain:(id)a5;
@end

@implementation SNLPITFMModelInfo

- (SNLPITFMModelInfo)initWithType:(unint64_t)a3 loggingComponent:(int)a4 errorDomain:(id)a5
{
  v25 = *MEMORY[0x277D85DE8];
  v9 = a5;
  v20.receiver = self;
  v20.super_class = SNLPITFMModelInfo;
  v10 = [(SNLPITFMModelInfo *)&v20 init];
  v11 = v10;
  if (v10)
  {
    v10->_loggingComponent = a4;
    v10->_type = a3;
    objc_storeStrong(&v10->_errorDomain, a5);
    v12 = MEMORY[0x277CCACA8];
    loggingComponent = v11->_loggingComponent;
    if (loggingComponent >= 8)
    {
      v15 = SNLPOSLoggerForCategory(4);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v22 = "<UNDEFINED_COMPONENT>";
        v23 = 2048;
        v24 = loggingComponent;
        _os_log_impl(&dword_22284A000, v15, OS_LOG_TYPE_ERROR, "[%s] The component %zu is invalid", buf, 0x16u);
      }

      v14 = "<UNDEFINED_COMPONENT>";
    }

    else
    {
      v14 = off_2784B6F30[loggingComponent];
    }

    v16 = [v12 stringWithUTF8String:v14];
    loggingComponentString = v11->_loggingComponentString;
    v11->_loggingComponentString = v16;
  }

  v18 = *MEMORY[0x277D85DE8];
  return v11;
}

+ (id)stringForModelType:(unint64_t)a3
{
  if (a3 > 2)
  {
    return 0;
  }

  else
  {
    return off_2784B6E98[a3];
  }
}

@end