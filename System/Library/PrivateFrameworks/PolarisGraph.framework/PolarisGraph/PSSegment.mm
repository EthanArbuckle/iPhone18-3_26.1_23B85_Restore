@interface PSSegment
+ (id)segmentWithName:(id)a3 computeAgent:(int64_t)a4;
- (PSSegment)initWithName:(id)a3 computeAgent:(int64_t)a4;
@end

@implementation PSSegment

+ (id)segmentWithName:(id)a3 computeAgent:(int64_t)a4
{
  v5 = a3;
  v6 = [[PSSegment alloc] initWithName:v5 computeAgent:a4];

  return v6;
}

- (PSSegment)initWithName:(id)a3 computeAgent:(int64_t)a4
{
  v6 = a3;
  v10.receiver = self;
  v10.super_class = PSSegment;
  v7 = [(PSSegment *)&v10 init];
  v8 = v7;
  if (v7)
  {
    [(PSSegment *)v7 setName:v6];
    [(PSSegment *)v8 setComputeAgent:a4];
  }

  return v8;
}

@end