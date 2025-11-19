@interface EQKitVShift
- (BOOL)isEqual:(id)a3;
- (BOOL)p_getTransform:(CGAffineTransform *)a3 fromDescendant:(id)a4;
- (CGRect)erasableBounds;
- (EQKitVShift)initWithBox:(id)a3 offset:(double)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)hash;
- (void)dealloc;
- (void)renderIntoContext:(CGContext *)a3 offset:(CGPoint)a4;
@end

@implementation EQKitVShift

- (EQKitVShift)initWithBox:(id)a3 offset:(double)a4
{
  v8.receiver = self;
  v8.super_class = EQKitVShift;
  v6 = [(EQKitVShift *)&v8 init];
  if (v6)
  {
    v6->mBox = a3;
    v6->mOffset = a4;
  }

  return v6;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = EQKitVShift;
  [(EQKitVShift *)&v3 dealloc];
}

- (CGRect)erasableBounds
{
  objc_msgSend_erasableBounds(self->mBox, a2, v2, v3);
  v9 = -self->mOffset;

  return CGRectOffset(*&v5, 0.0, v9);
}

- (void)renderIntoContext:(CGContext *)a3 offset:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  v10.receiver = self;
  v10.super_class = EQKitVShift;
  [EQKitBox renderIntoContext:sel_renderIntoContext_offset_ offset:?];
  objc_msgSend_renderIntoContext_offset_(self->mBox, v8, a3, v9, x, y - self->mOffset);
}

- (BOOL)p_getTransform:(CGAffineTransform *)a3 fromDescendant:(id)a4
{
  if (a4 == self)
  {
    LOBYTE(Transform_fromDescendant) = 1;
  }

  else
  {
    v14 = v4;
    v15 = v5;
    Transform_fromDescendant = objc_msgSend_p_getTransform_fromDescendant_(self->mBox, a2, a3, a4);
    if (Transform_fromDescendant)
    {
      v9 = *&a3->c;
      *&v12.a = *&a3->a;
      *&v12.c = v9;
      *&v12.tx = *&a3->tx;
      CGAffineTransformTranslate(&v13, &v12, 0.0, -self->mOffset);
      v10 = *&v13.c;
      *&a3->a = *&v13.a;
      *&a3->c = v10;
      *&a3->tx = *&v13.tx;
      LOBYTE(Transform_fromDescendant) = 1;
    }
  }

  return Transform_fromDescendant;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = objc_opt_class();
  v8 = objc_msgSend_allocWithZone_(v5, v6, a3, v7);
  v12 = objc_msgSend_box(self, v9, v10, v11);
  objc_msgSend_offset(self, v13, v14, v15);

  return objc_msgSend_initWithBox_offset_(v8, v16, v12, v17);
}

- (BOOL)isEqual:(id)a3
{
  v3 = self;
  v4 = self == a3;
  LOBYTE(self) = self == a3;
  if (a3)
  {
    if (!v4)
    {
      v6 = objc_opt_class();
      LODWORD(self) = objc_msgSend_isMemberOfClass_(a3, v7, v6, v8);
      if (self)
      {
        objc_msgSend_offset(v3, v9, v10, v11);
        v13 = v12;
        objc_msgSend_offset(a3, v14, v15, v16);
        if (v13 == v20)
        {
          v21 = objc_msgSend_box(v3, v17, v18, v19);
          self = objc_msgSend_box(a3, v22, v23, v24);
          if (v21 == self)
          {
            LOBYTE(self) = 1;
          }

          else
          {
            v27 = self;
            LOBYTE(self) = 0;
            if (v21 && v27)
            {

              LOBYTE(self) = objc_msgSend_isEqual_(v21, v25, v27, v26);
            }
          }
        }

        else
        {
          LOBYTE(self) = 0;
        }
      }
    }
  }

  return self;
}

- (unint64_t)hash
{
  v3.receiver = self;
  v3.super_class = EQKitVShift;
  return [(EQKitBox *)&v3 hash];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  objc_msgSend_height(self, v5, v6, v7);
  v9 = v8;
  objc_msgSend_depth(self, v10, v11, v12);
  v14 = v13;
  objc_msgSend_width(self, v15, v16, v17);
  v19 = v18;
  objc_msgSend_offset(self, v20, v21, v22);
  v24 = v23;
  v28 = objc_msgSend_box(self, v25, v26, v27);
  return objc_msgSend_stringWithFormat_(v3, v29, @"<%@ %p>: height=%f depth=%f width=%f offset=%f box=%@ ", v30, v4, self, v9, v14, v19, v24, v28);
}

@end