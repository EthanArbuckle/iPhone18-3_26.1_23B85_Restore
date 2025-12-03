@interface TTRIPermissionsWarmingSheetViewController
- (NSString)title;
- (_TtC15RemindersUICore41TTRIPermissionsWarmingSheetViewController)initWithCoder:(id)coder;
- (_TtC15RemindersUICore41TTRIPermissionsWarmingSheetViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)loadView;
- (void)setTitle:(id)title;
@end

@implementation TTRIPermissionsWarmingSheetViewController

- (NSString)title
{
  selfCopy = self;
  v3 = sub_21DABB398();
  v4 = sub_21D847A30();

  text = [v4 text];
  if (text)
  {
    sub_21DBFA16C();

    v6 = sub_21DBFA12C();
  }

  else
  {

    v6 = 0;
  }

  return v6;
}

- (void)setTitle:(id)title
{
  if (title)
  {
    sub_21DBFA16C();
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  selfCopy = self;
  v6 = sub_21DABB398();
  v7 = sub_21D847A30();

  if (v5)
  {
    v8 = sub_21DBFA12C();
  }

  else
  {
    v8 = 0;
  }

  [v7 setText_];
}

- (void)loadView
{
  selfCopy = self;
  v2 = sub_21DABB398();
  [(TTRIPermissionsWarmingSheetViewController *)selfCopy setView:v2];
}

- (_TtC15RemindersUICore41TTRIPermissionsWarmingSheetViewController)initWithNibName:(id)name bundle:(id)bundle
{
  ObjectType = swift_getObjectType();
  if (name)
  {
    sub_21DBFA16C();
    *(&self->super.super.super.isa + OBJC_IVAR____TtC15RemindersUICore41TTRIPermissionsWarmingSheetViewController____lazy_storage___permissionsPromptView) = 0;
    bundleCopy = bundle;
    name = sub_21DBFA12C();
  }

  else
  {
    *(&self->super.super.super.isa + OBJC_IVAR____TtC15RemindersUICore41TTRIPermissionsWarmingSheetViewController____lazy_storage___permissionsPromptView) = 0;
    bundleCopy2 = bundle;
  }

  v12.receiver = self;
  v12.super_class = ObjectType;
  v10 = [(TTRIPermissionsWarmingSheetViewController *)&v12 initWithNibName:name bundle:bundle];

  return v10;
}

- (_TtC15RemindersUICore41TTRIPermissionsWarmingSheetViewController)initWithCoder:(id)coder
{
  ObjectType = swift_getObjectType();
  *(&self->super.super.super.isa + OBJC_IVAR____TtC15RemindersUICore41TTRIPermissionsWarmingSheetViewController____lazy_storage___permissionsPromptView) = 0;
  v9.receiver = self;
  v9.super_class = ObjectType;
  coderCopy = coder;
  v7 = [(TTRIPermissionsWarmingSheetViewController *)&v9 initWithCoder:coderCopy];

  if (v7)
  {
  }

  return v7;
}

@end