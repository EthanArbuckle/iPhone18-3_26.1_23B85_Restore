@interface BMUserActivityMetadataEvent(IdentifiableContent)
- (void)forwardInvocation:()IdentifiableContent;
@end

@implementation BMUserActivityMetadataEvent(IdentifiableContent)

- (void)forwardInvocation:()IdentifiableContent
{
  v4 = a3;
  if (sel_isEqual([v4 selector], sel_uniqueId))
  {
    v5 = sel_hv_uniqueId;
  }

  else
  {
    if (!sel_isEqual([v4 selector], sel_bundleId))
    {
      v6.receiver = a1;
      v6.super_class = &off_2847610C0;
      objc_msgSendSuper2(&v6, sel_forwardInvocation_, v4);
      goto LABEL_7;
    }

    v5 = sel_hv_bundleId;
  }

  [v4 setSelector:v5];
  [v4 invoke];
LABEL_7:
}

@end