@interface SBIN_FCActivityManager
+ (id)sharedActivityManager;
@end

@implementation SBIN_FCActivityManager

+ (id)sharedActivityManager
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2050000000;
  v2 = getFCActivityManagerClass_softClass;
  v10 = getFCActivityManagerClass_softClass;
  if (!getFCActivityManagerClass_softClass)
  {
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __getFCActivityManagerClass_block_invoke;
    v6[3] = &unk_279D120B8;
    v6[4] = &v7;
    __getFCActivityManagerClass_block_invoke(v6);
    v2 = v8[3];
  }

  v3 = v2;
  _Block_object_dispose(&v7, 8);
  v4 = [v2 sharedActivityManager];

  return v4;
}

@end