@interface WFLoggerOsLog
+ (unsigned)convertWFLogLevelToOsLogLevel:(unint64_t)a3;
+ (void)WFLogOsLog:(unint64_t)a3 cfStrMsg:(__CFString *)a4;
- (NSString)getProfileFilePath;
- (id)formatOsLogProfile:(id)a3 levelEnabled:(id)a4 levelPersist:(id)a5 ttlDays:(id)a6 privacy:(id)a7;
- (id)getLevelEnabled:(id)a3 category:(id)a4;
- (id)getLevelPersist:(id)a3 category:(id)a4;
- (id)getLogLifespanInDays;
- (id)getPrivacy:(id)a3 category:(id)a4;
- (id)getTtlDays:(id)a3 category:(id)a4;
- (id)init:(id)a3 subSystem:(__CFString *)a4 category:(__CFString *)a5 logLifespanInDays:(unint64_t)a6 logLevel:(unint64_t)a7 logPrivacy:(unint64_t)a8 dispatchQueue:(id)a9;
- (id)mapLogLevelEnum:(unint64_t)a3;
- (unint64_t)getLogLevelEnable;
- (unint64_t)getLogLevelPersist;
- (unint64_t)getLogPrivacy;
- (unint64_t)getMaxFileSizeInMB;
- (unint64_t)mapLogLevelStr:(id)a3;
- (unsigned)setLevelEnabled:(id)a3 category:(id)a4 value:(id)a5;
- (unsigned)setLevelPersist:(id)a3 category:(id)a4 value:(id)a5;
- (unsigned)setPrivacy:(id)a3 category:(id)a4 value:(id)a5;
- (unsigned)setTtlDays:(id)a3 category:(id)a4 value:(id)a5;
- (unsigned)writeDictToFile:(id)a3 idStr:(id)a4;
- (void)WFLog:(unint64_t)a3 privacy:(unint64_t)a4 cfStrMsg:(__CFString *)a5;
- (void)WFLog:(unint64_t)a3 privacy:(unint64_t)a4 message:(const char *)a5 valist:(char *)a6;
- (void)createOsLogProfile;
- (void)dealloc;
- (void)setLogLevelEnable:(unint64_t)a3;
- (void)setLogLevelPersist:(unint64_t)a3;
- (void)setLogLifespanInDays:(id)a3;
- (void)setLogPrivacy:(unint64_t)a3;
- (void)setMaxSizeInKb:(unint64_t)a3;
@end

@implementation WFLoggerOsLog

