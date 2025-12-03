@interface RUITopLevelElementParser
+ (id)rowWithAttributeDict:(id)dict delegate:(id)delegate parent:(id)parent;
+ (id)tableRowClassForElementName:(id)name;
+ (id)textStyleForString:(id)string;
+ (int64_t)textAlignmentForString:(id)string;
- (RUITopLevelElementParser)initWithXMLElement:(id)element elementProvider:(id)provider objectModel:(id)model delegate:(id)delegate;
- (RUITopLevelElementParserDelegate)delegate;
- (id)_createPageWithName:(id)name attributes:(id)attributes;
- (id)_lastRow;
- (id)_newRowWithAttributeDict:(id)dict;
- (id)_newRowWithAttributeDict:(id)dict tableViewOM:(id)m;
- (id)baseURL;
- (id)page;
- (void)_addNavigationBarWithAttributes:(id)attributes;
- (void)_addNavigationBarWithAttributes:(id)attributes toPage:(id)page;
- (void)_addSectionWithAttributes:(id)attributes toTableViewOM:(id)m xmlElement:(id)element;
- (void)_addSectionWithAttributes:(id)attributes xmlElement:(id)element;
- (void)_finalizeElement:(id)element;
- (void)_finalizePinView;
- (void)_finalizeSection;
- (void)_logDeprecation:(id)deprecation value:(id)value;
- (void)parse;
- (void)traversalDelegateDidEndlement:(id)endlement;
- (void)traversalDelegateDidStartElement:(id)element;
- (void)traversalDelegateFoundCData:(id)data;
@end

@implementation RUITopLevelElementParser

+ (int64_t)textAlignmentForString:(id)string
{
  stringCopy = string;
  if ([(__CFString *)stringCopy length])
  {
    v8.length = [(__CFString *)stringCopy length];
    v8.location = 0;
    v4 = CFStringTokenizerCopyBestStringLanguage(stringCopy, v8);
    v5 = [MEMORY[0x277CBEAF8] characterDirectionForLanguage:v4];
    if ([(__CFString *)stringCopy isEqualToString:@"right"])
    {
      v6 = 2 * (v5 != 2);
    }

    else
    {
      v6 = 2 * (v5 == 2);
      if (([(__CFString *)stringCopy isEqualToString:@"left"]& 1) == 0 && [(__CFString *)stringCopy isEqualToString:@"center"])
      {
        v6 = 1;
      }
    }
  }

  else
  {
    v6 = 4;
  }

  return v6;
}

+ (id)textStyleForString:(id)string
{
  stringCopy = string;
  v4 = *MEMORY[0x277D76918];
  v5 = v4;
  if ([stringCopy length])
  {
    if ([stringCopy isEqualToString:@"largeTitle"])
    {
      v6 = MEMORY[0x277D769A8];
LABEL_12:
      v5 = *v6;
      goto LABEL_13;
    }

    if ([stringCopy isEqualToString:@"title1"])
    {
      v6 = MEMORY[0x277D76A08];
      goto LABEL_12;
    }

    if ([stringCopy isEqualToString:@"title2"])
    {
      v6 = MEMORY[0x277D76A20];
      goto LABEL_12;
    }

    if ([stringCopy isEqualToString:@"title3"])
    {
      v6 = MEMORY[0x277D76A28];
      goto LABEL_12;
    }

    if ([stringCopy isEqualToString:@"headline"])
    {
      v6 = MEMORY[0x277D76988];
      goto LABEL_12;
    }

    v5 = v4;
    if ([stringCopy isEqualToString:@"body"])
    {
      goto LABEL_13;
    }

    if ([stringCopy isEqualToString:@"callout"])
    {
      v6 = MEMORY[0x277D76920];
      goto LABEL_12;
    }

    if ([stringCopy isEqualToString:@"subheadline"])
    {
      v6 = MEMORY[0x277D769D0];
      goto LABEL_12;
    }

    if ([stringCopy isEqualToString:@"footnote"])
    {
      v6 = MEMORY[0x277D76968];
      goto LABEL_12;
    }

    if ([stringCopy isEqualToString:@"caption1"])
    {
      v6 = MEMORY[0x277D76938];
      goto LABEL_12;
    }

    if ([stringCopy isEqualToString:@"caption2"])
    {
      v5 = *MEMORY[0x277D76940];
    }

    else
    {
      v5 = v4;
    }
  }

LABEL_13:
  v7 = v5;

  return v5;
}

