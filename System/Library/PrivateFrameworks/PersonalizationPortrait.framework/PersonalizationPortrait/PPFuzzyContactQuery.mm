@interface PPFuzzyContactQuery
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToFuzzyContactQuery:(id)query;
- (PPFuzzyContactQuery)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PPFuzzyContactQuery

- (BOOL)isEqualToFuzzyContactQuery:(id)query
{
  queryCopy = query;
  if (!queryCopy)
  {
    goto LABEL_12;
  }

  v5 = self->_sourceBundleIds;
  v6 = v5;
  if (v5 == queryCopy[2])
  {
  }

  else
  {
    v7 = [(NSSet *)v5 isEqual:?];

    if ((v7 & 1) == 0)
    {
      goto LABEL_12;
    }
  }

  v8 = self->_startDate;
  v9 = v8;
  if (v8 == queryCopy[3])
  {
  }

  else
  {
    v10 = [(NSDate *)v8 isEqual:?];

    if ((v10 & 1) == 0)
    {
      goto LABEL_12;
    }
  }

  v11 = self->_endDate;
  v12 = v11;
  if (v11 == queryCopy[4])
  {

    goto LABEL_14;
  }

  v13 = [(NSDate *)v11 isEqual:?];

  if (v13)
  {
LABEL_14:
    v14 = self->_onlyAddressBook == *(queryCopy + 8);
    goto LABEL_15;
  }

LABEL_12:
  v14 = 0;
LABEL_15:

  return v14;
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
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(PPFuzzyContactQuery *)self isEqualToFuzzyContactQuery:v5];
  }

  return v6;
}

- (id)description
{
  v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"<PPFuzzyContactQuery ids:'%@' s:'%@' e:'%@' ab:'%d'>", self->_sourceBundleIds, self->_startDate, self->_endDate, self->_onlyAddressBook];

  return v2;
}

- (unint64_t)hash
{
  v3 = [(NSSet *)self->_sourceBundleIds hash];
  v4 = [(NSDate *)self->_startDate hash]- v3 + 32 * v3;
  v5 = [(NSDate *)self->_endDate hash]- v4 + 32 * v4;
  v6 = [MEMORY[0x1E696AD98] numberWithBool:self->_onlyAddressBook];
  v7 = [v6 hash] - v5 + 32 * v5;

  return v7;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [[PPFuzzyContactQuery allocWithZone:?]];
  [(PPFuzzyContactQuery *)v4 setSourceBundleIds:self->_sourceBundleIds];
  [(PPFuzzyContactQuery *)v4 setStartDate:self->_startDate];
  [(PPFuzzyContactQuery *)v4 setEndDate:self->_endDate];
  [(PPFuzzyContactQuery *)v4 setOnlyAddressBook:self->_onlyAddressBook];
  return v4;
}

- (PPFuzzyContactQuery)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = objc_opt_new();
  v6 = MEMORY[0x1E69C5D78];
  v7 = objc_autoreleasePoolPush();
  v8 = objc_alloc(MEMORY[0x1E695DFD8]);
  v9 = objc_opt_class();
  v10 = [v8 initWithObjects:{v9, objc_opt_class(), 0}];
  objc_autoreleasePoolPop(v7);
  v11 = pp_contacts_log_handle();
  v12 = [v6 robustDecodeObjectOfClasses:v10 forKey:@"bids" withCoder:coderCopy expectNonNull:0 errorDomain:@"PPErrorDomain" errorCode:23 logHandle:v11];

  v13 = MEMORY[0x1E69C5D78];
  v14 = objc_opt_class();
  v15 = pp_contacts_log_handle();
  v16 = [v13 robustDecodeObjectOfClass:v14 forKey:@"sd" withCoder:coderCopy expectNonNull:0 errorDomain:@"PPErrorDomain" errorCode:23 logHandle:v15];

  v17 = MEMORY[0x1E69C5D78];
  v18 = objc_opt_class();
  v19 = pp_contacts_log_handle();
  v20 = [v17 robustDecodeObjectOfClass:v18 forKey:@"ed" withCoder:coderCopy expectNonNull:0 errorDomain:@"PPErrorDomain" errorCode:23 logHandle:v19];

  v21 = MEMORY[0x1E69C5D78];
  v22 = objc_opt_class();
  v23 = pp_contacts_log_handle();
  v24 = [v21 robustDecodeObjectOfClass:v22 forKey:@"ab" withCoder:coderCopy expectNonNull:1 errorDomain:@"PPErrorDomain" errorCode:23 logHandle:v23];

  if (v24)
  {
    [v5 setSourceBundleIds:v12];
    [v5 setStartDate:v16];
    [v5 setEndDate:v20];
    [v5 setOnlyAddressBook:{objc_msgSend(v24, "BOOLValue")}];
    v25 = v5;
  }

  else
  {
    v26 = pp_contacts_log_handle();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1A7FD3000, v26, OS_LOG_TYPE_ERROR, "PPFuzzyContactQuery: decoding failed for address book state", buf, 2u);
    }

    v25 = 0;
  }

  return v25;
}

- (void)encodeWithCoder:(id)coder
{
  sourceBundleIds = self->_sourceBundleIds;
  coderCopy = coder;
  [coderCopy encodeObject:sourceBundleIds forKey:@"bids"];
  [coderCopy encodeObject:self->_startDate forKey:@"sd"];
  [coderCopy encodeObject:self->_endDate forKey:@"ed"];
  v6 = [MEMORY[0x1E696AD98] numberWithBool:self->_onlyAddressBook];
  [coderCopy encodeObject:v6 forKey:@"ab"];
}

@end