@interface PUIAssetDownloaders
+ (PUIAssetDownloaders)sharedDownloaders;
- (void)registerBackgroundCompletion:(id)a3 forSession:(id)a4;
@end

@implementation PUIAssetDownloaders

+ (PUIAssetDownloaders)sharedDownloaders
{
  if (qword_2811FF9A8 != -1)
  {
    swift_once();
  }

  v3 = qword_2811FF9B0;

  return v3;
}

- (void)registerBackgroundCompletion:(id)a3 forSession:(id)a4
{
  v5 = _Block_copy(a3);
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  v7 = sub_21B4C9708();
  v9 = v8;
  v10 = self;
  sub_21B424D90(sub_21B42542C, v6, v7, v9);
}

@end