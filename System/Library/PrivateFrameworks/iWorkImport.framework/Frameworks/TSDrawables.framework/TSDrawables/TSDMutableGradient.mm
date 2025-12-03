@interface TSDMutableGradient
- (void)setFraction:(double)fraction ofStopAtIndex:(unint64_t)index;
- (void)setLastColor:(id)color;
@end

@implementation TSDMutableGradient

- (void)setLastColor:(id)color
{
  colorCopy = color;
  v11 = objc_msgSend_gradientStops(self, v5, v6);
  v9 = objc_msgSend_count(v11, v7, v8);
  objc_msgSend_setColorOfStopAtIndex_toColor_(self, v10, v9 - 1, colorCopy);
}

- (void)setFraction:(double)fraction ofStopAtIndex:(unint64_t)index
{
  v10 = objc_msgSend_gradientStops(self, a2, index);
  v7 = objc_msgSend_objectAtIndexedSubscript_(v10, v6, index);
  objc_msgSend_i_setFraction_(v7, v8, v9, fraction);
}

@end