+ (id)tableRowClassForElementName:(id)name
{
  nameCopy = name;
  if (([nameCopy hasSuffix:@"Row"] & 1) != 0 || objc_msgSend(nameCopy, "hasSuffix:", @"row"))
  {
    v4 = [nameCopy substringToIndex:{objc_msgSend(nameCopy, "length") - 3}];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (RUITopLevelElementParser)initWithXMLElement:(id)element elementProvider:(id)provider objectModel:(id)model delegate:(id)delegate
{
  elementCopy = element;
  providerCopy = provider;
  modelCopy = model;
  delegateCopy = delegate;
  v22.receiver = self;
  v22.super_class = RUITopLevelElementParser;
  v15 = [(RUITopLevelElementParser *)&v22 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_xmlElement, element);
    objc_storeStrong(&v16->_objectModel, model);
    objc_storeStrong(&v16->_elementProvider, provider);
    v17 = objc_opt_new();
    accumulator = v16->_accumulator;
    v16->_accumulator = v17;

    v19 = objc_opt_new();
    elementStack = v16->_elementStack;
    v16->_elementStack = v19;

    objc_storeWeak(&v16->_delegate, delegateCopy);
  }

  return v16;
}

- (void)parse
{
  xmlElement = [(RUITopLevelElementParser *)self xmlElement];
  [xmlElement traverseWithDelegate:self];
}

- (id)baseURL
{
  objectModel = [(RUITopLevelElementParser *)self objectModel];
  sourceURL = [objectModel sourceURL];

  return sourceURL;
}

+ (id)rowWithAttributeDict:(id)dict delegate:(id)delegate parent:(id)parent
{
  dictCopy = dict;
  parentCopy = parent;
  delegateCopy = delegate;
  v10 = [dictCopy objectForKeyedSubscript:@"class"];
  if ([v10 isEqualToString:@"customContent"])
  {
    v11 = [[_TtC8RemoteUI19RUICustomContentRow alloc] initWithAttributes:dictCopy parent:parentCopy];
    if (v11)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  if (![v10 isEqualToString:@"swiftUI"] || (v11 = -[RUISwiftUITableViewRow initWithAttributes:parent:]([_TtC8RemoteUI22RUISwiftUITableViewRow alloc], "initWithAttributes:parent:", dictCopy, parentCopy), -[RUITableViewRow setSelectionScrollBehavior:](v11, "setSelectionScrollBehavior:", 1), !v11))
  {
LABEL_6:
    v11 = [(RUIElement *)[RUITableViewRow alloc] initWithAttributes:dictCopy parent:parentCopy];
  }

LABEL_7:
  [(RUITableViewRow *)v11 setDelegate:delegateCopy];

  style = [parentCopy style];
  [(RUIElement *)v11 setStyle:style];

  v13 = [dictCopy objectForKeyedSubscript:@"checked"];
  -[RUISwiftUITableViewRow setSelected:](v11, "setSelected:", [v13 BOOLValue]);

  v14 = [dictCopy objectForKeyedSubscript:@"align"];
  if (![v14 length])
  {
    style2 = [parentCopy style];
    -[RUITableViewRow setAlignment:](v11, "setAlignment:", [style2 labelRowTextAlignment]);

    goto LABEL_16;
  }

  if ([v14 isEqualToString:@"center"])
  {
    v15 = v11;
    v16 = 1;
  }

  else if ([v14 isEqualToString:@"right"])
  {
    v15 = v11;
    v16 = 2;
  }

  else
  {
    if (![v14 isEqualToString:@"left"])
    {
      goto LABEL_16;
    }

    v15 = v11;
    v16 = 0;
  }

  [(RUITableViewRow *)v15 setAlignment:v16];
LABEL_16:

  return v11;
}

- (id)_newRowWithAttributeDict:(id)dict
{
  dictCopy = dict;
  elementProvider = [(RUITopLevelElementParser *)self elementProvider];
  makeTableViewOM = [elementProvider makeTableViewOM];
  v7 = [(RUITopLevelElementParser *)self _newRowWithAttributeDict:dictCopy tableViewOM:makeTableViewOM];

  return v7;
}

- (id)_newRowWithAttributeDict:(id)dict tableViewOM:(id)m
{
  mCopy = m;
  dictCopy = dict;
  sections = [mCopy sections];
  lastObject = [sections lastObject];

  v9 = [objc_opt_class() rowWithAttributeDict:dictCopy delegate:mCopy parent:lastObject];

  [lastObject addRow:v9];
  return v9;
}

- (id)page
{
  elementProvider = [(RUITopLevelElementParser *)self elementProvider];
  parentElement = [elementProvider parentElement];
  pageElement = [parentElement pageElement];
  page = [pageElement page];

  return page;
}

- (id)_lastRow
{
  elementProvider = [(RUITopLevelElementParser *)self elementProvider];
  makeTableViewOM = [elementProvider makeTableViewOM];
  sections = [makeTableViewOM sections];
  lastObject = [sections lastObject];

  rows = [lastObject rows];
  lastObject2 = [rows lastObject];

  return lastObject2;
}

- (void)_addNavigationBarWithAttributes:(id)attributes
{
  attributesCopy = attributes;
  page = [(RUITopLevelElementParser *)self page];
  [(RUITopLevelElementParser *)self _addNavigationBarWithAttributes:attributesCopy toPage:page];
}

- (void)_addNavigationBarWithAttributes:(id)attributes toPage:(id)page
{
  attributesCopy = attributes;
  pageCopy = page;
  v6 = [attributesCopy objectForKey:@"title"];
  if ([v6 length])
  {
    [pageCopy setNavTitle:v6];
  }

  v7 = [attributesCopy objectForKey:@"subTitle"];
  if ([v7 length])
  {
    [pageCopy setNavSubTitle:v7];
  }

  v8 = [attributesCopy objectForKey:@"backButtonTitle"];
  if (v8)
  {
    [pageCopy setBackButtonTitle:v8];
  }

  v9 = [attributesCopy objectForKey:@"hidesBackButton"];
  [pageCopy setHidesBackButton:{objc_msgSend(v9, "BOOLValue")}];
}

- (void)_addSectionWithAttributes:(id)attributes xmlElement:(id)element
{
  elementCopy = element;
  attributesCopy = attributes;
  elementProvider = [(RUITopLevelElementParser *)self elementProvider];
  makeTableViewOM = [elementProvider makeTableViewOM];
  [(RUITopLevelElementParser *)self _addSectionWithAttributes:attributesCopy toTableViewOM:makeTableViewOM xmlElement:elementCopy];
}

- (void)_addSectionWithAttributes:(id)attributes toTableViewOM:(id)m xmlElement:(id)element
{
  attributesCopy = attributes;
  mCopy = m;
  elementCopy = element;
  v10 = [[RUITableViewSection alloc] initWithAttributes:attributesCopy parent:mCopy];
  [(RUITableViewSection *)v10 setAttributes:attributesCopy];
  style = [(RUIObjectModel *)self->_objectModel style];
  [(RUIElement *)v10 setStyle:style];

  [(RUITableViewSection *)v10 setTableElement:mCopy];
  [(RUIElement *)v10 setSourceXMLElement:elementCopy];

  v12 = [attributesCopy objectForKeyedSubscript:@"header"];

  if (v12)
  {
    v13 = [(RUIElement *)[RUIHeaderElement alloc] initWithAttributes:0 parent:v10];
    v14 = [attributesCopy objectForKeyedSubscript:@"header"];
    [(RUIElement *)v13 setBody:v14];

    [(RUITableViewSection *)v10 setHeader:v13];
    v15 = [attributesCopy objectForKeyedSubscript:@"headerHeight"];

    if (v15)
    {
      v16 = [attributesCopy objectForKeyedSubscript:@"headerHeight"];
      [v16 floatValue];
      [(RUITableViewSection *)v10 setHeaderHeight:v17];
    }
  }

  v18 = [attributesCopy objectForKeyedSubscript:@"footer"];

  if (v18)
  {
    v19 = [(RUIElement *)[RUIFooterElement alloc] initWithAttributes:0 parent:v10];
    v20 = [attributesCopy objectForKeyedSubscript:@"footer"];
    [(RUIElement *)v19 setBody:v20];

    [(RUITableViewSection *)v10 setFooter:v19];
  }

  sections = [mCopy sections];
  [sections addObject:v10];
}

- (void)_logDeprecation:(id)deprecation value:(id)value
{
  v21 = *MEMORY[0x277D85DE8];
  deprecationCopy = deprecation;
  valueCopy = value;
  if (valueCopy)
  {
    valueCopy = [MEMORY[0x277CCACA8] stringWithFormat:@" = %@", valueCopy];
  }

  else
  {
    valueCopy = &stru_282D68F58;
  }

  if (_isInternalInstall())
  {
    v9 = _RUILoggingFacility();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      objectModel = [(RUITopLevelElementParser *)self objectModel];
      sourceURL = [objectModel sourceURL];
      lastObject = [(NSMutableArray *)self->_elementStack lastObject];
      *buf = 138413058;
      v14 = sourceURL;
      v15 = 2112;
      v16 = deprecationCopy;
      v17 = 2112;
      v18 = valueCopy;
      v19 = 2112;
      v20 = lastObject;
      _os_log_impl(&dword_21B93D000, v9, OS_LOG_TYPE_DEFAULT, "Page with baseURL %@ is using deprecated feature %@%@ in %@ element", buf, 0x2Au);
    }
  }
}

- (void)_finalizePinView
{
  selfCopy = self;
  v55 = *MEMORY[0x277D85DE8];
  page = [(RUITopLevelElementParser *)self page];
  passcodeViewOM = [page passcodeViewOM];
  attributes = [passcodeViewOM attributes];
  v6 = [attributes mutableCopy];

  attributes2 = [passcodeViewOM attributes];
  v8 = [(RUIFooterElement *)attributes2 objectForKeyedSubscript:@"footer"];
  if (v8)
  {
    v9 = v8;
    footer = [passcodeViewOM footer];

    if (footer)
    {
      goto LABEL_25;
    }

    if (_isInternalInstall())
    {
      v11 = _RUILoggingFacility();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        baseURL = [(RUITopLevelElementParser *)selfCopy baseURL];
        *buf = 138412290;
        v54 = baseURL;
        _os_log_impl(&dword_21B93D000, v11, OS_LOG_TYPE_DEFAULT, "Page with baseURL %@ is using deprecated pinView attribute 'footer'. Use <footer> instead.", buf, 0xCu);
      }
    }

    attributes2 = [(RUIElement *)[RUIFooterElement alloc] initWithAttributes:0 parent:passcodeViewOM];
    [passcodeViewOM setFooter:attributes2];
    attributes3 = [passcodeViewOM attributes];
    v14 = [attributes3 objectForKeyedSubscript:@"footer"];
    [(RUIElement *)attributes2 setBody:v14];

    attributes4 = [passcodeViewOM attributes];
    v16 = [attributes4 objectForKeyedSubscript:@"footerLinkURL"];

    if (v16)
    {
      attributes5 = [passcodeViewOM attributes];
      v18 = [attributes5 objectForKeyedSubscript:@"footerLinkURL"];
      [(RUITopLevelElementParser *)selfCopy _logDeprecation:@"footerLinkURL" value:v18];

      footer2 = [passcodeViewOM footer];
      attributes6 = [footer2 attributes];
      v21 = [attributes6 mutableCopy];
      v22 = v21;
      v46 = selfCopy;
      v47 = page;
      if (v21)
      {
        v23 = v21;
      }

      else
      {
        v23 = objc_opt_new();
      }

      v24 = v23;
      v45 = attributes2;

      attributes7 = [passcodeViewOM attributes];
      v26 = [attributes7 objectForKeyedSubscript:@"footerLinkURL"];
      [v24 setObject:v26 forKeyedSubscript:@"url"];

      v50 = 0u;
      v51 = 0u;
      v48 = 0u;
      v49 = 0u;
      v27 = [&unk_282D7AD10 countByEnumeratingWithState:&v48 objects:v52 count:16];
      if (v27)
      {
        v28 = v27;
        v29 = *v49;
        do
        {
          for (i = 0; i != v28; ++i)
          {
            if (*v49 != v29)
            {
              objc_enumerationMutation(&unk_282D7AD10);
            }

            v31 = *(*(&v48 + 1) + 8 * i);
            attributes9 = [v24 objectForKeyedSubscript:v31];
            if (!attributes9)
            {
              attributes8 = [passcodeViewOM attributes];
              v34 = [attributes8 objectForKeyedSubscript:v31];

              if (!v34)
              {
                continue;
              }

              attributes9 = [passcodeViewOM attributes];
              v35 = [attributes9 objectForKeyedSubscript:v31];
              [v24 setObject:v35 forKeyedSubscript:v31];
            }
          }

          v28 = [&unk_282D7AD10 countByEnumeratingWithState:&v48 objects:v52 count:16];
        }

        while (v28);
      }

      footer3 = [passcodeViewOM footer];
      [footer3 setAttributes:v24];

      selfCopy = v46;
      page = v47;
      attributes2 = v45;
    }

    [v6 removeObjectForKey:@"footer"];
    [v6 removeObjectForKey:@"footerLinkURL"];
  }

LABEL_25:
  attributes10 = [passcodeViewOM attributes];
  v38 = [(RUIHeaderElement *)attributes10 objectForKeyedSubscript:@"label"];
  if (!v38)
  {
LABEL_32:

    goto LABEL_33;
  }

  v39 = v38;
  header = [passcodeViewOM header];

  if (!header)
  {
    if (_isInternalInstall())
    {
      v41 = _RUILoggingFacility();
      if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
      {
        baseURL2 = [(RUITopLevelElementParser *)selfCopy baseURL];
        *buf = 138412290;
        v54 = baseURL2;
        _os_log_impl(&dword_21B93D000, v41, OS_LOG_TYPE_DEFAULT, "Page with baseURL %@ is using deprecated pinView attribute 'label'. Use <header> instead.", buf, 0xCu);
      }
    }

    attributes10 = [(RUIElement *)[RUIHeaderElement alloc] initWithAttributes:&unk_282D7ACC0 parent:passcodeViewOM];
    [passcodeViewOM setHeader:attributes10];
    attributes11 = [passcodeViewOM attributes];
    v44 = [attributes11 objectForKeyedSubscript:@"label"];
    [(RUIElement *)attributes10 setBody:v44];

    [v6 removeObjectForKey:@"label"];
    goto LABEL_32;
  }

LABEL_33:
  [passcodeViewOM setAttributes:v6];
}

