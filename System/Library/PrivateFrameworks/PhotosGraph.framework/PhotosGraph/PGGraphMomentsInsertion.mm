@interface PGGraphMomentsInsertion
- (PGGraphMomentsInsertion)initWithMomentUUIDs:(id)ds;
- (PGGraphMomentsInsertion)initWithMoments:(id)moments;
- (id)description;
@end

@implementation PGGraphMomentsInsertion

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v7.receiver = self;
  v7.super_class = PGGraphMomentsInsertion;
  v4 = [(PGGraphChange *)&v7 description];
  v5 = [v3 stringWithFormat:@"%@, momentUUIDs (%lu): %@", v4, -[NSSet count](self->_momentUUIDs, "count"), self->_momentUUIDs];

  return v5;
}

- (PGGraphMomentsInsertion)initWithMoments:(id)moments
{
  v22 = *MEMORY[0x277D85DE8];
  momentsCopy = moments;
  v6 = [MEMORY[0x277CBEB58] setWithCapacity:{objc_msgSend(momentsCopy, "count")}];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v7 = momentsCopy;
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
        if (uuid)
        {
          [v6 addObject:uuid];
        }

        ++v11;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v9);
  }

  v13 = [(PGGraphMomentsInsertion *)self initWithMomentUUIDs:v6];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_moments, moments);
  }

  v15 = *MEMORY[0x277D85DE8];
  return v14;
}

- (PGGraphMomentsInsertion)initWithMomentUUIDs:(id)ds
{
  dsCopy = ds;
  v9.receiver = self;
  v9.super_class = PGGraphMomentsInsertion;
  v6 = [(PGGraphMomentsInsertion *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_momentUUIDs, ds);
  }

  return v7;
}

@end