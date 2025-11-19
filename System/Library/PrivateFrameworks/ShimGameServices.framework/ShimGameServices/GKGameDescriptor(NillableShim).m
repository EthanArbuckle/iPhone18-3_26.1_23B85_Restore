@interface GKGameDescriptor(NillableShim)
+ (id)gameDescriptorWithAdamID:()NillableShim bundleID:platform:shortBundleVersion:;
@end

@implementation GKGameDescriptor(NillableShim)

+ (id)gameDescriptorWithAdamID:()NillableShim bundleID:platform:shortBundleVersion:
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  if (v9 | v10)
  {
    v13 = objc_alloc_init(MEMORY[0x277D0C050]);
    if (v9)
    {
      v14 = objc_alloc_init(MEMORY[0x277CCABB8]);
      [v14 setNumberStyle:0];
      v15 = [v14 numberFromString:v9];
      [v13 setAdamID:v15];
    }
  }

  else
  {
    v16 = MEMORY[0x277CCACA8];
    v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"adamID and bundleID can't both be nil"];
    v18 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter_GameServicesShims/Frameworks/GameServices/ShimGameServices/Modules/GameCenterFoundation_Shims/GCF+NillableShims.m"];
    v19 = [v18 lastPathComponent];
    v20 = [v16 stringWithFormat:@"%@ (adamID || bundleID)\n[%s (%s:%d)]", v17, "+[GKGameDescriptor(NillableShim) gameDescriptorWithAdamID:bundleID:platform:shortBundleVersion:]", objc_msgSend(v19, "UTF8String"), 18];

    [MEMORY[0x277CBEAD8] raise:@"GameKit Exception" format:{@"%@", v20}];
    v13 = objc_alloc_init(MEMORY[0x277D0C050]);
  }

  [v13 setBundleIdentifier:v10];
  if (v11)
  {
    [v13 setPlatform:{objc_msgSend(objc_opt_class(), "gamePlatformFromServerGameDescriptorString:", v11)}];
  }

  [v13 setShortBundleVersion:v12];

  return v13;
}

@end