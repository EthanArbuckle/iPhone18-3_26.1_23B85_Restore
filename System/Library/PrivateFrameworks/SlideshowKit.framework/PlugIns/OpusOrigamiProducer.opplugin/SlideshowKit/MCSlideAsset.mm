@interface MCSlideAsset
- (MCSlideAsset)init;
- (id)description;
- (void)dealloc;
@end

@implementation MCSlideAsset

- (MCSlideAsset)init
{
  v8.receiver = self;
  v8.super_class = MCSlideAsset;
  result = [(MCSlideAsset *)&v8 init];
  if (result)
  {
    __asm { FMOV            V0.2D, #0.5 }

    result->center = _Q0;
    result->scale = 1.0;
  }

  return result;
}

- (void)dealloc
{
  self->_asset = 0;

  self->_kenBurnsType = 0;
  v3.receiver = self;
  v3.super_class = MCSlideAsset;
  [(MCSlideAsset *)&v3 dealloc];
}

- (id)description
{
  v3.receiver = self;
  v3.super_class = MCSlideAsset;
  return [-[MCSlideAsset description](&v3 "description")];
}

@end