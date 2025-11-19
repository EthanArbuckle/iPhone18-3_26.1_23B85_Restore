@interface SearchUIContactButtonItem
- (BOOL)isEqual:(id)a3;
- (id)command;
- (id)previewMenu;
- (unint64_t)hash;
- (void)buttonPressed;
- (void)quickActionsControllerDidUpdateActionModels;
@end

@implementation SearchUIContactButtonItem

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && (v18.receiver = self, v18.super_class = SearchUIContactButtonItem, [(SearchUIButtonItem *)&v18 isEqual:v4]))
  {
    v5 = v4;
    v6 = [(SearchUIContactButtonItem *)self quickActionsController];
    v7 = [v6 contact];
    v8 = [v5 quickActionsController];
    v9 = [v8 contact];
    if (v7 == v9)
    {
      v15 = 1;
    }

    else
    {
      v17 = [(SearchUIContactButtonItem *)self quickActionsController];
      v10 = [v17 contact];
      v11 = [v5 quickActionsController];
      [v11 contact];
      v12 = v7;
      v14 = v13 = v6;
      v15 = [v10 isEqual:v14];

      v6 = v13;
      v7 = v12;
    }
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (unint64_t)hash
{
  v3 = [(SearchUIContactButtonItem *)self quickActionsController];
  v4 = [v3 contact];

  if (v4)
  {
    v9.receiver = self;
    v9.super_class = SearchUIContactButtonItem;
    v5 = [(SearchUIButtonItem *)&v9 hash];
    v6 = [v4 hash] ^ v5;
  }

  else
  {
    v8.receiver = self;
    v8.super_class = SearchUIContactButtonItem;
    v6 = [(SearchUIButtonItem *)&v8 hash];
  }

  return v6;
}

- (void)buttonPressed
{
  v3 = [(SearchUIContactButtonItem *)self quickActionsController];
  v4 = [(SearchUIContactButtonItem *)self actionType];
  [v3 executeTapBehaviorWithoutDisambiguationForActionType:v4];

  v5 = [(SearchUIContactButtonItem *)self quickActionsController];
  v6 = [(SearchUIContactButtonItem *)self actionType];
  -[SearchUIButtonItem setShowsMenuAsPrimaryAction:](self, "setShowsMenuAsPrimaryAction:", [v5 hasDefaultActionForActionType:v6] ^ 1);

  v7 = [(SearchUIButtonItem *)self delegate];
  [v7 stateDidChangeForButtonItem:self];
}

- (void)quickActionsControllerDidUpdateActionModels
{
  v3 = [(SearchUIContactButtonItem *)self quickActionsController];
  v4 = [(SearchUIContactButtonItem *)self actionType];
  -[SearchUIButtonItem setShowsMenuAsPrimaryAction:](self, "setShowsMenuAsPrimaryAction:", [v3 hasDefaultActionForActionType:v4] ^ 1);

  v5 = [(SearchUIButtonItem *)self delegate];
  [v5 stateDidChangeForButtonItem:self];
}

- (id)previewMenu
{
  v3 = [(SearchUIContactButtonItem *)self quickActionsController];
  v4 = [(SearchUIContactButtonItem *)self actionType];
  v5 = [v3 disambiguationMenuForActionType:v4];

  v6 = [MEMORY[0x1E69DCC60] menuWithTitle:&stru_1F55BC4E8 image:0 identifier:0 options:1 children:v5];

  return v6;
}

- (id)command
{
  v3 = [(SearchUIContactButtonItem *)self actionType];
  if ([v3 isEqualToString:*MEMORY[0x1E695C1B8]])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:*MEMORY[0x1E695C178]])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:*MEMORY[0x1E695C150]])
  {
    v4 = 4;
  }

  else
  {
    v4 = [v3 isEqualToString:*MEMORY[0x1E695C170]];
  }

  v5 = objc_opt_new();
  [v5 setContactActionType:v4];
  v6 = [(SearchUIContactButtonItem *)self quickActionsController];
  [v5 setDidDisplayHandleOptions:{objc_msgSend(v6, "hasDefaultActionForActionType:", v3) ^ 1}];

  return v5;
}

@end