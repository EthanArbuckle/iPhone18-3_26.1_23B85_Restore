@interface ExtremeDisparity
- (id)computeWithLeftBuffer:(__CVBuffer *)a3 rightBuffer:(__CVBuffer *)a4 percentile:(float)a5;
@end

@implementation ExtremeDisparity

- (id)computeWithLeftBuffer:(__CVBuffer *)a3 rightBuffer:(__CVBuffer *)a4 percentile:(float)a5
{
  v8 = a3;
  v9 = a4;
  v10 = self;
  sub_264319F7C(v8, v9, a5);
  v12 = v11;

  return v12;
}

@end