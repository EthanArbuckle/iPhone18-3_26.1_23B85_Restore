@interface WFLoggerOsLog
+ (unsigned)convertWFLogLevelToOsLogLevel:(unint64_t)level;
+ (void)WFLogOsLog:(unint64_t)log cfStrMsg:(__CFString *)msg;
- (NSString)getProfileFilePath;
- (id)formatOsLogProfile:(id)profile levelEnabled:(id)enabled levelPersist:(id)persist ttlDays:(id)days privacy:(id)privacy;
- (id)getLevelEnabled:(id)enabled category:(id)category;
- (id)getLevelPersist:(id)persist category:(id)category;
- (id)getLogLifespanInDays;
- (id)getPrivacy:(id)privacy category:(id)category;
- (id)getTtlDays:(id)days category:(id)category;
- (id)init:(id)init subSystem:(__CFString *)system category:(__CFString *)category logLifespanInDays:(unint64_t)days logLevel:(unint64_t)level logPrivacy:(unint64_t)privacy dispatchQueue:(id)queue;
- (id)mapLogLevelEnum:(unint64_t)enum;
- (unint64_t)getLogLevelEnable;
- (unint64_t)getLogLevelPersist;
- (unint64_t)getLogPrivacy;
- (unint64_t)getMaxFileSizeInMB;
- (unint64_t)mapLogLevelStr:(id)str;
- (unsigned)setLevelEnabled:(id)enabled category:(id)category value:(id)value;
- (unsigned)setLevelPersist:(id)persist category:(id)category value:(id)value;
- (unsigned)setPrivacy:(id)privacy category:(id)category value:(id)value;
- (unsigned)setTtlDays:(id)days category:(id)category value:(id)value;
- (unsigned)writeDictToFile:(id)file idStr:(id)str;
- (void)WFLog:(unint64_t)log privacy:(unint64_t)privacy cfStrMsg:(__CFString *)msg;
- (void)WFLog:(unint64_t)log privacy:(unint64_t)privacy message:(const char *)message valist:(char *)valist;
- (void)createOsLogProfile;
- (void)dealloc;
- (void)setLogLevelEnable:(unint64_t)enable;
- (void)setLogLevelPersist:(unint64_t)persist;
- (void)setLogLifespanInDays:(id)days;
- (void)setLogPrivacy:(unint64_t)privacy;
- (void)setMaxSizeInKb:(unint64_t)kb;
@end

@implementation WFLoggerOsLog

