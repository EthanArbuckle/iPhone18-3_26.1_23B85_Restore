@interface ICQAppInfo
- (ICQAppInfo)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)initFromDictionary:(id)dictionary;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ICQAppInfo

- (id)initFromDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v21.receiver = self;
  v21.super_class = ICQAppInfo;
  v5 = [(ICQAppInfo *)&v21 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"bundleIds"];
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

    v9 = [dictionaryCopy objectForKeyedSubscript:@"label"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(ICQAppInfo *)v5 setLabel:v9];
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"fetchLocally"];
    bOOLValue = [v10 BOOLValue];

    [(ICQAppInfo *)v5 setFetchLocally:bOOLValue];
    v12 = [dictionaryCopy objectForKeyedSubscript:@"iconURLs"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [[ICQImageURL alloc] initFromDictionary:v12];
      [(ICQAppInfo *)v5 setIconURL:v13];
    }

    v14 = [dictionaryCopy objectForKeyedSubscript:@"detailLabel"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(ICQAppInfo *)v5 setDetailLabel:v14];
    }

    v15 = [dictionaryCopy objectForKeyedSubscript:@"detailLabelColor"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(ICQAppInfo *)v5 setDetailLabelColor:v15];
    }

    v16 = [dictionaryCopy objectForKeyedSubscript:@"action"];
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

- (id)copyWithZone:(_NSZone *)zone
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

- (void)encodeWithCoder:(id)coder
{
  bundleIds = self->_bundleIds;
  coderCopy = coder;
  [coderCopy encodeObject:bundleIds forKey:@"bundleIds"];
  [coderCopy encodeObject:self->_label forKey:@"label"];
  [coderCopy encodeBool:self->_fetchLocally forKey:@"fetchLocally"];
  [coderCopy encodeObject:self->_iconURL forKey:@"iconURL"];
  [coderCopy encodeObject:self->_detailLabel forKey:@"detailLabel"];
  [coderCopy encodeObject:self->_detailLabelColor forKey:@"detailLabelColor"];
  [coderCopy encodeObject:self->_action forKey:@"action"];
}

- (ICQAppInfo)initWithCoder:(id)coder
{
  v24[2] = *MEMORY[0x277D85DE8];
  coderCopy = coder;
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

    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"bundleIds"];
    bundleIds = v5->_bundleIds;
    v5->_bundleIds = v9;

    v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"label"];
    label = v5->_label;
    v5->_label = v11;

    v5->_fetchLocally = [coderCopy decodeBoolForKey:@"fetchLocally"];
    v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"iconURL"];
    iconURL = v5->_iconURL;
    v5->_iconURL = v13;

    v15 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"detailLabel"];
    detailLabel = v5->_detailLabel;
    v5->_detailLabel = v15;

    v17 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"detailLabelColor"];
    detailLabelColor = v5->_detailLabelColor;
    v5->_detailLabelColor = v17;

    v19 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"action"];
    action = v5->_action;
    v5->_action = v19;
  }

  v21 = *MEMORY[0x277D85DE8];
  return v5;
}

@end