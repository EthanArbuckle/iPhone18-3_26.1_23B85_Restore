@interface _UITabMorphTransition
- (_UITabMorphTransition)init;
- (_UITabMorphTransition)initWithContainer:(id)a3 groupCompletion:(id)a4 contentAlongsideAnimation:(id)a5;
- (void)morphToView:(id)a3;
@end

@implementation _UITabMorphTransition

- (_UITabMorphTransition)initWithContainer:(id)a3 groupCompletion:(id)a4 contentAlongsideAnimation:(id)a5
{
  v7 = _Block_copy(a5);
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  return sub_18916C3C4(a3, a4, sub_188A4AA04, v8);
}

- (void)morphToView:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_18916C538(v4);
}

- (_UITabMorphTransition)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end