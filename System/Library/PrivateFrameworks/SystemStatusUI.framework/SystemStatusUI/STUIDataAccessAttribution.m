@interface STUIDataAccessAttribution
- (unint64_t)dataAccessType;
@end

@implementation STUIDataAccessAttribution

- (unint64_t)dataAccessType
{
  v3.receiver = self;
  v3.super_class = STUIDataAccessAttribution;
  return [(STDataAccessAttribution *)&v3 dataAccessType];
}

@end