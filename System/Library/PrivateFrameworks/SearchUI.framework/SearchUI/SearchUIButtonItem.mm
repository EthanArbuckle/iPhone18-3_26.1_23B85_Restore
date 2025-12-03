@interface SearchUIButtonItem
- (BOOL)isEqual:(id)equal;
- (Class)searchUI_viewControllerClass;
- (SearchUIButtonItem)initWithSFButtonItem:(id)item;
- (SearchUIButtonItemDelegate)delegate;
- (id)buttonAppearance;
- (id)command;
- (id)commandForStatus:(unint64_t)status;
- (id)defaultSymbolNameForCommand;
- (id)fallbackImage;
- (id)image;
- (id)offStateImage;
- (id)offStateTitle;
- (id)onStateImage;
- (id)onStateTitle;
- (id)title;
- (unint64_t)hash;
@end

@implementation SearchUIButtonItem

- (SearchUIButtonItem)initWithSFButtonItem:(id)item
{
  itemCopy = item;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = itemCopy;
  }

  else
  {
    v13.receiver = self;
    v13.super_class = SearchUIButtonItem;
    v5 = [(SearchUIButtonItem *)&v13 init];
    if (v5)
    {
      [(SearchUIButtonItem *)v5 setUniqueId:[(SearchUIButtonItem *)itemCopy uniqueId]];
      [(SearchUIButtonItem *)v5 setSfButtonItem:itemCopy];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v6 = itemCopy;
        command = [(SearchUIButtonItem *)v6 command];
        [(SearchUIButtonItem *)v5 setCommand:command];

        image = [(SearchUIButtonItem *)v6 image];
        [(SearchUIButtonItem *)v5 setImage:image];

        title = [(SearchUIButtonItem *)v6 title];
        [(SearchUIButtonItem *)v5 setTitle:title];

        previewButtonItems = [(SearchUIButtonItem *)v6 previewButtonItems];

        [(SearchUIButtonItem *)v5 setPreviewButtonItems:previewButtonItems];
      }

      [(SearchUIButtonItem *)v5 setUseDefaultSymbolFillStyle:1];
    }

    self = v5;
  }

  v11 = v5;

  return v11;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    title = [(SearchUIButtonItem *)self title];
    title2 = [v5 title];
    if (title == title2)
    {
      v37 = 0;
    }

    else
    {
      title3 = [(SearchUIButtonItem *)self title];
      title4 = [v5 title];
      v10 = [title3 isEqual:title4];

      v37 = v10 ^ 1;
    }

    image = [(SearchUIButtonItem *)self image];
    image2 = [v5 image];
    if (image == image2)
    {
      v17 = 0;
    }

    else
    {
      image3 = [(SearchUIButtonItem *)self image];
      image4 = [v5 image];
      v16 = [image3 isEqual:image4];

      v17 = v16 ^ 1;
    }

    command = [(SearchUIButtonItem *)self command];
    command2 = [v5 command];
    if (command == command2)
    {
      v23 = 0;
    }

    else
    {
      command3 = [(SearchUIButtonItem *)self command];
      command4 = [v5 command];
      v22 = [command3 isEqual:command4];

      v23 = v22 ^ 1;
    }

    previewButtonItems = [(SearchUIButtonItem *)self previewButtonItems];
    previewButtonItems2 = [v5 previewButtonItems];
    if (previewButtonItems == previewButtonItems2)
    {
      v29 = 0;
    }

    else
    {
      previewButtonItems3 = [(SearchUIButtonItem *)self previewButtonItems];
      previewButtonItems4 = [v5 previewButtonItems];
      v28 = [previewButtonItems3 isEqualToArray:previewButtonItems4];

      v29 = v28 ^ 1;
    }

    showsMenuAsPrimaryAction = [(SearchUIButtonItem *)self showsMenuAsPrimaryAction];
    showsMenuAsPrimaryAction2 = [v5 showsMenuAsPrimaryAction];
    v11 = 0;
    if (((v37 | v17 | v23) & 1) == 0 && (v29 & 1) == 0 && ((showsMenuAsPrimaryAction ^ showsMenuAsPrimaryAction2) & 1) == 0)
    {
      sfButtonItem = [(SearchUIButtonItem *)self sfButtonItem];
      sfButtonItem2 = [v5 sfButtonItem];
      if (sfButtonItem == sfButtonItem2)
      {
        v11 = 1;
      }

      else
      {
        sfButtonItem3 = [(SearchUIButtonItem *)self sfButtonItem];
        sfButtonItem4 = [v5 sfButtonItem];
        v11 = [sfButtonItem3 isEqual:sfButtonItem4];
      }
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (unint64_t)hash
{
  title = [(SearchUIButtonItem *)self title];
  v4 = [title hash];
  image = [(SearchUIButtonItem *)self image];
  v6 = [image hash] ^ v4;
  command = [(SearchUIButtonItem *)self command];
  v8 = [command hash];
  previewButtonItems = [(SearchUIButtonItem *)self previewButtonItems];
  v10 = v6 ^ v8 ^ [previewButtonItems hash];
  v11 = [MEMORY[0x1E696AD98] numberWithBool:{-[SearchUIButtonItem showsMenuAsPrimaryAction](self, "showsMenuAsPrimaryAction")}];
  v12 = [v11 hash];

  return v10 ^ v12;
}

- (id)offStateTitle
{
  v4.receiver = self;
  v4.super_class = SearchUIButtonItem;
  title = [(SearchUIButtonItem *)&v4 title];

  return title;
}

- (id)onStateTitle
{
  v4.receiver = self;
  v4.super_class = SearchUIButtonItem;
  title = [(SearchUIButtonItem *)&v4 title];

  return title;
}

- (id)title
{
  status = [(SearchUIButtonItem *)self status];
  if (status)
  {
    if (status == 1)
    {
      onStateTitle = [(SearchUIButtonItem *)self onStateTitle];
    }

    else
    {
      v5 = SearchUIButtonItemLog();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        [SearchUIButtonItem title];
      }

      onStateTitle = 0;
    }
  }

  else
  {
    onStateTitle = [(SearchUIButtonItem *)self offStateTitle];
  }

  return onStateTitle;
}

