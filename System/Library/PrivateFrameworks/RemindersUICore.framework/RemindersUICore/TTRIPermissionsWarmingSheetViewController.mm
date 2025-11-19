@interface TTRIPermissionsWarmingSheetViewController
- (NSString)title;
- (_TtC15RemindersUICore41TTRIPermissionsWarmingSheetViewController)initWithCoder:(id)a3;
- (_TtC15RemindersUICore41TTRIPermissionsWarmingSheetViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)loadView;
- (void)setTitle:(id)a3;
@end

@implementation TTRIPermissionsWarmingSheetViewController

- (NSString)title
{
  v2 = self;
  v3 = sub_21DABB398();
  v4 = sub_21D847A30();

  v5 = [v4 text];
  if (v5)
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

- (void)setTitle:(id)a3
{
  if (a3)
  {
    sub_21DBFA16C();
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v9 = self;
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
  v3 = self;
  v2 = sub_21DABB398();
  [(TTRIPermissionsWarmingSheetViewController *)v3 setView:v2];
}

- (_TtC15RemindersUICore41TTRIPermissionsWarmingSheetViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  ObjectType = swift_getObjectType();
  if (a3)
  {
    sub_21DBFA16C();
    *(&self->super.super.super.isa + OBJC_IVAR____TtC15RemindersUICore41TTRIPermissionsWarmingSheetViewController____lazy_storage___permissionsPromptView) = 0;
    v8 = a4;
    a3 = sub_21DBFA12C();
  }

  else
  {
    *(&self->super.super.super.isa + OBJC_IVAR____TtC15RemindersUICore41TTRIPermissionsWarmingSheetViewController____lazy_storage___permissionsPromptView) = 0;
    v9 = a4;
  }

  v12.receiver = self;
  v12.super_class = ObjectType;
  v10 = [(TTRIPermissionsWarmingSheetViewController *)&v12 initWithNibName:a3 bundle:a4];

  return v10;
}

- (_TtC15RemindersUICore41TTRIPermissionsWarmingSheetViewController)initWithCoder:(id)a3
{
  ObjectType = swift_getObjectType();
  *(&self->super.super.super.isa + OBJC_IVAR____TtC15RemindersUICore41TTRIPermissionsWarmingSheetViewController____lazy_storage___permissionsPromptView) = 0;
  v9.receiver = self;
  v9.super_class = ObjectType;
  v6 = a3;
  v7 = [(TTRIPermissionsWarmingSheetViewController *)&v9 initWithCoder:v6];

  if (v7)
  {
  }

  return v7;
}

@end