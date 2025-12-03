@interface WBSPrivateBrowsingUserDefinedContentBlockerManager(ScribbleUtilities)
- (void)clearAllEditsForContentBlocker:()ScribbleUtilities;
- (void)getAllPaintingAvoidanceSelectorsThatApplyToHost:()ScribbleUtilities completionHandler:;
@end

@implementation WBSPrivateBrowsingUserDefinedContentBlockerManager(ScribbleUtilities)

- (void)getAllPaintingAvoidanceSelectorsThatApplyToHost:()ScribbleUtilities completionHandler:
{
  v6 = a4;
  v7 = a3;
  v8 = objc_opt_new();
  v9 = dispatch_group_create();
  dispatch_group_enter(v9);
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __139__WBSPrivateBrowsingUserDefinedContentBlockerManager_ScribbleUtilities__getAllPaintingAvoidanceSelectorsThatApplyToHost_completionHandler___block_invoke;
  v24[3] = &unk_1E8286580;
  v10 = v8;
  v25 = v10;
  v11 = v9;
  v26 = v11;
  v23.receiver = self;
  v23.super_class = &off_1F46B0D60;
  objc_msgSendSuper2(&v23, sel_getAllPaintingAvoidanceSelectorsThatApplyToHost_completionHandler_, v7, v24);
  normalBrowsingUserDefinedContentBlockerManager = [self normalBrowsingUserDefinedContentBlockerManager];
  dispatch_group_enter(v11);
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __139__WBSPrivateBrowsingUserDefinedContentBlockerManager_ScribbleUtilities__getAllPaintingAvoidanceSelectorsThatApplyToHost_completionHandler___block_invoke_2;
  v20[3] = &unk_1E8286580;
  v13 = v10;
  v21 = v13;
  v22 = v11;
  v14 = v11;
  [normalBrowsingUserDefinedContentBlockerManager getAllPaintingAvoidanceSelectorsThatApplyToHost:v7 completionHandler:v20];

  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __139__WBSPrivateBrowsingUserDefinedContentBlockerManager_ScribbleUtilities__getAllPaintingAvoidanceSelectorsThatApplyToHost_completionHandler___block_invoke_3;
  v17[3] = &unk_1E8284B78;
  v18 = v13;
  v19 = v6;
  v15 = v13;
  v16 = v6;
  dispatch_group_notify(v14, MEMORY[0x1E69E96A0], v17);
}

- (void)clearAllEditsForContentBlocker:()ScribbleUtilities
{
  v10.receiver = self;
  v10.super_class = &off_1F46B0D60;
  v4 = a3;
  objc_msgSendSuper2(&v10, sel_clearAllEditsForContentBlocker_, v4);
  normalBrowsingUserDefinedContentBlockerManager = [self normalBrowsingUserDefinedContentBlockerManager];
  host = [v4 host];

  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __104__WBSPrivateBrowsingUserDefinedContentBlockerManager_ScribbleUtilities__clearAllEditsForContentBlocker___block_invoke;
  v8[3] = &unk_1E8285B28;
  v9 = normalBrowsingUserDefinedContentBlockerManager;
  v7 = normalBrowsingUserDefinedContentBlockerManager;
  [v7 contentBlockerForHost:host createIfNeeded:0 completionHandler:v8];
}

@end