@interface iCloudHomeViewModel
- (BOOL)webViewController:(id)a3 handleDelegateAction:(id)a4 completion:(id)a5;
- (_TtC14iCloudSettings19iCloudHomeViewModel)init;
- (id)expandedSubTitleForDataclass:(id)a3;
- (id)expandedSubTitleForService:(id)a3;
- (void)didStartLoadingWithView:(int64_t)a3;
- (void)didStopLoadingWithView:(int64_t)a3;
- (void)showBackupViewWithResourceDictionary:(id)a3;
- (void)upgradeFlowManagerDidComplete:(id)a3;
- (void)upgradeFlowManagerDidFail:(id)a3 error:(id)a4;
- (void)webViewController:(id)a3 didFinishPurchaseWithResult:(id)a4 error:(id)a5;
@end

@implementation iCloudHomeViewModel

- (BOOL)webViewController:(id)a3 handleDelegateAction:(id)a4 completion:(id)a5
{
  v7 = _Block_copy(a5);
  v8 = a3;
  v9 = self;
  v10 = _s14iCloudSettings01iA13HomeViewModelC03webD10Controller_20handleDelegateAction10completionSbSo08AMSUIWebdG0C_SDys11AnyHashableVypGyypSg_s5Error_pSgtctF_0();
  _Block_release(v7);

  return v10 & 1;
}

- (void)webViewController:(id)a3 didFinishPurchaseWithResult:(id)a4 error:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = self;
  v11 = a5;
  sub_27586BB10(a5);
}

- (id)expandedSubTitleForDataclass:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_275888920();
  v7 = v6;

  if (v7)
  {
    v8 = sub_2759BA258();
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)expandedSubTitleForService:(id)a3
{
  v3 = sub_2759BA258();

  return v3;
}

- (_TtC14iCloudSettings19iCloudHomeViewModel)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)didStartLoadingWithView:(int64_t)a3
{
  v4 = self;
  iCloudHomeViewModel.didStartLoading(view:)(a3);
}

- (void)didStopLoadingWithView:(int64_t)a3
{
  v4 = self;
  iCloudHomeViewModel.didStopLoading(view:)(a3);
}

- (void)showBackupViewWithResourceDictionary:(id)a3
{
  if (a3)
  {
    v4 = sub_2759BA1D8();
  }

  else
  {
    v4 = 0;
  }

  v5 = self;
  sub_275914114(v4);
}

- (void)upgradeFlowManagerDidComplete:(id)a3
{
  v4 = a3;
  v5 = self;
  _s14iCloudSettings01iA13HomeViewModelC29upgradeFlowManagerDidCompleteyySo010ICQUpgradegH0CSgF_0();
}

- (void)upgradeFlowManagerDidFail:(id)a3 error:(id)a4
{
  v6 = a3;
  v7 = self;
  v8 = a4;
  sub_27591DDF4(a4);
}

@end