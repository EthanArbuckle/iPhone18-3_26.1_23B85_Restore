@interface RKResponseCandidate
- (RKResponseCandidate)initWithString:(id)a3 attributes:(id)a4;
@end

@implementation RKResponseCandidate

- (RKResponseCandidate)initWithString:(id)a3 attributes:(id)a4
{
  v5.receiver = self;
  v5.super_class = RKResponseCandidate;
  return [(RKResponse *)&v5 initWithString:a3 attributes:a4 category:0];
}

@end