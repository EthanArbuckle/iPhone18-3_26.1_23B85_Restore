@interface ATXPOICategoryVisitEvent
- (ATXPOICategoryVisitEvent)initWithPossibleCategoryNames:(id)names startDate:(id)date endDate:(id)endDate hasExited:(BOOL)exited;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToATXPOICategoryVisitEvent:(id)event;
- (id)description;
- (id)identifier;
@end

@implementation ATXPOICategoryVisitEvent

- (ATXPOICategoryVisitEvent)initWithPossibleCategoryNames:(id)names startDate:(id)date endDate:(id)endDate hasExited:(BOOL)exited
{
  namesCopy = names;
  dateCopy = date;
  endDateCopy = endDate;
  v17.receiver = self;
  v17.super_class = ATXPOICategoryVisitEvent;
  v14 = [(ATXPOICategoryVisitEvent *)&v17 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_startDate, date);
    objc_storeStrong(&v15->_endDate, endDate);
    objc_storeStrong(&v15->_possibleCategoryNames, names);
    v15->_hasExited = exited;
  }

  return v15;
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x277CCACA8]);
  possibleCategoryNames = [(ATXPOICategoryVisitEvent *)self possibleCategoryNames];
  startDate = [(ATXPOICategoryVisitEvent *)self startDate];
  endDate = [(ATXPOICategoryVisitEvent *)self endDate];
  v7 = [v3 initWithFormat:@"ATXPOICategoryVisitEvent categories: %@, startDate: %@, endDate: %@ hasExited: %d", possibleCategoryNames, startDate, endDate, -[ATXPOICategoryVisitEvent hasExited](self, "hasExited")];

  return v7;
}

- (id)identifier
{
  possibleCategoryNames = [(ATXPOICategoryVisitEvent *)self possibleCategoryNames];
  v4 = [possibleCategoryNames count];

  if (v4)
  {
    v5 = objc_alloc(MEMORY[0x277CCACA8]);
    possibleCategoryNames2 = [(ATXPOICategoryVisitEvent *)self possibleCategoryNames];
    v7 = [possibleCategoryNames2 objectAtIndexedSubscript:0];
    v8 = [v5 initWithFormat:@"%@", v7];
  }

  else
  {
    v8 = @"unknown";
  }

  return v8;
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
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(ATXPOICategoryVisitEvent *)self isEqualToATXPOICategoryVisitEvent:v5];
  }

  return v6;
}

- (BOOL)isEqualToATXPOICategoryVisitEvent:(id)event
{
  eventCopy = event;
  v5 = self->_possibleCategoryNames;
  v6 = v5;
  if (v5 == eventCopy[4])
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

  startDate = [(ATXPOICategoryVisitEvent *)self startDate];
  startDate2 = [eventCopy startDate];
  if ([startDate isEqualToDate:startDate2])
  {
    endDate = [(ATXPOICategoryVisitEvent *)self endDate];
    endDate2 = [eventCopy endDate];
    v8 = [endDate isEqualToDate:endDate2];
  }

  else
  {
    v8 = 0;
  }

LABEL_9:
  return v8;
}

@end