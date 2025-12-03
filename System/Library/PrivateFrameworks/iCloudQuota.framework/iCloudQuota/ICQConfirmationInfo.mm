@interface ICQConfirmationInfo
- (ICQConfirmationInfo)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)initFromDictionary:(id)dictionary;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ICQConfirmationInfo

- (id)initFromDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v19.receiver = self;
  v19.super_class = ICQConfirmationInfo;
  v5 = [(ICQConfirmationInfo *)&v19 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"title"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(ICQConfirmationInfo *)v5 setTitle:v6];
    }

    v7 = [dictionaryCopy objectForKeyedSubscript:@"subTitle"];
    v8 = v7;
    if (v7)
    {
      v9 = v7;
    }

    else
    {
      v9 = [dictionaryCopy objectForKeyedSubscript:@"subtitle"];
    }

    v10 = v9;

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(ICQConfirmationInfo *)v5 setSubtitle:v10];
    }

    v11 = [dictionaryCopy objectForKeyedSubscript:@"iconURLs"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = [[ICQImageURL alloc] initFromDictionary:v11];
      [(ICQConfirmationInfo *)v5 setIconURL:v12];
    }

    v13 = [dictionaryCopy objectForKeyedSubscript:@"actions"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v14 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v17[0] = MEMORY[0x277D85DD0];
      v17[1] = 3221225472;
      v17[2] = __42__ICQConfirmationInfo_initFromDictionary___block_invoke;
      v17[3] = &unk_27A6528C0;
      v18 = v14;
      v15 = v14;
      [v13 enumerateObjectsUsingBlock:v17];
      [(ICQConfirmationInfo *)v5 setActions:v15];
    }
  }

  return v5;
}

void __42__ICQConfirmationInfo_initFromDictionary___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = *(a1 + 32);
    v4 = [[ICQConfirmationActionInfo alloc] initFromDictionary:v5];
    [v3 addObject:v4];
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(ICQConfirmationInfo);
  [(ICQConfirmationInfo *)v4 setTitle:self->_title];
  [(ICQConfirmationInfo *)v4 setSubtitle:self->_subtitle];
  [(ICQConfirmationInfo *)v4 setIconURL:self->_iconURL];
  [(ICQConfirmationInfo *)v4 setActions:self->_actions];
  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  title = self->_title;
  coderCopy = coder;
  [coderCopy encodeObject:title forKey:@"title"];
  [coderCopy encodeObject:self->_subtitle forKey:@"subTitle"];
  [coderCopy encodeObject:self->_iconURL forKey:@"iconURL"];
  [coderCopy encodeObject:self->_actions forKey:@"actions"];
}

- (ICQConfirmationInfo)initWithCoder:(id)coder
{
  v20[2] = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v19.receiver = self;
  v19.super_class = ICQConfirmationInfo;
  v5 = [(ICQConfirmationInfo *)&v19 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"title"];
    title = v5->_title;
    v5->_title = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"subTitle"];
    subtitle = v5->_subtitle;
    v5->_subtitle = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"iconURL"];
    iconURL = v5->_iconURL;
    v5->_iconURL = v10;

    v12 = MEMORY[0x277CBEB98];
    v20[0] = objc_opt_class();
    v20[1] = objc_opt_class();
    v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:2];
    v14 = [v12 setWithArray:v13];

    v15 = [coderCopy decodeObjectOfClasses:v14 forKey:@"actions"];
    actions = v5->_actions;
    v5->_actions = v15;
  }

  v17 = *MEMORY[0x277D85DE8];
  return v5;
}

@end