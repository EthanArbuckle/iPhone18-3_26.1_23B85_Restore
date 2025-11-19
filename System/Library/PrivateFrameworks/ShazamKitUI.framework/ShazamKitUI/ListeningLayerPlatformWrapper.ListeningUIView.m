@interface ListeningLayerPlatformWrapper.ListeningUIView
- (_TtCV11ShazamKitUI29ListeningLayerPlatformWrapper15ListeningUIView)initWithCoder:(id)a3;
- (_TtCV11ShazamKitUI29ListeningLayerPlatformWrapper15ListeningUIView)initWithFrame:(CGRect)a3;
- (void)layoutSubviews;
@end

@implementation ListeningLayerPlatformWrapper.ListeningUIView

- (_TtCV11ShazamKitUI29ListeningLayerPlatformWrapper15ListeningUIView)initWithCoder:(id)a3
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
  v4 = [v2 layer];
  [v4 bounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  [v3 setFrame_];
}

- (_TtCV11ShazamKitUI29ListeningLayerPlatformWrapper15ListeningUIView)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end