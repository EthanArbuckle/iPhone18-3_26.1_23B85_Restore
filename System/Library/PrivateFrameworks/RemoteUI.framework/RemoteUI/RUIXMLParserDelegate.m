@interface RUIXMLParserDelegate
- (NSArray)stack;
- (RUIXMLParserDelegate)initWithRoot:(id)a3;
- (void)parser:(id)a3 didEndElement:(id)a4 namespaceURI:(id)a5 qualifiedName:(id)a6;
- (void)parser:(id)a3 didStartElement:(id)a4 namespaceURI:(id)a5 qualifiedName:(id)a6 attributes:(id)a7;
- (void)parser:(id)a3 foundCDATA:(id)a4;
- (void)parser:(id)a3 foundCharacters:(id)a4;
@end

@implementation RUIXMLParserDelegate

- (NSArray)stack
{
  swift_beginAccess();

  v2 = sub_21BA87EFC();

  return v2;
}

- (RUIXMLParserDelegate)initWithRoot:(id)a3
{
  v3 = OBJC_IVAR___RUIXMLParserDelegate__xmlElement;
  *(&self->super.isa + OBJC_IVAR___RUIXMLParserDelegate__xmlElement) = 0;
  v4 = OBJC_IVAR___RUIXMLParserDelegate_root;
  *(&self->super.isa + OBJC_IVAR___RUIXMLParserDelegate_root) = 0;
  *(&self->super.isa + OBJC_IVAR___RUIXMLParserDelegate__stack) = MEMORY[0x277D84F90];
  *(&self->super.isa + v3) = a3;
  *(&self->super.isa + v4) = a3;
  v7.receiver = self;
  v7.super_class = RUIXMLParserDelegate;
  v5 = a3;
  return [(RUIXMLParserDelegate *)&v7 init];
}

- (void)parser:(id)a3 didStartElement:(id)a4 namespaceURI:(id)a5 qualifiedName:(id)a6 attributes:(id)a7
{
  v11 = sub_21BA87CBC();
  v13 = v12;
  if (a5)
  {
    sub_21BA87CBC();
  }

  if (a6)
  {
    sub_21BA87CBC();
  }

  sub_21BA87BCC();
  v14 = a3;
  v15 = self;
  sub_21BA65BA8(v11, v13);
}

- (void)parser:(id)a3 foundCDATA:(id)a4
{
  v6 = a3;
  v7 = a4;
  v11 = self;
  v8 = sub_21BA864DC();
  v10 = v9;

  sub_21BA65D80();
  sub_21B9B37F0(v8, v10);
}

- (void)parser:(id)a3 foundCharacters:(id)a4
{
  v6 = sub_21BA87CBC();
  v8 = v7;
  v9 = a3;
  v10 = self;
  sub_21BA65F1C(v6, v8);
}

- (void)parser:(id)a3 didEndElement:(id)a4 namespaceURI:(id)a5 qualifiedName:(id)a6
{
  v10 = sub_21BA87CBC();
  v12 = v11;
  if (a5)
  {
    sub_21BA87CBC();
  }

  if (a6)
  {
    sub_21BA87CBC();
  }

  v13 = a3;
  v14 = self;
  sub_21BA66074(v10, v12);
}

@end