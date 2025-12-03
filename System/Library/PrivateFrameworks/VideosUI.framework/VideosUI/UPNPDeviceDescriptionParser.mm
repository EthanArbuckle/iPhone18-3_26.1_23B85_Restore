@interface UPNPDeviceDescriptionParser
- (void)parser:(id)parser didEndElement:(id)element namespaceURI:(id)i qualifiedName:(id)name;
- (void)parser:(id)parser didStartElement:(id)element namespaceURI:(id)i qualifiedName:(id)name attributes:(id)attributes;
- (void)parser:(id)parser foundCharacters:(id)characters;
@end

@implementation UPNPDeviceDescriptionParser

- (void)parser:(id)parser didStartElement:(id)element namespaceURI:(id)i qualifiedName:(id)name attributes:(id)attributes
{
  v11 = sub_1E4205F14();
  v13 = v12;
  if (i)
  {
    sub_1E4205F14();
  }

  if (name)
  {
    sub_1E4205F14();
  }

  sub_1E4205C64();
  parserCopy = parser;
  selfCopy = self;
  sub_1E3F69FAC(selfCopy, v11, v13);
}

- (void)parser:(id)parser foundCharacters:(id)characters
{
  v6 = sub_1E4205F14();
  v8 = v7;
  parserCopy = parser;
  selfCopy = self;
  sub_1E3F6A310(selfCopy, v6, v8);
}

- (void)parser:(id)parser didEndElement:(id)element namespaceURI:(id)i qualifiedName:(id)name
{
  sub_1E4205F14();
  if (i)
  {
    sub_1E4205F14();
  }

  if (name)
  {
    sub_1E4205F14();
  }

  parserCopy = parser;
  selfCopy = self;
  sub_1E3F6A610();
}

@end