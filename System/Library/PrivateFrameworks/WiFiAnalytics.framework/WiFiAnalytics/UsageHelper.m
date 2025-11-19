@interface UsageHelper
+ (Class)classForTimeSpan:(unint64_t)a3 withError:(id *)a4;
+ (NSCalendar)calendar;
+ (NSDateComponents)componentsOneMonth;
+ (NSISO8601DateFormatter)dailyDateFormatter;
+ (NSISO8601DateFormatter)monthlyDateFormatter;
+ (id)aggregateNameFor:(unint64_t)a3 withError:(id *)a4;
+ (id)availableDimensionsFor:(unint64_t)a3 withError:(id *)a4;
+ (id)binnedDate:(id)a3 as:(unint64_t)a4;
+ (id)getHigherEdgeIncludedBinFor:(int64_t)a3 In:(id)a4;
+ (id)getLowerEdgeIncludedBinFor:(int64_t)a3 In:(id)a4;
@end

@implementation UsageHelper

+ (NSCalendar)calendar
{
  if (qword_1EDE5CB70 != -1)
  {
    dispatch_once(&qword_1EDE5CB70, &__block_literal_global_6);
  }

  v3 = qword_1EDE5CB68;

  return v3;
}

void __23__UsageHelper_calendar__block_invoke()
{
  v0 = [MEMORY[0x1E695DEE8] calendarWithIdentifier:*MEMORY[0x1E695D850]];
  v1 = qword_1EDE5CB68;
  qword_1EDE5CB68 = v0;

  v2 = [MEMORY[0x1E695DFE8] timeZoneWithAbbreviation:@"GMT"];
  [qword_1EDE5CB68 setTimeZone:v2];
}

+ (NSDateComponents)componentsOneMonth
{
  if (qword_1EDE5CB78 != -1)
  {
    dispatch_once(&qword_1EDE5CB78, &__block_literal_global_107);
  }

  v3 = qword_1EDE5CB60;

  return v3;
}

uint64_t __33__UsageHelper_componentsOneMonth__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E695DF10]);
  v1 = qword_1EDE5CB60;
  qword_1EDE5CB60 = v0;

  v2 = qword_1EDE5CB60;

  return [v2 setMonth:1];
}

+ (NSISO8601DateFormatter)dailyDateFormatter
{
  if (qword_1EDE5CB80 != -1)
  {
    dispatch_once(&qword_1EDE5CB80, &__block_literal_global_110);
  }

  v3 = _MergedGlobals_9;

  return v3;
}

uint64_t __33__UsageHelper_dailyDateFormatter__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E696AC80]);
  v1 = _MergedGlobals_9;
  _MergedGlobals_9 = v0;

  v2 = [MEMORY[0x1E695DFE8] timeZoneWithAbbreviation:@"GMT"];
  [_MergedGlobals_9 setTimeZone:v2];

  v3 = _MergedGlobals_9;

  return [v3 setFormatOptions:275];
}

+ (NSISO8601DateFormatter)monthlyDateFormatter
{
  if (qword_1EDE5CB88 != -1)
  {
    dispatch_once(&qword_1EDE5CB88, &__block_literal_global_113);
  }

  v3 = qword_1EDE5CB58;

  return v3;
}

uint64_t __35__UsageHelper_monthlyDateFormatter__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E696AC80]);
  v1 = qword_1EDE5CB58;
  qword_1EDE5CB58 = v0;

  v2 = [MEMORY[0x1E695DFE8] timeZoneWithAbbreviation:@"GMT"];
  [qword_1EDE5CB58 setTimeZone:v2];

  v3 = qword_1EDE5CB58;

  return [v3 setFormatOptions:259];
}

+ (id)getLowerEdgeIncludedBinFor:(int64_t)a3 In:(id)a4
{
  v5 = a4;
  v6 = [UsageHelperBinEdges binEdgesWithLowerEdgeIncluded:1];
  for (i = 0; i < [v5 count]; ++i)
  {
    v8 = [v5 objectAtIndexedSubscript:i];
    v9 = [v8 integerValue];

    if (v9 > a3)
    {
      break;
    }

    v10 = [v5 objectAtIndexedSubscript:i];
    [v6 setLowerThan:v10];
  }

  v11 = [v6 lowerThan];
  [v6 setGreaterOrEqualTo:v11];

  if (i < [v5 count])
  {
    v12 = [v5 objectAtIndexedSubscript:i];
    v13 = [v12 integerValue];

    if (v13 > a3)
    {
      v14 = [v5 objectAtIndexedSubscript:i];
      [v6 setLowerThan:v14];
    }
  }

  if (i == [v5 count])
  {
    v15 = [v6 lowerThan];
    v16 = [v15 integerValue];

    if (v16 < a3)
    {
      [v6 setLowerThan:0];
    }
  }

  return v6;
}

