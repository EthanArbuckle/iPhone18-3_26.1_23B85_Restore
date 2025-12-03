@interface iCloudHomeViewModel
- (BOOL)webViewController:(id)controller handleDelegateAction:(id)action completion:(id)completion;
- (_TtC14iCloudSettings19iCloudHomeViewModel)init;
- (id)expandedSubTitleForDataclass:(id)dataclass;
- (id)expandedSubTitleForService:(id)service;
- (void)didStartLoadingWithView:(int64_t)view;
- (void)didStopLoadingWithView:(int64_t)view;
- (void)showBackupViewWithResourceDictionary:(id)dictionary;
- (void)upgradeFlowManagerDidComplete:(id)complete;
- (void)upgradeFlowManagerDidFail:(id)fail error:(id)error;
- (void)webViewController:(id)controller didFinishPurchaseWithResult:(id)result error:(id)error;
@end

@implementation iCloudHomeViewModel

- (BOOL)webViewController:(id)controller handleDelegateAction:(id)action completion:(id)completion
{
  v7 = _Block_copy(completion);
  controllerCopy = controller;
  selfCopy = self;
  v10 = _s14iCloudSettings01iA13HomeViewModelC03webD10Controller_20handleDelegateAction10completionSbSo08AMSUIWebdG0C_SDys11AnyHashableVypGyypSg_s5Error_pSgtctF_0();
  _Block_release(v7);

  return v10 & 1;
}

- (void)webViewController:(id)controller didFinishPurchaseWithResult:(id)result error:(id)error
{
  controllerCopy = controller;
  resultCopy = result;
  selfCopy = self;
  errorCopy = error;
  sub_27586BB10(error);
}

- (id)expandedSubTitleForDataclass:(id)dataclass
{
  dataclassCopy = dataclass;
  selfCopy = self;
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

- (id)expandedSubTitleForService:(id)service
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

- (void)didStartLoadingWithView:(int64_t)view
{
  selfCopy = self;
  iCloudHomeViewModel.didStartLoading(view:)(view);
}

- (void)didStopLoadingWithView:(int64_t)view
{
  selfCopy = self;
  iCloudHomeViewModel.didStopLoading(view:)(view);
}

- (void)showBackupViewWithResourceDictionary:(id)dictionary
{
  if (dictionary)
  {
    v4 = sub_2759BA1D8();
  }

  else
  {
    v4 = 0;
  }

  selfCopy = self;
  sub_275914114(v4);
}

- (void)upgradeFlowManagerDidComplete:(id)complete
{
  completeCopy = complete;
  selfCopy = self;
  _s14iCloudSettings01iA13HomeViewModelC29upgradeFlowManagerDidCompleteyySo010ICQUpgradegH0CSgF_0();
}

- (void)upgradeFlowManagerDidFail:(id)fail error:(id)error
{
  failCopy = fail;
  selfCopy = self;
  errorCopy = error;
  sub_27591DDF4(error);
}

@end