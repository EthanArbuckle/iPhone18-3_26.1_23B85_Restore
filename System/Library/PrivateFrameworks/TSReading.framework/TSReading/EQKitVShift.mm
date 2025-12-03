@interface EQKitVShift
- (BOOL)isEqual:(id)equal;
- (BOOL)p_getTransform:(CGAffineTransform *)transform fromDescendant:(id)descendant;
- (CGRect)erasableBounds;
- (EQKitVShift)initWithBox:(id)box offset:(double)offset;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)dealloc;
- (void)renderIntoContext:(CGContext *)context offset:(CGPoint)offset;
@end

@implementation EQKitVShift

- (EQKitVShift)initWithBox:(id)box offset:(double)offset
{
  v8.receiver = self;
  v8.super_class = EQKitVShift;
  v6 = [(EQKitVShift *)&v8 init];
  if (v6)
  {
    v6->mBox = box;
    v6->mOffset = offset;
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
  [(EQKitBox *)self->mBox erasableBounds];
  v7 = -self->mOffset;

  return CGRectOffset(*&v3, 0.0, v7);
}

- (void)renderIntoContext:(CGContext *)context offset:(CGPoint)offset
{
  y = offset.y;
  x = offset.x;
  v8.receiver = self;
  v8.super_class = EQKitVShift;
  [EQKitBox renderIntoContext:sel_renderIntoContext_offset_ offset:?];
  [(EQKitBox *)self->mBox renderIntoContext:context offset:x, y - self->mOffset];
}

- (BOOL)p_getTransform:(CGAffineTransform *)transform fromDescendant:(id)descendant
{
  if (descendant == self)
  {
    LOBYTE(v8) = 1;
  }

  else
  {
    v14 = v4;
    v15 = v5;
    v8 = [EQKitBox p_getTransform:"p_getTransform:fromDescendant:" fromDescendant:?];
    if (v8)
    {
      v9 = *&transform->c;
      *&v12.a = *&transform->a;
      *&v12.c = v9;
      *&v12.tx = *&transform->tx;
      CGAffineTransformTranslate(&v13, &v12, 0.0, -self->mOffset);
      v10 = *&v13.c;
      *&transform->a = *&v13.a;
      *&transform->c = v10;
      *&transform->tx = *&v13.tx;
      LOBYTE(v8) = 1;
    }
  }

  return v8;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  v5 = [(EQKitVShift *)self box];
  [(EQKitVShift *)self offset];

  return [v4 initWithBox:v5 offset:?];
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
        [(EQKitVShift *)selfCopy offset];
        v7 = v6;
        [equal offset];
        if (v7 == v8)
        {
          v9 = [(EQKitVShift *)selfCopy box];
          self = [equal box];
          if (v9 == self)
          {
            LOBYTE(self) = 1;
          }

          else
          {
            selfCopy2 = self;
            LOBYTE(self) = 0;
            if (v9 && selfCopy2)
            {

              LOBYTE(self) = [(EQKitVShift *)v9 isEqual:?];
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
  [(EQKitVShift *)self height];
  v6 = v5;
  [(EQKitVShift *)self depth];
  v8 = v7;
  [(EQKitVShift *)self width];
  v10 = v9;
  [(EQKitVShift *)self offset];
  return [v3 stringWithFormat:@"<%@ %p>: height=%f depth=%f width=%f offset=%f box=%@ ", v4, self, v6, v8, v10, v11, -[EQKitVShift box](self, "box")];
}

@end