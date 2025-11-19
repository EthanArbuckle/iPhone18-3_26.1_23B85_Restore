@interface EQKitCompoundBox
- (BOOL)isEqual:(id)a3;
- (CGRect)erasableBounds;
- (CGRect)p_cacheErasableBounds;
- (EQKitCompoundBox)initWithChildBoxes:(id)a3;
- (double)depth;
- (double)height;
- (double)width;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)dealloc;
- (void)p_cacheDimensionsForHeight:(double *)a3 depth:(double *)a4 width:(double *)a5;
@end

@implementation EQKitCompoundBox

- (EQKitCompoundBox)initWithChildBoxes:(id)a3
{
  v6.receiver = self;
  v6.super_class = EQKitCompoundBox;
  v4 = [(EQKitCompoundBox *)&v6 init];
  if (v4)
  {
    v4->mChildBoxes = [a3 copy];
  }

  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = EQKitCompoundBox;
  [(EQKitCompoundBox *)&v3 dealloc];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  v5 = [(EQKitCompoundBox *)self childBoxes];

  return [v4 initWithChildBoxes:v5];
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
        v6 = [(EQKitCompoundBox *)v3 childBoxes];
        self = [a3 childBoxes];
        if (v6 == self)
        {
          LOBYTE(self) = 1;
        }

        else
        {
          v7 = self;
          LOBYTE(self) = 0;
          if (v6 && v7)
          {

            LOBYTE(self) = [(EQKitCompoundBox *)v6 isEqual:?];
          }
        }
      }
    }
  }

  return self;
}

- (double)height
{
  if (!self->mDimensionsValid)
  {
    [(EQKitCompoundBox *)self p_cacheDimensionsForHeight:&self->mHeight depth:&self->mDepth width:&self->mWidth];
    self->mDimensionsValid = 1;
  }

  return self->mHeight;
}

- (double)depth
{
  if (!self->mDimensionsValid)
  {
    [(EQKitCompoundBox *)self p_cacheDimensionsForHeight:&self->mHeight depth:&self->mDepth width:&self->mWidth];
    self->mDimensionsValid = 1;
  }

  return self->mDepth;
}

- (double)width
{
  if (!self->mDimensionsValid)
  {
    [(EQKitCompoundBox *)self p_cacheDimensionsForHeight:&self->mHeight depth:&self->mDepth width:&self->mWidth];
    self->mDimensionsValid = 1;
  }

  return self->mWidth;
}

- (CGRect)erasableBounds
{
  if (self->mErasableBoundsValid)
  {
    x = self->mErasableBounds.origin.x;
    y = self->mErasableBounds.origin.y;
    width = self->mErasableBounds.size.width;
    height = self->mErasableBounds.size.height;
  }

  else
  {
    [(EQKitCompoundBox *)self p_cacheErasableBounds];
    self->mErasableBounds.origin.x = x;
    self->mErasableBounds.origin.y = y;
    self->mErasableBounds.size.width = width;
    self->mErasableBounds.size.height = height;
    self->mErasableBoundsValid = 1;
  }

  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  [(EQKitCompoundBox *)self height];
  v6 = v5;
  [(EQKitCompoundBox *)self depth];
  v8 = v7;
  [(EQKitCompoundBox *)self width];
  return [v3 stringWithFormat:@"<%@ %p>: height=%f depth=%f width=%f childBoxes=%@", v4, self, v6, v8, v9, -[EQKitCompoundBox childBoxes](self, "childBoxes")];
}

- (void)p_cacheDimensionsForHeight:(double *)a3 depth:(double *)a4 width:(double *)a5
{
  if (a3)
  {
    *a3 = 0.0;
  }

  if (a4)
  {
    *a4 = 0.0;
  }

  if (a5)
  {
    *a5 = 0.0;
  }
}

- (CGRect)p_cacheErasableBounds
{
  v2 = *MEMORY[0x277CBF3A0];
  v3 = *(MEMORY[0x277CBF3A0] + 8);
  v4 = *(MEMORY[0x277CBF3A0] + 16);
  v5 = *(MEMORY[0x277CBF3A0] + 24);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

@end