@interface STKStickerUsageManager
+ (STKStickerUsageManager)sharedManager;
- (unint64_t)stickerCountsForBundleIdentifier:(id)a3;
- (void)logStickerWithStickerIdentifier:(id)a3 bundleIdentifier:(id)a4;
@end

@implementation STKStickerUsageManager

+ (STKStickerUsageManager)sharedManager
{
  if (qword_1EBA91340 != -1)
  {
    swift_once();
  }

  v3 = qword_1EBA91348;

  return v3;
}

- (void)logStickerWithStickerIdentifier:(id)a3 bundleIdentifier:(id)a4
{
  v5 = sub_1B8A23F24();
  v7 = v6;
  v8 = sub_1B8A23F24();
  v10 = v9;
  v11 = self;
  sub_1B8A1DF20(v5, v7, v8, v10);
}

- (unint64_t)stickerCountsForBundleIdentifier:(id)a3
{
  v4 = sub_1B8A23F24();
  v6 = v5;
  v7 = self;
  v8 = sub_1B8A1E44C(v4, v6);

  return v8;
}

@end