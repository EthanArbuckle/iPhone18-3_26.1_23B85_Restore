@interface TextAnimationsProvider
+ (CGRect)drawStaticString:(id)a3 withAttributes:(id)a4 options:(unint64_t)a5 inRect:(CGRect)a6 withPadding:(double)a7 forceClipping:(BOOL)a8 cgContext:(CGContext *)a9 stringDrawingContext:(id)a10;
+ (id)animationNamesForDomain:(id)a3;
+ (id)animationRenderer;
+ (id)animationWithName:(id)a3;
+ (id)animationWithName:(id)a3 localeIdentifier:(id)a4;
- (_TtC20TextAnimationSupport22TextAnimationsProvider)init;
@end

@implementation TextAnimationsProvider

+ (id)animationRenderer
{
  v2 = [objc_allocWithZone(type metadata accessor for TextEffectsRenderer()) init];

  return v2;
}

+ (id)animationWithName:(id)a3
{
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = specialized static TextAnimationsProvider.textEffect(named:)(v3, v4);

  return v5;
}

+ (id)animationWithName:(id)a3 localeIdentifier:(id)a4
{
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = specialized static TextAnimationsProvider.textEffect(named:)(v4, v5);

  return v6;
}

+ (id)animationNamesForDomain:(id)a3
{
  if (a3)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v3.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v3.super.isa;
}

+ (CGRect)drawStaticString:(id)a3 withAttributes:(id)a4 options:(unint64_t)a5 inRect:(CGRect)a6 withPadding:(double)a7 forceClipping:(BOOL)a8 cgContext:(CGContext *)a9 stringDrawingContext:(id)a10
{
  height = a6.size.height;
  width = a6.size.width;
  y = a6.origin.y;
  x = a6.origin.x;
  swift_unknownObjectRetain();
  v18 = a10;
  v19 = a4;
  v20 = a9;
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  if (v19)
  {
    v21 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v21 = 0;
  }

  specialized static TextAnimationsProvider.drawStatic(string:attributes:options:rect:padding:forceClipping:cgContext:stringDrawingContext:)(v34, v21, v20, v18, x, y, width, height, a7);
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