- (id)init:(id)init subSystem:(__CFString *)system category:(__CFString *)category logLifespanInDays:(unint64_t)days logLevel:(unint64_t)level logPrivacy:(unint64_t)privacy dispatchQueue:(id)queue
{
  v39 = *MEMORY[0x277D85DE8];
  v36.receiver = self;
  v36.super_class = WFLoggerOsLog;
  v15 = [(WFLoggerOsLog *)&v36 init];
  v16 = v15;
  if (category && system && init && v15)
  {
    v15->super._ctxt = init;
    v15->_subSystem = system;
    v15->_category = category;
    v15->super._dispatchQueue = queue;
    v15->_osLog = MEMORY[0x277D86220];
    getProfileFilePath = [(WFLoggerOsLog *)v15 getProfileFilePath];
    if (![(WFLoggerOsLog *)v16 doesProfileExist:getProfileFilePath])
    {
      [(WFLoggerOsLog *)v16 createOsLogProfile];
    }

    if (days >= 0x1E)
    {
      daysCopy = 30;
    }

    else
    {
      daysCopy = days;
    }

    v16->_logLifeSpanInDays = daysCopy;
    -[WFLoggerOsLog setLogLifespanInDays:](v16, "setLogLifespanInDays:", [MEMORY[0x277CCABB0] numberWithInt:?]);
    [(WFLoggerOsLog *)v16 setLogLevelEnable:level];
    [(WFLoggerOsLog *)v16 setLogLevelPersist:level];
    [(WFLoggerOsLog *)v16 setLogPrivacy:privacy];
    v16->_osLog = os_log_create([(__CFString *)v16->_subSystem UTF8String], [(__CFString *)v16->_category UTF8String]);
    if ([(WFLoggerOsLog *)v16 doesProfileExist:getProfileFilePath])
    {
      v19 = [objc_alloc(MEMORY[0x277CBEB38]) initWithContentsOfFile:getProfileFilePath];
      v20 = [objc_msgSend(MEMORY[0x277CCAA00] "defaultManager")];
      v21 = [objc_msgSend(MEMORY[0x277CCAA00] "defaultManager")];
      context = objc_autoreleasePoolPush();
      v22 = MEMORY[0x277CCACA8];
      uTF8String = [(NSString *)getProfileFilePath UTF8String];
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

      v26 = [v22 stringWithFormat:@"OSLog Profile is %s. Readable:%s Writable:%s Custom settings: levelEnabled:%s levelPersist:%s ttlDays:%d privacy:%s", uTF8String, v24, v25, objc_msgSend(-[WFLoggerOsLog getLevelEnabled:category:](v16, "getLevelEnabled:category:", v19, @"DEFAULT-OPTIONS", "UTF8String"), objc_msgSend(-[WFLoggerOsLog getLevelPersist:category:](v16, "getLevelPersist:category:", v19, @"DEFAULT-OPTIONS", "UTF8String"), objc_msgSend(-[WFLoggerOsLog getTtlDays:category:](v16, "getTtlDays:category:", v19, @"DEFAULT-OPTIONS", "unsignedIntValue"), objc_msgSend(-[WFLoggerOsLog getPrivacy:category:](v16, "getPrivacy:category:", v19, @"DEFAULT-OPTIONS", "UTF8String")];
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
      v32 = [MEMORY[0x277CCACA8] stringWithFormat:@"OSLog Profile %s doesn't exist", -[NSString UTF8String](getProfileFilePath, "UTF8String")];
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
    category = [MEMORY[0x277CCACA8] stringWithFormat:@"%s: Failed to init: %p %p %p %p", "-[WFLoggerOsLog init:subSystem:category:logLifespanInDays:logLevel:logPrivacy:dispatchQueue:]", v16, init, system, category];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v38 = category;
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

- (void)WFLog:(unint64_t)log privacy:(unint64_t)privacy message:(const char *)message valist:(char *)valist
{
  v21 = *MEMORY[0x277D85DE8];
  v11 = [(WFLoggerOsLog *)self convertLogLevel:?];
  if (self->_currentLevel <= log && self->_category)
  {
    v12 = v11;
    v13 = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:message];
    v14 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:v13 arguments:valist];
    osLog = self->_osLog;
    v16 = os_log_type_enabled(osLog, v12);
    if (privacy == 2)
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

- (void)WFLog:(unint64_t)log privacy:(unint64_t)privacy cfStrMsg:(__CFString *)msg
{
  v17 = *MEMORY[0x277D85DE8];
  v9 = [(WFLoggerOsLog *)self convertLogLevel:?];
  if (self->_currentLevel <= log && self->_category)
  {
    v10 = v9;
    osLog = self->_osLog;
    v12 = os_log_type_enabled(osLog, v9);
    if (privacy == 2)
    {
      if (v12)
      {
        v15 = 138543362;
        msgCopy2 = msg;
        v13 = "%{public}@";
LABEL_8:
        _os_log_impl(&dword_2332D7000, osLog, v10, v13, &v15, 0xCu);
      }
    }

    else if (v12)
    {
      v15 = 138477827;
      msgCopy2 = msg;
      v13 = "%{private}@";
      goto LABEL_8;
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

+ (void)WFLogOsLog:(unint64_t)log cfStrMsg:(__CFString *)msg
{
  v9 = *MEMORY[0x277D85DE8];
  v5 = [WFLoggerOsLog convertWFLogLevelToOsLogLevel:log];
  if (os_log_type_enabled(MEMORY[0x277D86220], v5))
  {
    v7 = 138543362;
    msgCopy = msg;
    _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], v5, "%{public}@", &v7, 0xCu);
  }

  v6 = *MEMORY[0x277D85DE8];
}

+ (unsigned)convertWFLogLevelToOsLogLevel:(unint64_t)level
{
  v3 = 0x111000010200uLL >> (8 * level);
  if (level >= 6)
  {
    LOBYTE(v3) = 0;
  }

  return v3;
}

- (id)formatOsLogProfile:(id)profile levelEnabled:(id)enabled levelPersist:(id)persist ttlDays:(id)days privacy:(id)privacy
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  dictionary2 = [MEMORY[0x277CBEB38] dictionary];
  dictionary3 = [MEMORY[0x277CBEB38] dictionary];
  [dictionary3 setObject:enabled forKeyedSubscript:@"Enable"];
  [dictionary3 setObject:persist forKeyedSubscript:@"Persist"];
  [dictionary2 setObject:dictionary3 forKeyedSubscript:@"Level"];
  [dictionary2 setObject:0 forKeyedSubscript:@"TTL"];
  [dictionary2 setObject:privacy forKeyedSubscript:@"Default-Privacy-Setting"];
  [dictionary2 setObject:objc_msgSend(MEMORY[0x277CCABB0] forKeyedSubscript:{"numberWithBool:", 1), @"Enable-Oversize-Messages"}];
  [dictionary setObject:dictionary2 forKeyedSubscript:{objc_msgSend(MEMORY[0x277CCACA8], "stringWithUTF8String:", objc_msgSend(profile, "UTF8String"))}];
  return dictionary;
}

- (id)getLevelEnabled:(id)enabled category:(id)category
{
  if (!enabled || !category)
  {
    return 0;
  }

  v4 = [objc_msgSend(enabled objectForKeyedSubscript:{category), "objectForKeyedSubscript:", @"Level"}];

  return [v4 objectForKeyedSubscript:@"Enable"];
}

- (id)getLevelPersist:(id)persist category:(id)category
{
  if (!persist || !category)
  {
    return 0;
  }

  v4 = [objc_msgSend(persist objectForKeyedSubscript:{category), "objectForKeyedSubscript:", @"Level"}];

  return [v4 objectForKeyedSubscript:@"Persist"];
}

- (id)getTtlDays:(id)days category:(id)category
{
  if (!days || !category)
  {
    return 0;
  }

  v4 = [objc_msgSend(days objectForKeyedSubscript:{category), "objectForKeyedSubscript:", @"TTL"}];

  return [v4 objectForKeyedSubscript:@"Default"];
}

- (id)getPrivacy:(id)privacy category:(id)category
{
  if (!privacy || !category)
  {
    return 0;
  }

  v4 = [privacy objectForKeyedSubscript:category];

  return [v4 objectForKeyedSubscript:@"Default-Privacy-Setting"];
}

- (unsigned)writeDictToFile:(id)file idStr:(id)str
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = 1;
  if (([file writeToFile:-[WFLoggerOsLog getProfileFilePath](self atomically:{"getProfileFilePath"), 1}] & 1) == 0)
  {
    v6 = objc_autoreleasePoolPush();
    v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s NOT updated", objc_msgSend(str, "UTF8String")];
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

- (unsigned)setLevelEnabled:(id)enabled category:(id)category value:(id)value
{
  if (!enabled)
  {
    return 0;
  }

  if (!category)
  {
    return 0;
  }

  if (!value)
  {
    return 0;
  }

  v6 = [(WFLoggerOsLog *)self formatOsLogProfile:category levelEnabled:value levelPersist:[WFLoggerOsLog getLevelPersist:"getLevelPersist:category:" category:?] ttlDays:[(WFLoggerOsLog *)self getTtlDays:enabled category:category] privacy:[(WFLoggerOsLog *)self getPrivacy:enabled category:category]];
  if (!v6)
  {
    return 0;
  }

  return [(WFLoggerOsLog *)self writeDictToFile:v6 idStr:@"LevelEnabled"];
}

- (unsigned)setLevelPersist:(id)persist category:(id)category value:(id)value
{
  if (!persist)
  {
    return 0;
  }

  if (!category)
  {
    return 0;
  }

  if (!value)
  {
    return 0;
  }

  v6 = [(WFLoggerOsLog *)self formatOsLogProfile:category levelEnabled:[WFLoggerOsLog getLevelEnabled:"getLevelEnabled:category:" category:?] levelPersist:value ttlDays:[(WFLoggerOsLog *)self getTtlDays:persist category:category] privacy:[(WFLoggerOsLog *)self getPrivacy:persist category:category]];
  if (!v6)
  {
    return 0;
  }

  return [(WFLoggerOsLog *)self writeDictToFile:v6 idStr:@"LevelPersist"];
}

- (unsigned)setTtlDays:(id)days category:(id)category value:(id)value
{
  if (!days)
  {
    return 0;
  }

  if (!category)
  {
    return 0;
  }

  if (!value)
  {
    return 0;
  }

  v6 = [(WFLoggerOsLog *)self formatOsLogProfile:category levelEnabled:[WFLoggerOsLog getLevelEnabled:"getLevelEnabled:category:" category:?] levelPersist:[(WFLoggerOsLog *)self getLevelPersist:days category:category] ttlDays:value privacy:[(WFLoggerOsLog *)self getPrivacy:days category:category]];
  if (!v6)
  {
    return 0;
  }

  return [(WFLoggerOsLog *)self writeDictToFile:v6 idStr:@"TtlDays"];
}

- (unsigned)setPrivacy:(id)privacy category:(id)category value:(id)value
{
  if (!privacy)
  {
    return 0;
  }

  if (!category)
  {
    return 0;
  }

  if (!value)
  {
    return 0;
  }

  v6 = [(WFLoggerOsLog *)self formatOsLogProfile:category levelEnabled:[WFLoggerOsLog getLevelEnabled:"getLevelEnabled:category:" category:?] levelPersist:[(WFLoggerOsLog *)self getLevelPersist:privacy category:category] ttlDays:[(WFLoggerOsLog *)self getTtlDays:privacy category:category] privacy:value];
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
  getProfileFilePath = [(WFLoggerOsLog *)self getProfileFilePath];
  if ([(WFLoggerOsLog *)self doesProfileExist:getProfileFilePath])
  {
    v6 = objc_autoreleasePoolPush();
    v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"File %s already exists", -[NSString UTF8String](getProfileFilePath, "UTF8String")];
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

    if ([objc_msgSend(MEMORY[0x277CCAC58] dataWithPropertyList:objc_msgSend(MEMORY[0x277CBEB38] format:"dictionaryWithDictionary:" options:v9) error:{200, 0, 0), "writeToFile:options:error:", getProfileFilePath, 1, &v15}])
    {
      v6 = objc_autoreleasePoolPush();
      v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"File %s created with defaults", -[NSString UTF8String](getProfileFilePath, "UTF8String")];
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
      v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"File NOT created %s", -[NSString UTF8String](getProfileFilePath, "UTF8String")];
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

- (void)setLogLifespanInDays:(id)days
{
  getProfileFilePath = [(WFLoggerOsLog *)self getProfileFilePath];
  if ([(WFLoggerOsLog *)self doesProfileExist:getProfileFilePath])
  {
    v6 = [objc_alloc(MEMORY[0x277CBEB38]) initWithContentsOfFile:getProfileFilePath];
    [(WFLoggerOsLog *)self setTtlDays:v6 category:@"DEFAULT-OPTIONS" value:days];
  }
}

- (id)getLogLifespanInDays
{
  getProfileFilePath = [(WFLoggerOsLog *)self getProfileFilePath];
  if (![(WFLoggerOsLog *)self doesProfileExist:getProfileFilePath])
  {
    return 0;
  }

  v4 = [objc_alloc(MEMORY[0x277CBEB38]) initWithContentsOfFile:getProfileFilePath];
  v5 = [(WFLoggerOsLog *)self getTtlDays:v4 category:@"DEFAULT-OPTIONS"];

  return v5;
}

- (void)setLogPrivacy:(unint64_t)privacy
{
  getProfileFilePath = [(WFLoggerOsLog *)self getProfileFilePath];
  if ([(WFLoggerOsLog *)self doesProfileExist:getProfileFilePath])
  {
    v6 = [objc_alloc(MEMORY[0x277CBEB38]) initWithContentsOfFile:getProfileFilePath];
    v8 = v6;
    if (privacy == 2)
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
  getProfileFilePath = [(WFLoggerOsLog *)self getProfileFilePath];
  if (![(WFLoggerOsLog *)self doesProfileExist:getProfileFilePath])
  {
    return 2;
  }

  v4 = [objc_alloc(MEMORY[0x277CBEB38]) initWithContentsOfFile:getProfileFilePath];
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

- (void)setLogLevelEnable:(unint64_t)enable
{
  getProfileFilePath = [(WFLoggerOsLog *)self getProfileFilePath];
  if ([(WFLoggerOsLog *)self doesProfileExist:getProfileFilePath])
  {
    v6 = [objc_alloc(MEMORY[0x277CBEB38]) initWithContentsOfFile:getProfileFilePath];
    [(WFLoggerOsLog *)self setLevelEnabled:v6 category:@"DEFAULT-OPTIONS" value:[(WFLoggerOsLog *)self mapLogLevelEnum:enable]];
    self->_currentLevel = [(WFLoggerOsLog *)self getLogLevelEnable];
  }
}

- (unint64_t)getLogLevelEnable
{
  getProfileFilePath = [(WFLoggerOsLog *)self getProfileFilePath];
  if (![(WFLoggerOsLog *)self doesProfileExist:getProfileFilePath])
  {
    return 3;
  }

  v4 = [objc_alloc(MEMORY[0x277CBEB38]) initWithContentsOfFile:getProfileFilePath];
  v5 = [(WFLoggerOsLog *)self mapLogLevelStr:[(WFLoggerOsLog *)self getLevelEnabled:v4 category:@"DEFAULT-OPTIONS"]];

  return v5;
}

- (void)setLogLevelPersist:(unint64_t)persist
{
  getProfileFilePath = [(WFLoggerOsLog *)self getProfileFilePath];
  if ([(WFLoggerOsLog *)self doesProfileExist:getProfileFilePath])
  {
    v6 = [objc_alloc(MEMORY[0x277CBEB38]) initWithContentsOfFile:getProfileFilePath];
    [(WFLoggerOsLog *)self setLevelPersist:v6 category:@"DEFAULT-OPTIONS" value:[(WFLoggerOsLog *)self mapLogLevelEnum:persist]];
  }
}

- (unint64_t)getLogLevelPersist
{
  getProfileFilePath = [(WFLoggerOsLog *)self getProfileFilePath];
  if (![(WFLoggerOsLog *)self doesProfileExist:getProfileFilePath])
  {
    return 3;
  }

  v4 = [objc_alloc(MEMORY[0x277CBEB38]) initWithContentsOfFile:getProfileFilePath];
  v5 = [(WFLoggerOsLog *)self mapLogLevelStr:[(WFLoggerOsLog *)self getLevelPersist:v4 category:@"DEFAULT-OPTIONS"]];

  return v5;
}

- (id)mapLogLevelEnum:(unint64_t)enum
{
  v3 = @"Default";
  if (enum == 2)
  {
    v3 = @"Info";
  }

  if (enum == 1)
  {
    return @"Debug";
  }

  else
  {
    return v3;
  }
}

- (unint64_t)mapLogLevelStr:(id)str
{
  if ([str isEqualToString:@"Debug"])
  {
    return 1;
  }

  if ([str isEqualToString:@"Info"])
  {
    return 2;
  }

  [str isEqualToString:@"Default"];
  return 3;
}

- (void)setMaxSizeInKb:(unint64_t)kb
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