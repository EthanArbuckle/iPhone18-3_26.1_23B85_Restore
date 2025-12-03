@interface PGTitleSpecPool
+ (id)poolWithSpecs:(id)specs;
- (PGTitleSpecPool)initWithSpecs:(id)specs;
- (id)description;
@end

@implementation PGTitleSpecPool

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v7.receiver = self;
  v7.super_class = PGTitleSpecPool;
  v4 = [(PGTitleSpecPool *)&v7 description];
  v5 = [v3 stringWithFormat:@"%@ specs %@", v4, self->_specs];

  return v5;
}

- (PGTitleSpecPool)initWithSpecs:(id)specs
{
  specsCopy = specs;
  v9.receiver = self;
  v9.super_class = PGTitleSpecPool;
  v6 = [(PGTitleSpecPool *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_specs, specs);
  }

  return v7;
}

+ (id)poolWithSpecs:(id)specs
{
  specsCopy = specs;
  v4 = [[PGTitleSpecPool alloc] initWithSpecs:specsCopy];

  return v4;
}

@end