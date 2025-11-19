@interface RUITableViewSection
- (BOOL)hasCustomFooter;
- (BOOL)hasCustomHeader;
- (Class)_customFooterClass;
- (Class)_customHeaderClass;
- (NSArray)rows;
- (RUIHeader)headerView;
- (RUITableView)tableElement;
- (RUITableViewHeaderFooterView)containerizedFooterView;
- (RUITableViewHeaderFooterView)containerizedHeaderView;
- (RUITableViewSection)initWithAttributes:(id)a3 parent:(id)a4;
- (RemoteUITableFooter)footerView;
- (id)colorFromAttributeString:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)staticFunctions;
- (id)staticValues;
- (id)subElementWithID:(id)a3;
- (id)subElementsWithName:(id)a3;
- (id)viewForElementIdentifier:(id)a3;
- (void)footerView:(id)a3 activatedLinkWithURL:(id)a4;
- (void)headerView:(id)a3 activatedLinkWithURL:(id)a4;
- (void)headerViewDidChange:(id)a3;
- (void)populatePostbackDictionary:(id)a3;
- (void)reportInternalRenderEvent;
- (void)setAttributes:(id)a3;
- (void)setDrawTopSeparator:(BOOL)a3;
- (void)setImage:(id)a3;
- (void)setImageAlignment:(unint64_t)a3;
- (void)setImageSize:(CGSize)a3;
- (void)tappedShowAllRowWithTable:(id)a3;
@end

@implementation RUITableViewSection

- (id)staticValues
{
  v6[2] = *MEMORY[0x277D85DE8];
  v2 = objc_opt_new();
  [v2 setIdentifier:"rowCount"];
  [v2 setGetter:RUIJSSection_getProperty];
  [v2 setSetter:0];
  [v2 setJSPropertyAttributes:10];
  v3 = objc_opt_new();
  [v3 setIdentifier:"sectionIndex"];
  [v3 setGetter:RUIJSSection_getProperty];
  [v3 setSetter:0];
  [v3 setJSPropertyAttributes:10];
  v6[0] = v2;
  v6[1] = v3;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:2];

  return v4;
}

- (id)staticFunctions
{
  v8[4] = *MEMORY[0x277D85DE8];
  v2 = objc_opt_new();
  [v2 setIdentifier:"insertRow"];
  [v2 setFunction:RUIJSSection_insertRow];
  [v2 setJSPropertyAttributes:0];
  v3 = objc_opt_new();
  [v3 setIdentifier:"removeRow"];
  [v3 setFunction:RUIJSSection_removeRow];
  [v3 setJSPropertyAttributes:0];
  v4 = objc_opt_new();
  [v4 setIdentifier:"updateHTMLFooterContent"];
  [v4 setFunction:RUIJSSection_updateHTMLFooterContent];
  [v4 setJSPropertyAttributes:0];
  v5 = objc_opt_new();
  [v5 setIdentifier:"updateHTMLHeaderContent"];
  [v5 setFunction:RUIJSSection_updateHTMLHeaderContent];
  [v5 setJSPropertyAttributes:0];
  v8[0] = v2;
  v8[1] = v3;
  v8[2] = v4;
  v8[3] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:4];

  return v6;
}

- (RUITableViewSection)initWithAttributes:(id)a3 parent:(id)a4
{
  v12.receiver = self;
  v12.super_class = RUITableViewSection;
  v4 = [(RUIElement *)&v12 initWithAttributes:a3 parent:a4];
  if (v4)
  {
    v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
    rows = v4->_rows;
    v4->_rows = v5;

    v7 = [(RUIElement *)v4 style];

    if (v7)
    {
      v8 = [(RUIElement *)v4 style];
      [v8 sectionHeaderHeight];
      v4->_headerHeight = v9;

      v10 = *MEMORY[0x277D76F30];
    }

    else
    {
      v10 = *MEMORY[0x277D76F30];
      v4->_headerHeight = *MEMORY[0x277D76F30];
    }

    v4->_footerHeight = v10;
  }

  return v4;
}

