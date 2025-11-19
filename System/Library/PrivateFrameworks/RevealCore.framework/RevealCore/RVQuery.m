@interface RVQuery
- (RVQuery)initWithCoder:(id)a3;
- (RVQuery)initWithTitle:(id)a3 clientIdentifier:(id)a4 userAgent:(id)a5 queryID:(int64_t)a6 queryProvider:(id)a7;
- (void)encodeWithCoder:(id)a3;
@end

@implementation RVQuery

- (RVQuery)initWithCoder:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = RVQuery;
  v5 = [(RVQuery *)&v13 init];
  if (v5)
  {
    v5->_queryID = [v4 decodeIntegerForKey:@"queryID"];
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"userAgent"];
    userAgent = v5->_userAgent;
    v5->_userAgent = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"title"];
    title = v5->_title;
    v5->_title = v10;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  queryID = self->_queryID;
  v5 = a3;
  [v5 encodeInteger:queryID forKey:@"queryID"];
  [v5 encodeObject:self->_identifier forKey:@"identifier"];
  [v5 encodeObject:self->_userAgent forKey:@"userAgent"];
  [v5 encodeObject:self->_title forKey:@"title"];
}

- (RVQuery)initWithTitle:(id)a3 clientIdentifier:(id)a4 userAgent:(id)a5 queryID:(int64_t)a6 queryProvider:(id)a7
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a7;
  v22.receiver = self;
  v22.super_class = RVQuery;
  v17 = [(RVQuery *)&v22 init];
  v18 = v17;
  if (v17)
  {
    v17->_queryID = a6;
    objc_storeStrong(&v17->_identifier, a4);
    objc_storeStrong(&v18->_userAgent, a5);
    objc_storeStrong(&v18->_title, a3);
    v19 = MEMORY[0x266726510](v16);
    queryProvider = v18->_queryProvider;
    v18->_queryProvider = v19;
  }

  return v18;
}

@end