- (void)_finalizeSection
{
  elementProvider = [(RUITopLevelElementParser *)self elementProvider];
  makeTableViewOM = [elementProvider makeTableViewOM];
  sections = [makeTableViewOM sections];
  lastObject = [sections lastObject];

  attributes = [lastObject attributes];
  v7 = [(RUIHeaderElement *)attributes objectForKeyedSubscript:@"header"];
  if (v7)
  {
    v8 = v7;
    header = [lastObject header];

    if (header)
    {
      goto LABEL_5;
    }

    attributes = [(RUIElement *)[RUIHeaderElement alloc] initWithAttributes:0 parent:lastObject];
    attributes2 = [lastObject attributes];
    v11 = [attributes2 objectForKeyedSubscript:@"header"];
    [(RUIElement *)attributes setBody:v11];

    [lastObject setHeader:attributes];
  }

LABEL_5:
  attributes3 = [lastObject attributes];
  v13 = [(RUIDetailHeaderElement *)attributes3 objectForKeyedSubscript:@"detailHeader"];
  if (v13)
  {
    v14 = v13;
    detailHeader = [lastObject detailHeader];

    if (detailHeader)
    {
      goto LABEL_9;
    }

    attributes3 = [(RUIElement *)[RUIDetailHeaderElement alloc] initWithAttributes:0 parent:lastObject];
    attributes4 = [lastObject attributes];
    v17 = [attributes4 objectForKeyedSubscript:@"detailHeader"];
    [(RUIDetailHeaderElement *)attributes3 setBody:v17];

    [lastObject setDetailHeader:attributes3];
  }

LABEL_9:
  attributes5 = [lastObject attributes];
  v19 = [(RUISubHeaderElement *)attributes5 objectForKeyedSubscript:@"subHeader"];
  if (v19)
  {
    v20 = v19;
    subHeader = [lastObject subHeader];

    if (subHeader)
    {
      goto LABEL_13;
    }

    attributes5 = [(RUIElement *)[RUISubHeaderElement alloc] initWithAttributes:0 parent:lastObject];
    attributes6 = [lastObject attributes];
    v23 = [attributes6 objectForKeyedSubscript:@"subHeader"];
    [(RUIElement *)attributes5 setBody:v23];

    [lastObject setSubHeader:attributes5];
  }

LABEL_13:
  attributes7 = [lastObject attributes];
  v25 = [(RUIFooterElement *)attributes7 objectForKeyedSubscript:@"footer"];
  if (v25)
  {
    v26 = v25;
    footer = [lastObject footer];

    if (footer)
    {
      goto LABEL_17;
    }

    attributes7 = [(RUIElement *)[RUIFooterElement alloc] initWithAttributes:0 parent:lastObject];
    attributes8 = [lastObject attributes];
    v29 = [attributes8 objectForKeyedSubscript:@"footer"];
    [(RUIElement *)attributes7 setBody:v29];

    [lastObject setFooter:attributes7];
  }

LABEL_17:
  header2 = [lastObject header];
  attributes9 = [header2 attributes];

  if (!attributes9)
  {
    attributes10 = [lastObject attributes];
    header3 = [lastObject header];
    [header3 setAttributes:attributes10];
  }

  footer2 = [lastObject footer];
  attributes11 = [footer2 attributes];

  if (!attributes11)
  {
    attributes12 = [lastObject attributes];
    footer3 = [lastObject footer];
    [footer3 setAttributes:attributes12];
  }

  footer4 = [lastObject footer];
  attributes13 = [footer4 attributes];
  v40 = [attributes13 objectForKeyedSubscript:@"url"];
  if (v40)
  {
  }

  else
  {
    attributes14 = [lastObject attributes];
    v42 = [attributes14 objectForKeyedSubscript:@"footerLinkURL"];

    if (!v42)
    {
      goto LABEL_35;
    }

    attributes15 = [lastObject attributes];
    v44 = [attributes15 objectForKeyedSubscript:@"footerLinkURL"];
    [(RUITopLevelElementParser *)self _logDeprecation:@"footerLinkURL" value:v44];

    footer5 = [lastObject footer];
    attributes16 = [footer5 attributes];
    v47 = [attributes16 mutableCopy];
    v48 = v47;
    if (v47)
    {
      v49 = v47;
    }

    else
    {
      v49 = objc_opt_new();
    }

    footer4 = v49;

    attributes17 = [lastObject attributes];
    v51 = [attributes17 objectForKeyedSubscript:@"footerLinkURL"];
    [footer4 setObject:v51 forKeyedSubscript:@"url"];

    attributes18 = [lastObject attributes];
    v53 = [attributes18 objectForKeyedSubscript:@"footerLinkURL"];
    [footer4 setObject:v53 forKeyedSubscript:@"footerLinkURL"];

    attributes19 = [lastObject attributes];
    v55 = [attributes19 objectForKeyedSubscript:@"httpMethod"];

    if (v55)
    {
      attributes20 = [lastObject attributes];
      v57 = [attributes20 objectForKeyedSubscript:@"httpMethod"];
      [footer4 setObject:v57 forKeyedSubscript:@"httpMethod"];
    }

    attributes21 = [lastObject attributes];
    v59 = [attributes21 objectForKeyedSubscript:@"footerLinkIsModalHTMLView"];

    if (v59)
    {
      attributes22 = [lastObject attributes];
      v61 = [attributes22 objectForKeyedSubscript:@"footerLinkIsModalHTMLView"];
      [footer4 setObject:v61 forKeyedSubscript:@"fetchLinksInModalWebView"];
    }

    attributes23 = [lastObject attributes];
    v63 = [attributes23 objectForKeyedSubscript:@"shouldScaleHTMLPageToFit"];

    if (v63)
    {
      attributes24 = [lastObject attributes];
      v65 = [attributes24 objectForKeyedSubscript:@"shouldScaleHTMLPageToFit"];
      [footer4 setObject:v65 forKeyedSubscript:@"shouldScaleHTMLPageToFit"];
    }

    attributes13 = [lastObject footer];
    [attributes13 setAttributes:footer4];
  }

LABEL_35:
}

