@interface PGGraphCalendarUnitNode
+ (MANodeFilter)dayFilter;
+ (MANodeFilter)monthDayFilter;
+ (MANodeFilter)monthFilter;
+ (MANodeFilter)weekOfMonthFilter;
+ (MANodeFilter)weekOfYearFilter;
+ (MANodeFilter)yearFilter;
+ (PGCalendarUnitMonthDayValue)monthDayValueForMonthDayNode:(id)a3;
+ (PGCalendarUnitMonthDayValue)monthDayValueForMonthDayNodeCalendarUnitValue:(int64_t)a3;
+ (id)propertiesForMonth:(int64_t)a3 day:(int64_t)a4;
+ (id)propertiesWithCalendarUnitValue:(int64_t)a3;
+ (id)yearIntervalForYearCalendarUnitValue:(int64_t)a3;
- (BOOL)hasProperties:(id)a3;
- (MANodeFilter)uniquelyIdentifyingFilter;
- (NSString)description;
- (NSString)featureIdentifier;
- (PGGraphCalendarUnitNode)initWithCalendarUnit:(unint64_t)a3 value:(int64_t)a4;
- (PGGraphCalendarUnitNode)initWithLabel:(id)a3 domain:(unsigned __int16)a4 properties:(id)a5;
- (id)collection;
- (id)label;
- (id)propertyDictionary;
- (id)propertyForKey:(id)a3;
- (unint64_t)featureType;
@end

@implementation PGGraphCalendarUnitNode

- (id)collection
{
  v2 = [(MANodeCollection *)[PGGraphCalendarUnitNodeCollection alloc] initWithNode:self];

  return v2;
}

- (NSString)featureIdentifier
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(PGGraphCalendarUnitNode *)self label];
  v7 = [v3 stringWithFormat:@"%@|%@|%d", v5, v6, *(self + 16)];

  return v7;
}

- (unint64_t)featureType
{
  v3 = *(self + 34);
  if (+[PGGraphYearNodeCollection calendarUnit]== v3)
  {
    return 1;
  }

  v5 = *(self + 34);
  if (+[PGGraphMonthDayNodeCollection calendarUnit]== v5)
  {
    return 29;
  }

  else
  {
    return 0;
  }
}

- (MANodeFilter)uniquelyIdentifyingFilter
{
  v3 = objc_alloc(MEMORY[0x277D22C78]);
  v4 = [(PGGraphCalendarUnitNode *)self label];
  v5 = [(PGGraphCalendarUnitNode *)self domain];
  v6 = [(PGGraphCalendarUnitNode *)self propertyDictionary];
  v7 = [v3 initWithLabel:v4 domain:v5 properties:v6];

  return v7;
}

- (id)label
{
  if (*(self + 34) - 1 > 5)
  {
    v3 = 0;
  }

  else
  {
    v3 = *off_2788872F8[(*(self + 34) - 1)];
  }

  return v3;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(PGGraphCalendarUnitNode *)self label];
  v5 = [v3 stringWithFormat:@"%@ (%d)", v4, *(self + 16)];

  return v5;
}

- (id)propertyForKey:(id)a3
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([v4 isEqualToString:@"name"])
  {
    if (*(self + 16) == -1)
    {
      v5 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v5 = *(self + 16);
    }

    v6 = [MEMORY[0x277CCABB0] numberWithInteger:v5];
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
    {
      v9 = 138412290;
      v10 = v4;
      _os_log_fault_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_FAULT, "Unsupported property '%@' accessed on PGGraphCalendarUnitNode.", &v9, 0xCu);
    }

    v6 = 0;
  }

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

- (id)propertyDictionary
{
  v8[1] = *MEMORY[0x277D85DE8];
  v7 = @"name";
  v2 = *(self + 16);
  if (v2 == -1)
  {
    v3 = &unk_284484440;
  }

  else
  {
    v3 = [MEMORY[0x277CCABB0] numberWithInteger:v2];
  }

  v8[0] = v3;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:&v7 count:1];
  if (v2 != -1)
  {
  }

  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

- (BOOL)hasProperties:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 && [v4 count])
  {
    v6 = [v5 objectForKeyedSubscript:@"name"];
    v7 = v6;
    v8 = !v6 || [v6 integerValue] == *(self + 16);
  }

  else
  {
    v8 = 1;
  }

  return v8;
}

