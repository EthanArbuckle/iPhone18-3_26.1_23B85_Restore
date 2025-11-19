@interface SearchUIButtonItem
- (BOOL)isEqual:(id)a3;
- (Class)searchUI_viewControllerClass;
- (SearchUIButtonItem)initWithSFButtonItem:(id)a3;
- (SearchUIButtonItemDelegate)delegate;
- (id)buttonAppearance;
- (id)command;
- (id)commandForStatus:(unint64_t)a3;
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

- (SearchUIButtonItem)initWithSFButtonItem:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v13.receiver = self;
    v13.super_class = SearchUIButtonItem;
    v5 = [(SearchUIButtonItem *)&v13 init];
    if (v5)
    {
      [(SearchUIButtonItem *)v5 setUniqueId:[(SearchUIButtonItem *)v4 uniqueId]];
      [(SearchUIButtonItem *)v5 setSfButtonItem:v4];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v6 = v4;
        v7 = [(SearchUIButtonItem *)v6 command];
        [(SearchUIButtonItem *)v5 setCommand:v7];

        v8 = [(SearchUIButtonItem *)v6 image];
        [(SearchUIButtonItem *)v5 setImage:v8];

        v9 = [(SearchUIButtonItem *)v6 title];
        [(SearchUIButtonItem *)v5 setTitle:v9];

        v10 = [(SearchUIButtonItem *)v6 previewButtonItems];

        [(SearchUIButtonItem *)v5 setPreviewButtonItems:v10];
      }

      [(SearchUIButtonItem *)v5 setUseDefaultSymbolFillStyle:1];
    }

    self = v5;
  }

  v11 = v5;

  return v11;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(SearchUIButtonItem *)self title];
    v7 = [v5 title];
    if (v6 == v7)
    {
      v37 = 0;
    }

    else
    {
      v8 = [(SearchUIButtonItem *)self title];
      v9 = [v5 title];
      v10 = [v8 isEqual:v9];

      v37 = v10 ^ 1;
    }

    v12 = [(SearchUIButtonItem *)self image];
    v13 = [v5 image];
    if (v12 == v13)
    {
      v17 = 0;
    }

    else
    {
      v14 = [(SearchUIButtonItem *)self image];
      v15 = [v5 image];
      v16 = [v14 isEqual:v15];

      v17 = v16 ^ 1;
    }

    v18 = [(SearchUIButtonItem *)self command];
    v19 = [v5 command];
    if (v18 == v19)
    {
      v23 = 0;
    }

    else
    {
      v20 = [(SearchUIButtonItem *)self command];
      v21 = [v5 command];
      v22 = [v20 isEqual:v21];

      v23 = v22 ^ 1;
    }

    v24 = [(SearchUIButtonItem *)self previewButtonItems];
    v25 = [v5 previewButtonItems];
    if (v24 == v25)
    {
      v29 = 0;
    }

    else
    {
      v26 = [(SearchUIButtonItem *)self previewButtonItems];
      v27 = [v5 previewButtonItems];
      v28 = [v26 isEqualToArray:v27];

      v29 = v28 ^ 1;
    }

    v30 = [(SearchUIButtonItem *)self showsMenuAsPrimaryAction];
    v31 = [v5 showsMenuAsPrimaryAction];
    v11 = 0;
    if (((v37 | v17 | v23) & 1) == 0 && (v29 & 1) == 0 && ((v30 ^ v31) & 1) == 0)
    {
      v32 = [(SearchUIButtonItem *)self sfButtonItem];
      v33 = [v5 sfButtonItem];
      if (v32 == v33)
      {
        v11 = 1;
      }

      else
      {
        v34 = [(SearchUIButtonItem *)self sfButtonItem];
        v35 = [v5 sfButtonItem];
        v11 = [v34 isEqual:v35];
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
  v3 = [(SearchUIButtonItem *)self title];
  v4 = [v3 hash];
  v5 = [(SearchUIButtonItem *)self image];
  v6 = [v5 hash] ^ v4;
  v7 = [(SearchUIButtonItem *)self command];
  v8 = [v7 hash];
  v9 = [(SearchUIButtonItem *)self previewButtonItems];
  v10 = v6 ^ v8 ^ [v9 hash];
  v11 = [MEMORY[0x1E696AD98] numberWithBool:{-[SearchUIButtonItem showsMenuAsPrimaryAction](self, "showsMenuAsPrimaryAction")}];
  v12 = [v11 hash];

  return v10 ^ v12;
}

- (id)offStateTitle
{
  v4.receiver = self;
  v4.super_class = SearchUIButtonItem;
  v2 = [(SearchUIButtonItem *)&v4 title];

  return v2;
}

- (id)onStateTitle
{
  v4.receiver = self;
  v4.super_class = SearchUIButtonItem;
  v2 = [(SearchUIButtonItem *)&v4 title];

  return v2;
}

- (id)title
{
  v3 = [(SearchUIButtonItem *)self status];
  if (v3)
  {
    if (v3 == 1)
    {
      v4 = [(SearchUIButtonItem *)self onStateTitle];
    }

    else
    {
      v5 = SearchUIButtonItemLog();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        [SearchUIButtonItem title];
      }

      v4 = 0;
    }
  }

  else
  {
    v4 = [(SearchUIButtonItem *)self offStateTitle];
  }

  return v4;
}

