@interface TSDMutableBrushStroke
- (id)copyWithZone:(_NSZone *)a3;
- (void)setWidth:(double)a3;
@end

@implementation TSDMutableBrushStroke

- (void)setWidth:(double)a3
{
  objc_msgSend_setI_width_(self, a2, v3);

  objc_msgSend_setI_actualWidth_(self, v6, v7, a3);
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [TSDBrushStroke alloc];
  v7 = objc_msgSend_strokeName(self, v5, v6);
  v10 = objc_msgSend_color(self, v8, v9);
  objc_msgSend_width(self, v11, v12);
  v14 = v13;
  v17 = objc_msgSend_cap(self, v15, v16);
  v20 = objc_msgSend_join(self, v18, v19);
  v23 = objc_msgSend_pattern(self, v21, v22);
  objc_msgSend_miterLimit(self, v24, v25);
  v28 = objc_msgSend_initWithName_color_width_cap_join_pattern_miterLimit_(v4, v26, v7, v10, v17, v20, v23, v14, v27);

  return v28;
}

@end