- (PGGraphCalendarUnitNode)initWithLabel:(id)a3 domain:(unsigned __int16)a4 properties:(id)a5
{
  v7 = a3;
  v8 = a5;
  v9 = v7;
  if ([v9 isEqualToString:@"Day"])
  {
    v10 = 1;
  }

  else if ([v9 isEqualToString:@"Month"])
  {
    v10 = 2;
  }

  else if ([v9 isEqualToString:@"MonthDay"])
  {
    v10 = 3;
  }

  else if ([v9 isEqualToString:@"Year"])
  {
    v10 = 4;
  }

  else if ([v9 isEqualToString:@"WeekMonth"])
  {
    v10 = 5;
  }

  else
  {
    if (([v9 isEqualToString:@"WeekYear"] & 1) == 0)
    {

      __assert_rtn("[PGGraphCalendarUnitNode initWithLabel:domain:properties:]", "PGGraphCalendarUnitNode.m", 101, "calendarUnit != PGGraphCalendarUnitUnitUnknown");
    }

    v10 = 6;
  }

  v11 = [v8 objectForKeyedSubscript:@"name"];
  v12 = [v11 integerValue];

  v13 = [(PGGraphCalendarUnitNode *)self initWithCalendarUnit:v10 value:v12];
  return v13;
}

- (PGGraphCalendarUnitNode)initWithCalendarUnit:(unint64_t)a3 value:(int64_t)a4
{
  v4 = a4;
  v5 = a3;
  v7.receiver = self;
  v7.super_class = PGGraphCalendarUnitNode;
  result = [(PGGraphNode *)&v7 init];
  if (result)
  {
    *(result + 34) = v5;
    *(result + 16) = v4;
  }

  return result;
}

+ (MANodeFilter)weekOfYearFilter
{
  v2 = [objc_alloc(MEMORY[0x277D22C78]) initWithLabel:@"WeekYear" domain:400];

  return v2;
}

+ (MANodeFilter)weekOfMonthFilter
{
  v2 = [objc_alloc(MEMORY[0x277D22C78]) initWithLabel:@"WeekMonth" domain:400];

  return v2;
}

+ (MANodeFilter)yearFilter
{
  v2 = [objc_alloc(MEMORY[0x277D22C78]) initWithLabel:@"Year" domain:400];

  return v2;
}

+ (MANodeFilter)monthDayFilter
{
  v2 = [objc_alloc(MEMORY[0x277D22C78]) initWithLabel:@"MonthDay" domain:400];

  return v2;
}

+ (MANodeFilter)monthFilter
{
  v2 = [objc_alloc(MEMORY[0x277D22C78]) initWithLabel:@"Month" domain:400];

  return v2;
}

+ (MANodeFilter)dayFilter
{
  v2 = [objc_alloc(MEMORY[0x277D22C78]) initWithLabel:@"Day" domain:400];

  return v2;
}

+ (id)yearIntervalForYearCalendarUnitValue:(int64_t)a3
{
  v4 = [MEMORY[0x277CBEA80] currentCalendar];
  v5 = objc_alloc_init(MEMORY[0x277CBEAB8]);
  [v5 setYear:a3];
  [v5 setMonth:1];
  [v5 setDay:1];
  v6 = [v4 dateFromComponents:v5];
  v11 = v6;
  v12 = 0.0;
  [v4 rangeOfUnit:4 startDate:&v11 interval:&v12 forDate:v6];
  v7 = v11;

  v8 = objc_alloc(MEMORY[0x277CCA970]);
  v9 = [v8 initWithStartDate:v7 duration:v12];

  return v9;
}

+ (PGCalendarUnitMonthDayValue)monthDayValueForMonthDayNode:(id)a3
{
  v4 = [a3 calendarUnitValue];

  v5 = [a1 monthDayValueForMonthDayNodeCalendarUnitValue:v4];
  result.var1 = v6;
  result.var0 = v5;
  return result;
}

+ (PGCalendarUnitMonthDayValue)monthDayValueForMonthDayNodeCalendarUnitValue:(int64_t)a3
{
  v3 = a3 / 100;
  v4 = a3 % 100;
  result.var1 = v4;
  result.var0 = v3;
  return result;
}

+ (id)propertiesWithCalendarUnitValue:(int64_t)a3
{
  v8[1] = *MEMORY[0x277D85DE8];
  v7 = @"name";
  v3 = [MEMORY[0x277CCABB0] numberWithLong:a3];
  v8[0] = v3;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:&v7 count:1];

  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

+ (id)propertiesForMonth:(int64_t)a3 day:(int64_t)a4
{
  v5 = [a1 encodedMonthDayForMonth:a3 day:a4];

  return [a1 propertiesWithCalendarUnitValue:v5];
}

@end