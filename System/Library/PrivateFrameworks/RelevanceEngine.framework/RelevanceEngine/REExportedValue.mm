@interface REExportedValue
+ (id)_exportedValueForTable:(id)table;
+ (id)exportedValueForArray:(id)array;
+ (id)exportedValueForDate:(id)date;
+ (id)exportedValueForDictionary:(id)dictionary;
+ (id)exportedValueForNumber:(id)number;
+ (id)exportedValueForObject:(id)object;
+ (id)exportedValueForString:(id)string;
@end

@implementation REExportedValue

+ (id)exportedValueForArray:(id)array
{
  arrayCopy = array;
  if (arrayCopy)
  {
    v4 = [[REExportedArrayValue alloc] initWithArray:arrayCopy];
  }

  else
  {
    v4 = +[REExportedNullValue sharedInstance];
  }

  v5 = v4;

  return v5;
}

+ (id)exportedValueForDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  if (dictionaryCopy)
  {
    v4 = [[REExportedDictionaryValue alloc] initWithDictionary:dictionaryCopy];
  }

  else
  {
    v4 = +[REExportedNullValue sharedInstance];
  }

  v5 = v4;

  return v5;
}

+ (id)exportedValueForDate:(id)date
{
  dateCopy = date;
  if (dateCopy)
  {
    v4 = [[REExportedDateValue alloc] initWithDate:dateCopy];
  }

  else
  {
    v4 = +[REExportedNullValue sharedInstance];
  }

  v5 = v4;

  return v5;
}

+ (id)exportedValueForNumber:(id)number
{
  numberCopy = number;
  if (numberCopy)
  {
    v4 = [[REExportedNumberValue alloc] initWithNumber:numberCopy];
  }

  else
  {
    v4 = +[REExportedNullValue sharedInstance];
  }

  v5 = v4;

  return v5;
}

+ (id)exportedValueForString:(id)string
{
  stringCopy = string;
  if (stringCopy)
  {
    v4 = [[REExportedStringValue alloc] initWithString:stringCopy];
  }

  else
  {
    v4 = +[REExportedNullValue sharedInstance];
  }

  v5 = v4;

  return v5;
}

+ (id)exportedValueForObject:(id)object
{
  objectCopy = object;
  if (!objectCopy)
  {
    v5 = +[REExportedNullValue sharedInstance];
    goto LABEL_26;
  }

  v5 = objectCopy;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    goto LABEL_26;
  }

  if (object_isClass(v5))
  {
    v6 = NSStringFromClass(v5);

    v5 = v6;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [self _exportedValueForTable:v5];
LABEL_24:
    v9 = v7;
    goto LABEL_25;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [self exportedValueForString:v5];
    goto LABEL_24;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [self exportedValueForNumber:v5];
    goto LABEL_24;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [self exportedValueForArray:v5];
    goto LABEL_24;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [self exportedValueForDictionary:v5];
    goto LABEL_24;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [self exportedValueForDate:v5];
    goto LABEL_24;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v10 = +[(RESingleton *)REInterfaceCache];
    v11 = [v10 exportedInterfaceClass:objc_opt_class()];

    if (v11)
    {
      v12 = REExportedObjectValue;
    }

    else
    {
      v12 = REExportedUnknownObjectValue;
    }

    v7 = [[v12 alloc] initWithObject:v5];
    goto LABEL_24;
  }

  allObjects = [(objc_class *)v5 allObjects];
  v9 = [self exportedValueForArray:allObjects];

LABEL_25:
  v5 = v9;
LABEL_26:

  return v5;
}

+ (id)_exportedValueForTable:(id)table
{
  tableCopy = table;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v6 = [@"$attrib-" stringByAppendingString:@"type"];
  [dictionary setObject:@"table" forKeyedSubscript:v6];

  v7 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(tableCopy, "sortable")}];
  v8 = [@"$attrib-" stringByAppendingString:@"sortable"];
  [dictionary setObject:v7 forKeyedSubscript:v8];

  header = [tableCopy header];
  [dictionary setObject:header forKeyedSubscript:@"header"];

  if ([tableCopy rowsCount])
  {
    v10 = 0;
    do
    {
      v11 = [tableCopy rowAtIndex:v10];
      v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"%lu", v10];
      [dictionary setObject:v11 forKeyedSubscript:v12];

      ++v10;
    }

    while (v10 < [tableCopy rowsCount]);
  }

  v13 = [self exportedValueForDictionary:dictionary];

  return v13;
}

@end