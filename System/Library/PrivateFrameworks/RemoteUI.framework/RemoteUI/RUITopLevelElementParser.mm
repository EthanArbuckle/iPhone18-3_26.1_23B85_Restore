@interface RUITopLevelElementParser
+ (id)rowWithAttributeDict:(id)a3 delegate:(id)a4 parent:(id)a5;
+ (id)tableRowClassForElementName:(id)a3;
+ (id)textStyleForString:(id)a3;
+ (int64_t)textAlignmentForString:(id)a3;
- (RUITopLevelElementParser)initWithXMLElement:(id)a3 elementProvider:(id)a4 objectModel:(id)a5 delegate:(id)a6;
- (RUITopLevelElementParserDelegate)delegate;
- (id)_createPageWithName:(id)a3 attributes:(id)a4;
- (id)_lastRow;
- (id)_newRowWithAttributeDict:(id)a3;
- (id)_newRowWithAttributeDict:(id)a3 tableViewOM:(id)a4;
- (id)baseURL;
- (id)page;
- (void)_addNavigationBarWithAttributes:(id)a3;
- (void)_addNavigationBarWithAttributes:(id)a3 toPage:(id)a4;
- (void)_addSectionWithAttributes:(id)a3 toTableViewOM:(id)a4 xmlElement:(id)a5;
- (void)_addSectionWithAttributes:(id)a3 xmlElement:(id)a4;
- (void)_finalizeElement:(id)a3;
- (void)_finalizePinView;
- (void)_finalizeSection;
- (void)_logDeprecation:(id)a3 value:(id)a4;
- (void)parse;
- (void)traversalDelegateDidEndlement:(id)a3;
- (void)traversalDelegateDidStartElement:(id)a3;
- (void)traversalDelegateFoundCData:(id)a3;
@end

@implementation RUITopLevelElementParser

