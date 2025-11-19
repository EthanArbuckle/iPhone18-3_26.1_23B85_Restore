@interface RUIXMLElement
- (NSArray)children;
- (NSDictionary)attributes;
- (NSDictionary)attributtes;
- (NSString)name;
- (NSString)stringValue;
- (NSString)xmlString;
- (RUIXMLElement)init;
- (RUIXMLElement)initWithName:(id)a3;
- (RUIXMLElement)initWithName:(id)a3 attributes:(id)a4;
- (RUIXMLElement)parent;
- (void)appendChild:(id)a3;
- (void)appendChildren:(id)a3;
- (void)setAttributes:(id)a3;
- (void)setAttributtes:(id)a3;
- (void)setStringValue:(id)a3;
- (void)traverseWithDelegate:(id)a3;
@end

@implementation RUIXMLElement

- (void)traverseWithDelegate:(id)a3
{
  swift_unknownObjectRetain();
  v5 = self;
  RUIXMLElement.traverse(withDelegate:)(a3);
  swift_unknownObjectRelease();
}

- (NSString)name
{

  v2 = sub_21BA87C8C();

  return v2;
}

- (NSDictionary)attributtes
{
  v2 = self;
  v3 = [(RUIXMLElement *)v2 attributes];
  sub_21BA87BCC();

  v4 = sub_21BA87BBC();

  return v4;
}

- (void)setAttributtes:(id)a3
{
  sub_21BA87BCC();
  v5 = self;
  v4 = sub_21BA87BBC();

  [(RUIXMLElement *)v5 setAttributes:v4];
}

- (NSDictionary)attributes
{
  swift_beginAccess();

  v2 = sub_21BA87BBC();

  return v2;
}

- (void)setAttributes:(id)a3
{
  v4 = sub_21BA87BCC();
  v5 = OBJC_IVAR___RUIXMLElement_attributes;
  swift_beginAccess();
  *(self + v5) = v4;
}

- (RUIXMLElement)parent
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (NSString)stringValue
{
  v2 = self + OBJC_IVAR___RUIXMLElement_stringValue;
  swift_beginAccess();
  if (*(v2 + 1))
  {

    v3 = sub_21BA87C8C();
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setStringValue:(id)a3
{
  if (a3)
  {
    v4 = sub_21BA87CBC();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  v7 = (self + OBJC_IVAR___RUIXMLElement_stringValue);
  swift_beginAccess();
  *v7 = v4;
  v7[1] = v6;
}

- (NSArray)children
{
  v2 = swift_beginAccess();
  type metadata accessor for RUIXMLElement(v2);

  v3 = sub_21BA87EFC();

  return v3;
}

- (RUIXMLElement)initWithName:(id)a3
{
  v4 = a3;
  sub_21BA48270(MEMORY[0x277D84F90]);
  v5 = sub_21BA87BBC();

  v6 = [(RUIXMLElement *)self initWithName:v4 attributes:v5];

  return v6;
}

- (RUIXMLElement)initWithName:(id)a3 attributes:(id)a4
{
  v5 = sub_21BA87CBC();
  v7 = v6;
  v8 = sub_21BA87BCC();
  swift_unknownObjectWeakInit();
  v9 = (self + OBJC_IVAR___RUIXMLElement_stringValue);
  *v9 = 0;
  v9[1] = 0;
  *(self + OBJC_IVAR___RUIXMLElement_mutableChildren) = MEMORY[0x277D84F90];
  v10 = (self + OBJC_IVAR___RUIXMLElement_name);
  *v10 = v5;
  v10[1] = v7;
  *(self + OBJC_IVAR___RUIXMLElement_attributes) = v8;
  v12.receiver = self;
  v12.super_class = RUIXMLElement;
  return [(RUIXMLElement *)&v12 init];
}

- (void)appendChildren:(id)a3
{
  type metadata accessor for RUIXMLElement(self);
  v4 = sub_21BA87F0C();
  v5 = self;
  RUIXMLElement.appendChildren(_:)(v4);
}

- (void)appendChild:(id)a3
{
  v4 = a3;
  v5 = self;
  RUIXMLElement.appendChild(_:)(v4);
}

- (RUIXMLElement)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (NSString)xmlString
{
  v2 = self;
  sub_21BA64A9C(v2);

  v3 = sub_21BA87C8C();

  return v3;
}

@end