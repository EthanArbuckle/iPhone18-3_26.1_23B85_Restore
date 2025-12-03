@interface SBAppSwitcherServiceSet
- (SBAppSwitcherServiceSet)initWithServices:(id)services zone:(_NSZone *)zone;
- (id)appLayouts;
- (id)copyWithZone:(_NSZone *)zone;
- (id)serviceAtIndex:(unint64_t)index;
- (id)serviceBundleIdentifiers;
- (id)serviceForBundleIdentifier:(id)identifier;
- (void)addService:(id)service;
@end

@implementation SBAppSwitcherServiceSet

- (SBAppSwitcherServiceSet)initWithServices:(id)services zone:(_NSZone *)zone
{
  servicesCopy = services;
  v12.receiver = self;
  v12.super_class = SBAppSwitcherServiceSet;
  v7 = [(SBAppSwitcherServiceSet *)&v12 init];
  if (v7)
  {
    services = [servicesCopy services];
    v9 = [services copyWithZone:zone];
    services = v7->_services;
    v7->_services = v9;
  }

  return v7;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [SBAppSwitcherServiceSet alloc];

  return [(SBAppSwitcherServiceSet *)v5 initWithServices:self zone:zone];
}

- (void)addService:(id)service
{
  serviceCopy = service;
  services = self->_services;
  v8 = serviceCopy;
  if (!services)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_services;
    self->_services = v6;

    serviceCopy = v8;
    services = self->_services;
  }

  [(NSMutableArray *)services addObject:serviceCopy];
}

- (id)serviceAtIndex:(unint64_t)index
{
  if ([(NSMutableArray *)self->_services count]<= index)
  {
    v5 = 0;
  }

  else
  {
    v5 = [(NSMutableArray *)self->_services objectAtIndex:index];
  }

  return v5;
}

- (id)serviceForBundleIdentifier:(id)identifier
{
  v17 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = self->_services;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = *v13;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        bundleIdentifier = [v9 bundleIdentifier];
        if ([bundleIdentifier isEqualToString:identifierCopy])
        {
          v6 = v9;

          goto LABEL_11;
        }
      }

      v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v6;
}

- (id)serviceBundleIdentifiers
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB18] arrayWithCapacity:{-[NSMutableArray count](self->_services, "count")}];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = self->_services;
  v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        bundleIdentifier = [*(*(&v11 + 1) + 8 * i) bundleIdentifier];
        [v3 addObject:bundleIdentifier];
      }

      v6 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  return v3;
}

- (id)appLayouts
{
  serviceBundleIdentifiers = [(SBAppSwitcherServiceSet *)self serviceBundleIdentifiers];
  v3 = [serviceBundleIdentifiers bs_mapNoNulls:&__block_literal_global_222];

  return v3;
}

SBAppLayout *__37__SBAppSwitcherServiceSet_appLayouts__block_invoke(uint64_t a1, uint64_t a2)
{
  v9[1] = *MEMORY[0x277D85DE8];
  v2 = [SBDisplayItem switcherServiceDisplayItemWithServiceIdentifier:a2];
  v3 = [SBAppLayout alloc];
  v4 = [MEMORY[0x277CCABB0] numberWithInteger:1];
  v8 = v4;
  v9[0] = v2;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:&v8 count:1];
  v6 = [(SBAppLayout *)v3 initWithItemsForLayoutRoles:v5 configuration:1 environment:1 preferredDisplayOrdinal:0];

  return v6;
}

@end