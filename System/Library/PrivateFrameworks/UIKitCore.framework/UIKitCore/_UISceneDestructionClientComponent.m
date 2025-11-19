@interface _UISceneDestructionClientComponent
- (id)destructionConditions;
- (void)setDestructionConditions:(void *)a1;
- (void)setScene:(id)a3;
@end

@implementation _UISceneDestructionClientComponent

- (id)destructionConditions
{
  if (a1)
  {
    v1 = [a1 clientScene];
    v2 = [v1 clientSettings];
    v3 = [v2 destructionConditions];
    v4 = [v3 object];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setDestructionConditions:(void *)a1
{
  v3 = a2;
  if (a1)
  {
    v4 = [a1 clientScene];
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __63___UISceneDestructionClientComponent_setDestructionConditions___block_invoke;
    v5[3] = &unk_1E71249F0;
    v6 = v3;
    [v4 updateClientSettings:v5];
  }
}

- (void)setScene:(id)a3
{
  v5.receiver = self;
  v5.super_class = _UISceneDestructionClientComponent;
  [(FBSSceneComponent *)&v5 setScene:a3];
  v4 = [MEMORY[0x1E695DFD8] set];
  [(_UISceneDestructionClientComponent *)self setDestructionConditions:v4];
}

@end