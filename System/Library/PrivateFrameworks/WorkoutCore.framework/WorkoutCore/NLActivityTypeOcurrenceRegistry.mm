@interface NLActivityTypeOcurrenceRegistry
+ (id)activityTypeForRegistryFromActivityType:(id)type;
+ (id)registryWithActivityType:(id)type dates:(id)dates;
- (NLActivityTypeOcurrenceRegistry)initWithCoder:(id)coder;
- (NSArray)endDatesWithinSpecifiedDateRange;
- (id)_mostRecentOccurrence;
- (id)description;
- (int64_t)compare:(id)compare;
- (int64_t)count;
- (void)addOccurrenceWithEndDate:(id)date;
- (void)encodeWithCoder:(id)coder;
- (void)removeMostRecentOccurence;
- (void)setCurrentDate:(id)date;
@end

@implementation NLActivityTypeOcurrenceRegistry

- (void)encodeWithCoder:(id)coder
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, coder);
  v7 = location[0];
  activityType = selfCopy->_activityType;
  v8 = NSStringFromSelector(sel_activityType);
  [v7 encodeObject:activityType forKey:?];
  *&v3 = MEMORY[0x277D82BD8](v8).n128_u64[0];
  v9 = location[0];
  endDatesWithinSpecifiedDateRange = [(NLActivityTypeOcurrenceRegistry *)selfCopy endDatesWithinSpecifiedDateRange];
  v10 = NSStringFromSelector(sel_endDates);
  [v9 encodeObject:endDatesWithinSpecifiedDateRange forKey:?];
  MEMORY[0x277D82BD8](v10);
  *&v4 = MEMORY[0x277D82BD8](endDatesWithinSpecifiedDateRange).n128_u64[0];
  v12 = location[0];
  lastActivityGoal = [(NLActivityTypeOcurrenceRegistry *)selfCopy lastActivityGoal];
  v13 = NSStringFromSelector(sel_lastActivityGoal);
  [v12 encodeObject:lastActivityGoal forKey:?];
  MEMORY[0x277D82BD8](v13);
  *&v5 = MEMORY[0x277D82BD8](lastActivityGoal).n128_u64[0];
  v16 = location[0];
  hidden = [(NLActivityTypeOcurrenceRegistry *)selfCopy hidden];
  v17 = NSStringFromSelector(sel_hidden);
  [v16 encodeBool:hidden forKey:?];
  MEMORY[0x277D82BD8](v17);
  objc_storeStrong(location, 0);
}

- (NLActivityTypeOcurrenceRegistry)initWithCoder:(id)coder
{
  v30[2] = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, coder);
  v3 = selfCopy;
  selfCopy = 0;
  v27.receiver = v3;
  v27.super_class = NLActivityTypeOcurrenceRegistry;
  v26 = [(NLActivityTypeOcurrenceRegistry *)&v27 init];
  selfCopy = v26;
  objc_storeStrong(&selfCopy, v26);
  if (v26)
  {
    v14 = location[0];
    v13 = objc_opt_class();
    v15 = NSStringFromSelector(sel_activityType);
    v4 = [v14 decodeObjectOfClass:v13 forKey:?];
    activityType = selfCopy->_activityType;
    selfCopy->_activityType = v4;
    MEMORY[0x277D82BD8](activityType);
    MEMORY[0x277D82BD8](v15);
    v17 = location[0];
    v16 = MEMORY[0x277CBEB98];
    v30[0] = objc_opt_class();
    v30[1] = objc_opt_class();
    v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v30 count:2];
    v19 = [v16 setWithArray:?];
    v18 = NSStringFromSelector(sel_endDates);
    v6 = [v17 decodeObjectOfClasses:v19 forKey:?];
    endDates = selfCopy->_endDates;
    selfCopy->_endDates = v6;
    MEMORY[0x277D82BD8](endDates);
    MEMORY[0x277D82BD8](v18);
    MEMORY[0x277D82BD8](v19);
    MEMORY[0x277D82BD8](v20);
    v22 = location[0];
    v21 = objc_opt_class();
    v23 = NSStringFromSelector(sel_lastActivityGoal);
    v8 = [v22 decodeObjectOfClass:v21 forKey:?];
    lastActivityGoal = selfCopy->_lastActivityGoal;
    selfCopy->_lastActivityGoal = v8;
    MEMORY[0x277D82BD8](lastActivityGoal);
    MEMORY[0x277D82BD8](v23);
    v24 = location[0];
    v25 = NSStringFromSelector(sel_hidden);
    v10 = [v24 decodeBoolForKey:?];
    selfCopy->_hidden = v10;
    MEMORY[0x277D82BD8](v25);
  }

  v12 = MEMORY[0x277D82BE0](selfCopy);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  *MEMORY[0x277D85DE8];
  return v12;
}

