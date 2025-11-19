@interface WBBrowserState
- (WBBrowserState)initWithCoder:(id)a3;
- (WBBrowserState)initWithPinnedTabs:(id)a3 privatePinnedTabs:(id)a4 windowStates:(id)a5;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation WBBrowserState

- (WBBrowserState)initWithPinnedTabs:(id)a3 privatePinnedTabs:(id)a4 windowStates:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v21.receiver = self;
  v21.super_class = WBBrowserState;
  v11 = [(WBBrowserState *)&v21 init];
  if (v11)
  {
    v12 = [v8 copy];
    pinnedTabs = v11->_pinnedTabs;
    v11->_pinnedTabs = v12;

    v14 = [v9 copy];
    privatePinnedTabs = v11->_privatePinnedTabs;
    v11->_privatePinnedTabs = v14;

    pinnedTabsByProfileIdentifier = v11->_pinnedTabsByProfileIdentifier;
    v11->_pinnedTabsByProfileIdentifier = MEMORY[0x277CBEC10];

    v17 = [v10 copy];
    windowStates = v11->_windowStates;
    v11->_windowStates = v17;

    v19 = v11;
  }

  return v11;
}

- (WBBrowserState)initWithCoder:(id)a3
{
  v28[2] = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277CBEB98];
  v5 = a3;
  v28[0] = objc_opt_class();
  v28[1] = objc_opt_class();
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v28 count:2];
  v7 = [v4 setWithArray:v6];
  v8 = [v5 decodeObjectOfClasses:v7 forKey:@"PinnedTabs"];

  v9 = MEMORY[0x277CBEB98];
  v27[0] = objc_opt_class();
  v27[1] = objc_opt_class();
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v27 count:2];
  v11 = [v9 setWithArray:v10];
  v12 = [v5 decodeObjectOfClasses:v11 forKey:@"PrivatePinnedTabs"];

  v13 = MEMORY[0x277CBEB98];
  v26[0] = objc_opt_class();
  v26[1] = objc_opt_class();
  v26[2] = objc_opt_class();
  v26[3] = objc_opt_class();
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v26 count:4];
  v15 = [v13 setWithArray:v14];
  v16 = [v5 decodeObjectOfClasses:v15 forKey:@"PinnedTabsByProfileUUID"];

  v17 = MEMORY[0x277CBEB98];
  v25[0] = objc_opt_class();
  v25[1] = objc_opt_class();
  v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v25 count:2];
  v19 = [v17 setWithArray:v18];
  v20 = [v5 decodeObjectOfClasses:v19 forKey:@"WindowStatesKey"];

  v21 = [(WBBrowserState *)self initWithPinnedTabs:v8 privatePinnedTabs:v12 windowStates:v20];
  pinnedTabsByProfileIdentifier = v21->_pinnedTabsByProfileIdentifier;
  v21->_pinnedTabsByProfileIdentifier = v16;

  v23 = *MEMORY[0x277D85DE8];
  return v21;
}

- (void)encodeWithCoder:(id)a3
{
  pinnedTabs = self->_pinnedTabs;
  v5 = a3;
  [v5 encodeObject:pinnedTabs forKey:@"PinnedTabs"];
  [v5 encodeObject:self->_privatePinnedTabs forKey:@"PrivatePinnedTabs"];
  [v5 encodeObject:self->_pinnedTabsByProfileIdentifier forKey:@"PinnedTabsByProfileUUID"];
  [v5 encodeObject:self->_windowStates forKey:@"WindowStatesKey"];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(WBBrowserState *)self pinnedTabs];
  v7 = [v6 count];
  v8 = [(WBBrowserState *)self privatePinnedTabs];
  v9 = [v8 count];
  v10 = [(WBBrowserState *)self windowStates];
  v11 = [v3 stringWithFormat:@"<%@: %p pinnedTabs = %zu; privatePinnedTabs = %zu; windows = %zu>", v5, self, v7, v9, objc_msgSend(v10, "count")];;

  return v11;
}

@end