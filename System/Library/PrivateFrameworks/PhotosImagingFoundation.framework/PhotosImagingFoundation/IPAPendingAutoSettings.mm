@interface IPAPendingAutoSettings
- (BOOL)_applyArchiveDictionary:(id)dictionary;
@end

@implementation IPAPendingAutoSettings

- (BOOL)_applyArchiveDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v4 = [dictionaryCopy count];
  v5 = [dictionaryCopy objectForKeyedSubscript:@"pending"];

  bOOLValue = 0;
  if (v4 == 1 && v5)
  {
    v7 = [dictionaryCopy objectForKeyedSubscript:@"pending"];
    bOOLValue = [v7 BOOLValue];
  }

  return bOOLValue;
}

@end