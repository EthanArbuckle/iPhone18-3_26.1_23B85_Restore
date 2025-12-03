@interface UIInterfaceActionSection
+ (id)actionsFromSections:(id)sections;
- (UIInterfaceActionSection)initWithActions:(id)actions;
- (id)copyOfActions;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation UIInterfaceActionSection

+ (id)actionsFromSections:(id)sections
{
  v17 = *MEMORY[0x1E69E9840];
  sectionsCopy = sections;
  array = [MEMORY[0x1E695DF70] array];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = sectionsCopy;
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        actions = [*(*(&v12 + 1) + 8 * i) actions];
        [array addObjectsFromArray:actions];
      }

      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  return array;
}

- (UIInterfaceActionSection)initWithActions:(id)actions
{
  actionsCopy = actions;
  v12.receiver = self;
  v12.super_class = UIInterfaceActionSection;
  v5 = [(UIInterfaceActionSection *)&v12 init];
  if (v5)
  {
    v6 = [actionsCopy copy];
    actions = v5->_actions;
    v5->_actions = v6;

    uUID = [MEMORY[0x1E696AFB0] UUID];
    uUIDString = [uUID UUIDString];
    sectionID = v5->_sectionID;
    v5->_sectionID = uUIDString;
  }

  return v5;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v7.receiver = self;
  v7.super_class = UIInterfaceActionSection;
  v4 = [(UIInterfaceActionSection *)&v7 description];
  v5 = [v3 stringWithFormat:@"%@: actions=%@", v4, self->_actions];

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [UIInterfaceActionSection alloc];
  copyOfActions = [(UIInterfaceActionSection *)self copyOfActions];
  v6 = [(UIInterfaceActionSection *)v4 initWithActions:copyOfActions];

  return v6;
}

- (id)copyOfActions
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E695DF70];
  actions = [(UIInterfaceActionSection *)self actions];
  v5 = [v3 arrayWithCapacity:{objc_msgSend(actions, "count")}];

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  actions2 = [(UIInterfaceActionSection *)self actions];
  v7 = [actions2 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      v10 = 0;
      do
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(actions2);
        }

        v11 = [*(*(&v13 + 1) + 8 * v10) copy];
        [v5 addObject:v11];

        ++v10;
      }

      while (v8 != v10);
      v8 = [actions2 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  return v5;
}

@end