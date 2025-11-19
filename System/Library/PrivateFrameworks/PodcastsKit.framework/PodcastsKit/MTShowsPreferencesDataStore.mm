@interface MTShowsPreferencesDataStore
+ (id)sharedInstance;
- (id)_stringForSortType:(int64_t)a3;
- (id)sortDescriptors;
- (int64_t)_sortTypeForString:(id)a3;
- (int64_t)sortOrder;
- (void)setSortOrder:(int64_t)a3;
@end

@implementation MTShowsPreferencesDataStore

+ (id)sharedInstance
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __45__MTShowsPreferencesDataStore_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (sharedInstance_onceToken_1 != -1)
  {
    dispatch_once(&sharedInstance_onceToken_1, block);
  }

  v2 = sharedInstance_instance_0;

  return v2;
}

void __45__MTShowsPreferencesDataStore_sharedInstance__block_invoke(uint64_t a1)
{
  v3.receiver = *(a1 + 32);
  v3.super_class = &OBJC_METACLASS___MTShowsPreferencesDataStore;
  v1 = [objc_msgSendSuper2(&v3 allocWithZone_];
  v2 = sharedInstance_instance_0;
  sharedInstance_instance_0 = v1;
}

- (id)sortDescriptors
{
  v2 = MEMORY[0x277D3DB38];
  v3 = [(MTShowsPreferencesDataStore *)self sortOrder];

  return [v2 sortDescriptorsForSortType:v3];
}

- (int64_t)sortOrder
{
  v3 = [MEMORY[0x277CBEBD0] _applePodcastsFoundationSharedUserDefaults];
  v4 = [v3 stringForKey:*MEMORY[0x277D3DDA0]];

  v5 = [(MTShowsPreferencesDataStore *)self _sortTypeForString:v4];
  return v5;
}

- (void)setSortOrder:(int64_t)a3
{
  v5 = [(MTShowsPreferencesDataStore *)self _stringForSortType:a3];
  v3 = [MEMORY[0x277CBEBD0] _applePodcastsFoundationSharedUserDefaults];
  [v3 setObject:v5 forKey:*MEMORY[0x277D3DDA0]];

  v4 = [MEMORY[0x277CBEBD0] _applePodcastsFoundationSharedUserDefaults];
  [v4 synchronize];
}

- (int64_t)_sortTypeForString:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"added"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"addedAscending"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"manual"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"title"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"titleAscending"])
  {
    v4 = 4;
  }

  else if ([v3 isEqualToString:@"updated"])
  {
    v4 = 5;
  }

  else if ([v3 isEqualToString:@"updatedAscending"])
  {
    v4 = 6;
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (id)_stringForSortType:(int64_t)a3
{
  if (a3 > 6)
  {
    return @"title";
  }

  else
  {
    return off_279A44E50[a3];
  }
}

@end