@interface TPSCellularNetworkController
- (BOOL)isNetworkSelectionEnabled;
- (TPSCellularNetworkController)init;
- (TPSCellularNetworkController)initWithSubscriptionContext:(id)context;
- (id)networkItemAtIndex:(int64_t)index;
- (id)networkItemForNetwork:(id)network;
- (void)networkSelectionInfoChangedForRegistrationController:(id)controller;
- (void)networksChangedForRegistrationController:(id)controller;
- (void)selectNetworkItemAtIndex:(unint64_t)index;
- (void)setNetworkItems:(id)items;
- (void)setNetworkSelectionMode:(int64_t)mode;
- (void)setNetworks:(id)networks;
- (void)setSelectedNetworkItem:(id)item;
- (void)updateNetworkSelectionModeForNetworkSelectionInfo:(id)info;
- (void)updateSelectedNetworkForNetworkSelectionInfo:(id)info;
@end

@implementation TPSCellularNetworkController

- (TPSCellularNetworkController)init
{
  [(TPSCellularNetworkController *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (TPSCellularNetworkController)initWithSubscriptionContext:(id)context
{
  contextCopy = context;
  v13.receiver = self;
  v13.super_class = TPSCellularNetworkController;
  v6 = [(TPSCellularNetworkController *)&v13 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_subscriptionContext, context);
    v8 = [[TPSRegistrationTelephonyController alloc] initWithSubscriptionContext:contextCopy];
    registrationController = v7->_registrationController;
    v7->_registrationController = v8;

    [(TPSController *)v7->_registrationController addDelegate:v7 queue:MEMORY[0x277D85CD0]];
    networkSelectionInfo = [(TPSRegistrationTelephonyController *)v7->_registrationController networkSelectionInfo];
    networkSelectionInfo = v7->_networkSelectionInfo;
    v7->_networkSelectionInfo = networkSelectionInfo;

    [(TPSCellularNetworkController *)v7 updateSelectedNetworkForNetworkSelectionInfo:v7->_networkSelectionInfo];
    [(TPSCellularNetworkController *)v7 updateNetworkSelectionModeForNetworkSelectionInfo:v7->_networkSelectionInfo];
  }

  return v7;
}

- (void)setNetworkItems:(id)items
{
  itemsCopy = items;
  p_networkItems = &self->_networkItems;
  if (self->_networkItems != itemsCopy)
  {
    v8 = itemsCopy;
    objc_storeStrong(p_networkItems, items);
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter postNotificationName:@"TPSCellularNetworkControllerNetworkItemsDidChangeNotification" object:self];

    itemsCopy = v8;
  }

  MEMORY[0x2821F96F8](p_networkItems, itemsCopy);
}

- (BOOL)isNetworkSelectionEnabled
{
  networkSelectionInfo = [(TPSCellularNetworkController *)self networkSelectionInfo];
  v3 = [networkSelectionInfo selectionMode] != 0;

  return v3;
}

- (void)setNetworkSelectionMode:(int64_t)mode
{
  if (self->_networkSelectionMode == mode)
  {
    return;
  }

  self->_networkSelectionMode = mode;
  if (mode == 2)
  {
    registrationController = [(TPSCellularNetworkController *)self registrationController];
    [registrationController fetchNetworkList];
    goto LABEL_9;
  }

  if (mode != 1)
  {
    if (!mode)
    {
      [(TPSCellularNetworkController *)self setNetworks:?];
    }

    goto LABEL_10;
  }

  [(TPSCellularNetworkController *)self setNetworks:0];
  selectedNetworkItem = [(TPSCellularNetworkController *)self selectedNetworkItem];

  if (selectedNetworkItem)
  {
    registrationController = [(TPSCellularNetworkController *)self registrationController];
    [registrationController automaticallySelectNetwork];
LABEL_9:
  }

LABEL_10:
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter postNotificationName:@"TPSCellularNetworkControllerNetworkSelectionModeDidChangeNotification" object:self];
}

- (void)setSelectedNetworkItem:(id)item
{
  itemCopy = item;
  p_selectedNetworkItem = &self->_selectedNetworkItem;
  if (self->_selectedNetworkItem != itemCopy)
  {
    v8 = itemCopy;
    objc_storeStrong(p_selectedNetworkItem, item);
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter postNotificationName:@"TPSCellularNetworkControllerSelectedNetworkItemDidChangeNotification" object:self];

    itemCopy = v8;
  }

  MEMORY[0x2821F96F8](p_selectedNetworkItem, itemCopy);
}

