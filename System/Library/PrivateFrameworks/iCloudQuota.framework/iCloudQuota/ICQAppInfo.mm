@interface ICQAppInfo
- (ICQAppInfo)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)initFromDictionary:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ICQAppInfo

- (id)initFromDictionary:(id)a3
{
  v4 = a3;
  v21.receiver = self;
  v21.super_class = ICQAppInfo;
  v5 = [(ICQAppInfo *)&v21 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"bundleIds"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v19[0] = MEMORY[0x277D85DD0];
      v19[1] = 3221225472;
      v19[2] = __33__ICQAppInfo_initFromDictionary___block_invoke;
      v19[3] = &unk_27A6528C0;
      v20 = v7;
      v8 = v7;
      [v6 enumerateObjectsUsingBlock:v19];
      [(ICQAppInfo *)v5 setBundleIds:v8];
    }

    v9 = [v4 objectForKeyedSubscript:@"label"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(ICQAppInfo *)v5 setLabel:v9];
    }

    v10 = [v4 objectForKeyedSubscript:@"fetchLocally"];
    v11 = [v10 BOOLValue];

    [(ICQAppInfo *)v5 setFetchLocally:v11];
    v12 = [v4 objectForKeyedSubscript:@"iconURLs"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [[ICQImageURL alloc] initFromDictionary:v12];
      [(ICQAppInfo *)v5 setIconURL:v13];
    }

    v14 = [v4 objectForKeyedSubscript:@"detailLabel"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(ICQAppInfo *)v5 setDetailLabel:v14];
    }

    v15 = [v4 objectForKeyedSubscript:@"detailLabelColor"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(ICQAppInfo *)v5 setDetailLabelColor:v15];
    }

    v16 = [v4 objectForKeyedSubscript:@"action"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v17 = [[ICQActionInfo alloc] initFromDictionary:v16];
      [(ICQAppInfo *)v5 setAction:v17];
    }
  }

  return v5;
}

void __33__ICQAppInfo_initFromDictionary___block_invoke(uint64_t a1, void *a2)
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
  v4 = objc_alloc_init(ICQAppInfo);
  [(ICQAppInfo *)v4 setBundleIds:self->_bundleIds];
  [(ICQAppInfo *)v4 setLabel:self->_label];
  [(ICQAppInfo *)v4 setFetchLocally:self->_fetchLocally];
  [(ICQAppInfo *)v4 setIconURL:self->_iconURL];
  [(ICQAppInfo *)v4 setDetailLabel:self->_detailLabel];
  [(ICQAppInfo *)v4 setDetailLabelColor:self->_detailLabelColor];
  [(ICQAppInfo *)v4 setAction:self->_action];
  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  bundleIds = self->_bundleIds;
  v5 = a3;
  [v5 encodeObject:bundleIds forKey:@"bundleIds"];
  [v5 encodeObject:self->_label forKey:@"label"];
  [v5 encodeBool:self->_fetchLocally forKey:@"fetchLocally"];
  [v5 encodeObject:self->_iconURL forKey:@"iconURL"];
  [v5 encodeObject:self->_detailLabel forKey:@"detailLabel"];
  [v5 encodeObject:self->_detailLabelColor forKey:@"detailLabelColor"];
  [v5 encodeObject:self->_action forKey:@"action"];
}

- (ICQAppInfo)initWithCoder:(id)a3
{
  v24[2] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v23.receiver = self;
  v23.super_class = ICQAppInfo;
  v5 = [(ICQAppInfo *)&v23 init];
  if (v5)
  {
    v6 = MEMORY[0x277CBEB98];
    v24[0] = objc_opt_class();
    v24[1] = objc_opt_class();
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:2];
    v8 = [v6 setWithArray:v7];

    v9 = [v4 decodeObjectOfClasses:v8 forKey:@"bundleIds"];
    bundleIds = v5->_bundleIds;
    v5->_bundleIds = v9;

    v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"label"];
    label = v5->_label;
    v5->_label = v11;

    v5->_fetchLocally = [v4 decodeBoolForKey:@"fetchLocally"];
    v13 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"iconURL"];
    iconURL = v5->_iconURL;
    v5->_iconURL = v13;

    v15 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"detailLabel"];
    detailLabel = v5->_detailLabel;
    v5->_detailLabel = v15;

    v17 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"detailLabelColor"];
    detailLabelColor = v5->_detailLabelColor;
    v5->_detailLabelColor = v17;

    v19 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"action"];
    action = v5->_action;
    v5->_action = v19;
  }

  v21 = *MEMORY[0x277D85DE8];
  return v5;
}

@end