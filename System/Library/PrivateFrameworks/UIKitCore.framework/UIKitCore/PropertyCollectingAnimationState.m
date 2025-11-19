@interface PropertyCollectingAnimationState
- (_TtC5UIKit32PropertyCollectingAnimationState)init;
- (id)actionForLayer:(id)a3 forKey:(id)a4 forView:(id)a5;
@end

@implementation PropertyCollectingAnimationState

- (_TtC5UIKit32PropertyCollectingAnimationState)init
{
  ObjectType = swift_getObjectType();
  v4 = OBJC_IVAR____TtC5UIKit32PropertyCollectingAnimationState_capturedProperties;
  *(&self->super.super.super.isa + v4) = sub_188A81190(MEMORY[0x1E69E7CC0]);
  v7.receiver = self;
  v7.super_class = ObjectType;
  v5 = [(UIView.InProcessAnimationState *)&v7 init];
  [(UIViewAnimationState *)v5 setDisallowInheritance:1];
  return v5;
}

- (id)actionForLayer:(id)a3 forKey:(id)a4 forView:(id)a5
{
  if (a4)
  {
    v8 = sub_18A4A7288();
    v10 = v9;
  }

  else
  {
    v8 = 0;
    v10 = 0;
  }

  v11 = a3;
  v12 = a5;
  v13 = self;
  v14 = sub_188A8EF40(a3, v8, v10, a5);

  return v14;
}

@end