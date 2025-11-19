@interface NearbyPeerPaymentAppearancePreferencesViewController
- (_TtC9PassKitUI52NearbyPeerPaymentAppearancePreferencesViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (double)tableView:(id)a3 heightForFooterInSection:(int64_t)a4;
- (double)tableView:(id)a3 heightForHeaderInSection:(int64_t)a4;
- (id)tableView:(id)a3 viewForFooterInSection:(int64_t)a4;
- (id)tableView:(id)a3 viewForHeaderInSection:(int64_t)a4;
- (void)scrollViewDidScroll:(id)a3;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation NearbyPeerPaymentAppearancePreferencesViewController

- (void)viewDidLoad
{
  v2 = self;
  sub_1BD4FDEE8();
}

- (void)viewDidLayoutSubviews
{
  v2 = self;
  sub_1BD4FE520();
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v6 = sub_1BE04B414();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BE04B3D4();
  v11 = a3;
  v12 = self;
  sub_1BD4FE83C(v11);

  (*(v7 + 8))(v10, v6);
}

- (double)tableView:(id)a3 heightForHeaderInSection:(int64_t)a4
{
  result = 20.0;
  if (*(&self->super.super.super.isa + OBJC_IVAR____TtC9PassKitUI52NearbyPeerPaymentAppearancePreferencesViewController_context) != 2 && a4 == 0)
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

- (id)tableView:(id)a3 viewForHeaderInSection:(int64_t)a4
{
  if (*(&self->super.super.super.isa + OBJC_IVAR____TtC9PassKitUI52NearbyPeerPaymentAppearancePreferencesViewController_context) != 2 && a4 == 0)
  {
    v6 = self;
    if (_UISolariumFeatureFlagEnabled())
    {
      v5 = 0;
    }

    else
    {
      v5 = [objc_allocWithZone(MEMORY[0x1E69DD250]) initWithFrame_];
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (double)tableView:(id)a3 heightForFooterInSection:(int64_t)a4
{
  v4 = 0.0;
  if (a4 == 1)
  {
    v5 = *(&self->super.super.super.isa + OBJC_IVAR____TtC9PassKitUI52NearbyPeerPaymentAppearancePreferencesViewController_footer);
    v7 = a3;
    v8 = self;
    [v7 bounds];
    [v5 sizeThatFits_];
    v4 = v9;
  }

  return v4;
}

- (id)tableView:(id)a3 viewForFooterInSection:(int64_t)a4
{
  if (a4 == 1)
  {
    v5 = *(&self->super.super.super.isa + OBJC_IVAR____TtC9PassKitUI52NearbyPeerPaymentAppearancePreferencesViewController_footer);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)scrollViewDidScroll:(id)a3
{
  v3 = *(&self->super.super.super.isa + OBJC_IVAR____TtC9PassKitUI52NearbyPeerPaymentAppearancePreferencesViewController_divider);
  if (v3)
  {
    v6 = v3;
    v7 = a3;
    v10 = self;
    [v7 contentOffset];
    v8 = 0.0;
    if (v9 > 0.0)
    {
      v8 = 1.0;
    }

    [v6 setAlpha_];
  }
}

- (_TtC9PassKitUI52NearbyPeerPaymentAppearancePreferencesViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end