- (void)setDrawTopSeparator:(BOOL)a3
{
  v4 = [objc_alloc(MEMORY[0x277CCABB0]) initWithBool:a3];
  drawsTopSeparator = self->_drawsTopSeparator;
  self->_drawsTopSeparator = v4;

  MEMORY[0x2821F96F8](v4, drawsTopSeparator);
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [(RUIElement *)self attributes];
  v5 = [RUITableViewSection alloc];
  v6 = [(RUIElement *)self attributes];
  v7 = [(RUIElement *)self parent];
  v8 = [(RUITableViewSection *)v5 initWithAttributes:v6 parent:v7];

  [(RUITableViewSection *)v8 setAttributes:v4];
  v9 = [(RUIElement *)self style];
  [(RUIElement *)v8 setStyle:v9];

  v10 = [(RUITableViewSection *)self tableElement];
  [(RUITableViewSection *)v8 setTableElement:v10];

  v11 = [v4 objectForKeyedSubscript:@"header"];

  if (v11)
  {
    v12 = [(RUIElement *)[RUIHeaderElement alloc] initWithAttributes:0 parent:v8];
    v13 = [v4 objectForKeyedSubscript:@"header"];
    [(RUIElement *)v12 setBody:v13];

    [(RUITableViewSection *)v8 setHeader:v12];
    v14 = [v4 objectForKeyedSubscript:@"headerHeight"];

    if (v14)
    {
      v15 = [v4 objectForKeyedSubscript:@"headerHeight"];
      [v15 floatValue];
      [(RUITableViewSection *)v8 setHeaderHeight:v16];
    }
  }

  v17 = [v4 objectForKeyedSubscript:@"footer"];

  if (v17)
  {
    v18 = [(RUIElement *)[RUIFooterElement alloc] initWithAttributes:0 parent:v8];
    v19 = [v4 objectForKeyedSubscript:@"footer"];
    [(RUIElement *)v18 setBody:v19];

    [(RUITableViewSection *)v8 setFooter:v18];
  }

  return v8;
}

- (NSArray)rows
{
  v24[1] = *MEMORY[0x277D85DE8];
  disclosureLimit = self->_disclosureLimit;
  if (disclosureLimit && disclosureLimit < [(NSMutableArray *)self->_rows count]- 1)
  {
    if (!self->_showAllRow)
    {
      v4 = [RUITableViewRow alloc];
      v23 = @"label";
      v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v6 = [v5 localizedStringForKey:@"SHOW_ALL" value:&stru_282D68F58 table:@"Localizable"];
      v24[0] = v6;
      v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v24 forKeys:&v23 count:1];
      v8 = [(RUIElement *)v4 initWithAttributes:v7 parent:self];
      showAllRow = self->_showAllRow;
      self->_showAllRow = v8;

      v10 = self->_showAllRow;
      v11 = [(RUIElement *)self style];
      [(RUIElement *)v10 setStyle:v11];

      v12 = [(RUITableViewRow *)self->_showAllRow tableCell];
      v13 = [v12 ruiTextLabel];
      v14 = [(RUIElement *)self style];
      v15 = [v14 buttonRowTextColor];
      [v13 setTextColor:v15];

      v16 = [(RUITableViewRow *)self->_showAllRow tableCell];
      [v16 setIndentationLevel:1];

      v17 = [(RUITableViewRow *)self->_showAllRow tableCell];
      v18 = [(RUIElement *)self attributes];
      v19 = [v18 objectForKey:@"showAllIndent"];
      [v17 setIndentationWidth:{objc_msgSend(v19, "integerValue")}];
    }

    v20 = [(NSMutableArray *)self->_rows subarrayWithRange:0, self->_disclosureLimit];
    v21 = [v20 mutableCopy];

    [(NSMutableArray *)v21 addObject:self->_showAllRow];
  }

  else
  {
    v21 = self->_rows;
  }

  return v21;
}

