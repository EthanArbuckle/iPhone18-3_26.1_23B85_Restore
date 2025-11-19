@interface EQKitOverlayBox
- (BOOL)isEqual:(id)a3;
- (BOOL)p_getTransform:(CGAffineTransform *)a3 fromDescendant:(id)a4;
- (CGRect)erasableBounds;
- (EQKitOverlayBox)initWithBox:(id)a3 overlayBox:(id)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)hash;
- (void)dealloc;
- (void)renderIntoContext:(CGContext *)a3 offset:(CGPoint)a4;
@end

@implementation EQKitOverlayBox

- (EQKitOverlayBox)initWithBox:(id)a3 overlayBox:(id)a4
{
  v8.receiver = self;
  v8.super_class = EQKitOverlayBox;
  v6 = [(EQKitOverlayBox *)&v8 init];
  if (v6)
  {
    v6->mBox = a3;
    v6->mOverlayBox = a4;
  }

  return v6;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = EQKitOverlayBox;
  [(EQKitOverlayBox *)&v3 dealloc];
}

- (CGRect)erasableBounds
{
  objc_msgSend_erasableBounds(self->mBox, a2, v2, v3);
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  objc_msgSend_erasableBounds(self->mOverlayBox, v13, v14, v15);
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v24 = v6;
  v25 = v8;
  v26 = v10;
  v27 = v12;

  return CGRectUnion(*&v24, *&v17);
}

- (void)renderIntoContext:(CGContext *)a3 offset:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  v12.receiver = self;
  v12.super_class = EQKitOverlayBox;
  [EQKitBox renderIntoContext:sel_renderIntoContext_offset_ offset:?];
  objc_msgSend_renderIntoContext_offset_(self->mBox, v8, a3, v9, x, y);
  objc_msgSend_renderIntoContext_offset_(self->mOverlayBox, v10, a3, v11, x, y);
}

- (BOOL)p_getTransform:(CGAffineTransform *)a3 fromDescendant:(id)a4
{
  if (a4 == self)
  {
    return 1;
  }

  else
  {
    return objc_msgSend_p_getTransform_fromDescendant_(self->mBox, a2, a3, a4);
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = objc_opt_class();
  v8 = objc_msgSend_allocWithZone_(v5, v6, a3, v7);
  v12 = objc_msgSend_box(self, v9, v10, v11);
  v17 = objc_msgSend_overlayBox(self, v13, v14, v15);

  return objc_msgSend_initWithBox_overlayBox_(v8, v16, v12, v17);
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
        v12 = objc_msgSend_box(v3, v9, v10, v11);
        self = objc_msgSend_box(a3, v13, v14, v15);
        if (v12 == self || (v19 = self, LOBYTE(self) = 0, v12) && v19 && (LODWORD(self) = objc_msgSend_isEqual_(v12, v16, v19, v18), self))
        {
          v20 = objc_msgSend_overlayBox(v3, v16, v17, v18);
          self = objc_msgSend_overlayBox(a3, v21, v22, v23);
          if (v20 == self)
          {
            LOBYTE(self) = 1;
          }

          else
          {
            v26 = self;
            LOBYTE(self) = 0;
            if (v20 && v26)
            {

              LOBYTE(self) = objc_msgSend_isEqual_(v20, v24, v26, v25);
            }
          }
        }
      }
    }
  }

  return self;
}

- (unint64_t)hash
{
  v3.receiver = self;
  v3.super_class = EQKitOverlayBox;
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
  v23 = objc_msgSend_box(self, v20, v21, v22);
  v27 = objc_msgSend_overlayBox(self, v24, v25, v26);
  return objc_msgSend_stringWithFormat_(v3, v28, @"<%@ %p>: height=%f depth=%f width=%f box=%@ overlayBox=%@ ", v29, v4, self, v9, v14, v19, v23, v27);
}

@end