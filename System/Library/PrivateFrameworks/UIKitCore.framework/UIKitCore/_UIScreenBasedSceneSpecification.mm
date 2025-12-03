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
    coreSceneComponentClassDictionary = [(UIApplicationSceneSpecification *)&v7 coreSceneComponentClassDictionary];
    v4 = [coreSceneComponentClassDictionary mutableCopy];

    [v4 setObject:objc_opt_class() forKeyedSubscript:@"_UIHomeAffordanceSceneNotifierComponentKey"];
    coreSceneComponentClassDictionary2 = [v4 copy];
  }

  else
  {
    v8.receiver = self;
    v8.super_class = _UIScreenBasedSceneSpecification;
    coreSceneComponentClassDictionary2 = [(UIApplicationSceneSpecification *)&v8 coreSceneComponentClassDictionary];
  }

  return coreSceneComponentClassDictionary2;
}

@end