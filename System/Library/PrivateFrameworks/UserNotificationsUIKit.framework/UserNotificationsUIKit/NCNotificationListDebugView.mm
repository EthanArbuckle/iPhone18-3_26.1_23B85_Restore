@interface NCNotificationListDebugView
+ (void)configureDebugGuidesIfNecessaryForView:(id)view;
- (NCNotificationListCell)cellView;
- (NCNotificationListDebugView)initWithFrame:(CGRect)frame;
- (NCNotificationListView)listView;
- (void)didMoveToWindow;
- (void)displayRect:(CGRect)rect withName:(id)name;
- (void)updateText;
@end

@implementation NCNotificationListDebugView

+ (void)configureDebugGuidesIfNecessaryForView:(id)view
{
  viewCopy = view;
  sub_21E8E5B34(viewCopy);
}

- (void)didMoveToWindow
{
  selfCopy = self;
  NCNotificationListDebugView.didMoveToWindow()();
}

- (void)displayRect:(CGRect)rect withName:(id)name
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v9 = sub_21E92A458();
  v11 = v10;
  selfCopy = self;
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

- (NCNotificationListDebugView)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)updateText
{
  selfCopy = self;
  sub_21E8E3940();
}

@end