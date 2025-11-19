@interface PGGraphSocialGroupChange
- (PGGraphSocialGroupChange)initWithSocialGroupUUID:(id)a3 propertyNames:(id)a4;
- (id)description;
- (void)mergeChange:(id)a3;
@end

@implementation PGGraphSocialGroupChange

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v9.receiver = self;
  v9.super_class = PGGraphSocialGroupChange;
  v4 = [(PGGraphChange *)&v9 description];
  v5 = [(PGGraphSocialGroupChange *)self socialGroupUUID];
  v6 = [(PGGraphSocialGroupChange *)self propertyNames];
  v7 = [v3 stringWithFormat:@"%@ social group uuid: %@, propertyNames: %@", v4, v5, v6];

  return v7;
}

- (void)mergeChange:(id)a3
{
  v4 = a3;
  v9 = [v4 socialGroupUUID];
  [v9 length];
  v5 = [(NSSet *)self->_propertyNames mutableCopy];
  v6 = [v4 propertyNames];

  [v5 unionSet:v6];
  v7 = [MEMORY[0x277CBEB98] setWithSet:v5];
  propertyNames = self->_propertyNames;
  self->_propertyNames = v7;
}

- (PGGraphSocialGroupChange)initWithSocialGroupUUID:(id)a3 propertyNames:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = PGGraphSocialGroupChange;
  v9 = [(PGGraphSocialGroupChange *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_socialGroupUUID, a3);
    objc_storeStrong(&v10->_propertyNames, a4);
  }

  return v10;
}

@end