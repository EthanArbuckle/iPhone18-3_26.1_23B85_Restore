@interface REHTMLPageBuilder
+ (id)_bodyElement;
+ (id)_docTypeElement;
+ (id)_headElement;
+ (id)_htmlElement;
+ (id)_iosIcon;
+ (id)_largeFavicon;
+ (id)_mainNavigationElement;
+ (id)_safariIcon;
+ (id)_scriptElementWithLocation:(id)a3;
+ (id)_smallFavicon;
+ (id)_stylesheetElementWithLocation:(id)a3;
+ (id)_viewportElement;
- (REHTMLPageBuilder)init;
- (id)pageWithTitle:(id)a3 content:(id)a4 backLocation:(id)a5;
- (void)setLinks:(id)a3;
- (void)setLoadingScripts:(id)a3;
- (void)setPageDescription:(id)a3;
- (void)setStylesheets:(id)a3;
@end

@implementation REHTMLPageBuilder

+ (id)_docTypeElement
{
  if (_docTypeElement_onceToken != -1)
  {
    +[REHTMLPageBuilder _docTypeElement];
  }

  v3 = _docTypeElement_Element;

  return v3;
}

uint64_t __36__REHTMLPageBuilder__docTypeElement__block_invoke()
{
  v0 = [REHTMLElement elementWithHTMLString:@"<!DOCTYPE html>"];
  v1 = _docTypeElement_Element;
  _docTypeElement_Element = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

+ (id)_htmlElement
{
  if (_htmlElement_onceToken != -1)
  {
    +[REHTMLPageBuilder _htmlElement];
  }

  v3 = _htmlElement_Element;

  return v3;
}

uint64_t __33__REHTMLPageBuilder__htmlElement__block_invoke()
{
  v0 = [REHTMLElement htmlElementWithTag:@"html" content:&stru_283B97458];
  v1 = _htmlElement_Element;
  _htmlElement_Element = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

+ (id)_headElement
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __33__REHTMLPageBuilder__headElement__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (_headElement_onceToken != -1)
  {
    dispatch_once(&_headElement_onceToken, block);
  }

  v2 = _headElement_Element;

  return v2;
}

void __33__REHTMLPageBuilder__headElement__block_invoke(uint64_t a1)
{
  v2 = [REHTMLElement htmlElementWithTag:@"meta" content:0];
  v30 = [v2 elementByAddingAtttibute:@"charset" value:@"utf-8"];

  v3 = [REHTMLElement htmlElementWithTag:@"head" content:&stru_283B97458];
  v4 = [v3 addChild:v30];
  v5 = _headElement_Element;
  _headElement_Element = v4;

  v6 = _headElement_Element;
  v7 = [*(a1 + 32) _viewportElement];
  v8 = [v6 addChild:v7];
  v9 = _headElement_Element;
  _headElement_Element = v8;

  v10 = _headElement_Element;
  v11 = [*(a1 + 32) _iosIcon];
  v12 = [v10 addChild:v11];
  v13 = _headElement_Element;
  _headElement_Element = v12;

  v14 = _headElement_Element;
  v15 = [*(a1 + 32) _smallFavicon];
  v16 = [v14 addChild:v15];
  v17 = _headElement_Element;
  _headElement_Element = v16;

  v18 = _headElement_Element;
  v19 = [*(a1 + 32) _largeFavicon];
  v20 = [v18 addChild:v19];
  v21 = _headElement_Element;
  _headElement_Element = v20;

  v22 = _headElement_Element;
  v23 = [*(a1 + 32) _safariIcon];
  v24 = [v22 addChild:v23];
  v25 = _headElement_Element;
  _headElement_Element = v24;

  v26 = [REHTMLElement htmlElementWithTag:@"meta" content:0];
  v27 = [v26 elementByAddingAtttibutes:&unk_283BBDA58];

  v28 = [_headElement_Element addChild:v27];
  v29 = _headElement_Element;
  _headElement_Element = v28;
}

+ (id)_stylesheetElementWithLocation:(id)a3
{
  v3 = _stylesheetElementWithLocation__onceToken;
  v4 = a3;
  if (v3 != -1)
  {
    +[REHTMLPageBuilder _stylesheetElementWithLocation:];
  }

  v5 = [_stylesheetElementWithLocation__Element elementByAddingAtttibute:@"href" value:v4];

  return v5;
}

uint64_t __52__REHTMLPageBuilder__stylesheetElementWithLocation___block_invoke()
{
  v0 = [REHTMLElement htmlElementWithTag:@"link" content:0];
  v1 = _stylesheetElementWithLocation__Element;
  _stylesheetElementWithLocation__Element = v0;

  v2 = [_stylesheetElementWithLocation__Element elementByAddingAtttibute:@"rel" value:@"stylesheet"];
  v3 = _stylesheetElementWithLocation__Element;
  _stylesheetElementWithLocation__Element = v2;

  return MEMORY[0x2821F96F8](v2, v3);
}

+ (id)_scriptElementWithLocation:(id)a3
{
  v3 = _scriptElementWithLocation__onceToken;
  v4 = a3;
  if (v3 != -1)
  {
    +[REHTMLPageBuilder _scriptElementWithLocation:];
  }

  v5 = [_scriptElementWithLocation__Element elementByAddingAtttibute:@"src" value:v4];

  return v5;
}

uint64_t __48__REHTMLPageBuilder__scriptElementWithLocation___block_invoke()
{
  v0 = [REHTMLElement htmlElementWithTag:@"script" content:&stru_283B97458];
  v1 = _scriptElementWithLocation__Element;
  _scriptElementWithLocation__Element = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

+ (id)_bodyElement
{
  if (_bodyElement_onceToken != -1)
  {
    +[REHTMLPageBuilder _bodyElement];
  }

  v3 = _bodyElement_Element;

  return v3;
}

uint64_t __33__REHTMLPageBuilder__bodyElement__block_invoke()
{
  v0 = [REHTMLElement htmlElementWithTag:@"body" content:&stru_283B97458];
  v1 = _bodyElement_Element;
  _bodyElement_Element = v0;

  v2 = [_bodyElement_Element elementByAddingAtttibute:@"onload" value:@"pageDidLoad()"];;
  v3 = _bodyElement_Element;
  _bodyElement_Element = v2;

  return MEMORY[0x2821F96F8](v2, v3);
}

+ (id)_mainNavigationElement
{
  if (_mainNavigationElement_onceToken != -1)
  {
    +[REHTMLPageBuilder _mainNavigationElement];
  }

  v3 = _mainNavigationElement_Element;

  return v3;
}

void __43__REHTMLPageBuilder__mainNavigationElement__block_invoke()
{
  v2 = +[REHTMLElement nav];
  v0 = [v2 elementByAddingClass:@"main_nav"];
  v1 = _mainNavigationElement_Element;
  _mainNavigationElement_Element = v0;
}

+ (id)_viewportElement
{
  v2 = [REHTMLElement htmlElementWithTag:@"meta" content:0];
  v3 = [v2 elementByAddingAtttibutes:&unk_283BBDA80];

  return v3;
}

+ (id)_iosIcon
{
  v2 = [REHTMLElement htmlElementWithTag:@"link" content:0];
  v3 = [v2 elementByAddingAtttibutes:&unk_283BBDAA8];

  return v3;
}

+ (id)_smallFavicon
{
  v2 = [REHTMLElement htmlElementWithTag:@"link" content:0];
  v3 = [v2 elementByAddingAtttibutes:&unk_283BBDAD0];

  return v3;
}

+ (id)_largeFavicon
{
  v2 = [REHTMLElement htmlElementWithTag:@"link" content:0];
  v3 = [v2 elementByAddingAtttibutes:&unk_283BBDAF8];

  return v3;
}

+ (id)_safariIcon
{
  v2 = [REHTMLElement htmlElementWithTag:@"link" content:0];
  v3 = [v2 elementByAddingAtttibutes:&unk_283BBDB20];

  return v3;
}

- (REHTMLPageBuilder)init
{
  v6.receiver = self;
  v6.super_class = REHTMLPageBuilder;
  v2 = [(REHTMLPageBuilder *)&v6 init];
  v3 = v2;
  if (v2)
  {
    [(REHTMLPageBuilder *)v2 setPageDescription:&stru_283B97458];
    v4 = MEMORY[0x277CBEBF8];
    [(REHTMLPageBuilder *)v3 setStylesheets:MEMORY[0x277CBEBF8]];
    [(REHTMLPageBuilder *)v3 setLinks:v4];
    [(REHTMLPageBuilder *)v3 setLoadingScripts:v4];
  }

  return v3;
}

- (void)setStylesheets:(id)a3
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = v5;
  if (self->_stylesheets != v5 && ([(NSArray *)v5 isEqual:?]& 1) == 0)
  {
    objc_storeStrong(&self->_stylesheets, a3);
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v7 = v6;
    v8 = [(NSArray *)v7 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = 0;
      v11 = *v21;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v21 != v11)
          {
            objc_enumerationMutation(v7);
          }

          v13 = [objc_opt_class() _stylesheetElementWithLocation:*(*(&v20 + 1) + 8 * i)];
          v14 = v13;
          if (v10)
          {
            v15 = [v10 append:v13];

            v10 = v15;
          }

          else
          {
            v10 = v13;
          }
        }

        v9 = [(NSArray *)v7 countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v9);

      if (v10)
      {
        goto LABEL_17;
      }
    }

    else
    {
    }

    v10 = [REHTMLElement elementWithHTMLString:&stru_283B97458];
LABEL_17:
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __36__REHTMLPageBuilder_setStylesheets___block_invoke;
    v18[3] = &unk_2785F9AE0;
    v18[4] = self;
    v19 = v10;
    v16 = v10;
    REHTMLElementAccessLock(v18);
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)setLoadingScripts:(id)a3
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = v5;
  if (self->_loadingScripts != v5 && ([(NSArray *)v5 isEqual:?]& 1) == 0)
  {
    objc_storeStrong(&self->_loadingScripts, a3);
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v7 = v6;
    v8 = [(NSArray *)v7 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = 0;
      v11 = *v21;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v21 != v11)
          {
            objc_enumerationMutation(v7);
          }

          v13 = [objc_opt_class() _scriptElementWithLocation:*(*(&v20 + 1) + 8 * i)];
          v14 = v13;
          if (v10)
          {
            v15 = [v10 append:v13];

            v10 = v15;
          }

          else
          {
            v10 = v13;
          }
        }

        v9 = [(NSArray *)v7 countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v9);

      if (v10)
      {
        goto LABEL_17;
      }
    }

    else
    {
    }

    v10 = [REHTMLElement elementWithHTMLString:&stru_283B97458];
