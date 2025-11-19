@interface PGTitleSpecPool
+ (id)poolWithSpecs:(id)a3;
- (PGTitleSpecPool)initWithSpecs:(id)a3;
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

- (PGTitleSpecPool)initWithSpecs:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = PGTitleSpecPool;
  v6 = [(PGTitleSpecPool *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_specs, a3);
  }

  return v7;
}

+ (id)poolWithSpecs:(id)a3
{
  v3 = a3;
  v4 = [[PGTitleSpecPool alloc] initWithSpecs:v3];

  return v4;
}

@end