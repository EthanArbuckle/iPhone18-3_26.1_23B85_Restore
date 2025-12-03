@interface SearchUIContactButtonItem
- (BOOL)isEqual:(id)equal;
- (id)command;
- (id)previewMenu;
- (unint64_t)hash;
- (void)buttonPressed;
- (void)quickActionsControllerDidUpdateActionModels;
@end

@implementation SearchUIContactButtonItem

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && (v18.receiver = self, v18.super_class = SearchUIContactButtonItem, [(SearchUIButtonItem *)&v18 isEqual:equalCopy]))
  {
    v5 = equalCopy;
    quickActionsController = [(SearchUIContactButtonItem *)self quickActionsController];
    contact = [quickActionsController contact];
    quickActionsController2 = [v5 quickActionsController];
    contact2 = [quickActionsController2 contact];
    if (contact == contact2)
    {
      v15 = 1;
    }

    else
    {
      quickActionsController3 = [(SearchUIContactButtonItem *)self quickActionsController];
      contact3 = [quickActionsController3 contact];
      quickActionsController4 = [v5 quickActionsController];
      [quickActionsController4 contact];
      v12 = contact;
      v14 = v13 = quickActionsController;
      v15 = [contact3 isEqual:v14];

      quickActionsController = v13;
      contact = v12;
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
  quickActionsController = [(SearchUIContactButtonItem *)self quickActionsController];
  contact = [quickActionsController contact];

  if (contact)
  {
    v9.receiver = self;
    v9.super_class = SearchUIContactButtonItem;
    v5 = [(SearchUIButtonItem *)&v9 hash];
    v6 = [contact hash] ^ v5;
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
  quickActionsController = [(SearchUIContactButtonItem *)self quickActionsController];
  actionType = [(SearchUIContactButtonItem *)self actionType];
  [quickActionsController executeTapBehaviorWithoutDisambiguationForActionType:actionType];

  quickActionsController2 = [(SearchUIContactButtonItem *)self quickActionsController];
  actionType2 = [(SearchUIContactButtonItem *)self actionType];
  -[SearchUIButtonItem setShowsMenuAsPrimaryAction:](self, "setShowsMenuAsPrimaryAction:", [quickActionsController2 hasDefaultActionForActionType:actionType2] ^ 1);

  delegate = [(SearchUIButtonItem *)self delegate];
  [delegate stateDidChangeForButtonItem:self];
}

- (void)quickActionsControllerDidUpdateActionModels
{
  quickActionsController = [(SearchUIContactButtonItem *)self quickActionsController];
  actionType = [(SearchUIContactButtonItem *)self actionType];
  -[SearchUIButtonItem setShowsMenuAsPrimaryAction:](self, "setShowsMenuAsPrimaryAction:", [quickActionsController hasDefaultActionForActionType:actionType] ^ 1);

  delegate = [(SearchUIButtonItem *)self delegate];
  [delegate stateDidChangeForButtonItem:self];
}

- (id)previewMenu
{
  quickActionsController = [(SearchUIContactButtonItem *)self quickActionsController];
  actionType = [(SearchUIContactButtonItem *)self actionType];
  v5 = [quickActionsController disambiguationMenuForActionType:actionType];

  v6 = [MEMORY[0x1E69DCC60] menuWithTitle:&stru_1F55BC4E8 image:0 identifier:0 options:1 children:v5];

  return v6;
}

- (id)command
{
  actionType = [(SearchUIContactButtonItem *)self actionType];
  if ([actionType isEqualToString:*MEMORY[0x1E695C1B8]])
  {
    v4 = 3;
  }

  else if ([actionType isEqualToString:*MEMORY[0x1E695C178]])
  {
    v4 = 2;
  }

  else if ([actionType isEqualToString:*MEMORY[0x1E695C150]])
  {
    v4 = 4;
  }

  else
  {
    v4 = [actionType isEqualToString:*MEMORY[0x1E695C170]];
  }

  v5 = objc_opt_new();
  [v5 setContactActionType:v4];
  quickActionsController = [(SearchUIContactButtonItem *)self quickActionsController];
  [v5 setDidDisplayHandleOptions:{objc_msgSend(quickActionsController, "hasDefaultActionForActionType:", actionType) ^ 1}];

  return v5;
}

@end