- (void)tappedShowAllRowWithTable:(id)a3
{
  v12[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(RUITableViewRow *)self->_showAllRow tableCell];
  v6 = [v4 indexPathForCell:v5];

  v7 = [MEMORY[0x277CBEB18] arrayWithCapacity:{-[NSMutableArray count](self->_rows, "count") - self->_disclosureLimit}];
  for (i = self->_disclosureLimit; i < [(NSMutableArray *)self->_rows count]; ++i)
  {
    v9 = [MEMORY[0x277CCAA70] indexPathForRow:i inSection:{objc_msgSend(v6, "section")}];
    [v7 addObject:v9];
  }

  self->_disclosureLimit = 0;
  showAllRow = self->_showAllRow;
  self->_showAllRow = 0;

  [v4 beginUpdates];
  v12[0] = v6;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:1];
  [v4 deleteRowsAtIndexPaths:v11 withRowAnimation:0];

  [v4 insertRowsAtIndexPaths:v7 withRowAnimation:0];
  [v4 endUpdates];
}

- (void)setAttributes:(id)a3
{
  v7.receiver = self;
  v7.super_class = RUITableViewSection;
  v4 = a3;
  [(RUIElement *)&v7 setAttributes:v4];
  v5 = [v4 objectForKey:{@"disclosureLimit", v7.receiver, v7.super_class}];
  self->_disclosureLimit = [v5 integerValue];

  v6 = [v4 objectForKey:@"hideTopSeparator"];

  -[RUITableViewSection setDrawTopSeparator:](self, "setDrawTopSeparator:", [v6 BOOLValue] ^ 1);
}

