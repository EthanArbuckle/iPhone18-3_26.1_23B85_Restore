@interface SKUIProductPageTableSection
- (double)heightForTextLayout:(id)layout isExpanded:(BOOL)expanded;
- (id)selectionActionForTableView:(id)view indexPath:(id)path;
- (id)textBoxTableViewCellForTableView:(id)view indexPath:(id)path;
@end

@implementation SKUIProductPageTableSection

- (double)heightForTextLayout:(id)layout isExpanded:(BOOL)expanded
{
  layoutCopy = layout;
  if (!os_variant_has_internal_content() || !_os_feature_enabled_impl() || !(v6 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT)))
  {
    if (layoutCopy)
    {
      goto LABEL_5;
    }

LABEL_11:
    v15 = 80.0;
    goto LABEL_12;
  }

  [(SKUIProductPageTableSection *)v6 heightForTextLayout:v7 isExpanded:v8, v9, v10, v11, v12, v13];
  if (!layoutCopy)
  {
    goto LABEL_11;
  }

LABEL_5:
  if (expanded || ![layoutCopy requiresTruncation])
  {
    [layoutCopy textSize];
  }

  else
  {
    [layoutCopy truncatedSize];
  }

  v15 = v14 + 10.0 + 22.0 + 2.0 + 12.0;
LABEL_12:

  return v15;
}

- (id)selectionActionForTableView:(id)view indexPath:(id)path
{
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v4 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v4)
      {
        [(SKUIProductPageTableSection *)v4 selectionActionForTableView:v5 indexPath:v6, v7, v8, v9, v10, v11];
      }
    }
  }

  return 0;
}

- (id)textBoxTableViewCellForTableView:(id)view indexPath:(id)path
{
  viewCopy = view;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v5 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v5)
      {
        [(SKUIProductPageTableSection *)v5 textBoxTableViewCellForTableView:v6 indexPath:v7, v8, v9, v10, v11, v12];
      }
    }
  }

  v13 = [viewCopy dequeueReusableCellWithIdentifier:@"TB"];
  if (!v13)
  {
    v13 = [[SKUITextBoxTableViewCell alloc] initWithStyle:0 reuseIdentifier:@"TB"];
    v14 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.2];
    [(SKUITableViewCell *)v13 setBottomBorderColor:v14];

    [(SKUITextBoxTableViewCell *)v13 setSelectionStyle:0];
  }

  return v13;
}

@end