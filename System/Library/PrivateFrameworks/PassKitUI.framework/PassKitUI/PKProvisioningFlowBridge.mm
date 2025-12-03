@interface PKProvisioningFlowBridge
+ (void)presentAutoFillCardsWithNavController:(id)controller groupsViewController:(id)viewController context:(id)context presentNavController:(id)navController completion:(id)completion;
+ (void)startAutoFillCredentialProvisioningFlowWithNavController:(id)controller eligibleCredentials:(id)credentials ineligibleCredentials:(id)ineligibleCredentials context:(id)context referralSource:(unint64_t)source showProvisioningSection:(BOOL)section selectedCredentials:(id)selectedCredentials presentNavController:(id)self0 completion:(id)self1;
+ (void)startCarKeyShareRedemptionFlowWithNavController:(id)controller context:(id)context invitation:(id)invitation handle:(id)handle originalShareURL:(id)l completion:(id)completion;
+ (void)startCredentialsProvisioningFlowWithNavController:(id)controller context:(id)context credentials:(id)credentials parentNavController:(id)navController presentNavController:(id)presentNavController completion:(id)completion;
+ (void)startInAppFlowWithNavController:(id)controller context:(id)context addPassConfiguration:(id)configuration completion:(id)completion;
+ (void)startInAppFlowWithNavController:(id)controller context:(id)context requestConfiguration:(id)configuration phoneWebService:(id)service watchWebService:(id)webService generateRequest:(id)request onViewLoaded:(id)loaded completion:(id)self0;
+ (void)startInAppFlowWithUnownedNavController:(id)controller context:(id)context addPassConfiguration:(id)configuration completion:(id)completion;
+ (void)startInAppFlowWithUnownedNavController:(id)controller context:(id)context requestConfiguration:(id)configuration phoneWebService:(id)service watchWebService:(id)webService generateRequest:(id)request onViewLoaded:(id)loaded completion:(id)self0;
+ (void)startIngestionFlowWithUnownedNavController:(id)controller context:(id)context credential:(id)credential onFirstViewControllerShown:(id)shown completion:(id)completion;
+ (void)startManualEntryFlowWithNavController:(id)controller context:(id)context completion:(id)completion;
+ (void)startPaymentSetupFlowWithNavController:(id)controller parentNavController:(id)navController context:(id)context mode:(int64_t)mode preflightCompletion:(id)completion completion:(id)a8;
+ (void)startPrecursorPassFlowWithNavController:(id)controller context:(id)context pass:(id)pass precursorController:(id)precursorController parentNavController:(id)navController presentNavController:(id)presentNavController completion:(id)completion;
+ (void)startProductManualEntryFlowWithNavController:(id)controller context:(id)context product:(id)product presentNavController:(id)navController completion:(id)completion;
+ (void)startProvisionToPurchaseFlowWithNavController:(id)controller context:(id)context onFirstViewControllerShown:(id)shown completion:(id)completion;
+ (void)startSetupAssistantFlowWithContext:(id)context allowManualEntry:(BOOL)entry onFirstViewControllerShown:(id)shown completion:(id)completion;
+ (void)startSetupAssistantFlowWithContext:(id)context credentials:(id)credentials onFirstViewControllerShown:(id)shown completion:(id)completion;
+ (void)startSetupAssistantFollowupFlowWithUnownedNavController:(id)controller context:(id)context preflightCompletion:(id)completion completion:(id)a6;
+ (void)startShareRedemptionFlowWithNavController:(id)controller context:(id)context invitation:(id)invitation referralSource:(id)source completion:(id)completion;
+ (void)startShareableCredentialFlowWithNavController:(id)controller context:(id)context credentials:(id)credentials completion:(id)completion;
+ (void)startVerificationFlowWithNavController:(id)controller context:(id)context pass:(id)pass verificationController:(id)verificationController presentNavController:(id)navController completion:(id)completion;
- (PKProvisioningFlowBridge)init;
@end

@implementation PKProvisioningFlowBridge

