@interface VUILocalizationManager
+ (id)sharedInstance;
- (id)localizedStringForKey:(id)a3;
- (id)localizedStringForKey:(id)a3 fromTable:(id)a4;
- (id)localizedStringForKey:(id)a3 withCounts:(id)a4;
- (void)updateWithJSDictionary:(id)a3;
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

- (id)localizedStringForKey:(id)a3
{
  v4 = a3;
  v5 = [(VUILocalizationManager *)self overideLocDict];
  v6 = [v5 objectForKeyedSubscript:v4];

  if (!v6)
  {
    v7 = [MEMORY[0x1E696AAE8] vui_videosUIBundle];
    v6 = [v7 localizedStringForKey:v4 value:0 table:0];
  }

  return v6;
}

- (id)localizedStringForKey:(id)a3 fromTable:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(VUILocalizationManager *)self overideLocDict];
  v9 = [v8 objectForKeyedSubscript:v6];

  if (!v9)
  {
    v10 = [MEMORY[0x1E696AAE8] vui_videosUIBundle];
    v9 = [v10 localizedStringForKey:v6 value:0 table:v7];
  }

  return v9;
}

- (id)localizedStringForKey:(id)a3 withCounts:(id)a4
{
  v40[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  if ([v6 count] >= 0xB)
  {
    v19 = MEMORY[0x1E695DF30];
    v20 = *MEMORY[0x1E695DA20];
    v39 = @"collection";
    v40[0] = v6;
    v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v40 forKeys:&v39 count:1];
    v22 = [v19 exceptionWithName:v20 reason:@"Maximum of 10 arguments allowed" userInfo:v21];
    v23 = v22;

    objc_exception_throw(v22);
  }

  [v6 arrayByAddingObjectsFromArray:&unk_1F5E5E7D8];
  v7 = v38 = v6;
  v34 = MEMORY[0x1E696AEC0];
  v37 = +[VUILocalizationManager sharedInstance];
  v32 = [v37 localizedStringForKey:v5];
  v36 = [v7 objectAtIndexedSubscript:0];
  v31 = [v36 intValue];
  v35 = [v7 objectAtIndexedSubscript:1];
  v29 = [v35 intValue];
  v33 = [v7 objectAtIndexedSubscript:2];
  v27 = [v33 intValue];
  v30 = [v7 objectAtIndexedSubscript:3];
  v25 = [v30 intValue];
  v28 = [v7 objectAtIndexedSubscript:4];
  v24 = [v28 intValue];
  v8 = [v7 objectAtIndexedSubscript:5];
  v9 = [v8 intValue];
  v10 = [v7 objectAtIndexedSubscript:6];
  v11 = [v10 intValue];
  v12 = [v7 objectAtIndexedSubscript:7];
  v13 = [v12 intValue];
  v14 = [v7 objectAtIndexedSubscript:8];
  v26 = v5;
  v15 = [v14 intValue];
  v16 = [v7 objectAtIndexedSubscript:9];
  v17 = [v34 localizedStringWithValidatedFormat:v32 validFormatSpecifiers:@"%d %d %d %d %d %d %d %d %d %d" error:0, v31, v29, v27, v25, v24, v9, v11, v13, v15, objc_msgSend(v16, "intValue")];

  return v17;
}

- (void)updateWithJSDictionary:(id)a3
{
  v4 = [a3 copy];
  [(VUILocalizationManager *)self setOverideLocDict:v4];
}

@end