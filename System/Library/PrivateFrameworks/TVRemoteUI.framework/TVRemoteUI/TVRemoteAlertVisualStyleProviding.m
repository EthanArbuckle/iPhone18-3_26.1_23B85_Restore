@interface TVRemoteAlertVisualStyleProviding
+ (id)visualStyleForIdiom:(int64_t)a3;
@end

@implementation TVRemoteAlertVisualStyleProviding

+ (id)visualStyleForIdiom:(int64_t)a3
{
  v3 = off_279D86DA0;
  if (a3 != 1)
  {
    v3 = &off_279D86DA8;
  }

  v4 = objc_alloc_init(*v3);

  return v4;
}

@end