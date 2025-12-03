@interface TSDMutableBrushStroke
- (id)copyWithZone:(_NSZone *)zone;
- (void)setWidth:(double)width;
@end

@implementation TSDMutableBrushStroke

- (void)setWidth:(double)width
{
  [(TSDStroke *)self setI_width:?];

  [(TSDStroke *)self setI_actualWidth:width];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [TSDBrushStroke alloc];
  strokeName = [(TSDSmartStroke *)self strokeName];
  color = [(TSDMutableBrushStroke *)self color];
  [(TSDMutableBrushStroke *)self width];
  v8 = v7;
  v9 = [(TSDMutableBrushStroke *)self cap];
  join = [(TSDMutableBrushStroke *)self join];
  pattern = [(TSDMutableBrushStroke *)self pattern];
  [(TSDMutableBrushStroke *)self miterLimit];
  v13 = [(TSDBrushStroke *)v4 initWithName:strokeName color:color width:v9 cap:join join:pattern pattern:v8 miterLimit:v12];

  return v13;
}

@end