+ (void)startInAppFlowWithUnownedNavController:(id)controller context:(id)context requestConfiguration:(id)configuration phoneWebService:(id)service watchWebService:(id)webService generateRequest:(id)request onViewLoaded:(id)loaded completion:(id)self0
{
  v15 = _Block_copy(request);
  v16 = _Block_copy(loaded);
  v17 = _Block_copy(completion);
  v18 = swift_allocObject();
  *(v18 + 16) = v15;
  v19 = swift_allocObject();
  *(v19 + 16) = v16;
  v20 = swift_allocObject();
  *(v20 + 16) = v17;
  controllerCopy = controller;
  contextCopy = context;
  configurationCopy = configuration;
  serviceCopy = service;
  webServiceCopy = webService;
  sub_1BD34FCE0(controllerCopy, contextCopy, configurationCopy, service, webService, sub_1BD3594F0, v18, sub_1BD167418, v19, sub_1BD359504, v20);
}

+ (void)startInAppFlowWithNavController:(id)controller context:(id)context requestConfiguration:(id)configuration phoneWebService:(id)service watchWebService:(id)webService generateRequest:(id)request onViewLoaded:(id)loaded completion:(id)self0
{
  v15 = _Block_copy(request);
  v16 = _Block_copy(loaded);
  v17 = _Block_copy(completion);
  v18 = swift_allocObject();
  *(v18 + 16) = v15;
  v19 = swift_allocObject();
  *(v19 + 16) = v16;
  v20 = swift_allocObject();
  *(v20 + 16) = v17;
  controllerCopy = controller;
  contextCopy = context;
  configurationCopy = configuration;
  serviceCopy = service;
  webServiceCopy = webService;
  sub_1BD350B24(controllerCopy, contextCopy, configurationCopy, service, webService, sub_1BD3591F0, v18, sub_1BD167418, v19, sub_1BD359504, v20);
}

+ (void)startInAppFlowWithUnownedNavController:(id)controller context:(id)context addPassConfiguration:(id)configuration completion:(id)completion
{
  v9 = _Block_copy(completion);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  controllerCopy = controller;
  contextCopy = context;
  swift_unknownObjectRetain();
  _s9PassKitUI22ProvisioningFlowBridgeC010startInAppE024withUnownedNavController7context03addA13Configuration10completionySo012UINavigationM0C_So21PKProvisioningContextCSo010PKPushableaP8Provider_pySaySo015PKSecureElementA0CGSg_So7NSErrorCSgtctFZ_0(controllerCopy, contextCopy, configuration, sub_1BD359504, v10);

  swift_unknownObjectRelease();
}

+ (void)startInAppFlowWithNavController:(id)controller context:(id)context addPassConfiguration:(id)configuration completion:(id)completion
{
  v9 = _Block_copy(completion);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  controllerCopy = controller;
  contextCopy = context;
  swift_unknownObjectRetain();
  sub_1BD3519C0(controllerCopy, contextCopy, configuration, sub_1BD359504, v10, &off_1F3BAE178, &unk_1F3BA14F0, sub_1BD359438, &unk_1F3BA1518, sub_1BD359454);

  swift_unknownObjectRelease();
}

+ (void)startShareableCredentialFlowWithNavController:(id)controller context:(id)context credentials:(id)credentials completion:(id)completion
{
  v8 = _Block_copy(completion);
  sub_1BD0E5E8C(0, &unk_1EBD56E00);
  v9 = sub_1BE052744();
  v10 = swift_allocObject();
  *(v10 + 16) = v8;
  controllerCopy = controller;
  contextCopy = context;
  _s9PassKitUI22ProvisioningFlowBridgeC024startShareableCredentialE017withNavController7context11credentials10completionySo035PKPaymentSetupDismissibleNavigationL0C_So21PKProvisioningContextCSaySo0phI0CGyyctFZ_0(controllerCopy, contextCopy, v9, sub_1BD167418, v10);
}

+ (void)startShareRedemptionFlowWithNavController:(id)controller context:(id)context invitation:(id)invitation referralSource:(id)source completion:(id)completion
{
  v11 = _Block_copy(completion);
  if (source)
  {
    v12 = sub_1BE052434();
    source = v13;
  }

  else
  {
    v12 = 0;
  }

  v14 = swift_allocObject();
  *(v14 + 16) = v11;
  controllerCopy = controller;
  contextCopy = context;
  invitationCopy = invitation;
  _s9PassKitUI22ProvisioningFlowBridgeC020startShareRedemptionE017withNavController7context10invitation14referralSource10completionySo035PKPaymentSetupDismissibleNavigationL0C_So21PKProvisioningContextCSo013PKSharingPushD10InvitationCSSSgySaySo015PKSecureElementA0CGSg_So7NSErrorCSgtctFZ_0(controllerCopy, contextCopy, invitationCopy, v12, source, sub_1BD359504, v14);
}

