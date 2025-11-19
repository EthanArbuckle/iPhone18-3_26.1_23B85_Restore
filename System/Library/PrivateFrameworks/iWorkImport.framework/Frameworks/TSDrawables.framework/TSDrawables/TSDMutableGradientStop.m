@interface TSDMutableGradientStop
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation TSDMutableGradientStop

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_msgSend_allocWithZone_(TSDGradientStop, a2, a3);
  v7 = objc_msgSend_color(self, v5, v6);
  objc_msgSend_fraction(self, v8, v9);
  v11 = v10;
  objc_msgSend_inflection(self, v12, v13);
  v16 = objc_msgSend_initWithColor_fraction_inflection_(v4, v14, v7, v11, v15);

  return v16;
}

@end