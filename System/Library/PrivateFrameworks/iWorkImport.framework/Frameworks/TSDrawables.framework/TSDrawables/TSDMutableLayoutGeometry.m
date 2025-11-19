@interface TSDMutableLayoutGeometry
- (void)outsetBy:(CGSize)a3;
- (void)setTransform:(CGAffineTransform *)a3;
- (void)transformBy:(CGAffineTransform *)a3;
@end

@implementation TSDMutableLayoutGeometry

- (void)setTransform:(CGAffineTransform *)a3
{
  v3 = *&a3->c;
  v4[0] = *&a3->a;
  v4[1] = v3;
  v4[2] = *&a3->tx;
  objc_msgSend_i_setTransform_(self, a2, v4);
}

- (void)transformBy:(CGAffineTransform *)a3
{
  objc_msgSend_transform(self, a2, a3);
  v5 = *&a3->c;
  *&v7.a = *&a3->a;
  *&v7.c = v5;
  *&v7.tx = *&a3->tx;
  CGAffineTransformConcat(&v9, &t1, &v7);
  objc_msgSend_i_setTransform_(self, v6, &v9);
}

- (void)outsetBy:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
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