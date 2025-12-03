@interface EpubRightsDataParser
- (EpubRightsDataParser)initWithXMLData:(id)data;
- (void)dealloc;
- (void)parser:(id)parser didEndElement:(id)element namespaceURI:(id)i qualifiedName:(id)name;
- (void)parser:(id)parser foundCharacters:(id)characters;
@end

@implementation EpubRightsDataParser

- (EpubRightsDataParser)initWithXMLData:(id)data
{
  v7.receiver = self;
  v7.super_class = EpubRightsDataParser;
  v4 = [(EpubRightsDataParser *)&v7 init];
  if (v4)
  {
    v5 = [[NSXMLParser alloc] initWithData:data];
    [v5 setDelegate:v4];
    [v5 parse];
  }

  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = EpubRightsDataParser;
  [(EpubRightsDataParser *)&v3 dealloc];
}

- (void)parser:(id)parser foundCharacters:(id)characters
{
  if (self->_isSinfElement)
  {
    buffer = self->_buffer;
    if (!buffer)
    {
      buffer = objc_alloc_init(NSMutableString);
      self->_buffer = buffer;
    }

    [(NSMutableString *)buffer appendString:characters];
  }
}

- (void)parser:(id)parser didEndElement:(id)element namespaceURI:(id)i qualifiedName:(id)name
{
  if (self->_isSinfElement)
  {
    self->_sinfData = [[NSData alloc] initWithBase64EncodedString:self->_buffer options:0];
    self->_isSinfElement = 0;
  }
}

@end