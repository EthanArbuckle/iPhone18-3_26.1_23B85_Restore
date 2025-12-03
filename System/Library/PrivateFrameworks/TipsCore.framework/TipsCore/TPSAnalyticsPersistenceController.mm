@interface TPSAnalyticsPersistenceController
+ (id)asMutableDictionary;
+ (id)persistedObjectForKey:(id)key;
+ (void)persistDictionary:(id)dictionary;
+ (void)persistObject:(id)object forKey:(id)key;
@end

@implementation TPSAnalyticsPersistenceController

+ (id)persistedObjectForKey:(id)key
{
  v3 = MEMORY[0x1E695E000];
  keyCopy = key;
  standardUserDefaults = [v3 standardUserDefaults];
  v6 = [standardUserDefaults objectForKey:@"TPSAnalyticsStore"];
  v7 = [v6 objectForKeyedSubscript:keyCopy];

  return v7;
}

+ (void)persistObject:(id)object forKey:(id)key
{
  v5 = MEMORY[0x1E695E000];
  keyCopy = key;
  objectCopy = object;
  standardUserDefaults = [v5 standardUserDefaults];
  v8 = [standardUserDefaults objectForKey:@"TPSAnalyticsStore"];
  v9 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:v8];
  [v9 setObject:objectCopy forKeyedSubscript:keyCopy];

  [standardUserDefaults setObject:v9 forKey:@"TPSAnalyticsStore"];
  [standardUserDefaults synchronize];
}

+ (id)asMutableDictionary
{
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v3 = [standardUserDefaults objectForKey:@"TPSAnalyticsStore"];
  v4 = [v3 mutableCopy];
  v5 = v4;
  if (v4)
  {
    dictionary = v4;
  }

  else
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
  }

  v7 = dictionary;

  return v7;
}

+ (void)persistDictionary:(id)dictionary
{
  v3 = MEMORY[0x1E695E000];
  dictionaryCopy = dictionary;
  standardUserDefaults = [v3 standardUserDefaults];
  [standardUserDefaults setObject:dictionaryCopy forKey:@"TPSAnalyticsStore"];

  [standardUserDefaults synchronize];
}

@end