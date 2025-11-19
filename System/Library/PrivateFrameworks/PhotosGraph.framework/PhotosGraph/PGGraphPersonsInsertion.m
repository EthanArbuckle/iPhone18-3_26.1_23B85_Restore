@interface PGGraphPersonsInsertion
- (PGGraphPersonsInsertion)initWithPersonLocalIdentifiers:(id)a3;
- (PGGraphPersonsInsertion)initWithPersons:(id)a3;
- (id)description;
@end

@implementation PGGraphPersonsInsertion

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v7.receiver = self;
  v7.super_class = PGGraphPersonsInsertion;
  v4 = [(PGGraphChange *)&v7 description];
  v5 = [v3 stringWithFormat:@"%@, personLocalIdentifiers (%ld): %@", v4, -[NSSet count](self->_personLocalIdentifiers, "count"), self->_personLocalIdentifiers];

  return v5;
}

- (PGGraphPersonsInsertion)initWithPersons:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = [MEMORY[0x277CBEB58] setWithCapacity:{objc_msgSend(v5, "count")}];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v7 = v5;
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

        v12 = [*(*(&v17 + 1) + 8 * v11) uuid];
        [v6 addObject:v12];

        ++v11;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v9);
  }

  v13 = [(PGGraphPersonsInsertion *)self initWithPersonLocalIdentifiers:v6];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_persons, a3);
  }

  v15 = *MEMORY[0x277D85DE8];
  return v14;
}

- (PGGraphPersonsInsertion)initWithPersonLocalIdentifiers:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = PGGraphPersonsInsertion;
  v6 = [(PGGraphPersonsInsertion *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_personLocalIdentifiers, a3);
  }

  return v7;
}

@end