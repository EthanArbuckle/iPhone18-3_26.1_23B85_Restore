@interface UIWindowSceneSpecification
- (id)coreSceneComponentClassDictionary;
@end

@implementation UIWindowSceneSpecification

- (id)coreSceneComponentClassDictionary
{
  v7.receiver = self;
  v7.super_class = UIWindowSceneSpecification;
  coreSceneComponentClassDictionary = [(FBSSceneSpecification *)&v7 coreSceneComponentClassDictionary];
  v3 = [coreSceneComponentClassDictionary mutableCopy];

  [v3 setObject:objc_opt_class() forKeyedSubscript:_UIFocusSystemSceneComponentKey];
  if (_UIViewMaskingConfigurationSPIEnabled())
  {
    v4 = objc_opt_class();
    v5 = +[_UIRelativeCornerMaskingProviderSceneComponent componentKey];
    [v3 setObject:v4 forKeyedSubscript:v5];
  }

  [v3 setObject:objc_opt_class() forKeyedSubscript:0x1EFB5FC50];
  [v3 setObject:objc_opt_class() forKeyedSubscript:0x1EFB5FC30];

  return v3;
}

@end