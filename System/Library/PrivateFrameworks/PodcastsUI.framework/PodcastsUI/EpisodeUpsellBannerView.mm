@interface EpisodeUpsellBannerView
- (_TtC10PodcastsUI23EpisodeUpsellBannerView)initWithFrame:(CGRect)frame;
- (id)accessibilitySubtitleLabel;
- (void)didHover:(id)hover;
- (void)layoutSubviews;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation EpisodeUpsellBannerView

- (void)layoutSubviews
{
  v9.receiver = self;
  v9.super_class = type metadata accessor for EpisodeUpsellBannerView();
  v2 = v9.receiver;
  [(EpisodeUpsellBannerView *)&v9 layoutSubviews];
  layer = [*&v2[OBJC_IVAR____TtC10PodcastsUI23EpisodeUpsellBannerView_artworkContainerView] layer];
  sub_21B4C1840(v6);
  v4 = v7;
  v5 = v8;
  __swift_project_boxed_opaque_existential_1(v6, v7);
  (*(v5 + 40))(v4, v5);
  [layer setCornerRadius_];

  __swift_destroy_boxed_opaque_existential_1(v6);
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  sub_21B4C3804(change);
}

- (void)didHover:(id)hover
{
  hoverCopy = hover;
  selfCopy = self;
  sub_21B4C3C14(hoverCopy);
}

- (id)accessibilitySubtitleLabel
{
  selfCopy = self;
  v3 = sub_21B4C0B14();

  return v3;
}

- (_TtC10PodcastsUI23EpisodeUpsellBannerView)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end