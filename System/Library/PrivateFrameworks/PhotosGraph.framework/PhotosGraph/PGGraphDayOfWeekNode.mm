@interface PGGraphDayOfWeekNode
+ (id)filter;
+ (id)nameForDayOfWeek:(int64_t)week;
+ (int64_t)dayOfWeekForName:(id)name;
- (BOOL)hasProperties:(id)properties;
- (MANodeFilter)uniquelyIdentifyingFilter;
- (NSString)name;
- (PGGraphDayOfWeekNode)initWithDayOfWeek:(int64_t)week;
- (id)description;
- (id)propertyDictionary;
- (int64_t)dayOfWeek;
@end

@implementation PGGraphDayOfWeekNode

- (int64_t)dayOfWeek
{
  result = self->_dayOfWeek;
  if (!result)
  {
    name = [(PGGraphDayOfWeekNode *)self name];
    self->_dayOfWeek = [objc_opt_class() dayOfWeekForName:name];

    return self->_dayOfWeek;
  }

  return result;
}

- (NSString)name
{
  v3 = objc_opt_class();
  dayOfWeek = self->_dayOfWeek;

  return [v3 nameForDayOfWeek:dayOfWeek];
}

- (MANodeFilter)uniquelyIdentifyingFilter
{
  v3 = objc_alloc(MEMORY[0x277D22C78]);
  propertyDictionary = [(PGGraphDayOfWeekNode *)self propertyDictionary];
  v5 = [v3 initWithLabel:@"DayOfWeek" domain:400 properties:propertyDictionary];

  return v5;
}

- (id)description
{
  v2 = [objc_opt_class() nameForDayOfWeek:self->_dayOfWeek];
  v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"PGGraphDayOfWeekNode (%@)", v2];

  return v3;
}

- (id)propertyDictionary
{
  v7[1] = *MEMORY[0x277D85DE8];
  v2 = [objc_opt_class() nameForDayOfWeek:self->_dayOfWeek];
  v6 = @"name";
  v7[0] = v2;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:&v6 count:1];

  v4 = *MEMORY[0x277D85DE8];

  return v3;
}

- (BOOL)hasProperties:(id)properties
{
  propertiesCopy = properties;
  v5 = propertiesCopy;
  if (propertiesCopy && [propertiesCopy count])
  {
    v6 = [objc_opt_class() nameForDayOfWeek:self->_dayOfWeek];
    v7 = [v5 objectForKeyedSubscript:@"name"];
    v8 = v7;
    v9 = !v7 || [v7 isEqual:v6];
  }

  else
  {
    v9 = 1;
  }

  return v9;
}

- (PGGraphDayOfWeekNode)initWithDayOfWeek:(int64_t)week
{
  v5.receiver = self;
  v5.super_class = PGGraphDayOfWeekNode;
  result = [(PGGraphNode *)&v5 init];
  if (result)
  {
    result->_dayOfWeek = week;
  }

  return result;
}

+ (id)nameForDayOfWeek:(int64_t)week
{
  if (nameForDayOfWeek__onceToken != -1)
  {
    dispatch_once(&nameForDayOfWeek__onceToken, &__block_literal_global_42);
  }

  if (week > 7)
  {
    v4 = @"UnknownDayOfWeek";
  }

  else
  {
    v4 = [nameForDayOfWeek__descriptionByDayOfWeekIndex objectAtIndexedSubscript:week];
  }

  return v4;
}

void __41__PGGraphDayOfWeekNode_nameForDayOfWeek___block_invoke()
{
  v3[8] = *MEMORY[0x277D85DE8];
  v3[0] = @"UnknownDayOfWeek";
  v3[1] = @"Sunday";
  v3[2] = @"Monday";
  v3[3] = @"Tuesday";
  v3[4] = @"Wednesday";
  v3[5] = @"Thursday";
  v3[6] = @"Friday";
  v3[7] = @"Saturday";
  v0 = [MEMORY[0x277CBEA60] arrayWithObjects:v3 count:8];
  v1 = nameForDayOfWeek__descriptionByDayOfWeekIndex;
  nameForDayOfWeek__descriptionByDayOfWeekIndex = v0;

  v2 = *MEMORY[0x277D85DE8];
}

+ (int64_t)dayOfWeekForName:(id)name
{
  nameCopy = name;
  if (dayOfWeekForName__onceToken != -1)
  {
    dispatch_once(&dayOfWeekForName__onceToken, &__block_literal_global_7272);
  }

  v4 = [dayOfWeekForName__dayOfWeekByDescription objectForKeyedSubscript:nameCopy];
  v5 = v4;
  if (v4)
  {
    integerValue = [v4 integerValue];
  }

  else
  {
    integerValue = -1;
  }

  return integerValue;
}

void __41__PGGraphDayOfWeekNode_dayOfWeekForName___block_invoke()
{
  v4[7] = *MEMORY[0x277D85DE8];
  v3[0] = @"Monday";
  v3[1] = @"Tuesday";
  v4[0] = &unk_284482850;
  v4[1] = &unk_284482868;
  v3[2] = @"Wednesday";
  v3[3] = @"Thursday";
  v4[2] = &unk_284482880;
  v4[3] = &unk_284482898;
  v3[4] = @"Friday";
  v3[5] = @"Saturday";
  v4[4] = &unk_2844828B0;
  v4[5] = &unk_2844828C8;
  v3[6] = @"Sunday";
  v4[6] = &unk_2844828E0;
  v0 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v4 forKeys:v3 count:7];
  v1 = dayOfWeekForName__dayOfWeekByDescription;
  dayOfWeekForName__dayOfWeekByDescription = v0;

  v2 = *MEMORY[0x277D85DE8];
}

+ (id)filter
{
  v2 = [objc_alloc(MEMORY[0x277D22C78]) initWithLabel:@"DayOfWeek" domain:400];

  return v2;
}

@end