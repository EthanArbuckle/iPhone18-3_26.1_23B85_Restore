@interface PSSegment
+ (id)segmentWithName:(id)name computeAgent:(int64_t)agent;
- (PSSegment)initWithName:(id)name computeAgent:(int64_t)agent;
@end

@implementation PSSegment

+ (id)segmentWithName:(id)name computeAgent:(int64_t)agent
{
  nameCopy = name;
  v6 = [[PSSegment alloc] initWithName:nameCopy computeAgent:agent];

  return v6;
}

- (PSSegment)initWithName:(id)name computeAgent:(int64_t)agent
{
  nameCopy = name;
  v10.receiver = self;
  v10.super_class = PSSegment;
  v7 = [(PSSegment *)&v10 init];
  v8 = v7;
  if (v7)
  {
    [(PSSegment *)v7 setName:nameCopy];
    [(PSSegment *)v8 setComputeAgent:agent];
  }

  return v8;
}

@end