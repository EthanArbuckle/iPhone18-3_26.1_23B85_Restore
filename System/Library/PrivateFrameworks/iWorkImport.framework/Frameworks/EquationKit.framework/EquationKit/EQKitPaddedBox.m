@interface EQKitPaddedBox
- (BOOL)appendOpticalAlignToSpec:(void *)a3 offset:(CGPoint)a4;
- (BOOL)isEqual:(id)a3;
- (BOOL)p_getTransform:(CGAffineTransform *)a3 fromDescendant:(id)a4;
- (CGRect)erasableBounds;
- (EQKitPaddedBox)initWithBox:(id)a3 height:(double)a4 width:(double)a5 depth:(double)a6 lspace:(double)a7 voffset:(double)a8;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)hash;
- (void)dealloc;
- (void)renderIntoContext:(CGContext *)a3 offset:(CGPoint)a4;
@end

@implementation EQKitPaddedBox

- (EQKitPaddedBox)initWithBox:(id)a3 height:(double)a4 width:(double)a5 depth:(double)a6 lspace:(double)a7 voffset:(double)a8
{
  v16.receiver = self;
  v16.super_class = EQKitPaddedBox;
  v14 = [(EQKitPaddedBox *)&v16 init];
  if (v14)
  {
    v14->mBox = a3;
    v14->mHeight = a4;
    v14->mWidth = a5;
    v14->mDepth = a6;
    v14->mLspace = a7;
    v14->mVoffset = a8;
  }

  return v14;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = EQKitPaddedBox;
  [(EQKitPaddedBox *)&v3 dealloc];
}

- (CGRect)erasableBounds
{
  objc_msgSend_erasableBounds(self->mBox, a2, v2, v3);
  mLspace = self->mLspace;
  v10 = -self->mVoffset;

  return CGRectOffset(*&v5, mLspace, v10);
}

- (void)renderIntoContext:(CGContext *)a3 offset:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  v10.receiver = self;
  v10.super_class = EQKitPaddedBox;
  [EQKitBox renderIntoContext:sel_renderIntoContext_offset_ offset:?];
  objc_msgSend_renderIntoContext_offset_(self->mBox, v8, a3, v9, x + self->mLspace, y - self->mVoffset);
}

- (BOOL)appendOpticalAlignToSpec:(void *)a3 offset:(CGPoint)a4
{
  v5 = *(a3 + 6);
  if (v5 <= 1)
  {
    if (v5)
    {
      if (v5 != 1)
      {
        return objc_msgSend_appendOpticalAlignToSpec_offset_(self->mBox, a2, a3, v4, a4.x, a4.y);
      }

      goto LABEL_8;
    }

    return objc_msgSend_appendOpticalAlignToSpec_offset_(self->mBox, a2, a3, v4, a4.x, a4.y - self->mVoffset);
  }

  if (v5 == 3)
  {
LABEL_8:
    a4.x = a4.x + self->mLspace;
    return objc_msgSend_appendOpticalAlignToSpec_offset_(self->mBox, a2, a3, v4, a4.x, a4.y);
  }

  if (v5 == 2)
  {
    return objc_msgSend_appendOpticalAlignToSpec_offset_(self->mBox, a2, a3, v4, a4.x, a4.y - self->mVoffset);
  }

  return objc_msgSend_appendOpticalAlignToSpec_offset_(self->mBox, a2, a3, v4, a4.x, a4.y);
}

- (BOOL)p_getTransform:(CGAffineTransform *)a3 fromDescendant:(id)a4
{
  if (a4 == self)
  {
    LOBYTE(Transform_fromDescendant) = 1;
  }

  else
  {
    v15 = v4;
    v16 = v5;
    Transform_fromDescendant = objc_msgSend_p_getTransform_fromDescendant_(self->mBox, a2, a3, a4);
    if (Transform_fromDescendant)
    {
      v9 = *&a3->c;
      *&v13.a = *&a3->a;
      *&v13.c = v9;
      mLspace = self->mLspace;
      *&v13.tx = *&a3->tx;
      CGAffineTransformTranslate(&v14, &v13, mLspace, -self->mVoffset);
      v11 = *&v14.c;
      *&a3->a = *&v14.a;
      *&a3->c = v11;
      *&a3->tx = *&v14.tx;
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
  objc_msgSend_height(self, v13, v14, v15);
  v17 = v16;
  objc_msgSend_width(self, v18, v19, v20);
  v22 = v21;
  objc_msgSend_depth(self, v23, v24, v25);
  v27 = v26;
  objc_msgSend_lspace(self, v28, v29, v30);
  v32 = v31;
  objc_msgSend_voffset(self, v33, v34, v35);

  return objc_msgSend_initWithBox_height_width_depth_lspace_voffset_(v8, v36, v12, v37, v17, v22, v27, v32, v38);
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
        objc_msgSend_height(v3, v9, v10, v11);
        v13 = v12;
        objc_msgSend_height(a3, v14, v15, v16);
        if (v13 == v20 && (objc_msgSend_width(v3, v17, v18, v19), v22 = v21, objc_msgSend_width(a3, v23, v24, v25), v22 == v29) && (objc_msgSend_depth(v3, v26, v27, v28), v31 = v30, objc_msgSend_depth(a3, v32, v33, v34), v31 == v38) && (objc_msgSend_lspace(v3, v35, v36, v37), v40 = v39, objc_msgSend_lspace(a3, v41, v42, v43), v40 == v47) && (objc_msgSend_voffset(v3, v44, v45, v46), v49 = v48, objc_msgSend_voffset(a3, v50, v51, v52), v49 == v56))
        {
          v57 = objc_msgSend_box(v3, v53, v54, v55);
          self = objc_msgSend_box(a3, v58, v59, v60);
          if (v57 == self)
          {
            LOBYTE(self) = 1;
          }

          else
          {
            v63 = self;
            LOBYTE(self) = 0;
            if (v57 && v63)
            {

              LOBYTE(self) = objc_msgSend_isEqual_(v57, v61, v63, v62);
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
  v3.super_class = EQKitPaddedBox;
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
  objc_msgSend_lspace(self, v20, v21, v22);
  v24 = v23;
  objc_msgSend_voffset(self, v25, v26, v27);
  v29 = v28;
  v33 = objc_msgSend_box(self, v30, v31, v32);
  return objc_msgSend_stringWithFormat_(v3, v34, @"<%@ %p>: height=%f depth=%f width=%f lspace=%f voffset=%f box=%@ ", v35, v4, self, v9, v14, v19, v24, v29, v33);
}

@end