LABEL_17:
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __39__REHTMLPageBuilder_setLoadingScripts___block_invoke;
    v18[3] = &unk_2785F9AE0;
    v18[4] = self;
    v19 = v10;
    v16 = v10;
    REHTMLElementAccessLock(v18);
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)setPageDescription:(id)a3
{
  v4 = a3;
  pageDescription = self->_pageDescription;
  v6 = v4;
  v7 = v6;
  if (pageDescription == v6)
  {
  }

  else
  {
    v8 = [(NSString *)v6 isEqual:pageDescription];

    if ((v8 & 1) == 0)
    {
      v9 = self->_pageDescription;
      self->_pageDescription = v7;
      v10 = v7;

      v11 = &stru_283B97458;
      if (v10)
      {
        v11 = v10;
      }

      v7 = v11;

      v12 = [REHTMLElement htmlElementWithTag:@"meta" content:0];
      v13 = [v12 elementByAddingAtttibute:@"name" value:@"description"];

      v14 = [v13 elementByAddingAtttibute:@"content" value:v7];

      v16[0] = MEMORY[0x277D85DD0];
      v16[1] = 3221225472;
      v16[2] = __40__REHTMLPageBuilder_setPageDescription___block_invoke;
      v16[3] = &unk_2785F9AE0;
      v16[4] = self;
      v17 = v14;
      v15 = v14;
      REHTMLElementAccessLock(v16);
    }
  }
}

