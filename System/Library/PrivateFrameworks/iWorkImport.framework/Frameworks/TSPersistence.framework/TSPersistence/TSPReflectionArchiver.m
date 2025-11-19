@interface TSPReflectionArchiver
- (TSPReflectionArchiver)initWithObject:(id)a3;
@end

@implementation TSPReflectionArchiver

- (TSPReflectionArchiver)initWithObject:(id)a3
{
  v4.receiver = self;
  v4.super_class = TSPReflectionArchiver;
  return [(TSPArchiver *)&v4 initWithObject:a3];
}

@end