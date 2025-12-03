@interface PPLocationCache
- (PPLocationCache)initWithLocationStore:(id)store;
- (id)homeOrWorkAddresses;
- (id)locationForHome;
- (id)locationForWork;
- (void)_refresh;
@end

@implementation PPLocationCache

- (void)_refresh
{
  location = [(PPLocalLocationStore *)self->_locationStore locationRecordOfCategory:5];
  v4 = location;
  if (location)
  {
    location = [location location];
  }

  home = self->_home;
  self->_home = location;

  location2 = [(PPLocalLocationStore *)self->_locationStore locationRecordOfCategory:6];
  v7 = location2;
  if (location2)
  {
    location2 = [location2 location];
  }

  work = self->_work;
  self->_work = location2;

  v9 = objc_autoreleasePoolPush();
  [(NSMutableSet *)self->_homeOrWorkAddresses removeAllObjects];
  if (self->_home)
  {
    v10 = [PPLocationSupport streetAddressOfLocation:?];
    v11 = [PPLocationSupport fullAddressOfLocation:self->_home];
    if (v10)
    {
      homeOrWorkAddresses = self->_homeOrWorkAddresses;
      lowercaseString = [v10 lowercaseString];
      [(NSMutableSet *)homeOrWorkAddresses addObject:lowercaseString];
    }

    if (v11)
    {
      v14 = self->_homeOrWorkAddresses;
      lowercaseString2 = [v11 lowercaseString];
      [(NSMutableSet *)v14 addObject:lowercaseString2];
    }
  }

  if (self->_work)
  {
    v16 = [PPLocationSupport streetAddressOfLocation:?];
    v17 = [PPLocationSupport fullAddressOfLocation:self->_work];
    if (v16)
    {
      v18 = self->_homeOrWorkAddresses;
      lowercaseString3 = [v16 lowercaseString];
      [(NSMutableSet *)v18 addObject:lowercaseString3];
    }

    if (v17)
    {
      v20 = self->_homeOrWorkAddresses;
      lowercaseString4 = [v17 lowercaseString];
      [(NSMutableSet *)v20 addObject:lowercaseString4];
    }
  }

  objc_autoreleasePoolPop(v9);
  self->_valid = 1;
}

- (id)homeOrWorkAddresses
{
  if (!self->_valid)
  {
    [(PPLocationCache *)self _refresh];
  }

  homeOrWorkAddresses = self->_homeOrWorkAddresses;

  return homeOrWorkAddresses;
}

- (id)locationForWork
{
  if (!self->_valid)
  {
    [(PPLocationCache *)self _refresh];
  }

  work = self->_work;

  return work;
}

- (id)locationForHome
{
  if (!self->_valid)
  {
    [(PPLocationCache *)self _refresh];
  }

  home = self->_home;

  return home;
}

- (PPLocationCache)initWithLocationStore:(id)store
{
  storeCopy = store;
  v11.receiver = self;
  v11.super_class = PPLocationCache;
  v6 = [(PPLocationCache *)&v11 init];
  v7 = v6;
  if (v6)
  {
    v6->_valid = 0;
    objc_storeStrong(&v6->_locationStore, store);
    v8 = objc_opt_new();
    homeOrWorkAddresses = v7->_homeOrWorkAddresses;
    v7->_homeOrWorkAddresses = v8;
  }

  return v7;
}

@end