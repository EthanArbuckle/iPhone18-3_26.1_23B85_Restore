@interface UIBarButtonItem(Bridge)
- (id)ts_barButtonItemView;
- (id)ts_compressibleBarButtonItemView;
@end

@implementation UIBarButtonItem(Bridge)

- (id)ts_compressibleBarButtonItemView
{
  v1 = [self valueForKey:@"view"];
  v2 = v1;
  if (v1 && [v1 conformsToProtocol:&unk_1F532C768])
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)ts_barButtonItemView
{
  v1 = [self valueForKey:@"view"];
  if (v1 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v2 = v1;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

@end