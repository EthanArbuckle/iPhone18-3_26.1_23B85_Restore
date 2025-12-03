@interface EQKitCompoundBox
- (BOOL)isEqual:(id)equal;
- (CGRect)erasableBounds;
- (CGRect)p_cacheErasableBounds;
- (EQKitCompoundBox)initWithChildBoxes:(id)boxes;
- (double)depth;
- (double)height;
- (double)width;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)dealloc;
- (void)p_cacheDimensionsForHeight:(double *)height depth:(double *)depth width:(double *)width;
@end

@implementation EQKitCompoundBox

- (EQKitCompoundBox)initWithChildBoxes:(id)boxes
{
  v6.receiver = self;
  v6.super_class = EQKitCompoundBox;
  v4 = [(EQKitCompoundBox *)&v6 init];
  if (v4)
  {
    v4->mChildBoxes = [boxes copy];
  }

  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = EQKitCompoundBox;
  [(EQKitCompoundBox *)&v3 dealloc];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  childBoxes = [(EQKitCompoundBox *)self childBoxes];

  return [v4 initWithChildBoxes:childBoxes];
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
        childBoxes = [(EQKitCompoundBox *)selfCopy childBoxes];
        self = [equal childBoxes];
        if (childBoxes == self)
        {
          LOBYTE(self) = 1;
        }

        else
        {
          selfCopy2 = self;
          LOBYTE(self) = 0;
          if (childBoxes && selfCopy2)
          {

            LOBYTE(self) = [(EQKitCompoundBox *)childBoxes isEqual:?];
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

- (void)p_cacheDimensionsForHeight:(double *)height depth:(double *)depth width:(double *)width
{
  if (height)
  {
    *height = 0.0;
  }

  if (depth)
  {
    *depth = 0.0;
  }

  if (width)
  {
    *width = 0.0;
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