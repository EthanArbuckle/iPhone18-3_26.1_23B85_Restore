@interface ATXPOICategoryVisitEvent
- (ATXPOICategoryVisitEvent)initWithPossibleCategoryNames:(id)a3 startDate:(id)a4 endDate:(id)a5 hasExited:(BOOL)a6;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToATXPOICategoryVisitEvent:(id)a3;
- (id)description;
- (id)identifier;
@end

@implementation ATXPOICategoryVisitEvent

- (ATXPOICategoryVisitEvent)initWithPossibleCategoryNames:(id)a3 startDate:(id)a4 endDate:(id)a5 hasExited:(BOOL)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v17.receiver = self;
  v17.super_class = ATXPOICategoryVisitEvent;
  v14 = [(ATXPOICategoryVisitEvent *)&v17 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_startDate, a4);
    objc_storeStrong(&v15->_endDate, a5);
    objc_storeStrong(&v15->_possibleCategoryNames, a3);
    v15->_hasExited = a6;
  }

  return v15;
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x277CCACA8]);
  v4 = [(ATXPOICategoryVisitEvent *)self possibleCategoryNames];
  v5 = [(ATXPOICategoryVisitEvent *)self startDate];
  v6 = [(ATXPOICategoryVisitEvent *)self endDate];
  v7 = [v3 initWithFormat:@"ATXPOICategoryVisitEvent categories: %@, startDate: %@, endDate: %@ hasExited: %d", v4, v5, v6, -[ATXPOICategoryVisitEvent hasExited](self, "hasExited")];

  return v7;
}

- (id)identifier
{
  v3 = [(ATXPOICategoryVisitEvent *)self possibleCategoryNames];
  v4 = [v3 count];

  if (v4)
  {
    v5 = objc_alloc(MEMORY[0x277CCACA8]);
    v6 = [(ATXPOICategoryVisitEvent *)self possibleCategoryNames];
    v7 = [v6 objectAtIndexedSubscript:0];
    v8 = [v5 initWithFormat:@"%@", v7];
  }

  else
  {
    v8 = @"unknown";
  }

  return v8;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(ATXPOICategoryVisitEvent *)self isEqualToATXPOICategoryVisitEvent:v5];
  }

  return v6;
}

- (BOOL)isEqualToATXPOICategoryVisitEvent:(id)a3
{
  v4 = a3;
  v5 = self->_possibleCategoryNames;
  v6 = v5;
  if (v5 == v4[4])
  {
  }

  else
  {
    v7 = [(NSOrderedSet *)v5 isEqual:?];

    if ((v7 & 1) == 0)
    {
      v8 = 0;
      goto LABEL_9;
    }
  }

  v9 = [(ATXPOICategoryVisitEvent *)self startDate];
  v10 = [v4 startDate];
  if ([v9 isEqualToDate:v10])
  {
    v11 = [(ATXPOICategoryVisitEvent *)self endDate];
    v12 = [v4 endDate];
    v8 = [v11 isEqualToDate:v12];
  }

  else
  {
    v8 = 0;
  }

LABEL_9:
  return v8;
}

@end