- (id)init:(id)a3 subSystem:(__CFString *)a4 category:(__CFString *)a5 logLifespanInDays:(unint64_t)a6 logLevel:(unint64_t)a7 logPrivacy:(unint64_t)a8 dispatchQueue:(id)a9
{
  v39 = *MEMORY[0x277D85DE8];
  v36.receiver = self;
  v36.super_class = WFLoggerOsLog;
  v15 = [(WFLoggerOsLog *)&v36 init];
  v16 = v15;
  if (a5 && a4 && a3 && v15)
  {
    v15->super._ctxt = a3;
    v15->_subSystem = a4;
    v15->_category = a5;
    v15->super._dispatchQueue = a9;
    v15->_osLog = MEMORY[0x277D86220];
    v17 = [(WFLoggerOsLog *)v15 getProfileFilePath];
    if (![(WFLoggerOsLog *)v16 doesProfileExist:v17])
    {
      [(WFLoggerOsLog *)v16 createOsLogProfile];
    }

    if (a6 >= 0x1E)
    {
      v18 = 30;
    }

    else
    {
      v18 = a6;
    }

    v16->_logLifeSpanInDays = v18;
    -[WFLoggerOsLog setLogLifespanInDays:](v16, "setLogLifespanInDays:", [MEMORY[0x277CCABB0] numberWithInt:?]);
    [(WFLoggerOsLog *)v16 setLogLevelEnable:a7];
    [(WFLoggerOsLog *)v16 setLogLevelPersist:a7];
    [(WFLoggerOsLog *)v16 setLogPrivacy:a8];
    v16->_osLog = os_log_create([(__CFString *)v16->_subSystem UTF8String], [(__CFString *)v16->_category UTF8String]);
    if ([(WFLoggerOsLog *)v16 doesProfileExist:v17])
    {
      v19 = [objc_alloc(MEMORY[0x277CBEB38]) initWithContentsOfFile:v17];
      v20 = [objc_msgSend(MEMORY[0x277CCAA00] "defaultManager")];
      v21 = [objc_msgSend(MEMORY[0x277CCAA00] "defaultManager")];
      context = objc_autoreleasePoolPush();
      v22 = MEMORY[0x277CCACA8];
      v23 = [(NSString *)v17 UTF8String];
      if (v20)
      {
        v24 = "YES";
      }

      else
      {
        v24 = "NO";
      }

      if (v21)
      {
        v25 = "YES";
      }

      else
      {
        v25 = "NO";
      }

      v26 = [v22 stringWithFormat:@"OSLog Profile is %s. Readable:%s Writable:%s Custom settings: levelEnabled:%s levelPersist:%s ttlDays:%d privacy:%s", v23, v24, v25, objc_msgSend(-[WFLoggerOsLog getLevelEnabled:category:](v16, "getLevelEnabled:category:", v19, @"DEFAULT-OPTIONS", "UTF8String"), objc_msgSend(-[WFLoggerOsLog getLevelPersist:category:](v16, "getLevelPersist:category:", v19, @"DEFAULT-OPTIONS", "UTF8String"), objc_msgSend(-[WFLoggerOsLog getTtlDays:category:](v16, "getTtlDays:category:", v19, @"DEFAULT-OPTIONS", "unsignedIntValue"), objc_msgSend(-[WFLoggerOsLog getPrivacy:category:](v16, "getPrivacy:category:", v19, @"DEFAULT-OPTIONS", "UTF8String")];
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v38 = v26;
        _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
      }

      objc_autoreleasePoolPop(context);
      v27 = objc_autoreleasePoolPush();
      v28 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@", v19];
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v38 = v28;
        _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v27);
      v16->_currentLevel = [(WFLoggerOsLog *)v16 getLogLevelEnable];
    }

    else
    {
      v31 = objc_autoreleasePoolPush();
      v32 = [MEMORY[0x277CCACA8] stringWithFormat:@"OSLog Profile %s doesn't exist", -[NSString UTF8String](v17, "UTF8String")];
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v38 = v32;
        _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v31);
    }
  }

  else
  {
    v29 = objc_autoreleasePoolPush();
    v30 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s: Failed to init: %p %p %p %p", "-[WFLoggerOsLog init:subSystem:category:logLifespanInDays:logLevel:logPrivacy:dispatchQueue:]", v16, a3, a4, a5];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v38 = v30;
      _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v29);

    v16 = 0;
  }

  v33 = *MEMORY[0x277D85DE8];
  return v16;
}

- (void)dealloc
{
  osLog = self->_osLog;
  if (osLog)
  {

    self->_osLog = 0;
  }

  v4.receiver = self;
  v4.super_class = WFLoggerOsLog;
  [(WFLoggerOsLog *)&v4 dealloc];
}

