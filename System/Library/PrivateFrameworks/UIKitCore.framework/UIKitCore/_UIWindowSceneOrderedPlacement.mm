@interface _UIWindowSceneOrderedPlacement
+ (id)orderedPlacementAbove:(id)above;
+ (id)orderedPlacementBelow:(id)below;
- (BOOL)isEqual:(id)equal;
- (id)_initWithConfiguration:(id)configuration;
- (id)copyWithZone:(_NSZone *)zone;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
@end

@implementation _UIWindowSceneOrderedPlacement

- (id)_initWithConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v9.receiver = self;
  v9.super_class = _UIWindowSceneOrderedPlacement;
  _init = [(UIWindowScenePlacement *)&v9 _init];
  v7 = _init;
  if (_init)
  {
    objc_storeStrong(_init + 1, configuration);
  }

  return v7;
}

+ (id)orderedPlacementAbove:(id)above
{
  v4 = MEMORY[0x1E69DEC28];
  aboveCopy = above;
  v6 = [v4 alloc];
  _persistenceIdentifier = [aboveCopy _persistenceIdentifier];

  v8 = [v6 initWithOrder:0 relativeScenePersistenceIdentifer:_persistenceIdentifier];
  v9 = [[self alloc] _initWithConfiguration:v8];

  return v9;
}

+ (id)orderedPlacementBelow:(id)below
{
  v4 = MEMORY[0x1E69DEC28];
  belowCopy = below;
  v6 = [v4 alloc];
  _persistenceIdentifier = [belowCopy _persistenceIdentifier];

  v8 = [v6 initWithOrder:1 relativeScenePersistenceIdentifer:_persistenceIdentifier];
  v9 = [[self alloc] _initWithConfiguration:v8];

  return v9;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v8.receiver = self;
  v8.super_class = _UIWindowSceneOrderedPlacement;
  v4 = [(UIWindowScenePlacement *)&v8 copyWithZone:zone];
  config = [(_UIWindowSceneOrderedPlacement *)self config];
  v6 = [config copy];
  [v4 setConfig:v6];

  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v9.receiver = self;
  v9.super_class = _UIWindowSceneOrderedPlacement;
  if ([(UIWindowScenePlacement *)&v9 isEqual:equalCopy])
  {
    config = [equalCopy config];
    config2 = [(_UIWindowSceneOrderedPlacement *)self config];
    v7 = [config2 isEqual:config];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  v12.receiver = self;
  v12.super_class = _UIWindowSceneOrderedPlacement;
  prefixCopy = prefix;
  v5 = [(UIWindowScenePlacement *)&v12 descriptionBuilderWithMultilinePrefix:prefixCopy];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __72___UIWindowSceneOrderedPlacement_descriptionBuilderWithMultilinePrefix___block_invoke;
  v9[3] = &unk_1E70F35B8;
  v6 = v5;
  v10 = v6;
  selfCopy = self;
  [v6 appendBodySectionWithName:&stru_1EFB14550 multilinePrefix:prefixCopy block:v9];

  v7 = v6;
  return v6;
}

@end