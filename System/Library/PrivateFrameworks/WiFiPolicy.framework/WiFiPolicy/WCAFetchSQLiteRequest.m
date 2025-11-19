@interface WCAFetchSQLiteRequest
- (WCAFetchSQLiteRequest)initWithCoder:(id)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
- (void)setParameters:(id)a3;
@end

@implementation WCAFetchSQLiteRequest

- (id)description
{
  v3 = MEMORY[0x277CCAB68];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@ : %p ", v5, self];

  [v6 appendFormat:@"parameters: %@", self->_parameters];
  [v6 appendFormat:@"tableName: %@", self->_tableName];
  [v6 appendFormat:@"columnNames: %@", self->_columnNames];
  [v6 appendFormat:@"limit: %ld", self->_limit];
  [v6 appendString:@">"];

  return v6;
}

- (void)setParameters:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v14 = 0u;
    v15 = 0u;
    v13 = 0u;
    v6 = [(NSDictionary *)v4 allValues:0];
    v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v13;
      while (1)
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(v6);
        }

        if (!--v8)
        {
          v8 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
          if (!v8)
          {
            break;
          }
        }
      }
    }
  }

  parameters = self->_parameters;
  self->_parameters = v5;

  v11 = *MEMORY[0x277D85DE8];
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = WCAFetchSQLiteRequest;
  v4 = a3;
  [(WCAFetchRequest *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_parameters forKey:{@"_parameters", v5.receiver, v5.super_class}];
  [v4 encodeObject:self->_tableName forKey:@"_tableName"];
  [v4 encodeObject:self->_columnNames forKey:@"_columnNames"];
  [v4 encodeInteger:self->_limit forKey:@"_limit"];
}

- (WCAFetchSQLiteRequest)initWithCoder:(id)a3
{
  v4 = a3;
  v20.receiver = self;
  v20.super_class = WCAFetchSQLiteRequest;
  v5 = [(WCAFetchRequest *)&v20 initWithCoder:v4];
  if (v5)
  {
    v6 = MEMORY[0x277CBEB98];
    v7 = objc_opt_class();
    v8 = objc_opt_class();
    v9 = [v6 setWithObjects:{v7, v8, objc_opt_class(), 0}];
    v10 = [v4 decodeObjectOfClasses:v9 forKey:@"_parameters"];
    parameters = v5->_parameters;
    v5->_parameters = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_tableName"];
    tableName = v5->_tableName;
    v5->_tableName = v12;

    v14 = MEMORY[0x277CBEB98];
    v15 = objc_opt_class();
    v16 = [v14 setWithObjects:{v15, objc_opt_class(), 0}];
    v17 = [v4 decodeObjectOfClasses:v16 forKey:@"_columnNames"];
    columnNames = v5->_columnNames;
    v5->_columnNames = v17;

    v5->_limit = [v4 decodeIntegerForKey:@"_limit"];
  }

  return v5;
}

@end