- (void)WFLog:(unint64_t)a3 privacy:(unint64_t)a4 message:(const char *)a5 valist:(char *)a6
{
  v21 = *MEMORY[0x277D85DE8];
  v11 = [(WFLoggerOsLog *)self convertLogLevel:?];
  if (self->_currentLevel <= a3 && self->_category)
  {
    v12 = v11;
    v13 = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:a5];
    v14 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:v13 arguments:a6];
    osLog = self->_osLog;
    v16 = os_log_type_enabled(osLog, v12);
    if (a4 == 2)
    {
      if (v16)
      {
        v19 = 138543362;
        v20 = v14;
        v17 = "%{public}@";
LABEL_8:
        _os_log_impl(&dword_2332D7000, osLog, v12, v17, &v19, 0xCu);
      }
    }

    else if (v16)
    {
      v19 = 138477827;
      v20 = v14;
      v17 = "%{private}@";
      goto LABEL_8;
    }
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)WFLog:(unint64_t)a3 privacy:(unint64_t)a4 cfStrMsg:(__CFString *)a5
{
  v17 = *MEMORY[0x277D85DE8];
  v9 = [(WFLoggerOsLog *)self convertLogLevel:?];
  if (self->_currentLevel <= a3 && self->_category)
  {
    v10 = v9;
    osLog = self->_osLog;
    v12 = os_log_type_enabled(osLog, v9);
    if (a4 == 2)
    {
      if (v12)
      {
        v15 = 138543362;
        v16 = a5;
        v13 = "%{public}@";
LABEL_8:
        _os_log_impl(&dword_2332D7000, osLog, v10, v13, &v15, 0xCu);
      }
    }

    else if (v12)
    {
      v15 = 138477827;
      v16 = a5;
      v13 = "%{private}@";
      goto LABEL_8;
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

+ (void)WFLogOsLog:(unint64_t)a3 cfStrMsg:(__CFString *)a4
{
  v9 = *MEMORY[0x277D85DE8];
  v5 = [WFLoggerOsLog convertWFLogLevelToOsLogLevel:a3];
  if (os_log_type_enabled(MEMORY[0x277D86220], v5))
  {
    v7 = 138543362;
    v8 = a4;
    _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], v5, "%{public}@", &v7, 0xCu);
  }

  v6 = *MEMORY[0x277D85DE8];
}

+ (unsigned)convertWFLogLevelToOsLogLevel:(unint64_t)a3
{
  v3 = 0x111000010200uLL >> (8 * a3);
  if (a3 >= 6)
  {
    LOBYTE(v3) = 0;
  }

  return v3;
}

- (id)formatOsLogProfile:(id)a3 levelEnabled:(id)a4 levelPersist:(id)a5 ttlDays:(id)a6 privacy:(id)a7
{
  v11 = [MEMORY[0x277CBEB38] dictionary];
  v12 = [MEMORY[0x277CBEB38] dictionary];
  v13 = [MEMORY[0x277CBEB38] dictionary];
  [v13 setObject:a4 forKeyedSubscript:@"Enable"];
  [v13 setObject:a5 forKeyedSubscript:@"Persist"];
  [v12 setObject:v13 forKeyedSubscript:@"Level"];
  [v12 setObject:0 forKeyedSubscript:@"TTL"];
  [v12 setObject:a7 forKeyedSubscript:@"Default-Privacy-Setting"];
  [v12 setObject:objc_msgSend(MEMORY[0x277CCABB0] forKeyedSubscript:{"numberWithBool:", 1), @"Enable-Oversize-Messages"}];
  [v11 setObject:v12 forKeyedSubscript:{objc_msgSend(MEMORY[0x277CCACA8], "stringWithUTF8String:", objc_msgSend(a3, "UTF8String"))}];
  return v11;
}

- (id)getLevelEnabled:(id)a3 category:(id)a4
{
  if (!a3 || !a4)
  {
    return 0;
  }

  v4 = [objc_msgSend(a3 objectForKeyedSubscript:{a4), "objectForKeyedSubscript:", @"Level"}];

  return [v4 objectForKeyedSubscript:@"Enable"];
}

- (id)getLevelPersist:(id)a3 category:(id)a4
{
  if (!a3 || !a4)
  {
    return 0;
  }

  v4 = [objc_msgSend(a3 objectForKeyedSubscript:{a4), "objectForKeyedSubscript:", @"Level"}];

  return [v4 objectForKeyedSubscript:@"Persist"];
}

- (id)getTtlDays:(id)a3 category:(id)a4
{
  if (!a3 || !a4)
  {
    return 0;
  }

  v4 = [objc_msgSend(a3 objectForKeyedSubscript:{a4), "objectForKeyedSubscript:", @"TTL"}];

  return [v4 objectForKeyedSubscript:@"Default"];
}

- (id)getPrivacy:(id)a3 category:(id)a4
{
  if (!a3 || !a4)
  {
    return 0;
  }

  v4 = [a3 objectForKeyedSubscript:a4];

  return [v4 objectForKeyedSubscript:@"Default-Privacy-Setting"];
}

- (unsigned)writeDictToFile:(id)a3 idStr:(id)a4
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = 1;
  if (([a3 writeToFile:-[WFLoggerOsLog getProfileFilePath](self atomically:{"getProfileFilePath"), 1}] & 1) == 0)
  {
    v6 = objc_autoreleasePoolPush();
    v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s NOT updated", objc_msgSend(a4, "UTF8String")];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v11 = v7;
      _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v6);
    v5 = 0;
  }

  v8 = *MEMORY[0x277D85DE8];
  return v5;
}

