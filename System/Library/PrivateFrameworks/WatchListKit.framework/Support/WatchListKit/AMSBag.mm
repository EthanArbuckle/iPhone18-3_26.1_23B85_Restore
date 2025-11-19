@interface AMSBag
+ (id)wlk_defaultBag;
@end

@implementation AMSBag

+ (id)wlk_defaultBag
{
  v2 = WLKStartupSignpostLogObject();
  if (os_signpost_enabled(v2))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v2, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "WLKBag.DefaultAMSBag", &unk_100037037, buf, 2u);
  }

  v3 = [AMSBag bagForProfile:@"TVApp" profileVersion:@"1"];
  v4 = WLKStartupSignpostLogObject();
  if (os_signpost_enabled(v4))
  {
    *v6 = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v4, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "WLKBag.DefaultAMSBag", &unk_100037037, v6, 2u);
  }

  return v3;
}

@end