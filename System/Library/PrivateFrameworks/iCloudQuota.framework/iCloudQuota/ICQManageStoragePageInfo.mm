@interface ICQManageStoragePageInfo
- (ICQManageStoragePageInfo)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)initFromDictionary:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ICQManageStoragePageInfo

- (id)initFromDictionary:(id)a3
{
  v4 = a3;
  v22.receiver = self;
  v22.super_class = ICQManageStoragePageInfo;
  v5 = [(ICQManageStoragePageInfo *)&v22 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"storageGraphFooterText"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      objc_storeStrong(&v5->_storageGraphFooterText, v6);
    }

    v7 = [v4 objectForKeyedSubscript:@"title"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      objc_storeStrong(&v5->_title, v7);
    }

    v8 = [v4 objectForKeyedSubscript:@"specifiers"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v20[0] = MEMORY[0x277D85DD0];
      v20[1] = 3221225472;
      v20[2] = __47__ICQManageStoragePageInfo_initFromDictionary___block_invoke;
      v20[3] = &unk_27A6528C0;
      v21 = v9;
      v10 = v9;
      [v8 enumerateObjectsUsingBlock:v20];
      [(ICQManageStoragePageInfo *)v5 setSpecifiers:v10];
    }

    v11 = [v4 objectForKeyedSubscript:@"tips"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v15 = MEMORY[0x277D85DD0];
      v16 = 3221225472;
      v17 = __47__ICQManageStoragePageInfo_initFromDictionary___block_invoke_2;
      v18 = &unk_27A6528C0;
      v19 = v12;
      v13 = v12;
      [v11 enumerateObjectsUsingBlock:&v15];
      [(ICQManageStoragePageInfo *)v5 setTips:v13, v15, v16, v17, v18];
    }
  }

  return v5;
}

void __47__ICQManageStoragePageInfo_initFromDictionary___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = *(a1 + 32);
    v4 = [[ICQManageStorageSpecifierInfo alloc] initFromDictionary:v5];
    [v3 addObject:v4];
  }
}

void __47__ICQManageStoragePageInfo_initFromDictionary___block_invoke_2(uint64_t a1, void *a2)
{
  v5 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = *(a1 + 32);
    v4 = [[ICQTipInfo alloc] initFromDictionary:v5];
    [v3 addObject:v4];
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(ICQManageStoragePageInfo);
  [(ICQManageStoragePageInfo *)v4 setStorageGraphFooterText:self->_storageGraphFooterText];
  [(ICQManageStoragePageInfo *)v4 setTitle:self->_title];
  [(ICQManageStoragePageInfo *)v4 setSpecifiers:self->_specifiers];
  [(ICQManageStoragePageInfo *)v4 setTips:self->_tips];
  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  storageGraphFooterText = self->_storageGraphFooterText;
  v5 = a3;
  [v5 encodeObject:storageGraphFooterText forKey:@"thermometerFooterText"];
  [v5 encodeObject:self->_title forKey:@"title"];
  [v5 encodeObject:self->_specifiers forKey:@"specifiers"];
  [v5 encodeObject:self->_tips forKey:@"tips"];
}

- (ICQManageStoragePageInfo)initWithCoder:(id)a3
{
  v24[2] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v22.receiver = self;
  v22.super_class = ICQManageStoragePageInfo;
  v5 = [(ICQManageStoragePageInfo *)&v22 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"thermometerFooterText"];
    storageGraphFooterText = v5->_storageGraphFooterText;
    v5->_storageGraphFooterText = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"title"];
    title = v5->_title;
    v5->_title = v8;

    v10 = MEMORY[0x277CBEB98];
    v24[0] = objc_opt_class();
    v24[1] = objc_opt_class();
    v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:2];
    v12 = [v10 setWithArray:v11];

    v13 = [v4 decodeObjectOfClasses:v12 forKey:@"specifiers"];
    specifiers = v5->_specifiers;
    v5->_specifiers = v13;

    v15 = MEMORY[0x277CBEB98];
    v23[0] = objc_opt_class();
    v23[1] = objc_opt_class();
    v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:2];
    v17 = [v15 setWithArray:v16];

    v18 = [v4 decodeObjectOfClasses:v17 forKey:@"tips"];
    tips = v5->_tips;
    v5->_tips = v18;
  }

  v20 = *MEMORY[0x277D85DE8];
  return v5;
}

@end