- (id)defaultSymbolNameForCommand
{
  v2 = [SearchUICommandHandler handlerForButton:self rowModel:0 environment:0];
  defaultSymbolName = [v2 defaultSymbolName];

  return defaultSymbolName;
}

- (id)offStateImage
{
  v4.receiver = self;
  v4.super_class = SearchUIButtonItem;
  image = [(SearchUIButtonItem *)&v4 image];

  return image;
}

- (id)onStateImage
{
  v4.receiver = self;
  v4.super_class = SearchUIButtonItem;
  image = [(SearchUIButtonItem *)&v4 image];

  return image;
}

- (id)image
{
  status = [(SearchUIButtonItem *)self status];
  if (status)
  {
    if (status == 1)
    {
      onStateImage = [(SearchUIButtonItem *)self onStateImage];
    }

    else
    {
      v5 = SearchUIButtonItemLog();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        [SearchUIButtonItem image];
      }

      onStateImage = 0;
    }
  }

  else
  {
    onStateImage = [(SearchUIButtonItem *)self offStateImage];
  }

  return onStateImage;
}

- (id)fallbackImage
{
  status = [(SearchUIButtonItem *)self status];
  if (status)
  {
    if (status != 1)
    {
      v5 = SearchUIButtonItemLog();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        [SearchUIButtonItem image];
      }

      v6 = 0;
      goto LABEL_10;
    }

    onStateSymbolName = [(SearchUIButtonItem *)self onStateSymbolName];
  }

  else
  {
    onStateSymbolName = [(SearchUIButtonItem *)self offStateSymbolName];
  }

  v5 = onStateSymbolName;
  if (onStateSymbolName)
  {
    v6 = [[SearchUISymbolImage alloc] initWithSymbolName:onStateSymbolName];
LABEL_10:

    goto LABEL_12;
  }

  v6 = 0;
LABEL_12:

  return v6;
}

- (id)command
{
  status = [(SearchUIButtonItem *)self status];
  if (status)
  {
    if (status == 1)
    {
      onStateCommand = [(SearchUIButtonItem *)self onStateCommand];
    }

    else
    {
      v5 = SearchUIButtonItemLog();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        [SearchUIButtonItem command];
      }

      onStateCommand = 0;
    }
  }

  else
  {
    onStateCommand = [(SearchUIButtonItem *)self offStateCommand];
  }

  return onStateCommand;
}

- (id)commandForStatus:(unint64_t)status
{
  v5.receiver = self;
  v5.super_class = SearchUIButtonItem;
  command = [(SearchUIButtonItem *)&v5 command];

  return command;
}

- (id)buttonAppearance
{
  v8.receiver = self;
  v8.super_class = SearchUIButtonItem;
  buttonAppearance = [(SearchUIButtonItem *)&v8 buttonAppearance];
  v4 = buttonAppearance;
  if (buttonAppearance)
  {
    buttonAppearance2 = buttonAppearance;
  }

  else
  {
    sfButtonItem = [(SearchUIButtonItem *)self sfButtonItem];
    buttonAppearance2 = [sfButtonItem buttonAppearance];
  }

  return buttonAppearance2;
}

- (SearchUIButtonItemDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (Class)searchUI_viewControllerClass
{
  sfButtonItem = [(SearchUIButtonItem *)self sfButtonItem];
  if (sfButtonItem)
  {
    sfButtonItem2 = [(SearchUIButtonItem *)self sfButtonItem];
    searchUI_viewControllerClass = [sfButtonItem2 searchUI_viewControllerClass];
  }

  else
  {
    v7.receiver = self;
    v7.super_class = SearchUIButtonItem;
    searchUI_viewControllerClass = [(SFButtonItem *)&v7 searchUI_viewControllerClass];
  }

  return searchUI_viewControllerClass;
}

@end