@interface PGGraphSocialGroupsInsertion
- (PGGraphSocialGroupsInsertion)initWithSocialGroupUUIDs:(id)ds;
- (PGGraphSocialGroupsInsertion)initWithSocialGroups:(id)groups;
- (id)description;
@end

@implementation PGGraphSocialGroupsInsertion

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v7.receiver = self;
  v7.super_class = PGGraphSocialGroupsInsertion;
  v4 = [(PGGraphChange *)&v7 description];
  v5 = [v3 stringWithFormat:@"%@, socialGroupUUIDs (%ld): %@", v4, -[NSSet count](self->_socialGroupUUIDs, "count"), self->_socialGroupUUIDs];

  return v5;
}

- (PGGraphSocialGroupsInsertion)initWithSocialGroups:(id)groups
{
  v22 = *MEMORY[0x277D85DE8];
  groupsCopy = groups;
  v6 = [MEMORY[0x277CBEB58] setWithCapacity:{objc_msgSend(groupsCopy, "count")}];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v7 = groupsCopy;
  v8 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v18;
    do
    {
      v11 = 0;
      do
      {
        if (*v18 != v10)
        {
          objc_enumerationMutation(v7);
        }

        uuid = [*(*(&v17 + 1) + 8 * v11) uuid];
        [v6 addObject:uuid];

        ++v11;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v9);
  }

  v13 = [(PGGraphSocialGroupsInsertion *)self initWithSocialGroupUUIDs:v6];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_socialGroups, groups);
  }

  v15 = *MEMORY[0x277D85DE8];
  return v14;
}

- (PGGraphSocialGroupsInsertion)initWithSocialGroupUUIDs:(id)ds
{
  dsCopy = ds;
  v9.receiver = self;
  v9.super_class = PGGraphSocialGroupsInsertion;
  v6 = [(PGGraphSocialGroupsInsertion *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_socialGroupUUIDs, ds);
  }

  return v7;
}

@end