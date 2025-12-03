@interface VSApps
- (VSApps)init;
- (id)description;
@end

@implementation VSApps

- (VSApps)init
{
  v10.receiver = self;
  v10.super_class = VSApps;
  v2 = [(VSApps *)&v10 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEA60]);
    nonChannelApps = v2->_nonChannelApps;
    v2->_nonChannelApps = v3;

    v5 = objc_alloc_init(MEMORY[0x277CBEA60]);
    availableApps = v2->_availableApps;
    v2->_availableApps = v5;

    v7 = objc_alloc_init(MEMORY[0x277CBEA60]);
    subscribedApps = v2->_subscribedApps;
    v2->_subscribedApps = v7;
  }

  return v2;
}

- (id)description
{
  v15 = MEMORY[0x277CCACA8];
  v3 = objc_opt_class();
  v18 = NSStringFromClass(v3);
  nonChannelApps = [(VSApps *)self nonChannelApps];
  v4 = [nonChannelApps description];
  null = v4;
  if (!v4)
  {
    null = [MEMORY[0x277CBEB68] null];
  }

  availableApps = [(VSApps *)self availableApps];
  v6 = [availableApps description];
  null2 = v6;
  if (!v6)
  {
    null2 = [MEMORY[0x277CBEB68] null];
  }

  subscribedApps = [(VSApps *)self subscribedApps];
  v9 = [subscribedApps description];
  null3 = v9;
  if (!v9)
  {
    null3 = [MEMORY[0x277CBEB68] null];
  }

  v11 = [MEMORY[0x277CCACA8] vs_yesNoStringValueFromBool:{-[VSApps hasUserChannelList](self, "hasUserChannelList")}];
  v12 = [MEMORY[0x277CCACA8] vs_yesNoStringValueFromBool:{-[VSApps hasChannelApps](self, "hasChannelApps")}];
  v13 = [v15 stringWithFormat:@"<%@ %p %@=%@, %@=%@, %@=%@, %@=%@, %@=%@>", v18, self, @"nonChannelApps", null, @"availableApps", null2, @"subscribedApps", null3, @"hasUserChannelList", v11, @"hasChannelApps", v12];

  if (!v9)
  {
  }

  if (!v6)
  {
  }

  if (!v4)
  {
  }

  return v13;
}

@end