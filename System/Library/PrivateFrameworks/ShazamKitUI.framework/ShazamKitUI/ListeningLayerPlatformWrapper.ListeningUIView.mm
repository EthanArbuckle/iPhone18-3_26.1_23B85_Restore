@interface ListeningLayerPlatformWrapper.ListeningUIView
- (_TtCV11ShazamKitUI29ListeningLayerPlatformWrapper15ListeningUIView)initWithCoder:(id)coder;
- (_TtCV11ShazamKitUI29ListeningLayerPlatformWrapper15ListeningUIView)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
@end

@implementation ListeningLayerPlatformWrapper.ListeningUIView

- (_TtCV11ShazamKitUI29ListeningLayerPlatformWrapper15ListeningUIView)initWithCoder:(id)coder
{
  result = sub_265FAB3C8();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  v13.receiver = self;
  v13.super_class = swift_getObjectType();
  v2 = v13.receiver;
  [(ListeningLayerPlatformWrapper.ListeningUIView *)&v13 layoutSubviews];
  v3 = *&v2[OBJC_IVAR____TtCV11ShazamKitUI29ListeningLayerPlatformWrapper15ListeningUIView_listeningLayer];
  layer = [v2 layer];
  [layer bounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  [v3 setFrame_];
}

- (_TtCV11ShazamKitUI29ListeningLayerPlatformWrapper15ListeningUIView)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end