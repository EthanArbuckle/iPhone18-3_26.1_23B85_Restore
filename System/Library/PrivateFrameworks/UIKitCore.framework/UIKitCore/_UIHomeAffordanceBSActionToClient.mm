@interface _UIHomeAffordanceBSActionToClient
- (_UIHomeAffordanceBSActionToClient)init;
- (int64_t)actionType;
- (void)appendDescriptionToStream:(id)a3;
@end

@implementation _UIHomeAffordanceBSActionToClient

- (_UIHomeAffordanceBSActionToClient)init
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"_UIHomeAffordanceBSActionToClient.m" lineNumber:40 description:{@"%s: init is not allowed on %@", "-[_UIHomeAffordanceBSActionToClient init]", objc_opt_class()}];

  return 0;
}

- (int64_t)actionType
{
  v2 = [(_UIHomeAffordanceBSActionToClient *)self info];
  v3 = [v2 objectForSetting:0];
  v4 = [v3 integerValue];

  return v4;
}

- (void)appendDescriptionToStream:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __63___UIHomeAffordanceBSActionToClient_appendDescriptionToStream___block_invoke;
  v6[3] = &unk_1E70F35B8;
  v7 = v4;
  v8 = self;
  v5 = v4;
  [v5 appendProem:self block:v6];
}

@end