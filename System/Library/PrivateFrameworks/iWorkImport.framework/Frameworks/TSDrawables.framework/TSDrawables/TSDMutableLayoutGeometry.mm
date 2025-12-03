@interface TSDMutableLayoutGeometry
- (void)outsetBy:(CGSize)by;
- (void)setTransform:(CGAffineTransform *)transform;
- (void)transformBy:(CGAffineTransform *)by;
@end

@implementation TSDMutableLayoutGeometry

- (void)setTransform:(CGAffineTransform *)transform
{
  v3 = *&transform->c;
  v4[0] = *&transform->a;
  v4[1] = v3;
  v4[2] = *&transform->tx;
  objc_msgSend_i_setTransform_(self, a2, v4);
}

- (void)transformBy:(CGAffineTransform *)by
{
  objc_msgSend_transform(self, a2, by);
  v5 = *&by->c;
  *&v7.a = *&by->a;
  *&v7.c = v5;
  *&v7.tx = *&by->tx;
  CGAffineTransformConcat(&v9, &t1, &v7);
  objc_msgSend_i_setTransform_(self, v6, &v9);
}

- (void)outsetBy:(CGSize)by
{
  height = by.height;
  width = by.width;
  objc_msgSend_size(self, a2, v3);
  TSUMultiplySizeScalar();
  TSUAddSizes();
  objc_msgSend_i_setSize_(self, v7, v8);
  memset(&v15, 0, sizeof(v15));
  CGAffineTransformMakeTranslation(&v15, -width, -height);
  objc_msgSend_transform(self, v9, v10);
  v12 = v15;
  CGAffineTransformConcat(&v14, &v12, &t2);
  objc_msgSend_i_setTransform_(self, v11, &v14);
}

@end