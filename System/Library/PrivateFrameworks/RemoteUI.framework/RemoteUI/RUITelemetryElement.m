@interface RUITelemetryElement
- (NSArray)children;
- (NSDictionary)attributes;
- (NSString)name;
- (RUITelemetryElement)init;
- (RUITelemetryElement)initWithXMLElement:(id)a3 url:(id)a4;
- (RUITelemetryElement)parent;
@end

@implementation RUITelemetryElement

- (RUITelemetryElement)initWithXMLElement:(id)a3 url:(id)a4
{
  *(&self->super.isa + OBJC_IVAR___RUITelemetryElement_xmlElement) = a3;
  *(&self->super.isa + OBJC_IVAR___RUITelemetryElement_url) = a4;
  v8.receiver = self;
  v8.super_class = RUITelemetryElement;
  v5 = a3;
  v6 = a4;
  return [(RUITelemetryElement *)&v8 init];
}

- (NSDictionary)attributes
{
  v2 = *(&self->super.isa + OBJC_IVAR___RUITelemetryElement_xmlElement);
  v3 = self;
  v4 = [v2 attributtes];
  sub_21BA87BCC();

  v5 = sub_21BA87BBC();

  return v5;
}

- (NSString)name
{
  v2 = *(&self->super.isa + OBJC_IVAR___RUITelemetryElement_xmlElement);
  v3 = self;
  v4 = [v2 name];
  if (!v4)
  {
    sub_21BA87CBC();
    v4 = sub_21BA87C8C();
  }

  return v4;
}

- (NSArray)children
{
  v2 = self;
  RUITelemetryElement.children.getter();

  type metadata accessor for RUITelemetryElement();
  v3 = sub_21BA87EFC();

  return v3;
}

- (RUITelemetryElement)parent
{
  v2 = self;
  v3 = RUITelemetryElement.parent.getter();

  return v3;
}

- (RUITelemetryElement)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end