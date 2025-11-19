@interface ICQSubscriptionInfo
- (ICQSubscriptionInfo)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ICQSubscriptionInfo

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(ICQSubscriptionInfo);
  [(ICQSubscriptionInfo *)v4 setICloudPlusSubscriber:self->_iCloudPlusSubscriber];
  [(ICQSubscriptionInfo *)v4 setSpecifiersInfo:self->_specifiersInfo];
  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  iCloudPlusSubscriber = self->_iCloudPlusSubscriber;
  v5 = a3;
  [v5 encodeBool:iCloudPlusSubscriber forKey:@"isICloudPlusSubscriber"];
  [v5 encodeObject:self->_specifiersInfo forKey:@"specifiersInfo"];
}

- (ICQSubscriptionInfo)initWithCoder:(id)a3
{
  v14[2] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v13.receiver = self;
  v13.super_class = ICQSubscriptionInfo;
  v5 = [(ICQSubscriptionInfo *)&v13 init];
  if (v5)
  {
    v5->_iCloudPlusSubscriber = [v4 decodeBoolForKey:@"isICloudPlusSubscriber"];
    v6 = MEMORY[0x277CBEB98];
    v14[0] = objc_opt_class();
    v14[1] = objc_opt_class();
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:2];
    v8 = [v6 setWithArray:v7];

    v9 = [v4 decodeObjectOfClasses:v8 forKey:@"specifiersInfo"];
    specifiersInfo = v5->_specifiersInfo;
    v5->_specifiersInfo = v9;
  }

  v11 = *MEMORY[0x277D85DE8];
  return v5;
}

@end