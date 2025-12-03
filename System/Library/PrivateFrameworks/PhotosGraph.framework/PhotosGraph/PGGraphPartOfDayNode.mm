@interface PGGraphPartOfDayNode
+ (id)filter;
+ (id)filterWithPartOfDay:(unint64_t)day;
+ (id)partOfDayNameForPartOfDay:(unint64_t)day;
+ (id)stringValueForPartOfDay:(unint64_t)day;
+ (unint64_t)partOfDayForPartOfDayName:(id)name;
- (BOOL)hasProperties:(id)properties;
- (NSString)name;
- (PGGraphPartOfDayNode)initWithPartOfDay:(unint64_t)day;
- (id)description;
- (id)propertyDictionary;
- (unint64_t)partOfDay;
@end

@implementation PGGraphPartOfDayNode

- (unint64_t)partOfDay
{
  v3 = objc_opt_class();
  name = [(PGGraphPartOfDayNode *)self name];
  v5 = [v3 partOfDayForPartOfDayName:name];

  return v5;
}

- (NSString)name
{
  v3 = objc_opt_class();
  partOfDay = self->_partOfDay;

  return [v3 partOfDayNameForPartOfDay:partOfDay];
}

- (id)description
{
  v2 = [objc_opt_class() partOfDayNameForPartOfDay:self->_partOfDay];
  v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"PGGraphPartOfDayNode (%@)", v2];

  return v3;
}

- (id)propertyDictionary
{
  v7[1] = *MEMORY[0x277D85DE8];
  v2 = [objc_opt_class() partOfDayNameForPartOfDay:self->_partOfDay];
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
    v6 = [objc_opt_class() partOfDayNameForPartOfDay:self->_partOfDay];
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

- (PGGraphPartOfDayNode)initWithPartOfDay:(unint64_t)day
{
  v5.receiver = self;
  v5.super_class = PGGraphPartOfDayNode;
  result = [(PGGraphNode *)&v5 init];
  if (result)
  {
    result->_partOfDay = day;
  }

  return result;
}

+ (id)partOfDayNameForPartOfDay:(unint64_t)day
{
  dayCopy = day;
  v11 = *MEMORY[0x277D85DE8];
  if (day <= 7)
  {
    if (day == 2)
    {
      v4 = MEMORY[0x277D275D0];
      goto LABEL_12;
    }

    if (day == 4)
    {
      v4 = MEMORY[0x277D275E0];
      goto LABEL_12;
    }
  }

  else
  {
    switch(day)
    {
      case 8uLL:
        v4 = MEMORY[0x277D275C0];
        goto LABEL_12;
      case 0x10uLL:
        v4 = MEMORY[0x277D275C8];
        goto LABEL_12;
      case 0x20uLL:
        v4 = MEMORY[0x277D275D8];
LABEL_12:
        v5 = *v4;
        goto LABEL_13;
    }
  }

  v8 = +[PGLogging sharedLogging];
  loggingConnection = [v8 loggingConnection];

  if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_ERROR))
  {
    v10[0] = 67109120;
    v10[1] = dayCopy;
    _os_log_error_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_ERROR, "Unknown part of day %d", v10, 8u);
  }

  v5 = @"Unknown";
LABEL_13:
  v6 = *MEMORY[0x277D85DE8];

  return v5;
}

+ (unint64_t)partOfDayForPartOfDayName:(id)name
{
  v11 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  if ([nameCopy isEqualToString:*MEMORY[0x277D275D0]])
  {
    v4 = 2;
  }

  else if ([nameCopy isEqualToString:*MEMORY[0x277D275E0]])
  {
    v4 = 4;
  }

  else if ([nameCopy isEqualToString:*MEMORY[0x277D275C0]])
  {
    v4 = 8;
  }

  else if ([nameCopy isEqualToString:*MEMORY[0x277D275C8]])
  {
    v4 = 16;
  }

  else if ([nameCopy isEqualToString:*MEMORY[0x277D275D8]])
  {
    v4 = 32;
  }

  else
  {
    v5 = +[PGLogging sharedLogging];
    loggingConnection = [v5 loggingConnection];

    if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_ERROR))
    {
      v9 = 138412290;
      v10 = nameCopy;
      _os_log_error_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_ERROR, "Unknown part of day name %@", &v9, 0xCu);
    }

    v4 = 1;
  }

  v7 = *MEMORY[0x277D85DE8];
  return v4;
}

+ (id)stringValueForPartOfDay:(unint64_t)day
{
  dayCopy = day;
  array = [MEMORY[0x277CBEB18] array];
  v5 = array;
  if (dayCopy)
  {
    [array addObject:@"Unknown"];
  }

  if ((dayCopy & 2) != 0)
  {
    v9 = +[PGPhotosGraphProfile partOfDayMorning];
    [v5 addObject:v9];

    if ((dayCopy & 4) == 0)
    {
LABEL_5:
      if ((dayCopy & 8) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_14;
    }
  }

  else if ((dayCopy & 4) == 0)
  {
    goto LABEL_5;
  }

  v10 = +[PGPhotosGraphProfile partOfDayNoon];
  [v5 addObject:v10];

  if ((dayCopy & 8) == 0)
  {
LABEL_6:
    if ((dayCopy & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_15;
  }

LABEL_14:
  v11 = +[PGPhotosGraphProfile partOfDayAfternoon];
  [v5 addObject:v11];

  if ((dayCopy & 0x10) == 0)
  {
LABEL_7:
    if ((dayCopy & 0x20) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_15:
  v12 = +[PGPhotosGraphProfile partOfDayEvening];
  [v5 addObject:v12];

  if ((dayCopy & 0x20) != 0)
  {
LABEL_8:
    v6 = +[PGPhotosGraphProfile partOfDayNight];
    [v5 addObject:v6];
  }

LABEL_9:
  v7 = [v5 componentsJoinedByString:{@", "}];

  return v7;
}

+ (id)filterWithPartOfDay:(unint64_t)day
{
  v11[1] = *MEMORY[0x277D85DE8];
  v4 = [objc_opt_class() partOfDayNameForPartOfDay:day];
  filter = [self filter];
  v10 = @"name";
  v11[0] = v4;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:&v10 count:1];
  v7 = [filter filterBySettingProperties:v6];

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

+ (id)filter
{
  v2 = [objc_alloc(MEMORY[0x277D22C78]) initWithLabel:@"PartOfDay" domain:400];

  return v2;
}

@end