+ (int64_t)textAlignmentForString:(id)a3
{
  v3 = a3;
  if ([(__CFString *)v3 length])
  {
    v8.length = [(__CFString *)v3 length];
    v8.location = 0;
    v4 = CFStringTokenizerCopyBestStringLanguage(v3, v8);
    v5 = [MEMORY[0x277CBEAF8] characterDirectionForLanguage:v4];
    if ([(__CFString *)v3 isEqualToString:@"right"])
    {
      v6 = 2 * (v5 != 2);
    }

    else
    {
      v6 = 2 * (v5 == 2);
      if (([(__CFString *)v3 isEqualToString:@"left"]& 1) == 0 && [(__CFString *)v3 isEqualToString:@"center"])
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

+ (id)textStyleForString:(id)a3
{
  v3 = a3;
  v4 = *MEMORY[0x277D76918];
  v5 = v4;
  if ([v3 length])
  {
    if ([v3 isEqualToString:@"largeTitle"])
    {
      v6 = MEMORY[0x277D769A8];
LABEL_12:
      v5 = *v6;
      goto LABEL_13;
    }

    if ([v3 isEqualToString:@"title1"])
    {
      v6 = MEMORY[0x277D76A08];
      goto LABEL_12;
    }

    if ([v3 isEqualToString:@"title2"])
    {
      v6 = MEMORY[0x277D76A20];
      goto LABEL_12;
    }

    if ([v3 isEqualToString:@"title3"])
    {
      v6 = MEMORY[0x277D76A28];
      goto LABEL_12;
    }

    if ([v3 isEqualToString:@"headline"])
    {
      v6 = MEMORY[0x277D76988];
      goto LABEL_12;
    }

    v5 = v4;
    if ([v3 isEqualToString:@"body"])
    {
      goto LABEL_13;
    }

    if ([v3 isEqualToString:@"callout"])
    {
      v6 = MEMORY[0x277D76920];
      goto LABEL_12;
    }

    if ([v3 isEqualToString:@"subheadline"])
    {
      v6 = MEMORY[0x277D769D0];
      goto LABEL_12;
    }

    if ([v3 isEqualToString:@"footnote"])
    {
      v6 = MEMORY[0x277D76968];
      goto LABEL_12;
    }

    if ([v3 isEqualToString:@"caption1"])
    {
      v6 = MEMORY[0x277D76938];
      goto LABEL_12;
    }

    if ([v3 isEqualToString:@"caption2"])
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

+ (id)tableRowClassForElementName:(id)a3
{
  v3 = a3;
  if (([v3 hasSuffix:@"Row"] & 1) != 0 || objc_msgSend(v3, "hasSuffix:", @"row"))
  {
    v4 = [v3 substringToIndex:{objc_msgSend(v3, "length") - 3}];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (RUITopLevelElementParser)initWithXMLElement:(id)a3 elementProvider:(id)a4 objectModel:(id)a5 delegate:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v22.receiver = self;
  v22.super_class = RUITopLevelElementParser;
  v15 = [(RUITopLevelElementParser *)&v22 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_xmlElement, a3);
    objc_storeStrong(&v16->_objectModel, a5);
    objc_storeStrong(&v16->_elementProvider, a4);
    v17 = objc_opt_new();
    accumulator = v16->_accumulator;
    v16->_accumulator = v17;

    v19 = objc_opt_new();
    elementStack = v16->_elementStack;
    v16->_elementStack = v19;

    objc_storeWeak(&v16->_delegate, v14);
  }

  return v16;
}

- (void)parse
{
  v3 = [(RUITopLevelElementParser *)self xmlElement];
  [v3 traverseWithDelegate:self];
}

- (id)baseURL
{
  v2 = [(RUITopLevelElementParser *)self objectModel];
  v3 = [v2 sourceURL];

  return v3;
}

+ (id)rowWithAttributeDict:(id)a3 delegate:(id)a4 parent:(id)a5
{
  v7 = a3;
  v8 = a5;
  v9 = a4;
  v10 = [v7 objectForKeyedSubscript:@"class"];
  if ([v10 isEqualToString:@"customContent"])
  {
    v11 = [[_TtC8RemoteUI19RUICustomContentRow alloc] initWithAttributes:v7 parent:v8];
    if (v11)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  if (![v10 isEqualToString:@"swiftUI"] || (v11 = -[RUISwiftUITableViewRow initWithAttributes:parent:]([_TtC8RemoteUI22RUISwiftUITableViewRow alloc], "initWithAttributes:parent:", v7, v8), -[RUITableViewRow setSelectionScrollBehavior:](v11, "setSelectionScrollBehavior:", 1), !v11))
  {
LABEL_6:
    v11 = [(RUIElement *)[RUITableViewRow alloc] initWithAttributes:v7 parent:v8];
  }

LABEL_7:
  [(RUITableViewRow *)v11 setDelegate:v9];

  v12 = [v8 style];
  [(RUIElement *)v11 setStyle:v12];

  v13 = [v7 objectForKeyedSubscript:@"checked"];
  -[RUISwiftUITableViewRow setSelected:](v11, "setSelected:", [v13 BOOLValue]);

  v14 = [v7 objectForKeyedSubscript:@"align"];
  if (![v14 length])
  {
    v17 = [v8 style];
    -[RUITableViewRow setAlignment:](v11, "setAlignment:", [v17 labelRowTextAlignment]);

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

- (id)_newRowWithAttributeDict:(id)a3
{
  v4 = a3;
  v5 = [(RUITopLevelElementParser *)self elementProvider];
  v6 = [v5 makeTableViewOM];
  v7 = [(RUITopLevelElementParser *)self _newRowWithAttributeDict:v4 tableViewOM:v6];

  return v7;
}

- (id)_newRowWithAttributeDict:(id)a3 tableViewOM:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [v5 sections];
  v8 = [v7 lastObject];

  v9 = [objc_opt_class() rowWithAttributeDict:v6 delegate:v5 parent:v8];

  [v8 addRow:v9];
  return v9;
}

- (id)page
{
  v2 = [(RUITopLevelElementParser *)self elementProvider];
  v3 = [v2 parentElement];
  v4 = [v3 pageElement];
  v5 = [v4 page];

  return v5;
}

- (id)_lastRow
{
  v2 = [(RUITopLevelElementParser *)self elementProvider];
  v3 = [v2 makeTableViewOM];
  v4 = [v3 sections];
  v5 = [v4 lastObject];

  v6 = [v5 rows];
  v7 = [v6 lastObject];

  return v7;
}

- (void)_addNavigationBarWithAttributes:(id)a3
{
  v4 = a3;
  v5 = [(RUITopLevelElementParser *)self page];
  [(RUITopLevelElementParser *)self _addNavigationBarWithAttributes:v4 toPage:v5];
}

- (void)_addNavigationBarWithAttributes:(id)a3 toPage:(id)a4
{
  v10 = a3;
  v5 = a4;
  v6 = [v10 objectForKey:@"title"];
  if ([v6 length])
  {
    [v5 setNavTitle:v6];
  }

  v7 = [v10 objectForKey:@"subTitle"];
  if ([v7 length])
  {
    [v5 setNavSubTitle:v7];
  }

  v8 = [v10 objectForKey:@"backButtonTitle"];
  if (v8)
  {
    [v5 setBackButtonTitle:v8];
  }

  v9 = [v10 objectForKey:@"hidesBackButton"];
  [v5 setHidesBackButton:{objc_msgSend(v9, "BOOLValue")}];
}

- (void)_addSectionWithAttributes:(id)a3 xmlElement:(id)a4
{
  v6 = a4;
  v7 = a3;
  v9 = [(RUITopLevelElementParser *)self elementProvider];
  v8 = [v9 makeTableViewOM];
  [(RUITopLevelElementParser *)self _addSectionWithAttributes:v7 toTableViewOM:v8 xmlElement:v6];
}

- (void)_addSectionWithAttributes:(id)a3 toTableViewOM:(id)a4 xmlElement:(id)a5
{
  v22 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [[RUITableViewSection alloc] initWithAttributes:v22 parent:v8];
  [(RUITableViewSection *)v10 setAttributes:v22];
  v11 = [(RUIObjectModel *)self->_objectModel style];
  [(RUIElement *)v10 setStyle:v11];

  [(RUITableViewSection *)v10 setTableElement:v8];
  [(RUIElement *)v10 setSourceXMLElement:v9];

  v12 = [v22 objectForKeyedSubscript:@"header"];

  if (v12)
  {
    v13 = [(RUIElement *)[RUIHeaderElement alloc] initWithAttributes:0 parent:v10];
    v14 = [v22 objectForKeyedSubscript:@"header"];
    [(RUIElement *)v13 setBody:v14];

    [(RUITableViewSection *)v10 setHeader:v13];
    v15 = [v22 objectForKeyedSubscript:@"headerHeight"];

    if (v15)
    {
      v16 = [v22 objectForKeyedSubscript:@"headerHeight"];
      [v16 floatValue];
      [(RUITableViewSection *)v10 setHeaderHeight:v17];
    }
  }

  v18 = [v22 objectForKeyedSubscript:@"footer"];

  if (v18)
  {
    v19 = [(RUIElement *)[RUIFooterElement alloc] initWithAttributes:0 parent:v10];
    v20 = [v22 objectForKeyedSubscript:@"footer"];
    [(RUIElement *)v19 setBody:v20];

    [(RUITableViewSection *)v10 setFooter:v19];
  }

  v21 = [v8 sections];
  [v21 addObject:v10];
}

- (void)_logDeprecation:(id)a3 value:(id)a4
{
  v21 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    v8 = [MEMORY[0x277CCACA8] stringWithFormat:@" = %@", v7];
  }

  else
  {
    v8 = &stru_282D68F58;
  }

  if (_isInternalInstall())
  {
    v9 = _RUILoggingFacility();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [(RUITopLevelElementParser *)self objectModel];
      v11 = [v10 sourceURL];
      v12 = [(NSMutableArray *)self->_elementStack lastObject];
      *buf = 138413058;
      v14 = v11;
      v15 = 2112;
      v16 = v6;
      v17 = 2112;
      v18 = v8;
      v19 = 2112;
      v20 = v12;
      _os_log_impl(&dword_21B93D000, v9, OS_LOG_TYPE_DEFAULT, "Page with baseURL %@ is using deprecated feature %@%@ in %@ element", buf, 0x2Au);
    }
  }
}

- (void)_finalizePinView
{
  v2 = self;
  v55 = *MEMORY[0x277D85DE8];
  v3 = [(RUITopLevelElementParser *)self page];
  v4 = [v3 passcodeViewOM];
  v5 = [v4 attributes];
  v6 = [v5 mutableCopy];

  v7 = [v4 attributes];
  v8 = [(RUIFooterElement *)v7 objectForKeyedSubscript:@"footer"];
  if (v8)
  {
    v9 = v8;
    v10 = [v4 footer];

    if (v10)
    {
      goto LABEL_25;
    }

    if (_isInternalInstall())
    {
      v11 = _RUILoggingFacility();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v12 = [(RUITopLevelElementParser *)v2 baseURL];
        *buf = 138412290;
        v54 = v12;
        _os_log_impl(&dword_21B93D000, v11, OS_LOG_TYPE_DEFAULT, "Page with baseURL %@ is using deprecated pinView attribute 'footer'. Use <footer> instead.", buf, 0xCu);
      }
    }

    v7 = [(RUIElement *)[RUIFooterElement alloc] initWithAttributes:0 parent:v4];
    [v4 setFooter:v7];
    v13 = [v4 attributes];
    v14 = [v13 objectForKeyedSubscript:@"footer"];
    [(RUIElement *)v7 setBody:v14];

    v15 = [v4 attributes];
    v16 = [v15 objectForKeyedSubscript:@"footerLinkURL"];

    if (v16)
    {
      v17 = [v4 attributes];
      v18 = [v17 objectForKeyedSubscript:@"footerLinkURL"];
      [(RUITopLevelElementParser *)v2 _logDeprecation:@"footerLinkURL" value:v18];

      v19 = [v4 footer];
      v20 = [v19 attributes];
      v21 = [v20 mutableCopy];
      v22 = v21;
      v46 = v2;
      v47 = v3;
      if (v21)
      {
        v23 = v21;
      }

      else
      {
        v23 = objc_opt_new();
      }

      v24 = v23;
      v45 = v7;

      v25 = [v4 attributes];
      v26 = [v25 objectForKeyedSubscript:@"footerLinkURL"];
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
            v32 = [v24 objectForKeyedSubscript:v31];
            if (!v32)
            {
              v33 = [v4 attributes];
              v34 = [v33 objectForKeyedSubscript:v31];

              if (!v34)
              {
                continue;
              }

              v32 = [v4 attributes];
              v35 = [v32 objectForKeyedSubscript:v31];
              [v24 setObject:v35 forKeyedSubscript:v31];
            }
          }

          v28 = [&unk_282D7AD10 countByEnumeratingWithState:&v48 objects:v52 count:16];
        }

        while (v28);
      }

      v36 = [v4 footer];
      [v36 setAttributes:v24];

      v2 = v46;
      v3 = v47;
      v7 = v45;
    }

    [v6 removeObjectForKey:@"footer"];
    [v6 removeObjectForKey:@"footerLinkURL"];
  }

LABEL_25:
  v37 = [v4 attributes];
  v38 = [(RUIHeaderElement *)v37 objectForKeyedSubscript:@"label"];
  if (!v38)
  {
LABEL_32:

    goto LABEL_33;
  }

  v39 = v38;
  v40 = [v4 header];

  if (!v40)
  {
    if (_isInternalInstall())
    {
      v41 = _RUILoggingFacility();
      if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
      {
        v42 = [(RUITopLevelElementParser *)v2 baseURL];
        *buf = 138412290;
        v54 = v42;
        _os_log_impl(&dword_21B93D000, v41, OS_LOG_TYPE_DEFAULT, "Page with baseURL %@ is using deprecated pinView attribute 'label'. Use <header> instead.", buf, 0xCu);
      }
    }

    v37 = [(RUIElement *)[RUIHeaderElement alloc] initWithAttributes:&unk_282D7ACC0 parent:v4];
    [v4 setHeader:v37];
    v43 = [v4 attributes];
    v44 = [v43 objectForKeyedSubscript:@"label"];
    [(RUIElement *)v37 setBody:v44];

    [v6 removeObjectForKey:@"label"];
    goto LABEL_32;
  }

LABEL_33:
  [v4 setAttributes:v6];
}

- (void)_finalizeSection
{
  v3 = [(RUITopLevelElementParser *)self elementProvider];
  v4 = [v3 makeTableViewOM];
  v5 = [v4 sections];
  v66 = [v5 lastObject];

  v6 = [v66 attributes];
  v7 = [(RUIHeaderElement *)v6 objectForKeyedSubscript:@"header"];
  if (v7)
  {
    v8 = v7;
    v9 = [v66 header];

    if (v9)
    {
      goto LABEL_5;
    }

    v6 = [(RUIElement *)[RUIHeaderElement alloc] initWithAttributes:0 parent:v66];
    v10 = [v66 attributes];
    v11 = [v10 objectForKeyedSubscript:@"header"];
    [(RUIElement *)v6 setBody:v11];

    [v66 setHeader:v6];
  }

LABEL_5:
  v12 = [v66 attributes];
  v13 = [(RUIDetailHeaderElement *)v12 objectForKeyedSubscript:@"detailHeader"];
  if (v13)
  {
    v14 = v13;
    v15 = [v66 detailHeader];

    if (v15)
    {
      goto LABEL_9;
    }

    v12 = [(RUIElement *)[RUIDetailHeaderElement alloc] initWithAttributes:0 parent:v66];
    v16 = [v66 attributes];
    v17 = [v16 objectForKeyedSubscript:@"detailHeader"];
    [(RUIDetailHeaderElement *)v12 setBody:v17];

    [v66 setDetailHeader:v12];
  }

LABEL_9:
  v18 = [v66 attributes];
  v19 = [(RUISubHeaderElement *)v18 objectForKeyedSubscript:@"subHeader"];
  if (v19)
  {
    v20 = v19;
    v21 = [v66 subHeader];

    if (v21)
    {
      goto LABEL_13;
    }

    v18 = [(RUIElement *)[RUISubHeaderElement alloc] initWithAttributes:0 parent:v66];
    v22 = [v66 attributes];
    v23 = [v22 objectForKeyedSubscript:@"subHeader"];
    [(RUIElement *)v18 setBody:v23];

    [v66 setSubHeader:v18];
  }

LABEL_13:
  v24 = [v66 attributes];
  v25 = [(RUIFooterElement *)v24 objectForKeyedSubscript:@"footer"];
  if (v25)
  {
    v26 = v25;
    v27 = [v66 footer];

    if (v27)
    {
      goto LABEL_17;
    }

    v24 = [(RUIElement *)[RUIFooterElement alloc] initWithAttributes:0 parent:v66];
    v28 = [v66 attributes];
    v29 = [v28 objectForKeyedSubscript:@"footer"];
    [(RUIElement *)v24 setBody:v29];

    [v66 setFooter:v24];
  }

LABEL_17:
  v30 = [v66 header];
  v31 = [v30 attributes];

  if (!v31)
  {
    v32 = [v66 attributes];
    v33 = [v66 header];
    [v33 setAttributes:v32];
  }

  v34 = [v66 footer];
  v35 = [v34 attributes];

  if (!v35)
  {
    v36 = [v66 attributes];
    v37 = [v66 footer];
    [v37 setAttributes:v36];
  }

  v38 = [v66 footer];
  v39 = [v38 attributes];
  v40 = [v39 objectForKeyedSubscript:@"url"];
  if (v40)
  {
  }

  else
  {
    v41 = [v66 attributes];
    v42 = [v41 objectForKeyedSubscript:@"footerLinkURL"];

    if (!v42)
    {
      goto LABEL_35;
    }

    v43 = [v66 attributes];
    v44 = [v43 objectForKeyedSubscript:@"footerLinkURL"];
    [(RUITopLevelElementParser *)self _logDeprecation:@"footerLinkURL" value:v44];

    v45 = [v66 footer];
    v46 = [v45 attributes];
    v47 = [v46 mutableCopy];
    v48 = v47;
    if (v47)
    {
      v49 = v47;
    }

    else
    {
      v49 = objc_opt_new();
    }

    v38 = v49;

    v50 = [v66 attributes];
    v51 = [v50 objectForKeyedSubscript:@"footerLinkURL"];
    [v38 setObject:v51 forKeyedSubscript:@"url"];

    v52 = [v66 attributes];
    v53 = [v52 objectForKeyedSubscript:@"footerLinkURL"];
    [v38 setObject:v53 forKeyedSubscript:@"footerLinkURL"];

    v54 = [v66 attributes];
    v55 = [v54 objectForKeyedSubscript:@"httpMethod"];

    if (v55)
    {
      v56 = [v66 attributes];
      v57 = [v56 objectForKeyedSubscript:@"httpMethod"];
      [v38 setObject:v57 forKeyedSubscript:@"httpMethod"];
    }

    v58 = [v66 attributes];
    v59 = [v58 objectForKeyedSubscript:@"footerLinkIsModalHTMLView"];

    if (v59)
    {
      v60 = [v66 attributes];
      v61 = [v60 objectForKeyedSubscript:@"footerLinkIsModalHTMLView"];
      [v38 setObject:v61 forKeyedSubscript:@"fetchLinksInModalWebView"];
    }

    v62 = [v66 attributes];
    v63 = [v62 objectForKeyedSubscript:@"shouldScaleHTMLPageToFit"];

    if (v63)
    {
      v64 = [v66 attributes];
      v65 = [v64 objectForKeyedSubscript:@"shouldScaleHTMLPageToFit"];
      [v38 setObject:v65 forKeyedSubscript:@"shouldScaleHTMLPageToFit"];
    }

    v39 = [v66 footer];
    [v39 setAttributes:v38];
  }

LABEL_35:
}

- (void)_finalizeElement:(id)a3
{
  v4 = a3;
  if ([v4 isEqualToString:@"section"])
  {
    [(RUITopLevelElementParser *)self _finalizeSection];
  }

  else if (-[RUITopLevelElementParser usesLegacyPinView](self, "usesLegacyPinView") && [v4 isEqualToString:@"pinView"])
  {
    [(RUITopLevelElementParser *)self _finalizePinView];
  }
}

- (void)traversalDelegateDidStartElement:(id)a3
{
  v163[1] = *MEMORY[0x277D85DE8];
  v5 = a3;
  [(NSMutableString *)self->_accumulator setString:&stru_282D68F58];
  v6 = [v5 name];
  v7 = [v6 isEqualToString:@"choiceView"];

  if (v7)
  {
    v8 = [v5 attributtes];
    v9 = [v8 mutableCopy];

    v10 = [(RUITopLevelElementParser *)self page];
    v11 = [v10 navTitle];
    [v9 setObject:v11 forKeyedSubscript:@"navigationTitle"];

    [v9 setObject:@"true" forKeyedSubscript:@"isLegacyChoiceViewHeader"];
    [v5 setAttributtes:v9];
  }

  v12 = [v5 attributtes];
  v13 = [v5 name];
  objc_storeStrong(&self->_currentElementAttributes, v12);
  v14 = [(NSMutableArray *)self->_elementStack containsObject:@"tableView"];
  v15 = [(NSMutableArray *)self->_elementStack containsObject:@"section"];
  v16 = [MEMORY[0x277CBEB98] setWithObjects:{@"header", @"footer", @"subHeader", @"detailHeader", @"htmlHeader", @"htmlFooter", @"cancelButton", @"button", @"choice", @"helpLink", @"htmlSubLabel", @"page", 0}];
  if ([(RUITopLevelElementParser *)self _isParsingSwiftUI])
  {
    swiftUIStack = self->_swiftUIStack;
LABEL_5:
    v18 = v13;
LABEL_6:
    [(NSMutableArray *)swiftUIStack addObject:v18];
    goto LABEL_24;
  }

  v19 = +[_TtC8RemoteUI18RUIContentRegistry sharedRegistry];
  v20 = [v19 supportsViewNamed:v13];

  if (v20)
  {
    v163[0] = v13;
    v21 = [MEMORY[0x277CBEA60] arrayWithObjects:v163 count:1];
    v22 = [v21 mutableCopy];
    v23 = self->_swiftUIStack;
    self->_swiftUIStack = v22;

    objc_storeStrong(&self->_swiftUIElement, a3);
    v24 = [(RUITopLevelElementParser *)self delegate];
    v25 = [RUIActionSignal signalWithType:2];
    [v24 parser:self setDefaultActionSignal:v25];

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

  if ([(__CFString *)v13 isEqualToString:@"tableView"])
  {
    v27 = [(RUITopLevelElementParser *)self delegate];
    v28 = [RUIActionSignal signalWithType:2];
    [v27 parser:self setDefaultActionSignal:v28];

    v29 = [(RUITopLevelElementParser *)self elementProvider];
    v30 = [v29 makeTableViewOM];
    [v30 setAttributes:v12];

    v31 = [(RUITopLevelElementParser *)self objectModel];
    v32 = [v31 style];
    v33 = [(RUITopLevelElementParser *)self elementProvider];
    v34 = [v33 makeTableViewOM];
    [v34 setStyle:v32];

    goto LABEL_22;
  }

  if ([(RUITopLevelElementParser *)self usesLegacyPinView]&& [(__CFString *)v13 isEqualToString:@"pinView"])
  {
    v35 = [(RUITopLevelElementParser *)self delegate];
    v36 = [RUIActionSignal signalWithType:2];
    [v35 parser:self setDefaultActionSignal:v36];

    v31 = [(RUITopLevelElementParser *)self page];
    v37 = [v31 passcodeViewOM];
    [v37 setAttributes:v12];

    v38 = [(RUITopLevelElementParser *)self objectModel];
    v39 = [v38 style];
    v40 = [v31 passcodeViewOM];
    [v40 setStyle:v39];

    v41 = [v12 objectForKeyedSubscript:@"numberOfFields"];
    v42 = [v41 integerValue];
    if (v42)
    {
      v43 = v42;
    }

    else
    {
      v43 = 4;
    }

    v44 = [v31 passcodeViewOM];
    [v44 setNumberOfEntryFields:v43];

    v45 = [v31 passcodeViewOM];
    goto LABEL_21;
  }

  if ([(__CFString *)v13 isEqualToString:@"spinnerView"])
  {
    v46 = [(RUITopLevelElementParser *)self delegate];
    v47 = [RUIActionSignal signalWithType:2];
    [v46 parser:self setDefaultActionSignal:v47];

    v31 = [(RUITopLevelElementParser *)self page];
    v48 = [v31 spinnerViewOM];
    [v48 setAttributes:v12];

    v49 = [(RUITopLevelElementParser *)self objectModel];
    v50 = [v49 style];
    v51 = [v31 spinnerViewOM];
    [v51 setStyle:v50];

    v45 = [v31 spinnerViewOM];
LABEL_21:
    v32 = v45;
    [(RUIElement *)v45 setSourceXMLElement:v5];
    goto LABEL_22;
  }

  if ([(__CFString *)v13 isEqualToString:@"section"])
  {
    [(RUITopLevelElementParser *)self _addSectionWithAttributes:v12 xmlElement:v5];
    goto LABEL_24;
  }

  if ([(__CFString *)v13 isEqualToString:@"headerView"])
  {
    [(RUITopLevelElementParser *)self _logDeprecation:@"<headerView>" value:&stru_282D68F58];
    v53 = [(RUITopLevelElementParser *)self elementProvider];
    v54 = [v53 makeTableViewOM];

    v55 = [(RUIElement *)[RUIHeaderElement alloc] initWithAttributes:self->_currentElementAttributes parent:v54];
    [(RUIElement *)v55 setSourceXMLElement:v5];
    [v54 setHeader:v55];
LABEL_35:

    goto LABEL_24;
  }

  if ([(__CFString *)v13 isEqualToString:@"footerView"])
  {
    [(RUITopLevelElementParser *)self _logDeprecation:@"<footerView>" value:&stru_282D68F58];
    v56 = [(RUITopLevelElementParser *)self elementProvider];
    v54 = [v56 makeTableViewOM];

    v55 = [(RUIElement *)[RUIFooterElement alloc] initWithAttributes:self->_currentElementAttributes parent:v54];
    [v54 setFooter:v55];
    goto LABEL_35;
  }

  if ([(__CFString *)v13 isEqualToString:@"row"])
  {
    v31 = [(RUITopLevelElementParser *)self _newRowWithAttributeDict:v12];
    [v31 setSourceXMLElement:v5];
    self->_parserState = 5;
    if (!_isInternalInstall())
    {
      goto LABEL_23;
    }

    v32 = _RUILoggingFacility();
    if (os_log_type_enabled(&v32->super.super, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_21B93D000, &v32->super.super, OS_LOG_TYPE_DEFAULT, "Warning : RemoteUI markup is specifying a deprecated 'row' element.", buf, 2u);
    }

LABEL_22:

LABEL_23:
    goto LABEL_24;
  }

  if ([(__CFString *)v13 isEqualToString:@"searchTerms"]&& self->_parserState == 5)
  {
    v31 = [MEMORY[0x277CBEB58] set];
    v32 = [(RUITopLevelElementParser *)self _lastRow];
    [(RUIDetailButtonElement *)v32 setSearchTerms:v31];
    goto LABEL_22;
  }

  if ([(__CFString *)v13 hasSuffix:@"Row"])
  {
    v57 = [objc_opt_class() tableRowClassForElementName:v13];
    v58 = [objc_alloc(MEMORY[0x277CBEB38]) initWithDictionary:v12];
    [v58 setObject:v57 forKey:@"class"];
    self->_parserState = 5;
    v154 = v57;
    if ([v57 isEqualToString:@"selectPage"])
    {
      v59 = [MEMORY[0x277CCAD78] UUID];
      v60 = [v59 UUIDString];
      v61 = [@"child-page-" stringByAppendingString:v60];

      v62 = [(RUITopLevelElementParser *)self _newRowWithAttributeDict:v58];
      v63 = [(RUITopLevelElementParser *)self page];
      v64 = [(RUITopLevelElementParser *)self _createPageWithName:v61 attributes:v12];
      [v64 setPageID:v61];
      v149 = v63;
      [v63 _addChildPage:v64];
      v150 = v62;
      [v62 setLinkedPage:v64];
      v65 = [v12 objectForKeyedSubscript:@"linkedTitle"];
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
      v99 = [v12 objectForKey:@"autoGoBack"];
      v100 = [v99 BOOLValue];

      if (v100)
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

      v104 = [v12 objectForKeyedSubscript:@"header"];

      if (v104)
      {
        v105 = [v12 objectForKeyedSubscript:@"header"];
        [v98 setObject:v105 forKey:@"header"];

        v106 = [v12 objectForKeyedSubscript:@"headerHeight"];

        if (v106)
        {
          v107 = [v12 objectForKeyedSubscript:@"headerHeight"];
          [v98 setObject:v107 forKey:@"headerHeight"];
        }
      }

      v108 = [v12 objectForKeyedSubscript:@"footer"];

      if (v108)
      {
        v109 = [v12 objectForKeyedSubscript:@"footer"];
        [v98 setObject:v109 forKey:@"footer"];
      }

      v110 = [v64 tableViewOM];
      [(RUITopLevelElementParser *)self _addSectionWithAttributes:v98 toTableViewOM:v110 xmlElement:v5];
    }

    else
    {
      v87 = [(RUITopLevelElementParser *)self _newRowWithAttributeDict:v58];
      [v87 setSourceXMLElement:v5];
      v88 = [(RUITopLevelElementParser *)self _lastRow];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        v90 = [MEMORY[0x277CBEB18] array];
        v91 = self->_swiftUIStack;
        self->_swiftUIStack = v90;

        objc_storeStrong(&self->_swiftUIElement, a3);
        self->_parserState = 6;
      }
    }

    goto LABEL_77;
  }

  if ([(__CFString *)v13 isEqualToString:@"detailButton"]&& self->_parserState == 5)
  {
    v31 = [(RUITopLevelElementParser *)self _lastRow];
    v32 = [[RUIDetailButtonElement alloc] initWithAttributes:self->_currentElementAttributes parent:v31];
    [(RUIElement *)v32 setSourceXMLElement:v5];
    [v31 setDetailButton:v32];
    goto LABEL_22;
  }

  if (([(__CFString *)v13 isEqualToString:@"option"]& 1) == 0 && ![(__CFString *)v13 isEqualToString:@"linkedOption"])
  {
    if (([(__CFString *)v13 isEqualToString:@"linkDeleteAction"]& 1) != 0 || [(__CFString *)v13 isEqualToString:@"clientDeleteAction"])
    {
      v31 = [(RUITopLevelElementParser *)self _lastRow];
      if (!v31)
      {
        goto LABEL_23;
      }

      v32 = [objc_alloc(MEMORY[0x277CBEB38]) initWithDictionary:v12];
      [(RUIDetailButtonElement *)v32 setObject:v13 forKey:@"type"];
      [v31 setDeleteAction:v32];
      goto LABEL_22;
    }

    if ([(__CFString *)v13 isEqualToString:@"html"])
    {
      v111 = [v12 copy];
      v112 = [(RUITopLevelElementParser *)self elementProvider];
      v113 = [v112 makeWebViewOM];
      [v113 setAttributes:v111];

      v114 = [(RUITopLevelElementParser *)self baseURL];
      v115 = [(RUITopLevelElementParser *)self elementProvider];
      v116 = [v115 makeWebViewOM];
      [v116 setBaseURL:v114];

      v117 = [(RUITopLevelElementParser *)self elementProvider];
      v118 = [v117 makeWebViewOM];
      [v118 setSourceXMLElement:v5];

      v119 = [(RUITopLevelElementParser *)self delegate];
      v120 = [RUIActionSignal signalWithType:2];
      [v119 parser:self setDefaultActionSignal:v120];

      self->_parserState = 1;
      goto LABEL_24;
    }

    if ([(__CFString *)v13 isEqualToString:@"navigationBar"])
    {
      self->_parserState = 7;
      [(RUITopLevelElementParser *)self _addNavigationBarWithAttributes:v12];
      goto LABEL_24;
    }

    if ([(__CFString *)v13 isEqualToString:@"toolbar"])
    {
      self->_parserState = 8;
      v31 = [(RUITopLevelElementParser *)self page];
      [v31 setHasToolbar];
      goto LABEL_23;
    }

    if (([(__CFString *)v13 isEqualToString:@"footer"]& v14 & v15) == 1)
    {
      v158 = v13;
      v121 = [MEMORY[0x277CBEA60] arrayWithObjects:&v158 count:1];
      v122 = [v121 mutableCopy];
      v123 = self->_swiftUIStack;
      self->_swiftUIStack = v122;

      v124 = [v5 children];
      v125 = [v124 firstObject];
      swiftUIElement = self->_swiftUIElement;
      self->_swiftUIElement = v125;

      v127 = 4;
LABEL_92:
      self->_parserState = v127;
      swiftUIStack = self->_elementStack;
      goto LABEL_5;
    }

    if (([(__CFString *)v13 isEqualToString:@"header"]& v14 & v15) == 1)
    {
      v157 = v13;
      v128 = [MEMORY[0x277CBEA60] arrayWithObjects:&v157 count:1];
      v129 = [v128 mutableCopy];
      v130 = self->_swiftUIStack;
      self->_swiftUIStack = v129;

      v131 = [v5 children];
      v132 = [v131 firstObject];
      v133 = self->_swiftUIElement;
      self->_swiftUIElement = v132;

      v127 = 3;
      goto LABEL_92;
    }

    if (([(__CFString *)v13 isEqualToString:@"buttonBarItem"]& 1) == 0 && ([(__CFString *)v13 isEqualToString:@"linkBarItem"]& 1) == 0 && ([(__CFString *)v13 isEqualToString:@"nextBarItem"]& 1) == 0 && ([(__CFString *)v13 isEqualToString:@"editBarItem"]& 1) == 0 && ([(__CFString *)v13 isEqualToString:@"titleBarItem"]& 1) == 0 && ([(__CFString *)v13 isEqualToString:@"closeButtonBarItem"]& 1) == 0 && ![(__CFString *)v13 isEqualToString:@"backButtonBarItem"])
    {
      if ([v16 containsObject:v13])
      {
        goto LABEL_24;
      }

      v31 = _RUILoggingFacility();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        [(RUITopLevelElementParser *)v13 traversalDelegateDidStartElement:v31];
      }

      goto LABEL_23;
    }

    v154 = [(RUITopLevelElementParser *)self page];
    v134 = [objc_alloc(MEMORY[0x277CBEB38]) initWithDictionary:v12];
    v135 = [v12 objectForKeyedSubscript:@"type"];
    [v134 setObject:v135 forKeyedSubscript:@"barButtonType"];

    [v134 setObject:v13 forKey:@"type"];
    v136 = [v134 objectForKey:@"position"];
    parserState = self->_parserState;
    if (parserState == 8)
    {
      [v134 setObject:@"toolbar" forKey:@"parentBar"];
      v143 = [RUIBarButtonItem alloc];
      v144 = [v154 pageElement];
      v140 = [(RUIElement *)v143 initWithAttributes:v134 parent:v144];

      [(RUIElement *)v140 setSourceXMLElement:v5];
      v145 = [(RUITopLevelElementParser *)self objectModel];
      v146 = [v145 style];
      [(RUIElement *)v140 setStyle:v146];

      if ([v136 isEqualToString:@"right"])
      {
        [v154 setRightToolbarButtonItem:v140];
      }

      else if ([v136 isEqualToString:@"left"])
      {
        [v154 setLeftToolbarButtonItem:v140];
      }

      else if ([v136 isEqualToString:@"center"])
      {
        [v154 setMiddleToolbarButtonItem:v140];
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
      v139 = [v154 pageElement];
      v140 = [(RUIElement *)v138 initWithAttributes:v134 parent:v139];

      [(RUIElement *)v140 setSourceXMLElement:v5];
      v141 = [(RUITopLevelElementParser *)self objectModel];
      v142 = [v141 style];
      [(RUIElement *)v140 setStyle:v142];

      if ([v136 isEqualToString:@"right"])
      {
        [v154 setRightNavigationBarButtonItem:v140];
      }

      else if ([v136 isEqualToString:@"left"])
      {
        [v154 setLeftNavigationBarButtonItem:v140];
      }
    }

    goto LABEL_113;
  }

  if ([(__CFString *)v13 isEqualToString:@"linkedOption"])
  {
    v155 = [v12 mutableCopy];
    v151 = [(RUITopLevelElementParser *)self elementProvider];
    v67 = [v151 parentElement];
    v68 = [v67 pageElement];
    v69 = [v68 page];
    v70 = [v69 childPages];
    v71 = [v70 lastObject];

    v152 = v71;
    v72 = [v71 tableViewOM];
    v73 = [v72 sections];
    v74 = [v73 lastObject];

    v75 = [v74 attributes];
    v76 = [v75 objectForKeyedSubscript:@"radioGroup"];
    [v155 setObject:v76 forKeyedSubscript:@"radioGroup"];

    [v155 setObject:@"linkedOption" forKeyedSubscript:@"class"];
    v77 = [v155 objectForKeyedSubscript:@"value"];
    v78 = [v74 attributes];
    v79 = [v78 objectForKeyedSubscript:@"value"];
    LODWORD(v68) = [v77 isEqualToString:v79];

    if (v68)
    {
      [v155 setObject:@"true" forKeyedSubscript:@"checked"];
    }

    v80 = [v152 tableViewOM];

    v81 = [v152 parentPage];
    v82 = [v81 tableViewOM];
    v83 = [v82 sections];
    v84 = [v83 lastObject];

    v85 = [v84 rows];
    v86 = [v85 lastObject];
  }

  else
  {
    v86 = [(RUITopLevelElementParser *)self _lastRow];
  }

  if (v86)
  {
    v92 = [v86 selectOptions];
    v93 = objc_alloc_init(RUISelectOption);
    v94 = [v12 objectForKey:@"label"];
    [(RUISelectOption *)v93 setLabel:v94];

    v95 = [(RUISelectOption *)v93 label];
    v96 = [v95 length];

    if (!v96)
    {
      [(RUISelectOption *)v93 setLabel:@" "];
    }

    v97 = [v12 objectForKey:@"value"];
    [(RUISelectOption *)v93 setValue:v97];

    [v92 addObject:v93];
  }

LABEL_24:
  v52 = self->_parserState;
  if ((v52 - 2) >= 3 && (v52 != 6 || [(__CFString *)v13 isEqualToString:@"swiftUIRow"]))
  {
    [(NSMutableArray *)self->_elementStack addObject:v13];
  }
}

- (void)traversalDelegateDidEndlement:(id)a3
{
  v98 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(NSMutableString *)self->_accumulator copy];
  v6 = [v4 name];
  v7 = [(RUITopLevelElementParser *)self _isParsingSwiftUI];
  v8 = 32;
  if (v7)
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
            v10 = [(RUITopLevelElementParser *)self page];
            v11 = [_TtC8RemoteUI26RUISwiftUIContainerElement alloc];
            swiftUIElement = self->_swiftUIElement;
            v13 = [v10 pageElement];
            v14 = [(RUISwiftUIContainerElement *)v11 initWithElement:swiftUIElement parent:v13];

            if (v14)
            {
              [(RUITopLevelElementProvider *)self->_elementProvider setPrimaryElement:v14];
              swiftUIStack = self->_swiftUIStack;
              self->_swiftUIStack = 0;

              v16 = self->_swiftUIElement;
              self->_swiftUIElement = 0;

              [(RUIElement *)v14 setSourceXMLElement:v4];
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
        v29 = [(RUITopLevelElementParser *)self elementProvider];
        v30 = [v29 makeTableViewOM];
        v31 = [v30 sections];
        v22 = [v31 lastObject];

        if (!v28)
        {
          v23 = [(RUIElement *)[RUIHeaderElement alloc] initWithAttributes:self->_currentElementAttributes parent:v22];
          [(RUIElement *)v23 setSourceXMLElement:v4];
          [(RUIElement *)v23 setBody:self->_accumulator];
          [v22 setHeader:v23];
          goto LABEL_92;
        }

        v23 = [[_TtC8RemoteUI26RUISwiftUIContainerElement alloc] initWithElement:self->_swiftUIElement parent:v22];
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
          v79 = [(NSMutableArray *)self->_elementStack lastObject];
          v80 = [v79 isEqualToString:v6];

          if (v80)
          {
            [(NSMutableArray *)self->_elementStack removeLastObject];
          }

          goto LABEL_103;
        }

        [v22 setHeader:v23];
LABEL_30:
        [(RUIElement *)v23 setSourceXMLElement:v4];
        goto LABEL_31;
      }
    }

    else if (![(NSMutableArray *)self->_swiftUIStack count])
    {
      v18 = self->_swiftUIElement;
      v19 = [(RUITopLevelElementParser *)self elementProvider];
      v20 = [v19 makeTableViewOM];
      v21 = [v20 sections];
      v22 = [v21 lastObject];

      if (!v18)
      {
        v23 = [(RUIElement *)[RUIFooterElement alloc] initWithAttributes:self->_currentElementAttributes parent:v22];
        [(RUIElement *)v23 setSourceXMLElement:v4];
        [(RUIElement *)v23 setBody:self->_accumulator];
        [v22 setFooter:v23];
        goto LABEL_92;
      }

      v23 = [[_TtC8RemoteUI26RUISwiftUIContainerElement alloc] initWithElement:self->_swiftUIElement parent:v22];
      if (!v23)
      {
        goto LABEL_31;
      }

      [v22 setFooter:v23];
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
    if (![v6 isEqualToString:v24])
    {
      goto LABEL_35;
    }

    goto LABEL_34;
  }

  if (parserState == 5)
  {
    if ([v6 isEqualToString:@"searchTerm"])
    {
      v25 = [(RUITopLevelElementParser *)self _lastRow];
      v26 = [v25 searchTerms];
      v27 = [(NSMutableString *)self->_accumulator copy];
      [v26 addObject:v27];

      goto LABEL_35;
    }

    if (([v6 hasSuffix:@"Row"] & 1) == 0 && !objc_msgSend(v6, "isEqualToString:", @"row"))
    {
LABEL_35:
      v32 = [(NSMutableArray *)self->_elementStack lastObject];
      v33 = [v32 isEqualToString:@"tableView"];

      v34 = [(NSMutableArray *)self->_elementStack lastObject];
      v35 = [v34 isEqualToString:@"section"];

      [(NSMutableArray *)self->_elementStack containsObject:@"multiChoiceView"];
      v36 = [(RUITopLevelElementParser *)self page];
      v37 = [v36 hasSpinnerView];

      if (v35)
      {
        v38 = [(RUITopLevelElementParser *)self elementProvider];
        v39 = [v38 makeTableViewOM];
        v40 = [v39 sections];
        v41 = [v40 lastObject];

        if ([v6 isEqualToString:@"htmlHeader"])
        {
          v42 = self;
          v43 = [(RUIElement *)[RUIHTMLHeaderElement alloc] initWithAttributes:self->_currentElementAttributes parent:v41];
          [(RUIElement *)v43 setSourceXMLElement:v4];
          [(RUIHTMLHeaderElement *)v43 setHTMLContent:v5];
LABEL_41:
          [v41 setHeader:v43];
LABEL_100:

          self = v42;
          goto LABEL_101;
        }

        if ([v6 isEqualToString:@"detailHeader"])
        {
          v42 = self;
          v43 = [(RUIElement *)[RUIDetailHeaderElement alloc] initWithAttributes:self->_currentElementAttributes parent:v41];
          [(RUIElement *)v43 setSourceXMLElement:v4];
          [(RUIElement *)v43 setBody:v5];
          [v41 setDetailHeader:v43];
          goto LABEL_100;
        }

        if ([v6 isEqualToString:@"subHeader"])
        {
LABEL_55:
          v42 = self;
          v43 = [(RUIElement *)[RUISubHeaderElement alloc] initWithAttributes:self->_currentElementAttributes parent:v41];
          [(RUIElement *)v43 setSourceXMLElement:v4];
          [(RUIElement *)v43 setBody:v5];
          [v41 setSubHeader:v43];
          goto LABEL_100;
        }

        goto LABEL_97;
      }

      if (v33)
      {
        v44 = [(RUITopLevelElementParser *)self elementProvider];
        v41 = [v44 makeTableViewOM];

        if (![v6 isEqualToString:@"header"])
        {
          if (![v6 isEqualToString:@"subHeader"])
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
          if (!v37)
          {
LABEL_102:
            [(RUITopLevelElementParser *)self _finalizeElement:v6];
            goto LABEL_103;
          }

          v41 = [(RUITopLevelElementParser *)self page];
          [v41 spinnerViewOM];
          v43 = v46 = self;
          if ([v6 isEqualToString:@"header"])
          {
            v42 = v46;
            v47 = [(RUIElement *)[RUIHeaderElement alloc] initWithAttributes:v46->_currentElementAttributes parent:v43];
            [(RUIElement *)v47 setSourceXMLElement:v4];
            [(RUIElement *)v47 setBody:v5];
            [(RUIHTMLHeaderElement *)v43 setHeader:v47];
          }

          else
          {
            v42 = v46;
            if (![v6 isEqualToString:@"footer"])
            {
              goto LABEL_100;
            }

            v47 = [(RUIElement *)[RUIFooterElement alloc] initWithAttributes:v46->_currentElementAttributes parent:v43];
            [(RUIElement *)v47 setSourceXMLElement:v4];
            [(RUIElement *)v47 setBody:v5];
            [(RUIHTMLHeaderElement *)v43 setFooter:v47];
          }

          if (v47)
          {
            v74 = [(RUIElement *)v47 attributes];
            v75 = [v74 objectForKey:@"color"];

            if (![v75 length])
            {
              v76 = [(RUIElement *)v47 attributes];
              [v76 setValue:@"labelColor" forKey:@"color"];
            }
          }

          goto LABEL_100;
        }

        v45 = [(RUITopLevelElementParser *)self page];
        v41 = [v45 passcodeViewOM];

        if (![v6 isEqualToString:@"header"])
        {
          if ([v6 isEqualToString:@"htmlHeader"])
          {
            v42 = self;
            v43 = [(RUIElement *)[RUIHTMLHeaderElement alloc] initWithAttributes:self->_currentElementAttributes parent:v41];
            [(RUIElement *)v43 setSourceXMLElement:v4];
            [(RUIHTMLHeaderElement *)v43 setHTMLContent:v5];
            [v41 setHTMLHeader:v43];
            goto LABEL_100;
          }

          if ([v6 isEqualToString:@"footer"])
          {
            v42 = self;
            v43 = [(RUIElement *)[RUIFooterElement alloc] initWithAttributes:self->_currentElementAttributes parent:v41];
            [(RUIElement *)v43 setSourceXMLElement:v4];
            [(RUIElement *)v43 setBody:v5];
LABEL_99:
            [v41 setFooter:v43];
            goto LABEL_100;
          }

LABEL_97:
          if (![v6 isEqualToString:@"htmlFooter"])
          {
LABEL_101:

            goto LABEL_102;
          }

          v42 = self;
          v43 = [(RUIElement *)[RUIHTMLFooterElement alloc] initWithAttributes:self->_currentElementAttributes parent:v41];
          [(RUIElement *)v43 setSourceXMLElement:v4];
          [(RUIHTMLHeaderElement *)v43 setHTMLContent:v5];
          goto LABEL_99;
        }
      }

      v42 = self;
      v43 = [(RUIElement *)[RUIHeaderElement alloc] initWithAttributes:self->_currentElementAttributes parent:v41];
      [(RUIElement *)v43 setSourceXMLElement:v4];
      [(RUIElement *)v43 setBody:v5];
      goto LABEL_41;
    }

    if ([v6 isEqualToString:@"selectPageRow"])
    {
      v82 = v4;
      v83 = self;
      v48 = [(RUITopLevelElementParser *)self elementProvider];
      v49 = [v48 parentElement];
      v50 = [v49 pageElement];
      v51 = [v50 page];
      v52 = [v51 childPages];
      v53 = [v52 lastObject];

      v94 = 0u;
      v95 = 0u;
      v92 = 0u;
      v93 = 0u;
      v81 = v53;
      v54 = [v53 tableViewOM];
      v55 = [v54 sections];

      obj = v55;
      v86 = [v55 countByEnumeratingWithState:&v92 objects:v97 count:16];
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
            v59 = [v58 rows];
            v60 = [v59 countByEnumeratingWithState:&v88 objects:v96 count:16];
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
                    objc_enumerationMutation(v59);
                  }

                  v64 = [*(*(&v88 + 1) + 8 * i) attributes];
                  v65 = [v64 objectForKeyedSubscript:@"checked"];
                  v66 = [v65 BOOLValue];

                  if (v66)
                  {
                    v67 = [v64 objectForKeyedSubscript:@"label"];

                    v56 = v67;
                  }
                }

                v61 = [v59 countByEnumeratingWithState:&v88 objects:v96 count:16];
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

      v4 = v82;
      if ([v56 length])
      {
        v68 = [(RUITopLevelElementParser *)v83 _lastRow];
        v69 = [v68 mutableAttributes];
        [v69 setObject:v56 forKey:@"detailLabel"];
      }

      self = v83;
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
    v17 = [v70 supportsViewNamed:v6];
  }

  if (([v6 isEqualToString:@"swiftUIRow"] & 1) != 0 || v17)
  {
    v71 = [(RUITopLevelElementParser *)self _lastRow];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v71 setXmlElement:self->_swiftUIElement];
      [v71 prepareToPreload];
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

