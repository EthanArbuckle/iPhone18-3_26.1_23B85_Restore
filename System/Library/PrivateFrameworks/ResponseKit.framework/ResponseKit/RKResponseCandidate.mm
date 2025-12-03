@interface RKResponseCandidate
- (RKResponseCandidate)initWithString:(id)string attributes:(id)attributes;
@end

@implementation RKResponseCandidate

- (RKResponseCandidate)initWithString:(id)string attributes:(id)attributes
{
  v5.receiver = self;
  v5.super_class = RKResponseCandidate;
  return [(RKResponse *)&v5 initWithString:string attributes:attributes category:0];
}

@end