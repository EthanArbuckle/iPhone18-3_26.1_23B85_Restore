@interface EQKitPaddedBox
- (BOOL)appendOpticalAlignToSpec:(void *)spec offset:(CGPoint)offset;
- (BOOL)isEqual:(id)equal;
- (BOOL)p_getTransform:(CGAffineTransform *)transform fromDescendant:(id)descendant;
- (CGRect)erasableBounds;
- (EQKitPaddedBox)initWithBox:(id)box height:(double)height width:(double)width depth:(double)depth lspace:(double)lspace voffset:(double)voffset;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
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
  [(EQKitBox *)self->mBox erasableBounds];
  mLspace = self->mLspace;
  v8 = -self->mVoffset;

  return CGRectOffset(*&v3, mLspace, v8);
}

- (void)renderIntoContext:(CGContext *)context offset:(CGPoint)offset
{
  y = offset.y;
  x = offset.x;
  v8.receiver = self;
  v8.super_class = EQKitPaddedBox;
  [EQKitBox renderIntoContext:sel_renderIntoContext_offset_ offset:?];
  [(EQKitBox *)self->mBox renderIntoContext:context offset:x + self->mLspace, y - self->mVoffset];
}

- (BOOL)appendOpticalAlignToSpec:(void *)spec offset:(CGPoint)offset
{
  v4 = *(spec + 6);
  if (v4 <= 1)
  {
    if (v4)
    {
      if (v4 != 1)
      {
        return [(EQKitBox *)self->mBox appendOpticalAlignToSpec:offset.x offset:offset.y];
      }

      goto LABEL_8;
    }

LABEL_7:
    offset.y = offset.y - self->mVoffset;
    return [(EQKitBox *)self->mBox appendOpticalAlignToSpec:offset.x offset:offset.y];
  }

  if (v4 == 3)
  {
LABEL_8:
    offset.x = offset.x + self->mLspace;
    return [(EQKitBox *)self->mBox appendOpticalAlignToSpec:offset.x offset:offset.y];
  }

  if (v4 == 2)
  {
    goto LABEL_7;
  }

  return [(EQKitBox *)self->mBox appendOpticalAlignToSpec:offset.x offset:offset.y];
}

- (BOOL)p_getTransform:(CGAffineTransform *)transform fromDescendant:(id)descendant
{
  if (descendant == self)
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
      LOBYTE(v8) = 1;
    }
  }

  return v8;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
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

- (BOOL)isEqual:(id)equal
{
  selfCopy = self;
  v4 = self == equal;
  LOBYTE(self) = self == equal;
  if (equal)
  {
    if (!v4)
    {
      LODWORD(self) = [equal isMemberOfClass:objc_opt_class()];
      if (self)
      {
        [(EQKitPaddedBox *)selfCopy height];
        v7 = v6;
        [equal height];
        if (v7 == v8 && (-[EQKitPaddedBox width](selfCopy, "width"), v10 = v9, [equal width], v10 == v11) && (-[EQKitPaddedBox depth](selfCopy, "depth"), v13 = v12, objc_msgSend(equal, "depth"), v13 == v14) && (-[EQKitPaddedBox lspace](selfCopy, "lspace"), v16 = v15, objc_msgSend(equal, "lspace"), v16 == v17) && (-[EQKitPaddedBox voffset](selfCopy, "voffset"), v19 = v18, objc_msgSend(equal, "voffset"), v19 == v20))
        {
          v21 = [(EQKitPaddedBox *)selfCopy box];
          self = [equal box];
          if (v21 == self)
          {
            LOBYTE(self) = 1;
          }

          else
          {
            selfCopy2 = self;
            LOBYTE(self) = 0;
            if (v21 && selfCopy2)
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