- (void)setNetworks:(id)networks
{
  v19 = *MEMORY[0x277D85DE8];
  networksCopy = networks;
  if (self->_networks != networksCopy)
  {
    objc_storeStrong(&self->_networks, networks);
    if (networksCopy)
    {
      v6 = [MEMORY[0x277CBEB18] arrayWithCapacity:{-[NSArray count](networksCopy, "count")}];
      v14 = 0u;
      v15 = 0u;
      v16 = 0u;
      v17 = 0u;
      v7 = networksCopy;
      v8 = [(NSArray *)v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v15;
        do
        {
          for (i = 0; i != v9; ++i)
          {
            if (*v15 != v10)
            {
              objc_enumerationMutation(v7);
            }

            v12 = [(TPSCellularNetworkController *)self networkItemForNetwork:*(*(&v14 + 1) + 8 * i), v14];
            [v6 addObject:v12];
          }

          v9 = [(NSArray *)v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
        }

        while (v9);
      }
    }

    else
    {
      v6 = 0;
    }

    [(TPSCellularNetworkController *)self setNetworkItems:v6, v14];
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)updateNetworkSelectionModeForNetworkSelectionInfo:(id)info
{
  if ([info selectionMode] == 2)
  {
    v4 = 2;
  }

  else
  {
    v4 = 1;
  }

  [(TPSCellularNetworkController *)self setNetworkSelectionMode:v4];
}

- (void)updateSelectedNetworkForNetworkSelectionInfo:(id)info
{
  selection = [info selection];
  if (selection)
  {
    v5 = [(TPSCellularNetworkController *)self networkItemForNetwork:selection];
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  [(TPSCellularNetworkController *)self setSelectedNetworkItem:v5];
}

- (id)networkItemAtIndex:(int64_t)index
{
  networkItems = [(TPSCellularNetworkController *)self networkItems];
  v5 = networkItems;
  if (index < 0 || [networkItems count] <= index)
  {
    v7 = TPSLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [(TPSCellularNetworkController *)index networkItemAtIndex:v7];
    }

    v6 = 0;
  }

  else
  {
    v6 = [v5 objectAtIndexedSubscript:index];
  }

  return v6;
}

- (void)selectNetworkItemAtIndex:(unint64_t)index
{
  v12 = *MEMORY[0x277D85DE8];
  networks = [(TPSCellularNetworkController *)self networks];
  v6 = [networks objectAtIndexedSubscript:index];

  if (v6)
  {
    v7 = TPSLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 138412290;
      v11 = v6;
      _os_log_impl(&dword_21B8E9000, v7, OS_LOG_TYPE_DEFAULT, "Requesting manual selection of network %@.", &v10, 0xCu);
    }

    registrationController = [(TPSCellularNetworkController *)self registrationController];
    [registrationController selectNetwork:v6];
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (id)networkItemForNetwork:(id)network
{
  networkCopy = network;
  v4 = [TPSCellularNetworkItem alloc];
  plmn = [networkCopy plmn];
  name = [networkCopy name];
  tps_localizedName = [networkCopy tps_localizedName];

  v8 = [(TPSCellularNetworkItem *)v4 initWithIdentifier:plmn name:name localizedName:tps_localizedName];

  return v8;
}

- (void)networksChangedForRegistrationController:(id)controller
{
  v12 = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
  registrationController = [(TPSCellularNetworkController *)self registrationController];

  if (registrationController == controllerCopy)
  {
    v6 = TPSLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 138412290;
      v11 = objc_opt_class();
      v7 = v11;
      _os_log_impl(&dword_21B8E9000, v6, OS_LOG_TYPE_DEFAULT, "%@ is handling networks changed delegate callback.", &v10, 0xCu);
    }

    networks = [controllerCopy networks];
    [(TPSCellularNetworkController *)self setNetworks:networks];
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)networkSelectionInfoChangedForRegistrationController:(id)controller
{
  v12 = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
  registrationController = [(TPSCellularNetworkController *)self registrationController];

  if (registrationController == controllerCopy)
  {
    v6 = TPSLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 138412290;
      v11 = objc_opt_class();
      v7 = v11;
      _os_log_impl(&dword_21B8E9000, v6, OS_LOG_TYPE_DEFAULT, "%@ is handling networks selection information changed delegate callback.", &v10, 0xCu);
    }

    networkSelectionInfo = [controllerCopy networkSelectionInfo];
    [(TPSCellularNetworkController *)self setNetworkSelectionInfo:networkSelectionInfo];
    [(TPSCellularNetworkController *)self updateSelectedNetworkForNetworkSelectionInfo:networkSelectionInfo];
    [(TPSCellularNetworkController *)self updateNetworkSelectionModeForNetworkSelectionInfo:networkSelectionInfo];
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)networkItemAtIndex:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 134217984;
  v4 = a1;
  _os_log_error_impl(&dword_21B8E9000, a2, OS_LOG_TYPE_ERROR, "Could not find network item at index %ld", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end