+ (void)startCarKeyShareRedemptionFlowWithNavController:(id)controller context:(id)context invitation:(id)invitation handle:(id)handle originalShareURL:(id)l completion:(id)completion
{
  v12 = _Block_copy(completion);
  v13 = sub_1BE052434();
  v15 = v14;
  v16 = swift_allocObject();
  *(v16 + 16) = v12;
  controllerCopy = controller;
  contextCopy = context;
  invitationCopy = invitation;
  handleCopy = handle;
  _s9PassKitUI22ProvisioningFlowBridgeC026startCarKeyShareRedemptionE017withNavController7context10invitation6handle08originalJ3URL10completionySo035PKPaymentSetupDismissibleNavigationN0C_So21PKProvisioningContextCSo09PKSharinghI10InvitationCSo22PKSharingChannelHandleCSSySaySo015PKSecureElementA0CGSg_So7NSErrorCSgtctFZ_0(controllerCopy, contextCopy, invitationCopy, handleCopy, v13, v15, sub_1BD3591E8, v16);
}

+ (void)startProductManualEntryFlowWithNavController:(id)controller context:(id)context product:(id)product presentNavController:(id)navController completion:(id)completion
{
  v11 = _Block_copy(navController);
  v12 = _Block_copy(completion);
  v13 = swift_allocObject();
  *(v13 + 16) = v11;
  v14 = swift_allocObject();
  *(v14 + 16) = v12;
  controllerCopy = controller;
  contextCopy = context;
  productCopy = product;
  _s9PassKitUI22ProvisioningFlowBridgeC023startProductManualEntryE017withNavController7context7product07presentlM010completionySo035PKPaymentSetupDismissibleNavigationM0C_So21PKProvisioningContextCSo0rsH0CyycySo015PKSecureElementA0CSgctFZ_0(controllerCopy, contextCopy, productCopy, sub_1BD167418, v13, sub_1BD139BD4, v14);
}

+ (void)startManualEntryFlowWithNavController:(id)controller context:(id)context completion:(id)completion
{
  v7 = _Block_copy(completion);
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  controllerCopy = controller;
  contextCopy = context;
  _s9PassKitUI22ProvisioningFlowBridgeC016startManualEntryE017withNavController7context10completionySo035PKPaymentSetupDismissibleNavigationL0C_So21PKProvisioningContextCyyctFZ_0(controllerCopy, contextCopy, sub_1BD167418, v8);
}

+ (void)startProvisionToPurchaseFlowWithNavController:(id)controller context:(id)context onFirstViewControllerShown:(id)shown completion:(id)completion
{
  v9 = _Block_copy(shown);
  v10 = _Block_copy(completion);
  if (v9)
  {
    v11 = swift_allocObject();
    *(v11 + 16) = v9;
    v9 = sub_1BD167418;
  }

  else
  {
    v11 = 0;
  }

  v12 = swift_allocObject();
  *(v12 + 16) = v10;
  controllerCopy = controller;
  contextCopy = context;
  _s9PassKitUI22ProvisioningFlowBridgeC024startProvisionToPurchaseE017withNavController7context011onFirstViewM5Shown10completionySo035PKPaymentSetupDismissibleNavigationM0C_So21PKProvisioningContextCyycSgyyctFZ_0(controllerCopy, contextCopy, v9, v11, sub_1BD167418, v12);

  sub_1BD0D4744(v9);
}

+ (void)startIngestionFlowWithUnownedNavController:(id)controller context:(id)context credential:(id)credential onFirstViewControllerShown:(id)shown completion:(id)completion
{
  v11 = _Block_copy(shown);
  v12 = _Block_copy(completion);
  if (v11)
  {
    v13 = swift_allocObject();
    *(v13 + 16) = v11;
    v11 = sub_1BD167418;
  }

  else
  {
    v13 = 0;
  }

  _Block_copy(v12);
  controllerCopy = controller;
  contextCopy = context;
  credentialCopy = credential;
  sub_1BD354E28(controllerCopy, contextCopy, credentialCopy, v11, v13, v12);
  _Block_release(v12);
  _Block_release(v12);
  sub_1BD0D4744(v11);
}

