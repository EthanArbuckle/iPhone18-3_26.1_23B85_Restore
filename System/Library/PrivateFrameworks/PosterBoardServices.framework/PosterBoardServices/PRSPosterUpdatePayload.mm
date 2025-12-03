@interface PRSPosterUpdatePayload
+ (id)nullPayload;
- (id)_init;
@end

@implementation PRSPosterUpdatePayload

+ (id)nullPayload
{
  _init = [[PRSPosterUpdatePayload alloc] _init];

  return _init;
}

- (id)_init
{
  v3.receiver = self;
  v3.super_class = PRSPosterUpdatePayload;
  return [(PRSPosterUpdatePayload *)&v3 init];
}

@end