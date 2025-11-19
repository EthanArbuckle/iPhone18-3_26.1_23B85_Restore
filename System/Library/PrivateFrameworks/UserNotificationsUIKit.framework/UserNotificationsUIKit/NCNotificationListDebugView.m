@interface NCNotificationListDebugView
+ (void)configureDebugGuidesIfNecessaryForView:(id)a3;
- (NCNotificationListCell)cellView;
- (NCNotificationListDebugView)initWithFrame:(CGRect)a3;
- (NCNotificationListView)listView;
- (void)didMoveToWindow;
- (void)displayRect:(CGRect)a3 withName:(id)a4;
- (void)updateText;
@end

@implementation NCNotificationListDebugView

+ (void)configureDebugGuidesIfNecessaryForView:(id)a3
{
  v3 = a3;
  sub_21E8E5B34(v3);
}

- (void)didMoveToWindow
{
  v2 = self;
  NCNotificationListDebugView.didMoveToWindow()();
}

- (void)displayRect:(CGRect)a3 withName:(id)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v9 = sub_21E92A458();
  v11 = v10;
  v12 = self;
  sub_21E8E2D90(v9, v11, x, y, width, height);
}

- (NCNotificationListCell)cellView
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (NCNotificationListView)listView
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (NCNotificationListDebugView)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)updateText
{
  v2 = self;
  sub_21E8E3940();
}

@end