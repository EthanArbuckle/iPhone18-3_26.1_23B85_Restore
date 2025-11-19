@interface MRPatchworkPatch
- (CGRect)rectangle;
- (MRPatchworkPatch)initWithImage:(id)a3 rectangle:(CGRect)a4 needsBlend:(BOOL)a5;
- (void)dealloc;
@end

@implementation MRPatchworkPatch

- (MRPatchworkPatch)initWithImage:(id)a3 rectangle:(CGRect)a4 needsBlend:(BOOL)a5
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v13.receiver = self;
  v13.super_class = MRPatchworkPatch;
  v11 = [(MRPatchworkPatch *)&v13 init];
  if (v11)
  {
    v11->_image = [a3 retainByUser];
    v11->rectangle.origin.x = x;
    v11->rectangle.origin.y = y;
    v11->rectangle.size.width = width;
    v11->rectangle.size.height = height;
    v11->needsBlend = a5;
  }

  return v11;
}

- (void)dealloc
{
  [(MRImage *)self->_image releaseByUser];
  self->_image = 0;
  v3.receiver = self;
  v3.super_class = MRPatchworkPatch;
  [(MRPatchworkPatch *)&v3 dealloc];
}

- (CGRect)rectangle
{
  x = self->rectangle.origin.x;
  y = self->rectangle.origin.y;
  width = self->rectangle.size.width;
  height = self->rectangle.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end