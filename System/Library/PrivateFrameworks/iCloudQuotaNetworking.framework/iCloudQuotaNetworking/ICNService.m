@interface ICNService
- (ICNService)init;
@end

@implementation ICNService

- (ICNService)init
{
  v5.receiver = self;
  v5.super_class = ICNService;
  v2 = [(ICNService *)&v5 init];
  if (v2)
  {
    v3 = objc_alloc_init(_ICNService);
    [(ICNService *)v2 setUnderlyingService:v3];
  }

  return v2;
}

@end