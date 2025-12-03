@interface PGGraphMomentsDeletion
- (PGGraphMomentsDeletion)initWithMomentUUIDs:(id)ds;
- (id)description;
@end

@implementation PGGraphMomentsDeletion

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v7.receiver = self;
  v7.super_class = PGGraphMomentsDeletion;
  v4 = [(PGGraphChange *)&v7 description];
  v5 = [v3 stringWithFormat:@"%@, momentUUIDs (%lu): %@", v4, -[NSSet count](self->_momentUUIDs, "count"), self->_momentUUIDs];

  return v5;
}

- (PGGraphMomentsDeletion)initWithMomentUUIDs:(id)ds
{
  dsCopy = ds;
  v9.receiver = self;
  v9.super_class = PGGraphMomentsDeletion;
  v6 = [(PGGraphMomentsDeletion *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_momentUUIDs, ds);
  }

  return v7;
}

@end