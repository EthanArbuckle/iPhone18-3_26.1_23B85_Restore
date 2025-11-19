@interface EQKitLayoutElementaryStackLineRow
- (EQKitLayoutElementaryStackLineRow)initWithLength:(unint64_t)a3 thickness:(double)a4 position:(int64_t)a5 followingSpace:(double)a6;
- (id)newBoxWithStackWidth:(double)a3 columnWidthIter:(__wrap_iter<double *>)a4 iterMax:(__wrap_iter<double *>)a5 previousRow:(id)a6 layoutManager:(const void *)a7;
@end

@implementation EQKitLayoutElementaryStackLineRow

- (EQKitLayoutElementaryStackLineRow)initWithLength:(unint64_t)a3 thickness:(double)a4 position:(int64_t)a5 followingSpace:(double)a6
{
  v11.receiver = self;
  v11.super_class = EQKitLayoutElementaryStackLineRow;
  result = [(EQKitLayoutElementaryStackLineRow *)&v11 init];
  if (result)
  {
    result->mLength = a3;
    result->mThickness = a4;
    result->mFollowingSpace = a6;
    if (a3)
    {
      result->mAlignmentShift -= a5 + a3;
    }
  }

  return result;
}

- (id)newBoxWithStackWidth:(double)a3 columnWidthIter:(__wrap_iter<double *>)a4 iterMax:(__wrap_iter<double *>)a5 previousRow:(id)a6 layoutManager:(const void *)a7
{
  mLength = self->mLength;
  if (mLength)
  {
    v11 = (a4.var0 + 8 * mLength);
    v12 = 0.0;
    do
    {
      v13 = *a4.var0;
      a4.var0 += 8;
      v12 = v13 + v12;
    }

    while (a4.var0 != v11);
    a3 = v12;
  }

  v14 = [EQKitRule alloc];
  mThickness = self->mThickness;
  v17 = *(sub_275CA3150(a7) + 112);

  return objc_msgSend_initWithHeight_depth_width_cgColor_(v14, v16, v17, v18, 0.0, mThickness, a3);
}

@end