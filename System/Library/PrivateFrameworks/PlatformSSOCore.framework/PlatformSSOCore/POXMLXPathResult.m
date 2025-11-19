@interface POXMLXPathResult
- (NSArray)nodes;
- (POXMLXPathResult)init;
- (int)nodeCount;
- (void)dealloc;
@end

@implementation POXMLXPathResult

- (POXMLXPathResult)init
{
  v3.receiver = self;
  v3.super_class = POXMLXPathResult;
  result = [(POXMLXPathResult *)&v3 init];
  if (result)
  {
    result->_xpathObj = 0;
  }

  return result;
}

- (void)dealloc
{
  if ([(POXMLXPathResult *)self xpathObj])
  {
    xmlXPathFreeObject([(POXMLXPathResult *)self xpathObj]);
  }

  [(POXMLXPathResult *)self setXpathObj:0];
  v3.receiver = self;
  v3.super_class = POXMLXPathResult;
  [(POXMLXPathResult *)&v3 dealloc];
}

- (int)nodeCount
{
  v2 = [(POXMLXPathResult *)self xpathObj][8];
  if (v2)
  {
    return *v2;
  }

  else
  {
    return 0;
  }
}

- (NSArray)nodes
{
  if ([(POXMLXPathResult *)self xpathObj]&& [(POXMLXPathResult *)self xpathObj][8] && *[(POXMLXPathResult *)self xpathObj][8] && *([(POXMLXPathResult *)self xpathObj][8] + 8))
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v4 = [(POXMLXPathResult *)self xpathObj][8];
    if (v4)
    {
      v5 = *v4;
      if (v5 >= 1)
      {
        v6 = 0;
        v7 = 8 * v5;
        do
        {
          v8 = *(*(v4 + 1) + v6);
          if (!v8)
          {
            [POXMLXPathResult nodes];
          }

          if (*(v8 + 8) == 1)
          {
            v9 = objc_alloc_init(POXMLNode);
            [(POXMLNode *)v9 setNode:v8];
            [(POXMLNode *)v9 setXpathResultSet:self];
            [v3 addObject:v9];
          }

          v6 += 8;
        }

        while (v7 != v6);
      }
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

@end