@interface PGCurationTrait
- (PGCurationTrait)init;
- (id)debugDescription;
@end

@implementation PGCurationTrait

- (id)debugDescription
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: %p>", v5, self];

  return v6;
}

- (PGCurationTrait)init
{
  v3.receiver = self;
  v3.super_class = PGCurationTrait;
  result = [(PGCurationTrait *)&v3 init];
  if (result)
  {
    result->_minimumScore = 0.0;
  }

  return result;
}

@end