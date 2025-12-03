@interface WFWhitelistSiteBuffer
- (BOOL)containsURLString:(id)string;
- (BOOL)treeContainsURLString:(id)string;
- (WFWhitelistSiteBuffer)init;
- (void)addURLString:(id)string;
- (void)dealloc;
@end

@implementation WFWhitelistSiteBuffer

- (WFWhitelistSiteBuffer)init
{
  v5.receiver = self;
  v5.super_class = WFWhitelistSiteBuffer;
  v2 = [(WFWhitelistSiteBuffer *)&v5 init];
  v3 = v2;
  if (v2)
  {
    v2->_maxSize = 100000;
    v2->_siteTree = objc_alloc_init(MEMORY[0x277CBEB38]);
    v3->_urlList = objc_opt_new();
  }

  return v3;
}

- (void)dealloc
{
  siteTree = self->_siteTree;
  if (siteTree)
  {
  }

  urlList = self->_urlList;
  if (urlList)
  {
  }

  v5.receiver = self;
  v5.super_class = WFWhitelistSiteBuffer;
  [(WFWhitelistSiteBuffer *)&v5 dealloc];
}

- (void)addURLString:(id)string
{
  urlList = [(WFWhitelistSiteBuffer *)self urlList];

  [(WCRURLList *)urlList addURLString:string];
}

- (BOOL)treeContainsURLString:(id)string
{
  v4 = [string WF_stringByProperlyFixingPercentEscapesUsingEncoding:4];
  v5 = [MEMORY[0x277CBEBC0] URLWithString:{objc_msgSend(v4, "lowercaseString")}];
  v6 = [MEMORY[0x277CBEB18] arrayWithArray:{objc_msgSend(objc_msgSend(v5, "host"), "componentsSeparatedByString:", @"."}];
  if ([objc_msgSend(v5 "pathComponents")] >= 2)
  {
    [v6 addObjectsFromArray:{objc_msgSend(v5, "pathComponents")}];
  }

  if ([v5 query])
  {
    [v6 addObject:{objc_msgSend(v5, "query")}];
  }

  if ([v5 fragment])
  {
    [v6 addObject:{objc_msgSend(v5, "fragment")}];
  }

  siteTree = [(WFWhitelistSiteBuffer *)self siteTree];
  v8 = [v6 count] - 1;
  if (v8 < 0)
  {
    return 0;
  }

  while (1)
  {
    v9 = -[NSMutableDictionary objectForKey:](siteTree, "objectForKey:", [v6 objectAtIndex:v8]);
    if (!v9)
    {
      goto LABEL_17;
    }

    v10 = v9;
    if (!v8 && -[NSMutableDictionary count](v9, "count") == 1 && ([-[NSMutableDictionary objectForKey:](v10 objectForKey:{@"kWFEndpointKey", "BOOLValue"}] & 1) != 0)
    {
      return 1;
    }

    if (-[NSMutableDictionary count](v10, "count") == 1 && (v11 = [-[NSMutableDictionary objectForKey:](v10 objectForKey:{@"kWFEndpointKey", "BOOLValue"}], v8))
    {
      siteTree = v10;
      if (v11)
      {
        return 1;
      }
    }

    else
    {
      siteTree = v10;
    }

LABEL_17:
    if (v8-- <= 0)
    {
      return 0;
    }
  }
}

- (BOOL)containsURLString:(id)string
{
  urlList = [(WFWhitelistSiteBuffer *)self urlList];

  return [(WCRURLList *)urlList containsURLString:string];
}

@end