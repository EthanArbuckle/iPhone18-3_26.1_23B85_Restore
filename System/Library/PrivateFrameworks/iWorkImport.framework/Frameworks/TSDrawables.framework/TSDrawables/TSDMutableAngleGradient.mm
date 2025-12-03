@interface TSDMutableAngleGradient
- (id)copyWithZone:(_NSZone *)zone;
- (void)setLastColor:(id)color;
@end

@implementation TSDMutableAngleGradient

- (void)setLastColor:(id)color
{
  colorCopy = color;
  v11 = objc_msgSend_gradientStops(self, v5, v6);
  v9 = objc_msgSend_count(v11, v7, v8);
  objc_msgSend_setColorOfStopAtIndex_toColor_(self, v10, v9 - 1, colorCopy);
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_msgSend_allocWithZone_(TSDAngleGradient, a2, zone);
  v7 = objc_msgSend_gradientStops(self, v5, v6);
  v10 = objc_msgSend_gradientType(self, v8, v9);
  objc_msgSend_opacity(self, v11, v12);
  v14 = v13;
  objc_msgSend_gradientAngle(self, v15, v16);
  v19 = objc_msgSend_initWithGradientStops_type_opacity_angle_(v4, v17, v7, v10, v14, v18);

  v22 = objc_msgSend_i_advancedGradientFlag(self, v20, v21);
  objc_msgSend_i_setAdvancedGradientFlag_(v19, v23, v22);
  return v19;
}

@end