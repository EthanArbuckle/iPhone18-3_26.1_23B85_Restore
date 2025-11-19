@interface NFCALogger
+ (id)sharedCALogger;
+ (unint64_t)roundToSignificantDigit:(unint64_t)a3 forValue:(unint64_t)a4;
- (BOOL)restrictedMode;
- (NFCALogger)init;
- (id)generateDailyUUIDForCA;
- (id)generateUUID;
- (id)getCALoggerUserDefaults;
- (unint64_t)getMiddlewareExceptionCount;
- (unsigned)getDurationFrom:(unint64_t)a3;
- (unsigned)getHardwareTypeForCA:(unsigned int)a3;
- (void)getCAUniversityCode:(id)a3 universityCodes:(unsigned int *)a4;
- (void)postCAEventFor:(id)a3 eventInput:(id)a4;
- (void)removeRestrictedMode;
@end

@implementation NFCALogger

+ (id)sharedCALogger
{
  if (qword_280AEEE90 != -1)
  {
    dispatch_once(&qword_280AEEE90, &unk_2843AD960);
  }

  v3 = qword_280AEEE88;

  return v3;
}

- (NFCALogger)init
{
  v3.receiver = self;
  v3.super_class = NFCALogger;
  return [(NFCALogger *)&v3 init];
}

- (id)getCALoggerUserDefaults
{
  v2 = objc_alloc(MEMORY[0x277CBEBD0]);
  v4 = objc_msgSend_initWithSuiteName_(v2, v3, @"com.apple.stockholm.analytics");

  return v4;
}

