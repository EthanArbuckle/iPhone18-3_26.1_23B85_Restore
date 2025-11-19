@interface ICQDriveAppInfo
- (ICQDriveAppInfo)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)initFromDictionary:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ICQDriveAppInfo

- (id)initFromDictionary:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = ICQDriveAppInfo;
  v5 = [(ICQDriveAppInfo *)&v16 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"bundleIds"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v14[0] = MEMORY[0x277D85DD0];
      v14[1] = 3221225472;
      v14[2] = __38__ICQDriveAppInfo_initFromDictionary___block_invoke;
      v14[3] = &unk_27A6528C0;
      v15 = v7;
      v8 = v7;
      [v6 enumerateObjectsUsingBlock:v14];
      [(ICQDriveAppInfo *)v5 setBundleIds:v8];
    }

    v9 = [v4 objectForKeyedSubscript:@"label"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(ICQDriveAppInfo *)v5 setLabel:v9];
    }

    v10 = [v4 objectForKeyedSubscript:@"excludeOnClient"];
    v11 = [v10 BOOLValue];

    [(ICQDriveAppInfo *)v5 setExcludeOnClient:v11];
    v12 = [v4 objectForKeyedSubscript:@"containerId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(ICQDriveAppInfo *)v5 setContainerID:v12];
    }
  }

  return v5;
}

void __38__ICQDriveAppInfo_initFromDictionary___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [*(a1 + 32) addObject:v3];
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(ICQDriveAppInfo);
  [(ICQDriveAppInfo *)v4 setBundleIds:self->_bundleIds];
  [(ICQDriveAppInfo *)v4 setLabel:self->_label];
  [(ICQDriveAppInfo *)v4 setExcludeOnClient:self->_excludeOnClient];
  [(ICQDriveAppInfo *)v4 setContainerID:self->_containerID];
  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  bundleIds = self->_bundleIds;
  v5 = a3;
  [v5 encodeObject:bundleIds forKey:@"bundleIds"];
  [v5 encodeObject:self->_label forKey:@"label"];
  [v5 encodeBool:self->_excludeOnClient forKey:@"excludeOnClient"];
  [v5 encodeObject:self->_containerID forKey:@"containerId"];
}

- (ICQDriveAppInfo)initWithCoder:(id)a3
{
  v18[2] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v17.receiver = self;
  v17.super_class = ICQDriveAppInfo;
  v5 = [(ICQDriveAppInfo *)&v17 init];
  if (v5)
  {
    v6 = MEMORY[0x277CBEB98];
    v18[0] = objc_opt_class();
    v18[1] = objc_opt_class();
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:2];
    v8 = [v6 setWithArray:v7];

    v9 = [v4 decodeObjectOfClasses:v8 forKey:@"bundleIds"];
    bundleIds = v5->_bundleIds;
    v5->_bundleIds = v9;

    v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"label"];
    label = v5->_label;
    v5->_label = v11;

    v5->_excludeOnClient = [v4 decodeBoolForKey:@"excludeOnClient"];
    v13 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"containerId"];
    containerID = v5->_containerID;
    v5->_containerID = v13;
  }

  v15 = *MEMORY[0x277D85DE8];
  return v5;
}

@end