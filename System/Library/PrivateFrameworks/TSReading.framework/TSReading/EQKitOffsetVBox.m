@interface EQKitOffsetVBox
- (BOOL)isEqual:(id)a3;
- (EQKitOffsetVBox)initWithChildBoxes:(id)a3 pivotIndex:(unint64_t)a4 offset:(double)a5;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)p_cacheDimensionsForHeight:(double *)a3 depth:(double *)a4 width:(double *)a5;
@end

@implementation EQKitOffsetVBox

- (EQKitOffsetVBox)initWithChildBoxes:(id)a3 pivotIndex:(unint64_t)a4 offset:(double)a5
{
  v7.receiver = self;
  v7.super_class = EQKitOffsetVBox;
  result = [(EQKitVBox *)&v7 initWithChildBoxes:a3 pivotIndex:a4];
  if (result)
  {
    result->mOffset = a5;
  }

  return result;
}

- (void)p_cacheDimensionsForHeight:(double *)a3 depth:(double *)a4 width:(double *)a5
{
  v8.receiver = self;
  v8.super_class = EQKitOffsetVBox;
  [(EQKitVBox *)&v8 p_cacheDimensionsForHeight:a3 depth:a4 width:a5];
  if (a3)
  {
    *a3 = self->mOffset + *a3;
  }

  if (a4)
  {
    *a4 = *a4 - self->mOffset;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  v5 = [(EQKitCompoundBox *)self childBoxes];
  v6 = [(EQKitVBox *)self pivotIndex];
  [(EQKitOffsetVBox *)self offset];

  return [v4 initWithChildBoxes:v5 pivotIndex:v6 offset:?];
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
        v6 = [(EQKitVBox *)v3 pivotIndex];
        if (v6 == [a3 pivotIndex] && (-[EQKitOffsetVBox offset](v3, "offset"), v8 = v7, objc_msgSend(a3, "offset"), v8 == v9))
        {
          v10 = [(EQKitCompoundBox *)v3 childBoxes];
          self = [a3 childBoxes];
          if (v10 == self)
          {
            LOBYTE(self) = 1;
          }

          else
          {
            v11 = self;
            LOBYTE(self) = 0;
            if (v10 && v11)
            {

              LOBYTE(self) = [(EQKitOffsetVBox *)v10 isEqual:?];
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
  v11 = [(EQKitCompoundBox *)self childBoxes];
  v12 = [(EQKitVBox *)self pivotIndex];
  [(EQKitOffsetVBox *)self offset];
  return [v3 stringWithFormat:@"<%@ %p>: height=%f depth=%f width=%f childBoxes=%@ pivotIndex=%lu offset=%f", v4, self, v6, v8, v10, v11, v12, v13];
}

@end