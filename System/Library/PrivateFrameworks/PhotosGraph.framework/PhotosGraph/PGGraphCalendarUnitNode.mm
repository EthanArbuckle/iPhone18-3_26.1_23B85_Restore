@interface PGGraphCalendarUnitNode
+ (MANodeFilter)dayFilter;
+ (MANodeFilter)monthDayFilter;
+ (MANodeFilter)monthFilter;
+ (MANodeFilter)weekOfMonthFilter;
+ (MANodeFilter)weekOfYearFilter;
+ (MANodeFilter)yearFilter;
+ (PGCalendarUnitMonthDayValue)monthDayValueForMonthDayNode:(id)node;
+ (PGCalendarUnitMonthDayValue)monthDayValueForMonthDayNodeCalendarUnitValue:(int64_t)value;
+ (id)propertiesForMonth:(int64_t)month day:(int64_t)day;
+ (id)propertiesWithCalendarUnitValue:(int64_t)value;
+ (id)yearIntervalForYearCalendarUnitValue:(int64_t)value;
- (BOOL)hasProperties:(id)properties;
- (MANodeFilter)uniquelyIdentifyingFilter;
- (NSString)description;
- (NSString)featureIdentifier;
- (PGGraphCalendarUnitNode)initWithCalendarUnit:(unint64_t)unit value:(int64_t)value;
- (PGGraphCalendarUnitNode)initWithLabel:(id)label domain:(unsigned __int16)domain properties:(id)properties;
- (id)collection;
- (id)label;
- (id)propertyDictionary;
- (id)propertyForKey:(id)key;
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
  label = [(PGGraphCalendarUnitNode *)self label];
  v7 = [v3 stringWithFormat:@"%@|%@|%d", v5, label, *(self + 16)];

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
  label = [(PGGraphCalendarUnitNode *)self label];
  domain = [(PGGraphCalendarUnitNode *)self domain];
  propertyDictionary = [(PGGraphCalendarUnitNode *)self propertyDictionary];
  v7 = [v3 initWithLabel:label domain:domain properties:propertyDictionary];

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
  label = [(PGGraphCalendarUnitNode *)self label];
  v5 = [v3 stringWithFormat:@"%@ (%d)", label, *(self + 16)];

  return v5;
}

- (id)propertyForKey:(id)key
{
  v11 = *MEMORY[0x277D85DE8];
  keyCopy = key;
  if ([keyCopy isEqualToString:@"name"])
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
      v10 = keyCopy;
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

- (BOOL)hasProperties:(id)properties
{
  propertiesCopy = properties;
  v5 = propertiesCopy;
  if (propertiesCopy && [propertiesCopy count])
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

- (PGGraphCalendarUnitNode)initWithLabel:(id)label domain:(unsigned __int16)domain properties:(id)properties
{
  labelCopy = label;
  propertiesCopy = properties;
  v9 = labelCopy;
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

  v11 = [propertiesCopy objectForKeyedSubscript:@"name"];
  integerValue = [v11 integerValue];

  v13 = [(PGGraphCalendarUnitNode *)self initWithCalendarUnit:v10 value:integerValue];
  return v13;
}

- (PGGraphCalendarUnitNode)initWithCalendarUnit:(unint64_t)unit value:(int64_t)value
{
  valueCopy = value;
  unitCopy = unit;
  v7.receiver = self;
  v7.super_class = PGGraphCalendarUnitNode;
  result = [(PGGraphNode *)&v7 init];
  if (result)
  {
    *(result + 34) = unitCopy;
    *(result + 16) = valueCopy;
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

+ (id)yearIntervalForYearCalendarUnitValue:(int64_t)value
{
  currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
  v5 = objc_alloc_init(MEMORY[0x277CBEAB8]);
  [v5 setYear:value];
  [v5 setMonth:1];
  [v5 setDay:1];
  v6 = [currentCalendar dateFromComponents:v5];
  v11 = v6;
  v12 = 0.0;
  [currentCalendar rangeOfUnit:4 startDate:&v11 interval:&v12 forDate:v6];
  v7 = v11;

  v8 = objc_alloc(MEMORY[0x277CCA970]);
  v9 = [v8 initWithStartDate:v7 duration:v12];

  return v9;
}

+ (PGCalendarUnitMonthDayValue)monthDayValueForMonthDayNode:(id)node
{
  calendarUnitValue = [node calendarUnitValue];

  v5 = [self monthDayValueForMonthDayNodeCalendarUnitValue:calendarUnitValue];
  result.var1 = v6;
  result.var0 = v5;
  return result;
}

+ (PGCalendarUnitMonthDayValue)monthDayValueForMonthDayNodeCalendarUnitValue:(int64_t)value
{
  v3 = value / 100;
  v4 = value % 100;
  result.var1 = v4;
  result.var0 = v3;
  return result;
}

+ (id)propertiesWithCalendarUnitValue:(int64_t)value
{
  v8[1] = *MEMORY[0x277D85DE8];
  v7 = @"name";
  v3 = [MEMORY[0x277CCABB0] numberWithLong:value];
  v8[0] = v3;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:&v7 count:1];

  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

+ (id)propertiesForMonth:(int64_t)month day:(int64_t)day
{
  v5 = [self encodedMonthDayForMonth:month day:day];

  return [self propertiesWithCalendarUnitValue:v5];
}

@end