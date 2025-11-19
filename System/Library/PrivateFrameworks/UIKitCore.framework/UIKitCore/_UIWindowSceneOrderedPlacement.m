@interface _UIWindowSceneOrderedPlacement
+ (id)orderedPlacementAbove:(id)a3;
+ (id)orderedPlacementBelow:(id)a3;
- (BOOL)isEqual:(id)a3;
- (id)_initWithConfiguration:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)descriptionBuilderWithMultilinePrefix:(id)a3;
@end

@implementation _UIWindowSceneOrderedPlacement

- (id)_initWithConfiguration:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = _UIWindowSceneOrderedPlacement;
  v6 = [(UIWindowScenePlacement *)&v9 _init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(v6 + 1, a3);
  }

  return v7;
}

+ (id)orderedPlacementAbove:(id)a3
{
  v4 = MEMORY[0x1E69DEC28];
  v5 = a3;
  v6 = [v4 alloc];
  v7 = [v5 _persistenceIdentifier];

  v8 = [v6 initWithOrder:0 relativeScenePersistenceIdentifer:v7];
  v9 = [[a1 alloc] _initWithConfiguration:v8];

  return v9;
}

+ (id)orderedPlacementBelow:(id)a3
{
  v4 = MEMORY[0x1E69DEC28];
  v5 = a3;
  v6 = [v4 alloc];
  v7 = [v5 _persistenceIdentifier];

  v8 = [v6 initWithOrder:1 relativeScenePersistenceIdentifer:v7];
  v9 = [[a1 alloc] _initWithConfiguration:v8];

  return v9;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v8.receiver = self;
  v8.super_class = _UIWindowSceneOrderedPlacement;
  v4 = [(UIWindowScenePlacement *)&v8 copyWithZone:a3];
  v5 = [(_UIWindowSceneOrderedPlacement *)self config];
  v6 = [v5 copy];
  [v4 setConfig:v6];

  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = _UIWindowSceneOrderedPlacement;
  if ([(UIWindowScenePlacement *)&v9 isEqual:v4])
  {
    v5 = [v4 config];
    v6 = [(_UIWindowSceneOrderedPlacement *)self config];
    v7 = [v6 isEqual:v5];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)a3
{
  v12.receiver = self;
  v12.super_class = _UIWindowSceneOrderedPlacement;
  v4 = a3;
  v5 = [(UIWindowScenePlacement *)&v12 descriptionBuilderWithMultilinePrefix:v4];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __72___UIWindowSceneOrderedPlacement_descriptionBuilderWithMultilinePrefix___block_invoke;
  v9[3] = &unk_1E70F35B8;
  v6 = v5;
  v10 = v6;
  v11 = self;
  [v6 appendBodySectionWithName:&stru_1EFB14550 multilinePrefix:v4 block:v9];

  v7 = v6;
  return v6;
}

@end