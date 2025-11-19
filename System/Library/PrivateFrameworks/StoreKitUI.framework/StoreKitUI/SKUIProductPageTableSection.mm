@interface SKUIProductPageTableSection
- (double)heightForTextLayout:(id)a3 isExpanded:(BOOL)a4;
- (id)selectionActionForTableView:(id)a3 indexPath:(id)a4;
- (id)textBoxTableViewCellForTableView:(id)a3 indexPath:(id)a4;
@end

@implementation SKUIProductPageTableSection

- (double)heightForTextLayout:(id)a3 isExpanded:(BOOL)a4
{
  v5 = a3;
  if (!os_variant_has_internal_content() || !_os_feature_enabled_impl() || !(v6 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT)))
  {
    if (v5)
    {
      goto LABEL_5;
    }

LABEL_11:
    v15 = 80.0;
    goto LABEL_12;
  }

  [(SKUIProductPageTableSection *)v6 heightForTextLayout:v7 isExpanded:v8, v9, v10, v11, v12, v13];
  if (!v5)
  {
    goto LABEL_11;
  }

LABEL_5:
  if (a4 || ![v5 requiresTruncation])
  {
    [v5 textSize];
  }

  else
  {
    [v5 truncatedSize];
  }

  v15 = v14 + 10.0 + 22.0 + 2.0 + 12.0;
LABEL_12:

  return v15;
}

- (id)selectionActionForTableView:(id)a3 indexPath:(id)a4
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

- (id)textBoxTableViewCellForTableView:(id)a3 indexPath:(id)a4
{
  v4 = a3;
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

  v13 = [v4 dequeueReusableCellWithIdentifier:@"TB"];
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