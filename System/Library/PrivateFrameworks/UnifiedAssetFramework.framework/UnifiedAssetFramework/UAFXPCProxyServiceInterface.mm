@interface UAFXPCProxyServiceInterface
+ (id)defaultInterface;
@end

@implementation UAFXPCProxyServiceInterface

+ (id)defaultInterface
{
  v28[5] = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F3B76040];
  v3 = MEMORY[0x1E695DFD8];
  v28[0] = objc_opt_class();
  v28[1] = objc_opt_class();
  v28[2] = objc_opt_class();
  v28[3] = objc_opt_class();
  v28[4] = objc_opt_class();
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v28 count:5];
  v5 = [v3 setWithArray:v4];

  [v2 setClasses:v5 forSelector:sel_operationWithConfig_completion_ argumentIndex:0 ofReply:0];
  v6 = MEMORY[0x1E695DFD8];
  v27[0] = objc_opt_class();
  v27[1] = objc_opt_class();
  v27[2] = objc_opt_class();
  v27[3] = objc_opt_class();
  v27[4] = objc_opt_class();
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v27 count:5];
  v8 = [v6 setWithArray:v7];
  [v2 setClasses:v8 forSelector:sel_checkAssetStatus_ argumentIndex:0 ofReply:1];

  v9 = MEMORY[0x1E695DFD8];
  v26[0] = objc_opt_class();
  v26[1] = objc_opt_class();
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:2];
  v11 = [v9 setWithArray:v10];
  [v2 setClasses:v11 forSelector:sel_lockLatestAtomicInstance_completion_ argumentIndex:0 ofReply:1];

  v12 = MEMORY[0x1E695DFD8];
  v25[0] = objc_opt_class();
  v25[1] = objc_opt_class();
  v25[2] = objc_opt_class();
  v25[3] = objc_opt_class();
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v25 count:4];
  v14 = [v12 setWithArray:v13];
  [v2 setClasses:v14 forSelector:sel_subscriptions_subscriber_user_completion_ argumentIndex:0 ofReply:1];

  v15 = MEMORY[0x1E695DFD8];
  v24[0] = objc_opt_class();
  v24[1] = objc_opt_class();
  v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:2];
  v17 = [v15 setWithArray:v16];
  [v2 setClasses:v17 forSelector:sel_markAssetsExpired_completion_ argumentIndex:0 ofReply:1];

  v18 = MEMORY[0x1E695DFD8];
  v23[0] = objc_opt_class();
  v23[1] = objc_opt_class();
  v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:2];
  v20 = [v18 setWithArray:v19];
  [v2 setClasses:v20 forSelector:sel_markAssetsExpired_completion_ argumentIndex:0 ofReply:1];

  v21 = *MEMORY[0x1E69E9840];

  return v2;
}

@end