@interface EQKitOverlayBox
- (BOOL)isEqual:(id)a3;
- (CGRect)erasableBounds;
- (EQKitOverlayBox)initWithBox:(id)a3 overlayBox:(id)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
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
  [(EQKitBox *)self->mBox erasableBounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(EQKitBox *)self->mOverlayBox erasableBounds];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v19 = v4;
  v20 = v6;
  v21 = v8;
  v22 = v10;

  return CGRectUnion(*&v19, *&v12);
}

- (void)renderIntoContext:(CGContext *)a3 offset:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  v8.receiver = self;
  v8.super_class = EQKitOverlayBox;
  [EQKitBox renderIntoContext:sel_renderIntoContext_offset_ offset:?];
  [(EQKitBox *)self->mBox renderIntoContext:a3 offset:x, y];
  [(EQKitBox *)self->mOverlayBox renderIntoContext:a3 offset:x, y];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  v5 = [(EQKitOverlayBox *)self box];
  v6 = [(EQKitOverlayBox *)self overlayBox];

  return [v4 initWithBox:v5 overlayBox:v6];
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
        v6 = [(EQKitOverlayBox *)v3 box];
        self = [a3 box];
        if (v6 == self || (v7 = self, LOBYTE(self) = 0, v6) && v7 && (LODWORD(self) = [(EQKitOverlayBox *)v6 isEqual:?], self))
        {
          v8 = [(EQKitOverlayBox *)v3 overlayBox];
          self = [a3 overlayBox];
          if (v8 == self)
          {
            LOBYTE(self) = 1;
          }

          else
          {
            v9 = self;
            LOBYTE(self) = 0;
            if (v8 && v9)
            {

              LOBYTE(self) = [(EQKitOverlayBox *)v8 isEqual:?];
            }
          }
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
  [(EQKitOverlayBox *)self height];
  v6 = v5;
  [(EQKitOverlayBox *)self depth];
  v8 = v7;
  [(EQKitOverlayBox *)self width];
  return [v3 stringWithFormat:@"<%@ %p>: height=%f depth=%f width=%f box=%@ overlayBox=%@ ", v4, self, v6, v8, v9, -[EQKitOverlayBox box](self, "box"), -[EQKitOverlayBox overlayBox](self, "overlayBox")];
}

@end