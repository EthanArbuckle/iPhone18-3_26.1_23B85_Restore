@interface PRSPosterUpdatePayload
+ (id)nullPayload;
- (id)_init;
@end

@implementation PRSPosterUpdatePayload

+ (id)nullPayload
{
  v2 = [[PRSPosterUpdatePayload alloc] _init];

  return v2;
}

- (id)_init
{
  v3.receiver = self;
  v3.super_class = PRSPosterUpdatePayload;
  return [(PRSPosterUpdatePayload *)&v3 init];
}

@end