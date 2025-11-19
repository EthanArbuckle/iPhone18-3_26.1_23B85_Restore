@interface PKProvisioningFlowBridge
+ (void)presentAutoFillCardsWithNavController:(id)a3 groupsViewController:(id)a4 context:(id)a5 presentNavController:(id)a6 completion:(id)a7;
+ (void)startAutoFillCredentialProvisioningFlowWithNavController:(id)a3 eligibleCredentials:(id)a4 ineligibleCredentials:(id)a5 context:(id)a6 referralSource:(unint64_t)a7 showProvisioningSection:(BOOL)a8 selectedCredentials:(id)a9 presentNavController:(id)a10 completion:(id)a11;
+ (void)startCarKeyShareRedemptionFlowWithNavController:(id)a3 context:(id)a4 invitation:(id)a5 handle:(id)a6 originalShareURL:(id)a7 completion:(id)a8;
+ (void)startCredentialsProvisioningFlowWithNavController:(id)a3 context:(id)a4 credentials:(id)a5 parentNavController:(id)a6 presentNavController:(id)a7 completion:(id)a8;
+ (void)startInAppFlowWithNavController:(id)a3 context:(id)a4 addPassConfiguration:(id)a5 completion:(id)a6;
+ (void)startInAppFlowWithNavController:(id)a3 context:(id)a4 requestConfiguration:(id)a5 phoneWebService:(id)a6 watchWebService:(id)a7 generateRequest:(id)a8 onViewLoaded:(id)a9 completion:(id)a10;
+ (void)startInAppFlowWithUnownedNavController:(id)a3 context:(id)a4 addPassConfiguration:(id)a5 completion:(id)a6;
+ (void)startInAppFlowWithUnownedNavController:(id)a3 context:(id)a4 requestConfiguration:(id)a5 phoneWebService:(id)a6 watchWebService:(id)a7 generateRequest:(id)a8 onViewLoaded:(id)a9 completion:(id)a10;
+ (void)startIngestionFlowWithUnownedNavController:(id)a3 context:(id)a4 credential:(id)a5 onFirstViewControllerShown:(id)a6 completion:(id)a7;
+ (void)startManualEntryFlowWithNavController:(id)a3 context:(id)a4 completion:(id)a5;
+ (void)startPaymentSetupFlowWithNavController:(id)a3 parentNavController:(id)a4 context:(id)a5 mode:(int64_t)a6 preflightCompletion:(id)a7 completion:(id)a8;
+ (void)startPrecursorPassFlowWithNavController:(id)a3 context:(id)a4 pass:(id)a5 precursorController:(id)a6 parentNavController:(id)a7 presentNavController:(id)a8 completion:(id)a9;
+ (void)startProductManualEntryFlowWithNavController:(id)a3 context:(id)a4 product:(id)a5 presentNavController:(id)a6 completion:(id)a7;
+ (void)startProvisionToPurchaseFlowWithNavController:(id)a3 context:(id)a4 onFirstViewControllerShown:(id)a5 completion:(id)a6;
+ (void)startSetupAssistantFlowWithContext:(id)a3 allowManualEntry:(BOOL)a4 onFirstViewControllerShown:(id)a5 completion:(id)a6;
+ (void)startSetupAssistantFlowWithContext:(id)a3 credentials:(id)a4 onFirstViewControllerShown:(id)a5 completion:(id)a6;
+ (void)startSetupAssistantFollowupFlowWithUnownedNavController:(id)a3 context:(id)a4 preflightCompletion:(id)a5 completion:(id)a6;
+ (void)startShareRedemptionFlowWithNavController:(id)a3 context:(id)a4 invitation:(id)a5 referralSource:(id)a6 completion:(id)a7;
+ (void)startShareableCredentialFlowWithNavController:(id)a3 context:(id)a4 credentials:(id)a5 completion:(id)a6;
+ (void)startVerificationFlowWithNavController:(id)a3 context:(id)a4 pass:(id)a5 verificationController:(id)a6 presentNavController:(id)a7 completion:(id)a8;
- (PKProvisioningFlowBridge)init;
@end

