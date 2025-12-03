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
- (RUITableViewSection)initWithAttributes:(id)attributes parent:(id)parent;
- (RemoteUITableFooter)footerView;
- (id)colorFromAttributeString:(id)string;
- (id)copyWithZone:(_NSZone *)zone;
- (id)staticFunctions;
- (id)staticValues;
- (id)subElementWithID:(id)d;
- (id)subElementsWithName:(id)name;
- (id)viewForElementIdentifier:(id)identifier;
- (void)footerView:(id)view activatedLinkWithURL:(id)l;
- (void)headerView:(id)view activatedLinkWithURL:(id)l;
- (void)headerViewDidChange:(id)change;
- (void)populatePostbackDictionary:(id)dictionary;
- (void)reportInternalRenderEvent;
- (void)setAttributes:(id)attributes;
- (void)setDrawTopSeparator:(BOOL)separator;
- (void)setImage:(id)image;
- (void)setImageAlignment:(unint64_t)alignment;
- (void)setImageSize:(CGSize)size;
- (void)tappedShowAllRowWithTable:(id)table;
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

- (RUITableViewSection)initWithAttributes:(id)attributes parent:(id)parent
{
  v12.receiver = self;
  v12.super_class = RUITableViewSection;
  v4 = [(RUIElement *)&v12 initWithAttributes:attributes parent:parent];
  if (v4)
  {
    v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
    rows = v4->_rows;
    v4->_rows = v5;

    style = [(RUIElement *)v4 style];

    if (style)
    {
      style2 = [(RUIElement *)v4 style];
      [style2 sectionHeaderHeight];
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

- (void)setDrawTopSeparator:(BOOL)separator
{
  v4 = [objc_alloc(MEMORY[0x277CCABB0]) initWithBool:separator];
  drawsTopSeparator = self->_drawsTopSeparator;
  self->_drawsTopSeparator = v4;

  MEMORY[0x2821F96F8](v4, drawsTopSeparator);
}

- (id)copyWithZone:(_NSZone *)zone
{
  attributes = [(RUIElement *)self attributes];
  v5 = [RUITableViewSection alloc];
  attributes2 = [(RUIElement *)self attributes];
  parent = [(RUIElement *)self parent];
  v8 = [(RUITableViewSection *)v5 initWithAttributes:attributes2 parent:parent];

  [(RUITableViewSection *)v8 setAttributes:attributes];
  style = [(RUIElement *)self style];
  [(RUIElement *)v8 setStyle:style];

  tableElement = [(RUITableViewSection *)self tableElement];
  [(RUITableViewSection *)v8 setTableElement:tableElement];

  v11 = [attributes objectForKeyedSubscript:@"header"];

  if (v11)
  {
    v12 = [(RUIElement *)[RUIHeaderElement alloc] initWithAttributes:0 parent:v8];
    v13 = [attributes objectForKeyedSubscript:@"header"];
    [(RUIElement *)v12 setBody:v13];

    [(RUITableViewSection *)v8 setHeader:v12];
    v14 = [attributes objectForKeyedSubscript:@"headerHeight"];

    if (v14)
    {
      v15 = [attributes objectForKeyedSubscript:@"headerHeight"];
      [v15 floatValue];
      [(RUITableViewSection *)v8 setHeaderHeight:v16];
    }
  }

  v17 = [attributes objectForKeyedSubscript:@"footer"];

  if (v17)
  {
    v18 = [(RUIElement *)[RUIFooterElement alloc] initWithAttributes:0 parent:v8];
    v19 = [attributes objectForKeyedSubscript:@"footer"];
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
      style = [(RUIElement *)self style];
      [(RUIElement *)v10 setStyle:style];

      tableCell = [(RUITableViewRow *)self->_showAllRow tableCell];
      ruiTextLabel = [tableCell ruiTextLabel];
      style2 = [(RUIElement *)self style];
      buttonRowTextColor = [style2 buttonRowTextColor];
      [ruiTextLabel setTextColor:buttonRowTextColor];

      tableCell2 = [(RUITableViewRow *)self->_showAllRow tableCell];
      [tableCell2 setIndentationLevel:1];

      tableCell3 = [(RUITableViewRow *)self->_showAllRow tableCell];
      attributes = [(RUIElement *)self attributes];
      v19 = [attributes objectForKey:@"showAllIndent"];
      [tableCell3 setIndentationWidth:{objc_msgSend(v19, "integerValue")}];
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

- (void)tappedShowAllRowWithTable:(id)table
{
  v12[1] = *MEMORY[0x277D85DE8];
  tableCopy = table;
  tableCell = [(RUITableViewRow *)self->_showAllRow tableCell];
  v6 = [tableCopy indexPathForCell:tableCell];

  v7 = [MEMORY[0x277CBEB18] arrayWithCapacity:{-[NSMutableArray count](self->_rows, "count") - self->_disclosureLimit}];
  for (i = self->_disclosureLimit; i < [(NSMutableArray *)self->_rows count]; ++i)
  {
    v9 = [MEMORY[0x277CCAA70] indexPathForRow:i inSection:{objc_msgSend(v6, "section")}];
    [v7 addObject:v9];
  }

  self->_disclosureLimit = 0;
  showAllRow = self->_showAllRow;
  self->_showAllRow = 0;

  [tableCopy beginUpdates];
  v12[0] = v6;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:1];
  [tableCopy deleteRowsAtIndexPaths:v11 withRowAnimation:0];

  [tableCopy insertRowsAtIndexPaths:v7 withRowAnimation:0];
  [tableCopy endUpdates];
}

- (void)setAttributes:(id)attributes
{
  v7.receiver = self;
  v7.super_class = RUITableViewSection;
  attributesCopy = attributes;
  [(RUIElement *)&v7 setAttributes:attributesCopy];
  v5 = [attributesCopy objectForKey:{@"disclosureLimit", v7.receiver, v7.super_class}];
  self->_disclosureLimit = [v5 integerValue];

  v6 = [attributesCopy objectForKey:@"hideTopSeparator"];

  -[RUITableViewSection setDrawTopSeparator:](self, "setDrawTopSeparator:", [v6 BOOLValue] ^ 1);
}

- (id)colorFromAttributeString:(id)string
{
  if (string)
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
  parent = [(RUIElement *)self parent];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objectModel = [parent objectModel];
    v5 = [objectModel customHeaderClassForSection:self];

    if (v5)
    {
      v6 = v5;
LABEL_11:
      v12 = v6;
      goto LABEL_12;
    }
  }

  header = [(RUITableViewSection *)self header];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
LABEL_10:
    v6 = objc_opt_class();
    goto LABEL_11;
  }

  attributes = [(RUIElement *)self attributes];
  attributes2 = [attributes objectForKey:@"image"];
  if (attributes2)
  {
    goto LABEL_8;
  }

  attributes2 = [(RUIElement *)self attributes];
  v11 = [attributes2 objectForKey:@"image2x"];
  if (v11)
  {

LABEL_8:
LABEL_9:

    goto LABEL_10;
  }

  attributes3 = [(RUIElement *)self attributes];
  v15 = [attributes3 objectForKey:@"image3x"];

  if (v15)
  {
    goto LABEL_10;
  }

  detailHeader = [(RUITableViewSection *)self detailHeader];
  if (detailHeader || ([(RUITableViewSection *)self subHeader], (detailHeader = objc_claimAutoreleasedReturnValue()) != 0))
  {
    attributes = detailHeader;
    goto LABEL_9;
  }

  header2 = [(RUITableViewSection *)self header];
  attributes4 = [header2 attributes];
  v19 = [attributes4 objectForKeyedSubscript:@"color"];

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
  headerView = [(RUITableViewSection *)self headerView];
  v4 = headerView;
  containerizedHeaderView = self->_containerizedHeaderView;
  if (containerizedHeaderView)
  {
    v6 = 1;
  }

  else
  {
    v6 = headerView == 0;
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
    header = [(RUITableViewSection *)self header];
    attributes = [header attributes];
    v7 = [v4 initWithAttributes:attributes];
    v8 = self->_headerView;
    self->_headerView = v7;

    header2 = [(RUITableViewSection *)self header];
    attributes2 = [header2 attributes];
    v11 = [attributes2 objectForKeyedSubscript:@"largeFont"];

    if (!v11)
    {
      v12 = +[RUIPlatform isSolariumEnabled];
      header = self->_header;
      body = [(RUIElement *)header body];
      v15 = body;
      if (v12)
      {
        [(RUIElement *)header setBody:body];
      }

      else
      {
        localizedUppercaseString = [body localizedUppercaseString];
        [(RUIElement *)header setBody:localizedUppercaseString];
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

- (void)headerView:(id)view activatedLinkWithURL:(id)l
{
  lCopy = l;
  header = [(RUITableViewSection *)self header];
  attributes = [header attributes];
  v10 = [attributes mutableCopy];

  absoluteString = [lCopy absoluteString];

  [v10 setObject:absoluteString forKeyedSubscript:@"url"];
  v9 = [[RUIElement alloc] initWithAttributes:v10 parent:self];
  [(RUIElement *)self performAction:2 forElement:v9 completion:0];
}

- (void)headerViewDidChange:(id)change
{
  changeCopy = change;
  tableElement = [(RUITableViewSection *)self tableElement];
  sections = [tableElement sections];
  v7 = [sections indexOfObject:self];

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __43__RUITableViewSection_headerViewDidChange___block_invoke;
  block[3] = &unk_2782E8398;
  v10 = changeCopy;
  selfCopy = self;
  v12 = v7;
  v8 = changeCopy;
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

- (void)setImage:(id)image
{
  imageCopy = image;
  if (objc_opt_respondsToSelector())
  {
    [(RUIHeader *)self->_headerView setIconImage:imageCopy];
    parent = [(RUIElement *)self parent];
    [parent reloadHeadersAndFootersForSection:self];
  }
}

- (void)setImageSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  if (objc_opt_respondsToSelector())
  {
    [(RUIHeader *)self->_headerView setImageSize:width, height];
    parent = [(RUIElement *)self parent];
    [parent reloadHeadersAndFootersForSection:self];
  }
}

- (void)setImageAlignment:(unint64_t)alignment
{
  if (objc_opt_respondsToSelector())
  {
    [(RUIHeader *)self->_headerView setImageAlignment:alignment];
    parent = [(RUIElement *)self parent];
    [parent reloadHeadersAndFootersForSection:self];
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
    header = [(RUITableViewSection *)self header];
    v6 = objc_opt_self();
    isKindOfClass = objc_opt_isKindOfClass();
  }

  return isKindOfClass & 1;
}

- (Class)_customFooterClass
{
  parent = [(RUIElement *)self parent];
  footer = [(RUITableViewSection *)self footer];
  attributes = [footer attributes];
  v6 = [attributes objectForKeyedSubscript:@"privacyBundleIdentifier"];

  if (v6)
  {
    goto LABEL_2;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objectModel = [parent objectModel];
    v11 = [objectModel customFooterClassForSection:self];

    if (v11)
    {
      v7 = v11;
      goto LABEL_3;
    }
  }

  footer2 = [(RUITableViewSection *)self footer];
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

  footer3 = [(RUITableViewSection *)self footer];
  attributes2 = [footer3 attributes];
  v16 = [attributes2 objectForKeyedSubscript:@"url"];
  if (!v16)
  {
    footer4 = [(RUITableViewSection *)self footer];
    attributes3 = [footer4 attributes];
    [attributes3 objectForKeyedSubscript:@"activationFunction"];
  }

  footer5 = [(RUITableViewSection *)self footer];
  attributes4 = [footer5 attributes];
  v21 = [attributes4 objectForKeyedSubscript:@"color"];
  if (!v21)
  {
    style = [(RUIElement *)self style];
    v23 = +[RUIStyle defaultStyle];
    [style isMemberOfClass:objc_opt_class()];
  }

  footer6 = [(RUITableViewSection *)self footer];
  if (footer6)
  {

    goto LABEL_2;
  }

  v8 = 0;
LABEL_4:

  return v8;
}

- (RUITableViewHeaderFooterView)containerizedFooterView
{
  footerView = [(RUITableViewSection *)self footerView];
  v4 = footerView;
  containerizedFooterView = self->_containerizedFooterView;
  if (containerizedFooterView)
  {
    v6 = 1;
  }

  else
  {
    v6 = footerView == 0;
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
    footer = [(RUITableViewSection *)self footer];
    attributes = [footer attributes];
    v7 = [v4 initWithAttributes:attributes];
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

- (void)footerView:(id)view activatedLinkWithURL:(id)l
{
  lCopy = l;
  footer = [(RUITableViewSection *)self footer];
  attributes = [footer attributes];
  v10 = [attributes mutableCopy];

  absoluteString = [lCopy absoluteString];

  [v10 setObject:absoluteString forKeyedSubscript:@"url"];
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
    header = [(RUITableViewSection *)self header];
    v6 = objc_opt_self();
    isKindOfClass = objc_opt_isKindOfClass();
  }

  return isKindOfClass & 1;
}

- (void)populatePostbackDictionary:(id)dictionary
{
  v15 = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
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

        [*(*(&v10 + 1) + 8 * v9++) populatePostbackDictionary:{dictionaryCopy, v10}];
      }

      while (v7 != v9);
      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (id)subElementWithID:(id)d
{
  v30 = *MEMORY[0x277D85DE8];
  dCopy = d;
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
        identifier = [v10 identifier];
        v12 = [identifier isEqualToString:dCopy];

        if (v12)
        {
          v13 = v10;
LABEL_16:
          v23 = v13;

          goto LABEL_17;
        }

        v13 = [v10 subElementWithID:dCopy];
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
  identifier2 = [(RUIElement *)self->_header identifier];
  v16 = [identifier2 isEqualToString:dCopy];

  if (v16 || (v14 = 160, -[RUIElement identifier](self->_subHeader, "identifier"), v17 = objc_claimAutoreleasedReturnValue(), v18 = [v17 isEqualToString:dCopy], v17, v18) || (v14 = 168, -[RUIElement identifier](self->_detailHeader, "identifier"), v19 = objc_claimAutoreleasedReturnValue(), v20 = objc_msgSend(v19, "isEqualToString:", dCopy), v19, v20) || (v14 = 176, -[RUIElement identifier](self->_footer, "identifier"), v21 = objc_claimAutoreleasedReturnValue(), v22 = objc_msgSend(v21, "isEqualToString:", dCopy), v21, v22))
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

- (id)viewForElementIdentifier:(id)identifier
{
  v25 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  identifier = [(RUIElement *)self->_header identifier];
  if ([identifier isEqualToString:identifierCopy])
  {
    goto LABEL_4;
  }

  identifier2 = [(RUIElement *)self->_subHeader identifier];
  if ([identifier2 isEqualToString:identifierCopy])
  {

LABEL_4:
LABEL_5:
    v7 = 112;
LABEL_6:
    v8 = *(&self->super.super.isa + v7);
    goto LABEL_7;
  }

  identifier3 = [(RUIElement *)self->_detailHeader identifier];
  v11 = [identifier3 isEqualToString:identifierCopy];

  if (v11)
  {
    goto LABEL_5;
  }

  identifier4 = [(RUIElement *)self->_footer identifier];
  v13 = [identifier4 isEqualToString:identifierCopy];

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

        v19 = [*(*(&v20 + 1) + 8 * i) viewForElementIdentifier:{identifierCopy, v20}];
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

- (id)subElementsWithName:(id)name
{
  v21 = *MEMORY[0x277D85DE8];
  nameCopy = name;
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
        name = [v11 name];
        v13 = [name isEqualToString:nameCopy];

        if (v13)
        {
          [v5 addObject:v11];
        }

        v14 = [v11 subElementsWithName:nameCopy];
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
  selfCopy = self;
  RUITableViewSection.reportInternalRenderEvent()();
}

@end