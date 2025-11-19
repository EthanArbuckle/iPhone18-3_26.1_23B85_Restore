@interface PageAlertController
- (BOOL)textField:(id)a3 shouldChangeCharactersInRange:(_NSRange)a4 replacementString:(id)a5;
- (BOOL)textFieldShouldReturn:(id)a3;
- (_TtC9SeymourUI19PageAlertController)initWithCoder:(id)a3;
- (_TtC9SeymourUI19PageAlertController)initWithNibName:(id)a3 bundle:(id)a4;
- (unint64_t)supportedInterfaceOrientations;
- (void)textFieldDidBeginEditing:(id)a3;
- (void)textFieldDidChangeSelection:(id)a3;
@end

@implementation PageAlertController

- (unint64_t)supportedInterfaceOrientations
{
  ObjectType = swift_getObjectType();
  v4 = self;
  v5 = [(PageAlertController *)v4 presentingViewController];
  if (v5)
  {
    v6 = v5;
    v7 = [v5 supportedInterfaceOrientations];

    return v7;
  }

  else
  {
    v10.receiver = v4;
    v10.super_class = ObjectType;
    v9 = [(PageAlertController *)&v10 supportedInterfaceOrientations];

    return v9;
  }
}

- (_TtC9SeymourUI19PageAlertController)initWithNibName:(id)a3 bundle:(id)a4
{
  ObjectType = swift_getObjectType();
  if (a3)
  {
    sub_20C13C954();
    v8 = (&self->super.super.super.super.isa + OBJC_IVAR____TtC9SeymourUI19PageAlertController_presenter);
    *v8 = 0;
    v8[1] = 0;
    v9 = a4;
    a3 = sub_20C13C914();
  }

  else
  {
    v10 = (&self->super.super.super.super.isa + OBJC_IVAR____TtC9SeymourUI19PageAlertController_presenter);
    *v10 = 0;
    v10[1] = 0;
    v11 = a4;
  }

  v14.receiver = self;
  v14.super_class = ObjectType;
  v12 = [(PageAlertController *)&v14 initWithNibName:a3 bundle:a4];

  return v12;
}

- (_TtC9SeymourUI19PageAlertController)initWithCoder:(id)a3
{
  ObjectType = swift_getObjectType();
  v6 = (&self->super.super.super.super.isa + OBJC_IVAR____TtC9SeymourUI19PageAlertController_presenter);
  *v6 = 0;
  v6[1] = 0;
  v10.receiver = self;
  v10.super_class = ObjectType;
  v7 = a3;
  v8 = [(PageAlertController *)&v10 initWithCoder:v7];

  if (v8)
  {
  }

  return v8;
}

- (void)textFieldDidBeginEditing:(id)a3
{
  if (*(&self->super.super.super.super.isa + OBJC_IVAR____TtC9SeymourUI19PageAlertController_presenter))
  {
    v5 = *(&self->super.super.super._responderFlags + OBJC_IVAR____TtC9SeymourUI19PageAlertController_presenter);
    ObjectType = swift_getObjectType();
    v7 = *(v5 + 56);
    v8 = a3;
    v9 = self;
    swift_unknownObjectRetain();
    v7(v8, &off_2822E25B8, ObjectType, v5);
    swift_unknownObjectRelease();
  }
}

- (void)textFieldDidChangeSelection:(id)a3
{
  if (*(&self->super.super.super.super.isa + OBJC_IVAR____TtC9SeymourUI19PageAlertController_presenter))
  {
    v5 = *(&self->super.super.super._responderFlags + OBJC_IVAR____TtC9SeymourUI19PageAlertController_presenter);
    ObjectType = swift_getObjectType();
    v7 = *(v5 + 64);
    v8 = a3;
    v9 = self;
    swift_unknownObjectRetain();
    v7(v8, &off_2822E25B8, ObjectType, v5);
    swift_unknownObjectRelease();
  }
}

- (BOOL)textField:(id)a3 shouldChangeCharactersInRange:(_NSRange)a4 replacementString:(id)a5
{
  length = a4.length;
  location = a4.location;
  v9 = sub_20C13C954();
  v11 = v10;
  if (*(&self->super.super.super.super.isa + OBJC_IVAR____TtC9SeymourUI19PageAlertController_presenter))
  {
    v12 = v9;
    v13 = *(&self->super.super.super._responderFlags + OBJC_IVAR____TtC9SeymourUI19PageAlertController_presenter);
    ObjectType = swift_getObjectType();
    v19 = *(v13 + 72);
    v15 = a3;
    v16 = self;
    swift_unknownObjectRetain();
    v17 = v19(v15, &off_2822E25B8, location, length, v12, v11, ObjectType, v13);
    swift_unknownObjectRelease();
  }

  else
  {
    v17 = 1;
  }

  return v17 & 1;
}

- (BOOL)textFieldShouldReturn:(id)a3
{
  if (*(&self->super.super.super.super.isa + OBJC_IVAR____TtC9SeymourUI19PageAlertController_presenter))
  {
    v5 = *(&self->super.super.super._responderFlags + OBJC_IVAR____TtC9SeymourUI19PageAlertController_presenter);
    ObjectType = swift_getObjectType();
    v7 = *(v5 + 80);
    v8 = a3;
    v9 = self;
    swift_unknownObjectRetain();
    v10 = v7(v8, &off_2822E25B8, ObjectType, v5);
    swift_unknownObjectRelease();
  }

  else
  {
    v10 = 1;
  }

  return v10 & 1;
}

@end