- (id)colorFromAttributeString:(id)a3
{
  if (a3)
  {
    v4 = [MEMORY[0x277D75348] _remoteUI_colorWithString:?];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (Class)_customHeaderClass
{
  v3 = [(RUIElement *)self parent];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [v3 objectModel];
    v5 = [v4 customHeaderClassForSection:self];

    if (v5)
    {
      v6 = v5;
LABEL_11:
      v12 = v6;
      goto LABEL_12;
    }
  }

  v7 = [(RUITableViewSection *)self header];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
LABEL_10:
    v6 = objc_opt_class();
    goto LABEL_11;
  }

  v9 = [(RUIElement *)self attributes];
  v10 = [v9 objectForKey:@"image"];
  if (v10)
  {
    goto LABEL_8;
  }

  v10 = [(RUIElement *)self attributes];
  v11 = [v10 objectForKey:@"image2x"];
  if (v11)
  {

LABEL_8:
LABEL_9:

    goto LABEL_10;
  }

  v14 = [(RUIElement *)self attributes];
  v15 = [v14 objectForKey:@"image3x"];

  if (v15)
  {
    goto LABEL_10;
  }

  v16 = [(RUITableViewSection *)self detailHeader];
  if (v16 || ([(RUITableViewSection *)self subHeader], (v16 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v9 = v16;
    goto LABEL_9;
  }

  v17 = [(RUITableViewSection *)self header];
  v18 = [v17 attributes];
  v19 = [v18 objectForKeyedSubscript:@"color"];

  if (v19)
  {
    goto LABEL_10;
  }

  v12 = 0;
LABEL_12:

  return v12;
}

- (RUITableViewHeaderFooterView)containerizedHeaderView
{
  v3 = [(RUITableViewSection *)self headerView];
  v4 = v3;
  containerizedHeaderView = self->_containerizedHeaderView;
  if (containerizedHeaderView)
  {
    v6 = 1;
  }

  else
  {
    v6 = v3 == 0;
  }

  if (!v6)
  {
    v7 = objc_opt_new();
    v8 = self->_containerizedHeaderView;
    self->_containerizedHeaderView = v7;

    [(RUITableViewHeaderFooterView *)self->_containerizedHeaderView embedHeaderView:v4];
    containerizedHeaderView = self->_containerizedHeaderView;
  }

  v9 = containerizedHeaderView;

  return containerizedHeaderView;
}

- (RUIHeader)headerView
{
  headerView = self->_headerView;
  if (!headerView)
  {
    v4 = objc_alloc([(RUITableViewSection *)self _customHeaderClass]);
    v5 = [(RUITableViewSection *)self header];
    v6 = [v5 attributes];
    v7 = [v4 initWithAttributes:v6];
    v8 = self->_headerView;
    self->_headerView = v7;

    v9 = [(RUITableViewSection *)self header];
    v10 = [v9 attributes];
    v11 = [v10 objectForKeyedSubscript:@"largeFont"];

    if (!v11)
    {
      v12 = +[RUIPlatform isSolariumEnabled];
      header = self->_header;
      v14 = [(RUIElement *)header body];
      v15 = v14;
      if (v12)
      {
        [(RUIElement *)header setBody:v14];
      }

      else
      {
        v16 = [v14 localizedUppercaseString];
        [(RUIElement *)header setBody:v16];
      }
    }

    [(RUIElement *)self->_header configureView:self->_headerView];
    [(RUISubHeaderElement *)self->_subHeader configureView:self->_headerView];
    [(RUIDetailHeaderElement *)self->_detailHeader configureView:self->_headerView];
    if (objc_opt_respondsToSelector())
    {
      [(RUIHeader *)self->_headerView setDelegate:self];
    }

    if (objc_opt_respondsToSelector())
    {
      [(RUIElement *)self loadImage];
    }

    headerView = self->_headerView;
  }

  v17 = headerView;

  return v17;
}

- (void)headerView:(id)a3 activatedLinkWithURL:(id)a4
{
  v5 = a4;
  v6 = [(RUITableViewSection *)self header];
  v7 = [v6 attributes];
  v10 = [v7 mutableCopy];

  v8 = [v5 absoluteString];

  [v10 setObject:v8 forKeyedSubscript:@"url"];
  v9 = [[RUIElement alloc] initWithAttributes:v10 parent:self];
  [(RUIElement *)self performAction:2 forElement:v9 completion:0];
}

- (void)headerViewDidChange:(id)a3
{
  v4 = a3;
  v5 = [(RUITableViewSection *)self tableElement];
  v6 = [v5 sections];
  v7 = [v6 indexOfObject:self];

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __43__RUITableViewSection_headerViewDidChange___block_invoke;
  block[3] = &unk_2782E8398;
  v10 = v4;
  v11 = self;
  v12 = v7;
  v8 = v4;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __43__RUITableViewSection_headerViewDidChange___block_invoke(uint64_t a1)
{
  v6[1] = *MEMORY[0x277D85DE8];
  [*(a1 + 32) setNeedsLayout];
  v2 = [*(a1 + 40) tableElement];
  v3 = [v2 tableView];
  v4 = [MEMORY[0x277CCAA70] indexPathForRow:0 inSection:*(a1 + 48)];
  v6[0] = v4;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:1];
  [v3 reconfigureRowsAtIndexPaths:v5];
}

- (void)setImage:(id)a3
{
  v5 = a3;
  if (objc_opt_respondsToSelector())
  {
    [(RUIHeader *)self->_headerView setIconImage:v5];
    v4 = [(RUIElement *)self parent];
    [v4 reloadHeadersAndFootersForSection:self];
  }
}

- (void)setImageSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  if (objc_opt_respondsToSelector())
  {
    [(RUIHeader *)self->_headerView setImageSize:width, height];
    v6 = [(RUIElement *)self parent];
    [v6 reloadHeadersAndFootersForSection:self];
  }
}

- (void)setImageAlignment:(unint64_t)a3
{
  if (objc_opt_respondsToSelector())
  {
    [(RUIHeader *)self->_headerView setImageAlignment:a3];
    v5 = [(RUIElement *)self parent];
    [v5 reloadHeadersAndFootersForSection:self];
  }
}

- (BOOL)hasCustomHeader
{
  if (self->_headerView || [(RUITableViewSection *)self _customHeaderClass])
  {
    isKindOfClass = 1;
  }

  else
  {
    v5 = [(RUITableViewSection *)self header];
    v6 = objc_opt_self();
    isKindOfClass = objc_opt_isKindOfClass();
  }

  return isKindOfClass & 1;
}

- (Class)_customFooterClass
{
  v3 = [(RUIElement *)self parent];
  v4 = [(RUITableViewSection *)self footer];
  v5 = [v4 attributes];
  v6 = [v5 objectForKeyedSubscript:@"privacyBundleIdentifier"];

  if (v6)
  {
    goto LABEL_2;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = [v3 objectModel];
    v11 = [v10 customFooterClassForSection:self];

    if (v11)
    {
      v7 = v11;
      goto LABEL_3;
    }
  }

  v12 = [(RUITableViewSection *)self footer];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
LABEL_2:
    v7 = objc_opt_class();
LABEL_3:
    v8 = v7;
    goto LABEL_4;
  }

  v14 = [(RUITableViewSection *)self footer];
  v15 = [v14 attributes];
  v16 = [v15 objectForKeyedSubscript:@"url"];
  if (!v16)
  {
    v17 = [(RUITableViewSection *)self footer];
    v18 = [v17 attributes];
    [v18 objectForKeyedSubscript:@"activationFunction"];
  }

  v19 = [(RUITableViewSection *)self footer];
  v20 = [v19 attributes];
  v21 = [v20 objectForKeyedSubscript:@"color"];
  if (!v21)
  {
    v22 = [(RUIElement *)self style];
    v23 = +[RUIStyle defaultStyle];
    [v22 isMemberOfClass:objc_opt_class()];
  }

  v24 = [(RUITableViewSection *)self footer];
  if (v24)
  {

    goto LABEL_2;
  }

  v8 = 0;
LABEL_4:

  return v8;
}

