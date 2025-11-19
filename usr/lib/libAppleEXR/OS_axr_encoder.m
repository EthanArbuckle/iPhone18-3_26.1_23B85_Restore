@interface OS_axr_encoder
- (void)dealloc;
@end

@implementation OS_axr_encoder

- (void)dealloc
{
  axr_encoder::~axr_encoder(self);
  v3.receiver = v2;
  v3.super_class = OS_axr_encoder;
  [(OS_axr_encoder *)&v3 dealloc];
}

@end