- (unsigned)setLevelEnabled:(id)a3 category:(id)a4 value:(id)a5
{
  if (!a3)
  {
    return 0;
  }

  if (!a4)
  {
    return 0;
  }

  if (!a5)
  {
    return 0;
  }

  v6 = [(WFLoggerOsLog *)self formatOsLogProfile:a4 levelEnabled:a5 levelPersist:[WFLoggerOsLog getLevelPersist:"getLevelPersist:category:" category:?] ttlDays:[(WFLoggerOsLog *)self getTtlDays:a3 category:a4] privacy:[(WFLoggerOsLog *)self getPrivacy:a3 category:a4]];
  if (!v6)
  {
    return 0;
  }

  return [(WFLoggerOsLog *)self writeDictToFile:v6 idStr:@"LevelEnabled"];
}

- (unsigned)setLevelPersist:(id)a3 category:(id)a4 value:(id)a5
{
  if (!a3)
  {
    return 0;
  }

  if (!a4)
  {
    return 0;
  }

  if (!a5)
  {
    return 0;
  }

  v6 = [(WFLoggerOsLog *)self formatOsLogProfile:a4 levelEnabled:[WFLoggerOsLog getLevelEnabled:"getLevelEnabled:category:" category:?] levelPersist:a5 ttlDays:[(WFLoggerOsLog *)self getTtlDays:a3 category:a4] privacy:[(WFLoggerOsLog *)self getPrivacy:a3 category:a4]];
  if (!v6)
  {
    return 0;
  }

  return [(WFLoggerOsLog *)self writeDictToFile:v6 idStr:@"LevelPersist"];
}

- (unsigned)setTtlDays:(id)a3 category:(id)a4 value:(id)a5
{
  if (!a3)
  {
    return 0;
  }

  if (!a4)
  {
    return 0;
  }

  if (!a5)
  {
    return 0;
  }

  v6 = [(WFLoggerOsLog *)self formatOsLogProfile:a4 levelEnabled:[WFLoggerOsLog getLevelEnabled:"getLevelEnabled:category:" category:?] levelPersist:[(WFLoggerOsLog *)self getLevelPersist:a3 category:a4] ttlDays:a5 privacy:[(WFLoggerOsLog *)self getPrivacy:a3 category:a4]];
  if (!v6)
  {
    return 0;
  }

  return [(WFLoggerOsLog *)self writeDictToFile:v6 idStr:@"TtlDays"];
}

- (unsigned)setPrivacy:(id)a3 category:(id)a4 value:(id)a5
{
  if (!a3)
  {
    return 0;
  }

  if (!a4)
  {
    return 0;
  }

  if (!a5)
  {
    return 0;
  }

  v6 = [(WFLoggerOsLog *)self formatOsLogProfile:a4 levelEnabled:[WFLoggerOsLog getLevelEnabled:"getLevelEnabled:category:" category:?] levelPersist:[(WFLoggerOsLog *)self getLevelPersist:a3 category:a4] ttlDays:[(WFLoggerOsLog *)self getTtlDays:a3 category:a4] privacy:a5];
  if (!v6)
  {
    return 0;
  }

  return [(WFLoggerOsLog *)self writeDictToFile:v6 idStr:@"Privacy"];
}