+ (id)getHigherEdgeIncludedBinFor:(int64_t)a3 In:(id)a4
{
  v5 = a4;
  v6 = [UsageHelperBinEdges binEdgesWithLowerEdgeIncluded:0];
  for (i = 0; i < [v5 count]; ++i)
  {
    v8 = [v5 objectAtIndexedSubscript:i];
    v9 = [v8 integerValue];

    if (v9 >= a3)
    {
      break;
    }

    v10 = [v5 objectAtIndexedSubscript:i];
    [v6 setLowerOrEqualTo:v10];
  }

  v11 = [v6 lowerOrEqualTo];
  [v6 setGreaterThan:v11];

  if (i < [v5 count])
  {
    v12 = [v5 objectAtIndexedSubscript:i];
    v13 = [v12 integerValue];

    if (v13 >= a3)
    {
      v14 = [v5 objectAtIndexedSubscript:i];
      [v6 setLowerOrEqualTo:v14];
    }
  }

  if (i == [v5 count])
  {
    v15 = [v6 lowerOrEqualTo];
    v16 = [v15 integerValue];

    if (v16 < a3)
    {
      [v6 setLowerOrEqualTo:0];
    }
  }

  return v6;
}

+ (id)binnedDate:(id)a3 as:(unint64_t)a4
{
  v6 = a3;
  v7 = [UsageHelperBinEdges binEdgesWithLowerEdgeIncluded:1];
  v8 = objc_autoreleasePoolPush();
  v9 = v8;
  if (a4 > 2)
  {
    if (a4 == 3)
    {
      v43 = WALogCategoryDeviceStoreHandle();
      if (os_signpost_enabled(v43))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_1C8460000, v43, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "monthly bin", "", buf, 2u);
      }

      v44 = [a1 monthlyDateFormatter];
      v45 = [a1 monthlyDateFormatter];
      v46 = [v45 stringFromDate:v6];
      v47 = [v44 dateFromString:v46];
      [v7 setGreaterOrEqualTo:v47];

      v48 = [a1 calendar];
      v49 = [a1 componentsOneMonth];
      v50 = [v7 greaterOrEqualTo];
      v51 = [v48 dateByAddingComponents:v49 toDate:v50 options:0];
      [v7 setLowerThan:v51];

      v12 = WALogCategoryDeviceStoreHandle();
      if (!os_signpost_enabled(v12))
      {
        goto LABEL_25;
      }

      *buf = 0;
      v42 = "monthly bin";
      goto LABEL_24;
    }

    if (a4 != 4)
    {
      goto LABEL_26;
    }

    v24 = WALogCategoryDeviceStoreHandle();
    if (os_signpost_enabled(v24))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1C8460000, v24, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "yearly bin", "", buf, 2u);
    }

    v25 = [a1 calendar];
    v12 = [v25 components:4 fromDate:v6];

    v26 = [a1 calendar];
    v27 = [v26 dateFromComponents:v12];
    [v7 setGreaterOrEqualTo:v27];

    v28 = [a1 calendar];
    v29 = [v7 greaterOrEqualTo];
    v30 = [v28 dateByAddingUnit:4 value:1 toDate:v29 options:0];
    [v7 setLowerThan:v30];

    v31 = WALogCategoryDeviceStoreHandle();
    if (os_signpost_enabled(v31))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1C8460000, v31, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "yearly bin", "", buf, 2u);
    }
  }

  else
  {
    if (a4 != 1)
    {
      if (a4 != 2)
      {
        goto LABEL_26;
      }

      v53 = v8;
      v10 = WALogCategoryDeviceStoreHandle();
      if (os_signpost_enabled(v10))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_1C8460000, v10, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "weekly bin", "", buf, 2u);
      }

      v11 = [a1 calendar];
      v12 = [v11 components:512 fromDate:v6];

      v13 = [a1 calendar];
      v14 = 1 - [v12 weekday];
      v15 = [a1 dailyDateFormatter];
      v16 = [a1 dailyDateFormatter];
      v17 = [v16 stringFromDate:v6];
      v18 = [v15 dateFromString:v17];
      v19 = [v13 dateByAddingUnit:16 value:v14 toDate:v18 options:0];
      [v7 setGreaterOrEqualTo:v19];

      v20 = [a1 calendar];
      v21 = [v7 greaterOrEqualTo];
      v22 = [v20 dateByAddingUnit:0x2000 value:1 toDate:v21 options:0];
      [v7 setLowerThan:v22];

      v23 = WALogCategoryDeviceStoreHandle();
      if (os_signpost_enabled(v23))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_1C8460000, v23, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "weekly bin", "", buf, 2u);
      }

      v9 = v53;
      goto LABEL_25;
    }

    v32 = WALogCategoryDeviceStoreHandle();
    if (os_signpost_enabled(v32))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1C8460000, v32, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "daily bin", "", buf, 2u);
    }

    v33 = [a1 dailyDateFormatter];
    v34 = [a1 dailyDateFormatter];
    v35 = [v34 stringFromDate:v6];
    v36 = [v33 dateFromString:v35];
    [v7 setGreaterOrEqualTo:v36];

    v37 = [a1 dailyDateFormatter];
    v38 = [a1 dailyDateFormatter];
    v39 = [v6 dateByAddingTimeInterval:86400.0];
    v40 = [v38 stringFromDate:v39];
    v41 = [v37 dateFromString:v40];
    [v7 setLowerThan:v41];

    v12 = WALogCategoryDeviceStoreHandle();
    if (os_signpost_enabled(v12))
    {
      *buf = 0;
      v42 = "daily bin";
LABEL_24:
      _os_signpost_emit_with_name_impl(&dword_1C8460000, v12, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, v42, "", buf, 2u);
    }
  }

