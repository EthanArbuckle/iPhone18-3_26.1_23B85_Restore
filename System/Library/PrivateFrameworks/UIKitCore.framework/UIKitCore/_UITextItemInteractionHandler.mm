@interface _UITextItemInteractionHandler
- (_NSRange)range;
- (_UITextContent)textContentView;
- (_UITextInteractableItem)item;
- (_UITextItemInteractionHandler)initWithItem:(id)a3 textContentView:(id)a4;
- (id)_editMenuConfiguration;
- (id)_menuForInteractableItem;
- (id)_preparedMenuConfigurationWithDefaultMenu:(id)a3;
- (id)contextMenuConfiguration;
- (id)primaryAction;
@end

@implementation _UITextItemInteractionHandler

- (_UITextItemInteractionHandler)initWithItem:(id)a3 textContentView:(id)a4
{
  v6 = a3;
  v7 = a4;
  v13.receiver = self;
  v13.super_class = _UITextItemInteractionHandler;
  v8 = [(_UITextItemInteractionHandler *)&v13 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_item, v6);
    objc_storeWeak(&v9->_textContentView, v7);
    v10 = [v6 range];
    v9->_range.location = [v10 asRange];
    v9->_range.length = v11;
  }

  return v9;
}

- (id)contextMenuConfiguration
{
  v3 = [(_UITextItemInteractionHandler *)self _defaultContextMenuConfiguration];
  v4 = [(_UITextItemInteractionHandler *)self _defaultMenuForInteractableItem];
  v5 = [v3 actionProvider];

  if (v5)
  {
    v6 = [v3 actionProvider];
    v7 = v6[2](v6, MEMORY[0x1E695E0F0]);

    v4 = v7;
  }

  v8 = [(_UITextItemInteractionHandler *)self _preparedMenuConfigurationWithDefaultMenu:v4];
  v9 = v8;
  if (v8)
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __57___UITextItemInteractionHandler_contextMenuConfiguration__block_invoke;
    aBlock[3] = &unk_1E70F46B8;
    v10 = v8;
    v21 = v10;
    v22 = v4;
    v11 = _Block_copy(aBlock);
    v12 = [v3 previewProvider];
    v13 = [v10 preview];
    v14 = [v13 _previewView];

    if (v14)
    {
      v18[0] = MEMORY[0x1E69E9820];
      v18[1] = 3221225472;
      v18[2] = __57___UITextItemInteractionHandler_contextMenuConfiguration__block_invoke_2;
      v18[3] = &unk_1E70F46E0;
      v19 = v14;
      v15 = _Block_copy(v18);

      v12 = v19;
    }

    else
    {
      v15 = [v10 preview];

      if (v15)
      {
        goto LABEL_9;
      }
    }

    v12 = v15;
LABEL_9:
    if (v3)
    {
      [v3 setPreviewProvider:v12];
      [v3 setActionProvider:v11];
    }

    else
    {
      v3 = [UIContextMenuConfiguration configurationWithIdentifier:0 previewProvider:v12 actionProvider:v11];
    }

    v3 = v3;

    v16 = v3;
    goto LABEL_13;
  }

  v16 = 0;
LABEL_13:

  return v16;
}

- (id)_editMenuConfiguration
{
  v3 = [(_UITextItemInteractionHandler *)self item];
  [v3 location];
  v5 = v4;
  v7 = v6;

  v8 = [UIEditMenuConfiguration configurationWithIdentifier:0 sourcePoint:v5, v7];
  v9 = [(_UITextItemInteractionHandler *)self item];
  [v8 set_preferredElementDisplayMode:{objc_msgSend(v9, "preferredElementDisplayMode")}];

  return v8;
}

- (id)primaryAction
{
  v3 = [(_UITextItemInteractionHandler *)self _defaultPrimaryActionForInteractableItem];
  v4 = [(_UITextItemInteractionHandler *)self item];
  v5 = [v4 preparedPrimaryActionWithDefaultAction:v3];

  if (!v5)
  {
    if ([(_UITextItemInteractionHandler *)self _canPresentMenuWithoutPrimaryAction])
    {
      v5 = [(_UITextItemInteractionHandler *)self _menuForInteractableItem];

      if (v5)
      {
        v7[0] = MEMORY[0x1E69E9820];
        v7[1] = 3221225472;
        v7[2] = __46___UITextItemInteractionHandler_primaryAction__block_invoke;
        v7[3] = &unk_1E70F4708;
        v7[4] = self;
        v5 = [UIAction actionWithTitle:&stru_1EFB14550 image:0 identifier:@"_UITextItemInteractionHandler.presentMenu.action" handler:v7];
      }
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (id)_preparedMenuConfigurationWithDefaultMenu:(id)a3
{
  v4 = a3;
  v5 = [(_UITextItemInteractionHandler *)self item];
  v6 = [v5 preparedMenuConfiguration];

  if (!v6)
  {
    if (!v4)
    {
      v4 = [(_UITextItemInteractionHandler *)self _defaultMenuForInteractableItem];
    }

    v7 = [(_UITextItemInteractionHandler *)self item];
    [v7 prepareMenuConfigurationWithDefaultMenu:v4];
  }

  v8 = [(_UITextItemInteractionHandler *)self item];
  v9 = [v8 preparedMenuConfiguration];

  return v9;
}

- (id)_menuForInteractableItem
{
  v3 = [(_UITextItemInteractionHandler *)self _preparedMenuConfigurationWithDefaultMenu:0];
  v4 = [v3 menu];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = [(_UITextItemInteractionHandler *)self _defaultMenuForInteractableItem];
  }

  v7 = v6;

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