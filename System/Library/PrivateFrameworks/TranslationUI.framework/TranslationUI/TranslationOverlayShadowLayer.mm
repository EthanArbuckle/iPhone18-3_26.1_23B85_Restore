@interface TranslationOverlayShadowLayer
- (_TtC13TranslationUIP33_F1DE10BA1EA2E7A7FF1CDCD88519CF9529TranslationOverlayShadowLayer)init;
- (_TtC13TranslationUIP33_F1DE10BA1EA2E7A7FF1CDCD88519CF9529TranslationOverlayShadowLayer)initWithCoder:(id)coder;
- (_TtC13TranslationUIP33_F1DE10BA1EA2E7A7FF1CDCD88519CF9529TranslationOverlayShadowLayer)initWithLayer:(id)layer;
- (void)layoutSublayers;
@end

@implementation TranslationOverlayShadowLayer

- (void)layoutSublayers
{
  selfCopy = self;
  [(TranslationOverlayShadowLayer *)selfCopy bounds];
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = objc_opt_self();
  [v10 begin];
  [v10 setDisableActions_];
  [*(&selfCopy->super.super.isa + OBJC_IVAR____TtC13TranslationUIP33_F1DE10BA1EA2E7A7FF1CDCD88519CF9529TranslationOverlayShadowLayer_sublayer) setFrame_];
  [v10 commit];
}

- (_TtC13TranslationUIP33_F1DE10BA1EA2E7A7FF1CDCD88519CF9529TranslationOverlayShadowLayer)init
{
  ObjectType = swift_getObjectType();
  v4 = OBJC_IVAR____TtC13TranslationUIP33_F1DE10BA1EA2E7A7FF1CDCD88519CF9529TranslationOverlayShadowLayer_sublayer;
  *(&self->super.super.isa + v4) = [objc_allocWithZone(MEMORY[0x277CD9ED0]) init];
  v6.receiver = self;
  v6.super_class = ObjectType;
  return [(TranslationOverlayShadowLayer *)&v6 init];
}

- (_TtC13TranslationUIP33_F1DE10BA1EA2E7A7FF1CDCD88519CF9529TranslationOverlayShadowLayer)initWithLayer:(id)layer
{
  ObjectType = swift_getObjectType();
  swift_unknownObjectRetain();
  sub_26F4A0038();
  swift_unknownObjectRelease();
  v5 = OBJC_IVAR____TtC13TranslationUIP33_F1DE10BA1EA2E7A7FF1CDCD88519CF9529TranslationOverlayShadowLayer_sublayer;
  *(&self->super.super.isa + v5) = [objc_allocWithZone(MEMORY[0x277CD9ED0]) init];
  __swift_project_boxed_opaque_existential_1(v10, v10[3]);
  v6 = sub_26F4A0448();
  v9.receiver = self;
  v9.super_class = ObjectType;
  v7 = [(TranslationOverlayShadowLayer *)&v9 initWithLayer:v6];
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0(v10);
  return v7;
}

- (_TtC13TranslationUIP33_F1DE10BA1EA2E7A7FF1CDCD88519CF9529TranslationOverlayShadowLayer)initWithCoder:(id)coder
{
  ObjectType = swift_getObjectType();
  v6 = OBJC_IVAR____TtC13TranslationUIP33_F1DE10BA1EA2E7A7FF1CDCD88519CF9529TranslationOverlayShadowLayer_sublayer;
  v7 = objc_allocWithZone(MEMORY[0x277CD9ED0]);
  coderCopy = coder;
  *(&self->super.super.isa + v6) = [v7 init];
  v11.receiver = self;
  v11.super_class = ObjectType;
  v9 = [(TranslationOverlayShadowLayer *)&v11 initWithCoder:coderCopy];

  if (v9)
  {
  }

  return v9;
}

@end