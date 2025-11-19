@interface IPAPendingAutoSettings
- (BOOL)_applyArchiveDictionary:(id)a3;
@end

@implementation IPAPendingAutoSettings

- (BOOL)_applyArchiveDictionary:(id)a3
{
  v3 = a3;
  v4 = [v3 count];
  v5 = [v3 objectForKeyedSubscript:@"pending"];

  v6 = 0;
  if (v4 == 1 && v5)
  {
    v7 = [v3 objectForKeyedSubscript:@"pending"];
    v6 = [v7 BOOLValue];
  }

  return v6;
}

@end