- (void)traversalDelegateFoundCData:(id)a3
{
  v14 = a3;
  parserState = self->_parserState;
  if (parserState != 5)
  {
    if (parserState == 1)
    {
      v5 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v14 encoding:4];
      v6 = [(RUITopLevelElementParser *)self elementProvider];
      v7 = [v6 makeWebViewOM];
      [v7 setHtml:v5];

      goto LABEL_11;
    }

LABEL_10:
    accumulator = self->_accumulator;
    v5 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v14 encoding:4];
    [(NSMutableString *)accumulator appendString:v5];
    goto LABEL_11;
  }

  v8 = [(NSMutableArray *)self->_elementStack lastObject];
  v9 = [v8 isEqualToString:@"htmlSubLabel"];

  if (v9)
  {
    v5 = [(RUITopLevelElementParser *)self _lastRow];
    [v5 setHtmlSubLabelData:v14];
    goto LABEL_11;
  }

  if (self->_parserState != 5)
  {
    goto LABEL_10;
  }

  v10 = [(NSMutableArray *)self->_elementStack lastObject];
  v11 = [v10 hasSuffix:@"Row"];

  if (!v11)
  {
    goto LABEL_10;
  }

  v12 = [(RUITopLevelElementParser *)self _lastRow];
  v5 = v12;
  if (v12)
  {
    [v12 setData:v14];
  }

LABEL_11:
}

- (id)_createPageWithName:(id)a3 attributes:(id)a4
{
  v6 = a3;
  v7 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    v10 = objc_loadWeakRetained(&self->_delegate);
    v11 = [v10 topLevelElementParser:self createPageWithName:v6 attributes:v7];
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