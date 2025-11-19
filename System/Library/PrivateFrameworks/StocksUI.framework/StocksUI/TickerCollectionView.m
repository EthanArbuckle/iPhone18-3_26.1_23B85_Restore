@interface TickerCollectionView
- (void)autoScrollWithDisplayWithDisplayLink:(id)a3;
- (void)handleAccessibilitySettingsChangedWithNotification:(id)a3;
- (void)layoutSubviews;
@end

@implementation TickerCollectionView

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  v2 = v3.receiver;
  [(TickerCollectionView *)&v3 layoutSubviews];
  sub_2204E75CC();
}

- (void)autoScrollWithDisplayWithDisplayLink:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_2207A7E94(v4);
}

- (void)handleAccessibilitySettingsChangedWithNotification:(id)a3
{
  v4 = sub_220884A6C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220884A5C();
  v9 = self;
  sub_2207A7D00();

  (*(v5 + 8))(v8, v4);
}

@end