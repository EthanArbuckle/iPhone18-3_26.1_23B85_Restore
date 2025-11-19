@interface EQKitVShift
- (BOOL)isEqual:(id)a3;
- (BOOL)p_getTransform:(CGAffineTransform *)a3 fromDescendant:(id)a4;
- (CGRect)erasableBounds;
- (EQKitVShift)initWithBox:(id)a3 offset:(double)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
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
  [(EQKitBox *)self->mBox erasableBounds];
  v7 = -self->mOffset;

  return CGRectOffset(*&v3, 0.0, v7);
}

- (void)renderIntoContext:(CGContext *)a3 offset:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  v8.receiver = self;
  v8.super_class = EQKitVShift;
  [EQKitBox renderIntoContext:sel_renderIntoContext_offset_ offset:?];
  [(EQKitBox *)self->mBox renderIntoContext:a3 offset:x, y - self->mOffset];
}

- (BOOL)p_getTransform:(CGAffineTransform *)a3 fromDescendant:(id)a4
{
  if (a4 == self)
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
      v9 = *&a3->c;
      *&v12.a = *&a3->a;
      *&v12.c = v9;
      *&v12.tx = *&a3->tx;
      CGAffineTransformTranslate(&v13, &v12, 0.0, -self->mOffset);
      v10 = *&v13.c;
      *&a3->a = *&v13.a;
      *&a3->c = v10;
      *&a3->tx = *&v13.tx;
      LOBYTE(v8) = 1;
    }
  }

  return v8;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  v5 = [(EQKitVShift *)self box];
  [(EQKitVShift *)self offset];

  return [v4 initWithBox:v5 offset:?];
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
        [(EQKitVShift *)v3 offset];
        v7 = v6;
        [a3 offset];
        if (v7 == v8)
        {
          v9 = [(EQKitVShift *)v3 box];
          self = [a3 box];
          if (v9 == self)
          {
            LOBYTE(self) = 1;
          }

          else
          {
            v10 = self;
            LOBYTE(self) = 0;
            if (v9 && v10)
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