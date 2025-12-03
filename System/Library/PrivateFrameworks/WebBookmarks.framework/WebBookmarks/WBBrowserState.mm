@interface WBBrowserState
- (WBBrowserState)initWithCoder:(id)coder;
- (WBBrowserState)initWithPinnedTabs:(id)tabs privatePinnedTabs:(id)pinnedTabs windowStates:(id)states;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation WBBrowserState

- (WBBrowserState)initWithPinnedTabs:(id)tabs privatePinnedTabs:(id)pinnedTabs windowStates:(id)states
{
  tabsCopy = tabs;
  pinnedTabsCopy = pinnedTabs;
  statesCopy = states;
  v21.receiver = self;
  v21.super_class = WBBrowserState;
  v11 = [(WBBrowserState *)&v21 init];
  if (v11)
  {
    v12 = [tabsCopy copy];
    pinnedTabs = v11->_pinnedTabs;
    v11->_pinnedTabs = v12;

    v14 = [pinnedTabsCopy copy];
    privatePinnedTabs = v11->_privatePinnedTabs;
    v11->_privatePinnedTabs = v14;

    pinnedTabsByProfileIdentifier = v11->_pinnedTabsByProfileIdentifier;
    v11->_pinnedTabsByProfileIdentifier = MEMORY[0x277CBEC10];

    v17 = [statesCopy copy];
    windowStates = v11->_windowStates;
    v11->_windowStates = v17;

    v19 = v11;
  }

  return v11;
}

- (WBBrowserState)initWithCoder:(id)coder
{
  v28[2] = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277CBEB98];
  coderCopy = coder;
  v28[0] = objc_opt_class();
  v28[1] = objc_opt_class();
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v28 count:2];
  v7 = [v4 setWithArray:v6];
  v8 = [coderCopy decodeObjectOfClasses:v7 forKey:@"PinnedTabs"];

  v9 = MEMORY[0x277CBEB98];
  v27[0] = objc_opt_class();
  v27[1] = objc_opt_class();
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v27 count:2];
  v11 = [v9 setWithArray:v10];
  v12 = [coderCopy decodeObjectOfClasses:v11 forKey:@"PrivatePinnedTabs"];

  v13 = MEMORY[0x277CBEB98];
  v26[0] = objc_opt_class();
  v26[1] = objc_opt_class();
  v26[2] = objc_opt_class();
  v26[3] = objc_opt_class();
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v26 count:4];
  v15 = [v13 setWithArray:v14];
  v16 = [coderCopy decodeObjectOfClasses:v15 forKey:@"PinnedTabsByProfileUUID"];

  v17 = MEMORY[0x277CBEB98];
  v25[0] = objc_opt_class();
  v25[1] = objc_opt_class();
  v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v25 count:2];
  v19 = [v17 setWithArray:v18];
  v20 = [coderCopy decodeObjectOfClasses:v19 forKey:@"WindowStatesKey"];

  v21 = [(WBBrowserState *)self initWithPinnedTabs:v8 privatePinnedTabs:v12 windowStates:v20];
  pinnedTabsByProfileIdentifier = v21->_pinnedTabsByProfileIdentifier;
  v21->_pinnedTabsByProfileIdentifier = v16;

  v23 = *MEMORY[0x277D85DE8];
  return v21;
}

- (void)encodeWithCoder:(id)coder
{
  pinnedTabs = self->_pinnedTabs;
  coderCopy = coder;
  [coderCopy encodeObject:pinnedTabs forKey:@"PinnedTabs"];
  [coderCopy encodeObject:self->_privatePinnedTabs forKey:@"PrivatePinnedTabs"];
  [coderCopy encodeObject:self->_pinnedTabsByProfileIdentifier forKey:@"PinnedTabsByProfileUUID"];
  [coderCopy encodeObject:self->_windowStates forKey:@"WindowStatesKey"];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  pinnedTabs = [(WBBrowserState *)self pinnedTabs];
  v7 = [pinnedTabs count];
  privatePinnedTabs = [(WBBrowserState *)self privatePinnedTabs];
  v9 = [privatePinnedTabs count];
  windowStates = [(WBBrowserState *)self windowStates];
  v11 = [v3 stringWithFormat:@"<%@: %p pinnedTabs = %zu; privatePinnedTabs = %zu; windows = %zu>", v5, self, v7, v9, objc_msgSend(windowStates, "count")];;

  return v11;
}

@end