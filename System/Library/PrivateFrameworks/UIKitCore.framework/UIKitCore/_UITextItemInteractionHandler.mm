@interface _UITextItemInteractionHandler
- (_NSRange)range;
- (_UITextContent)textContentView;
- (_UITextInteractableItem)item;
- (_UITextItemInteractionHandler)initWithItem:(id)item textContentView:(id)view;
- (id)_editMenuConfiguration;
- (id)_menuForInteractableItem;
- (id)_preparedMenuConfigurationWithDefaultMenu:(id)menu;
- (id)contextMenuConfiguration;
- (id)primaryAction;
@end

@implementation _UITextItemInteractionHandler

- (_UITextItemInteractionHandler)initWithItem:(id)item textContentView:(id)view
{
  itemCopy = item;
  viewCopy = view;
  v13.receiver = self;
  v13.super_class = _UITextItemInteractionHandler;
  v8 = [(_UITextItemInteractionHandler *)&v13 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_item, itemCopy);
    objc_storeWeak(&v9->_textContentView, viewCopy);
    range = [itemCopy range];
    v9->_range.location = [range asRange];
    v9->_range.length = v11;
  }

  return v9;
}

- (id)contextMenuConfiguration
{
  _defaultContextMenuConfiguration = [(_UITextItemInteractionHandler *)self _defaultContextMenuConfiguration];
  _defaultMenuForInteractableItem = [(_UITextItemInteractionHandler *)self _defaultMenuForInteractableItem];
  actionProvider = [_defaultContextMenuConfiguration actionProvider];

  if (actionProvider)
  {
    actionProvider2 = [_defaultContextMenuConfiguration actionProvider];
    v7 = actionProvider2[2](actionProvider2, MEMORY[0x1E695E0F0]);

    _defaultMenuForInteractableItem = v7;
  }

  v8 = [(_UITextItemInteractionHandler *)self _preparedMenuConfigurationWithDefaultMenu:_defaultMenuForInteractableItem];
  v9 = v8;
  if (v8)
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __57___UITextItemInteractionHandler_contextMenuConfiguration__block_invoke;
    aBlock[3] = &unk_1E70F46B8;
    v10 = v8;
    v21 = v10;
    v22 = _defaultMenuForInteractableItem;
    v11 = _Block_copy(aBlock);
    previewProvider = [_defaultContextMenuConfiguration previewProvider];
    preview = [v10 preview];
    _previewView = [preview _previewView];

    if (_previewView)
    {
      v18[0] = MEMORY[0x1E69E9820];
      v18[1] = 3221225472;
      v18[2] = __57___UITextItemInteractionHandler_contextMenuConfiguration__block_invoke_2;
      v18[3] = &unk_1E70F46E0;
      v19 = _previewView;
      preview2 = _Block_copy(v18);

      previewProvider = v19;
    }

    else
    {
      preview2 = [v10 preview];

      if (preview2)
      {
        goto LABEL_9;
      }
    }

    previewProvider = preview2;
LABEL_9:
    if (_defaultContextMenuConfiguration)
    {
      [_defaultContextMenuConfiguration setPreviewProvider:previewProvider];
      [_defaultContextMenuConfiguration setActionProvider:v11];
    }

    else
    {
      _defaultContextMenuConfiguration = [UIContextMenuConfiguration configurationWithIdentifier:0 previewProvider:previewProvider actionProvider:v11];
    }

    _defaultContextMenuConfiguration = _defaultContextMenuConfiguration;

    v16 = _defaultContextMenuConfiguration;
    goto LABEL_13;
  }

  v16 = 0;
LABEL_13:

  return v16;
}

- (id)_editMenuConfiguration
{
  item = [(_UITextItemInteractionHandler *)self item];
  [item location];
  v5 = v4;
  v7 = v6;

  v8 = [UIEditMenuConfiguration configurationWithIdentifier:0 sourcePoint:v5, v7];
  item2 = [(_UITextItemInteractionHandler *)self item];
  [v8 set_preferredElementDisplayMode:{objc_msgSend(item2, "preferredElementDisplayMode")}];

  return v8;
}

- (id)primaryAction
{
  _defaultPrimaryActionForInteractableItem = [(_UITextItemInteractionHandler *)self _defaultPrimaryActionForInteractableItem];
  item = [(_UITextItemInteractionHandler *)self item];
  _menuForInteractableItem = [item preparedPrimaryActionWithDefaultAction:_defaultPrimaryActionForInteractableItem];

  if (!_menuForInteractableItem)
  {
    if ([(_UITextItemInteractionHandler *)self _canPresentMenuWithoutPrimaryAction])
    {
      _menuForInteractableItem = [(_UITextItemInteractionHandler *)self _menuForInteractableItem];

      if (_menuForInteractableItem)
      {
        v7[0] = MEMORY[0x1E69E9820];
        v7[1] = 3221225472;
        v7[2] = __46___UITextItemInteractionHandler_primaryAction__block_invoke;
        v7[3] = &unk_1E70F4708;
        v7[4] = self;
        _menuForInteractableItem = [UIAction actionWithTitle:&stru_1EFB14550 image:0 identifier:@"_UITextItemInteractionHandler.presentMenu.action" handler:v7];
      }
    }

    else
    {
      _menuForInteractableItem = 0;
    }
  }

  return _menuForInteractableItem;
}

- (id)_preparedMenuConfigurationWithDefaultMenu:(id)menu
{
  menuCopy = menu;
  item = [(_UITextItemInteractionHandler *)self item];
  preparedMenuConfiguration = [item preparedMenuConfiguration];

  if (!preparedMenuConfiguration)
  {
    if (!menuCopy)
    {
      menuCopy = [(_UITextItemInteractionHandler *)self _defaultMenuForInteractableItem];
    }

    item2 = [(_UITextItemInteractionHandler *)self item];
    [item2 prepareMenuConfigurationWithDefaultMenu:menuCopy];
  }

  item3 = [(_UITextItemInteractionHandler *)self item];
  preparedMenuConfiguration2 = [item3 preparedMenuConfiguration];

  return preparedMenuConfiguration2;
}

- (id)_menuForInteractableItem
{
  v3 = [(_UITextItemInteractionHandler *)self _preparedMenuConfigurationWithDefaultMenu:0];
  menu = [v3 menu];
  v5 = menu;
  if (menu)
  {
    _defaultMenuForInteractableItem = menu;
  }

  else
  {
    _defaultMenuForInteractableItem = [(_UITextItemInteractionHandler *)self _defaultMenuForInteractableItem];
  }

  v7 = _defaultMenuForInteractableItem;

  return v7;
}

- (_UITextInteractableItem)item
{
  WeakRetained = objc_loadWeakRetained(&self->_item);

  return WeakRetained;
}

- (_UITextContent)textContentView
{
  WeakRetained = objc_loadWeakRetained(&self->_textContentView);

  return WeakRetained;
}

- (_NSRange)range
{
  length = self->_range.length;
  location = self->_range.location;
  result.length = length;
  result.location = location;
  return result;
}

@end