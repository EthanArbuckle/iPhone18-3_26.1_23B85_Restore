@interface TSDMutableGradient
- (void)setFraction:(double)a3 ofStopAtIndex:(unint64_t)a4;
- (void)setLastColor:(id)a3;
@end

@implementation TSDMutableGradient

- (void)setLastColor:(id)a3
{
  v4 = a3;
  v11 = objc_msgSend_gradientStops(self, v5, v6);
  v9 = objc_msgSend_count(v11, v7, v8);
  objc_msgSend_setColorOfStopAtIndex_toColor_(self, v10, v9 - 1, v4);
}

- (void)setFraction:(double)a3 ofStopAtIndex:(unint64_t)a4
{
  v10 = objc_msgSend_gradientStops(self, a2, a4);
  v7 = objc_msgSend_objectAtIndexedSubscript_(v10, v6, a4);
  objc_msgSend_i_setFraction_(v7, v8, v9, a3);
}

@end