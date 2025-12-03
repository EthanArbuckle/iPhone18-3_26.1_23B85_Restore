@interface EQKitOffsetVBox
- (BOOL)isEqual:(id)equal;
- (EQKitOffsetVBox)initWithChildBoxes:(id)boxes pivotIndex:(unint64_t)index offset:(double)offset;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)p_cacheDimensionsForHeight:(double *)height depth:(double *)depth width:(double *)width;
@end

@implementation EQKitOffsetVBox

- (EQKitOffsetVBox)initWithChildBoxes:(id)boxes pivotIndex:(unint64_t)index offset:(double)offset
{
  v7.receiver = self;
  v7.super_class = EQKitOffsetVBox;
  result = [(EQKitVBox *)&v7 initWithChildBoxes:boxes pivotIndex:index];
  if (result)
  {
    result->mOffset = offset;
  }

  return result;
}

- (void)p_cacheDimensionsForHeight:(double *)height depth:(double *)depth width:(double *)width
{
  v8.receiver = self;
  v8.super_class = EQKitOffsetVBox;
  [(EQKitVBox *)&v8 p_cacheDimensionsForHeight:height depth:depth width:width];
  if (height)
  {
    *height = self->mOffset + *height;
  }

  if (depth)
  {
    *depth = *depth - self->mOffset;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  childBoxes = [(EQKitCompoundBox *)self childBoxes];
  pivotIndex = [(EQKitVBox *)self pivotIndex];
  [(EQKitOffsetVBox *)self offset];

  return [v4 initWithChildBoxes:childBoxes pivotIndex:pivotIndex offset:?];
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
        pivotIndex = [(EQKitVBox *)selfCopy pivotIndex];
        if (pivotIndex == [equal pivotIndex] && (-[EQKitOffsetVBox offset](selfCopy, "offset"), v8 = v7, objc_msgSend(equal, "offset"), v8 == v9))
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

              LOBYTE(self) = [(EQKitOffsetVBox *)childBoxes isEqual:?];
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
  [(EQKitCompoundBox *)self height];
  v6 = v5;
  [(EQKitCompoundBox *)self depth];
  v8 = v7;
  [(EQKitCompoundBox *)self width];
  v10 = v9;
  childBoxes = [(EQKitCompoundBox *)self childBoxes];
  pivotIndex = [(EQKitVBox *)self pivotIndex];
  [(EQKitOffsetVBox *)self offset];
  return [v3 stringWithFormat:@"<%@ %p>: height=%f depth=%f width=%f childBoxes=%@ pivotIndex=%lu offset=%f", v4, self, v6, v8, v10, childBoxes, pivotIndex, v13];
}

@end