- (NSArray)endDatesWithinSpecifiedDateRange
{
  selfCopy = self;
  v22[1] = a2;
  v22[0] = [(NSArray *)self->_endDates mutableCopy];
  currentDate = selfCopy->_currentDate;
  v19 = 0;
  if (currentDate)
  {
    v2 = MEMORY[0x277D82BE0](currentDate);
  }

  else
  {
    date = [MEMORY[0x277CBEAA8] date];
    v19 = 1;
    v2 = MEMORY[0x277D82BE0](date);
  }

  v21 = v2;
  if (v19)
  {
    MEMORY[0x277D82BD8](date);
  }

  currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
  v18 = [currentCalendar dateByAddingUnit:16 value:-30 toDate:v21 options:0];
  MEMORY[0x277D82BD8](currentCalendar);
  v8 = v22[0];
  v7 = MEMORY[0x277CCAC30];
  v12 = MEMORY[0x277D85DD0];
  v13 = -1073741824;
  v14 = 0;
  v15 = __67__NLActivityTypeOcurrenceRegistry_endDatesWithinSpecifiedDateRange__block_invoke;
  v16 = &unk_277D890F8;
  v17 = MEMORY[0x277D82BE0](v18);
  v9 = [v7 predicateWithBlock:&v12];
  [v8 filterUsingPredicate:?];
  *&v3 = MEMORY[0x277D82BD8](v9).n128_u64[0];
  if (![v22[0] count])
  {
    location = [(NSArray *)selfCopy->_endDates lastObject];
    if (location)
    {
      [v22[0] addObject:location];
    }

    objc_storeStrong(&location, 0);
  }

  v5 = [MEMORY[0x277CBEA60] arrayWithArray:v22[0]];
  objc_storeStrong(&v17, 0);
  objc_storeStrong(&v18, 0);
  objc_storeStrong(&v21, 0);
  objc_storeStrong(v22, 0);

  return v5;
}

BOOL __67__NLActivityTypeOcurrenceRegistry_endDatesWithinSpecifiedDateRange__block_invoke(void *a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v8 = 0;
  objc_storeStrong(&v8, a3);
  v7 = [location[0] laterDate:a1[4]];
  v6 = location[0];
  MEMORY[0x277D82BD8](v7);
  v10 = v7 == v6;
  objc_storeStrong(&v8, 0);
  objc_storeStrong(location, 0);
  return v10;
}

- (void)addOccurrenceWithEndDate:(id)date
{
  v13[1] = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, date);
  if (!location[0])
  {
    date = [MEMORY[0x277CBEAA8] date];
    v4 = location[0];
    location[0] = date;
    MEMORY[0x277D82BD8](v4);
  }

  endDatesWithinSpecifiedDateRange = [(NLActivityTypeOcurrenceRegistry *)selfCopy endDatesWithinSpecifiedDateRange];
  v9 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"self" ascending:1];
  v8 = [(NSArray *)endDatesWithinSpecifiedDateRange arrayByAddingObject:location[0]];
  v13[0] = v9;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:1];
  v5 = [(NSArray *)v8 sortedArrayUsingDescriptors:?];
  endDates = selfCopy->_endDates;
  selfCopy->_endDates = v5;
  MEMORY[0x277D82BD8](endDates);
  MEMORY[0x277D82BD8](v7);
  MEMORY[0x277D82BD8](v8);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(&endDatesWithinSpecifiedDateRange, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

- (void)removeMostRecentOccurence
{
  selfCopy = self;
  v6[1] = a2;
  endDatesWithinSpecifiedDateRange = [(NLActivityTypeOcurrenceRegistry *)self endDatesWithinSpecifiedDateRange];
  v6[0] = [(NSArray *)endDatesWithinSpecifiedDateRange mutableCopy];
  *&v2 = MEMORY[0x277D82BD8](endDatesWithinSpecifiedDateRange).n128_u64[0];
  [v6[0] removeLastObject];
  v3 = [MEMORY[0x277CBEA60] arrayWithArray:v6[0]];
  endDates = selfCopy->_endDates;
  selfCopy->_endDates = v3;
  MEMORY[0x277D82BD8](endDates);
  objc_storeStrong(v6, 0);
}

+ (id)activityTypeForRegistryFromActivityType:(id)type
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, type);
  metadata = [location[0] metadata];
  v9 = [metadata mutableCopy];
  [v9 removeObjectForKey:{*MEMORY[0x277D0A6F8], MEMORY[0x277D82BD8](metadata).n128_f64[0]}];
  [v9 removeObjectForKey:*MEMORY[0x277D0A700]];
  if (![v9 count])
  {
    objc_storeStrong(&v9, 0);
  }

  v6 = objc_alloc(MEMORY[0x277D0A810]);
  effectiveTypeIdentifier = [location[0] effectiveTypeIdentifier];
  isIndoor = [location[0] isIndoor];
  v7 = [v6 initWithActivityTypeIdentifier:effectiveTypeIdentifier isIndoor:isIndoor metadata:v9];
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);

  return v7;
}

