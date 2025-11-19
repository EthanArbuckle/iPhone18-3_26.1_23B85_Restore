@interface TSDMutableCalligraphyStroke
- (id)copyWithZone:(_NSZone *)a3;
- (void)setWidth:(double)a3;
@end

@implementation TSDMutableCalligraphyStroke

- (void)setWidth:(double)a3
{
  [(TSDStroke *)self setI_width:?];

  [(TSDStroke *)self setI_actualWidth:a3];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [TSDCalligraphyStroke allocWithZone:a3];
  v5 = [(TSDMutableCalligraphyStroke *)self color];
  [(TSDMutableCalligraphyStroke *)self width];
  v7 = v6;
  v8 = [(TSDMutableCalligraphyStroke *)self cap];
  v9 = [(TSDMutableCalligraphyStroke *)self join];
  v10 = [(TSDMutableCalligraphyStroke *)self pattern];
  [(TSDMutableCalligraphyStroke *)self miterLimit];

  return [(TSDCalligraphyStroke *)v4 initWithColor:v5 width:v8 cap:v9 join:v10 pattern:v7 miterLimit:v11];
}

@end