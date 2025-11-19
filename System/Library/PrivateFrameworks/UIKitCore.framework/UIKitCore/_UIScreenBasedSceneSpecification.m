@interface _UIScreenBasedSceneSpecification
- (id)coreSceneComponentClassDictionary;
@end

@implementation _UIScreenBasedSceneSpecification

- (id)coreSceneComponentClassDictionary
{
  if ([UIApp isFrontBoard])
  {
    v7.receiver = self;
    v7.super_class = _UIScreenBasedSceneSpecification;
    v3 = [(UIApplicationSceneSpecification *)&v7 coreSceneComponentClassDictionary];
    v4 = [v3 mutableCopy];

    [v4 setObject:objc_opt_class() forKeyedSubscript:@"_UIHomeAffordanceSceneNotifierComponentKey"];
    v5 = [v4 copy];
  }

  else
  {
    v8.receiver = self;
    v8.super_class = _UIScreenBasedSceneSpecification;
    v5 = [(UIApplicationSceneSpecification *)&v8 coreSceneComponentClassDictionary];
  }

  return v5;
}

@end