@interface STAppRatingsAndExceptionsFlowComposition
+ (id)composeContentViewControllerWithAppExceptionsController:(id)a3 alertPresentingController:(id)a4 specifier:(id)a5 forManagedUser:(BOOL)a6 areRestrictionsEditable:(BOOL)a7 runAfterPinAuthentication:(id)a8;
- (STAppRatingsAndExceptionsFlowComposition)init;
@end

@implementation STAppRatingsAndExceptionsFlowComposition

+ (id)composeContentViewControllerWithAppExceptionsController:(id)a3 alertPresentingController:(id)a4 specifier:(id)a5 forManagedUser:(BOOL)a6 areRestrictionsEditable:(BOOL)a7 runAfterPinAuthentication:(id)a8
{
  v8 = a7;
  v9 = a6;
  v13 = _Block_copy(a8);
  v14 = swift_allocObject();
  *(v14 + 16) = v13;
  swift_getObjCClassMetadata();
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = static STAppRatingsAndExceptionsFlowComposition.composeContentViewController(with:alertPresenting:specifier:forManagedUser:areRestrictionsEditable:runAfterPinAuthentication:)(v15, v16, v17, v9, v8, sub_264CB0200, v14);

  return v18;
}

- (STAppRatingsAndExceptionsFlowComposition)init
{
  v3.receiver = self;
  v3.super_class = STAppRatingsAndExceptionsFlowComposition;
  return [(STAppRatingsAndExceptionsFlowComposition *)&v3 init];
}

@end