@implementation PKProvisioningFlowBridge

+ (void)startInAppFlowWithUnownedNavController:(id)a3 context:(id)a4 requestConfiguration:(id)a5 phoneWebService:(id)a6 watchWebService:(id)a7 generateRequest:(id)a8 onViewLoaded:(id)a9 completion:(id)a10
{
  v15 = _Block_copy(a8);
  v16 = _Block_copy(a9);
  v17 = _Block_copy(a10);
  v18 = swift_allocObject();
  *(v18 + 16) = v15;
  v19 = swift_allocObject();
  *(v19 + 16) = v16;
  v20 = swift_allocObject();
  *(v20 + 16) = v17;
  v21 = a3;
  v22 = a4;
  v23 = a5;
  v24 = a6;
  v25 = a7;
  sub_1BD34FCE0(v21, v22, v23, a6, a7, sub_1BD3594F0, v18, sub_1BD167418, v19, sub_1BD359504, v20);
}

+ (void)startInAppFlowWithNavController:(id)a3 context:(id)a4 requestConfiguration:(id)a5 phoneWebService:(id)a6 watchWebService:(id)a7 generateRequest:(id)a8 onViewLoaded:(id)a9 completion:(id)a10
{
  v15 = _Block_copy(a8);
  v16 = _Block_copy(a9);
  v17 = _Block_copy(a10);
  v18 = swift_allocObject();
  *(v18 + 16) = v15;
  v19 = swift_allocObject();
  *(v19 + 16) = v16;
  v20 = swift_allocObject();
  *(v20 + 16) = v17;
  v21 = a3;
  v22 = a4;
  v23 = a5;
  v24 = a6;
  v25 = a7;
  sub_1BD350B24(v21, v22, v23, a6, a7, sub_1BD3591F0, v18, sub_1BD167418, v19, sub_1BD359504, v20);
}

+ (void)startInAppFlowWithUnownedNavController:(id)a3 context:(id)a4 addPassConfiguration:(id)a5 completion:(id)a6
{
  v9 = _Block_copy(a6);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  v11 = a3;
  v12 = a4;
  swift_unknownObjectRetain();
  _s9PassKitUI22ProvisioningFlowBridgeC010startInAppE024withUnownedNavController7context03addA13Configuration10completionySo012UINavigationM0C_So21PKProvisioningContextCSo010PKPushableaP8Provider_pySaySo015PKSecureElementA0CGSg_So7NSErrorCSgtctFZ_0(v11, v12, a5, sub_1BD359504, v10);

  swift_unknownObjectRelease();
}

+ (void)startInAppFlowWithNavController:(id)a3 context:(id)a4 addPassConfiguration:(id)a5 completion:(id)a6
{
  v9 = _Block_copy(a6);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  v11 = a3;
  v12 = a4;
  swift_unknownObjectRetain();
  sub_1BD3519C0(v11, v12, a5, sub_1BD359504, v10, &off_1F3BAE178, &unk_1F3BA14F0, sub_1BD359438, &unk_1F3BA1518, sub_1BD359454);

  swift_unknownObjectRelease();
}

+ (void)startShareableCredentialFlowWithNavController:(id)a3 context:(id)a4 credentials:(id)a5 completion:(id)a6
{
  v8 = _Block_copy(a6);
  sub_1BD0E5E8C(0, &unk_1EBD56E00);
  v9 = sub_1BE052744();
  v10 = swift_allocObject();
  *(v10 + 16) = v8;
  v11 = a3;
  v12 = a4;
  _s9PassKitUI22ProvisioningFlowBridgeC024startShareableCredentialE017withNavController7context11credentials10completionySo035PKPaymentSetupDismissibleNavigationL0C_So21PKProvisioningContextCSaySo0phI0CGyyctFZ_0(v11, v12, v9, sub_1BD167418, v10);
}

