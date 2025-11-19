@interface SiriUISnippetBridgeViewManager
+ (id)sharedInstance;
- (void)insertBridgeViewIfNecessaryForCell:(id)a3 controller:(id)a4 currentSnippet:(id)a5 previousSnippet:(id)a6 bridgeSize:(CGSize)a7;
- (void)removeBridgeViewsFromView:(id)a3;
@end

@implementation SiriUISnippetBridgeViewManager

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_0 != -1)
  {
    +[SiriUISnippetBridgeViewManager sharedInstance];
  }

  v3 = sharedInstance_sharedInstance;

  return v3;
}

uint64_t __48__SiriUISnippetBridgeViewManager_sharedInstance__block_invoke()
{
  v0 = objc_alloc_init(SiriUISnippetBridgeViewManager);
  v1 = sharedInstance_sharedInstance;
  sharedInstance_sharedInstance = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

- (void)insertBridgeViewIfNecessaryForCell:(id)a3 controller:(id)a4 currentSnippet:(id)a5 previousSnippet:(id)a6 bridgeSize:(CGSize)a7
{
  height = a7.height;
  width = a7.width;
  v21 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  if ((SiriUIIsWhitePlatterSnippetBackgroundEnabledForAllSnippets() & 1) == 0)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v15 = [[SiriUISnippetBridgeView alloc] initWithFrame:0.0, -height, width, height];
        v16 = [MEMORY[0x277D75348] siriui_snippetBackgroundColor];
        [(SiriUISnippetBridgeView *)v15 setBackgroundColor:v16];

        v17 = [SiriUIKeyline keylineWithKeylineType:2];
        v18 = [MEMORY[0x277D759A0] mainScreen];
        [v18 scale];
        [v17 setFrame:{0.0, 0.0, width, 1.0 / v19}];

        [(SiriUISnippetBridgeView *)v15 addSubview:v17];
        v20 = [v21 contentView];
        [v20 addSubview:v15];
        [v21 setShowBackgroundView:0];
        [v12 setManageBackgroundColor:1];
      }
    }
  }
}

- (void)removeBridgeViewsFromView:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = [a3 subviews];
  v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v9 + 1) + 8 * v7);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v8 removeFromSuperview];
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }
}

@end