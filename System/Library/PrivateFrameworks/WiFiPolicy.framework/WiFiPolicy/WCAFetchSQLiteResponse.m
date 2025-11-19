@interface WCAFetchSQLiteResponse
- (WCAFetchSQLiteResponse)initWithCoder:(id)a3;
- (WCAFetchSQLiteResponse)initWithRecords:(id)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation WCAFetchSQLiteResponse

- (WCAFetchSQLiteResponse)initWithRecords:(id)a3
{
  v6.receiver = self;
  v6.super_class = WCAFetchSQLiteResponse;
  v3 = a3;
  v4 = [(WCAFetchSQLiteResponse *)&v6 init];
  [(WCAFetchSQLiteResponse *)v4 setRecords:v3, v6.receiver, v6.super_class];

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

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = WCAFetchSQLiteResponse;
  v4 = a3;
  [(WCAFetchResponse *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_records forKey:{@"_records", v5.receiver, v5.super_class}];
}

- (WCAFetchSQLiteResponse)initWithCoder:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = WCAFetchSQLiteResponse;
  v5 = [(WCAFetchResponse *)&v14 initWithCoder:v4];
  if (v5)
  {
    v6 = MEMORY[0x277CBEB98];
    v7 = objc_opt_class();
    v8 = objc_opt_class();
    v9 = objc_opt_class();
    v10 = [v6 setWithObjects:{v7, v8, v9, objc_opt_class(), 0}];
    v11 = [v4 decodeObjectOfClasses:v10 forKey:@"_records"];
    records = v5->_records;
    v5->_records = v11;
  }

  return v5;
}

@end