- (id)defaultSymbolNameForCommand
{
  v2 = [SearchUICommandHandler handlerForButton:self rowModel:0 environment:0];
  v3 = [v2 defaultSymbolName];

  return v3;
}

- (id)offStateImage
{
  v4.receiver = self;
  v4.super_class = SearchUIButtonItem;
  v2 = [(SearchUIButtonItem *)&v4 image];

  return v2;
}

- (id)onStateImage
{
  v4.receiver = self;
  v4.super_class = SearchUIButtonItem;
  v2 = [(SearchUIButtonItem *)&v4 image];

  return v2;
}

- (id)image
{
  v3 = [(SearchUIButtonItem *)self status];
  if (v3)
  {
    if (v3 == 1)
    {
      v4 = [(SearchUIButtonItem *)self onStateImage];
    }

    else
    {
      v5 = SearchUIButtonItemLog();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        [SearchUIButtonItem image];
      }

      v4 = 0;
    }
  }

  else
  {
    v4 = [(SearchUIButtonItem *)self offStateImage];
  }

  return v4;
}

- (id)fallbackImage
{
  v3 = [(SearchUIButtonItem *)self status];
  if (v3)
  {
    if (v3 != 1)
    {
      v5 = SearchUIButtonItemLog();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        [SearchUIButtonItem image];
      }

      v6 = 0;
      goto LABEL_10;
    }

    v4 = [(SearchUIButtonItem *)self onStateSymbolName];
  }

  else
  {
    v4 = [(SearchUIButtonItem *)self offStateSymbolName];
  }

  v5 = v4;
  if (v4)
  {
    v6 = [[SearchUISymbolImage alloc] initWithSymbolName:v4];
LABEL_10:

    goto LABEL_12;
  }

  v6 = 0;
LABEL_12:

  return v6;
}

- (id)command
{
  v3 = [(SearchUIButtonItem *)self status];
  if (v3)
  {
    if (v3 == 1)
    {
      v4 = [(SearchUIButtonItem *)self onStateCommand];
    }

    else
    {
      v5 = SearchUIButtonItemLog();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        [SearchUIButtonItem command];
      }

      v4 = 0;
    }
  }

  else
  {
    v4 = [(SearchUIButtonItem *)self offStateCommand];
  }

  return v4;
}

- (id)commandForStatus:(unint64_t)a3
{
  v5.receiver = self;
  v5.super_class = SearchUIButtonItem;
  v3 = [(SearchUIButtonItem *)&v5 command];

  return v3;
}

- (id)buttonAppearance
{
  v8.receiver = self;
  v8.super_class = SearchUIButtonItem;
  v3 = [(SearchUIButtonItem *)&v8 buttonAppearance];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v6 = [(SearchUIButtonItem *)self sfButtonItem];
    v5 = [v6 buttonAppearance];
  }

  return v5;
}

- (SearchUIButtonItemDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (Class)searchUI_viewControllerClass
{
  v3 = [(SearchUIButtonItem *)self sfButtonItem];
  if (v3)
  {
    v4 = [(SearchUIButtonItem *)self sfButtonItem];
    v5 = [v4 searchUI_viewControllerClass];
  }

  else
  {
    v7.receiver = self;
    v7.super_class = SearchUIButtonItem;
    v5 = [(SFButtonItem *)&v7 searchUI_viewControllerClass];
  }

  return v5;
}

@end