- (RUITableViewHeaderFooterView)containerizedFooterView
{
  v3 = [(RUITableViewSection *)self footerView];
  v4 = v3;
  containerizedFooterView = self->_containerizedFooterView;
  if (containerizedFooterView)
  {
    v6 = 1;
  }

  else
  {
    v6 = v3 == 0;
  }

  if (!v6)
  {
    v7 = objc_opt_new();
    v8 = self->_containerizedFooterView;
    self->_containerizedFooterView = v7;

    [(RUITableViewHeaderFooterView *)self->_containerizedFooterView embedFooterView:v4];
    containerizedFooterView = self->_containerizedFooterView;
  }

  v9 = containerizedFooterView;

  return containerizedFooterView;
}

- (RemoteUITableFooter)footerView
{
  footerView = self->_footerView;
  if (!footerView)
  {
    v4 = objc_alloc([(RUITableViewSection *)self _customFooterClass]);
    v5 = [(RUITableViewSection *)self footer];
    v6 = [v5 attributes];
    v7 = [v4 initWithAttributes:v6];
    v8 = self->_footerView;
    self->_footerView = v7;

    [(RUIElement *)self->_footer configureView:self->_footerView];
    if (objc_opt_respondsToSelector())
    {
      [(RemoteUITableFooter *)self->_footerView setDelegate:self];
    }

    footerView = self->_footerView;
  }

  v9 = footerView;

  return v9;
}

- (void)footerView:(id)a3 activatedLinkWithURL:(id)a4
{
  v5 = a4;
  v6 = [(RUITableViewSection *)self footer];
  v7 = [v6 attributes];
  v10 = [v7 mutableCopy];

  v8 = [v5 absoluteString];

  [v10 setObject:v8 forKeyedSubscript:@"url"];
  v9 = [[RUIElement alloc] initWithAttributes:v10 parent:self];
  [(RUIElement *)self performAction:2 forElement:v9 completion:0];
}

