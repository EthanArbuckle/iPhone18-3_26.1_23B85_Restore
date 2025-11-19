@interface WBSRemoteHistorySession
- (BOOL)isCurrentSession;
- (BOOL)isEqual:(id)a3;
- (WBSRemoteHistorySession)initWithCoder:(id)a3;
- (WBSRemoteHistorySession)initWithStartDate:(id)a3 endDate:(id)a4 items:(id)a5;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation WBSRemoteHistorySession

- (WBSRemoteHistorySession)initWithStartDate:(id)a3 endDate:(id)a4 items:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v18.receiver = self;
  v18.super_class = WBSRemoteHistorySession;
  v12 = [(WBSRemoteHistorySession *)&v18 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_startDate, a3);
    objc_storeStrong(&v13->_endDate, a4);
    v14 = [v11 copy];
    items = v13->_items;
    v13->_items = v14;

    v16 = v13;
  }

  return v13;
}

- (BOOL)isCurrentSession
{
  startDate = self->_startDate;
  v3 = [MEMORY[0x1E695DF00] date];
  v4 = [v3 safari_startOfDay];
  LOBYTE(startDate) = [(NSDate *)startDate isEqualToDate:v4];

  return startDate;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: %p startDate = %@; endDate = %@; items = %ld items>", v5, self, self->_startDate, self->_endDate, -[NSArray count](self->_items, "count")];;

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v9 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      startDate = self->_startDate;
      v6 = [(WBSRemoteHistorySession *)v4 startDate];
      if ([(NSDate *)startDate isEqualToDate:v6])
      {
        endDate = self->_endDate;
        v8 = [(WBSRemoteHistorySession *)v4 endDate];
        v9 = [(NSDate *)endDate isEqualToDate:v8];
      }

      else
      {
        v9 = 0;
      }
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

- (WBSRemoteHistorySession)initWithCoder:(id)a3
{
  v13[2] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"startDate"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"endDate"];
  v7 = MEMORY[0x1E695DFD8];
  v13[0] = objc_opt_class();
  v13[1] = objc_opt_class();
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:2];
  v9 = [v7 setWithArray:v8];
  v10 = [v4 decodeObjectOfClasses:v9 forKey:@"items"];

  v11 = [(WBSRemoteHistorySession *)self initWithStartDate:v5 endDate:v6 items:v10];
  return v11;
}

- (void)encodeWithCoder:(id)a3
{
  startDate = self->_startDate;
  v5 = a3;
  [v5 encodeObject:startDate forKey:@"startDate"];
  [v5 encodeObject:self->_endDate forKey:@"endDate"];
  [v5 encodeObject:self->_items forKey:@"items"];
}

@end