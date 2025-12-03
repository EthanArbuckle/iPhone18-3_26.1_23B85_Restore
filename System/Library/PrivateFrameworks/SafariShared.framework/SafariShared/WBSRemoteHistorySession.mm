@interface WBSRemoteHistorySession
- (BOOL)isCurrentSession;
- (BOOL)isEqual:(id)equal;
- (WBSRemoteHistorySession)initWithCoder:(id)coder;
- (WBSRemoteHistorySession)initWithStartDate:(id)date endDate:(id)endDate items:(id)items;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation WBSRemoteHistorySession

- (WBSRemoteHistorySession)initWithStartDate:(id)date endDate:(id)endDate items:(id)items
{
  dateCopy = date;
  endDateCopy = endDate;
  itemsCopy = items;
  v18.receiver = self;
  v18.super_class = WBSRemoteHistorySession;
  v12 = [(WBSRemoteHistorySession *)&v18 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_startDate, date);
    objc_storeStrong(&v13->_endDate, endDate);
    v14 = [itemsCopy copy];
    items = v13->_items;
    v13->_items = v14;

    v16 = v13;
  }

  return v13;
}

- (BOOL)isCurrentSession
{
  startDate = self->_startDate;
  date = [MEMORY[0x1E695DF00] date];
  safari_startOfDay = [date safari_startOfDay];
  LOBYTE(startDate) = [(NSDate *)startDate isEqualToDate:safari_startOfDay];

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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v9 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      startDate = self->_startDate;
      startDate = [(WBSRemoteHistorySession *)equalCopy startDate];
      if ([(NSDate *)startDate isEqualToDate:startDate])
      {
        endDate = self->_endDate;
        endDate = [(WBSRemoteHistorySession *)equalCopy endDate];
        v9 = [(NSDate *)endDate isEqualToDate:endDate];
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

- (WBSRemoteHistorySession)initWithCoder:(id)coder
{
  v13[2] = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"startDate"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"endDate"];
  v7 = MEMORY[0x1E695DFD8];
  v13[0] = objc_opt_class();
  v13[1] = objc_opt_class();
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:2];
  v9 = [v7 setWithArray:v8];
  v10 = [coderCopy decodeObjectOfClasses:v9 forKey:@"items"];

  v11 = [(WBSRemoteHistorySession *)self initWithStartDate:v5 endDate:v6 items:v10];
  return v11;
}

- (void)encodeWithCoder:(id)coder
{
  startDate = self->_startDate;
  coderCopy = coder;
  [coderCopy encodeObject:startDate forKey:@"startDate"];
  [coderCopy encodeObject:self->_endDate forKey:@"endDate"];
  [coderCopy encodeObject:self->_items forKey:@"items"];
}

@end