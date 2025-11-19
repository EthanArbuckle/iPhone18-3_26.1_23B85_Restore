@interface PPLocationCache
- (PPLocationCache)initWithLocationStore:(id)a3;
- (id)homeOrWorkAddresses;
- (id)locationForHome;
- (id)locationForWork;
- (void)_refresh;
@end

@implementation PPLocationCache

- (void)_refresh
{
  v3 = [(PPLocalLocationStore *)self->_locationStore locationRecordOfCategory:5];
  v4 = v3;
  if (v3)
  {
    v3 = [v3 location];
  }

  home = self->_home;
  self->_home = v3;

  v6 = [(PPLocalLocationStore *)self->_locationStore locationRecordOfCategory:6];
  v7 = v6;
  if (v6)
  {
    v6 = [v6 location];
  }

  work = self->_work;
  self->_work = v6;

  v9 = objc_autoreleasePoolPush();
  [(NSMutableSet *)self->_homeOrWorkAddresses removeAllObjects];
  if (self->_home)
  {
    v10 = [PPLocationSupport streetAddressOfLocation:?];
    v11 = [PPLocationSupport fullAddressOfLocation:self->_home];
    if (v10)
    {
      homeOrWorkAddresses = self->_homeOrWorkAddresses;
      v13 = [v10 lowercaseString];
      [(NSMutableSet *)homeOrWorkAddresses addObject:v13];
    }

    if (v11)
    {
      v14 = self->_homeOrWorkAddresses;
      v15 = [v11 lowercaseString];
      [(NSMutableSet *)v14 addObject:v15];
    }
  }

  if (self->_work)
  {
    v16 = [PPLocationSupport streetAddressOfLocation:?];
    v17 = [PPLocationSupport fullAddressOfLocation:self->_work];
    if (v16)
    {
      v18 = self->_homeOrWorkAddresses;
      v19 = [v16 lowercaseString];
      [(NSMutableSet *)v18 addObject:v19];
    }

    if (v17)
    {
      v20 = self->_homeOrWorkAddresses;
      v21 = [v17 lowercaseString];
      [(NSMutableSet *)v20 addObject:v21];
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

- (PPLocationCache)initWithLocationStore:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = PPLocationCache;
  v6 = [(PPLocationCache *)&v11 init];
  v7 = v6;
  if (v6)
  {
    v6->_valid = 0;
    objc_storeStrong(&v6->_locationStore, a3);
    v8 = objc_opt_new();
    homeOrWorkAddresses = v7->_homeOrWorkAddresses;
    v7->_homeOrWorkAddresses = v8;
  }

  return v7;
}

@end