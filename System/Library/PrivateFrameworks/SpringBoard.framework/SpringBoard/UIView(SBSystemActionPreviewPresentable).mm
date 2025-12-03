@interface UIView(SBSystemActionPreviewPresentable)
- (void)_popWithBlock:()SBSystemActionPreviewPresentable;
- (void)_setInflated:()SBSystemActionPreviewPresentable deflated:;
- (void)_shakeWithBlock:()SBSystemActionPreviewPresentable;
- (void)sb_animateStateChangeWithBlock:()SBSystemActionPreviewPresentable style:;
@end

@implementation UIView(SBSystemActionPreviewPresentable)

- (void)sb_animateStateChangeWithBlock:()SBSystemActionPreviewPresentable style:
{
  v6 = a3;
  v7 = v6;
  if (a4 == 2)
  {
    v8 = v6;
    [self _shakeWithBlock:v6];
  }

  else if (a4 == 1)
  {
    v8 = v6;
    [self _popWithBlock:v6];
  }

  else
  {
    if (a4)
    {
      goto LABEL_8;
    }

    v8 = v6;
    (*(v6 + 2))(v6);
  }

  v7 = v8;
LABEL_8:
}

- (void)_setInflated:()SBSystemActionPreviewPresentable deflated:
{
  v7 = +[SBSystemApertureDomain rootSettings];
  v8 = v7;
  if (a3)
  {
    [v7 inflateAnimationScaleUpSettings];
  }

  else
  {
    [v7 inflateAnimationScaleDownSettings];
  }
  v9 = ;
  v10 = +[SBSystemActionDomain rootSettings];
  [v10 inflateScale];
  if ((a3 & 1) != 0 || a4)
  {
    memset(&v38, 0, sizeof(v38));
    if (a3)
    {
      CGAffineTransformMakeScale(&v38, v11, v11);
    }

    else
    {
      v24 = *(MEMORY[0x277CBF2C0] + 16);
      *&v38.a = *MEMORY[0x277CBF2C0];
      *&v38.c = v24;
      *&v38.tx = *(MEMORY[0x277CBF2C0] + 32);
    }

    v22 = MEMORY[0x277D75D18];
    v32 = MEMORY[0x277D85DD0];
    v33 = 3221225472;
    v37 = v38;
    v34 = __66__UIView_SBSystemActionPreviewPresentable___setInflated_deflated___block_invoke;
    v35 = &unk_2783AF078;
    selfCopy = self;
    v23 = &v32;
  }

  else
  {
    layer = [self layer];
    presentationLayer = [layer presentationLayer];
    v14 = [presentationLayer valueForKeyPath:@"transform.scale.x"];
    [v14 doubleValue];
    v16 = v15;

    layer2 = [self layer];
    presentationLayer2 = [layer2 presentationLayer];
    v19 = [presentationLayer2 valueForKeyPath:@"transform.scale.y"];
    [v19 doubleValue];
    v21 = v20;

    v22 = MEMORY[0x277D75D18];
    v25 = MEMORY[0x277D85DD0];
    v26 = 3221225472;
    v27 = __66__UIView_SBSystemActionPreviewPresentable___setInflated_deflated___block_invoke_2;
    v28 = &unk_2783A8C40;
    selfCopy2 = self;
    v30 = v16;
    v31 = v21;
    v23 = &v25;
  }

  [v22 sb_animateWithSettings:v9 mode:3 animations:v23 completion:{0, v25, v26, v27, v28, selfCopy2, v30, v31, v32, v33, v34, v35, selfCopy, *&v37.a, *&v37.c, *&v37.tx}];
}

- (void)_popWithBlock:()SBSystemActionPreviewPresentable
{
  v4 = a3;
  v5 = +[SBSystemActionDomain rootSettings];
  [v5 popScale];
  v7 = v6;
  v8 = MEMORY[0x277D75D18];
  v9 = objc_alloc_init(MEMORY[0x277D65E60]);
  [v9 setBehaviorType:1];
  [v9 setDampingRatio:0.6];
  [v9 setDampingRatioSmoothing:0.0];
  [v9 setResponse:0.5];
  [v9 setResponseSmoothing:0.0];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __58__UIView_SBSystemActionPreviewPresentable___popWithBlock___block_invoke;
  v13[3] = &unk_2783AB990;
  v15 = v7;
  v13[4] = self;
  v14 = v4;
  v10 = v4;
  [v8 sb_animateWithSettings:v9 mode:3 animations:v13 completion:0];

  v11 = dispatch_time(0, 275000000);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __58__UIView_SBSystemActionPreviewPresentable___popWithBlock___block_invoke_2;
  v12[3] = &unk_2783A8C18;
  v12[4] = self;
  dispatch_after(v11, MEMORY[0x277D85CD0], v12);
}

- (void)_shakeWithBlock:()SBSystemActionPreviewPresentable
{
  v4 = a3;
  v5 = MEMORY[0x277D75D18];
  v6 = objc_alloc_init(MEMORY[0x277D65E60]);
  [v6 setBehaviorType:1];
  [v6 setDampingRatio:0.17678];
  [v6 setDampingRatioSmoothing:0.0];
  [v6 setResponse:0.22214];
  [v6 setResponseSmoothing:0.0];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __60__UIView_SBSystemActionPreviewPresentable___shakeWithBlock___block_invoke;
  v10[3] = &unk_2783A98A0;
  v10[4] = self;
  v11 = v4;
  v7 = v4;
  [v5 sb_animateWithSettings:v6 mode:3 animations:v10 completion:0];

  v8 = dispatch_time(0, 275000000);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __60__UIView_SBSystemActionPreviewPresentable___shakeWithBlock___block_invoke_2;
  block[3] = &unk_2783A8C18;
  block[4] = self;
  dispatch_after(v8, MEMORY[0x277D85CD0], block);
}

@end