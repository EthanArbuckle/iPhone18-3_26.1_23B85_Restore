@interface EQKitOverlayBox
- (BOOL)isEqual:(id)equal;
- (CGRect)erasableBounds;
- (EQKitOverlayBox)initWithBox:(id)box overlayBox:(id)overlayBox;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)dealloc;
- (void)renderIntoContext:(CGContext *)context offset:(CGPoint)offset;
@end

@implementation EQKitOverlayBox

- (EQKitOverlayBox)initWithBox:(id)box overlayBox:(id)overlayBox
{
  v8.receiver = self;
  v8.super_class = EQKitOverlayBox;
  v6 = [(EQKitOverlayBox *)&v8 init];
  if (v6)
  {
    v6->mBox = box;
    v6->mOverlayBox = overlayBox;
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

- (void)renderIntoContext:(CGContext *)context offset:(CGPoint)offset
{
  y = offset.y;
  x = offset.x;
  v8.receiver = self;
  v8.super_class = EQKitOverlayBox;
  [EQKitBox renderIntoContext:sel_renderIntoContext_offset_ offset:?];
  [(EQKitBox *)self->mBox renderIntoContext:context offset:x, y];
  [(EQKitBox *)self->mOverlayBox renderIntoContext:context offset:x, y];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  v5 = [(EQKitOverlayBox *)self box];
  overlayBox = [(EQKitOverlayBox *)self overlayBox];

  return [v4 initWithBox:v5 overlayBox:overlayBox];
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
        v6 = [(EQKitOverlayBox *)selfCopy box];
        self = [equal box];
        if (v6 == self || (v7 = self, LOBYTE(self) = 0, v6) && v7 && (LODWORD(self) = [(EQKitOverlayBox *)v6 isEqual:?], self))
        {
          overlayBox = [(EQKitOverlayBox *)selfCopy overlayBox];
          self = [equal overlayBox];
          if (overlayBox == self)
          {
            LOBYTE(self) = 1;
          }

          else
          {
            selfCopy2 = self;
            LOBYTE(self) = 0;
            if (overlayBox && selfCopy2)
            {

              LOBYTE(self) = [(EQKitOverlayBox *)overlayBox isEqual:?];
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