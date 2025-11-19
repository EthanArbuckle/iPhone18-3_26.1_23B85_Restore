@interface SBCaptureIntentSceneTarget
- (SBCaptureIntentSceneTarget)initWithScene:(id)a3 andCaptureApplication:(id)a4;
- (void)appendDescriptionToStream:(id)a3;
@end

@implementation SBCaptureIntentSceneTarget

- (SBCaptureIntentSceneTarget)initWithScene:(id)a3 andCaptureApplication:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = SBCaptureIntentSceneTarget;
  v9 = [(SBCaptureIntentSceneTarget *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_scene, a3);
    objc_storeStrong(&v10->_captureApplication, a4);
  }

  return v10;
}

- (void)appendDescriptionToStream:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __56__SBCaptureIntentSceneTarget_appendDescriptionToStream___block_invoke;
  v6[3] = &unk_2783A92D8;
  v7 = v4;
  v8 = self;
  v5 = v4;
  [v5 appendProem:self block:v6];
}

void __56__SBCaptureIntentSceneTarget_appendDescriptionToStream___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3 = [*(*(a1 + 40) + 8) identifier];
  v2 = [v1 appendObject:v3 withName:0];
}

@end