- (void)createOsLogProfile
{
  v18 = *MEMORY[0x277D85DE8];
  if ([(WFLoggerBase *)self WFIsInternalInstall])
  {
    v3 = @"Debug";
  }

  else
  {
    v3 = @"Default";
  }

  v4 = -[WFLoggerOsLog formatOsLogProfile:levelEnabled:levelPersist:ttlDays:privacy:](self, "formatOsLogProfile:levelEnabled:levelPersist:ttlDays:privacy:", @"DEFAULT-OPTIONS", v3, v3, [MEMORY[0x277CCABB0] numberWithInt:0], @"Public");
  v5 = [(WFLoggerOsLog *)self getProfileFilePath];
  if ([(WFLoggerOsLog *)self doesProfileExist:v5])
  {
    v6 = objc_autoreleasePoolPush();
    v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"File %s already exists", -[NSString UTF8String](v5, "UTF8String")];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v17 = v7;
      v8 = MEMORY[0x277D86220];
LABEL_19:
      _os_log_impl(&dword_2332D7000, v8, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
    }
  }

  else
  {
    v15 = 0;
    if (v4)
    {
      v9 = v4;
    }

    else
    {
      v9 = MEMORY[0x277CBEC10];
    }

    if ([objc_msgSend(MEMORY[0x277CCAC58] dataWithPropertyList:objc_msgSend(MEMORY[0x277CBEB38] format:"dictionaryWithDictionary:" options:v9) error:{200, 0, 0), "writeToFile:options:error:", v5, 1, &v15}])
    {
      v6 = objc_autoreleasePoolPush();
      v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"File %s created with defaults", -[NSString UTF8String](v5, "UTF8String")];
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v17 = v10;
        v8 = MEMORY[0x277D86220];
        goto LABEL_19;
      }
    }

    else
    {
      if (v15)
      {
        v11 = objc_autoreleasePoolPush();
        v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@", v15];
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          *buf = 138543362;
          v17 = v12;
          _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
        }

        objc_autoreleasePoolPop(v11);
      }

      v6 = objc_autoreleasePoolPush();
      v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"File NOT created %s", -[NSString UTF8String](v5, "UTF8String")];
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v17 = v13;
        v8 = MEMORY[0x277D86220];
        goto LABEL_19;
      }
    }
  }

  objc_autoreleasePoolPop(v6);
  v14 = *MEMORY[0x277D85DE8];
}

- (NSString)getProfileFilePath
{
  v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@", @"/Library/Preferences/Logging/Subsystems/"];
  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s.plist", -[__CFString UTF8String](self->_subSystem, "UTF8String")];

  return [v3 stringByAppendingPathComponent:v4];
}

- (void)setLogLifespanInDays:(id)a3
{
  v5 = [(WFLoggerOsLog *)self getProfileFilePath];
  if ([(WFLoggerOsLog *)self doesProfileExist:v5])
  {
    v6 = [objc_alloc(MEMORY[0x277CBEB38]) initWithContentsOfFile:v5];
    [(WFLoggerOsLog *)self setTtlDays:v6 category:@"DEFAULT-OPTIONS" value:a3];
  }
}

- (id)getLogLifespanInDays
{
  v3 = [(WFLoggerOsLog *)self getProfileFilePath];
  if (![(WFLoggerOsLog *)self doesProfileExist:v3])
  {
    return 0;
  }

  v4 = [objc_alloc(MEMORY[0x277CBEB38]) initWithContentsOfFile:v3];
  v5 = [(WFLoggerOsLog *)self getTtlDays:v4 category:@"DEFAULT-OPTIONS"];

  return v5;
}

- (void)setLogPrivacy:(unint64_t)a3
{
  v5 = [(WFLoggerOsLog *)self getProfileFilePath];
  if ([(WFLoggerOsLog *)self doesProfileExist:v5])
  {
    v6 = [objc_alloc(MEMORY[0x277CBEB38]) initWithContentsOfFile:v5];
    v8 = v6;
    if (a3 == 2)
    {
      v7 = @"Public";
    }

    else
    {
      v7 = @"Private";
    }

    [(WFLoggerOsLog *)self setPrivacy:v6 category:@"DEFAULT-OPTIONS" value:v7];
  }
}

