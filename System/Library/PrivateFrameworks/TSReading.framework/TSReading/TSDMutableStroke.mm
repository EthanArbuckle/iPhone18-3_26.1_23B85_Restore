@interface TSDMutableStroke
+ (id)emptyStroke;
+ (id)stroke;
- (id)copyWithZone:(_NSZone *)zone;
- (void)setDontClearBackground:(BOOL)background;
- (void)setWidth:(double)width;
@end

@implementation TSDMutableStroke

- (void)setWidth:(double)width
{
  [(TSDStroke *)self setI_width:?];

  [(TSDStroke *)self setI_actualWidth:width];
}

+ (id)stroke
{
  v4.receiver = self;
  v4.super_class = &OBJC_METACLASS___TSDMutableStroke;
  v2 = objc_msgSendSuper2(&v4, sel_i_newStroke);

  return v2;
}

+ (id)emptyStroke
{
  v4.receiver = self;
  v4.super_class = &OBJC_METACLASS___TSDMutableStroke;
  v2 = objc_msgSendSuper2(&v4, sel_i_newEmptyStroke);

  return v2;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [TSDStroke alloc];
  color = [(TSDMutableStroke *)self color];
  [(TSDMutableStroke *)self width];
  v7 = v6;
  v8 = [(TSDMutableStroke *)self cap];
  join = [(TSDMutableStroke *)self join];
  pattern = [(TSDMutableStroke *)self pattern];
  [(TSDMutableStroke *)self miterLimit];
  v12 = [(TSDStroke *)v4 initWithColor:color width:v8 cap:join join:pattern pattern:v7 miterLimit:v11];

  [(TSDMutableStroke *)self actualWidth];
  [(TSDStroke *)v12 setI_actualWidth:?];
  return v12;
}

- (void)setDontClearBackground:(BOOL)background
{
  if (background)
  {
    value = objc_alloc_init(TSTStrokeAssociatedObject);
    [(TSTStrokeAssociatedObject *)value setDontClearBackground:1];
    objc_setAssociatedObject(self, "TSTStrokeAssociatedObject", value, 1);
  }

  else
  {

    objc_setAssociatedObject(self, "TSTStrokeAssociatedObject", 0, 1);
  }
}

@end