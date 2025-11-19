@interface PGGraphPersonChange
- (PGGraphPersonChange)initWithPersonLocalIdentifier:(id)a3 contactIdentifier:(id)a4 propertyNames:(id)a5;
- (PGGraphPersonChange)initWithPersonLocalIdentifier:(id)a3 propertyNames:(id)a4;
- (id)description;
- (void)mergeChange:(id)a3;
@end

@implementation PGGraphPersonChange

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v10.receiver = self;
  v10.super_class = PGGraphPersonChange;
  v4 = [(PGGraphChange *)&v10 description];
  v5 = [(PGGraphPersonChange *)self personLocalIdentifier];
  v6 = [(PGGraphPersonChange *)self contactIdentifier];
  v7 = [(PGGraphPersonChange *)self propertyNames];
  v8 = [v3 stringWithFormat:@"%@ person local identifier: %@, contact identifier: %@, propertyNames: %@", v4, v5, v6, v7];

  return v8;
}

- (void)mergeChange:(id)a3
{
  v10 = a3;
  v4 = [v10 personLocalIdentifier];
  v5 = [v10 contactIdentifier];
  if (![v4 length])
  {
    [v5 length];
  }

  v6 = [(NSSet *)self->_propertyNames mutableCopy];
  v7 = [v10 propertyNames];
  [v6 unionSet:v7];

  v8 = [MEMORY[0x277CBEB98] setWithSet:v6];
  propertyNames = self->_propertyNames;
  self->_propertyNames = v8;
}

- (PGGraphPersonChange)initWithPersonLocalIdentifier:(id)a3 contactIdentifier:(id)a4 propertyNames:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = PGGraphPersonChange;
  v12 = [(PGGraphPersonChange *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_personLocalIdentifier, a3);
    objc_storeStrong(&v13->_contactIdentifier, a4);
    objc_storeStrong(&v13->_propertyNames, a5);
  }

  return v13;
}

- (PGGraphPersonChange)initWithPersonLocalIdentifier:(id)a3 propertyNames:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = PGGraphPersonChange;
  v9 = [(PGGraphPersonChange *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_personLocalIdentifier, a3);
    objc_storeStrong(&v10->_propertyNames, a4);
  }

  return v10;
}

@end