@interface NearbyPeerPaymentAppearancePreferencesViewController
- (_TtC9PassKitUI52NearbyPeerPaymentAppearancePreferencesViewController)initWithNibName:(id)name bundle:(id)bundle;
- (double)tableView:(id)view heightForFooterInSection:(int64_t)section;
- (double)tableView:(id)view heightForHeaderInSection:(int64_t)section;
- (id)tableView:(id)view viewForFooterInSection:(int64_t)section;
- (id)tableView:(id)view viewForHeaderInSection:(int64_t)section;
- (void)scrollViewDidScroll:(id)scroll;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation NearbyPeerPaymentAppearancePreferencesViewController

- (void)viewDidLoad
{
  selfCopy = self;
  sub_1BD4FDEE8();
}

- (void)viewDidLayoutSubviews
{
  selfCopy = self;
  sub_1BD4FE520();
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  v6 = sub_1BE04B414();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BE04B3D4();
  viewCopy = view;
  selfCopy = self;
  sub_1BD4FE83C(viewCopy);

  (*(v7 + 8))(v10, v6);
}

- (double)tableView:(id)view heightForHeaderInSection:(int64_t)section
{
  result = 20.0;
  if (*(&self->super.super.super.isa + OBJC_IVAR____TtC9PassKitUI52NearbyPeerPaymentAppearancePreferencesViewController_context) != 2 && section == 0)
  {
    v6 = _UISolariumFeatureFlagEnabled();
    result = 0.0;
    if (v6)
    {
      return 20.0;
    }
  }

  return result;
}

- (id)tableView:(id)view viewForHeaderInSection:(int64_t)section
{
  if (*(&self->super.super.super.isa + OBJC_IVAR____TtC9PassKitUI52NearbyPeerPaymentAppearancePreferencesViewController_context) != 2 && section == 0)
  {
    selfCopy = self;
    if (_UISolariumFeatureFlagEnabled())
    {
      initWithFrame_ = 0;
    }

    else
    {
      initWithFrame_ = [objc_allocWithZone(MEMORY[0x1E69DD250]) initWithFrame_];
    }
  }

  else
  {
    initWithFrame_ = 0;
  }

  return initWithFrame_;
}

- (double)tableView:(id)view heightForFooterInSection:(int64_t)section
{
  v4 = 0.0;
  if (section == 1)
  {
    v5 = *(&self->super.super.super.isa + OBJC_IVAR____TtC9PassKitUI52NearbyPeerPaymentAppearancePreferencesViewController_footer);
    viewCopy = view;
    selfCopy = self;
    [viewCopy bounds];
    [v5 sizeThatFits_];
    v4 = v9;
  }

  return v4;
}

- (id)tableView:(id)view viewForFooterInSection:(int64_t)section
{
  if (section == 1)
  {
    v5 = *(&self->super.super.super.isa + OBJC_IVAR____TtC9PassKitUI52NearbyPeerPaymentAppearancePreferencesViewController_footer);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)scrollViewDidScroll:(id)scroll
{
  v3 = *(&self->super.super.super.isa + OBJC_IVAR____TtC9PassKitUI52NearbyPeerPaymentAppearancePreferencesViewController_divider);
  if (v3)
  {
    v6 = v3;
    scrollCopy = scroll;
    selfCopy = self;
    [scrollCopy contentOffset];
    v8 = 0.0;
    if (v9 > 0.0)
    {
      v8 = 1.0;
    }

    [v6 setAlpha_];
  }
}

- (_TtC9PassKitUI52NearbyPeerPaymentAppearancePreferencesViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end