@interface STKStickerUsageManager
+ (STKStickerUsageManager)sharedManager;
- (unint64_t)stickerCountsForBundleIdentifier:(id)identifier;
- (void)logStickerWithStickerIdentifier:(id)identifier bundleIdentifier:(id)bundleIdentifier;
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

- (void)logStickerWithStickerIdentifier:(id)identifier bundleIdentifier:(id)bundleIdentifier
{
  v5 = sub_1B8A23F24();
  v7 = v6;
  v8 = sub_1B8A23F24();
  v10 = v9;
  selfCopy = self;
  sub_1B8A1DF20(v5, v7, v8, v10);
}

- (unint64_t)stickerCountsForBundleIdentifier:(id)identifier
{
  v4 = sub_1B8A23F24();
  v6 = v5;
  selfCopy = self;
  v8 = sub_1B8A1E44C(v4, v6);

  return v8;
}

@end