+ (void)startShareRedemptionFlowWithNavController:(id)a3 context:(id)a4 invitation:(id)a5 referralSource:(id)a6 completion:(id)a7
{
  v11 = _Block_copy(a7);
  if (a6)
  {
    v12 = sub_1BE052434();
    a6 = v13;
  }

  else
  {
    v12 = 0;
  }

  v14 = swift_allocObject();
  *(v14 + 16) = v11;
  v15 = a3;
  v16 = a4;
  v17 = a5;
  _s9PassKitUI22ProvisioningFlowBridgeC020startShareRedemptionE017withNavController7context10invitation14referralSource10completionySo035PKPaymentSetupDismissibleNavigationL0C_So21PKProvisioningContextCSo013PKSharingPushD10InvitationCSSSgySaySo015PKSecureElementA0CGSg_So7NSErrorCSgtctFZ_0(v15, v16, v17, v12, a6, sub_1BD359504, v14);
}

+ (void)startCarKeyShareRedemptionFlowWithNavController:(id)a3 context:(id)a4 invitation:(id)a5 handle:(id)a6 originalShareURL:(id)a7 completion:(id)a8
{
  v12 = _Block_copy(a8);
  v13 = sub_1BE052434();
  v15 = v14;
  v16 = swift_allocObject();
  *(v16 + 16) = v12;
  v17 = a3;
  v18 = a4;
  v19 = a5;
  v20 = a6;
  _s9PassKitUI22ProvisioningFlowBridgeC026startCarKeyShareRedemptionE017withNavController7context10invitation6handle08originalJ3URL10completionySo035PKPaymentSetupDismissibleNavigationN0C_So21PKProvisioningContextCSo09PKSharinghI10InvitationCSo22PKSharingChannelHandleCSSySaySo015PKSecureElementA0CGSg_So7NSErrorCSgtctFZ_0(v17, v18, v19, v20, v13, v15, sub_1BD3591E8, v16);
}

+ (void)startProductManualEntryFlowWithNavController:(id)a3 context:(id)a4 product:(id)a5 presentNavController:(id)a6 completion:(id)a7
{
  v11 = _Block_copy(a6);
  v12 = _Block_copy(a7);
  v13 = swift_allocObject();
  *(v13 + 16) = v11;
  v14 = swift_allocObject();
  *(v14 + 16) = v12;
  v15 = a3;
  v16 = a4;
  v17 = a5;
  _s9PassKitUI22ProvisioningFlowBridgeC023startProductManualEntryE017withNavController7context7product07presentlM010completionySo035PKPaymentSetupDismissibleNavigationM0C_So21PKProvisioningContextCSo0rsH0CyycySo015PKSecureElementA0CSgctFZ_0(v15, v16, v17, sub_1BD167418, v13, sub_1BD139BD4, v14);
}

+ (void)startManualEntryFlowWithNavController:(id)a3 context:(id)a4 completion:(id)a5
{
  v7 = _Block_copy(a5);
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  v9 = a3;
  v10 = a4;
  _s9PassKitUI22ProvisioningFlowBridgeC016startManualEntryE017withNavController7context10completionySo035PKPaymentSetupDismissibleNavigationL0C_So21PKProvisioningContextCyyctFZ_0(v9, v10, sub_1BD167418, v8);
}

+ (void)startProvisionToPurchaseFlowWithNavController:(id)a3 context:(id)a4 onFirstViewControllerShown:(id)a5 completion:(id)a6
{
  v9 = _Block_copy(a5);
  v10 = _Block_copy(a6);
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
  v13 = a3;
  v14 = a4;
  _s9PassKitUI22ProvisioningFlowBridgeC024startProvisionToPurchaseE017withNavController7context011onFirstViewM5Shown10completionySo035PKPaymentSetupDismissibleNavigationM0C_So21PKProvisioningContextCyycSgyyctFZ_0(v13, v14, v9, v11, sub_1BD167418, v12);

  sub_1BD0D4744(v9);
}

+ (void)startIngestionFlowWithUnownedNavController:(id)a3 context:(id)a4 credential:(id)a5 onFirstViewControllerShown:(id)a6 completion:(id)a7
{
  v11 = _Block_copy(a6);
  v12 = _Block_copy(a7);
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
  v14 = a3;
  v15 = a4;
  v16 = a5;
  sub_1BD354E28(v14, v15, v16, v11, v13, v12);
  _Block_release(v12);
  _Block_release(v12);
  sub_1BD0D4744(v11);
}

