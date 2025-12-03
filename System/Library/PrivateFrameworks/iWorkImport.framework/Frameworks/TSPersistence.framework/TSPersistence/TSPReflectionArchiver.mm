@interface TSPReflectionArchiver
- (TSPReflectionArchiver)initWithObject:(id)object;
@end

@implementation TSPReflectionArchiver

- (TSPReflectionArchiver)initWithObject:(id)object
{
  v4.receiver = self;
  v4.super_class = TSPReflectionArchiver;
  return [(TSPArchiver *)&v4 initWithObject:object];
}

@end