@interface UPSharedEntityResolution
+ (id)buildDataDetectorDateTimeSpansByTokenRange:(id)a3;
- (UPSharedEntityResolution)initWithMatchingSpans:(id)a3;
- (id)resolveSharedEntityForTokenRange:(_NSRange)a3 valueType:(id)a4;
@end

@implementation UPSharedEntityResolution

- (id)resolveSharedEntityForTokenRange:(_NSRange)a3 valueType:(id)a4
{
  length = a3.length;
  location = a3.location;
  v22 = *MEMORY[0x277D85DE8];
  v7 = a4;
  v8 = SNLPOSLoggerForCategory(3);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v16 = 134218498;
    v17 = location;
    v18 = 2048;
    v19 = length;
    v20 = 2112;
    v21 = v7;
    _os_log_impl(&dword_22284A000, v8, OS_LOG_TYPE_DEBUG, "Resolving shared entities for token range (%lu, %lu) with value type: %@", &v16, 0x20u);
  }

  if ([v7 isEqualToString:@"date"])
  {
    v9 = [MEMORY[0x277CCAE60] valueWithRange:{location, length}];
    v10 = [(NSDictionary *)self->__dataDetectorDateTimeSpansByTokenRange objectForKey:v9];
    v11 = SNLPOSLoggerForCategory(3);
    v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG);
    if (v10)
    {
      if (v12)
      {
        LOWORD(v16) = 0;
        _os_log_impl(&dword_22284A000, v11, OS_LOG_TYPE_DEBUG, "Found a corresponding matching span: returning the shared entity graph", &v16, 2u);
      }

      v13 = [v10 sharedEntityGraph];
    }

    else
    {
      if (v12)
      {
        LOWORD(v16) = 0;
        _os_log_impl(&dword_22284A000, v11, OS_LOG_TYPE_DEBUG, "Returning nil since there is no corresponding matching span", &v16, 2u);
      }

      v13 = 0;
    }
  }

  else
  {
    v9 = SNLPOSLoggerForCategory(3);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v16) = 0;
      _os_log_impl(&dword_22284A000, v9, OS_LOG_TYPE_DEBUG, "Returning nil since we cannot handle non-date value types", &v16, 2u);
    }

    v13 = 0;
  }

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

- (UPSharedEntityResolution)initWithMatchingSpans:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = SNLPOSLoggerForCategory(3);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134217984;
    v13 = [v4 count];
    _os_log_impl(&dword_22284A000, v5, OS_LOG_TYPE_DEBUG, "Initializing UPSharedEntityResolution with %lu matching spans", buf, 0xCu);
  }

  v11.receiver = self;
  v11.super_class = UPSharedEntityResolution;
  v6 = [(UPSharedEntityResolution *)&v11 init];
  if (v6)
  {
    v7 = [objc_opt_class() buildDataDetectorDateTimeSpansByTokenRange:v4];
    dataDetectorDateTimeSpansByTokenRange = v6->__dataDetectorDateTimeSpansByTokenRange;
    v6->__dataDetectorDateTimeSpansByTokenRange = v7;
  }

  v9 = *MEMORY[0x277D85DE8];
  return v6;
}

+ (id)buildDataDetectorDateTimeSpansByTokenRange:(id)a3
{
  v47 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v37 = [MEMORY[0x277CBEB38] dictionary];
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v4 = v3;
  v5 = [v4 countByEnumeratingWithState:&v38 objects:v46 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v39;
    v8 = "Processing matching span with category: %@";
    v9 = @"DATE_TIME";
    do
    {
      v10 = 0;
      v36 = v6;
      do
      {
        if (*v39 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v11 = *(*(&v38 + 1) + 8 * v10);
        v12 = SNLPOSLoggerForCategory(3);
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
        {
          v13 = [v11 category];
          *buf = 138412290;
          v43 = v13;
          _os_log_impl(&dword_22284A000, v12, OS_LOG_TYPE_DEBUG, v8, buf, 0xCu);
        }

        if ([v11 type] != 2)
        {
          v23 = SNLPOSLoggerForCategory(3);
          if (!os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
          {
            goto LABEL_23;
          }

          *buf = 0;
          v29 = v23;
          v30 = "Skipping non-DataDetected span";
LABEL_18:
          _os_log_impl(&dword_22284A000, v29, OS_LOG_TYPE_DEBUG, v30, buf, 2u);
          goto LABEL_23;
        }

        v14 = [v11 category];
        v15 = [(__CFString *)v9 isEqualToString:v14];

        if ((v15 & 1) == 0)
        {
          v23 = SNLPOSLoggerForCategory(3);
          if (!os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
          {
            goto LABEL_23;
          }

          *buf = 0;
          v29 = v23;
          v30 = "Skipping non-datetime span";
          goto LABEL_18;
        }

        v16 = v7;
        v17 = v4;
        v18 = v9;
        v19 = v8;
        v20 = MEMORY[0x277CCAE60];
        v21 = [v11 range];
        v23 = [v20 valueWithRange:{v21, v22}];
        v24 = [v37 objectForKeyedSubscript:v23];

        v25 = SNLPOSLoggerForCategory(3);
        v26 = v25;
        if (v24)
        {
          if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
          {
            v27 = [v11 range];
            [v11 range];
            *buf = 134218240;
            v43 = v27;
            v44 = 2048;
            v45 = v28;
            _os_log_impl(&dword_22284A000, v26, OS_LOG_TYPE_DEFAULT, "Discarding duplicate matching date time span for range (%lu, %lu)", buf, 0x16u);
          }
        }

        else
        {
          if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
          {
            v31 = [v11 range];
            [v11 range];
            *buf = 134218240;
            v43 = v31;
            v44 = 2048;
            v45 = v32;
            _os_log_impl(&dword_22284A000, v26, OS_LOG_TYPE_DEBUG, "Adding DD datetime span with token range (%lu, %lu)", buf, 0x16u);
          }

          [v37 setObject:v11 forKeyedSubscript:v23];
        }

        v8 = v19;
        v9 = v18;
        v4 = v17;
        v7 = v16;
        v6 = v36;
LABEL_23:

        ++v10;
      }

      while (v6 != v10);
      v6 = [v4 countByEnumeratingWithState:&v38 objects:v46 count:16];
    }

    while (v6);
  }

  v33 = [MEMORY[0x277CBEAC0] dictionaryWithDictionary:v37];

  v34 = *MEMORY[0x277D85DE8];

  return v33;
}

@end