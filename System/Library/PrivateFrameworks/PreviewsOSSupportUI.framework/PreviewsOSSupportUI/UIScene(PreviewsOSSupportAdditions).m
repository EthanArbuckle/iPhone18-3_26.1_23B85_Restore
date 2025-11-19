@interface UIScene(PreviewsOSSupportAdditions)
- (uint64_t)uv_previewAgentDisplaysUI;
- (void)uv_registerActionHandlerForKey:()PreviewsOSSupportAdditions handler:;
- (void)uv_sendSceneAction:()PreviewsOSSupportAdditions;
@end

@implementation UIScene(PreviewsOSSupportAdditions)

- (void)uv_registerActionHandlerForKey:()PreviewsOSSupportAdditions handler:
{
  v11[1] = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = a3;
  v8 = [[_UVBSActionHandler alloc] initWithHandler:v6];

  v11[0] = v8;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:1];
  [a1 _registerBSActionResponderArray:v9 forKey:v7];

  v10 = *MEMORY[0x277D85DE8];
}

- (void)uv_sendSceneAction:()PreviewsOSSupportAdditions
{
  v4 = a3;
  v6 = [a1 _FBSScene];
  v5 = [MEMORY[0x277CBEB98] setWithObject:v4];

  [v6 sendActions:v5];
}

- (uint64_t)uv_previewAgentDisplaysUI
{
  v1 = [a1 _FBSScene];
  v2 = [v1 specification];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [v2 previewAgentDisplaysUI];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

@end