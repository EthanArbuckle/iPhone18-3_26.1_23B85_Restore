@interface NSBundle
@end

@implementation NSBundle

void __25__NSBundle_VG__vg_bundle__block_invoke()
{
  v0 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v1 = +[NSBundle(VG) vg_bundle]::bundle;
  +[NSBundle(VG) vg_bundle]::bundle = v0;
}

void __35__NSBundle_VG__vg_bundleIdentifier__block_invoke()
{
  v0 = [MEMORY[0x277CCA8D8] vg_bundle];
  v1 = [v0 bundleIdentifier];
  v2 = +[NSBundle(VG) vg_bundleIdentifier]::bundleIdentifier;
  +[NSBundle(VG) vg_bundleIdentifier]::bundleIdentifier = v1;

  if (!+[NSBundle(VG) vg_bundleIdentifier]::bundleIdentifier)
  {
    +[NSBundle(VG) vg_bundleIdentifier]::bundleIdentifier = @"com.apple.visage";
  }
}

void __31__NSBundle_VG__vg_resourcePath__block_invoke(uint64_t a1)
{
  if (_s_vg_setResourcePath)
  {
    v1 = _s_vg_setResourcePath;
    v2 = _s_vg_resourcePath;
    _s_vg_resourcePath = v1;
  }

  else
  {
    v3 = *(a1 + 32);
    v7 = [objc_opt_class() vg_bundle];
    v4 = [v7 resourcePath];
    v5 = [v4 copy];
    v6 = _s_vg_resourcePath;
    _s_vg_resourcePath = v5;

    v2 = v7;
  }
}

@end