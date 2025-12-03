@interface SSMLSimpleParser
- (void)parser:(id)parser didStartElement:(id)element namespaceURI:(id)i qualifiedName:(id)name attributes:(id)attributes;
- (void)parserDidStartDocument:(id)document;
@end

@implementation SSMLSimpleParser

- (void)parserDidStartDocument:(id)document
{
  documentCopy = document;
  selfCopy = self;
  sub_1B1BC7DF0();
}

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

  v14 = sub_1B1C2CA98();
  parserCopy = parser;
  selfCopy = self;
  sub_1B1BC7EA4(selfCopy, v11, v13, v17, v18, v19, v20, v14);
}

@end