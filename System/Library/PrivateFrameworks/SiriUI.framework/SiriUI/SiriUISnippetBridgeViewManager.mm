@interface SiriUISnippetBridgeViewManager
+ (id)sharedInstance;
- (void)insertBridgeViewIfNecessaryForCell:(id)cell controller:(id)controller currentSnippet:(id)snippet previousSnippet:(id)previousSnippet bridgeSize:(CGSize)size;
- (void)removeBridgeViewsFromView:(id)view;
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

- (void)insertBridgeViewIfNecessaryForCell:(id)cell controller:(id)controller currentSnippet:(id)snippet previousSnippet:(id)previousSnippet bridgeSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  cellCopy = cell;
  controllerCopy = controller;
  snippetCopy = snippet;
  previousSnippetCopy = previousSnippet;
  if ((SiriUIIsWhitePlatterSnippetBackgroundEnabledForAllSnippets() & 1) == 0)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        height = [[SiriUISnippetBridgeView alloc] initWithFrame:0.0, -height, width, height];
        siriui_snippetBackgroundColor = [MEMORY[0x277D75348] siriui_snippetBackgroundColor];
        [(SiriUISnippetBridgeView *)height setBackgroundColor:siriui_snippetBackgroundColor];

        v17 = [SiriUIKeyline keylineWithKeylineType:2];
        mainScreen = [MEMORY[0x277D759A0] mainScreen];
        [mainScreen scale];
        [v17 setFrame:{0.0, 0.0, width, 1.0 / v19}];

        [(SiriUISnippetBridgeView *)height addSubview:v17];
        contentView = [cellCopy contentView];
        [contentView addSubview:height];
        [cellCopy setShowBackgroundView:0];
        [controllerCopy setManageBackgroundColor:1];
      }
    }
  }
}

- (void)removeBridgeViewsFromView:(id)view
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  subviews = [view subviews];
  v4 = [subviews countByEnumeratingWithState:&v9 objects:v13 count:16];
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
          objc_enumerationMutation(subviews);
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
      v5 = [subviews countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }
}

@end