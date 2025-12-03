@interface RTSystemControl
+ (id)valueForKey:(id)key;
+ (id)valueForMib:(int *)mib miblen:(int)miblen;
+ (unint64_t)sysctlByName:(id)name;
@end

@implementation RTSystemControl

+ (id)valueForKey:(id)key
{
  v30 = *MEMORY[0x277D85DE8];
  keyCopy = key;
  v4 = keyCopy;
  if (keyCopy)
  {
    v5 = _MergedGlobals_113;
    if (!_MergedGlobals_113)
    {
      _MergedGlobals_113 = 48;
      sysctlnametomib([keyCopy UTF8String], dword_2814A7CE0, &_MergedGlobals_113);
      v5 = _MergedGlobals_113;
    }

    v12 = 256;
    memset(v15, 0, sizeof(v15));
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    if ((sysctl(dword_2814A7CE0, v5, v15, &v12, 0, 0) & 0x80000000) == 0)
    {
      v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:v15];
      whitespaceAndNewlineCharacterSet = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
      v8 = [v6 stringByTrimmingCharactersInSet:whitespaceAndNewlineCharacterSet];

LABEL_13:
      goto LABEL_15;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v6 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        v10 = *__error();
        *buf = 67109120;
        v14 = v10;
        _os_log_impl(&dword_2304B3000, v6, OS_LOG_TYPE_INFO, "could not retrieve value due to error (errno: %d)", buf, 8u);
      }

      v8 = 0;
      goto LABEL_13;
    }
  }

  else
  {
    v9 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *v15 = 136315394;
      *&v15[4] = "+[RTSystemControl valueForKey:]";
      *&v15[12] = 1024;
      *&v15[14] = 22;
      _os_log_error_impl(&dword_2304B3000, v9, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: key (in %s:%d)", v15, 0x12u);
    }
  }

  v8 = 0;
LABEL_15:

  return v8;
}

+ (id)valueForMib:(int *)mib miblen:(int)miblen
{
  v4 = 0;
  v13 = *MEMORY[0x277D85DE8];
  if (mib && miblen)
  {
    v9 = 256;
    memset(v12, 0, sizeof(v12));
    if ((sysctl(mib, miblen, v12, &v9, 0, 0) & 0x80000000) == 0)
    {
      v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:v12];
      whitespaceAndNewlineCharacterSet = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
      v4 = [v5 stringByTrimmingCharactersInSet:whitespaceAndNewlineCharacterSet];

LABEL_9:
      goto LABEL_10;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v5 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        v7 = *__error();
        *buf = 67109120;
        v11 = v7;
        _os_log_impl(&dword_2304B3000, v5, OS_LOG_TYPE_INFO, "could not retrieve value due to error (errno: %d)", buf, 8u);
      }

      v4 = 0;
      goto LABEL_9;
    }

    v4 = 0;
  }

LABEL_10:

  return v4;
}

+ (unint64_t)sysctlByName:(id)name
{
  v15 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  if (![nameCopy length])
  {
    v4 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *v12 = 136315394;
      *&v12[4] = "+[RTSystemControl sysctlByName:]";
      v13 = 1024;
      v14 = 72;
      _os_log_error_impl(&dword_2304B3000, v4, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: name.length (in %s:%d)", v12, 0x12u);
    }
  }

  if (![nameCopy length])
  {
    goto LABEL_12;
  }

  *v12 = 0;
  v9 = 8;
  if (sysctlbyname([nameCopy UTF8String], v12, &v9, 0, 0) == -1)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v6 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        v7 = *__error();
        *buf = 67109120;
        v11 = v7;
        _os_log_impl(&dword_2304B3000, v6, OS_LOG_TYPE_INFO, "could not retrieve value due to error (errno: %d)", buf, 8u);
      }
    }

LABEL_12:
    v5 = 0;
    goto LABEL_13;
  }

  v5 = *v12;
LABEL_13:

  return v5;
}

@end