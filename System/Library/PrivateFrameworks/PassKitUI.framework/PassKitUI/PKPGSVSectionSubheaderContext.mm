@interface PKPGSVSectionSubheaderContext
- (BOOL)isEqual:(id)equal;
- (double)positionForViewInContainerFrame:(double)frame;
- (unint64_t)hash;
@end

@implementation PKPGSVSectionSubheaderContext

- (unint64_t)hash
{
  view = self->_view;
  v2 = *&self->_margins.bottom;
  v5 = *&self->_margins.top;
  v6 = v2;
  return PKObjectHash(&view);
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v5 = equalCopy;
    if (self)
    {
      if (self->_view == *&v5->f64[1])
      {
        LOBYTE(self) = vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*&self->_margins.top, v5[1]), vceqq_f64(*&self->_margins.bottom, v5[2]))));
      }

      else
      {
        LOBYTE(self) = 0;
      }
    }
  }

  else
  {
    LOBYTE(self) = 0;
  }

  return self & 1;
}

- (double)positionForViewInContainerFrame:(double)frame
{
  if (!self)
  {
    return 0.0;
  }

  [*(self + 8) bounds];
  v10 = v9;
  v12 = v11;
  v13 = *(self + 24);
  v14 = a2 + v13;
  v15 = a4 - (v13 + *(self + 40));
  v16 = a5 - (*(self + 16) + *(self + 32));
  layer = [*(self + 8) layer];
  [layer anchorPoint];
  v19 = v18;

  v20.n128_f64[0] = (v15 - v10) * 0.5;
  PKFloatFloorToPixel(v20, v21);
  v23 = v14 + v22 + v19 * v10;
  v24.n128_f64[0] = (v16 - v12) * 0.5;
  PKFloatFloorToPixel(v24, v25);
  return v23;
}

@end