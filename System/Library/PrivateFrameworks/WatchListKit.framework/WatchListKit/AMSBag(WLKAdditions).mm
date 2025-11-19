@interface AMSBag(WLKAdditions)
+ (id)wlk_defaultBag;
@end

@implementation AMSBag(WLKAdditions)

+ (id)wlk_defaultBag
{
  v0 = WLKStartupSignpostLogObject();
  if (os_signpost_enabled(v0))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_272A0F000, v0, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "WLKBag.DefaultAMSBag", &unk_272A8884E, buf, 2u);
  }

  v1 = [MEMORY[0x277CEE3F8] bagForProfile:@"TVApp" profileVersion:@"1"];
  v2 = WLKStartupSignpostLogObject();
  if (os_signpost_enabled(v2))
  {
    *v4 = 0;
    _os_signpost_emit_with_name_impl(&dword_272A0F000, v2, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "WLKBag.DefaultAMSBag", &unk_272A8884E, v4, 2u);
  }

  return v1;
}

@end