- (BOOL)hasCustomFooter
{
  if (self->_footerView || [(RUITableViewSection *)self _customFooterClass])
  {
    isKindOfClass = 1;
  }

  else
  {
    v5 = [(RUITableViewSection *)self header];
    v6 = objc_opt_self();
    isKindOfClass = objc_opt_isKindOfClass();
  }

  return isKindOfClass & 1;
}

- (void)populatePostbackDictionary:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = self->_rows;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v10 + 1) + 8 * v9++) populatePostbackDictionary:{v4, v10}];
      }

      while (v7 != v9);
      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (id)subElementWithID:(id)a3
{
  v30 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v5 = self->_rows;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v26;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v26 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v25 + 1) + 8 * i);
        v11 = [v10 identifier];
        v12 = [v11 isEqualToString:v4];

        if (v12)
        {
          v13 = v10;
LABEL_16:
          v23 = v13;

          goto LABEL_17;
        }

        v13 = [v10 subElementWithID:v4];
        if (v13)
        {
          goto LABEL_16;
        }
      }

      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v25 objects:v29 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v14 = 152;
  v15 = [(RUIElement *)self->_header identifier];
  v16 = [v15 isEqualToString:v4];

  if (v16 || (v14 = 160, -[RUIElement identifier](self->_subHeader, "identifier"), v17 = objc_claimAutoreleasedReturnValue(), v18 = [v17 isEqualToString:v4], v17, v18) || (v14 = 168, -[RUIElement identifier](self->_detailHeader, "identifier"), v19 = objc_claimAutoreleasedReturnValue(), v20 = objc_msgSend(v19, "isEqualToString:", v4), v19, v20) || (v14 = 176, -[RUIElement identifier](self->_footer, "identifier"), v21 = objc_claimAutoreleasedReturnValue(), v22 = objc_msgSend(v21, "isEqualToString:", v4), v21, v22))
  {
    v23 = *(&self->super.super.isa + v14);
  }

  else
  {
    v23 = 0;
  }

LABEL_17:

  return v23;
}

- (id)viewForElementIdentifier:(id)a3
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(RUIElement *)self->_header identifier];
  if ([v5 isEqualToString:v4])
  {
    goto LABEL_4;
  }

  v6 = [(RUIElement *)self->_subHeader identifier];
  if ([v6 isEqualToString:v4])
  {

LABEL_4:
LABEL_5:
    v7 = 112;
LABEL_6:
    v8 = *(&self->super.super.isa + v7);
    goto LABEL_7;
  }

  v10 = [(RUIElement *)self->_detailHeader identifier];
  v11 = [v10 isEqualToString:v4];

  if (v11)
  {
    goto LABEL_5;
  }

  v12 = [(RUIElement *)self->_footer identifier];
  v13 = [v12 isEqualToString:v4];

  if (v13)
  {
    v7 = 120;
    goto LABEL_6;
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v14 = self->_rows;
  v15 = [(NSMutableArray *)v14 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v21;
    while (2)
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v21 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = [*(*(&v20 + 1) + 8 * i) viewForElementIdentifier:{v4, v20}];
        if (v19)
        {
          v8 = v19;

          goto LABEL_7;
        }
      }

      v16 = [(NSMutableArray *)v14 countByEnumeratingWithState:&v20 objects:v24 count:16];
      if (v16)
      {
        continue;
      }

      break;
    }
  }

  v8 = 0;
LABEL_7:

  return v8;
}

- (id)subElementsWithName:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_opt_new();
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = self->_rows;
  v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v17;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v16 + 1) + 8 * i);
        v12 = [v11 name];
        v13 = [v12 isEqualToString:v4];

        if (v13)
        {
          [v5 addObject:v11];
        }

        v14 = [v11 subElementsWithName:v4];
        [v5 addObjectsFromArray:v14];
      }

      v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v8);
  }

  return v5;
}

- (RUITableView)tableElement
{
  WeakRetained = objc_loadWeakRetained(&self->_tableElement);

  return WeakRetained;
}

- (void)reportInternalRenderEvent
{
  v2 = self;
  RUITableViewSection.reportInternalRenderEvent()();
}

@end