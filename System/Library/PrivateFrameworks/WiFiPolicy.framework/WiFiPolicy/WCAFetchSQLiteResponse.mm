@interface WCAFetchSQLiteResponse
- (WCAFetchSQLiteResponse)initWithCoder:(id)coder;
- (WCAFetchSQLiteResponse)initWithRecords:(id)records;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation WCAFetchSQLiteResponse

- (WCAFetchSQLiteResponse)initWithRecords:(id)records
{
  v6.receiver = self;
  v6.super_class = WCAFetchSQLiteResponse;
  recordsCopy = records;
  v4 = [(WCAFetchSQLiteResponse *)&v6 init];
  [(WCAFetchSQLiteResponse *)v4 setRecords:recordsCopy, v6.receiver, v6.super_class];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCAB68];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@ : %p ", v5, self];

  [v6 appendFormat:@"records: %@", self->_records];
  [v6 appendString:@">"];

  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = WCAFetchSQLiteResponse;
  coderCopy = coder;
  [(WCAFetchResponse *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_records forKey:{@"_records", v5.receiver, v5.super_class}];
}

- (WCAFetchSQLiteResponse)initWithCoder:(id)coder
{
  coderCopy = coder;
  v14.receiver = self;
  v14.super_class = WCAFetchSQLiteResponse;
  v5 = [(WCAFetchResponse *)&v14 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = MEMORY[0x277CBEB98];
    v7 = objc_opt_class();
    v8 = objc_opt_class();
    v9 = objc_opt_class();
    v10 = [v6 setWithObjects:{v7, v8, v9, objc_opt_class(), 0}];
    v11 = [coderCopy decodeObjectOfClasses:v10 forKey:@"_records"];
    records = v5->_records;
    v5->_records = v11;
  }

  return v5;
}

@end