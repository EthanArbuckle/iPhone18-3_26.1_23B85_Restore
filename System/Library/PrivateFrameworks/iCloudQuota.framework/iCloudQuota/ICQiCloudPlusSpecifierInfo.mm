@interface ICQiCloudPlusSpecifierInfo
- (ICQiCloudPlusSpecifierInfo)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ICQiCloudPlusSpecifierInfo

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v7.receiver = self;
  v7.super_class = ICQiCloudPlusSpecifierInfo;
  v4 = [(ICQSpecifierInfo *)&v7 description];
  v5 = [v3 stringWithFormat:@"%@, featureList: %@", v4, self->_featureList];

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(ICQiCloudPlusSpecifierInfo);
  identifier = [(ICQSpecifierInfo *)self identifier];
  [(ICQSpecifierInfo *)v4 setIdentifier:identifier];

  type = [(ICQSpecifierInfo *)self type];
  [(ICQSpecifierInfo *)v4 setType:type];

  title = [(ICQSpecifierInfo *)self title];
  [(ICQSpecifierInfo *)v4 setTitle:title];

  subTitle = [(ICQSpecifierInfo *)self subTitle];
  [(ICQSpecifierInfo *)v4 setSubTitle:subTitle];

  iconURL = [(ICQSpecifierInfo *)self iconURL];
  [(ICQSpecifierInfo *)v4 setIconURL:iconURL];

  actionURL = [(ICQSpecifierInfo *)self actionURL];
  [(ICQSpecifierInfo *)v4 setActionURL:actionURL];

  icqLink = [(ICQSpecifierInfo *)self icqLink];
  [(ICQSpecifierInfo *)v4 setIcqLink:icqLink];

  actions = [(ICQSpecifierInfo *)self actions];
  [(ICQSpecifierInfo *)v4 setActions:actions];

  [(ICQiCloudPlusSpecifierInfo *)v4 setFeatureList:self->_featureList];
  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = ICQiCloudPlusSpecifierInfo;
  coderCopy = coder;
  [(ICQSpecifierInfo *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_featureList forKey:{@"featureList", v5.receiver, v5.super_class}];
}

- (ICQiCloudPlusSpecifierInfo)initWithCoder:(id)coder
{
  v14[2] = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = ICQiCloudPlusSpecifierInfo;
  v5 = [(ICQSpecifierInfo *)&v13 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = MEMORY[0x277CBEB98];
    v14[0] = objc_opt_class();
    v14[1] = objc_opt_class();
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:2];
    v8 = [v6 setWithArray:v7];

    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"featureList"];
    featureList = v5->_featureList;
    v5->_featureList = v9;
  }

  v11 = *MEMORY[0x277D85DE8];
  return v5;
}

@end