- (void)setLinks:(id)a3
{
  v32 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = v5;
  if (self->_links == v5 || ([(NSArray *)v5 isEqual:?]& 1) != 0)
  {
    goto LABEL_20;
  }

  objc_storeStrong(&self->_links, a3);
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v7 = v6;
  v8 = [(NSArray *)v7 countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (!v8)
  {

    goto LABEL_18;
  }

  v9 = v8;
  v23 = self;
  v24 = v6;
  v10 = 0;
  v11 = *v28;
  do
  {
    for (i = 0; i != v9; ++i)
    {
      if (*v28 != v11)
      {
        objc_enumerationMutation(v7);
      }

      v13 = *(*(&v27 + 1) + 8 * i);
      v14 = [v13 location];
      v15 = [v13 title];
      v16 = [REHTMLElement link:v14 title:v15];

      v17 = [v13 location];
      v18 = [v17 length];

      if (v18)
      {
        if (v10)
        {
          goto LABEL_10;
        }
      }

      else
      {
        v20 = [v16 elementByAddingClass:@"no-highlight"];

        v16 = v20;
        if (v10)
        {
LABEL_10:
          v19 = [v10 append:v16];

          v10 = v19;
          goto LABEL_13;
        }
      }

      v10 = [v16 elementByAddingClass:@"main"];
LABEL_13:
    }

    v9 = [(NSArray *)v7 countByEnumeratingWithState:&v27 objects:v31 count:16];
  }

  while (v9);

  self = v23;
  v6 = v24;
  if (!v10)
  {
LABEL_18:
    v10 = [REHTMLElement elementWithHTMLString:&stru_283B97458];
  }

  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __30__REHTMLPageBuilder_setLinks___block_invoke;
  v25[3] = &unk_2785F9AE0;
  v25[4] = self;
  v26 = v10;
  v21 = v10;
  REHTMLElementAccessLock(v25);

LABEL_20:
  v22 = *MEMORY[0x277D85DE8];
}

- (id)pageWithTitle:(id)a3 content:(id)a4 backLocation:(id)a5
{
  v72[2] = *MEMORY[0x277D85DE8];
  v8 = a3;
  v46 = a4;
  v9 = a5;
  if (![(__CFString *)v8 length])
  {

    v8 = 0;
  }

  v45 = v9;
  if (!v46)
  {
    v46 = [REHTMLElement elementWithHTMLString:&stru_283B97458];
  }

  v66 = 0;
  v67 = &v66;
  v68 = 0x3032000000;
  v69 = __Block_byref_object_copy__6;
  v70 = __Block_byref_object_dispose__6;
  v71 = 0;
  v60 = 0;
  v61 = &v60;
  v62 = 0x3032000000;
  v63 = __Block_byref_object_copy__6;
  v64 = __Block_byref_object_dispose__6;
  v65 = 0;
  v54 = 0;
  v55 = &v54;
  v56 = 0x3032000000;
  v57 = __Block_byref_object_copy__6;
  v58 = __Block_byref_object_dispose__6;
  v59 = 0;
  v48 = 0;
  v49 = &v48;
  v50 = 0x3032000000;
  v51 = __Block_byref_object_copy__6;
  v52 = __Block_byref_object_dispose__6;
  v53 = 0;
  v47[0] = MEMORY[0x277D85DD0];
  v47[1] = 3221225472;
  v47[2] = __56__REHTMLPageBuilder_pageWithTitle_content_backLocation___block_invoke;
  v47[3] = &unk_2785FAEE8;
  v47[4] = self;
  v47[5] = &v66;
  v47[6] = &v60;
  v47[7] = &v54;
  v47[8] = &v48;
  REHTMLElementAccessLock(v47);
  v10 = [objc_opt_class() _headElement];
  v11 = v67[5];
  v72[0] = v55[5];
  v72[1] = v11;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v72 count:2];
  v13 = [v10 addChildren:v12];

  if (v8)
  {
    v14 = v8;
  }

  else
  {
    v14 = @"Relevance Engine";
  }

  v15 = [REHTMLElement htmlElementWithTag:@"title" content:v14];
  v16 = [v13 addChild:v15];
  v43 = v15;

  v17 = [objc_opt_class() _htmlElement];
  v18 = [v17 addChild:v16];

  v19 = [v18 addChild:v61[5]];

  v20 = [objc_opt_class() _bodyElement];
  v21 = [objc_opt_class() _mainNavigationElement];
  v22 = [v21 addChild:v49[5]];

  v23 = [v20 addChild:v22];

  v24 = +[REHTMLElement div];
  v25 = [v24 elementByAddingClass:@"content"];

  v26 = [v25 elementByAddingAtttibute:@"id" value:@"main-content"];

  if (v8)
  {
    v27 = +[REHTMLElement div];
    v28 = [v27 elementByAddingClass:@"header"];

    v29 = [v28 elementByAddingAtttibute:@"id" value:@"main-header"];

    if (v45)
    {
      v30 = [REHTMLElement link:v45 title:@"‹"];
      v31 = [v30 elementByAddingClass:@"chevron-back"];

      v32 = [v29 addChild:v31];

      v29 = v32;
    }

    v33 = [REHTMLElement h1:v8];
    v34 = [v29 addChild:v33];

    v35 = [v26 addChild:v34];

    v26 = v35;
  }

  v36 = [v26 addChild:{v46, v43}];

  v37 = [v23 addChild:v36];

  v38 = [v19 addChild:v37];

  v39 = [objc_opt_class() _docTypeElement];
  v40 = [v39 append:v38];

  _Block_object_dispose(&v48, 8);
  _Block_object_dispose(&v54, 8);

  _Block_object_dispose(&v60, 8);
  _Block_object_dispose(&v66, 8);

  v41 = *MEMORY[0x277D85DE8];

  return v40;
}

void __56__REHTMLPageBuilder_pageWithTitle_content_backLocation___block_invoke(void *a1)
{
  objc_storeStrong((*(a1[5] + 8) + 40), *(a1[4] + 8));
  objc_storeStrong((*(a1[6] + 8) + 40), *(a1[4] + 16));
  objc_storeStrong((*(a1[7] + 8) + 40), *(a1[4] + 24));
  v2 = *(a1[4] + 32);
  v3 = (*(a1[8] + 8) + 40);

  objc_storeStrong(v3, v2);
}

@end