@interface PGGraphSocialGroupsDeletion
- (PGGraphSocialGroupsDeletion)initWithSocialGroupUUIDs:(id)a3;
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

- (PGGraphSocialGroupsDeletion)initWithSocialGroupUUIDs:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = PGGraphSocialGroupsDeletion;
  v6 = [(PGGraphSocialGroupsDeletion *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_socialGroupUUIDs, a3);
  }

  return v7;
}

@end