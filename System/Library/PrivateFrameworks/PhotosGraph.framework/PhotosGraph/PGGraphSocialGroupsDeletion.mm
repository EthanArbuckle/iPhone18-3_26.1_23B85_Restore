@interface PGGraphSocialGroupsDeletion
- (PGGraphSocialGroupsDeletion)initWithSocialGroupUUIDs:(id)ds;
- (id)description;
@end

@implementation PGGraphSocialGroupsDeletion

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v7.receiver = self;
  v7.super_class = PGGraphSocialGroupsDeletion;
  v4 = [(PGGraphChange *)&v7 description];
  v5 = [v3 stringWithFormat:@"%@, socialGroupUUIDs (%ld): %@", v4, -[NSSet count](self->_socialGroupUUIDs, "count"), self->_socialGroupUUIDs];

  return v5;
}

- (PGGraphSocialGroupsDeletion)initWithSocialGroupUUIDs:(id)ds
{
  dsCopy = ds;
  v9.receiver = self;
  v9.super_class = PGGraphSocialGroupsDeletion;
  v6 = [(PGGraphSocialGroupsDeletion *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_socialGroupUUIDs, ds);
  }

  return v7;
}

@end