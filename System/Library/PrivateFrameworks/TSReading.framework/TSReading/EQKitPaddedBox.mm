@interface EQKitPaddedBox
- (BOOL)appendOpticalAlignToSpec:(void *)a3 offset:(CGPoint)a4;
- (BOOL)isEqual:(id)a3;
- (BOOL)p_getTransform:(CGAffineTransform *)a3 fromDescendant:(id)a4;
- (CGRect)erasableBounds;
- (EQKitPaddedBox)initWithBox:(id)a3 height:(double)a4 width:(double)a5 depth:(double)a6 lspace:(double)a7 voffset:(double)a8;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
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
  [(EQKitBox *)self->mBox erasableBounds];
  mLspace = self->mLspace;
  v8 = -self->mVoffset;

  return CGRectOffset(*&v3, mLspace, v8);
}

- (void)renderIntoContext:(CGContext *)a3 offset:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  v8.receiver = self;
  v8.super_class = EQKitPaddedBox;
  [EQKitBox renderIntoContext:sel_renderIntoContext_offset_ offset:?];
  [(EQKitBox *)self->mBox renderIntoContext:a3 offset:x + self->mLspace, y - self->mVoffset];
}

- (BOOL)appendOpticalAlignToSpec:(void *)a3 offset:(CGPoint)a4
{
  v4 = *(a3 + 6);
  if (v4 <= 1)
  {
    if (v4)
    {
      if (v4 != 1)
      {
        return [(EQKitBox *)self->mBox appendOpticalAlignToSpec:a4.x offset:a4.y];
      }

      goto LABEL_8;
    }

LABEL_7:
    a4.y = a4.y - self->mVoffset;
    return [(EQKitBox *)self->mBox appendOpticalAlignToSpec:a4.x offset:a4.y];
  }

  if (v4 == 3)
  {
LABEL_8:
    a4.x = a4.x + self->mLspace;
    return [(EQKitBox *)self->mBox appendOpticalAlignToSpec:a4.x offset:a4.y];
  }

  if (v4 == 2)
  {
    goto LABEL_7;
  }

  return [(EQKitBox *)self->mBox appendOpticalAlignToSpec:a4.x offset:a4.y];
}

- (BOOL)p_getTransform:(CGAffineTransform *)a3 fromDescendant:(id)a4
{
  if (a4 == self)
  {
    LOBYTE(v8) = 1;
  }

  else
  {
    v15 = v4;
    v16 = v5;
    v8 = [EQKitBox p_getTransform:"p_getTransform:fromDescendant:" fromDescendant:?];
    if (v8)
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
      LOBYTE(v8) = 1;
    }
  }

  return v8;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  v5 = [(EQKitPaddedBox *)self box];
  [(EQKitPaddedBox *)self height];
  v7 = v6;
  [(EQKitPaddedBox *)self width];
  v9 = v8;
  [(EQKitPaddedBox *)self depth];
  v11 = v10;
  [(EQKitPaddedBox *)self lspace];
  v13 = v12;
  [(EQKitPaddedBox *)self voffset];

  return [v4 initWithBox:v5 height:v7 width:v9 depth:v11 lspace:v13 voffset:v14];
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
      LODWORD(self) = [a3 isMemberOfClass:objc_opt_class()];
      if (self)
      {
        [(EQKitPaddedBox *)v3 height];
        v7 = v6;
        [a3 height];
        if (v7 == v8 && (-[EQKitPaddedBox width](v3, "width"), v10 = v9, [a3 width], v10 == v11) && (-[EQKitPaddedBox depth](v3, "depth"), v13 = v12, objc_msgSend(a3, "depth"), v13 == v14) && (-[EQKitPaddedBox lspace](v3, "lspace"), v16 = v15, objc_msgSend(a3, "lspace"), v16 == v17) && (-[EQKitPaddedBox voffset](v3, "voffset"), v19 = v18, objc_msgSend(a3, "voffset"), v19 == v20))
        {
          v21 = [(EQKitPaddedBox *)v3 box];
          self = [a3 box];
          if (v21 == self)
          {
            LOBYTE(self) = 1;
          }

          else
          {
            v22 = self;
            LOBYTE(self) = 0;
            if (v21 && v22)
            {

              LOBYTE(self) = [(EQKitPaddedBox *)v21 isEqual:?];
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

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  [(EQKitPaddedBox *)self height];
  v6 = v5;
  [(EQKitPaddedBox *)self depth];
  v8 = v7;
  [(EQKitPaddedBox *)self width];
  v10 = v9;
  [(EQKitPaddedBox *)self lspace];
  v12 = v11;
  [(EQKitPaddedBox *)self voffset];
  return [v3 stringWithFormat:@"<%@ %p>: height=%f depth=%f width=%f lspace=%f voffset=%f box=%@ ", v4, self, v6, v8, v10, v12, v13, -[EQKitPaddedBox box](self, "box")];
}

@end