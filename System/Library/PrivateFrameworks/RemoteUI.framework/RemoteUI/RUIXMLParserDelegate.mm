@interface RUIXMLParserDelegate
- (NSArray)stack;
- (RUIXMLParserDelegate)initWithRoot:(id)root;
- (void)parser:(id)parser didEndElement:(id)element namespaceURI:(id)i qualifiedName:(id)name;
- (void)parser:(id)parser didStartElement:(id)element namespaceURI:(id)i qualifiedName:(id)name attributes:(id)attributes;
- (void)parser:(id)parser foundCDATA:(id)a;
- (void)parser:(id)parser foundCharacters:(id)characters;
@end

@implementation RUIXMLParserDelegate

- (NSArray)stack
{
  swift_beginAccess();

  v2 = sub_21BA87EFC();

  return v2;
}

- (RUIXMLParserDelegate)initWithRoot:(id)root
{
  v3 = OBJC_IVAR___RUIXMLParserDelegate__xmlElement;
  *(&self->super.isa + OBJC_IVAR___RUIXMLParserDelegate__xmlElement) = 0;
  v4 = OBJC_IVAR___RUIXMLParserDelegate_root;
  *(&self->super.isa + OBJC_IVAR___RUIXMLParserDelegate_root) = 0;
  *(&self->super.isa + OBJC_IVAR___RUIXMLParserDelegate__stack) = MEMORY[0x277D84F90];
  *(&self->super.isa + v3) = root;
  *(&self->super.isa + v4) = root;
  v7.receiver = self;
  v7.super_class = RUIXMLParserDelegate;
  rootCopy = root;
  return [(RUIXMLParserDelegate *)&v7 init];
}

- (void)parser:(id)parser didStartElement:(id)element namespaceURI:(id)i qualifiedName:(id)name attributes:(id)attributes
{
  v11 = sub_21BA87CBC();
  v13 = v12;
  if (i)
  {
    sub_21BA87CBC();
  }

  if (name)
  {
    sub_21BA87CBC();
  }

  sub_21BA87BCC();
  parserCopy = parser;
  selfCopy = self;
  sub_21BA65BA8(v11, v13);
}

- (void)parser:(id)parser foundCDATA:(id)a
{
  parserCopy = parser;
  aCopy = a;
  selfCopy = self;
  v8 = sub_21BA864DC();
  v10 = v9;

  sub_21BA65D80();
  sub_21B9B37F0(v8, v10);
}

- (void)parser:(id)parser foundCharacters:(id)characters
{
  v6 = sub_21BA87CBC();
  v8 = v7;
  parserCopy = parser;
  selfCopy = self;
  sub_21BA65F1C(v6, v8);
}

- (void)parser:(id)parser didEndElement:(id)element namespaceURI:(id)i qualifiedName:(id)name
{
  v10 = sub_21BA87CBC();
  v12 = v11;
  if (i)
  {
    sub_21BA87CBC();
  }

  if (name)
  {
    sub_21BA87CBC();
  }

  parserCopy = parser;
  selfCopy = self;
  sub_21BA66074(v10, v12);
}

@end