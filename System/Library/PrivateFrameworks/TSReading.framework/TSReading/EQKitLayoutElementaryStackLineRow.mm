@interface EQKitLayoutElementaryStackLineRow
- (EQKitLayoutElementaryStackLineRow)initWithLength:(unint64_t)length thickness:(double)thickness position:(int64_t)position followingSpace:(double)space;
- (id)newBoxWithStackWidth:(double)width columnWidthIter:(__wrap_iter<double *>)iter iterMax:(__wrap_iter<double *>)max previousRow:(id)row layoutManager:(const void *)manager;
@end

@implementation EQKitLayoutElementaryStackLineRow

- (EQKitLayoutElementaryStackLineRow)initWithLength:(unint64_t)length thickness:(double)thickness position:(int64_t)position followingSpace:(double)space
{
  v11.receiver = self;
  v11.super_class = EQKitLayoutElementaryStackLineRow;
  result = [(EQKitLayoutElementaryStackLineRow *)&v11 init];
  if (result)
  {
    result->mLength = length;
    result->mThickness = thickness;
    result->mFollowingSpace = space;
    if (length)
    {
      result->mAlignmentShift -= position + length;
    }
  }

  return result;
}

- (id)newBoxWithStackWidth:(double)width columnWidthIter:(__wrap_iter<double *>)iter iterMax:(__wrap_iter<double *>)max previousRow:(id)row layoutManager:(const void *)manager
{
  mLength = self->mLength;
  if (mLength)
  {
    v11 = (iter.var0 + 8 * mLength);
    v12 = 0.0;
    do
    {
      v13 = *iter.var0;
      iter.var0 += 8;
      v12 = v13 + v12;
    }

    while (iter.var0 != v11);
    width = v12;
  }

  v14 = [EQKitRule alloc];
  mThickness = self->mThickness;
  v16 = *(EQKitLayoutManager::layoutContext(manager) + 96);

  return [(EQKitRule *)v14 initWithHeight:v16 depth:0.0 width:mThickness cgColor:width];
}

@end