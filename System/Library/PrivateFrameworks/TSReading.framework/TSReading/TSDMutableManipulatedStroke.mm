@interface TSDMutableManipulatedStroke
- (id)copyWithZone:(_NSZone *)zone;
- (void)setWidth:(double)width;
@end

@implementation TSDMutableManipulatedStroke

- (void)setWidth:(double)width
{
  [(TSDStroke *)self setI_width:?];

  [(TSDStroke *)self setI_actualWidth:width];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [TSDManipulatedStroke alloc];
  strokeName = [(TSDSmartStroke *)self strokeName];
  color = [(TSDMutableManipulatedStroke *)self color];
  [(TSDMutableManipulatedStroke *)self width];
  v8 = v7;
  v9 = [(TSDMutableManipulatedStroke *)self cap];
  join = [(TSDMutableManipulatedStroke *)self join];
  pattern = [(TSDMutableManipulatedStroke *)self pattern];
  [(TSDMutableManipulatedStroke *)self miterLimit];

  return [(TSDManipulatedStroke *)v4 initWithName:strokeName color:color width:v9 cap:join join:pattern pattern:v8 miterLimit:v12];
}

@end