@interface VUITabItemsUpdateConfig
- (VUITabItemsUpdateConfig)init;
@end

@implementation VUITabItemsUpdateConfig

- (VUITabItemsUpdateConfig)init
{
  v10[2] = *MEMORY[0x1E69E9840];
  v8.receiver = self;
  v8.super_class = VUITabItemsUpdateConfig;
  v2 = [(VUITabItemsUpdateConfig *)&v8 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v9[0] = @"value";
    v4 = [MEMORY[0x1E696AD98] numberWithDouble:28800.0];
    v9[1] = @"animated";
    v10[0] = v4;
    v10[1] = MEMORY[0x1E695E110];
    v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:v9 count:2];
    [(NSDictionary *)v3 setObject:v5 forKey:@"refreshTTL"];

    eventDescriptors = v2->_eventDescriptors;
    v2->_eventDescriptors = v3;
  }

  return v2;
}

@end