@interface KNLiveVideoMaskGeometry
- (BOOL)isEqual:(id)equal;
- (CGPoint)normalizedOffset;
- (CGRect)maskBounds;
- (CGRect)videoBoundsForNaturalSize:(CGSize)size;
- (CGRect)videoTextureRectForNaturalSize:(CGSize)size;
- (KNLiveVideoMaskGeometry)initWithMaskBounds:(CGRect)bounds scale:(double)scale normalizedOffset:(CGPoint)offset;
- (unint64_t)hash;
@end

@implementation KNLiveVideoMaskGeometry

- (KNLiveVideoMaskGeometry)initWithMaskBounds:(CGRect)bounds scale:(double)scale normalizedOffset:(CGPoint)offset
{
  y = offset.y;
  x = offset.x;
  height = bounds.size.height;
  width = bounds.size.width;
  v10 = bounds.origin.y;
  v11 = bounds.origin.x;
  v13.receiver = self;
  v13.super_class = KNLiveVideoMaskGeometry;
  result = [(KNLiveVideoMaskGeometry *)&v13 init];
  if (result)
  {
    result->_maskBounds.origin.y = v10;
    result->_maskBounds.size.width = width;
    result->_maskBounds.size.height = height;
    result->_scale = scale;
    result->_normalizedOffset.x = x;
    result->_normalizedOffset.y = y;
    result->_maskBounds.origin.x = v11;
  }

  return result;
}

- (BOOL)isEqual:(id)equal
{
  if (self == equal)
  {
    return 1;
  }

  equalCopy = equal;
  objc_opt_class();
  v5 = TSUDynamicCast();

  if (v5 && (objc_msgSend_maskBounds(self, v6, v7), v9 = v8, v11 = v10, v13 = v12, v15 = v14, objc_msgSend_maskBounds(v5, v16, v17), v42.origin.x = v18, v42.origin.y = v19, v42.size.width = v20, v42.size.height = v21, v41.origin.x = v9, v41.origin.y = v11, v41.size.width = v13, v41.size.height = v15, CGRectEqualToRect(v41, v42)) && (objc_msgSend_scale(self, v22, v23), v25 = v24, objc_msgSend_scale(v5, v26, v27), v25 == v30))
  {
    objc_msgSend_normalizedOffset(self, v28, v29);
    v32 = v31;
    v34 = v33;
    objc_msgSend_normalizedOffset(v5, v35, v36);
    v39 = v34 == v38 && v32 == v37;
  }

  else
  {
    v39 = 0;
  }

  return v39;
}

- (unint64_t)hash
{
  v3 = objc_alloc_init(MEMORY[0x277D811E8]);
  v4 = MEMORY[0x277CCAE60];
  objc_msgSend_maskBounds(self, v5, v6);
  v34[0] = v7;
  v34[1] = v8;
  v34[2] = v9;
  v34[3] = v10;
  v12 = objc_msgSend_valueWithBytes_objCType_(v4, v11, v34, "{CGRect={CGPoint=dd}{CGSize=dd}}");
  objc_msgSend_addObject_(v3, v13, v12);

  v14 = MEMORY[0x277CCABB0];
  objc_msgSend_scale(self, v15, v16);
  v19 = objc_msgSend_numberWithDouble_(v14, v17, v18);
  objc_msgSend_addObject_(v3, v20, v19);

  v21 = MEMORY[0x277CCAE60];
  objc_msgSend_normalizedOffset(self, v22, v23);
  v33[0] = v24;
  v33[1] = v25;
  v27 = objc_msgSend_valueWithBytes_objCType_(v21, v26, v33, "{CGPoint=dd}");
  objc_msgSend_addObject_(v3, v28, v27);

  v31 = objc_msgSend_hashValue(v3, v29, v30);
  return v31;
}

- (CGRect)videoBoundsForNaturalSize:(CGSize)size
{
  objc_msgSend_maskBounds(self, a2, v3);
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  objc_msgSend_normalizedOffset(self, v13, v14);
  v25 = v16;
  v26 = v15;
  v28.origin.x = v6;
  v28.origin.y = v8;
  v28.size.width = v10;
  v28.size.height = v12;
  CGRectGetWidth(v28);
  v29.origin.x = v6;
  v29.origin.y = v8;
  v29.size.width = v10;
  v29.size.height = v12;
  CGRectGetHeight(v29);
  TSUFitOrFillSizeInSize();
  objc_msgSend_scale(self, v17, v18, v25, v26);
  if (v19 > 1.0)
  {
    TSUMultiplySizeScalar();
  }

  TSUCenterOfRect();
  TSUAddPoints();
  v20 = TSURectWithCenterAndSize();

  MEMORY[0x2821EC598](v20);
  result.size.height = v24;
  result.size.width = v23;
  result.origin.y = v22;
  result.origin.x = v21;
  return result;
}

- (CGRect)videoTextureRectForNaturalSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  objc_msgSend_maskBounds(self, a2, v3);
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  objc_msgSend_videoBoundsForNaturalSize_(self, v15, v16, width, height);
  v18 = v17;
  v20 = v19;
  v32 = v22;
  v33 = v21;
  v23 = -v17;
  v24 = -v19;
  v34.origin.x = v8;
  v34.origin.y = v10;
  v34.size.width = v12;
  v34.size.height = v14;
  CGRectOffset(v34, v23, v24);
  v35.origin.x = v18;
  v35.origin.y = v20;
  v35.size.height = v32;
  v35.size.width = v33;
  CGRectOffset(v35, v23, v24);
  TSUNormalizedSubrectInRect();
  x = v36.origin.x;
  v26 = v36.size.width;
  v27 = v36.size.height;
  v28 = 1.0 - CGRectGetMaxY(v36);
  v29 = x;
  v30 = v26;
  v31 = v27;
  result.size.height = v31;
  result.size.width = v30;
  result.origin.y = v28;
  result.origin.x = v29;
  return result;
}

- (CGRect)maskBounds
{
  x = self->_maskBounds.origin.x;
  y = self->_maskBounds.origin.y;
  width = self->_maskBounds.size.width;
  height = self->_maskBounds.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGPoint)normalizedOffset
{
  x = self->_normalizedOffset.x;
  y = self->_normalizedOffset.y;
  result.y = y;
  result.x = x;
  return result;
}

@end