- (void)_finalizeElement:(id)element
{
  elementCopy = element;
  if ([elementCopy isEqualToString:@"section"])
  {
    [(RUITopLevelElementParser *)self _finalizeSection];
  }

  else if (-[RUITopLevelElementParser usesLegacyPinView](self, "usesLegacyPinView") && [elementCopy isEqualToString:@"pinView"])
  {
    [(RUITopLevelElementParser *)self _finalizePinView];
  }
}

- (void)traversalDelegateDidStartElement:(id)element
{
  v163[1] = *MEMORY[0x277D85DE8];
  elementCopy = element;
  [(NSMutableString *)self->_accumulator setString:&stru_282D68F58];
  name = [elementCopy name];
  v7 = [name isEqualToString:@"choiceView"];

  if (v7)
  {
    attributtes = [elementCopy attributtes];
    v9 = [attributtes mutableCopy];

    page = [(RUITopLevelElementParser *)self page];
    navTitle = [page navTitle];
    [v9 setObject:navTitle forKeyedSubscript:@"navigationTitle"];

    [v9 setObject:@"true" forKeyedSubscript:@"isLegacyChoiceViewHeader"];
    [elementCopy setAttributtes:v9];
  }

  attributtes2 = [elementCopy attributtes];
  name2 = [elementCopy name];
  objc_storeStrong(&self->_currentElementAttributes, attributtes2);
  v14 = [(NSMutableArray *)self->_elementStack containsObject:@"tableView"];
  v15 = [(NSMutableArray *)self->_elementStack containsObject:@"section"];
  v16 = [MEMORY[0x277CBEB98] setWithObjects:{@"header", @"footer", @"subHeader", @"detailHeader", @"htmlHeader", @"htmlFooter", @"cancelButton", @"button", @"choice", @"helpLink", @"htmlSubLabel", @"page", 0}];
  if ([(RUITopLevelElementParser *)self _isParsingSwiftUI])
  {
    swiftUIStack = self->_swiftUIStack;
LABEL_5:
    v18 = name2;
LABEL_6:
    [(NSMutableArray *)swiftUIStack addObject:v18];
    goto LABEL_24;
  }

  v19 = +[_TtC8RemoteUI18RUIContentRegistry sharedRegistry];
  v20 = [v19 supportsViewNamed:name2];

  if (v20)
  {
    v163[0] = name2;
    v21 = [MEMORY[0x277CBEA60] arrayWithObjects:v163 count:1];
    v22 = [v21 mutableCopy];
    v23 = self->_swiftUIStack;
    self->_swiftUIStack = v22;

    objc_storeStrong(&self->_swiftUIElement, element);
    delegate = [(RUITopLevelElementParser *)self delegate];
    v25 = [RUIActionSignal signalWithType:2];
    [delegate parser:self setDefaultActionSignal:v25];

    if (![(RUITopLevelElementParser *)self _isParsingTable])
    {
      self->_parserState = 2;
      goto LABEL_24;
    }

    v161 = @"class";
    v162 = @"customContent";
    v26 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v162 forKeys:&v161 count:1];

    self->_parserState = 6;
    swiftUIStack = self->_elementStack;
    v18 = @"customContentRow";
    goto LABEL_6;
  }

  if ([(__CFString *)name2 isEqualToString:@"tableView"])
  {
    delegate2 = [(RUITopLevelElementParser *)self delegate];
    v28 = [RUIActionSignal signalWithType:2];
    [delegate2 parser:self setDefaultActionSignal:v28];

    elementProvider = [(RUITopLevelElementParser *)self elementProvider];
    makeTableViewOM = [elementProvider makeTableViewOM];
    [makeTableViewOM setAttributes:attributtes2];

    objectModel = [(RUITopLevelElementParser *)self objectModel];
    style = [objectModel style];
    elementProvider2 = [(RUITopLevelElementParser *)self elementProvider];
    makeTableViewOM2 = [elementProvider2 makeTableViewOM];
    [makeTableViewOM2 setStyle:style];

    goto LABEL_22;
  }

  if ([(RUITopLevelElementParser *)self usesLegacyPinView]&& [(__CFString *)name2 isEqualToString:@"pinView"])
  {
    delegate3 = [(RUITopLevelElementParser *)self delegate];
    v36 = [RUIActionSignal signalWithType:2];
    [delegate3 parser:self setDefaultActionSignal:v36];

    objectModel = [(RUITopLevelElementParser *)self page];
    passcodeViewOM = [objectModel passcodeViewOM];
    [passcodeViewOM setAttributes:attributtes2];

    objectModel2 = [(RUITopLevelElementParser *)self objectModel];
    style2 = [objectModel2 style];
    passcodeViewOM2 = [objectModel passcodeViewOM];
    [passcodeViewOM2 setStyle:style2];

    v41 = [attributtes2 objectForKeyedSubscript:@"numberOfFields"];
    integerValue = [v41 integerValue];
    if (integerValue)
    {
      v43 = integerValue;
    }

    else
    {
      v43 = 4;
    }

    passcodeViewOM3 = [objectModel passcodeViewOM];
    [passcodeViewOM3 setNumberOfEntryFields:v43];

    passcodeViewOM4 = [objectModel passcodeViewOM];
    goto LABEL_21;
  }

  if ([(__CFString *)name2 isEqualToString:@"spinnerView"])
  {
    delegate4 = [(RUITopLevelElementParser *)self delegate];
    v47 = [RUIActionSignal signalWithType:2];
    [delegate4 parser:self setDefaultActionSignal:v47];

    objectModel = [(RUITopLevelElementParser *)self page];
    spinnerViewOM = [objectModel spinnerViewOM];
    [spinnerViewOM setAttributes:attributtes2];

    objectModel3 = [(RUITopLevelElementParser *)self objectModel];
    style3 = [objectModel3 style];
    spinnerViewOM2 = [objectModel spinnerViewOM];
    [spinnerViewOM2 setStyle:style3];

    passcodeViewOM4 = [objectModel spinnerViewOM];
LABEL_21:
    style = passcodeViewOM4;
    [(RUIElement *)passcodeViewOM4 setSourceXMLElement:elementCopy];
    goto LABEL_22;
  }

  if ([(__CFString *)name2 isEqualToString:@"section"])
  {
    [(RUITopLevelElementParser *)self _addSectionWithAttributes:attributtes2 xmlElement:elementCopy];
    goto LABEL_24;
  }

  if ([(__CFString *)name2 isEqualToString:@"headerView"])
  {
    [(RUITopLevelElementParser *)self _logDeprecation:@"<headerView>" value:&stru_282D68F58];
    elementProvider3 = [(RUITopLevelElementParser *)self elementProvider];
    makeTableViewOM3 = [elementProvider3 makeTableViewOM];

    v55 = [(RUIElement *)[RUIHeaderElement alloc] initWithAttributes:self->_currentElementAttributes parent:makeTableViewOM3];
    [(RUIElement *)v55 setSourceXMLElement:elementCopy];
    [makeTableViewOM3 setHeader:v55];
LABEL_35:

    goto LABEL_24;
  }

  if ([(__CFString *)name2 isEqualToString:@"footerView"])
  {
    [(RUITopLevelElementParser *)self _logDeprecation:@"<footerView>" value:&stru_282D68F58];
    elementProvider4 = [(RUITopLevelElementParser *)self elementProvider];
    makeTableViewOM3 = [elementProvider4 makeTableViewOM];

    v55 = [(RUIElement *)[RUIFooterElement alloc] initWithAttributes:self->_currentElementAttributes parent:makeTableViewOM3];
    [makeTableViewOM3 setFooter:v55];
    goto LABEL_35;
  }

  if ([(__CFString *)name2 isEqualToString:@"row"])
  {
    objectModel = [(RUITopLevelElementParser *)self _newRowWithAttributeDict:attributtes2];
    [objectModel setSourceXMLElement:elementCopy];
    self->_parserState = 5;
    if (!_isInternalInstall())
    {
      goto LABEL_23;
    }

    style = _RUILoggingFacility();
    if (os_log_type_enabled(&style->super.super, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_21B93D000, &style->super.super, OS_LOG_TYPE_DEFAULT, "Warning : RemoteUI markup is specifying a deprecated 'row' element.", buf, 2u);
    }

LABEL_22:

LABEL_23:
    goto LABEL_24;
  }

  if ([(__CFString *)name2 isEqualToString:@"searchTerms"]&& self->_parserState == 5)
  {
    objectModel = [MEMORY[0x277CBEB58] set];
    style = [(RUITopLevelElementParser *)self _lastRow];
    [(RUIDetailButtonElement *)style setSearchTerms:objectModel];
    goto LABEL_22;
  }

  if ([(__CFString *)name2 hasSuffix:@"Row"])
  {
    v57 = [objc_opt_class() tableRowClassForElementName:name2];
    v58 = [objc_alloc(MEMORY[0x277CBEB38]) initWithDictionary:attributtes2];
    [v58 setObject:v57 forKey:@"class"];
    self->_parserState = 5;
    page3 = v57;
    if ([v57 isEqualToString:@"selectPage"])
    {
      uUID = [MEMORY[0x277CCAD78] UUID];
      uUIDString = [uUID UUIDString];
      v61 = [@"child-page-" stringByAppendingString:uUIDString];

      v62 = [(RUITopLevelElementParser *)self _newRowWithAttributeDict:v58];
      page2 = [(RUITopLevelElementParser *)self page];
      v64 = [(RUITopLevelElementParser *)self _createPageWithName:v61 attributes:attributtes2];
      [v64 setPageID:v61];
      v149 = page2;
      [page2 _addChildPage:v64];
      v150 = v62;
      [v62 setLinkedPage:v64];
      v65 = [attributtes2 objectForKeyedSubscript:@"linkedTitle"];
      v148 = v65;
      if (v65)
      {
        v159 = @"title";
        v160 = v65;
        v66 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v160 forKeys:&v159 count:1];
      }

      else
      {
        v66 = 0;
      }

      v147 = v66;
      [(RUITopLevelElementParser *)self _addNavigationBarWithAttributes:v66 toPage:v64];
      v98 = objc_alloc_init(MEMORY[0x277CBEB38]);
      v153 = v61;
      [v98 setObject:v61 forKey:@"radioGroup"];
      v99 = [attributtes2 objectForKey:@"autoGoBack"];
      bOOLValue = [v99 BOOLValue];

      if (bOOLValue)
      {
        [v98 setObject:MEMORY[0x277CBEC38] forKey:@"autoGoBack"];
      }

      v101 = [v58 objectForKeyedSubscript:@"value"];
      v102 = [v101 length];

      if (v102)
      {
        v103 = [v58 objectForKeyedSubscript:@"value"];
        [v98 setObject:v103 forKey:@"value"];
      }

      v104 = [attributtes2 objectForKeyedSubscript:@"header"];

      if (v104)
      {
        v105 = [attributtes2 objectForKeyedSubscript:@"header"];
        [v98 setObject:v105 forKey:@"header"];

        v106 = [attributtes2 objectForKeyedSubscript:@"headerHeight"];

        if (v106)
        {
          v107 = [attributtes2 objectForKeyedSubscript:@"headerHeight"];
          [v98 setObject:v107 forKey:@"headerHeight"];
        }
      }

      v108 = [attributtes2 objectForKeyedSubscript:@"footer"];

      if (v108)
      {
        v109 = [attributtes2 objectForKeyedSubscript:@"footer"];
        [v98 setObject:v109 forKey:@"footer"];
      }

      tableViewOM = [v64 tableViewOM];
      [(RUITopLevelElementParser *)self _addSectionWithAttributes:v98 toTableViewOM:tableViewOM xmlElement:elementCopy];
    }

    else
    {
      v87 = [(RUITopLevelElementParser *)self _newRowWithAttributeDict:v58];
      [v87 setSourceXMLElement:elementCopy];
      _lastRow = [(RUITopLevelElementParser *)self _lastRow];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        array = [MEMORY[0x277CBEB18] array];
        v91 = self->_swiftUIStack;
        self->_swiftUIStack = array;

        objc_storeStrong(&self->_swiftUIElement, element);
        self->_parserState = 6;
      }
    }

    goto LABEL_77;
  }

  if ([(__CFString *)name2 isEqualToString:@"detailButton"]&& self->_parserState == 5)
  {
    objectModel = [(RUITopLevelElementParser *)self _lastRow];
    style = [[RUIDetailButtonElement alloc] initWithAttributes:self->_currentElementAttributes parent:objectModel];
    [(RUIElement *)style setSourceXMLElement:elementCopy];
    [objectModel setDetailButton:style];
    goto LABEL_22;
  }

  if (([(__CFString *)name2 isEqualToString:@"option"]& 1) == 0 && ![(__CFString *)name2 isEqualToString:@"linkedOption"])
  {
    if (([(__CFString *)name2 isEqualToString:@"linkDeleteAction"]& 1) != 0 || [(__CFString *)name2 isEqualToString:@"clientDeleteAction"])
    {
      objectModel = [(RUITopLevelElementParser *)self _lastRow];
      if (!objectModel)
      {
        goto LABEL_23;
      }

      style = [objc_alloc(MEMORY[0x277CBEB38]) initWithDictionary:attributtes2];
      [(RUIDetailButtonElement *)style setObject:name2 forKey:@"type"];
      [objectModel setDeleteAction:style];
      goto LABEL_22;
    }

    if ([(__CFString *)name2 isEqualToString:@"html"])
    {
      v111 = [attributtes2 copy];
      elementProvider5 = [(RUITopLevelElementParser *)self elementProvider];
      makeWebViewOM = [elementProvider5 makeWebViewOM];
      [makeWebViewOM setAttributes:v111];

      baseURL = [(RUITopLevelElementParser *)self baseURL];
      elementProvider6 = [(RUITopLevelElementParser *)self elementProvider];
      makeWebViewOM2 = [elementProvider6 makeWebViewOM];
      [makeWebViewOM2 setBaseURL:baseURL];

      elementProvider7 = [(RUITopLevelElementParser *)self elementProvider];
      makeWebViewOM3 = [elementProvider7 makeWebViewOM];
      [makeWebViewOM3 setSourceXMLElement:elementCopy];

      delegate5 = [(RUITopLevelElementParser *)self delegate];
      v120 = [RUIActionSignal signalWithType:2];
      [delegate5 parser:self setDefaultActionSignal:v120];

      self->_parserState = 1;
      goto LABEL_24;
    }

    if ([(__CFString *)name2 isEqualToString:@"navigationBar"])
    {
      self->_parserState = 7;
      [(RUITopLevelElementParser *)self _addNavigationBarWithAttributes:attributtes2];
      goto LABEL_24;
    }

    if ([(__CFString *)name2 isEqualToString:@"toolbar"])
    {
      self->_parserState = 8;
      objectModel = [(RUITopLevelElementParser *)self page];
      [objectModel setHasToolbar];
      goto LABEL_23;
    }

    if (([(__CFString *)name2 isEqualToString:@"footer"]& v14 & v15) == 1)
    {
      v158 = name2;
      v121 = [MEMORY[0x277CBEA60] arrayWithObjects:&v158 count:1];
      v122 = [v121 mutableCopy];
      v123 = self->_swiftUIStack;
      self->_swiftUIStack = v122;

      children = [elementCopy children];
      firstObject = [children firstObject];
      swiftUIElement = self->_swiftUIElement;
      self->_swiftUIElement = firstObject;

      v127 = 4;
LABEL_92:
      self->_parserState = v127;
      swiftUIStack = self->_elementStack;
      goto LABEL_5;
    }

    if (([(__CFString *)name2 isEqualToString:@"header"]& v14 & v15) == 1)
    {
      v157 = name2;
      v128 = [MEMORY[0x277CBEA60] arrayWithObjects:&v157 count:1];
      v129 = [v128 mutableCopy];
      v130 = self->_swiftUIStack;
      self->_swiftUIStack = v129;

      children2 = [elementCopy children];
      firstObject2 = [children2 firstObject];
      v133 = self->_swiftUIElement;
      self->_swiftUIElement = firstObject2;

      v127 = 3;
      goto LABEL_92;
    }

    if (([(__CFString *)name2 isEqualToString:@"buttonBarItem"]& 1) == 0 && ([(__CFString *)name2 isEqualToString:@"linkBarItem"]& 1) == 0 && ([(__CFString *)name2 isEqualToString:@"nextBarItem"]& 1) == 0 && ([(__CFString *)name2 isEqualToString:@"editBarItem"]& 1) == 0 && ([(__CFString *)name2 isEqualToString:@"titleBarItem"]& 1) == 0 && ([(__CFString *)name2 isEqualToString:@"closeButtonBarItem"]& 1) == 0 && ![(__CFString *)name2 isEqualToString:@"backButtonBarItem"])
    {
      if ([v16 containsObject:name2])
      {
        goto LABEL_24;
      }

      objectModel = _RUILoggingFacility();
      if (os_log_type_enabled(objectModel, OS_LOG_TYPE_ERROR))
      {
        [(RUITopLevelElementParser *)name2 traversalDelegateDidStartElement:objectModel];
      }

      goto LABEL_23;
    }

    page3 = [(RUITopLevelElementParser *)self page];
    v134 = [objc_alloc(MEMORY[0x277CBEB38]) initWithDictionary:attributtes2];
    v135 = [attributtes2 objectForKeyedSubscript:@"type"];
    [v134 setObject:v135 forKeyedSubscript:@"barButtonType"];

    [v134 setObject:name2 forKey:@"type"];
    v136 = [v134 objectForKey:@"position"];
    parserState = self->_parserState;
    if (parserState == 8)
    {
      [v134 setObject:@"toolbar" forKey:@"parentBar"];
      v143 = [RUIBarButtonItem alloc];
      pageElement = [page3 pageElement];
      v140 = [(RUIElement *)v143 initWithAttributes:v134 parent:pageElement];

      [(RUIElement *)v140 setSourceXMLElement:elementCopy];
      objectModel4 = [(RUITopLevelElementParser *)self objectModel];
      style4 = [objectModel4 style];
      [(RUIElement *)v140 setStyle:style4];

      if ([v136 isEqualToString:@"right"])
      {
        [page3 setRightToolbarButtonItem:v140];
      }

      else if ([v136 isEqualToString:@"left"])
      {
        [page3 setLeftToolbarButtonItem:v140];
      }

      else if ([v136 isEqualToString:@"center"])
      {
        [page3 setMiddleToolbarButtonItem:v140];
      }
    }

    else
    {
      if (parserState != 7)
      {
LABEL_113:

LABEL_77:
        goto LABEL_24;
      }

      [v134 setObject:@"navigationBar" forKey:@"parentBar"];
      v138 = [RUIBarButtonItem alloc];
      pageElement2 = [page3 pageElement];
      v140 = [(RUIElement *)v138 initWithAttributes:v134 parent:pageElement2];

      [(RUIElement *)v140 setSourceXMLElement:elementCopy];
      objectModel5 = [(RUITopLevelElementParser *)self objectModel];
      style5 = [objectModel5 style];
      [(RUIElement *)v140 setStyle:style5];

      if ([v136 isEqualToString:@"right"])
      {
        [page3 setRightNavigationBarButtonItem:v140];
      }

      else if ([v136 isEqualToString:@"left"])
      {
        [page3 setLeftNavigationBarButtonItem:v140];
      }
    }

    goto LABEL_113;
  }

  if ([(__CFString *)name2 isEqualToString:@"linkedOption"])
  {
    v155 = [attributtes2 mutableCopy];
    elementProvider8 = [(RUITopLevelElementParser *)self elementProvider];
    parentElement = [elementProvider8 parentElement];
    pageElement3 = [parentElement pageElement];
    page4 = [pageElement3 page];
    childPages = [page4 childPages];
    lastObject = [childPages lastObject];

    v152 = lastObject;
    tableViewOM2 = [lastObject tableViewOM];
    sections = [tableViewOM2 sections];
    lastObject2 = [sections lastObject];

    attributes = [lastObject2 attributes];
    v76 = [attributes objectForKeyedSubscript:@"radioGroup"];
    [v155 setObject:v76 forKeyedSubscript:@"radioGroup"];

    [v155 setObject:@"linkedOption" forKeyedSubscript:@"class"];
    v77 = [v155 objectForKeyedSubscript:@"value"];
    attributes2 = [lastObject2 attributes];
    v79 = [attributes2 objectForKeyedSubscript:@"value"];
    LODWORD(pageElement3) = [v77 isEqualToString:v79];

    if (pageElement3)
    {
      [v155 setObject:@"true" forKeyedSubscript:@"checked"];
    }

    tableViewOM3 = [v152 tableViewOM];

    parentPage = [v152 parentPage];
    tableViewOM4 = [parentPage tableViewOM];
    sections2 = [tableViewOM4 sections];
    lastObject3 = [sections2 lastObject];

    rows = [lastObject3 rows];
    lastObject4 = [rows lastObject];
  }

  else
  {
    lastObject4 = [(RUITopLevelElementParser *)self _lastRow];
  }

  if (lastObject4)
  {
    selectOptions = [lastObject4 selectOptions];
    v93 = objc_alloc_init(RUISelectOption);
    v94 = [attributtes2 objectForKey:@"label"];
    [(RUISelectOption *)v93 setLabel:v94];

    label = [(RUISelectOption *)v93 label];
    v96 = [label length];

    if (!v96)
    {
      [(RUISelectOption *)v93 setLabel:@" "];
    }

    v97 = [attributtes2 objectForKey:@"value"];
    [(RUISelectOption *)v93 setValue:v97];

    [selectOptions addObject:v93];
  }

