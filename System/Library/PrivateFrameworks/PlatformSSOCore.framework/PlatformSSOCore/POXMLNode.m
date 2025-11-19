@interface POXMLNode
- (POXMLNode)init;
- (id)content;
- (id)evaluateXPath:(id)a3;
- (id)parent;
- (id)rawXMLString;
- (id)valueForProperty:(id)a3;
@end

@implementation POXMLNode

- (POXMLNode)init
{
  v3.receiver = self;
  v3.super_class = POXMLNode;
  result = [(POXMLNode *)&v3 init];
  if (result)
  {
    result->_node = 0;
  }

  return result;
}

- (id)evaluateXPath:(id)a3
{
  v4 = a3;
  if ([(POXMLNode *)self node][8] != 1)
  {
    goto LABEL_7;
  }

  v5 = [(POXMLNode *)self node];
  v6 = [v4 UTF8String];
  v7 = [(POXMLNode *)self xpathResultSet];
  v8 = [v7 xpathContext];
  v9 = xmlXPathNodeEval(v5, v6, [v8 xpathCtx]);

  if (!v9)
  {
    goto LABEL_7;
  }

  nodesetval = v9->nodesetval;
  if (nodesetval && nodesetval->nodeNr && nodesetval->nodeTab)
  {
    v11 = objc_alloc_init(POXMLXPathResult);
    [(POXMLXPathResult *)v11 setXpathObj:v9];
  }

  else
  {
LABEL_7:
    v11 = 0;
  }

  return v11;
}

- (id)parent
{
  if ([(POXMLNode *)self node][40])
  {
    v3 = objc_alloc_init(POXMLNode);
    [(POXMLNode *)v3 setNode:[(POXMLNode *)self node][40]];
    v4 = [(POXMLNode *)self xpathResultSet];
    [(POXMLNode *)v3 setXpathResultSet:v4];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)valueForProperty:(id)a3
{
  v4 = a3;
  v5 = [(POXMLNode *)self node];
  v6 = [v4 UTF8String];

  Prop = xmlGetProp(v5, v6);
  if (Prop)
  {
    v8 = Prop;
    v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:Prop];
    free(v8);
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)content
{
  Content = xmlNodeGetContent([(POXMLNode *)self node]);
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:Content];
  free(Content);

  return v3;
}

- (id)rawXMLString
{
  v3 = [(POXMLNode *)self xpathResultSet];
  v4 = [v3 xpathContext];
  v5 = [v4 xmldocContext];

  v6 = xmlBufferCreate();
  v7 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:v6->content length:xmlNodeDump(v6 encoding:{objc_msgSend(v5, "xmldoc"), -[POXMLNode node](self, "node"), 0, 0), 4}];
  xmlBufferFree(v6);

  return v7;
}

@end