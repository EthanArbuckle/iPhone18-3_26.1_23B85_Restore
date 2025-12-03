@interface TextAnimationsProvider
+ (CGRect)drawStaticString:(id)string withAttributes:(id)attributes options:(unint64_t)options inRect:(CGRect)rect withPadding:(double)padding forceClipping:(BOOL)clipping cgContext:(CGContext *)context stringDrawingContext:(id)self0;
+ (id)animationNamesForDomain:(id)domain;
+ (id)animationRenderer;
+ (id)animationWithName:(id)name;
+ (id)animationWithName:(id)name localeIdentifier:(id)identifier;
- (_TtC20TextAnimationSupport22TextAnimationsProvider)init;
@end

@implementation TextAnimationsProvider

+ (id)animationRenderer
{
  v2 = [objc_allocWithZone(type metadata accessor for TextEffectsRenderer()) init];

  return v2;
}

+ (id)animationWithName:(id)name
{
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = specialized static TextAnimationsProvider.textEffect(named:)(v3, v4);

  return v5;
}

+ (id)animationWithName:(id)name localeIdentifier:(id)identifier
{
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = specialized static TextAnimationsProvider.textEffect(named:)(v4, v5);

  return v6;
}

+ (id)animationNamesForDomain:(id)domain
{
  if (domain)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v3.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v3.super.isa;
}

+ (CGRect)drawStaticString:(id)string withAttributes:(id)attributes options:(unint64_t)options inRect:(CGRect)rect withPadding:(double)padding forceClipping:(BOOL)clipping cgContext:(CGContext *)context stringDrawingContext:(id)self0
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  swift_unknownObjectRetain();
  drawingContextCopy = drawingContext;
  attributesCopy = attributes;
  contextCopy = context;
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  if (attributesCopy)
  {
    v21 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v21 = 0;
  }

  specialized static TextAnimationsProvider.drawStatic(string:attributes:options:rect:padding:forceClipping:cgContext:stringDrawingContext:)(v34, v21, contextCopy, drawingContextCopy, x, y, width, height, padding);
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;

  __swift_destroy_boxed_opaque_existential_0(v34);
  v30 = v23;
  v31 = v25;
  v32 = v27;
  v33 = v29;
  result.size.height = v33;
  result.size.width = v32;
  result.origin.y = v31;
  result.origin.x = v30;
  return result;
}

- (_TtC20TextAnimationSupport22TextAnimationsProvider)init
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  return [(TextAnimationsProvider *)&v3 init];
}

@end