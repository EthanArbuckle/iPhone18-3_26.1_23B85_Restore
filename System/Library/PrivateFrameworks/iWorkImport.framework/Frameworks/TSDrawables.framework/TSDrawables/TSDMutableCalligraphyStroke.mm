@interface TSDMutableCalligraphyStroke
- (id)copyWithZone:(_NSZone *)zone;
- (void)setWidth:(double)width;
@end

@implementation TSDMutableCalligraphyStroke

- (void)setWidth:(double)width
{
  objc_msgSend_setI_width_(self, a2, v3);

  objc_msgSend_setI_actualWidth_(self, v6, v7, width);
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_msgSend_allocWithZone_(TSDCalligraphyStroke, a2, zone);
  v7 = objc_msgSend_color(self, v5, v6);
  objc_msgSend_width(self, v8, v9);
  v11 = v10;
  v14 = objc_msgSend_cap(self, v12, v13);
  v17 = objc_msgSend_join(self, v15, v16);
  v20 = objc_msgSend_pattern(self, v18, v19);
  objc_msgSend_miterLimit(self, v21, v22);
  v25 = objc_msgSend_initWithColor_width_cap_join_pattern_miterLimit_(v4, v23, v7, v14, v17, v20, v11, v24);

  return v25;
}

@end