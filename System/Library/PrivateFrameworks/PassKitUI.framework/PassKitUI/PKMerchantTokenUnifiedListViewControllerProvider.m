@interface PKMerchantTokenUnifiedListViewControllerProvider
+ (id)makeViewController;
- (PKMerchantTokenUnifiedListViewControllerProvider)init;
- (id)makeViewControllerInNavigationContextForPass:(id)a3 withDelegate:(id)a4 prefetchedMerchantTokens:(id)a5;
- (id)makeViewControllerInNavigationContextForUnifiedListWithDelegate:(id)a3;
@end

@implementation PKMerchantTokenUnifiedListViewControllerProvider

- (PKMerchantTokenUnifiedListViewControllerProvider)init
{
  sub_1BE049864();
  v6 = sub_1BE049854();
  v3 = sub_1BE0498E4();

  *(&self->super.isa + OBJC_IVAR___PKMerchantTokenUnifiedListViewControllerProvider_coreDataContext) = v3;
  v5.receiver = self;
  v5.super_class = type metadata accessor for MerchantTokenUnifiedListViewControllerProvider();
  return [(PKMerchantTokenUnifiedListViewControllerProvider *)&v5 init];
}

+ (id)makeViewController
{
  v2 = _s9PassKitUI46MerchantTokenUnifiedListViewControllerProviderC04makehI0So010PKMerchantefghI8Protocol_So06UIViewI0CXcyFZ_0();

  return v2;
}

- (id)makeViewControllerInNavigationContextForPass:(id)a3 withDelegate:(id)a4 prefetchedMerchantTokens:(id)a5
{
  if (a5)
  {
    sub_1BD3626C8();
    sub_1BE052744();
  }

  v7 = a3;
  swift_unknownObjectRetain();
  v8 = self;
  v9 = sub_1BD3621BC(a3);

  swift_unknownObjectRelease();

  return v9;
}

- (id)makeViewControllerInNavigationContextForUnifiedListWithDelegate:(id)a3
{
  swift_unknownObjectRetain();
  v4 = self;
  v5 = sub_1BD3621BC(0);
  swift_unknownObjectRelease();

  return v5;
}

@end