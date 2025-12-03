@interface TTSAssetMAStrategy.DownloadSourceExtractor
- (void)parser:(id)parser didEndElement:(id)element namespaceURI:(id)i qualifiedName:(id)name;
- (void)parser:(id)parser didStartElement:(id)element namespaceURI:(id)i qualifiedName:(id)name attributes:(id)attributes;
- (void)parser:(id)parser foundCharacters:(id)characters;
@end

@implementation TTSAssetMAStrategy.DownloadSourceExtractor

- (void)parser:(id)parser didStartElement:(id)element namespaceURI:(id)i qualifiedName:(id)name attributes:(id)attributes
{
  v11 = sub_1B1C2CB58();
  v13 = v12;
  if (i)
  {
    sub_1B1C2CB58();
  }

  if (name)
  {
    sub_1B1C2CB58();
  }

  sub_1B1C2CA98();
  parserCopy = parser;
  selfCopy = self;
  sub_1B1B3AB4C(selfCopy, v11, v13);
}

- (void)parser:(id)parser didEndElement:(id)element namespaceURI:(id)i qualifiedName:(id)name
{
  sub_1B1C2CB58();
  if (i)
  {
    sub_1B1C2CB58();
  }

  if (name)
  {
    sub_1B1C2CB58();
  }

  parserCopy = parser;
  selfCopy = self;
  sub_1B1B3ACE8();
}

- (void)parser:(id)parser foundCharacters:(id)characters
{
  sub_1B1C2CB58();
  parserCopy = parser;
  selfCopy = self;
  sub_1B1B3AEDC();
}

@end