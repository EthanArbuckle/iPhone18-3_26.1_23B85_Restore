@interface SKUIProductPageTableTextBoxSection
- (SKUIProductPageTableTextBoxSection)initWithClientContext:(id)context;
- (double)heightForCellInTableView:(id)view indexPath:(id)path;
- (id)selectionActionForTableView:(id)view indexPath:(id)path;
- (id)tableViewCellForTableView:(id)view indexPath:(id)path;
@end

@implementation SKUIProductPageTableTextBoxSection

- (SKUIProductPageTableTextBoxSection)initWithClientContext:(id)context
{
  contextCopy = context;
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
    objc_storeStrong(&v6->_clientContext, context);
  }

  return v7;
}

- (double)heightForCellInTableView:(id)view indexPath:(id)path
{
  path = [(SKUILayoutCache *)self->_textLayoutCache layoutForIndex:self->_stringIndex, path];
  [(SKUIProductPageTableSection *)self heightForTextLayout:path isExpanded:self->_isExpanded];
  v7 = v6;

  return v7;
}

- (id)selectionActionForTableView:(id)view indexPath:(id)path
{
  path = [(SKUILayoutCache *)self->_textLayoutCache layoutForIndex:self->_stringIndex, path];
  v6 = path;
  if (self->_isExpanded || ![path requiresTruncation])
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

- (id)tableViewCellForTableView:(id)view indexPath:(id)path
{
  v5 = [(SKUIProductPageTableSection *)self textBoxTableViewCellForTableView:view indexPath:path];
  primaryTextColor = [(SKUIColorScheme *)self->_colorScheme primaryTextColor];

  if (primaryTextColor)
  {
    primaryTextColor2 = [(SKUIColorScheme *)self->_colorScheme primaryTextColor];
    [v5 setBottomBorderColor:primaryTextColor2];
  }

  v8 = [(SKUILayoutCache *)self->_textLayoutCache layoutForIndex:self->_stringIndex];
  textBoxView = [v5 textBoxView];
  v10 = textBoxView;
  if (v8)
  {
    [textBoxView setFixedWidthTextFrame:{objc_msgSend(v8, "textFrame")}];
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
    subtitle = [(SKUIProductPageTableTextBoxSection *)self subtitle];
    [v10 setSubtitle:subtitle];

    title = [(SKUIProductPageTableTextBoxSection *)self title];
    [v10 setTitle:title];

    [v10 setColorScheme:self->_colorScheme];
  }

  else
  {
    [textBoxView reset];
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