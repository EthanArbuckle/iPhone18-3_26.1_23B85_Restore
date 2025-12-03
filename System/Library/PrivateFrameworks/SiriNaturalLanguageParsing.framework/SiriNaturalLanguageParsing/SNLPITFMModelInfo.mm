@interface SNLPITFMModelInfo
+ (id)stringForModelType:(unint64_t)type;
- (SNLPITFMModelInfo)initWithType:(unint64_t)type loggingComponent:(int)component errorDomain:(id)domain;
@end

@implementation SNLPITFMModelInfo

- (SNLPITFMModelInfo)initWithType:(unint64_t)type loggingComponent:(int)component errorDomain:(id)domain
{
  v25 = *MEMORY[0x277D85DE8];
  domainCopy = domain;
  v20.receiver = self;
  v20.super_class = SNLPITFMModelInfo;
  v10 = [(SNLPITFMModelInfo *)&v20 init];
  v11 = v10;
  if (v10)
  {
    v10->_loggingComponent = component;
    v10->_type = type;
    objc_storeStrong(&v10->_errorDomain, domain);
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

+ (id)stringForModelType:(unint64_t)type
{
  if (type > 2)
  {
    return 0;
  }

  else
  {
    return off_2784B6E98[type];
  }
}

@end