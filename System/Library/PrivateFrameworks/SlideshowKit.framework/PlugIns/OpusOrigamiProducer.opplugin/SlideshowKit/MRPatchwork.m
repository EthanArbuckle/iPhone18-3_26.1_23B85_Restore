@interface MRPatchwork
- (MRPatchwork)init;
- (MRPatchwork)patchworkWithPatch:(id)a3;
- (void)dealloc;
@end

@implementation MRPatchwork

- (MRPatchwork)init
{
  v4.receiver = self;
  v4.super_class = MRPatchwork;
  v2 = [(MRPatchwork *)&v4 init];
  if (v2)
  {
    v2->_patches = objc_alloc_init(NSMutableArray);
  }

  return v2;
}

- (void)dealloc
{
  self->_patches = 0;
  v3.receiver = self;
  v3.super_class = MRPatchwork;
  [(MRPatchwork *)&v3 dealloc];
}

- (MRPatchwork)patchworkWithPatch:(id)a3
{
  v4 = objc_alloc_init(MRPatchwork);
  [(MRPatchwork *)v4 addPatch:a3];

  return v4;
}

@end