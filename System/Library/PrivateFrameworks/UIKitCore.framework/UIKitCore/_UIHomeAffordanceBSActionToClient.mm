@interface _UIHomeAffordanceBSActionToClient
- (_UIHomeAffordanceBSActionToClient)init;
- (int64_t)actionType;
- (void)appendDescriptionToStream:(id)stream;
@end

@implementation _UIHomeAffordanceBSActionToClient

- (_UIHomeAffordanceBSActionToClient)init
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"_UIHomeAffordanceBSActionToClient.m" lineNumber:40 description:{@"%s: init is not allowed on %@", "-[_UIHomeAffordanceBSActionToClient init]", objc_opt_class()}];

  return 0;
}

- (int64_t)actionType
{
  info = [(_UIHomeAffordanceBSActionToClient *)self info];
  v3 = [info objectForSetting:0];
  integerValue = [v3 integerValue];

  return integerValue;
}

- (void)appendDescriptionToStream:(id)stream
{
  streamCopy = stream;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __63___UIHomeAffordanceBSActionToClient_appendDescriptionToStream___block_invoke;
  v6[3] = &unk_1E70F35B8;
  v7 = streamCopy;
  selfCopy = self;
  v5 = streamCopy;
  [v5 appendProem:self block:v6];
}

@end