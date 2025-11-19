@interface TSDMutableStroke
+ (id)emptyStroke;
+ (id)stroke;
- (id)copyWithZone:(_NSZone *)a3;
- (void)setWidth:(double)a3;
@end

@implementation TSDMutableStroke

- (void)setWidth:(double)a3
{
  objc_msgSend_setI_width_(self, a2, v3);

  objc_msgSend_setI_actualWidth_(self, v6, v7, a3);
}

+ (id)stroke
{
  v4.receiver = a1;
  v4.super_class = &OBJC_METACLASS___TSDMutableStroke;
  v2 = objc_msgSendSuper2(&v4, sel_i_newStroke);

  return v2;
}

+ (id)emptyStroke
{
  v4.receiver = a1;
  v4.super_class = &OBJC_METACLASS___TSDMutableStroke;
  v2 = objc_msgSendSuper2(&v4, sel_i_newEmptyStroke);

  return v2;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [TSDStroke alloc];
  v7 = objc_msgSend_color(self, v5, v6);
  objc_msgSend_width(self, v8, v9);
  v11 = v10;
  v14 = objc_msgSend_cap(self, v12, v13);
  v17 = objc_msgSend_join(self, v15, v16);
  v20 = objc_msgSend_pattern(self, v18, v19);
  objc_msgSend_miterLimit(self, v21, v22);
  v25 = objc_msgSend_initWithColor_width_cap_join_pattern_miterLimit_(v4, v23, v7, v14, v17, v20, v11, v24);

  objc_msgSend_actualWidth(self, v26, v27);
  objc_msgSend_setI_actualWidth_(v25, v28, v29);
  return v25;
}

@end