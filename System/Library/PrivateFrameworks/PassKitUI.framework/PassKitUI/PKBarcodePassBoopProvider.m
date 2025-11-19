@interface PKBarcodePassBoopProvider
- (PKBarcodePassBoopProvider)init;
- (id)activityItemsConfiguration;
- (void)setCachedConfiguration:(id)a3;
- (void)setPass:(id)a3 passView:(id)a4;
@end

@implementation PKBarcodePassBoopProvider

- (id)activityItemsConfiguration
{
  v2 = OBJC_IVAR___PKBarcodePassBoopProvider_cachedConfiguration;
  swift_beginAccess();
  return *(a1 + v2);
}

- (void)setCachedConfiguration:(id)a3
{
  v5 = OBJC_IVAR___PKBarcodePassBoopProvider_cachedConfiguration;
  swift_beginAccess();
  v6 = *(&self->super.isa + v5);
  *(&self->super.isa + v5) = a3;
  v7 = a3;
}

- (void)setPass:(id)a3 passView:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_1BD99BD90(v6, a4);
}

- (PKBarcodePassBoopProvider)init
{
  *(&self->super.isa + OBJC_IVAR___PKBarcodePassBoopProvider_pass) = 0;
  *(&self->super.isa + OBJC_IVAR___PKBarcodePassBoopProvider_cachedConfiguration) = 0;
  v3.receiver = self;
  v3.super_class = type metadata accessor for BarcodePassBoopProvider();
  return [(PKBarcodePassBoopProvider *)&v3 init];
}

@end