@interface STAppRatingsAndExceptionsFlowComposition
+ (id)composeContentViewControllerWithAppExceptionsController:(id)controller alertPresentingController:(id)presentingController specifier:(id)specifier forManagedUser:(BOOL)user areRestrictionsEditable:(BOOL)editable runAfterPinAuthentication:(id)authentication;
- (STAppRatingsAndExceptionsFlowComposition)init;
@end

@implementation STAppRatingsAndExceptionsFlowComposition

+ (id)composeContentViewControllerWithAppExceptionsController:(id)controller alertPresentingController:(id)presentingController specifier:(id)specifier forManagedUser:(BOOL)user areRestrictionsEditable:(BOOL)editable runAfterPinAuthentication:(id)authentication
{
  editableCopy = editable;
  userCopy = user;
  v13 = _Block_copy(authentication);
  v14 = swift_allocObject();
  *(v14 + 16) = v13;
  swift_getObjCClassMetadata();
  controllerCopy = controller;
  presentingControllerCopy = presentingController;
  specifierCopy = specifier;
  v18 = static STAppRatingsAndExceptionsFlowComposition.composeContentViewController(with:alertPresenting:specifier:forManagedUser:areRestrictionsEditable:runAfterPinAuthentication:)(controllerCopy, presentingControllerCopy, specifierCopy, userCopy, editableCopy, sub_264CB0200, v14);

  return v18;
}

- (STAppRatingsAndExceptionsFlowComposition)init
{
  v3.receiver = self;
  v3.super_class = STAppRatingsAndExceptionsFlowComposition;
  return [(STAppRatingsAndExceptionsFlowComposition *)&v3 init];
}

@end