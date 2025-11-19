@interface EQKitLayout
- (CGRect)erasableBounds;
- (EQKitLayout)initWithRoot:(id)a3 environment:(id)a4;
- (EQKitLayout)layoutWithContext:(id)a3;
- (NSString)description;
- (double)depth;
- (double)height;
- (double)vsize;
- (void)dealloc;
- (void)renderIntoContext:(CGContext *)a3 offset:(CGPoint)a4;
@end

@implementation EQKitLayout

- (EQKitLayout)initWithRoot:(id)a3 environment:(id)a4
{
  v8.receiver = self;
  v8.super_class = EQKitLayout;
  v6 = [(EQKitLayout *)&v8 init];
  if (v6)
  {
    v6->mRoot = a3;
    v6->mEnvironment = a4;
  }

  return v6;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = EQKitLayout;
  [(EQKitLayout *)&v3 dealloc];
}

- (EQKitLayout)layoutWithContext:(id)a3
{
  self->mBox = 0;
  self->mScale = 1.0;
  if (a3)
  {
    if (objc_opt_respondsToSelector())
    {
      v5 = [(EQKitRootNode *)self->mRoot attributeCollection];
      if (v5)
      {
        [(EQKitEnvironmentInstance *)self->mEnvironment beginLayout];
        EQKitLayoutManager::EQKitLayoutManager(v13, a3, self->mEnvironment, v5);
        self->mBox = EQKitLayoutManager::layoutExpression(v13, self->mRoot, &self->mAscent, &self->mDescent, &self->mLeading, &self->mNaturalAlignmentOffset, &self->mSingleLineHeight);
        [a3 containerWidth];
        if (v6 > 0.0)
        {
          [(EQKitBox *)self->mBox width];
          if (v7 > 0.0)
          {
            [a3 containerWidth];
            v9 = v8;
            [(EQKitBox *)self->mBox width];
            *&v10 = v9 / v10;
            self->mScale = fminf(*&v10, 1.0);
          }
        }

        [(EQKitEnvironmentInstance *)self->mEnvironment endLayout];
        EQKitLayoutManager::~EQKitLayoutManager(v13);
      }
    }

    return (self->mBox != 0);
  }

  else
  {
    v12 = [MEMORY[0x277CCA890] currentHandler];
    [v12 handleFailureInFunction:objc_msgSend(MEMORY[0x277CCACA8] file:"stringWithUTF8String:" lineNumber:"-[EQKitLayout layoutWithContext:]") description:{@"EQKitLayoutPrivate.mm", 57, @"invalid inContext"}];
    return 0;
  }
}

- (double)height
{
  if (self->mSingleLineHeight)
  {
    mAscent = self->mAscent;
  }

  else
  {
    [(EQKitBox *)self->mBox height];
    v5 = v4 + self->mLeading * 0.5;
    mAscent = self->mAscent;
    if (v5 > mAscent)
    {
      [(EQKitBox *)self->mBox height];
      mAscent = v6 + self->mLeading * 0.5;
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
    [(EQKitBox *)self->mBox depth];
    mDescent = self->mDescent;
    if (v4 + self->mLeading * 0.5 > mDescent)
    {
      [(EQKitBox *)self->mBox depth];
      mDescent = v5 + self->mLeading * 0.5;
    }
  }

  return mDescent * self->mScale;
}

- (double)vsize
{
  [(EQKitLayout *)self height];
  v4 = v3;
  [(EQKitLayout *)self depth];
  return v4 + v5;
}

- (CGRect)erasableBounds
{
  mBox = self->mBox;
  if (mBox)
  {
    [(EQKitBox *)mBox erasableBounds];
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v11 = v10;
    CGAffineTransformMakeScale(&v12, self->mScale, self->mScale);
    v13.origin.x = v5;
    v13.origin.y = v7;
    v13.size.width = v9;
    v13.size.height = v11;
    return CGRectApplyAffineTransform(v13, &v12);
  }

  else
  {
    return **&MEMORY[0x277CBF3A0];
  }
}

- (void)renderIntoContext:(CGContext *)a3 offset:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  CGContextSaveGState(a3);
  CGContextScaleCTM(a3, self->mScale, self->mScale);
  CGAffineTransformMakeScale(&v8, 1.0 / self->mScale, 1.0 / self->mScale);
  [(EQKitBox *)self->mBox renderIntoContext:a3 offset:vaddq_f64(*&v8.tx, vmlaq_n_f64(vmulq_n_f64(*&v8.c, y), *&v8.a, x))];
  CGContextRestoreGState(a3);
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  return [v3 stringWithFormat:@"<%@ %p box=%@>", NSStringFromClass(v4), self, self->mBox];
}

@end