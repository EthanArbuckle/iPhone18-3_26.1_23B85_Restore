@interface UIStickerPickerServiceRemoteViewController
@end

@implementation UIStickerPickerServiceRemoteViewController

void __77___UIStickerPickerServiceRemoteViewController_serviceViewControllerInterface__block_invoke()
{
  v0 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F016CD50];
  v1 = _MergedGlobals_1102;
  _MergedGlobals_1102 = v0;

  v2 = _MergedGlobals_1102;
  v3 = MEMORY[0x1E695DFD8];
  v4 = objc_opt_class();
  v5 = [v3 setWithObjects:{v4, objc_opt_class(), 0}];
  [v2 setClasses:v5 forSelector:sel_addStickerToStoreWithRepresentations_completionHandler_ argumentIndex:0 ofReply:0];

  v6 = _MergedGlobals_1102;
  v7 = MEMORY[0x1E695DFD8];
  v8 = objc_opt_class();
  v9 = [v7 setWithObjects:{v8, objc_opt_class(), 0}];
  [v6 setClasses:v9 forSelector:sel_addStickerToStoreWithRepresentations_completionWithStickerIDs_ argumentIndex:0 ofReply:0];

  v10 = _MergedGlobals_1102;
  v11 = MEMORY[0x1E695DFD8];
  v12 = objc_opt_class();
  v13 = objc_opt_class();
  v14 = objc_opt_class();
  v15 = objc_opt_class();
  v16 = [v11 setWithObjects:{v12, v13, v14, v15, objc_opt_class(), 0}];
  [v10 setClasses:v16 forSelector:sel_addStickerToStoreWithRepresentations_completionWithStickerIDs_ argumentIndex:1 ofReply:1];

  v17 = _MergedGlobals_1102;
  v18 = MEMORY[0x1E695DFD8];
  v19 = objc_opt_class();
  v20 = [v18 setWithObjects:{v19, objc_opt_class(), 0}];
  [v17 setClasses:v20 forSelector:sel_addStickerToStoreWithRepresentations_sourceRect_completion_ argumentIndex:0 ofReply:0];

  v21 = _MergedGlobals_1102;
  v22 = MEMORY[0x1E695DFD8];
  v23 = objc_opt_class();
  v24 = objc_opt_class();
  v25 = objc_opt_class();
  v26 = objc_opt_class();
  v27 = [v22 setWithObjects:{v23, v24, v25, v26, objc_opt_class(), 0}];
  [v21 setClasses:v27 forSelector:sel_addStickerToStoreWithRepresentations_sourceRect_completion_ argumentIndex:0 ofReply:1];

  v28 = _MergedGlobals_1102;
  v29 = MEMORY[0x1E695DFD8];
  v30 = objc_opt_class();
  v31 = objc_opt_class();
  v32 = objc_opt_class();
  v33 = objc_opt_class();
  v34 = [v29 setWithObjects:{v30, v31, v32, v33, objc_opt_class(), 0}];
  [v28 setClasses:v34 forSelector:sel_animatedStickerCreationProgressChanged_progress_ argumentIndex:0 ofReply:0];

  v35 = _MergedGlobals_1102;
  v36 = [MEMORY[0x1E695DFD8] setWithObject:objc_opt_class()];
  [v35 setClasses:v36 forSelector:sel_setHostBundleID_ argumentIndex:0 ofReply:0];
}

void __64___UIStickerPickerServiceRemoteViewController_exportedInterface__block_invoke()
{
  v0 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1EFFA3490];
  v1 = qword_1ED49DF60;
  qword_1ED49DF60 = v0;

  v2 = qword_1ED49DF60;
  v3 = MEMORY[0x1E695DFD8];
  v4 = objc_opt_class();
  v5 = [v3 setWithObjects:{v4, objc_opt_class(), 0}];
  [v2 setClasses:v5 forSelector:sel_stageStickerWithIdentifier_representations_name_externalURI_accessibilityLabel_ argumentIndex:1 ofReply:0];

  v6 = qword_1ED49DF60;
  v7 = MEMORY[0x1E695DFD8];
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = objc_opt_class();
  v11 = objc_opt_class();
  v12 = objc_opt_class();
  v13 = objc_opt_class();
  v14 = [v7 setWithObjects:{v8, v9, v10, v11, v12, v13, objc_opt_class(), 0}];
  [v6 setClasses:v14 forSelector:sel_stageSticker_ argumentIndex:0 ofReply:0];
}

@end