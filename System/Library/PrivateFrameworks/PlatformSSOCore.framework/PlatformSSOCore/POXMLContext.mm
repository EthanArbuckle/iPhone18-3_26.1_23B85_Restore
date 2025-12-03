@interface POXMLContext
- (POXMLContext)init;
- (id)nameSpacePrefixForHref:(id)href;
- (void)dealloc;
@end

@implementation POXMLContext

- (POXMLContext)init
{
  v3.receiver = self;
  v3.super_class = POXMLContext;
  result = [(POXMLContext *)&v3 init];
  if (result)
  {
    result->_xmldoc = 0;
  }

  return result;
}

- (void)dealloc
{
  if ([(POXMLContext *)self xmldoc])
  {
    xmlFreeDoc([(POXMLContext *)self xmldoc]);
  }

  [(POXMLContext *)self setXmldoc:0];
  v3.receiver = self;
  v3.super_class = POXMLContext;
  [(POXMLContext *)&v3 dealloc];
}

- (id)nameSpacePrefixForHref:(id)href
{
  hrefCopy = href;
  RootElement = xmlDocGetRootElement([(POXMLContext *)self xmldoc]);
  if (RootElement)
  {
    v6 = xmlSearchNsByHref(-[POXMLContext xmldoc](self, "xmldoc"), RootElement, [hrefCopy UTF8String]);
    if (v6)
    {
      if (v6->prefix)
      {
        v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:?];
        goto LABEL_7;
      }

      xmlFreeNs(v6);
    }
  }

  v7 = 0;
LABEL_7:

  return v7;
}

@end