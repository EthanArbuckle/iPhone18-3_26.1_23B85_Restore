@interface RMLogItemInternal
- (RMLogItemInternal)initWithTimestamp:(double)timestamp;
@end

@implementation RMLogItemInternal

- (RMLogItemInternal)initWithTimestamp:(double)timestamp
{
  v5.receiver = self;
  v5.super_class = RMLogItemInternal;
  result = [(RMLogItemInternal *)&v5 init];
  if (result)
  {
    result->fTimestamp = timestamp;
  }

  return result;
}

@end