- (unint64_t)getLogPrivacy
{
  v3 = [(WFLoggerOsLog *)self getProfileFilePath];
  if (![(WFLoggerOsLog *)self doesProfileExist:v3])
  {
    return 2;
  }

  v4 = [objc_alloc(MEMORY[0x277CBEB38]) initWithContentsOfFile:v3];
  if ([-[WFLoggerOsLog getPrivacy:category:](self getPrivacy:v4 category:{@"DEFAULT-OPTIONS", "isEqualToString:", @"Public"}])
  {
    v5 = 2;
  }

  else
  {
    v5 = 1;
  }

  return v5;
}

- (void)setLogLevelEnable:(unint64_t)a3
{
  v5 = [(WFLoggerOsLog *)self getProfileFilePath];
  if ([(WFLoggerOsLog *)self doesProfileExist:v5])
  {
    v6 = [objc_alloc(MEMORY[0x277CBEB38]) initWithContentsOfFile:v5];
    [(WFLoggerOsLog *)self setLevelEnabled:v6 category:@"DEFAULT-OPTIONS" value:[(WFLoggerOsLog *)self mapLogLevelEnum:a3]];
    self->_currentLevel = [(WFLoggerOsLog *)self getLogLevelEnable];
  }
}

- (unint64_t)getLogLevelEnable
{
  v3 = [(WFLoggerOsLog *)self getProfileFilePath];
  if (![(WFLoggerOsLog *)self doesProfileExist:v3])
  {
    return 3;
  }

  v4 = [objc_alloc(MEMORY[0x277CBEB38]) initWithContentsOfFile:v3];
  v5 = [(WFLoggerOsLog *)self mapLogLevelStr:[(WFLoggerOsLog *)self getLevelEnabled:v4 category:@"DEFAULT-OPTIONS"]];

  return v5;
}

- (void)setLogLevelPersist:(unint64_t)a3
{
  v5 = [(WFLoggerOsLog *)self getProfileFilePath];
  if ([(WFLoggerOsLog *)self doesProfileExist:v5])
  {
    v6 = [objc_alloc(MEMORY[0x277CBEB38]) initWithContentsOfFile:v5];
    [(WFLoggerOsLog *)self setLevelPersist:v6 category:@"DEFAULT-OPTIONS" value:[(WFLoggerOsLog *)self mapLogLevelEnum:a3]];
  }
}

- (unint64_t)getLogLevelPersist
{
  v3 = [(WFLoggerOsLog *)self getProfileFilePath];
  if (![(WFLoggerOsLog *)self doesProfileExist:v3])
  {
    return 3;
  }

  v4 = [objc_alloc(MEMORY[0x277CBEB38]) initWithContentsOfFile:v3];
  v5 = [(WFLoggerOsLog *)self mapLogLevelStr:[(WFLoggerOsLog *)self getLevelPersist:v4 category:@"DEFAULT-OPTIONS"]];

  return v5;
}

- (id)mapLogLevelEnum:(unint64_t)a3
{
  v3 = @"Default";
  if (a3 == 2)
  {
    v3 = @"Info";
  }

  if (a3 == 1)
  {
    return @"Debug";
  }

  else
  {
    return v3;
  }
}

- (unint64_t)mapLogLevelStr:(id)a3
{
  if ([a3 isEqualToString:@"Debug"])
  {
    return 1;
  }

  if ([a3 isEqualToString:@"Info"])
  {
    return 2;
  }

  [a3 isEqualToString:@"Default"];
  return 3;
}

- (void)setMaxSizeInKb:(unint64_t)a3
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s not applicable", "-[WFLoggerOsLog setMaxSizeInKb:]"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    *buf = 138543362;
    v7 = v4;
    _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  v5 = *MEMORY[0x277D85DE8];
}

- (unint64_t)getMaxFileSizeInMB
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s not applicable", "-[WFLoggerOsLog getMaxFileSizeInMB]"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    *buf = 138543362;
    v7 = v3;
    _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v2);
  v4 = *MEMORY[0x277D85DE8];
  return 0;
}

@end