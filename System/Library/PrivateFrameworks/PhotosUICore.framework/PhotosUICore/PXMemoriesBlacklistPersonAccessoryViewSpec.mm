@interface PXMemoriesBlacklistPersonAccessoryViewSpec
+ (id)specWithPerson:(id)person;
- (PXMemoriesBlacklistPersonAccessoryViewSpec)initWithPerson:(id)person;
@end

@implementation PXMemoriesBlacklistPersonAccessoryViewSpec

- (PXMemoriesBlacklistPersonAccessoryViewSpec)initWithPerson:(id)person
{
  personCopy = person;
  v9.receiver = self;
  v9.super_class = PXMemoriesBlacklistPersonAccessoryViewSpec;
  v6 = [(PXMemoriesBlacklistAccessoryViewSpec *)&v9 initWithContentViewFrame:0.0, 0.0, 294.0, 100.0];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_person, person);
    [(PXMemoriesBlacklistAccessoryViewSpec *)v7 setType:2];
  }

  return v7;
}

+ (id)specWithPerson:(id)person
{
  personCopy = person;
  v4 = [[PXMemoriesBlacklistPersonAccessoryViewSpec alloc] initWithPerson:personCopy];

  return v4;
}

@end