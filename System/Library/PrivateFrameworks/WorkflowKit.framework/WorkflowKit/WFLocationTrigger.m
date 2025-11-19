@interface WFLocationTrigger
+ (id)timestampDateFormatter;
- (BOOL)hasValidConfiguration;
- (BOOL)isDateWithinTimeRange:(id)a3;
- (WFLocationTrigger)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation WFLocationTrigger

- (WFLocationTrigger)initWithCoder:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = WFLocationTrigger;
  v5 = [(WFTrigger *)&v16 initWithCoder:v4];
  if (v5)
  {
    v18 = 0;
    v19 = &v18;
    v20 = 0x2050000000;
    v6 = getCLCircularRegionClass_softClass;
    v21 = getCLCircularRegionClass_softClass;
    if (!getCLCircularRegionClass_softClass)
    {
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 3221225472;
      v17[2] = __getCLCircularRegionClass_block_invoke;
      v17[3] = &unk_1E837FAC0;
      v17[4] = &v18;
      __getCLCircularRegionClass_block_invoke(v17);
      v6 = v19[3];
    }

    v7 = v6;
    _Block_object_dispose(&v18, 8);
    v8 = [v4 decodeObjectOfClass:v6 forKey:@"region"];
    [(WFLocationTrigger *)v5 setRegion:v8];

    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"startTime"];
    [(WFLocationTrigger *)v5 setStartTime:v9];

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"endTime"];
    [(WFLocationTrigger *)v5 setEndTime:v10];

    v11 = objc_opt_class();
    if ([v11 isSubclassOfClass:objc_opt_class()])
    {
      v12 = [(WFLocationTrigger *)v5 region];
      [v12 setNotifyOnEntry:1];
    }

    else
    {
      v13 = objc_opt_class();
      if (![v13 isSubclassOfClass:objc_opt_class()])
      {
LABEL_9:
        v14 = v5;
        goto LABEL_10;
      }

      v12 = [(WFLocationTrigger *)v5 region];
      [v12 setNotifyOnExit:1];
    }

    goto LABEL_9;
  }

LABEL_10:

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v8.receiver = self;
  v8.super_class = WFLocationTrigger;
  v4 = a3;
  [(WFTrigger *)&v8 encodeWithCoder:v4];
  v5 = [(WFLocationTrigger *)self region:v8.receiver];
  [v4 encodeObject:v5 forKey:@"region"];

  v6 = [(WFLocationTrigger *)self startTime];
  [v4 encodeObject:v6 forKey:@"startTime"];

  v7 = [(WFLocationTrigger *)self endTime];
  [v4 encodeObject:v7 forKey:@"endTime"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v12.receiver = self;
  v12.super_class = WFLocationTrigger;
  v4 = [(WFTrigger *)&v12 copyWithZone:a3];
  v5 = [(WFLocationTrigger *)self region];
  v6 = [v5 copy];
  [v4 setRegion:v6];

  v7 = [(WFLocationTrigger *)self startTime];
  v8 = [v7 copy];
  [v4 setStartTime:v8];

  v9 = [(WFLocationTrigger *)self endTime];
  v10 = [v9 copy];
  [v4 setEndTime:v10];

  return v4;
}

- (BOOL)isDateWithinTimeRange:(id)a3
{
  v33 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [MEMORY[0x1E695DEE8] currentCalendar];
  v6 = [(WFLocationTrigger *)self startTime];
  v7 = [v5 components:96 fromDate:v6];

  v8 = [v5 dateBySettingHour:objc_msgSend(v7 minute:"hour") second:objc_msgSend(v7 ofDate:"minute") options:{0, v4, 0}];
  v9 = [(WFLocationTrigger *)self endTime];
  v10 = [v5 components:96 fromDate:v9];

  v11 = [v5 dateBySettingHour:objc_msgSend(v10 minute:"hour") second:objc_msgSend(v10 ofDate:"minute") options:{0, v4, 0}];
  v12 = v11;
  if (v8)
  {
    v13 = v11 == 0;
  }

  else
  {
    v13 = 1;
  }

  if (v13)
  {
    v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to calculate todayStart (%@) or todayEnd (%@) times", v8, v11];
    v15 = getWFTriggersLogObject();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v28 = "[WFLocationTrigger isDateWithinTimeRange:]";
      v29 = 2114;
      v30 = v14;
      v16 = "%s %{public}@";
      v17 = v15;
      v18 = OS_LOG_TYPE_ERROR;
      v19 = 22;
LABEL_8:
      _os_log_impl(&dword_1CA256000, v17, v18, v16, buf, v19);
    }
  }

  else
  {
    if ([v8 isEqualToDate:v11])
    {
      v24 = [v5 components:96 fromDate:v4];
      v25 = [(WFLocationTrigger *)self startTime];
      v26 = [v5 components:96 fromDate:v25];

      LOBYTE(v25) = [v24 isEqual:v26];
      if (v25)
      {
        v20 = 1;
        goto LABEL_12;
      }
    }

    if ([v8 compare:v12]!= -1)
    {
      v14 = getWFTriggersLogObject();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
      {
        *buf = 136315650;
        v28 = "[WFLocationTrigger isDateWithinTimeRange:]";
        v29 = 2114;
        v30 = v8;
        v31 = 2114;
        v32 = v12;
        _os_log_impl(&dword_1CA256000, v14, OS_LOG_TYPE_FAULT, "%s Today start %{public}@ should not be after today end %{public}@", buf, 0x20u);
      }

      goto LABEL_10;
    }

    v14 = [objc_alloc(MEMORY[0x1E696AB80]) initWithStartDate:v8 endDate:v12];
    if (([v14 containsDate:v4]& 1) != 0)
    {
      v20 = 1;
      goto LABEL_11;
    }

    v15 = getWFTriggersLogObject();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315138;
      v28 = "[WFLocationTrigger isDateWithinTimeRange:]";
      v16 = "%s Not running location trigger due to start/end time";
      v17 = v15;
      v18 = OS_LOG_TYPE_DEBUG;
      v19 = 12;
      goto LABEL_8;
    }
  }

LABEL_10:
  v20 = 0;
LABEL_11:

LABEL_12:
  v21 = *MEMORY[0x1E69E9840];
  return v20;
}

- (BOOL)hasValidConfiguration
{
  v3 = [(WFLocationTrigger *)self region];
  if (v3)
  {
    v4 = [(WFLocationTrigger *)self startTime];
    if (v4)
    {
      v5 = [(WFLocationTrigger *)self startTime];
      v6 = [(WFLocationTrigger *)self endTime];
      v7 = [v5 compare:v6] != 1;
    }

    else
    {
      v7 = 1;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (id)timestampDateFormatter
{
  if (timestampDateFormatter_onceToken != -1)
  {
    dispatch_once(&timestampDateFormatter_onceToken, &__block_literal_global_41744);
  }

  v3 = timestampDateFormatter_dateFormatter;

  return v3;
}

uint64_t __43__WFLocationTrigger_timestampDateFormatter__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E696AB78]);
  v1 = timestampDateFormatter_dateFormatter;
  timestampDateFormatter_dateFormatter = v0;

  [timestampDateFormatter_dateFormatter setDateStyle:0];
  v2 = timestampDateFormatter_dateFormatter;

  return [v2 setTimeStyle:1];
}

@end