@interface SBSceneBackgroundedStatusAssertion
- (SBSceneBackgroundedStatusAssertion)initWithScenes:(id)scenes invalidationHandler:(id)handler;
- (void)dealloc;
- (void)invalidate;
@end

@implementation SBSceneBackgroundedStatusAssertion

- (SBSceneBackgroundedStatusAssertion)initWithScenes:(id)scenes invalidationHandler:(id)handler
{
  scenesCopy = scenes;
  handlerCopy = handler;
  v14.receiver = self;
  v14.super_class = SBSceneBackgroundedStatusAssertion;
  v8 = [(SBSceneBackgroundedStatusAssertion *)&v14 init];
  if (v8)
  {
    v9 = [scenesCopy copy];
    scenes = v8->_scenes;
    v8->_scenes = v9;

    v11 = [handlerCopy copy];
    invalidationHandler = v8->_invalidationHandler;
    v8->_invalidationHandler = v11;
  }

  return v8;
}

- (void)dealloc
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:self object:a2 file:@"SBSceneBackgroundedStatusAssertion.m" lineNumber:30 description:@"must invalidate before releasing"];
}

- (void)invalidate
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v0 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[SBSceneBackgroundedStatusAssertion invalidate]"];
  [currentHandler handleFailureInFunction:v0 file:@"SBSceneBackgroundedStatusAssertion.m" lineNumber:40 description:@"this call must be made on the main thread"];
}

@end