+ (void)startVerificationFlowWithNavController:(id)a3 context:(id)a4 pass:(id)a5 verificationController:(id)a6 presentNavController:(id)a7 completion:(id)a8
{
  v13 = _Block_copy(a7);
  v14 = _Block_copy(a8);
  v15 = swift_allocObject();
  *(v15 + 16) = v13;
  v16 = swift_allocObject();
  *(v16 + 16) = v14;
  v17 = a3;
  v18 = a4;
  v19 = a5;
  v20 = a6;
  _s9PassKitUI22ProvisioningFlowBridgeC017startVerificationE017withNavController7context4pass012verificationK007presentjK010completionySo035PKPaymentSetupDismissibleNavigationK0C_So21PKProvisioningContextCSo015PKSecureElementA0CSo0qhK0CyycyyctFZ_0(v17, v18, v19, v20, sub_1BD167418, v15, sub_1BD167418, v16);
}

+ (void)startPrecursorPassFlowWithNavController:(id)a3 context:(id)a4 pass:(id)a5 precursorController:(id)a6 parentNavController:(id)a7 presentNavController:(id)a8 completion:(id)a9
{
  v14 = _Block_copy(a8);
  v15 = _Block_copy(a9);
  v16 = swift_allocObject();
  *(v16 + 16) = v14;
  v17 = swift_allocObject();
  *(v17 + 16) = v15;
  v18 = a3;
  v19 = a4;
  v20 = a5;
  v21 = a6;
  v22 = a7;
  sub_1BD35569C(v18, v19, v20, v21, v22, sub_1BD167418, v16, sub_1BD167418, v17);
}

+ (void)startCredentialsProvisioningFlowWithNavController:(id)a3 context:(id)a4 credentials:(id)a5 parentNavController:(id)a6 presentNavController:(id)a7 completion:(id)a8
{
  v12 = _Block_copy(a7);
  v13 = _Block_copy(a8);
  sub_1BD0E5E8C(0, &qword_1EBD444C0);
  v14 = sub_1BE052744();
  v15 = swift_allocObject();
  *(v15 + 16) = v12;
  v16 = swift_allocObject();
  *(v16 + 16) = v13;
  v17 = a3;
  v18 = a4;
  v19 = a6;
  _s9PassKitUI22ProvisioningFlowBridgeC016startCredentialsdE017withNavController7context11credentials06parentjK007presentjK010completionySo035PKPaymentSetupDismissibleNavigationK0C_So21PKProvisioningContextCSaySo0Q10CredentialCGSo012UINavigationK0CyycyyctFZ_0(v17, v18, v14, v19, sub_1BD167418, v15, sub_1BD167418, v16);
}

+ (void)startSetupAssistantFlowWithContext:(id)a3 credentials:(id)a4 onFirstViewControllerShown:(id)a5 completion:(id)a6
{
  v8 = _Block_copy(a5);
  v9 = _Block_copy(a6);
  sub_1BD0E5E8C(0, &qword_1EBD444C0);
  v10 = sub_1BE052744();
  v11 = swift_allocObject();
  *(v11 + 16) = v8;
  v12 = swift_allocObject();
  *(v12 + 16) = v9;
  v13 = a3;
  _s9PassKitUI22ProvisioningFlowBridgeC019startSetupAssistantE07context11credentials26onFirstViewControllerShown10completionySo21PKProvisioningContextC_SaySo19PKPaymentCredentialCGySo06UIViewO0CcyyctFZ_0(v13, v10, sub_1BD359508, v11, sub_1BD167418, v12);
}

+ (void)startSetupAssistantFlowWithContext:(id)a3 allowManualEntry:(BOOL)a4 onFirstViewControllerShown:(id)a5 completion:(id)a6
{
  v9 = _Block_copy(a5);
  v10 = _Block_copy(a6);
  v11 = swift_allocObject();
  *(v11 + 16) = v9;
  v12 = swift_allocObject();
  *(v12 + 16) = v10;
  v13 = a3;
  _s9PassKitUI22ProvisioningFlowBridgeC019startSetupAssistantE07context16allowManualEntry26onFirstViewControllerShown10completionySo21PKProvisioningContextC_SbySo06UIViewQ0CcyyctFZ_0(v13, a4, sub_1BD139BD4, v11, sub_1BD167418, v12);
}

