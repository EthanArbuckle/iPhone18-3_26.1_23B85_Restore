@interface AmbientListeningUIView
- (CGSize)intrinsicContentSize;
- (void)layoutSubviews;
@end

@implementation AmbientListeningUIView

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = swift_getObjectType();
  v2 = v4.receiver;
  [(AmbientListeningUIView *)&v4 layoutSubviews];
  v3 = *&v2[OBJC_IVAR____TtC11ShazamKitUI22AmbientListeningUIView_listeningLayer];
  [*&v2[OBJC_IVAR____TtC11ShazamKitUI22AmbientListeningUIView_listeningLayerView] bounds];
  [v3 setFrame_];
}

- (CGSize)intrinsicContentSize
{
  selfCopy = self;
  superview = [(AmbientListeningUIView *)selfCopy superview];
  if (superview)
  {
    v4 = superview;
    [superview bounds];
    v6 = v5;
    v8 = v7;
  }

  else
  {

    v6 = 0.0;
    v8 = 0.0;
  }

  v9 = v6;
  v10 = v8;
  result.height = v10;
  result.width = v9;
  return result;
}

@end