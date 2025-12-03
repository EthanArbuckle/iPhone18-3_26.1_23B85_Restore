@interface VUILocalizationManager
+ (id)sharedInstance;
- (id)localizedStringForKey:(id)key;
- (id)localizedStringForKey:(id)key fromTable:(id)table;
- (id)localizedStringForKey:(id)key withCounts:(id)counts;
- (void)updateWithJSDictionary:(id)dictionary;
@end

@implementation VUILocalizationManager

+ (id)sharedInstance
{
  if (sharedInstance_onceToken != -1)
  {
    +[VUILocalizationManager sharedInstance];
  }

  v3 = sharedInstance_sharedInstance;

  return v3;
}

void __40__VUILocalizationManager_sharedInstance__block_invoke()
{
  v0 = objc_alloc_init(VUILocalizationManager);
  v1 = sharedInstance_sharedInstance;
  sharedInstance_sharedInstance = v0;
}

- (id)localizedStringForKey:(id)key
{
  keyCopy = key;
  overideLocDict = [(VUILocalizationManager *)self overideLocDict];
  v6 = [overideLocDict objectForKeyedSubscript:keyCopy];

  if (!v6)
  {
    vui_videosUIBundle = [MEMORY[0x1E696AAE8] vui_videosUIBundle];
    v6 = [vui_videosUIBundle localizedStringForKey:keyCopy value:0 table:0];
  }

  return v6;
}

- (id)localizedStringForKey:(id)key fromTable:(id)table
{
  keyCopy = key;
  tableCopy = table;
  overideLocDict = [(VUILocalizationManager *)self overideLocDict];
  v9 = [overideLocDict objectForKeyedSubscript:keyCopy];

  if (!v9)
  {
    vui_videosUIBundle = [MEMORY[0x1E696AAE8] vui_videosUIBundle];
    v9 = [vui_videosUIBundle localizedStringForKey:keyCopy value:0 table:tableCopy];
  }

  return v9;
}

- (id)localizedStringForKey:(id)key withCounts:(id)counts
{
  v40[1] = *MEMORY[0x1E69E9840];
  keyCopy = key;
  countsCopy = counts;
  if ([countsCopy count] >= 0xB)
  {
    v19 = MEMORY[0x1E695DF30];
    v20 = *MEMORY[0x1E695DA20];
    v39 = @"collection";
    v40[0] = countsCopy;
    v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v40 forKeys:&v39 count:1];
    v22 = [v19 exceptionWithName:v20 reason:@"Maximum of 10 arguments allowed" userInfo:v21];
    v23 = v22;

    objc_exception_throw(v22);
  }

  [countsCopy arrayByAddingObjectsFromArray:&unk_1F5E5E7D8];
  v7 = v38 = countsCopy;
  v34 = MEMORY[0x1E696AEC0];
  v37 = +[VUILocalizationManager sharedInstance];
  v32 = [v37 localizedStringForKey:keyCopy];
  v36 = [v7 objectAtIndexedSubscript:0];
  intValue = [v36 intValue];
  v35 = [v7 objectAtIndexedSubscript:1];
  intValue2 = [v35 intValue];
  v33 = [v7 objectAtIndexedSubscript:2];
  intValue3 = [v33 intValue];
  v30 = [v7 objectAtIndexedSubscript:3];
  intValue4 = [v30 intValue];
  v28 = [v7 objectAtIndexedSubscript:4];
  intValue5 = [v28 intValue];
  v8 = [v7 objectAtIndexedSubscript:5];
  intValue6 = [v8 intValue];
  v10 = [v7 objectAtIndexedSubscript:6];
  intValue7 = [v10 intValue];
  v12 = [v7 objectAtIndexedSubscript:7];
  intValue8 = [v12 intValue];
  v14 = [v7 objectAtIndexedSubscript:8];
  v26 = keyCopy;
  intValue9 = [v14 intValue];
  v16 = [v7 objectAtIndexedSubscript:9];
  v17 = [v34 localizedStringWithValidatedFormat:v32 validFormatSpecifiers:@"%d %d %d %d %d %d %d %d %d %d" error:0, intValue, intValue2, intValue3, intValue4, intValue5, intValue6, intValue7, intValue8, intValue9, objc_msgSend(v16, "intValue")];

  return v17;
}

- (void)updateWithJSDictionary:(id)dictionary
{
  v4 = [dictionary copy];
  [(VUILocalizationManager *)self setOverideLocDict:v4];
}

@end