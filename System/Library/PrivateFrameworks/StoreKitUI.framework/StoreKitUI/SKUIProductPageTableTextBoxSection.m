@interface SKUIProductPageTableTextBoxSection
- (SKUIProductPageTableTextBoxSection)initWithClientContext:(id)a3;
- (double)heightForCellInTableView:(id)a3 indexPath:(id)a4;
- (id)selectionActionForTableView:(id)a3 indexPath:(id)a4;
- (id)tableViewCellForTableView:(id)a3 indexPath:(id)a4;
@end

@implementation SKUIProductPageTableTextBoxSection

- (SKUIProductPageTableTextBoxSection)initWithClientContext:(id)a3
{
  v5 = a3;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUIProductPageTableTextBoxSection initWithClientContext:];
  }

  v9.receiver = self;
  v9.super_class = SKUIProductPageTableTextBoxSection;
  v6 = [(SKUIProductPageTableTextBoxSection *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_clientContext, a3);
  }

  return v7;
}

- (double)heightForCellInTableView:(id)a3 indexPath:(id)a4
{
  v5 = [(SKUILayoutCache *)self->_textLayoutCache layoutForIndex:self->_stringIndex, a4];
  [(SKUIProductPageTableSection *)self heightForTextLayout:v5 isExpanded:self->_isExpanded];
  v7 = v6;

  return v7;
}

- (id)selectionActionForTableView:(id)a3 indexPath:(id)a4
{
  v5 = [(SKUILayoutCache *)self->_textLayoutCache layoutForIndex:self->_stringIndex, a4];
  v6 = v5;
  if (self->_isExpanded || ![v5 requiresTruncation])
  {
    v7 = 0;
  }

  else
  {
    self->_isExpanded = 1;
    v7 = [SKUIProductPageAction actionWithType:0];
  }

  return v7;
}

- (id)tableViewCellForTableView:(id)a3 indexPath:(id)a4
{
  v5 = [(SKUIProductPageTableSection *)self textBoxTableViewCellForTableView:a3 indexPath:a4];
  v6 = [(SKUIColorScheme *)self->_colorScheme primaryTextColor];

  if (v6)
  {
    v7 = [(SKUIColorScheme *)self->_colorScheme primaryTextColor];
    [v5 setBottomBorderColor:v7];
  }

  v8 = [(SKUILayoutCache *)self->_textLayoutCache layoutForIndex:self->_stringIndex];
  v9 = [v5 textBoxView];
  v10 = v9;
  if (v8)
  {
    [v9 setFixedWidthTextFrame:{objc_msgSend(v8, "textFrame")}];
    clientContext = self->_clientContext;
    if (clientContext)
    {
      [(SKUIClientContext *)clientContext localizedStringForKey:@"MORE_BUTTON"];
    }

    else
    {
      [SKUIClientContext localizedStringForKey:@"MORE_BUTTON" inBundles:0];
    }
    v12 = ;
    [v10 setMoreButtonTitle:v12];

    if (self->_isExpanded)
    {
      v13 = 0;
    }

    else
    {
      v13 = 5;
    }

    [v10 setNumberOfVisibleLines:v13];
    v14 = [(SKUIProductPageTableTextBoxSection *)self subtitle];
    [v10 setSubtitle:v14];

    v15 = [(SKUIProductPageTableTextBoxSection *)self title];
    [v10 setTitle:v15];

    [v10 setColorScheme:self->_colorScheme];
  }

  else
  {
    [v9 reset];
  }

  return v5;
}

- (void)initWithClientContext:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUIProductPageTableTextBoxSection initWithClientContext:]";
}

@end