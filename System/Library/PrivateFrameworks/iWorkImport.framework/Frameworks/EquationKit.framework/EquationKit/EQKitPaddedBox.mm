@interface EQKitPaddedBox
- (BOOL)appendOpticalAlignToSpec:(void *)spec offset:(CGPoint)offset;
- (BOOL)isEqual:(id)equal;
- (BOOL)p_getTransform:(CGAffineTransform *)transform fromDescendant:(id)descendant;
- (CGRect)erasableBounds;
- (EQKitPaddedBox)initWithBox:(id)box height:(double)height width:(double)width depth:(double)depth lspace:(double)lspace voffset:(double)voffset;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)hash;
- (void)dealloc;
- (void)renderIntoContext:(CGContext *)context offset:(CGPoint)offset;
@end

@implementation EQKitPaddedBox

- (EQKitPaddedBox)initWithBox:(id)box height:(double)height width:(double)width depth:(double)depth lspace:(double)lspace voffset:(double)voffset
{
  v16.receiver = self;
  v16.super_class = EQKitPaddedBox;
  v14 = [(EQKitPaddedBox *)&v16 init];
  if (v14)
  {
    v14->mBox = box;
    v14->mHeight = height;
    v14->mWidth = width;
    v14->mDepth = depth;
    v14->mLspace = lspace;
    v14->mVoffset = voffset;
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

- (void)renderIntoContext:(CGContext *)context offset:(CGPoint)offset
{
  y = offset.y;
  x = offset.x;
  v10.receiver = self;
  v10.super_class = EQKitPaddedBox;
  [EQKitBox renderIntoContext:sel_renderIntoContext_offset_ offset:?];
  objc_msgSend_renderIntoContext_offset_(self->mBox, v8, context, v9, x + self->mLspace, y - self->mVoffset);
}

- (BOOL)appendOpticalAlignToSpec:(void *)spec offset:(CGPoint)offset
{
  v5 = *(spec + 6);
  if (v5 <= 1)
  {
    if (v5)
    {
      if (v5 != 1)
      {
        return objc_msgSend_appendOpticalAlignToSpec_offset_(self->mBox, a2, spec, v4, offset.x, offset.y);
      }

      goto LABEL_8;
    }

    return objc_msgSend_appendOpticalAlignToSpec_offset_(self->mBox, a2, spec, v4, offset.x, offset.y - self->mVoffset);
  }

  if (v5 == 3)
  {
LABEL_8:
    offset.x = offset.x + self->mLspace;
    return objc_msgSend_appendOpticalAlignToSpec_offset_(self->mBox, a2, spec, v4, offset.x, offset.y);
  }

  if (v5 == 2)
  {
    return objc_msgSend_appendOpticalAlignToSpec_offset_(self->mBox, a2, spec, v4, offset.x, offset.y - self->mVoffset);
  }

  return objc_msgSend_appendOpticalAlignToSpec_offset_(self->mBox, a2, spec, v4, offset.x, offset.y);
}

- (BOOL)p_getTransform:(CGAffineTransform *)transform fromDescendant:(id)descendant
{
  if (descendant == self)
  {
    LOBYTE(Transform_fromDescendant) = 1;
  }

  else
  {
    v15 = v4;
    v16 = v5;
    Transform_fromDescendant = objc_msgSend_p_getTransform_fromDescendant_(self->mBox, a2, transform, descendant);
    if (Transform_fromDescendant)
    {
      v9 = *&transform->c;
      *&v13.a = *&transform->a;
      *&v13.c = v9;
      mLspace = self->mLspace;
      *&v13.tx = *&transform->tx;
      CGAffineTransformTranslate(&v14, &v13, mLspace, -self->mVoffset);
      v11 = *&v14.c;
      *&transform->a = *&v14.a;
      *&transform->c = v11;
      *&transform->tx = *&v14.tx;
      LOBYTE(Transform_fromDescendant) = 1;
    }
  }

  return Transform_fromDescendant;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = objc_opt_class();
  v8 = objc_msgSend_allocWithZone_(v5, v6, zone, v7);
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

- (BOOL)isEqual:(id)equal
{
  selfCopy = self;
  v4 = self == equal;
  LOBYTE(self) = self == equal;
  if (equal)
  {
    if (!v4)
    {
      v6 = objc_opt_class();
      LODWORD(self) = objc_msgSend_isMemberOfClass_(equal, v7, v6, v8);
      if (self)
      {
        objc_msgSend_height(selfCopy, v9, v10, v11);
        v13 = v12;
        objc_msgSend_height(equal, v14, v15, v16);
        if (v13 == v20 && (objc_msgSend_width(selfCopy, v17, v18, v19), v22 = v21, objc_msgSend_width(equal, v23, v24, v25), v22 == v29) && (objc_msgSend_depth(selfCopy, v26, v27, v28), v31 = v30, objc_msgSend_depth(equal, v32, v33, v34), v31 == v38) && (objc_msgSend_lspace(selfCopy, v35, v36, v37), v40 = v39, objc_msgSend_lspace(equal, v41, v42, v43), v40 == v47) && (objc_msgSend_voffset(selfCopy, v44, v45, v46), v49 = v48, objc_msgSend_voffset(equal, v50, v51, v52), v49 == v56))
        {
          v57 = objc_msgSend_box(selfCopy, v53, v54, v55);
          self = objc_msgSend_box(equal, v58, v59, v60);
          if (v57 == self)
          {
            LOBYTE(self) = 1;
          }

          else
          {
            selfCopy2 = self;
            LOBYTE(self) = 0;
            if (v57 && selfCopy2)
            {

              LOBYTE(self) = objc_msgSend_isEqual_(v57, v61, selfCopy2, v62);
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