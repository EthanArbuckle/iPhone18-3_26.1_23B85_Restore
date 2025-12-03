@interface NSBundle(VG)
+ (id)vg_bundle;
+ (id)vg_bundleIdentifier;
+ (id)vg_packageBundle:()VG;
+ (id)vg_resourcePath;
+ (void)setVg_resourcePath:()VG;
@end

@implementation NSBundle(VG)

+ (id)vg_bundle
{
  if (+[NSBundle(VG) vg_bundle]::onceToken != -1)
  {
    +[NSBundle(VG) vg_bundle];
  }

  v1 = +[NSBundle(VG) vg_bundle]::bundle;

  return v1;
}

+ (id)vg_bundleIdentifier
{
  if (+[NSBundle(VG) vg_bundleIdentifier]::onceToken != -1)
  {
    +[NSBundle(VG) vg_bundleIdentifier];
  }

  v1 = +[NSBundle(VG) vg_bundleIdentifier]::bundleIdentifier;

  return v1;
}

+ (id)vg_resourcePath
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __31__NSBundle_VG__vg_resourcePath__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (+[NSBundle(VG) vg_resourcePath]::onceToken != -1)
  {
    dispatch_once(&+[NSBundle(VG) vg_resourcePath]::onceToken, block);
  }

  v1 = _s_vg_resourcePath;

  return v1;
}

+ (void)setVg_resourcePath:()VG
{
  v13[1] = *MEMORY[0x277D85DE8];
  v3 = a3;
  v11 = v3;
  if (_s_vg_resourcePath)
  {
    v7 = MEMORY[0x277CBEAD8];
    v12 = @"value";
    v13[0] = _s_vg_resourcePath;
    v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:&v12 count:1];
    v9 = [v7 exceptionWithName:@"Call Order Violation on vg_resourcePath." reason:@"Attempting to set vg_resourcePath after get method on vg_resourcePath was called." userInfo:v8];

    v10 = v9;
    objc_exception_throw(v9);
  }

  v4 = [v3 copy];
  v5 = _s_vg_setResourcePath;
  _s_vg_setResourcePath = v4;

  v6 = *MEMORY[0x277D85DE8];
}

+ (id)vg_packageBundle:()VG
{
  v3 = a3;
  vg_bundle = [MEMORY[0x277CCA8D8] vg_bundle];
  v5 = [vg_bundle pathForResource:v3 ofType:@"bundle"];

  v6 = [MEMORY[0x277CCA8D8] bundleWithPath:v5];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    vg_bundle2 = [MEMORY[0x277CCA8D8] vg_bundle];
    bundlePath = [vg_bundle2 bundlePath];
    stringByDeletingLastPathComponent = [bundlePath stringByDeletingLastPathComponent];

    v12 = [v3 stringByAppendingPathExtension:@"bundle"];
    v13 = [stringByDeletingLastPathComponent stringByAppendingPathComponent:v12];

    v8 = [MEMORY[0x277CCA8D8] bundleWithPath:v13];
  }

  return v8;
}

@end