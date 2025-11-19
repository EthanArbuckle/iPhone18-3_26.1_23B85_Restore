@interface PVCanceler
+ (id)cancelerWithUpdateBlock:(id)a3;
- (BOOL)canceled;
@end

@implementation PVCanceler

- (BOOL)canceled
{
  p_canceled = &self->_canceled;
  if (!self->_canceled)
  {
    v4 = [(PVCanceler *)self updateBlock];

    if (v4)
    {
      v5 = [(PVCanceler *)self updateBlock];
      (v5)[2](v5, p_canceled);
    }
  }

  return *p_canceled;
}

+ (id)cancelerWithUpdateBlock:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(PVCanceler);
  [(PVCanceler *)v4 setUpdateBlock:v3];

  return v4;
}

@end