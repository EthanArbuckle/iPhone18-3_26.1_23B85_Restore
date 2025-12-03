@interface PGGraphSocialGroupChange
- (PGGraphSocialGroupChange)initWithSocialGroupUUID:(id)d propertyNames:(id)names;
- (id)description;
- (void)mergeChange:(id)change;
@end

@implementation PGGraphSocialGroupChange

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v9.receiver = self;
  v9.super_class = PGGraphSocialGroupChange;
  v4 = [(PGGraphChange *)&v9 description];
  socialGroupUUID = [(PGGraphSocialGroupChange *)self socialGroupUUID];
  propertyNames = [(PGGraphSocialGroupChange *)self propertyNames];
  v7 = [v3 stringWithFormat:@"%@ social group uuid: %@, propertyNames: %@", v4, socialGroupUUID, propertyNames];

  return v7;
}

- (void)mergeChange:(id)change
{
  changeCopy = change;
  socialGroupUUID = [changeCopy socialGroupUUID];
  [socialGroupUUID length];
  v5 = [(NSSet *)self->_propertyNames mutableCopy];
  propertyNames = [changeCopy propertyNames];

  [v5 unionSet:propertyNames];
  v7 = [MEMORY[0x277CBEB98] setWithSet:v5];
  propertyNames = self->_propertyNames;
  self->_propertyNames = v7;
}

- (PGGraphSocialGroupChange)initWithSocialGroupUUID:(id)d propertyNames:(id)names
{
  dCopy = d;
  namesCopy = names;
  v12.receiver = self;
  v12.super_class = PGGraphSocialGroupChange;
  v9 = [(PGGraphSocialGroupChange *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_socialGroupUUID, d);
    objc_storeStrong(&v10->_propertyNames, names);
  }

  return v10;
}

@end