+ (void)startVerificationFlowWithNavController:(id)controller context:(id)context pass:(id)pass verificationController:(id)verificationController presentNavController:(id)navController completion:(id)completion
{
  v13 = _Block_copy(navController);
  v14 = _Block_copy(completion);
  v15 = swift_allocObject();
  *(v15 + 16) = v13;
  v16 = swift_allocObject();
  *(v16 + 16) = v14;
  controllerCopy = controller;
  contextCopy = context;
  passCopy = pass;
  verificationControllerCopy = verificationController;
  _s9PassKitUI22ProvisioningFlowBridgeC017startVerificationE017withNavController7context4pass012verificationK007presentjK010completionySo035PKPaymentSetupDismissibleNavigationK0C_So21PKProvisioningContextCSo015PKSecureElementA0CSo0qhK0CyycyyctFZ_0(controllerCopy, contextCopy, passCopy, verificationControllerCopy, sub_1BD167418, v15, sub_1BD167418, v16);
}

+ (void)startPrecursorPassFlowWithNavController:(id)controller context:(id)context pass:(id)pass precursorController:(id)precursorController parentNavController:(id)navController presentNavController:(id)presentNavController completion:(id)completion
{
  v14 = _Block_copy(presentNavController);
  v15 = _Block_copy(completion);
  v16 = swift_allocObject();
  *(v16 + 16) = v14;
  v17 = swift_allocObject();
  *(v17 + 16) = v15;
  controllerCopy = controller;
  contextCopy = context;
  passCopy = pass;
  precursorControllerCopy = precursorController;
  navControllerCopy = navController;
  sub_1BD35569C(controllerCopy, contextCopy, passCopy, precursorControllerCopy, navControllerCopy, sub_1BD167418, v16, sub_1BD167418, v17);
}

+ (void)startCredentialsProvisioningFlowWithNavController:(id)controller context:(id)context credentials:(id)credentials parentNavController:(id)navController presentNavController:(id)presentNavController completion:(id)completion
{
  v12 = _Block_copy(presentNavController);
  v13 = _Block_copy(completion);
  sub_1BD0E5E8C(0, &qword_1EBD444C0);
  v14 = sub_1BE052744();
  v15 = swift_allocObject();
  *(v15 + 16) = v12;
  v16 = swift_allocObject();
  *(v16 + 16) = v13;
  controllerCopy = controller;
  contextCopy = context;
  navControllerCopy = navController;
  _s9PassKitUI22ProvisioningFlowBridgeC016startCredentialsdE017withNavController7context11credentials06parentjK007presentjK010completionySo035PKPaymentSetupDismissibleNavigationK0C_So21PKProvisioningContextCSaySo0Q10CredentialCGSo012UINavigationK0CyycyyctFZ_0(controllerCopy, contextCopy, v14, navControllerCopy, sub_1BD167418, v15, sub_1BD167418, v16);
}

+ (void)startSetupAssistantFlowWithContext:(id)context credentials:(id)credentials onFirstViewControllerShown:(id)shown completion:(id)completion
{
  v8 = _Block_copy(shown);
  v9 = _Block_copy(completion);
  sub_1BD0E5E8C(0, &qword_1EBD444C0);
  v10 = sub_1BE052744();
  v11 = swift_allocObject();
  *(v11 + 16) = v8;
  v12 = swift_allocObject();
  *(v12 + 16) = v9;
  contextCopy = context;
  _s9PassKitUI22ProvisioningFlowBridgeC019startSetupAssistantE07context11credentials26onFirstViewControllerShown10completionySo21PKProvisioningContextC_SaySo19PKPaymentCredentialCGySo06UIViewO0CcyyctFZ_0(contextCopy, v10, sub_1BD359508, v11, sub_1BD167418, v12);
}

+ (void)startSetupAssistantFlowWithContext:(id)context allowManualEntry:(BOOL)entry onFirstViewControllerShown:(id)shown completion:(id)completion
{
  v9 = _Block_copy(shown);
  v10 = _Block_copy(completion);
  v11 = swift_allocObject();
  *(v11 + 16) = v9;
  v12 = swift_allocObject();
  *(v12 + 16) = v10;
  contextCopy = context;
  _s9PassKitUI22ProvisioningFlowBridgeC019startSetupAssistantE07context16allowManualEntry26onFirstViewControllerShown10completionySo21PKProvisioningContextC_SbySo06UIViewQ0CcyyctFZ_0(contextCopy, entry, sub_1BD139BD4, v11, sub_1BD167418, v12);
}

