@interface SBSecureRenderingHostComponent
- (void)setScene:(id)a3;
@end

@implementation SBSecureRenderingHostComponent

- (void)setScene:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = SBSecureRenderingHostComponent;
  [(FBSSceneComponent *)&v12 setScene:v4];
  v5 = objc_opt_class();
  v6 = v4;
  if (v5)
  {
    if (objc_opt_isKindOfClass())
    {
      v7 = v6;
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __43__SBSecureRenderingHostComponent_setScene___block_invoke;
  v10[3] = &unk_2783C1638;
  v11 = v8;
  v9 = v8;
  [v9 updateWhenMutable:v10];
}

void __43__SBSecureRenderingHostComponent_setScene___block_invoke(uint64_t a1, void *a2)
{
  v4 = [a2 transientLocalSettings];
  v3 = [_SBSecureRenderingSceneExtensionSceneBox boxForFBScene:*(a1 + 32)];
  [v4 setObject:v3 forSetting:732775916];
}

@end