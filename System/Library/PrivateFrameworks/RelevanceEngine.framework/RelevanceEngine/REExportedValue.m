@interface REExportedValue
+ (id)_exportedValueForTable:(id)a3;
+ (id)exportedValueForArray:(id)a3;
+ (id)exportedValueForDate:(id)a3;
+ (id)exportedValueForDictionary:(id)a3;
+ (id)exportedValueForNumber:(id)a3;
+ (id)exportedValueForObject:(id)a3;
+ (id)exportedValueForString:(id)a3;
@end

@implementation REExportedValue

+ (id)exportedValueForArray:(id)a3
{
  v3 = a3;
  if (v3)
  {
    v4 = [[REExportedArrayValue alloc] initWithArray:v3];
  }

  else
  {
    v4 = +[REExportedNullValue sharedInstance];
  }

  v5 = v4;

  return v5;
}

+ (id)exportedValueForDictionary:(id)a3
{
  v3 = a3;
  if (v3)
  {
    v4 = [[REExportedDictionaryValue alloc] initWithDictionary:v3];
  }

  else
  {
    v4 = +[REExportedNullValue sharedInstance];
  }

  v5 = v4;

  return v5;
}

+ (id)exportedValueForDate:(id)a3
{
  v3 = a3;
  if (v3)
  {
    v4 = [[REExportedDateValue alloc] initWithDate:v3];
  }

  else
  {
    v4 = +[REExportedNullValue sharedInstance];
  }

  v5 = v4;

  return v5;
}

+ (id)exportedValueForNumber:(id)a3
{
  v3 = a3;
  if (v3)
  {
    v4 = [[REExportedNumberValue alloc] initWithNumber:v3];
  }

  else
  {
    v4 = +[REExportedNullValue sharedInstance];
  }

  v5 = v4;

  return v5;
}

+ (id)exportedValueForString:(id)a3
{
  v3 = a3;
  if (v3)
  {
    v4 = [[REExportedStringValue alloc] initWithString:v3];
  }

  else
  {
    v4 = +[REExportedNullValue sharedInstance];
  }

  v5 = v4;

  return v5;
}

+ (id)exportedValueForObject:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    v5 = +[REExportedNullValue sharedInstance];
    goto LABEL_26;
  }

  v5 = v4;
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
    v7 = [a1 _exportedValueForTable:v5];
LABEL_24:
    v9 = v7;
    goto LABEL_25;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [a1 exportedValueForString:v5];
    goto LABEL_24;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [a1 exportedValueForNumber:v5];
    goto LABEL_24;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [a1 exportedValueForArray:v5];
    goto LABEL_24;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [a1 exportedValueForDictionary:v5];
    goto LABEL_24;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [a1 exportedValueForDate:v5];
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

  v8 = [(objc_class *)v5 allObjects];
  v9 = [a1 exportedValueForArray:v8];

LABEL_25:
  v5 = v9;
LABEL_26:

  return v5;
}

+ (id)_exportedValueForTable:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x277CBEB38] dictionary];
  v6 = [@"$attrib-" stringByAppendingString:@"type"];
  [v5 setObject:@"table" forKeyedSubscript:v6];

  v7 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v4, "sortable")}];
  v8 = [@"$attrib-" stringByAppendingString:@"sortable"];
  [v5 setObject:v7 forKeyedSubscript:v8];

  v9 = [v4 header];
  [v5 setObject:v9 forKeyedSubscript:@"header"];

  if ([v4 rowsCount])
  {
    v10 = 0;
    do
    {
      v11 = [v4 rowAtIndex:v10];
      v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"%lu", v10];
      [v5 setObject:v11 forKeyedSubscript:v12];

      ++v10;
    }

    while (v10 < [v4 rowsCount]);
  }

  v13 = [a1 exportedValueForDictionary:v5];

  return v13;
}

@end