LABEL_25:

LABEL_26:
  objc_autoreleasePoolPop(v9);

  return v7;
}

+ (Class)classForTimeSpan:(unint64_t)a3 withError:(id *)a4
{
  v5 = 0;
  v37[1] = *MEMORY[0x1E69E9840];
  if (a3 > 1)
  {
    switch(a3)
    {
      case 2uLL:
        if (a4)
        {
          *a4 = 0;
        }

        break;
      case 3uLL:
        if (a4)
        {
          *a4 = 0;
        }

        break;
      case 4uLL:
        if (a4)
        {
          v6 = MEMORY[0x1E696ABC0];
          v32 = *MEMORY[0x1E696A588];
          v33 = @"WAErrorCodeInvalidInput";
          v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v33 forKeys:&v32 count:1];
          *a4 = [v6 errorWithDomain:@"com.apple.wifi.analytics.errordomain" code:9035 userInfo:v7];
        }

        v8 = WALogCategoryDeviceStoreHandle();
        if (!os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_16;
        }

        *buf = 136446466;
        *&buf[4] = "+[UsageHelper classForTimeSpan:withError:]";
        *&buf[12] = 1024;
        *&buf[14] = 262;
        v9 = "%{public}s::%d:Yearly Usage is not currenlty implemented";
        goto LABEL_15;
      default:
        goto LABEL_26;
    }

    v5 = objc_opt_class();
    goto LABEL_26;
  }

  if (!a3)
  {
    if (a4)
    {
      v12 = MEMORY[0x1E696ABC0];
      v36 = *MEMORY[0x1E696A588];
      v37[0] = @"WAErrorCodeInvalidInput";
      v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v37 forKeys:&v36 count:1];
      *a4 = [v12 errorWithDomain:@"com.apple.wifi.analytics.errordomain" code:9035 userInfo:v13];
    }

    goto LABEL_25;
  }

  if (a3 != 1)
  {
    goto LABEL_26;
  }

  if (a4)
  {
    v10 = MEMORY[0x1E696ABC0];
    v34 = *MEMORY[0x1E696A588];
    v35 = @"WAErrorCodeInvalidInput";
    v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v35 forKeys:&v34 count:1];
    *a4 = [v10 errorWithDomain:@"com.apple.wifi.analytics.errordomain" code:9035 userInfo:v11];
  }

  v8 = WALogCategoryDeviceStoreHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    *buf = 136446466;
    *&buf[4] = "+[UsageHelper classForTimeSpan:withError:]";
    *&buf[12] = 1024;
    *&buf[14] = 247;
    v9 = "%{public}s::%d:Daily Usage is not currenlty implemented";
LABEL_15:
    _os_log_impl(&dword_1C8460000, v8, OS_LOG_TYPE_ERROR, v9, buf, 0x12u);
  }

LABEL_16:

LABEL_25:
  v5 = 0;