+ (void)startSetupAssistantFollowupFlowWithUnownedNavController:(id)a3 context:(id)a4 preflightCompletion:(id)a5 completion:(id)a6
{
  v9 = _Block_copy(a5);
  v10 = _Block_copy(a6);
  v11 = swift_allocObject();
  *(v11 + 16) = v9;
  v12 = swift_allocObject();
  *(v12 + 16) = v10;
  v13 = a3;
  v14 = a4;
  _s9PassKitUI22ProvisioningFlowBridgeC027startSetupAssistantFollowupE024withUnownedNavController7context19preflightCompletion10completionySo012UINavigationN0C_So21PKProvisioningContextCyycyyctFZ_0(v13, v14, sub_1BD167418, v11, sub_1BD167418, v12);
}

+ (void)startPaymentSetupFlowWithNavController:(id)a3 parentNavController:(id)a4 context:(id)a5 mode:(int64_t)a6 preflightCompletion:(id)a7 completion:(id)a8
{
  v13 = _Block_copy(a7);
  v14 = _Block_copy(a8);
  v15 = swift_allocObject();
  *(v15 + 16) = v13;
  v16 = swift_allocObject();
  *(v16 + 16) = v14;
  v17 = a3;
  v18 = a4;
  v19 = a5;
  _s9PassKitUI22ProvisioningFlowBridgeC017startPaymentSetupE017withNavController06parentkL07context4mode19preflightCompletion10completionySo09PKPaymenti21DismissibleNavigationL0C_So012UINavigationL0CSgSo21PKProvisioningContextCSo0sI4ModeVyycyyctFZ_0(v17, a4, v19, a6, sub_1BD167418, v15, sub_1BD167418, v16);
}

+ (void)startAutoFillCredentialProvisioningFlowWithNavController:(id)a3 eligibleCredentials:(id)a4 ineligibleCredentials:(id)a5 context:(id)a6 referralSource:(unint64_t)a7 showProvisioningSection:(BOOL)a8 selectedCredentials:(id)a9 presentNavController:(id)a10 completion:(id)a11
{
  v17 = a9;
  v18 = _Block_copy(a10);
  v19 = _Block_copy(a11);
  if (a4)
  {
    sub_1BD0E5E8C(0, &qword_1EBD41880);
    a4 = sub_1BE052744();
  }

  if (a5)
  {
    sub_1BD0E5E8C(0, &qword_1EBD41880);
    a5 = sub_1BE052744();
  }

  if (a9)
  {
    sub_1BD0E5E8C(0, &qword_1EBD41880);
    v17 = sub_1BE052744();
  }

  v20 = a3;
  v21 = a6;
  v22 = swift_allocObject();
  *(v22 + 16) = v18;
  v23 = swift_allocObject();
  *(v23 + 16) = v19;
  sub_1BD358604(v20, a4, a5, v21, a7, a8, v17, sub_1BD167418, v22, sub_1BD1B6FEC, v23);
}

+ (void)presentAutoFillCardsWithNavController:(id)a3 groupsViewController:(id)a4 context:(id)a5 presentNavController:(id)a6 completion:(id)a7
{
  v11 = _Block_copy(a6);
  v12 = _Block_copy(a7);
  v13 = swift_allocObject();
  *(v13 + 16) = v11;
  v14 = swift_allocObject();
  *(v14 + 16) = v12;
  v15 = a3;
  v16 = a4;
  v17 = a5;
  sub_1BD358D68(v15, v16, v17, sub_1BD166E88, v13, sub_1BD1B6B00, v14);
}

- (PKProvisioningFlowBridge)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for ProvisioningFlowBridge();
  return [(PKProvisioningFlowBridge *)&v3 init];
}

@end