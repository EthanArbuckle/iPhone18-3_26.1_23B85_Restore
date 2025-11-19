@interface RTStoredPredictedContextRequestFetchOptions
- (BOOL)isEqual:(id)a3;
- (RTStoredPredictedContextRequestFetchOptions)initWithCoder:(id)a3;
- (RTStoredPredictedContextRequestFetchOptions)initWithDateInterval:(id)a3 inferenceTriggerReason:(int64_t)a4 resultSortDescriptors:(id)a5 limit:(id)a6;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation RTStoredPredictedContextRequestFetchOptions

- (RTStoredPredictedContextRequestFetchOptions)initWithDateInterval:(id)a3 inferenceTriggerReason:(int64_t)a4 resultSortDescriptors:(id)a5 limit:(id)a6
{
  v11 = a3;
  v12 = a5;
  v13 = a6;
  v14 = v13;
  if (v13 && ![v13 unsignedIntegerValue])
  {
    v18 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v18, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: !limit || (limit && limit.unsignedIntegerValue > 0)", buf, 2u);
    }

    v17 = 0;
  }

  else
  {
    v20.receiver = self;
    v20.super_class = RTStoredPredictedContextRequestFetchOptions;
    v15 = [(RTStoredPredictedContextRequestFetchOptions *)&v20 init];
    v16 = v15;
    if (v15)
    {
      objc_storeStrong(&v15->_dateInterval, a3);
      v16->_inferenceTriggerReason = a4;
      objc_storeStrong(&v16->_resultSortDescriptors, a5);
      objc_storeStrong(&v16->_limit, a6);
    }

    self = v16;
    v17 = self;
  }

  return v17;
}

- (void)encodeWithCoder:(id)a3
{
  dateInterval = self->_dateInterval;
  v6 = a3;
  [v6 encodeObject:dateInterval forKey:@"dateInterval"];
  v5 = [MEMORY[0x277CCABB0] numberWithInteger:self->_inferenceTriggerReason];
  [v6 encodeObject:v5 forKey:@"inferenceTriggerReason"];

  [v6 encodeObject:self->_resultSortDescriptors forKey:@"resultSortDescriptors"];
  [v6 encodeObject:self->_limit forKey:@"limit"];
}

- (RTStoredPredictedContextRequestFetchOptions)initWithCoder:(id)a3
{
  v31 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v24 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"dateInterval"];
  v22 = [v3 decodeIntegerForKey:@"inferenceTriggerReason"];
  v4 = MEMORY[0x277CBEB98];
  v5 = objc_opt_class();
  v6 = [v4 setWithObjects:{v5, objc_opt_class(), 0}];
  v25 = v3;
  v7 = [v3 decodeObjectOfClasses:v6 forKey:@"resultSortDescriptors"];

  v8 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v7, "count")}];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v9 = v7;
  v10 = [v9 countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v27;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v27 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v26 + 1) + 8 * i);
        v15 = MEMORY[0x277CCAC98];
        v16 = [v14 key];
        v17 = [v15 sortDescriptorWithKey:v16 ascending:objc_msgSend(v14 selector:{"ascending"), objc_msgSend(v14, "selector")}];

        [v8 addObject:v17];
      }

      v11 = [v9 countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v11);
  }

  v18 = v8;
  v19 = [v25 decodeObjectOfClass:objc_opt_class() forKey:@"limit"];
  v20 = [(RTStoredPredictedContextRequestFetchOptions *)self initWithDateInterval:v24 inferenceTriggerReason:v22 resultSortDescriptors:v18 limit:v19];

  return v20;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self == v4)
  {
    v14 = 1;
  }

  else if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = v5;
    v7 = [(RTStoredPredictedContextRequestFetchOptions *)self dateInterval];
    v8 = [(RTStoredPredictedContextRequestFetchOptions *)v6 dateInterval];
    if ([v7 isEqualToDateInterval:v8] && (v9 = -[RTStoredPredictedContextRequestFetchOptions inferenceTriggerReason](self, "inferenceTriggerReason"), v9 == -[RTStoredPredictedContextRequestFetchOptions inferenceTriggerReason](v6, "inferenceTriggerReason")))
    {
      v10 = [(RTStoredPredictedContextRequestFetchOptions *)self resultSortDescriptors];
      v11 = [(RTStoredPredictedContextRequestFetchOptions *)v6 resultSortDescriptors];
      if ([v10 isEqual:v11])
      {
        v12 = [(RTStoredPredictedContextRequestFetchOptions *)self limit];
        v13 = [(RTStoredPredictedContextRequestFetchOptions *)v6 limit];
        v14 = [v12 isEqual:v13];
      }

      else
      {
        v14 = 0;
      }
    }

    else
    {
      v14 = 0;
    }
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(RTStoredPredictedContextRequestFetchOptions *)self dateInterval];
  v5 = [(RTStoredPredictedContextRequestFetchOptions *)self inferenceTriggerReason];
  v6 = [(RTStoredPredictedContextRequestFetchOptions *)self resultSortDescriptors];
  v7 = [(RTStoredPredictedContextRequestFetchOptions *)self limit];
  v8 = [v3 stringWithFormat:@"dateInterval, %@, inferenceTriggerReason, %lu, resultSortDescriptors, %@, limit, %lu", v4, v5, v6, v7];

  return v8;
}

@end