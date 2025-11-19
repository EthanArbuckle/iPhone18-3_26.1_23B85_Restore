@interface EpubRightsDataParser
- (EpubRightsDataParser)initWithXMLData:(id)a3;
- (void)dealloc;
- (void)parser:(id)a3 didEndElement:(id)a4 namespaceURI:(id)a5 qualifiedName:(id)a6;
- (void)parser:(id)a3 foundCharacters:(id)a4;
@end

@implementation EpubRightsDataParser

- (EpubRightsDataParser)initWithXMLData:(id)a3
{
  v7.receiver = self;
  v7.super_class = EpubRightsDataParser;
  v4 = [(EpubRightsDataParser *)&v7 init];
  if (v4)
  {
    v5 = [[NSXMLParser alloc] initWithData:a3];
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

- (void)parser:(id)a3 foundCharacters:(id)a4
{
  if (self->_isSinfElement)
  {
    buffer = self->_buffer;
    if (!buffer)
    {
      buffer = objc_alloc_init(NSMutableString);
      self->_buffer = buffer;
    }

    [(NSMutableString *)buffer appendString:a4];
  }
}

- (void)parser:(id)a3 didEndElement:(id)a4 namespaceURI:(id)a5 qualifiedName:(id)a6
{
  if (self->_isSinfElement)
  {
    self->_sinfData = [[NSData alloc] initWithBase64EncodedString:self->_buffer options:0];
    self->_isSinfElement = 0;
  }
}

@end