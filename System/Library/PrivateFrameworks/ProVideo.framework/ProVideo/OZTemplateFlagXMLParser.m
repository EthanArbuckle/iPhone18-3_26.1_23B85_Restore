@interface OZTemplateFlagXMLParser
- (OZTemplateFlagXMLParser)initWithContentsOfURL:(id)a3;
- (void)dealloc;
- (void)parser:(id)a3 didEndElement:(id)a4 namespaceURI:(id)a5 qualifiedName:(id)a6;
- (void)parser:(id)a3 didStartElement:(id)a4 namespaceURI:(id)a5 qualifiedName:(id)a6 attributes:(id)a7;
- (void)parser:(id)a3 foundCharacters:(id)a4;
@end

@implementation OZTemplateFlagXMLParser

- (OZTemplateFlagXMLParser)initWithContentsOfURL:(id)a3
{
  v4 = [objc_alloc(MEMORY[0x277CCAE70]) initWithContentsOfURL:a3];
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  v9.receiver = self;
  v9.super_class = OZTemplateFlagXMLParser;
  v6 = [(OZTemplateFlagXMLParser *)&v9 init];
  v7 = v6;
  if (v6)
  {
    v6->_parser = v5;
    [(NSXMLParser *)v5 setDelegate:v6];
    *(&v7->_templeFlags + 3) = 0;
    v7->_templeFlags = 0;
  }

  else
  {
  }

  return v7;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OZTemplateFlagXMLParser;
  [(OZTemplateFlagXMLParser *)&v3 dealloc];
}

- (void)parser:(id)a3 didStartElement:(id)a4 namespaceURI:(id)a5 qualifiedName:(id)a6 attributes:(id)a7
{
  if ([a4 isEqualToString:@"template"])
  {
    self->_foundTemplate = 1;
  }

  if ([a4 isEqualToString:@"flags"] && self->_foundTemplate)
  {
    self->_foundTemplateFlag = 1;
  }

  if ([a4 isEqualToString:@"scene"])
  {
    self->_success = 1;

    [a3 abortParsing];
  }
}

- (void)parser:(id)a3 didEndElement:(id)a4 namespaceURI:(id)a5 qualifiedName:(id)a6
{
  if ([a4 isEqualToString:@"flags"] && self->_foundTemplateFlag)
  {
    self->_success = 1;
    [a3 abortParsing];
  }

  if ([a4 isEqualToString:@"template"])
  {
    self->_success = 1;

    [a3 abortParsing];
  }
}

- (void)parser:(id)a3 foundCharacters:(id)a4
{
  if (self->_foundTemplateFlag)
  {
    v7 = objc_alloc_init(MEMORY[0x277CCABB8]);
    [v7 setNumberStyle:1];
    self->_templeFlags = [objc_msgSend(v7 numberFromString:{a4), "unsignedIntValue"}];
  }
}

@end