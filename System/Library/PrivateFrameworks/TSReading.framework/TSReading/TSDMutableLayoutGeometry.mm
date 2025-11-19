@interface TSDMutableLayoutGeometry
- (void)outsetBy:(CGSize)a3;
- (void)setTransform:(CGAffineTransform *)a3;
- (void)transformBy:(CGAffineTransform *)a3;
@end

@implementation TSDMutableLayoutGeometry

- (void)setTransform:(CGAffineTransform *)a3
{
  v3 = *&a3->a;
  v4 = *&a3->c;
  *&self->super.mTransform.tx = *&a3->tx;
  *&self->super.mTransform.c = v4;
  *&self->super.mTransform.a = v3;
}

- (void)transformBy:(CGAffineTransform *)a3
{
  v4 = *&self->super.mTransform.c;
  *&t1.a = *&self->super.mTransform.a;
  *&t1.c = v4;
  *&t1.tx = *&self->super.mTransform.tx;
  v5 = *&a3->c;
  *&v7.a = *&a3->a;
  *&v7.c = v5;
  *&v7.tx = *&a3->tx;
  CGAffineTransformConcat(&v9, &t1, &v7);
  v6 = *&v9.c;
  *&self->super.mTransform.a = *&v9.a;
  *&self->super.mTransform.c = v6;
  *&self->super.mTransform.tx = *&v9.tx;
}

- (void)outsetBy:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v6 = TSDMultiplySizeScalar(a3.width, a3.height, 2.0);
  self->super.mSize.width = TSDAddSizes(self->super.mSize.width, self->super.mSize.height, v6);
  self->super.mSize.height = v7;
  memset(&v13, 0, sizeof(v13));
  CGAffineTransformMakeTranslation(&v13, -width, -height);
  t1 = v13;
  v8 = *&self->super.mTransform.c;
  *&v10.a = *&self->super.mTransform.a;
  *&v10.c = v8;
  *&v10.tx = *&self->super.mTransform.tx;
  CGAffineTransformConcat(&v12, &t1, &v10);
  v9 = *&v12.c;
  *&self->super.mTransform.a = *&v12.a;
  *&self->super.mTransform.c = v9;
  *&self->super.mTransform.tx = *&v12.tx;
}

@end