- (id)generateDailyUUIDForCA
{
  v3 = objc_msgSend_getCALoggerUserDefaults(self, a2, v2);
  v5 = v3;
  if (v3)
  {
    v6 = objc_msgSend_stringForKey_(v3, v4, @"dailyDeviceUUID");
    v8 = objc_msgSend_objectForKey_(v5, v7, @"uuidUpdateDate");
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0 || (objc_msgSend_timeIntervalSince1970(v8, v9, v10), v27 = v11, v12 = gmtime(&v27), v26 = time(0), v13 = gmtime(&v26), v12->tm_year != v13->tm_year) || !v6 || v12->tm_yday != v13->tm_yday)
    {
      v14 = objc_msgSend_UUID(MEMORY[0x277CCAD78], v9, v10);
      v17 = objc_msgSend_UUIDString(v14, v15, v16);

      if (v17)
      {
        objc_msgSend_setObject_forKey_(v5, v18, v17, @"dailyDeviceUUID");
        v21 = objc_msgSend_date(MEMORY[0x277CBEAA8], v19, v20);
        objc_msgSend_setObject_forKey_(v5, v22, v21, @"uuidUpdateDate");

        objc_msgSend_synchronize(v5, v23, v24);
        v6 = v17;
      }

      else
      {
        v6 = 0;
      }
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)postCAEventFor:(id)a3 eventInput:(id)a4
{
  v5 = a3;
  v6 = a4;
  v10 = sub_22EEE66C0(v7);
  if (*(v11 + 872) && objc_msgSend_count(v6, v8, v9, v10))
  {
    v13 = v6;
    sub_22EEE6694(v12);
  }
}

- (BOOL)restrictedMode
{
  v3 = objc_msgSend_getCALoggerUserDefaults(self, a2, v2);
  v5 = v3;
  if (v3)
  {
    v6 = objc_msgSend_objectForKey_(v3, v4, @"eSEInRestrictedMode");
    v9 = v6;
    if (v6 && objc_msgSend_BOOLValue(v6, v7, v8))
    {
      v12 = objc_msgSend_BOOLValue(v9, v10, v11);
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (void)removeRestrictedMode
{
  v33 = *MEMORY[0x277D85DE8];
  v5 = objc_msgSend_getCALoggerUserDefaults(self, a2, v2);
  v7 = v5;
  if (v5)
  {
    v9 = objc_msgSend_objectForKey_(v5, v6, @"eSEInRestrictedMode");
    if (v9)
    {
      objc_msgSend_removeObjectForKey_(v7, v8, @"eSEInRestrictedMode");
      objc_msgSend_synchronize(v7, v10, v11);
    }

    else
    {
      v12 = kNFLOG_DISPATCH_SPECIFIC_KEY;
      specific = dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      if (specific >= 5)
      {
        __assert_rtn("NFLogGetLogger", "NFSharedLog.c", 230, "category < NFLogCategoryMax");
      }

      v14 = *(&off_27DA9DE50 + specific);
      if (v14)
      {
        Class = object_getClass(self);
        isMetaClass = class_isMetaClass(Class);
        ClassName = object_getClassName(self);
        Name = sel_getName(a2);
        v18 = 45;
        if (isMetaClass)
        {
          v18 = 43;
        }

        v14(3, "%c[%{public}s %{public}s]:%i Restricted mode for eSE is NOT set!", v18, ClassName, Name, 180);
        v12 = kNFLOG_DISPATCH_SPECIFIC_KEY;
      }

      v19 = dispatch_get_specific(v12);
      v20 = NFSharedLogGetLogger(v19);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        v21 = object_getClass(self);
        if (class_isMetaClass(v21))
        {
          v22 = 43;
        }

        else
        {
          v22 = 45;
        }

        *buf = 67109890;
        v26 = v22;
        v27 = 2082;
        v28 = object_getClassName(self);
        v29 = 2082;
        v30 = sel_getName(a2);
        v31 = 1024;
        v32 = 180;
        _os_log_impl(&dword_22EEC4000, v20, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Restricted mode for eSE is NOT set!", buf, 0x22u);
      }
    }
  }

  v23 = *MEMORY[0x277D85DE8];
}

- (unsigned)getDurationFrom:(unint64_t)a3
{
  v4 = mach_continuous_time();
  info = 0;
  mach_timebase_info(&info);
  if ((v4 - a3) * info.numer / (1000000 * info.denom) >= 0xFFFFFFFF)
  {
    LODWORD(v5) = -1;
  }

  else
  {
    return (v4 - a3) * info.numer / (1000000 * info.denom);
  }

  return v5;
}

- (unsigned)getHardwareTypeForCA:(unsigned int)a3
{
  if (a3 - 5 > 0x11)
  {
    return 0;
  }

  else
  {
    return dword_22EEE8634[a3 - 5];
  }
}

- (id)generateUUID
{
  v10[2] = *MEMORY[0x277D85DE8];
  v10[0] = 0;
  v10[1] = 0;
  v3 = objc_msgSend_UUID(MEMORY[0x277CCAD78], a2, v2);
  objc_msgSend_getUUIDBytes_(v3, v4, v10);

  v5 = objc_alloc(MEMORY[0x277CBEA90]);
  v7 = objc_msgSend_initWithBytes_length_(v5, v6, v10, 16);
  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

+ (unint64_t)roundToSignificantDigit:(unint64_t)a3 forValue:(unint64_t)a4
{
  v4 = a4;
  if (a3 <= 0xA)
  {
    if (a4)
    {
      v6 = log10(a4) + 1;
      v7 = v6 > a3;
      v8 = v6 - a3;
      if (v7)
      {
        v9 = __exp10(v8);
        return v4 / v9 * v9;
      }
    }
  }

  return v4;
}

- (void)getCAUniversityCode:(id)a3 universityCodes:(unsigned int *)a4
{
  v5 = a3;
  v8 = v5;
  *a4 = 0;
  if (v5 && objc_msgSend_count(v5, v6, v7))
  {
    v19 = 0;
    v10 = objc_msgSend_objectAtIndexedSubscript_(v8, v9, 0);
    v13 = objc_msgSend_NF_asHexString(v10, v11, v12);
    v15 = objc_msgSend_scannerWithString_(MEMORY[0x277CCAC80], v14, v13);
    objc_msgSend_scanHexInt_(v15, v16, &v19);
    v17 = &word_22EEE8600;
    v18 = 5;
    while (v19 < *(v17 - 2) || v19 > *(v17 - 1))
    {
      v17 += 6;
      if (!--v18)
      {
        goto LABEL_9;
      }
    }

    *a4 = *v17;
LABEL_9:
  }
}

- (unint64_t)getMiddlewareExceptionCount
{
  v3 = objc_msgSend_getCALoggerUserDefaults(self, a2, v2);
  v5 = v3;
  if (v3)
  {
    v6 = objc_msgSend_integerForKey_(v3, v4, @"middlewareExceptionCount");
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end