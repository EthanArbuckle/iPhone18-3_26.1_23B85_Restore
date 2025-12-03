@interface PGGraphPersonsDeletion
- (PGGraphPersonsDeletion)initWithPersonLocalIdentifiers:(id)identifiers;
- (id)description;
@end

@implementation PGGraphPersonsDeletion

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v7.receiver = self;
  v7.super_class = PGGraphPersonsDeletion;
  v4 = [(PGGraphChange *)&v7 description];
  v5 = [v3 stringWithFormat:@"%@, personLocalIdentifiers (%ld): %@", v4, -[NSSet count](self->_personLocalIdentifiers, "count"), self->_personLocalIdentifiers];

  return v5;
}

- (PGGraphPersonsDeletion)initWithPersonLocalIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  v9.receiver = self;
  v9.super_class = PGGraphPersonsDeletion;
  v6 = [(PGGraphPersonsDeletion *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_personLocalIdentifiers, identifiers);
  }

  return v7;
}

@end