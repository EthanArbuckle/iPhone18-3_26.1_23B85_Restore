@interface TranslationBackdropVibrantBlurLayer
- (_TtC13TranslationUIP33_CF4489C12E47B589A5779A16E606AB3135TranslationBackdropVibrantBlurLayer)init;
- (_TtC13TranslationUIP33_CF4489C12E47B589A5779A16E606AB3135TranslationBackdropVibrantBlurLayer)initWithCoder:(id)coder;
- (_TtC13TranslationUIP33_CF4489C12E47B589A5779A16E606AB3135TranslationBackdropVibrantBlurLayer)initWithLayer:(id)layer;
- (void)layoutSublayers;
@end

@implementation TranslationBackdropVibrantBlurLayer

- (void)layoutSublayers
{
  selfCopy = self;
  [(TranslationBackdropVibrantBlurLayer *)selfCopy bounds];
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = objc_opt_self();
  [v10 begin];
  [v10 setDisableActions_];
  [*(&selfCopy->super.super.isa + OBJC_IVAR____TtC13TranslationUIP33_CF4489C12E47B589A5779A16E606AB3135TranslationBackdropVibrantBlurLayer_backdropLayer) setFrame_];
  [v10 commit];
}

- (_TtC13TranslationUIP33_CF4489C12E47B589A5779A16E606AB3135TranslationBackdropVibrantBlurLayer)init
{
  ObjectType = swift_getObjectType();
  v4 = OBJC_IVAR____TtC13TranslationUIP33_CF4489C12E47B589A5779A16E606AB3135TranslationBackdropVibrantBlurLayer_backdropLayer;
  *(&self->super.super.isa + v4) = [objc_allocWithZone(MEMORY[0x277CD9E08]) init];
  v6.receiver = self;
  v6.super_class = ObjectType;
  return [(TranslationBackdropVibrantBlurLayer *)&v6 init];
}

- (_TtC13TranslationUIP33_CF4489C12E47B589A5779A16E606AB3135TranslationBackdropVibrantBlurLayer)initWithLayer:(id)layer
{
  ObjectType = swift_getObjectType();
  swift_unknownObjectRetain();
  sub_26F4A0038();
  swift_unknownObjectRelease();
  v5 = OBJC_IVAR____TtC13TranslationUIP33_CF4489C12E47B589A5779A16E606AB3135TranslationBackdropVibrantBlurLayer_backdropLayer;
  *(&self->super.super.isa + v5) = [objc_allocWithZone(MEMORY[0x277CD9E08]) init];
  __swift_project_boxed_opaque_existential_1(v10, v10[3]);
  v6 = sub_26F4A0448();
  v9.receiver = self;
  v9.super_class = ObjectType;
  v7 = [(TranslationBackdropVibrantBlurLayer *)&v9 initWithLayer:v6];
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0(v10);
  return v7;
}

- (_TtC13TranslationUIP33_CF4489C12E47B589A5779A16E606AB3135TranslationBackdropVibrantBlurLayer)initWithCoder:(id)coder
{
  ObjectType = swift_getObjectType();
  v6 = OBJC_IVAR____TtC13TranslationUIP33_CF4489C12E47B589A5779A16E606AB3135TranslationBackdropVibrantBlurLayer_backdropLayer;
  v7 = objc_allocWithZone(MEMORY[0x277CD9E08]);
  coderCopy = coder;
  *(&self->super.super.isa + v6) = [v7 init];
  v11.receiver = self;
  v11.super_class = ObjectType;
  v9 = [(TranslationBackdropVibrantBlurLayer *)&v11 initWithCoder:coderCopy];

  if (v9)
  {
  }

  return v9;
}

@end