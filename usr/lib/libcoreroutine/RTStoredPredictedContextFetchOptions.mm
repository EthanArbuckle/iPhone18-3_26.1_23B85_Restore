@interface RTStoredPredictedContextFetchOptions
- (BOOL)isEqual:(id)equal;
- (RTStoredPredictedContextFetchOptions)initWithCoder:(id)coder;
- (RTStoredPredictedContextFetchOptions)initWithDateInterval:(id)interval filterContextTypeMask:(unint64_t)mask resultSortDescriptors:(id)descriptors limit:(id)limit;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation RTStoredPredictedContextFetchOptions

- (RTStoredPredictedContextFetchOptions)initWithDateInterval:(id)interval filterContextTypeMask:(unint64_t)mask resultSortDescriptors:(id)descriptors limit:(id)limit
{
  intervalCopy = interval;
  descriptorsCopy = descriptors;
  limitCopy = limit;
  v14 = limitCopy;
  if (limitCopy && ![limitCopy unsignedIntegerValue])
  {
    v18 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v18, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: !limit || (limit && limit.unsignedIntegerValue > 0)", buf, 2u);
    }

    selfCopy = 0;
  }

  else
  {
    v20.receiver = self;
    v20.super_class = RTStoredPredictedContextFetchOptions;
    v15 = [(RTStoredPredictedContextFetchOptions *)&v20 init];
    v16 = v15;
    if (v15)
    {
      objc_storeStrong(&v15->_dateInterval, interval);
      v16->_filterContextTypeMask = mask;
      objc_storeStrong(&v16->_resultSortDescriptors, descriptors);
      objc_storeStrong(&v16->_limit, limit);
    }

    self = v16;
    selfCopy = self;
  }

  return selfCopy;
}

- (void)encodeWithCoder:(id)coder
{
  dateInterval = self->_dateInterval;
  coderCopy = coder;
  [coderCopy encodeObject:dateInterval forKey:@"dateInterval"];
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_filterContextTypeMask];
  [coderCopy encodeObject:v5 forKey:@"filterContextTypeMask"];

  [coderCopy encodeObject:self->_resultSortDescriptors forKey:@"resultSortDescriptors"];
  [coderCopy encodeObject:self->_limit forKey:@"limit"];
}

- (RTStoredPredictedContextFetchOptions)initWithCoder:(id)coder
{
  v31 = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v24 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"dateInterval"];
  v22 = [coderCopy decodeIntegerForKey:@"filterContextTypeMask"];
  v4 = MEMORY[0x277CBEB98];
  v5 = objc_opt_class();
  v6 = [v4 setWithObjects:{v5, objc_opt_class(), 0}];
  v25 = coderCopy;
  v7 = [coderCopy decodeObjectOfClasses:v6 forKey:@"resultSortDescriptors"];

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
  v20 = [(RTStoredPredictedContextFetchOptions *)self initWithDateInterval:v24 filterContextTypeMask:v22 resultSortDescriptors:v18 limit:v19];

  return v20;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (self == equalCopy)
  {
    v14 = 1;
  }

  else if (equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = v5;
    dateInterval = [(RTStoredPredictedContextFetchOptions *)self dateInterval];
    dateInterval2 = [(RTStoredPredictedContextFetchOptions *)v6 dateInterval];
    if ([dateInterval isEqualToDateInterval:dateInterval2] && (v9 = -[RTStoredPredictedContextFetchOptions filterContextTypeMask](self, "filterContextTypeMask"), v9 == -[RTStoredPredictedContextFetchOptions filterContextTypeMask](v6, "filterContextTypeMask")))
    {
      resultSortDescriptors = [(RTStoredPredictedContextFetchOptions *)self resultSortDescriptors];
      resultSortDescriptors2 = [(RTStoredPredictedContextFetchOptions *)v6 resultSortDescriptors];
      if ([resultSortDescriptors isEqual:resultSortDescriptors2])
      {
        limit = [(RTStoredPredictedContextFetchOptions *)self limit];
        limit2 = [(RTStoredPredictedContextFetchOptions *)v6 limit];
        v14 = [limit isEqual:limit2];
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
  dateInterval = [(RTStoredPredictedContextFetchOptions *)self dateInterval];
  filterContextTypeMask = [(RTStoredPredictedContextFetchOptions *)self filterContextTypeMask];
  resultSortDescriptors = [(RTStoredPredictedContextFetchOptions *)self resultSortDescriptors];
  limit = [(RTStoredPredictedContextFetchOptions *)self limit];
  v8 = [v3 stringWithFormat:@"dateInterval, %@, filterContextTypeMask, %lu, resultSortDescriptors, %@, limit, %lu", dateInterval, filterContextTypeMask, resultSortDescriptors, limit];

  return v8;
}

@end