@interface ICQAppsSyncingToDrive
- (ICQAppsSyncingToDrive)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)initFromDictionary:(id)dictionary;
@end

@implementation ICQAppsSyncingToDrive

- (id)initFromDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v12.receiver = self;
  v12.super_class = ICQAppsSyncingToDrive;
  v5 = [(ICQAppsSyncingToDrive *)&v12 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"apps"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v10[0] = MEMORY[0x277D85DD0];
      v10[1] = 3221225472;
      v10[2] = __44__ICQAppsSyncingToDrive_initFromDictionary___block_invoke;
      v10[3] = &unk_27A6528C0;
      v11 = v7;
      v8 = v7;
      [v6 enumerateObjectsUsingBlock:v10];
      [(ICQAppsSyncingToDrive *)v5 setApps:v8];
    }
  }

  return v5;
}

void __44__ICQAppsSyncingToDrive_initFromDictionary___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = *(a1 + 32);
    v4 = [[ICQDriveAppInfo alloc] initFromDictionary:v5];
    [v3 addObject:v4];
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(ICQAppsSyncingToDrive);
  [(ICQAppsSyncingToDrive *)v4 setApps:self->_apps];
  return v4;
}

- (ICQAppsSyncingToDrive)initWithCoder:(id)coder
{
  v14[2] = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = ICQAppsSyncingToDrive;
  v5 = [(ICQAppsSyncingToDrive *)&v13 init];
  if (v5)
  {
    v6 = MEMORY[0x277CBEB98];
    v14[0] = objc_opt_class();
    v14[1] = objc_opt_class();
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:2];
    v8 = [v6 setWithArray:v7];

    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"apps"];
    apps = v5->_apps;
    v5->_apps = v9;
  }

  v11 = *MEMORY[0x277D85DE8];
  return v5;
}

@end