LABEL_24:
  v52 = self->_parserState;
  if ((v52 - 2) >= 3 && (v52 != 6 || [(__CFString *)name2 isEqualToString:@"swiftUIRow"]))
  {
    [(NSMutableArray *)self->_elementStack addObject:name2];
  }
}

- (void)traversalDelegateDidEndlement:(id)endlement
{
  v98 = *MEMORY[0x277D85DE8];
  endlementCopy = endlement;
  v5 = [(NSMutableString *)self->_accumulator copy];
  name = [endlementCopy name];
  _isParsingSwiftUI = [(RUITopLevelElementParser *)self _isParsingSwiftUI];
  v8 = 32;
  if (_isParsingSwiftUI)
  {
    v8 = 40;
  }

  [*(&self->super.isa + v8) removeLastObject];
  parserState = self->_parserState;
  if (parserState <= 4)
  {
    if (parserState <= 2)
    {
      if (parserState != 1)
      {
        if (parserState == 2)
        {
          if (![(NSMutableArray *)self->_swiftUIStack count])
          {
            page = [(RUITopLevelElementParser *)self page];
            v11 = [_TtC8RemoteUI26RUISwiftUIContainerElement alloc];
            swiftUIElement = self->_swiftUIElement;
            pageElement = [page pageElement];
            v14 = [(RUISwiftUIContainerElement *)v11 initWithElement:swiftUIElement parent:pageElement];

            if (v14)
            {
              [(RUITopLevelElementProvider *)self->_elementProvider setPrimaryElement:v14];
              swiftUIStack = self->_swiftUIStack;
              self->_swiftUIStack = 0;

              v16 = self->_swiftUIElement;
              self->_swiftUIElement = 0;

              [(RUIElement *)v14 setSourceXMLElement:endlementCopy];
            }

            [(RUISwiftUIContainerElement *)v14 prepareToPreload];
            self->_parserState = 0;
          }

          goto LABEL_103;
        }

        goto LABEL_35;
      }

      v24 = @"html";
      goto LABEL_33;
    }

    if (parserState == 3)
    {
      if (![(NSMutableArray *)self->_swiftUIStack count])
      {
        v28 = self->_swiftUIElement;
        elementProvider = [(RUITopLevelElementParser *)self elementProvider];
        makeTableViewOM = [elementProvider makeTableViewOM];
        sections = [makeTableViewOM sections];
        lastObject = [sections lastObject];

        if (!v28)
        {
          v23 = [(RUIElement *)[RUIHeaderElement alloc] initWithAttributes:self->_currentElementAttributes parent:lastObject];
          [(RUIElement *)v23 setSourceXMLElement:endlementCopy];
          [(RUIElement *)v23 setBody:self->_accumulator];
          [lastObject setHeader:v23];
          goto LABEL_92;
        }

        v23 = [[_TtC8RemoteUI26RUISwiftUIContainerElement alloc] initWithElement:self->_swiftUIElement parent:lastObject];
        if (!v23)
        {
LABEL_31:
          [(RUIHeaderElement *)v23 prepareToPreload];
LABEL_92:

          v77 = self->_swiftUIElement;
          self->_swiftUIElement = 0;

          v78 = self->_swiftUIStack;
          self->_swiftUIStack = 0;

          self->_parserState = 0;
          lastObject2 = [(NSMutableArray *)self->_elementStack lastObject];
          v80 = [lastObject2 isEqualToString:name];

          if (v80)
          {
            [(NSMutableArray *)self->_elementStack removeLastObject];
          }

          goto LABEL_103;
        }

        [lastObject setHeader:v23];
LABEL_30:
        [(RUIElement *)v23 setSourceXMLElement:endlementCopy];
        goto LABEL_31;
      }
    }

    else if (![(NSMutableArray *)self->_swiftUIStack count])
    {
      v18 = self->_swiftUIElement;
      elementProvider2 = [(RUITopLevelElementParser *)self elementProvider];
      makeTableViewOM2 = [elementProvider2 makeTableViewOM];
      sections2 = [makeTableViewOM2 sections];
      lastObject = [sections2 lastObject];

      if (!v18)
      {
        v23 = [(RUIElement *)[RUIFooterElement alloc] initWithAttributes:self->_currentElementAttributes parent:lastObject];
        [(RUIElement *)v23 setSourceXMLElement:endlementCopy];
        [(RUIElement *)v23 setBody:self->_accumulator];
        [lastObject setFooter:v23];
        goto LABEL_92;
      }

      v23 = [[_TtC8RemoteUI26RUISwiftUIContainerElement alloc] initWithElement:self->_swiftUIElement parent:lastObject];
      if (!v23)
      {
        goto LABEL_31;
      }

      [lastObject setFooter:v23];
      goto LABEL_30;
    }

LABEL_103:
    [(NSMutableString *)self->_accumulator setString:&stru_282D68F58];
    goto LABEL_104;
  }

  if (parserState > 6)
  {
    if (parserState == 7)
    {
      v24 = @"navigationBar";
    }

    else
    {
      if (parserState != 8)
      {
        goto LABEL_35;
      }

      v24 = @"toolbar";
    }

LABEL_33:
    if (![name isEqualToString:v24])
    {
      goto LABEL_35;
    }

    goto LABEL_34;
  }

  if (parserState == 5)
  {
    if ([name isEqualToString:@"searchTerm"])
    {
      _lastRow = [(RUITopLevelElementParser *)self _lastRow];
      searchTerms = [_lastRow searchTerms];
      v27 = [(NSMutableString *)self->_accumulator copy];
      [searchTerms addObject:v27];

      goto LABEL_35;
    }

    if (([name hasSuffix:@"Row"] & 1) == 0 && !objc_msgSend(name, "isEqualToString:", @"row"))
    {
LABEL_35:
      lastObject3 = [(NSMutableArray *)self->_elementStack lastObject];
      v33 = [lastObject3 isEqualToString:@"tableView"];

      lastObject4 = [(NSMutableArray *)self->_elementStack lastObject];
      v35 = [lastObject4 isEqualToString:@"section"];

      [(NSMutableArray *)self->_elementStack containsObject:@"multiChoiceView"];
      page2 = [(RUITopLevelElementParser *)self page];
      hasSpinnerView = [page2 hasSpinnerView];

      if (v35)
      {
        elementProvider3 = [(RUITopLevelElementParser *)self elementProvider];
        makeTableViewOM3 = [elementProvider3 makeTableViewOM];
        sections3 = [makeTableViewOM3 sections];
        lastObject5 = [sections3 lastObject];

        if ([name isEqualToString:@"htmlHeader"])
        {
          selfCopy7 = self;
          v43 = [(RUIElement *)[RUIHTMLHeaderElement alloc] initWithAttributes:self->_currentElementAttributes parent:lastObject5];
          [(RUIElement *)v43 setSourceXMLElement:endlementCopy];
          [(RUIHTMLHeaderElement *)v43 setHTMLContent:v5];
LABEL_41:
          [lastObject5 setHeader:v43];
LABEL_100:

          self = selfCopy7;
          goto LABEL_101;
        }

        if ([name isEqualToString:@"detailHeader"])
        {
          selfCopy7 = self;
          v43 = [(RUIElement *)[RUIDetailHeaderElement alloc] initWithAttributes:self->_currentElementAttributes parent:lastObject5];
          [(RUIElement *)v43 setSourceXMLElement:endlementCopy];
          [(RUIElement *)v43 setBody:v5];
          [lastObject5 setDetailHeader:v43];
          goto LABEL_100;
        }

        if ([name isEqualToString:@"subHeader"])
        {
LABEL_55:
          selfCopy7 = self;
          v43 = [(RUIElement *)[RUISubHeaderElement alloc] initWithAttributes:self->_currentElementAttributes parent:lastObject5];
          [(RUIElement *)v43 setSourceXMLElement:endlementCopy];
          [(RUIElement *)v43 setBody:v5];
          [lastObject5 setSubHeader:v43];
          goto LABEL_100;
        }

        goto LABEL_97;
      }

      if (v33)
      {
        elementProvider4 = [(RUITopLevelElementParser *)self elementProvider];
        lastObject5 = [elementProvider4 makeTableViewOM];

        if (![name isEqualToString:@"header"])
        {
          if (![name isEqualToString:@"subHeader"])
          {
            goto LABEL_101;
          }

          goto LABEL_55;
        }
      }

      else
      {
        if (![(RUITopLevelElementParser *)self usesLegacyPinView]|| ![(NSMutableArray *)self->_elementStack containsObject:@"pinView"])
        {
          if (!hasSpinnerView)
          {
LABEL_102:
            [(RUITopLevelElementParser *)self _finalizeElement:name];
            goto LABEL_103;
          }

          lastObject5 = [(RUITopLevelElementParser *)self page];
          [lastObject5 spinnerViewOM];
          v43 = v46 = self;
          if ([name isEqualToString:@"header"])
          {
            selfCopy7 = v46;
            v47 = [(RUIElement *)[RUIHeaderElement alloc] initWithAttributes:v46->_currentElementAttributes parent:v43];
            [(RUIElement *)v47 setSourceXMLElement:endlementCopy];
            [(RUIElement *)v47 setBody:v5];
            [(RUIHTMLHeaderElement *)v43 setHeader:v47];
          }

          else
          {
            selfCopy7 = v46;
            if (![name isEqualToString:@"footer"])
            {
              goto LABEL_100;
            }

            v47 = [(RUIElement *)[RUIFooterElement alloc] initWithAttributes:v46->_currentElementAttributes parent:v43];
            [(RUIElement *)v47 setSourceXMLElement:endlementCopy];
            [(RUIElement *)v47 setBody:v5];
            [(RUIHTMLHeaderElement *)v43 setFooter:v47];
          }

          if (v47)
          {
            attributes = [(RUIElement *)v47 attributes];
            v75 = [attributes objectForKey:@"color"];

            if (![v75 length])
            {
              attributes2 = [(RUIElement *)v47 attributes];
              [attributes2 setValue:@"labelColor" forKey:@"color"];
            }
          }

          goto LABEL_100;
        }

        page3 = [(RUITopLevelElementParser *)self page];
        lastObject5 = [page3 passcodeViewOM];

        if (![name isEqualToString:@"header"])
        {
          if ([name isEqualToString:@"htmlHeader"])
          {
            selfCopy7 = self;
            v43 = [(RUIElement *)[RUIHTMLHeaderElement alloc] initWithAttributes:self->_currentElementAttributes parent:lastObject5];
            [(RUIElement *)v43 setSourceXMLElement:endlementCopy];
            [(RUIHTMLHeaderElement *)v43 setHTMLContent:v5];
            [lastObject5 setHTMLHeader:v43];
            goto LABEL_100;
          }

          if ([name isEqualToString:@"footer"])
          {
            selfCopy7 = self;
            v43 = [(RUIElement *)[RUIFooterElement alloc] initWithAttributes:self->_currentElementAttributes parent:lastObject5];
            [(RUIElement *)v43 setSourceXMLElement:endlementCopy];
            [(RUIElement *)v43 setBody:v5];
LABEL_99:
            [lastObject5 setFooter:v43];
            goto LABEL_100;
          }

LABEL_97:
          if (![name isEqualToString:@"htmlFooter"])
          {
LABEL_101:

            goto LABEL_102;
          }

          selfCopy7 = self;
          v43 = [(RUIElement *)[RUIHTMLFooterElement alloc] initWithAttributes:self->_currentElementAttributes parent:lastObject5];
          [(RUIElement *)v43 setSourceXMLElement:endlementCopy];
          [(RUIHTMLHeaderElement *)v43 setHTMLContent:v5];
          goto LABEL_99;
        }
      }

      selfCopy7 = self;
      v43 = [(RUIElement *)[RUIHeaderElement alloc] initWithAttributes:self->_currentElementAttributes parent:lastObject5];
      [(RUIElement *)v43 setSourceXMLElement:endlementCopy];
      [(RUIElement *)v43 setBody:v5];
      goto LABEL_41;
    }

    if ([name isEqualToString:@"selectPageRow"])
    {
      v82 = endlementCopy;
      selfCopy8 = self;
      elementProvider5 = [(RUITopLevelElementParser *)self elementProvider];
      parentElement = [elementProvider5 parentElement];
      pageElement2 = [parentElement pageElement];
      page4 = [pageElement2 page];
      childPages = [page4 childPages];
      lastObject6 = [childPages lastObject];

      v94 = 0u;
      v95 = 0u;
      v92 = 0u;
      v93 = 0u;
      v81 = lastObject6;
      tableViewOM = [lastObject6 tableViewOM];
      sections4 = [tableViewOM sections];

      obj = sections4;
      v86 = [sections4 countByEnumeratingWithState:&v92 objects:v97 count:16];
      v56 = 0;
      if (v86)
      {
        v85 = *v93;
        do
        {
          v57 = 0;
          do
          {
            if (*v93 != v85)
            {
              objc_enumerationMutation(obj);
            }

            v87 = v57;
            v58 = *(*(&v92 + 1) + 8 * v57);
            v88 = 0u;
            v89 = 0u;
            v90 = 0u;
            v91 = 0u;
            rows = [v58 rows];
            v60 = [rows countByEnumeratingWithState:&v88 objects:v96 count:16];
            if (v60)
            {
              v61 = v60;
              v62 = *v89;
              do
              {
                for (i = 0; i != v61; ++i)
                {
                  if (*v89 != v62)
                  {
                    objc_enumerationMutation(rows);
                  }

                  attributes3 = [*(*(&v88 + 1) + 8 * i) attributes];
                  v65 = [attributes3 objectForKeyedSubscript:@"checked"];
                  bOOLValue = [v65 BOOLValue];

                  if (bOOLValue)
                  {
                    v67 = [attributes3 objectForKeyedSubscript:@"label"];

                    v56 = v67;
                  }
                }

                v61 = [rows countByEnumeratingWithState:&v88 objects:v96 count:16];
              }

              while (v61);
            }

            v57 = v87 + 1;
          }

          while (v87 + 1 != v86);
          v86 = [obj countByEnumeratingWithState:&v92 objects:v97 count:16];
        }

        while (v86);
      }

      endlementCopy = v82;
      if ([v56 length])
      {
        _lastRow2 = [(RUITopLevelElementParser *)selfCopy8 _lastRow];
        mutableAttributes = [_lastRow2 mutableAttributes];
        [mutableAttributes setObject:v56 forKey:@"detailLabel"];
      }

      self = selfCopy8;
    }

LABEL_34:
    self->_parserState = 0;
    goto LABEL_35;
  }

  if ([(NSMutableArray *)self->_swiftUIStack count])
  {
    v17 = 0;
  }

  else
  {
    v70 = +[_TtC8RemoteUI18RUIContentRegistry sharedRegistry];
    v17 = [v70 supportsViewNamed:name];
  }

  if (([name isEqualToString:@"swiftUIRow"] & 1) != 0 || v17)
  {
    _lastRow3 = [(RUITopLevelElementParser *)self _lastRow];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [_lastRow3 setXmlElement:self->_swiftUIElement];
      [_lastRow3 prepareToPreload];
      v72 = self->_swiftUIStack;
      self->_swiftUIStack = 0;

      v73 = self->_swiftUIElement;
      self->_swiftUIElement = 0;
    }

    self->_parserState = 0;
    [(NSMutableArray *)self->_elementStack removeLastObject];
  }