+ (id)registryWithActivityType:(id)type dates:(id)dates
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, type);
  v11 = 0;
  objc_storeStrong(&v11, dates);
  v10 = objc_alloc_init(selfCopy);
  v7 = [objc_opt_class() activityTypeForRegistryFromActivityType:location[0]];
  [v10 setActivityType:?];
  *&v4 = MEMORY[0x277D82BD8](v7).n128_u64[0];
  v8 = [v11 copy];
  [v10 setEndDates:?];
  MEMORY[0x277D82BD8](v8);
  v9 = MEMORY[0x277D82BE0](v10);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(location, 0);

  return v9;
}

- (int64_t)count
{
  endDatesWithinSpecifiedDateRange = [(NLActivityTypeOcurrenceRegistry *)self endDatesWithinSpecifiedDateRange];
  v4 = [(NSArray *)endDatesWithinSpecifiedDateRange count];
  MEMORY[0x277D82BD8](endDatesWithinSpecifiedDateRange);
  return v4;
}

- (id)description
{
  selfCopy = self;
  v16 = a2;
  v6 = MEMORY[0x277CCACA8];
  v15.receiver = self;
  v15.super_class = NLActivityTypeOcurrenceRegistry;
  v13 = [(NLActivityTypeOcurrenceRegistry *)&v15 description];
  activityType = [(NLActivityTypeOcurrenceRegistry *)selfCopy activityType];
  v11 = [MEMORY[0x277CCABB0] numberWithInteger:{-[NLActivityTypeOcurrenceRegistry count](selfCopy, "count")}];
  v5 = MEMORY[0x277CCABB0];
  lastActivityGoal = [(NLActivityTypeOcurrenceRegistry *)selfCopy lastActivityGoal];
  v9 = [v5 numberWithUnsignedInteger:{-[NLSessionActivityGoal goalTypeIdentifier](lastActivityGoal, "goalTypeIdentifier")}];
  lastActivityGoal2 = [(NLActivityTypeOcurrenceRegistry *)selfCopy lastActivityGoal];
  value = [(NLSessionActivityGoal *)lastActivityGoal2 value];
  hidden = [(NLActivityTypeOcurrenceRegistry *)selfCopy hidden];
  v3 = @"YES";
  if (!hidden)
  {
    v3 = @"NO";
  }

  v14 = [v6 stringWithFormat:@"%@ :%@ -- %@ instances; GoalType: %@; Goal Value: %@ Hidden: %@", v13, activityType, v11, v9, value, v3];
  MEMORY[0x277D82BD8](value);
  MEMORY[0x277D82BD8](lastActivityGoal2);
  MEMORY[0x277D82BD8](v9);
  MEMORY[0x277D82BD8](lastActivityGoal);
  MEMORY[0x277D82BD8](v11);
  MEMORY[0x277D82BD8](activityType);
  MEMORY[0x277D82BD8](v13);

  return v14;
}

- (id)_mostRecentOccurrence
{
  location[2] = self;
  location[1] = a2;
  endDatesWithinSpecifiedDateRange = [(NLActivityTypeOcurrenceRegistry *)self endDatesWithinSpecifiedDateRange];
  location[0] = [(NSArray *)endDatesWithinSpecifiedDateRange lastObject];
  *&v2 = MEMORY[0x277D82BD8](endDatesWithinSpecifiedDateRange).n128_u64[0];
  v7 = 0;
  if (location[0])
  {
    v3 = MEMORY[0x277D82BE0](location[0]);
  }

  else
  {
    distantPast = [MEMORY[0x277CBEAA8] distantPast];
    v7 = 1;
    v3 = MEMORY[0x277D82BE0](distantPast);
  }

  v10 = v3;
  if (v7)
  {
    MEMORY[0x277D82BD8](distantPast);
  }

  objc_storeStrong(location, 0);
  v4 = v10;

  return v4;
}

- (int64_t)compare:(id)compare
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, compare);
  _mostRecentOccurrence = [(NLActivityTypeOcurrenceRegistry *)selfCopy _mostRecentOccurrence];
  _mostRecentOccurrence2 = [location[0] _mostRecentOccurrence];
  v6 = [_mostRecentOccurrence compare:?];
  MEMORY[0x277D82BD8](_mostRecentOccurrence2);
  MEMORY[0x277D82BD8](_mostRecentOccurrence);
  objc_storeStrong(location, 0);
  return v6;
}

- (void)setCurrentDate:(id)date
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, date);
  objc_storeStrong(&selfCopy->_currentDate, location[0]);
  objc_storeStrong(location, 0);
}

@end