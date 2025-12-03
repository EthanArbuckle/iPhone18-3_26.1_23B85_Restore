@interface OZTemplateFlagXMLParser
- (OZTemplateFlagXMLParser)initWithContentsOfURL:(id)l;
- (void)dealloc;
- (void)parser:(id)parser didEndElement:(id)element namespaceURI:(id)i qualifiedName:(id)name;
- (void)parser:(id)parser didStartElement:(id)element namespaceURI:(id)i qualifiedName:(id)name attributes:(id)attributes;
- (void)parser:(id)parser foundCharacters:(id)characters;
@end

@implementation OZTemplateFlagXMLParser

- (OZTemplateFlagXMLParser)initWithContentsOfURL:(id)l
{
  v4 = [objc_alloc(MEMORY[0x277CCAE70]) initWithContentsOfURL:l];
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

- (void)parser:(id)parser didStartElement:(id)element namespaceURI:(id)i qualifiedName:(id)name attributes:(id)attributes
{
  if ([element isEqualToString:@"template"])
  {
    self->_foundTemplate = 1;
  }

  if ([element isEqualToString:@"flags"] && self->_foundTemplate)
  {
    self->_foundTemplateFlag = 1;
  }

  if ([element isEqualToString:@"scene"])
  {
    self->_success = 1;

    [parser abortParsing];
  }
}

- (void)parser:(id)parser didEndElement:(id)element namespaceURI:(id)i qualifiedName:(id)name
{
  if ([element isEqualToString:@"flags"] && self->_foundTemplateFlag)
  {
    self->_success = 1;
    [parser abortParsing];
  }

  if ([element isEqualToString:@"template"])
  {
    self->_success = 1;

    [parser abortParsing];
  }
}

- (void)parser:(id)parser foundCharacters:(id)characters
{
  if (self->_foundTemplateFlag)
  {
    v7 = objc_alloc_init(MEMORY[0x277CCABB8]);
    [v7 setNumberStyle:1];
    self->_templeFlags = [objc_msgSend(v7 numberFromString:{characters), "unsignedIntValue"}];
  }
}

@end