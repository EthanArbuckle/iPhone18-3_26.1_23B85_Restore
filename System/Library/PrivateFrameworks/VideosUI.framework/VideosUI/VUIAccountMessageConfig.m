@interface VUIAccountMessageConfig
- (VUIAccountMessageConfig)init;
- (id)_createVisibilityDictionary;
- (int64_t)_getFallbackVisibilityType;
@end

@implementation VUIAccountMessageConfig

- (VUIAccountMessageConfig)init
{
  v7.receiver = self;
  v7.super_class = VUIAccountMessageConfig;
  v2 = [(VUIAccountMessageConfig *)&v7 init];
  v3 = v2;
  if (v2)
  {
    v4 = [(VUIAccountMessageConfig *)v2 _createVisibilityDictionary];
    visibilityBehaviours = v3->_visibilityBehaviours;
    v3->_visibilityBehaviours = v4;

    v3->_fallbackVisibilityType = [(VUIAccountMessageConfig *)v3 _getFallbackVisibilityType];
    *&v3->_alwaysForceOpenSidebarAnimated = 0;
  }

  return v3;
}

- (id)_createVisibilityDictionary
{
  v11[2] = *MEMORY[0x1E69E9840];
  v10[0] = @"highVisibility";
  v8[0] = @"animateMessageIn";
  v8[1] = @"forceOpenSidebar";
  v9[0] = MEMORY[0x1E695E118];
  v9[1] = MEMORY[0x1E695E118];
  v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:v8 count:2];
  v11[0] = v2;
  v10[1] = @"passiveVisibility";
  v6[0] = @"animateMessageIn";
  v6[1] = @"forceOpenSidebar";
  v7[0] = MEMORY[0x1E695E110];
  v7[1] = MEMORY[0x1E695E110];
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:v6 count:2];
  v11[1] = v3;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:v10 count:2];

  return v4;
}

- (int64_t)_getFallbackVisibilityType
{
  v2 = [VUIFeaturesConfiguration defaultsStringValueForKey:@"fallbackVisibilityType"];
  v3 = v2;
  if (v2)
  {
    v4 = VUIAccountMessageVisibilityTypeFromString(v2);
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

@end