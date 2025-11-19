@interface PlaybackArtworkView
- (void)layoutSubviews;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation PlaybackArtworkView

- (void)layoutSubviews
{
  v2 = self;
  sub_20BF64C30();
}

- (void)traitCollectionDidChange:(id)a3
{
  v6.receiver = self;
  v6.super_class = type metadata accessor for PlaybackArtworkView();
  v4 = a3;
  v5 = v6.receiver;
  [(PlaybackArtworkView *)&v6 traitCollectionDidChange:v4];
  sub_20BF653A8();
}

@end