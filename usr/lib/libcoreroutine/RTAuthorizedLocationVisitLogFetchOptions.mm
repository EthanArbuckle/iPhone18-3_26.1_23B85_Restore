@interface RTAuthorizedLocationVisitLogFetchOptions
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToFetchOptions:(id)options;
- (RTAuthorizedLocationVisitLogFetchOptions)initWithAscending:(BOOL)ascending dateInterval:(id)interval limit:(id)limit;
- (RTAuthorizedLocationVisitLogFetchOptions)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation RTAuthorizedLocationVisitLogFetchOptions

- (RTAuthorizedLocationVisitLogFetchOptions)initWithAscending:(BOOL)ascending dateInterval:(id)interval limit:(id)limit
{
  intervalCopy = interval;
  limitCopy = limit;
  v11 = limitCopy;
  if (limitCopy && ![limitCopy unsignedIntegerValue])
  {
    v15 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v15, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: !limit || (limit && limit.unsignedIntegerValue > 0)", buf, 2u);
    }

    selfCopy = 0;
  }

  else
  {
    v17.receiver = self;
    v17.super_class = RTAuthorizedLocationVisitLogFetchOptions;
    v12 = [(RTAuthorizedLocationVisitLogFetchOptions *)&v17 init];
    p_isa = &v12->super.isa;
    if (v12)
    {
      v12->_ascending = ascending;
      objc_storeStrong(&v12->_dateInterval, interval);
      objc_storeStrong(p_isa + 3, limit);
    }

    self = p_isa;
    selfCopy = self;
  }

  return selfCopy;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(RTAuthorizedLocationVisitLogFetchOptions *)self isEqualToFetchOptions:v5];
  }

  return v6;
}

- (BOOL)isEqualToFetchOptions:(id)options
{
  optionsCopy = options;
  ascending = self->_ascending;
  isAscending = [optionsCopy isAscending];
  dateInterval = self->_dateInterval;
  if (dateInterval)
  {
    goto LABEL_2;
  }

  dateInterval = [optionsCopy dateInterval];
  if (!dateInterval)
  {
    v13 = 1;
    goto LABEL_11;
  }

  if (self->_dateInterval)
  {
LABEL_2:
    dateInterval2 = [optionsCopy dateInterval];
    if (dateInterval2)
    {
      v10 = dateInterval2;
      v11 = self->_dateInterval;
      dateInterval3 = [optionsCopy dateInterval];
      v13 = [(NSDateInterval *)v11 isEqualToDateInterval:dateInterval3];

      if (dateInterval)
      {
        goto LABEL_12;
      }
    }

    else
    {
      v13 = 0;
      if (dateInterval)
      {
        goto LABEL_12;
      }
    }
  }

  else
  {
    v13 = 0;
  }

LABEL_11:

LABEL_12:
  limit = self->_limit;
  if (limit)
  {
    goto LABEL_13;
  }

  dateInterval = [optionsCopy limit];
  if (!dateInterval)
  {
    v19 = 1;
    goto LABEL_22;
  }

  if (!self->_limit)
  {
    v19 = 0;
LABEL_22:

    goto LABEL_23;
  }

LABEL_13:
  limit = [optionsCopy limit];
  if (limit)
  {
    v16 = limit;
    v17 = self->_limit;
    limit2 = [optionsCopy limit];
    v19 = [(NSNumber *)v17 isEqualToNumber:limit2];

    if (!limit)
    {
      goto LABEL_22;
    }
  }

  else
  {
    v19 = 0;
    if (!limit)
    {
      goto LABEL_22;
    }
  }

LABEL_23:

  return (ascending == isAscending) & v13 & v19;
}

- (void)encodeWithCoder:(id)coder
{
  ascending = self->_ascending;
  coderCopy = coder;
  [coderCopy encodeBool:ascending forKey:@"ascending"];
  [coderCopy encodeObject:self->_dateInterval forKey:@"dateInterval"];
  [coderCopy encodeObject:self->_limit forKey:@"limit"];
}

- (RTAuthorizedLocationVisitLogFetchOptions)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeBoolForKey:@"ascending"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"dateInterval"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"limit"];

  v8 = [(RTAuthorizedLocationVisitLogFetchOptions *)self initWithAscending:v5 dateInterval:v6 limit:v7];
  return v8;
}

@end