LABEL_26:
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    v17 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
    {
      *buf = 136446722;
      *&buf[4] = "+[UsageHelper classForTimeSpan:withError:]";
      *&buf[12] = 1024;
      *&buf[14] = 267;
      *&buf[18] = 2112;
      *&buf[20] = v5;
      _os_log_impl(&dword_1C8460000, v17, OS_LOG_TYPE_FAULT, "%{public}s::%d:class %@ is not a Usage Entity", buf, 0x1Cu);
    }

    if (!a4)
    {
      goto LABEL_46;
    }

    v18 = MEMORY[0x1E696ABC0];
    v29 = *MEMORY[0x1E696A588];
    v30 = @"WAErrorCodeStore_Fault";
    v19 = MEMORY[0x1E695DF20];
    v20 = &v30;
    v21 = &v29;
    goto LABEL_45;
  }

  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    v22 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_FAULT))
    {
      *buf = 136446722;
      *&buf[4] = "+[UsageHelper classForTimeSpan:withError:]";
      *&buf[12] = 1024;
      *&buf[14] = 268;
      *&buf[18] = 2112;
      *&buf[20] = v5;
      _os_log_impl(&dword_1C8460000, v22, OS_LOG_TYPE_FAULT, "%{public}s::%d:class %@ is not an Entity", buf, 0x1Cu);
    }

    if (!a4)
    {
      goto LABEL_46;
    }

    v18 = MEMORY[0x1E696ABC0];
    v27 = *MEMORY[0x1E696A588];
    v28 = @"WAErrorCodeStore_Fault";
    v19 = MEMORY[0x1E695DF20];
    v20 = &v28;
    v21 = &v27;
    goto LABEL_45;
  }

  if (objc_opt_respondsToSelector())
  {
    v14 = v5;
    goto LABEL_30;
  }

  v23 = WALogCategoryDeviceStoreHandle();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_FAULT))
  {
    *buf = 136446722;
    *&buf[4] = "+[UsageHelper classForTimeSpan:withError:]";
    *&buf[12] = 1024;
    *&buf[14] = 269;
    *&buf[18] = 2112;
    *&buf[20] = v5;
    _os_log_impl(&dword_1C8460000, v23, OS_LOG_TYPE_FAULT, "%{public}s::%d:class %@ is not a Usage Entity", buf, 0x1Cu);
  }

  if (a4)
  {
    v18 = MEMORY[0x1E696ABC0];
    v25 = *MEMORY[0x1E696A588];
    v26 = @"WAErrorCodeStore_Fault";
    v19 = MEMORY[0x1E695DF20];
    v20 = &v26;
    v21 = &v25;
LABEL_45:
    v24 = [v19 dictionaryWithObjects:v20 forKeys:v21 count:{1, v25, v26, v27, v28, v29, v30, *buf, *&buf[16]}];
    *a4 = [v18 errorWithDomain:@"com.apple.wifi.analytics.errordomain" code:9043 userInfo:v24];
  }

LABEL_46:
  v14 = 0;
LABEL_30:
  v15 = *MEMORY[0x1E69E9840];

  return v14;
}

+ (id)availableDimensionsFor:(unint64_t)a3 withError:(id *)a4
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = [a1 classForTimeSpan:a3 withError:?];
  if (v5)
  {
    v6 = +[WAPersistentContainer dimensionsForUsageEntity:](WAPersistentContainer, "dimensionsForUsageEntity:", [v5 performSelector:sel_entity]);
  }

  else
  {
    v9 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      if (a4)
      {
        v10 = *a4;
      }

      else
      {
        v10 = @"no error provided";
      }

      v11 = 136446722;
      v12 = "+[UsageHelper availableDimensionsFor:withError:]";
      v13 = 1024;
      v14 = 280;
      v15 = 2112;
      v16 = v10;
      _os_log_impl(&dword_1C8460000, v9, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:failed: %@", &v11, 0x1Cu);
    }

    v6 = 0;
  }

  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

+ (id)aggregateNameFor:(unint64_t)a3 withError:(id *)a4
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = [a1 classForTimeSpan:a3 withError:?];
  if (v5)
  {
    v6 = v5;
    if (objc_opt_respondsToSelector())
    {
      v7 = [(__CFString *)v6 performSelector:sel_aggregateName];
      goto LABEL_4;
    }

    v12 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
    {
      v13 = 136446722;
      v14 = "+[UsageHelper aggregateNameFor:withError:]";
      v15 = 1024;
      v16 = 292;
      v17 = 2112;
      v18 = v6;
      _os_log_impl(&dword_1C8460000, v12, OS_LOG_TYPE_FAULT, "%{public}s::%d:Class %@ does not implement aggregateName", &v13, 0x1Cu);
    }
  }

  else
  {
    v10 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      if (a4)
      {
        v11 = *a4;
      }

      else
      {
        v11 = @"no error provided";
      }

      v13 = 136446722;
      v14 = "+[UsageHelper aggregateNameFor:withError:]";
      v15 = 1024;
      v16 = 291;
      v17 = 2112;
      v18 = v11;
      _os_log_impl(&dword_1C8460000, v10, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:failed: %@", &v13, 0x1Cu);
    }
  }

  v7 = 0;
LABEL_4:
  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

@end