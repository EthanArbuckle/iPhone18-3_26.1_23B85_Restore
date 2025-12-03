@interface PageAlertController
- (BOOL)textField:(id)field shouldChangeCharactersInRange:(_NSRange)range replacementString:(id)string;
- (BOOL)textFieldShouldReturn:(id)return;
- (_TtC9SeymourUI19PageAlertController)initWithCoder:(id)coder;
- (_TtC9SeymourUI19PageAlertController)initWithNibName:(id)name bundle:(id)bundle;
- (unint64_t)supportedInterfaceOrientations;
- (void)textFieldDidBeginEditing:(id)editing;
- (void)textFieldDidChangeSelection:(id)selection;
@end

@implementation PageAlertController

- (unint64_t)supportedInterfaceOrientations
{
  ObjectType = swift_getObjectType();
  selfCopy = self;
  presentingViewController = [(PageAlertController *)selfCopy presentingViewController];
  if (presentingViewController)
  {
    v6 = presentingViewController;
    supportedInterfaceOrientations = [presentingViewController supportedInterfaceOrientations];

    return supportedInterfaceOrientations;
  }

  else
  {
    v10.receiver = selfCopy;
    v10.super_class = ObjectType;
    supportedInterfaceOrientations2 = [(PageAlertController *)&v10 supportedInterfaceOrientations];

    return supportedInterfaceOrientations2;
  }
}

- (_TtC9SeymourUI19PageAlertController)initWithNibName:(id)name bundle:(id)bundle
{
  ObjectType = swift_getObjectType();
  if (name)
  {
    sub_20C13C954();
    v8 = (&self->super.super.super.super.isa + OBJC_IVAR____TtC9SeymourUI19PageAlertController_presenter);
    *v8 = 0;
    v8[1] = 0;
    bundleCopy = bundle;
    name = sub_20C13C914();
  }

  else
  {
    v10 = (&self->super.super.super.super.isa + OBJC_IVAR____TtC9SeymourUI19PageAlertController_presenter);
    *v10 = 0;
    v10[1] = 0;
    bundleCopy2 = bundle;
  }

  v14.receiver = self;
  v14.super_class = ObjectType;
  v12 = [(PageAlertController *)&v14 initWithNibName:name bundle:bundle];

  return v12;
}

- (_TtC9SeymourUI19PageAlertController)initWithCoder:(id)coder
{
  ObjectType = swift_getObjectType();
  v6 = (&self->super.super.super.super.isa + OBJC_IVAR____TtC9SeymourUI19PageAlertController_presenter);
  *v6 = 0;
  v6[1] = 0;
  v10.receiver = self;
  v10.super_class = ObjectType;
  coderCopy = coder;
  v8 = [(PageAlertController *)&v10 initWithCoder:coderCopy];

  if (v8)
  {
  }

  return v8;
}

- (void)textFieldDidBeginEditing:(id)editing
{
  if (*(&self->super.super.super.super.isa + OBJC_IVAR____TtC9SeymourUI19PageAlertController_presenter))
  {
    v5 = *(&self->super.super.super._responderFlags + OBJC_IVAR____TtC9SeymourUI19PageAlertController_presenter);
    ObjectType = swift_getObjectType();
    v7 = *(v5 + 56);
    editingCopy = editing;
    selfCopy = self;
    swift_unknownObjectRetain();
    v7(editingCopy, &off_2822E25B8, ObjectType, v5);
    swift_unknownObjectRelease();
  }
}

- (void)textFieldDidChangeSelection:(id)selection
{
  if (*(&self->super.super.super.super.isa + OBJC_IVAR____TtC9SeymourUI19PageAlertController_presenter))
  {
    v5 = *(&self->super.super.super._responderFlags + OBJC_IVAR____TtC9SeymourUI19PageAlertController_presenter);
    ObjectType = swift_getObjectType();
    v7 = *(v5 + 64);
    selectionCopy = selection;
    selfCopy = self;
    swift_unknownObjectRetain();
    v7(selectionCopy, &off_2822E25B8, ObjectType, v5);
    swift_unknownObjectRelease();
  }
}

- (BOOL)textField:(id)field shouldChangeCharactersInRange:(_NSRange)range replacementString:(id)string
{
  length = range.length;
  location = range.location;
  v9 = sub_20C13C954();
  v11 = v10;
  if (*(&self->super.super.super.super.isa + OBJC_IVAR____TtC9SeymourUI19PageAlertController_presenter))
  {
    v12 = v9;
    v13 = *(&self->super.super.super._responderFlags + OBJC_IVAR____TtC9SeymourUI19PageAlertController_presenter);
    ObjectType = swift_getObjectType();
    v19 = *(v13 + 72);
    fieldCopy = field;
    selfCopy = self;
    swift_unknownObjectRetain();
    v17 = v19(fieldCopy, &off_2822E25B8, location, length, v12, v11, ObjectType, v13);
    swift_unknownObjectRelease();
  }

  else
  {
    v17 = 1;
  }

  return v17 & 1;
}

- (BOOL)textFieldShouldReturn:(id)return
{
  if (*(&self->super.super.super.super.isa + OBJC_IVAR____TtC9SeymourUI19PageAlertController_presenter))
  {
    v5 = *(&self->super.super.super._responderFlags + OBJC_IVAR____TtC9SeymourUI19PageAlertController_presenter);
    ObjectType = swift_getObjectType();
    v7 = *(v5 + 80);
    returnCopy = return;
    selfCopy = self;
    swift_unknownObjectRetain();
    v10 = v7(returnCopy, &off_2822E25B8, ObjectType, v5);
    swift_unknownObjectRelease();
  }

  else
  {
    v10 = 1;
  }

  return v10 & 1;
}

@end