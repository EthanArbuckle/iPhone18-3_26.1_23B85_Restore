@interface PGGraphPersonChange
- (PGGraphPersonChange)initWithPersonLocalIdentifier:(id)identifier contactIdentifier:(id)contactIdentifier propertyNames:(id)names;
- (PGGraphPersonChange)initWithPersonLocalIdentifier:(id)identifier propertyNames:(id)names;
- (id)description;
- (void)mergeChange:(id)change;
@end

@implementation PGGraphPersonChange

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v10.receiver = self;
  v10.super_class = PGGraphPersonChange;
  v4 = [(PGGraphChange *)&v10 description];
  personLocalIdentifier = [(PGGraphPersonChange *)self personLocalIdentifier];
  contactIdentifier = [(PGGraphPersonChange *)self contactIdentifier];
  propertyNames = [(PGGraphPersonChange *)self propertyNames];
  v8 = [v3 stringWithFormat:@"%@ person local identifier: %@, contact identifier: %@, propertyNames: %@", v4, personLocalIdentifier, contactIdentifier, propertyNames];

  return v8;
}

- (void)mergeChange:(id)change
{
  changeCopy = change;
  personLocalIdentifier = [changeCopy personLocalIdentifier];
  contactIdentifier = [changeCopy contactIdentifier];
  if (![personLocalIdentifier length])
  {
    [contactIdentifier length];
  }

  v6 = [(NSSet *)self->_propertyNames mutableCopy];
  propertyNames = [changeCopy propertyNames];
  [v6 unionSet:propertyNames];

  v8 = [MEMORY[0x277CBEB98] setWithSet:v6];
  propertyNames = self->_propertyNames;
  self->_propertyNames = v8;
}

- (PGGraphPersonChange)initWithPersonLocalIdentifier:(id)identifier contactIdentifier:(id)contactIdentifier propertyNames:(id)names
{
  identifierCopy = identifier;
  contactIdentifierCopy = contactIdentifier;
  namesCopy = names;
  v15.receiver = self;
  v15.super_class = PGGraphPersonChange;
  v12 = [(PGGraphPersonChange *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_personLocalIdentifier, identifier);
    objc_storeStrong(&v13->_contactIdentifier, contactIdentifier);
    objc_storeStrong(&v13->_propertyNames, names);
  }

  return v13;
}

- (PGGraphPersonChange)initWithPersonLocalIdentifier:(id)identifier propertyNames:(id)names
{
  identifierCopy = identifier;
  namesCopy = names;
  v12.receiver = self;
  v12.super_class = PGGraphPersonChange;
  v9 = [(PGGraphPersonChange *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_personLocalIdentifier, identifier);
    objc_storeStrong(&v10->_propertyNames, names);
  }

  return v10;
}

@end