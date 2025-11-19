@interface XMLParserDelegate
- (_TtC11ShaderGraph17XMLParserDelegate)init;
- (void)parser:(id)a3 didEndElement:(id)a4 namespaceURI:(id)a5 qualifiedName:(id)a6;
- (void)parser:(id)a3 didStartElement:(id)a4 namespaceURI:(id)a5 qualifiedName:(id)a6 attributes:(id)a7;
@end

@implementation XMLParserDelegate

- (void)parser:(id)a3 didStartElement:(id)a4 namespaceURI:(id)a5 qualifiedName:(id)a6 attributes:(id)a7
{
  v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;
  if (a5)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  if (a6)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v14 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = a3;
  v16 = self;
  specialized XMLParserDelegate.parser(_:didStartElement:namespaceURI:qualifiedName:attributes:)(v11, v13, v14);
}

- (void)parser:(id)a3 didEndElement:(id)a4 namespaceURI:(id)a5 qualifiedName:(id)a6
{
  v6 = self;
  XMLParserDelegate.endElement()();
}

- (_TtC11ShaderGraph17XMLParserDelegate)init
{
  ObjectType = swift_getObjectType();
  *(&self->super.isa + OBJC_IVAR____TtC11ShaderGraph17XMLParserDelegate_currentElement) = 0;
  v4 = (&self->super.isa + OBJC_IVAR____TtC11ShaderGraph17XMLParserDelegate_rootElement);
  *v4 = 0;
  v4[1] = 0;
  v6.receiver = self;
  v6.super_class = ObjectType;
  return [(XMLParserDelegate *)&v6 init];
}

@end