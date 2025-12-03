@interface PKBarcodePassBoopProvider
- (PKBarcodePassBoopProvider)init;
- (id)activityItemsConfiguration;
- (void)setCachedConfiguration:(id)configuration;
- (void)setPass:(id)pass passView:(id)view;
@end

@implementation PKBarcodePassBoopProvider

- (id)activityItemsConfiguration
{
  v2 = OBJC_IVAR___PKBarcodePassBoopProvider_cachedConfiguration;
  swift_beginAccess();
  return *(self + v2);
}

- (void)setCachedConfiguration:(id)configuration
{
  v5 = OBJC_IVAR___PKBarcodePassBoopProvider_cachedConfiguration;
  swift_beginAccess();
  v6 = *(&self->super.isa + v5);
  *(&self->super.isa + v5) = configuration;
  configurationCopy = configuration;
}

- (void)setPass:(id)pass passView:(id)view
{
  passCopy = pass;
  viewCopy = view;
  selfCopy = self;
  sub_1BD99BD90(passCopy, view);
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