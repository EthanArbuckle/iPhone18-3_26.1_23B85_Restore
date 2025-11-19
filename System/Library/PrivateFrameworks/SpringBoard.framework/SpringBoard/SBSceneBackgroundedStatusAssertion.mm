@interface SBSceneBackgroundedStatusAssertion
- (SBSceneBackgroundedStatusAssertion)initWithScenes:(id)a3 invalidationHandler:(id)a4;
- (void)dealloc;
- (void)invalidate;
@end

@implementation SBSceneBackgroundedStatusAssertion

- (SBSceneBackgroundedStatusAssertion)initWithScenes:(id)a3 invalidationHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = SBSceneBackgroundedStatusAssertion;
  v8 = [(SBSceneBackgroundedStatusAssertion *)&v14 init];
  if (v8)
  {
    v9 = [v6 copy];
    scenes = v8->_scenes;
    v8->_scenes = v9;

    v11 = [v7 copy];
    invalidationHandler = v8->_invalidationHandler;
    v8->_invalidationHandler = v11;
  }

  return v8;
}

- (void)dealloc
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBSceneBackgroundedStatusAssertion.m" lineNumber:30 description:@"must invalidate before releasing"];
}

- (void)invalidate
{
  v1 = [MEMORY[0x277CCA890] currentHandler];
  v0 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[SBSceneBackgroundedStatusAssertion invalidate]"];
  [v1 handleFailureInFunction:v0 file:@"SBSceneBackgroundedStatusAssertion.m" lineNumber:40 description:@"this call must be made on the main thread"];
}

@end