@interface ICQiCloudPlusSpecifierInfo
- (ICQiCloudPlusSpecifierInfo)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
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

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(ICQiCloudPlusSpecifierInfo);
  v5 = [(ICQSpecifierInfo *)self identifier];
  [(ICQSpecifierInfo *)v4 setIdentifier:v5];

  v6 = [(ICQSpecifierInfo *)self type];
  [(ICQSpecifierInfo *)v4 setType:v6];

  v7 = [(ICQSpecifierInfo *)self title];
  [(ICQSpecifierInfo *)v4 setTitle:v7];

  v8 = [(ICQSpecifierInfo *)self subTitle];
  [(ICQSpecifierInfo *)v4 setSubTitle:v8];

  v9 = [(ICQSpecifierInfo *)self iconURL];
  [(ICQSpecifierInfo *)v4 setIconURL:v9];

  v10 = [(ICQSpecifierInfo *)self actionURL];
  [(ICQSpecifierInfo *)v4 setActionURL:v10];

  v11 = [(ICQSpecifierInfo *)self icqLink];
  [(ICQSpecifierInfo *)v4 setIcqLink:v11];

  v12 = [(ICQSpecifierInfo *)self actions];
  [(ICQSpecifierInfo *)v4 setActions:v12];

  [(ICQiCloudPlusSpecifierInfo *)v4 setFeatureList:self->_featureList];
  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = ICQiCloudPlusSpecifierInfo;
  v4 = a3;
  [(ICQSpecifierInfo *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_featureList forKey:{@"featureList", v5.receiver, v5.super_class}];
}

- (ICQiCloudPlusSpecifierInfo)initWithCoder:(id)a3
{
  v14[2] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v13.receiver = self;
  v13.super_class = ICQiCloudPlusSpecifierInfo;
  v5 = [(ICQSpecifierInfo *)&v13 initWithCoder:v4];
  if (v5)
  {
    v6 = MEMORY[0x277CBEB98];
    v14[0] = objc_opt_class();
    v14[1] = objc_opt_class();
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:2];
    v8 = [v6 setWithArray:v7];

    v9 = [v4 decodeObjectOfClasses:v8 forKey:@"featureList"];
    featureList = v5->_featureList;
    v5->_featureList = v9;
  }

  v11 = *MEMORY[0x277D85DE8];
  return v5;
}

@end