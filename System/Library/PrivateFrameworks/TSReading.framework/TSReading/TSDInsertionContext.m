@interface TSDInsertionContext
+ (id)dragInsertionContextWithPreferredCenter:(CGPoint)a3 required:(BOOL)a4 shouldEndEditing:(BOOL)a5 fromDragToInsertController:(BOOL)a6 insertWillBeDiscarded:(BOOL)a7;
+ (id)nonInteractiveFloatingInsertionContext;
+ (id)nonInteractiveInsertionContext;
- (CGPoint)preferredCenter;
- (TSDInsertionContext)init;
@end

@implementation TSDInsertionContext

+ (id)nonInteractiveInsertionContext
{
  if (nonInteractiveInsertionContext_createNonInteractiveInsertionContextOnce != -1)
  {
    +[TSDInsertionContext nonInteractiveInsertionContext];
  }

  return nonInteractiveInsertionContext_nonInteractiveInsertionContext;
}

TSDNonInteractiveInsertionContext *__53__TSDInsertionContext_nonInteractiveInsertionContext__block_invoke()
{
  result = objc_alloc_init(TSDNonInteractiveInsertionContext);
  nonInteractiveInsertionContext_nonInteractiveInsertionContext = result;
  return result;
}

+ (id)nonInteractiveFloatingInsertionContext
{
  if (nonInteractiveFloatingInsertionContext_createNonInteractiveFloatingInsertionContextOnce != -1)
  {
    +[TSDInsertionContext nonInteractiveFloatingInsertionContext];
  }

  return nonInteractiveFloatingInsertionContext_nonInteractiveFloatingInsertionContext;
}

TSDNonInteractiveFloatingInsertionContext *__61__TSDInsertionContext_nonInteractiveFloatingInsertionContext__block_invoke()
{
  result = objc_alloc_init(TSDNonInteractiveFloatingInsertionContext);
  nonInteractiveFloatingInsertionContext_nonInteractiveFloatingInsertionContext = result;
  return result;
}

+ (id)dragInsertionContextWithPreferredCenter:(CGPoint)a3 required:(BOOL)a4 shouldEndEditing:(BOOL)a5 fromDragToInsertController:(BOOL)a6 insertWillBeDiscarded:(BOOL)a7
{
  v7 = [[TSDDragInsertionContext alloc] initWithPreferredCenter:a4 required:a5 shouldEndEditing:a6 fromDragToInsertController:a7 insertWillBeDiscarded:a3.x, a3.y];

  return v7;
}

- (TSDInsertionContext)init
{
  v7.receiver = self;
  v7.super_class = TSDInsertionContext;
  v2 = [(TSDInsertionContext *)&v7 init];
  if (v2)
  {
    v3 = objc_opt_class();
    if (v3 == objc_opt_class())
    {
      v4 = [MEMORY[0x277D6C290] currentHandler];
      v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDInsertionContext init]"];
      [v4 handleFailureInFunction:v5 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDInsertionContext.m"), 71, @"Cannot instantiate abstract class"}];

      return 0;
    }
  }

  return v2;
}

- (CGPoint)preferredCenter
{
  v2 = *MEMORY[0x277CBF348];
  v3 = *(MEMORY[0x277CBF348] + 8);
  result.y = v3;
  result.x = v2;
  return result;
}

@end