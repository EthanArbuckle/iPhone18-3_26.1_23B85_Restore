@interface TSDMutableCalligraphyStroke
- (id)copyWithZone:(_NSZone *)zone;
- (void)setWidth:(double)width;
@end

@implementation TSDMutableCalligraphyStroke

- (void)setWidth:(double)width
{
  [(TSDStroke *)self setI_width:?];

  [(TSDStroke *)self setI_actualWidth:width];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [TSDCalligraphyStroke allocWithZone:zone];
  color = [(TSDMutableCalligraphyStroke *)self color];
  [(TSDMutableCalligraphyStroke *)self width];
  v7 = v6;
  v8 = [(TSDMutableCalligraphyStroke *)self cap];
  join = [(TSDMutableCalligraphyStroke *)self join];
  pattern = [(TSDMutableCalligraphyStroke *)self pattern];
  [(TSDMutableCalligraphyStroke *)self miterLimit];

  return [(TSDCalligraphyStroke *)v4 initWithColor:color width:v8 cap:join join:pattern pattern:v7 miterLimit:v11];
}

@end