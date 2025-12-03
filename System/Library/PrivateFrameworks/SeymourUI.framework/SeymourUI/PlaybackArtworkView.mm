@interface PlaybackArtworkView
- (void)layoutSubviews;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation PlaybackArtworkView

- (void)layoutSubviews
{
  selfCopy = self;
  sub_20BF64C30();
}

- (void)traitCollectionDidChange:(id)change
{
  v6.receiver = self;
  v6.super_class = type metadata accessor for PlaybackArtworkView();
  changeCopy = change;
  v5 = v6.receiver;
  [(PlaybackArtworkView *)&v6 traitCollectionDidChange:changeCopy];
  sub_20BF653A8();
}

@end