+ (void)startSetupAssistantFollowupFlowWithUnownedNavController:(id)controller context:(id)context preflightCompletion:(id)completion completion:(id)a6
{
  v9 = _Block_copy(completion);
  v10 = _Block_copy(a6);
  v11 = swift_allocObject();
  *(v11 + 16) = v9;
  v12 = swift_allocObject();
  *(v12 + 16) = v10;
  controllerCopy = controller;
  contextCopy = context;
  _s9PassKitUI22ProvisioningFlowBridgeC027startSetupAssistantFollowupE024withUnownedNavController7context19preflightCompletion10completionySo012UINavigationN0C_So21PKProvisioningContextCyycyyctFZ_0(controllerCopy, contextCopy, sub_1BD167418, v11, sub_1BD167418, v12);
}

+ (void)startPaymentSetupFlowWithNavController:(id)controller parentNavController:(id)navController context:(id)context mode:(int64_t)mode preflightCompletion:(id)completion completion:(id)a8
{
  v13 = _Block_copy(completion);
  v14 = _Block_copy(a8);
  v15 = swift_allocObject();
  *(v15 + 16) = v13;
  v16 = swift_allocObject();
  *(v16 + 16) = v14;
  controllerCopy = controller;
  navControllerCopy = navController;
  contextCopy = context;
  _s9PassKitUI22ProvisioningFlowBridgeC017startPaymentSetupE017withNavController06parentkL07context4mode19preflightCompletion10completionySo09PKPaymenti21DismissibleNavigationL0C_So012UINavigationL0CSgSo21PKProvisioningContextCSo0sI4ModeVyycyyctFZ_0(controllerCopy, navController, contextCopy, mode, sub_1BD167418, v15, sub_1BD167418, v16);
}

+ (void)startAutoFillCredentialProvisioningFlowWithNavController:(id)controller eligibleCredentials:(id)credentials ineligibleCredentials:(id)ineligibleCredentials context:(id)context referralSource:(unint64_t)source showProvisioningSection:(BOOL)section selectedCredentials:(id)selectedCredentials presentNavController:(id)self0 completion:(id)self1
{
  selectedCredentialsCopy = selectedCredentials;
  v18 = _Block_copy(navController);
  v19 = _Block_copy(completion);
  if (credentials)
  {
    sub_1BD0E5E8C(0, &qword_1EBD41880);
    credentials = sub_1BE052744();
  }

  if (ineligibleCredentials)
  {
    sub_1BD0E5E8C(0, &qword_1EBD41880);
    ineligibleCredentials = sub_1BE052744();
  }

  if (selectedCredentials)
  {
    sub_1BD0E5E8C(0, &qword_1EBD41880);
    selectedCredentialsCopy = sub_1BE052744();
  }

  controllerCopy = controller;
  contextCopy = context;
  v22 = swift_allocObject();
  *(v22 + 16) = v18;
  v23 = swift_allocObject();
  *(v23 + 16) = v19;
  sub_1BD358604(controllerCopy, credentials, ineligibleCredentials, contextCopy, source, section, selectedCredentialsCopy, sub_1BD167418, v22, sub_1BD1B6FEC, v23);
}

+ (void)presentAutoFillCardsWithNavController:(id)controller groupsViewController:(id)viewController context:(id)context presentNavController:(id)navController completion:(id)completion
{
  v11 = _Block_copy(navController);
  v12 = _Block_copy(completion);
  v13 = swift_allocObject();
  *(v13 + 16) = v11;
  v14 = swift_allocObject();
  *(v14 + 16) = v12;
  controllerCopy = controller;
  viewControllerCopy = viewController;
  contextCopy = context;
  sub_1BD358D68(controllerCopy, viewControllerCopy, contextCopy, sub_1BD166E88, v13, sub_1BD1B6B00, v14);
}

- (PKProvisioningFlowBridge)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for ProvisioningFlowBridge();
  return [(PKProvisioningFlowBridge *)&v3 init];
}

@end