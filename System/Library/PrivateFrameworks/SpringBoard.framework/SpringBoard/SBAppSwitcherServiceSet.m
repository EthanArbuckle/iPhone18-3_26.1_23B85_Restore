@interface SBAppSwitcherServiceSet
- (SBAppSwitcherServiceSet)initWithServices:(id)a3 zone:(_NSZone *)a4;
- (id)appLayouts;
- (id)copyWithZone:(_NSZone *)a3;
- (id)serviceAtIndex:(unint64_t)a3;
- (id)serviceBundleIdentifiers;
- (id)serviceForBundleIdentifier:(id)a3;
- (void)addService:(id)a3;
@end

@implementation SBAppSwitcherServiceSet

- (SBAppSwitcherServiceSet)initWithServices:(id)a3 zone:(_NSZone *)a4
{
  v6 = a3;
  v12.receiver = self;
  v12.super_class = SBAppSwitcherServiceSet;
  v7 = [(SBAppSwitcherServiceSet *)&v12 init];
  if (v7)
  {
    v8 = [v6 services];
    v9 = [v8 copyWithZone:a4];
    services = v7->_services;
    v7->_services = v9;
  }

  return v7;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [SBAppSwitcherServiceSet alloc];

  return [(SBAppSwitcherServiceSet *)v5 initWithServices:self zone:a3];
}

- (void)addService:(id)a3
{
  v4 = a3;
  services = self->_services;
  v8 = v4;
  if (!services)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_services;
    self->_services = v6;

    v4 = v8;
    services = self->_services;
  }

  [(NSMutableArray *)services addObject:v4];
}

- (id)serviceAtIndex:(unint64_t)a3
{
  if ([(NSMutableArray *)self->_services count]<= a3)
  {
    v5 = 0;
  }

  else
  {
    v5 = [(NSMutableArray *)self->_services objectAtIndex:a3];
  }

  return v5;
}

- (id)serviceForBundleIdentifier:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
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
        v10 = [v9 bundleIdentifier];
        if ([v10 isEqualToString:v4])
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

        v9 = [*(*(&v11 + 1) + 8 * i) bundleIdentifier];
        [v3 addObject:v9];
      }

      v6 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  return v3;
}

- (id)appLayouts
{
  v2 = [(SBAppSwitcherServiceSet *)self serviceBundleIdentifiers];
  v3 = [v2 bs_mapNoNulls:&__block_literal_global_222];

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