@interface EQKitLayout
- (CGRect)erasableBounds;
- (CGSize)naturalSize;
- (EQKitLayout)initWithRoot:(id)root environment:(id)environment;
- (EQKitLayout)layoutWithContext:(id)context;
- (NSString)description;
- (double)depth;
- (double)height;
- (double)vsize;
- (void)dealloc;
- (void)renderIntoContext:(CGContext *)context offset:(CGPoint)offset;
@end

@implementation EQKitLayout

- (EQKitLayout)initWithRoot:(id)root environment:(id)environment
{
  v8.receiver = self;
  v8.super_class = EQKitLayout;
  v6 = [(EQKitLayout *)&v8 init];
  if (v6)
  {
    v6->mRoot = root;
    v6->mEnvironment = environment;
  }

  return v6;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = EQKitLayout;
  [(EQKitLayout *)&v3 dealloc];
}

- (EQKitLayout)layoutWithContext:(id)context
{
  self->mBox = 0;
  self->mScale = 1.0;
  if (context)
  {
    if ((objc_opt_respondsToSelector() & 1) == 0)
    {
      return (self->mBox != 0);
    }

    v11 = objc_msgSend_attributeCollection(self->mRoot, v5, v6, v7);
    if (!v11)
    {
      return (self->mBox != 0);
    }

    objc_msgSend_beginLayout(self->mEnvironment, v8, v9, v10);
    sub_275CA30B4(v48, context, self->mEnvironment, v11);
    mBox = sub_275CA388C(v48, self->mRoot, &self->mAscent, &self->mDescent, &self->mLeading, &self->mNaturalAlignmentOffset, &self->mSingleLineHeight);
    self->mBox = mBox;
    if (self->mSingleLineHeight)
    {
      v16 = self->mAscent + self->mDescent;
    }

    else
    {
      objc_msgSend_height(mBox, v13, v14, v15);
      mAscent = self->mAscent;
      if (v20 + self->mLeading * 0.5 > mAscent)
      {
        objc_msgSend_height(self->mBox, v17, v18, v19);
        mAscent = v22 + self->mLeading * 0.5;
      }

      objc_msgSend_depth(self->mBox, v17, v18, v19);
      mDescent = self->mDescent;
      if (v24 + self->mLeading * 0.5 > mDescent)
      {
        objc_msgSend_depth(self->mBox, v13, v14, v15);
        mDescent = v25 + self->mLeading * 0.5;
      }

      v16 = mAscent + mDescent;
      mBox = self->mBox;
    }

    objc_msgSend_width(mBox, v13, v14, v15);
    if (v29 > 0.0 && v16 > 0.0)
    {
      objc_msgSend_targetSize(context, v26, v27, v28);
      v35 = v34;
      if (v34 <= 0.0 || (v36 = v33, v33 <= 0.0))
      {
        objc_msgSend_containerSize(context, v30, v31, v32);
        v43 = v42;
        if (v42 <= 0.0)
        {
          goto LABEL_20;
        }

        v44 = v41;
        if (v41 <= 0.0)
        {
          goto LABEL_20;
        }

        objc_msgSend_width(self->mBox, v26, v27, v28);
        *&v45 = v43 / v45;
        v38 = fminf(*&v45, 1.0);
        v40 = v44 / v16;
      }

      else
      {
        objc_msgSend_erasableBounds(self->mBox, v30, v31, v32);
        v38 = v35 / v37;
        v40 = v36 / v39;
      }

      v46 = v40;
      self->mScale = fminf(v38, v46);
    }

LABEL_20:
    objc_msgSend_endLayout(self->mEnvironment, v26, v27, v28);
    sub_275CA314C(v48);
    return (self->mBox != 0);
  }

  return 0;
}

- (double)height
{
  if (self->mSingleLineHeight)
  {
    mAscent = self->mAscent;
  }

  else
  {
    objc_msgSend_height(self->mBox, a2, v2, v3);
    v10 = v9 + self->mLeading * 0.5;
    mAscent = self->mAscent;
    if (v10 > mAscent)
    {
      objc_msgSend_height(self->mBox, v6, v7, v8);
      mAscent = v11 + self->mLeading * 0.5;
    }
  }

  return mAscent * self->mScale;
}

- (double)depth
{
  if (self->mSingleLineHeight)
  {
    mDescent = self->mDescent;
  }

  else
  {
    objc_msgSend_depth(self->mBox, a2, v2, v3);
    mDescent = self->mDescent;
    if (v9 + self->mLeading * 0.5 > mDescent)
    {
      objc_msgSend_depth(self->mBox, v6, v7, v8);
      mDescent = v10 + self->mLeading * 0.5;
    }
  }

  return mDescent * self->mScale;
}

- (double)vsize
{
  objc_msgSend_height(self, a2, v2, v3);
  v6 = v5;
  objc_msgSend_depth(self, v7, v8, v9);
  return v6 + v10;
}

- (CGRect)erasableBounds
{
  mBox = self->mBox;
  if (mBox)
  {
    objc_msgSend_erasableBounds(mBox, a2, v2, v3);
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;
    CGAffineTransformMakeScale(&v14, self->mScale, self->mScale);
    v15.origin.x = v7;
    v15.origin.y = v9;
    v15.size.width = v11;
    v15.size.height = v13;
    return CGRectApplyAffineTransform(v15, &v14);
  }

  else
  {
    return **&MEMORY[0x277CBF3A0];
  }
}

- (CGSize)naturalSize
{
  objc_msgSend_erasableBounds(self, a2, v2, v3);
  v6 = v5;
  v8 = v7;
  objc_msgSend_width(self, v9, v10, v11);
  if (v15 > v6)
  {
    objc_msgSend_width(self, v12, v13, v14);
    v6 = v16;
  }

  objc_msgSend_height(self, v12, v13, v14);
  v18 = v17;
  objc_msgSend_depth(self, v19, v20, v21);
  if (v18 + v25 > v8)
  {
    objc_msgSend_height(self, v22, v23, v24);
    v27 = v26;
    objc_msgSend_depth(self, v28, v29, v30);
    v8 = v27 + v31;
  }

  v32 = v6 + 2.0;
  v33 = v8 + 2.0;
  result.height = v33;
  result.width = v32;
  return result;
}

- (void)renderIntoContext:(CGContext *)context offset:(CGPoint)offset
{
  y = offset.y;
  x = offset.x;
  CGContextSaveGState(context);
  CGContextScaleCTM(context, self->mScale, self->mScale);
  CGAffineTransformMakeScale(&v10, 1.0 / self->mScale, 1.0 / self->mScale);
  objc_msgSend_renderIntoContext_offset_(self->mBox, v6, context, v7, vaddq_f64(*&v10.tx, vmlaq_n_f64(vmulq_n_f64(*&v10.c, y), *&v10.a, x)));
  CGContextRestoreGState(context);
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  return objc_msgSend_stringWithFormat_(v3, v6, @"<%@ %p box=%@>", v7, v5, self, self->mBox);
}

@end