LABEL_104:
}

- (void)traversalDelegateFoundCData:(id)data
{
  dataCopy = data;
  parserState = self->_parserState;
  if (parserState != 5)
  {
    if (parserState == 1)
    {
      _lastRow = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:dataCopy encoding:4];
      elementProvider = [(RUITopLevelElementParser *)self elementProvider];
      makeWebViewOM = [elementProvider makeWebViewOM];
      [makeWebViewOM setHtml:_lastRow];

      goto LABEL_11;
    }

LABEL_10:
    accumulator = self->_accumulator;
    _lastRow = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:dataCopy encoding:4];
    [(NSMutableString *)accumulator appendString:_lastRow];
    goto LABEL_11;
  }

  lastObject = [(NSMutableArray *)self->_elementStack lastObject];
  v9 = [lastObject isEqualToString:@"htmlSubLabel"];

  if (v9)
  {
    _lastRow = [(RUITopLevelElementParser *)self _lastRow];
    [_lastRow setHtmlSubLabelData:dataCopy];
    goto LABEL_11;
  }

  if (self->_parserState != 5)
  {
    goto LABEL_10;
  }

  lastObject2 = [(NSMutableArray *)self->_elementStack lastObject];
  v11 = [lastObject2 hasSuffix:@"Row"];

  if (!v11)
  {
    goto LABEL_10;
  }

  _lastRow2 = [(RUITopLevelElementParser *)self _lastRow];
  _lastRow = _lastRow2;
  if (_lastRow2)
  {
    [_lastRow2 setData:dataCopy];
  }

LABEL_11:
}

- (id)_createPageWithName:(id)name attributes:(id)attributes
{
  nameCopy = name;
  attributesCopy = attributes;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    v10 = objc_loadWeakRetained(&self->_delegate);
    v11 = [v10 topLevelElementParser:self createPageWithName:nameCopy attributes:attributesCopy];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (RUITopLevelElementParserDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)traversalDelegateDidStartElement:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_21B93D000, a2, OS_LOG_TYPE_ERROR, "Unknown tag in markup, being ignored: '%@'", &v2, 0xCu);
}

@end