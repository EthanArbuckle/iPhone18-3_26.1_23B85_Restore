@interface NSNotificationCenter(SafariCoreExtras)
- (id)safari_addObserverForUserDefaultKey:()SafariCoreExtras queue:usingBlock:;
- (void)safari_addObserver:()SafariCoreExtras selector:forUserDefaultKey:;
- (void)safari_removeObserver:()SafariCoreExtras forUserDefaultKey:;
@end

@implementation NSNotificationCenter(SafariCoreExtras)

- (void)safari_addObserver:()SafariCoreExtras selector:forUserDefaultKey:
{
  v8 = MEMORY[0x1E695E000];
  v9 = a3;
  v10 = [v8 safari_notificationNameForUserDefaultsKey:a5];
  [a1 addObserver:v9 selector:a4 name:v10 object:0];
}

- (void)safari_removeObserver:()SafariCoreExtras forUserDefaultKey:
{
  v6 = MEMORY[0x1E695E000];
  v7 = a3;
  v8 = [v6 safari_notificationNameForUserDefaultsKey:a4];
  [a1 removeObserver:v7 name:v8 object:0];
}

- (id)safari_addObserverForUserDefaultKey:()SafariCoreExtras queue:usingBlock:
{
  v8 = a3;
  v9 = a5;
  v10 = MEMORY[0x1E695E000];
  v11 = a4;
  v12 = [v10 safari_notificationNameForUserDefaultsKey:v8];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __95__NSNotificationCenter_SafariCoreExtras__safari_addObserverForUserDefaultKey_queue_usingBlock___block_invoke;
  v17[3] = &unk_1E7CF2A28;
  v18 = v8;
  v19 = v9;
  v13 = v8;
  v14 = v9;
  v15 = [a1 addObserverForName:v12 object:0 queue:v11 usingBlock:v17];

  return v15;
}

@end