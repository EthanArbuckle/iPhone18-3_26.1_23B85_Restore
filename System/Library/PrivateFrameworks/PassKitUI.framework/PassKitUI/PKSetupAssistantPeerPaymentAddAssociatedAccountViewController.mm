@interface PKSetupAssistantPeerPaymentAddAssociatedAccountViewController
+ (BOOL)bridgeSetupAssistantNeedsToRunReturningRequirements:(unint64_t *)requirements;
+ (BOOL)bridgeSetupAssistantNeedsToRunWithContext:(id)context returningRequirements:(unint64_t *)requirements;
+ (id)defaultWebServiceForContext:(int64_t)context;
- (PKSetupAssistantPeerPaymentAddAssociatedAccountViewController)initWithPairingFamilyMember:(id)member parentFamilyMember:(id)familyMember webService:(id)service passLibraryDataProvider:(id)provider delegate:(id)delegate context:(int64_t)context;
- (void)addPeerPaymentAssociatedAccountDidSkipSetupForFamilyMember:(id)member;
- (void)addPeerPaymentAssociatedAccountSetupCompletedWithSucess:(BOOL)sucess updatedAccount:(id)account forFamilyMember:(id)member;
- (void)preflightWithCompletion:(id)completion;
@end

@implementation PKSetupAssistantPeerPaymentAddAssociatedAccountViewController

+ (BOOL)bridgeSetupAssistantNeedsToRunReturningRequirements:(unint64_t *)requirements
{
  v4 = [(PKSetupAssistantContext *)[PKBridgeSetupAssistantContext alloc] initWithSetupAssistant:2];
  v5 = [objc_alloc(MEMORY[0x1E69B8DC8]) initWithSetupAssistantContext:v4];
  LOBYTE(requirements) = [v5 _setupAssistantNeedsToRunReturningRequirements:requirements];

  return requirements;
}

+ (BOOL)bridgeSetupAssistantNeedsToRunWithContext:(id)context returningRequirements:(unint64_t *)requirements
{
  v5 = MEMORY[0x1E69B8DC8];
  contextCopy = context;
  v7 = [[v5 alloc] initWithSetupAssistantContext:contextCopy];

  LOBYTE(requirements) = [v7 _setupAssistantNeedsToRunReturningRequirements:requirements];
  return requirements;
}

+ (id)defaultWebServiceForContext:(int64_t)context
{
  if (PKPaymentSetupContextIsBridge())
  {
    [(objc_class *)getNPKCompanionAgentConnectionClass_5() watchPeerPaymentWebService];
  }

  else
  {
    [MEMORY[0x1E69B9020] sharedService];
  }
  v3 = ;

  return v3;
}

- (PKSetupAssistantPeerPaymentAddAssociatedAccountViewController)initWithPairingFamilyMember:(id)member parentFamilyMember:(id)familyMember webService:(id)service passLibraryDataProvider:(id)provider delegate:(id)delegate context:(int64_t)context
{
  v28[2] = *MEMORY[0x1E69E9840];
  delegateCopy = delegate;
  v14 = MEMORY[0x1E69B8898];
  providerCopy = provider;
  serviceCopy = service;
  familyMemberCopy = familyMember;
  memberCopy = member;
  v19 = [[v14 alloc] initWithFAFamilyMember:memberCopy];

  v20 = [objc_alloc(MEMORY[0x1E69B8898]) initWithFAFamilyMember:familyMemberCopy];
  v21 = objc_alloc(MEMORY[0x1E69B88A0]);
  v28[0] = v19;
  v28[1] = v20;
  v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:v28 count:2];
  v23 = [v21 initWithFamilyMembers:v22];

  v27.receiver = self;
  v27.super_class = PKSetupAssistantPeerPaymentAddAssociatedAccountViewController;
  v24 = [(PKPeerPaymentAddAssociatedAccountViewController *)&v27 initWithFamilyMember:v19 familyCollection:v23 webService:serviceCopy passLibraryDataProvider:providerCopy delegate:self context:context setupType:0];

  if (v24)
  {
    objc_storeWeak(&v24->_setupAssistantDelegate, delegateCopy);
  }

  return v24;
}

- (void)preflightWithCompletion:(id)completion
{
  if (completion)
  {
    (*(completion + 2))(completion, 1);
  }
}

- (void)addPeerPaymentAssociatedAccountSetupCompletedWithSucess:(BOOL)sucess updatedAccount:(id)account forFamilyMember:(id)member
{
  sucessCopy = sucess;
  v14 = *MEMORY[0x1E69E9840];
  accountCopy = account;
  if (sucessCopy)
  {
    watchPeerPaymentWebService = [(objc_class *)getNPKCompanionAgentConnectionClass_5() watchPeerPaymentWebService];
    targetDevice = [watchPeerPaymentWebService targetDevice];
    v10 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 138412290;
      v13 = targetDevice;
      _os_log_impl(&dword_1BD026000, v10, OS_LOG_TYPE_DEFAULT, "Request register peer payment service targetDevice:%@", &v12, 0xCu);
    }

    [targetDevice peerPaymentReRegisterWithURL:0 pushToken:0 peerPaymentWebService:watchPeerPaymentWebService completion:&__block_literal_global_231];
  }

  WeakRetained = objc_loadWeakRetained(&self->_setupAssistantDelegate);
  [WeakRetained peerPaymentAddAssociatedAccountViewController:self didFinishWithSuccess:sucessCopy updatedPeerPaymentAccount:accountCopy];
}

void __152__PKSetupAssistantPeerPaymentAddAssociatedAccountViewController_addPeerPaymentAssociatedAccountSetupCompletedWithSucess_updatedAccount_forFamilyMember___block_invoke(uint64_t a1, int a2, uint64_t a3)
{
  v11 = *MEMORY[0x1E69E9840];
  v5 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = @"NO";
    if (a2)
    {
      v6 = @"YES";
    }

    v7 = 138412546;
    v8 = v6;
    v9 = 2112;
    v10 = a3;
    _os_log_impl(&dword_1BD026000, v5, OS_LOG_TYPE_DEFAULT, "Finish request register peer payment service success:%@ error:%@", &v7, 0x16u);
  }
}

- (void)addPeerPaymentAssociatedAccountDidSkipSetupForFamilyMember:(id)member
{
  WeakRetained = objc_loadWeakRetained(&self->_setupAssistantDelegate);
  [WeakRetained peerPaymentAddAssociatedAccountViewControllerDidSkipSetup:self];
}

@end