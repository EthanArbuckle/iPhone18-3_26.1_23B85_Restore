@interface _UITabMorphTransition
- (_UITabMorphTransition)init;
- (_UITabMorphTransition)initWithContainer:(id)container groupCompletion:(id)completion contentAlongsideAnimation:(id)animation;
- (void)morphToView:(id)view;
@end

@implementation _UITabMorphTransition

- (_UITabMorphTransition)initWithContainer:(id)container groupCompletion:(id)completion contentAlongsideAnimation:(id)animation
{
  v7 = _Block_copy(animation);
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  return sub_18916C3C4(container, completion, sub_188A4AA04, v8);
}

- (void)morphToView:(id)view
{
  viewCopy = view;
  selfCopy = self;
  sub_18916C538(viewCopy);
}

- (_UITabMorphTransition)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end