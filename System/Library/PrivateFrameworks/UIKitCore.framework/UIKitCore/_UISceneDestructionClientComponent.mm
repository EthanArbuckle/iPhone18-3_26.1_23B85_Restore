@interface _UISceneDestructionClientComponent
- (id)destructionConditions;
- (void)setDestructionConditions:(void *)conditions;
- (void)setScene:(id)scene;
@end

@implementation _UISceneDestructionClientComponent

- (id)destructionConditions
{
  if (self)
  {
    clientScene = [self clientScene];
    clientSettings = [clientScene clientSettings];
    destructionConditions = [clientSettings destructionConditions];
    object = [destructionConditions object];
  }

  else
  {
    object = 0;
  }

  return object;
}

- (void)setDestructionConditions:(void *)conditions
{
  v3 = a2;
  if (conditions)
  {
    clientScene = [conditions clientScene];
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __63___UISceneDestructionClientComponent_setDestructionConditions___block_invoke;
    v5[3] = &unk_1E71249F0;
    v6 = v3;
    [clientScene updateClientSettings:v5];
  }
}

- (void)setScene:(id)scene
{
  v5.receiver = self;
  v5.super_class = _UISceneDestructionClientComponent;
  [(FBSSceneComponent *)&v5 setScene:scene];
  v4 = [MEMORY[0x1E695DFD8] set];
  [(_UISceneDestructionClientComponent *)self setDestructionConditions:v4];
}

@end