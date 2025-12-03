@interface ICQCloudStorageApps
- (ICQCloudStorageApps)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)initFromDictionary:(id)dictionary;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ICQCloudStorageApps

- (id)initFromDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v13.receiver = self;
  v13.super_class = ICQCloudStorageApps;
  v5 = [(ICQCloudStorageApps *)&v13 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"apps"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v11[0] = MEMORY[0x277D85DD0];
      v11[1] = 3221225472;
      v11[2] = __42__ICQCloudStorageApps_initFromDictionary___block_invoke;
      v11[3] = &unk_27A6528C0;
      v12 = v7;
      v8 = v7;
      [v6 enumerateObjectsUsingBlock:v11];
      [(ICQCloudStorageApps *)v5 setApps:v8];
    }

    v9 = [dictionaryCopy objectForKeyedSubscript:@"genericErrorMessage"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(ICQCloudStorageApps *)v5 setGenericErrorMessage:v9];
    }
  }

  return v5;
}

void __42__ICQCloudStorageApps_initFromDictionary___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = *(a1 + 32);
    v4 = [[ICQAppInfo alloc] initFromDictionary:v5];
    [v3 addObject:v4];
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(ICQCloudStorageApps);
  [(ICQCloudStorageApps *)v4 setApps:self->_apps];
  [(ICQCloudStorageApps *)v4 setGenericErrorMessage:self->_genericErrorMessage];
  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  apps = self->_apps;
  coderCopy = coder;
  [coderCopy encodeObject:apps forKey:@"apps"];
  [coderCopy encodeObject:self->_genericErrorMessage forKey:@"genericErrorMessage"];
}

- (ICQCloudStorageApps)initWithCoder:(id)coder
{
  v16[2] = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v15.receiver = self;
  v15.super_class = ICQCloudStorageApps;
  v5 = [(ICQCloudStorageApps *)&v15 init];
  if (v5)
  {
    v6 = MEMORY[0x277CBEB98];
    v16[0] = objc_opt_class();
    v16[1] = objc_opt_class();
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:2];
    v8 = [v6 setWithArray:v7];

    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"apps"];
    apps = v5->_apps;
    v5->_apps = v9;

    v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"genericErrorMessage"];
    genericErrorMessage = v5->_genericErrorMessage;
    v5->_genericErrorMessage = v11;
  }

  v13 = *MEMORY[0x277D85DE8];
  return v5;
}

@end