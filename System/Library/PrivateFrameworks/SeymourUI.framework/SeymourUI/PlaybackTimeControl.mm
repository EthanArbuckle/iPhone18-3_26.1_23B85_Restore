@interface PlaybackTimeControl
- (void)layoutSubviews;
- (void)tintColorDidChange;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation PlaybackTimeControl

- (void)layoutSubviews
{
  selfCopy = self;
  sub_20BF7C700();
}

- (void)tintColorDidChange
{
  v5.receiver = self;
  v5.super_class = type metadata accessor for PlaybackTimeControl();
  v2 = v5.receiver;
  [(PlaybackTimeControl *)&v5 tintColorDidChange];
  v3 = *&v2[OBJC_IVAR____TtC9SeymourUI19PlaybackTimeControl_elapsedTrackView];
  tintColor = [v2 tintColor];
  [v3 setBackgroundColor_];
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  sub_20BF7C8D8(change);
}

@end