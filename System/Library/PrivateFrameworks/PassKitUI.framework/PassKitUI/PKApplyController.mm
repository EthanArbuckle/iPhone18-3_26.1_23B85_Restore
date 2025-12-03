@interface PKApplyController
+ (id)localizationBundleForFeatureIdentifier:(unint64_t)identifier account:(id)account;
+ (id)localizationBundleForFeatureIdentifier:(unint64_t)identifier account:(id)account mainBundle:(id)bundle;
+ (id)preferredLanguageForFeatureIdentifier:(unint64_t)identifier account:(id)account;
+ (id)preferredLanguageForFeatureIdentifier:(unint64_t)identifier account:(id)account mainBundle:(id)bundle;
- (PKApplyController)initWithApplyConfiguration:(id)configuration;
- (PKSetupFlowControllerProtocol)parentFlowController;
- (id)_applyExperiment;
- (id)_applyExperimentDetails;
- (id)_displayableErrorForError:(id)error showDetailedErrorFlow:(BOOL)flow;
- (id)_fieldsViewControllerForPage:(id)page;
- (id)_formatStringSuffixForItemType:(int64_t)type;
- (id)_nextQueuedViewController;
- (id)applicationUpdatedAlertControllerWithHandler:(id)handler;
- (id)cancelAlertWithContinueAction:(id)action;
- (id)loadHeroImageFromApplyExperiment;
- (id)localizationBundle;
- (id)preferredLanguage;
- (void)_acquireAssertion;
- (void)_deviceMetadataFields:(unint64_t)fields completion:(id)completion;
- (void)_getODIAssessmentForSession:(id)session completion:(id)completion;
- (void)_handleApplyResponse:(id)response originalFeatureApplication:(id)application error:(id)error completion:(id)completion;
- (void)_handleCoreIDVPage:(id)page totalPageCount:(int64_t)count error:(id)error completion:(id)completion;
- (void)_handleResponseError:(id)error completion:(id)completion;
- (void)_invalidateAssertion;
- (void)_performApplyWithRequest:(id)request completion:(id)completion;
- (void)_performAuthenticationLocationBased:(BOOL)based withCompletion:(id)completion;
- (void)_performCoreIDVNextStepWithPage:(id)page completion:(id)completion;
- (void)_performCoreIDVShareWithCompletion:(id)completion;
- (void)_performCreateWithCompletion:(id)completion;
- (void)_performWithdrawWithCompletion:(id)completion;
- (void)_prewarmODIAssessmentIfNecessary;
- (void)_queueAcceptedFlowWithPage:(id)page;
- (void)_queueActionFlowWithPage:(id)page;
- (void)_queueApplicationTermsFlow;
- (void)_queueApplicationVerificationWithNextStepInfo:(id)info;
- (void)_queueCannotResumeIDVFlow;
- (void)_queueCompleteFlowWithNextPage:(id)page;
- (void)_queueConfirmInfoFlowWithPage:(id)page;
- (void)_queueDeclinedFlowWithPage:(id)page;
- (void)_queueDocumentSubmissionWithNextStepInfo:(id)info;
- (void)_queueEmailRequiredErrorViewController;
- (void)_queueExpiredFlowWithPage:(id)page;
- (void)_queueFieldsFlowWithNextStepInfo:(id)info;
- (void)_queueGenericErrorViewController;
- (void)_queueGenericErrorViewControllerWithPage:(id)page;
- (void)_queueInfoFlowWithNextWithPage:(id)page;
- (void)_queueOfferFlowWithPage:(id)page;
- (void)_queuePassActivationFlowWithCompletion:(id)completion;
- (void)_queueProgramConsentFlowWithPage:(id)page;
- (void)_queueStateReasonExplanationFlowWithPage:(id)page;
- (void)_queueTerminalStateFlowWithPage:(id)page;
- (void)_reset;
- (void)_sendODISessionFeedbackforInflightSessionIfNecessary;
- (void)_startCoreIDVSessionWithStepInfo:(id)info completion:(id)completion;
- (void)_startPaymentServiceListener;
- (void)_stopPaymentServiceListener;
- (void)_submitAllFieldPages:(id)pages completion:(id)completion;
- (void)_submitCoreIDVDocumentsPage:(id)page selectedDocument:(id)document frontImageData:(id)data backImageData:(id)imageData completion:(id)completion;
- (void)_submitCoreIDVFieldsPage:(id)page completion:(id)completion;
- (void)_submitDocumentPageWithCoreIDVImageUpload:(id)upload selectedDocument:(id)document frontImageData:(id)data backImageData:(id)imageData completion:(id)completion;
- (void)_submitDocumentsPage:(id)page selectedDocument:(id)document frontImageData:(id)data backImageData:(id)imageData completion:(id)completion;
- (void)accountUserInvitationsWithCompletion:(id)completion;
- (void)dealloc;
- (void)endApplyFlow;
- (void)featureApplicationChanged:(id)changed;
- (void)featureApplicationsWithCompletion:(id)completion;
- (void)nextViewControllerWithCompletion:(id)completion;
- (void)reportAnalyticsDictionaryForPage:(id)page pageTag:(id)tag additionalValues:(id)values;
- (void)reportAnalyticsDictionaryForPage:(id)page subject:(id)subject pageTag:(id)tag error:(id)error additionalValues:(id)values;
- (void)reportAnalyticsError:(id)error page:(id)page pageTag:(id)tag additionalValues:(id)values;
- (void)resendVerificationForPage:(id)page completion:(id)completion;
- (void)submitActionIdentifier:(id)identifier termsIdentifiers:(id)identifiers odiAttributesDictionary:(id)dictionary completion:(id)completion;
- (void)submitDocumentPage:(id)page selectedDocument:(id)document frontImage:(id)image backImage:(id)backImage completion:(id)completion;
- (void)submitFieldsPage:(id)page completion:(id)completion;
- (void)submitVerificationPage:(id)page verificationInfo:(id)info completion:(id)completion;
- (void)termsAccepted:(BOOL)accepted termsIdentifier:(id)identifier secondaryIdentifier:(id)secondaryIdentifier actionIdentifier:(id)actionIdentifier completion:(id)completion;
- (void)termsDataForFeatureWithIdentifier:(id)identifier format:(id)format completion:(id)completion;
- (void)termsDataForIdentifier:(id)identifier format:(id)format completion:(id)completion;
- (void)termsShownWithIdentifier:(id)identifier;
- (void)withdrawApplicationWithCompletion:(id)completion;
@end

@implementation PKApplyController

- (PKApplyController)initWithApplyConfiguration:(id)configuration
{
  configurationCopy = configuration;
  featureApplication = [configurationCopy featureApplication];
  if (featureApplication)
  {

LABEL_4:
    v30.receiver = self;
    v30.super_class = PKApplyController;
    v6 = [(PKApplyController *)&v30 init];
    if (v6)
    {
      v6->_featureIdentifier = [configurationCopy feature];
      v6->_applicationType = [configurationCopy applicationType];
      featureApplication2 = [configurationCopy featureApplication];
      featureApplication = v6->_featureApplication;
      v6->_featureApplication = featureApplication2;

      referenceIdentifier = [configurationCopy referenceIdentifier];
      referenceIdentifier = v6->_referenceIdentifier;
      v6->_referenceIdentifier = referenceIdentifier;

      v6->_updateUserInfoSubType = [configurationCopy updateUserInfoSubType];
      v6->_verificationType = [configurationCopy verificationType];
      v6->_context = [configurationCopy context];
      setupDelegate = [configurationCopy setupDelegate];
      objc_storeWeak(&v6->_setupDelegate, setupDelegate);

      provisioningController = [configurationCopy provisioningController];
      provisioningController = v6->_provisioningController;
      v6->_provisioningController = provisioningController;

      account = [configurationCopy account];
      account = v6->_account;
      v6->_account = account;

      fundingSource = [configurationCopy fundingSource];
      fundingSource = v6->_fundingSource;
      v6->_fundingSource = fundingSource;

      webService = [(PKPaymentProvisioningController *)v6->_provisioningController webService];
      webService = v6->_webService;
      v6->_webService = webService;

      v20 = dispatch_queue_create("com.apple.applyManager.queue", 0);
      workQueue = v6->_workQueue;
      v6->_workQueue = v20;

      v22 = objc_alloc_init(MEMORY[0x1E695DF70]);
      viewControllers = v6->_viewControllers;
      v6->_viewControllers = v22;

      v24 = objc_alloc_init(MEMORY[0x1E695DF70]);
      pagesToSubmit = v6->_pagesToSubmit;
      v6->_pagesToSubmit = v24;

      context = [configurationCopy context];
      if (context <= 0xA)
      {
        v6->_channel = qword_1BE115938[context];
      }

      [(PKApplyController *)v6 _prewarmODIAssessmentIfNecessary];
    }

    self = v6;
    selfCopy = self;
    goto LABEL_9;
  }

  if ([configurationCopy feature])
  {
    goto LABEL_4;
  }

  v29 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1BD026000, v29, OS_LOG_TYPE_DEFAULT, "Error: Cannot create controller with unknown feature or nil featureApplication", buf, 2u);
  }

  selfCopy = 0;
LABEL_9:

  return selfCopy;
}

- (void)dealloc
{
  [(PKApplyController *)self _reset];
  [(PKPaymentService *)self->_paymentService unregisterObserver:self];
  v3.receiver = self;
  v3.super_class = PKApplyController;
  [(PKApplyController *)&v3 dealloc];
}

- (void)nextViewControllerWithCompletion:(id)completion
{
  completionCopy = completion;
  if (completionCopy)
  {
    _nextQueuedViewController = [(PKApplyController *)self _nextQueuedViewController];
    if (_nextQueuedViewController)
    {
      [(PKApplyController *)self _startPaymentServiceListener];
      completionCopy[2](completionCopy, _nextQueuedViewController, 0);
    }

    else if (self->_endedApplyFlow)
    {
      [(PKApplyController *)self _stopPaymentServiceListener];
      WeakRetained = objc_loadWeakRetained(&self->_parentFlowController);

      if (WeakRetained)
      {
        v7 = objc_loadWeakRetained(&self->_parentFlowController);
        v13[0] = MEMORY[0x1E69E9820];
        v13[1] = 3221225472;
        v13[2] = __54__PKApplyController_nextViewControllerWithCompletion___block_invoke;
        v13[3] = &unk_1E8010CC0;
        v13[4] = self;
        v14 = completionCopy;
        [v7 nextViewControllerWithCompletion:v13];
      }

      else
      {
        [(PKApplyController *)self _reset];
        completionCopy[2](completionCopy, 0, 0);
      }
    }

    else
    {
      [(PKApplyController *)self _startPaymentServiceListener];
      applicationIdentifier = [(PKFeatureApplication *)self->_featureApplication applicationIdentifier];
      v9 = [applicationIdentifier length];

      if (v9)
      {
        v10 = objc_alloc_init(MEMORY[0x1E69B8600]);
        [(PKApplyController *)self _performApplyWithRequest:v10 completion:completionCopy];
      }

      else
      {
        v11 = PKLogFacilityTypeGetObject();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          v12[0] = 0;
          _os_log_impl(&dword_1BD026000, v11, OS_LOG_TYPE_DEFAULT, "No application present - creating one", v12, 2u);
        }

        [(PKApplyController *)self _performCreateWithCompletion:completionCopy];
      }
    }
  }
}

id __54__PKApplyController_nextViewControllerWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = a2;
  [v5 _reset];
  (*(*(a1 + 40) + 16))();

  v8 = (*(a1 + 32) + 280);

  return objc_storeWeak(v8, 0);
}

- (void)submitFieldsPage:(id)page completion:(id)completion
{
  pageCopy = page;
  completionCopy = completion;
  applicationState = [(PKFeatureApplication *)self->_featureApplication applicationState];
  if ((applicationState - 5) >= 0xB && (applicationState - 2) > 1)
  {
    if (self->_idVerificationSession)
    {
      [(PKApplyController *)self _submitCoreIDVFieldsPage:pageCopy completion:completionCopy];
      goto LABEL_5;
    }

    [(NSMutableArray *)self->_pagesToSubmit addObject:pageCopy];
    v10 = objc_alloc_init(MEMORY[0x1E69B8600]);
    fieldModel = [pageCopy fieldModel];
    v12 = *MEMORY[0x1E69BB760];
    v13 = [fieldModel submissionValuesForDestination:*MEMORY[0x1E69BB760]];
    [v10 setOverlayParameters:v13];

    v14 = [fieldModel secureSubmissionValuesForDestination:v12];
    [v10 setSecureOverlayParameters:v14];

    applicationTermsIdentifier = [(PKFeatureApplication *)self->_featureApplication applicationTermsIdentifier];
    footerContent = [pageCopy footerContent];
    links = [footerContent links];
    if ([links count])
    {
      v18 = [applicationTermsIdentifier length];

      if (!v18)
      {
LABEL_14:
        submitApplicationODISession = self->_submitApplicationODISession;
        odiAttributes = [fieldModel odiAttributes];
        [(PKODIServiceProviderAssessment *)submitApplicationODISession updateAssessment:odiAttributes];

        [(PKApplyController *)self _performApplyWithRequest:v10 completion:completionCopy];
        goto LABEL_5;
      }

      footerContent = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{applicationTermsIdentifier, 0}];
      [v10 setTermsIdentifiers:footerContent];
    }

    else
    {
    }

    goto LABEL_14;
  }

  v9 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1BD026000, v9, OS_LOG_TYPE_DEFAULT, "Cannot submit fields from this state - returning next view controller instead", buf, 2u);
  }

  [(PKApplyController *)self nextViewControllerWithCompletion:completionCopy];
LABEL_5:
}

- (void)_submitAllFieldPages:(id)pages completion:(id)completion
{
  v26 = *MEMORY[0x1E69E9840];
  pagesCopy = pages;
  completionCopy = completion;
  v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v9 = pagesCopy;
  v10 = [v9 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v22;
    do
    {
      v13 = 0;
      do
      {
        if (*v22 != v12)
        {
          objc_enumerationMutation(v9);
        }

        fieldModel = [*(*(&v21 + 1) + 8 * v13) fieldModel];
        paymentSetupFields = [fieldModel paymentSetupFields];
        [v8 addObjectsFromArray:paymentSetupFields];

        ++v13;
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v11);
  }

  v16 = [objc_alloc(MEMORY[0x1E69B8E38]) initWithPaymentSetupFields:v8];
  v17 = objc_alloc_init(MEMORY[0x1E69B8600]);
  v18 = *MEMORY[0x1E69BB760];
  v19 = [v16 submissionValuesForDestination:*MEMORY[0x1E69BB760]];
  [v17 setOverlayParameters:v19];

  v20 = [v16 secureSubmissionValuesForDestination:v18];
  [v17 setSecureOverlayParameters:v20];

  [(PKApplyController *)self _performApplyWithRequest:v17 completion:completionCopy];
}

- (void)submitDocumentPage:(id)page selectedDocument:(id)document frontImage:(id)image backImage:(id)backImage completion:(id)completion
{
  pageCopy = page;
  documentCopy = document;
  imageCopy = image;
  backImageCopy = backImage;
  completionCopy = completion;
  applicationState = [(PKFeatureApplication *)self->_featureApplication applicationState];
  if ((applicationState - 5) < 0xB || (applicationState - 2) <= 1)
  {
    v18 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1BD026000, v18, OS_LOG_TYPE_DEFAULT, "Cannot submit documents from this state - returning next view controller instead", buf, 2u);
    }

    [(PKApplyController *)self nextViewControllerWithCompletion:completionCopy];
  }

  else
  {
    documentUploadType = self->_documentUploadType;
    if (documentUploadType > 1)
    {
      if (documentUploadType == 2)
      {
        workQueue = self->_workQueue;
        v25[0] = MEMORY[0x1E69E9820];
        v25[1] = 3221225472;
        v25[2] = __89__PKApplyController_submitDocumentPage_selectedDocument_frontImage_backImage_completion___block_invoke_5;
        v25[3] = &unk_1E80173A8;
        v26 = imageCopy;
        v27 = backImageCopy;
        selfCopy = self;
        v29 = pageCopy;
        v30 = documentCopy;
        v31 = completionCopy;
        dispatch_async(workQueue, v25);

        v21 = v26;
        goto LABEL_18;
      }

      if (documentUploadType == 3)
      {
        v22 = self->_workQueue;
        v32[0] = MEMORY[0x1E69E9820];
        v32[1] = 3221225472;
        v32[2] = __89__PKApplyController_submitDocumentPage_selectedDocument_frontImage_backImage_completion___block_invoke_3;
        v32[3] = &unk_1E80173A8;
        v33 = imageCopy;
        v34 = backImageCopy;
        selfCopy2 = self;
        v36 = pageCopy;
        v37 = documentCopy;
        v38 = completionCopy;
        dispatch_async(v22, v32);

        v21 = v33;
        goto LABEL_18;
      }
    }

    else if (documentUploadType)
    {
      if (documentUploadType == 1)
      {
        v20 = self->_workQueue;
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __89__PKApplyController_submitDocumentPage_selectedDocument_frontImage_backImage_completion___block_invoke;
        block[3] = &unk_1E80173A8;
        v40 = imageCopy;
        v41 = backImageCopy;
        selfCopy3 = self;
        v43 = pageCopy;
        v44 = documentCopy;
        v45 = completionCopy;
        dispatch_async(v20, block);

        v21 = v40;
LABEL_18:
      }
    }

    else
    {
      v23 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1BD026000, v23, OS_LOG_TYPE_DEFAULT, "Error: Document upload type cannot be none", buf, 2u);
      }

      [(PKApplyController *)self _handleResponseError:0 completion:completionCopy];
    }
  }
}

void __89__PKApplyController_submitDocumentPage_selectedDocument_frontImage_backImage_completion___block_invoke(uint64_t a1)
{
  v2 = UIImageJPEGRepresentation(*(a1 + 32), 1.0);
  v3 = UIImageJPEGRepresentation(*(a1 + 40), 1.0);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __89__PKApplyController_submitDocumentPage_selectedDocument_frontImage_backImage_completion___block_invoke_2;
  v7[3] = &unk_1E80173A8;
  v4 = *(a1 + 56);
  v7[4] = *(a1 + 48);
  v8 = v4;
  v9 = *(a1 + 64);
  v10 = v2;
  v11 = v3;
  v12 = *(a1 + 72);
  v5 = v3;
  v6 = v2;
  dispatch_async(MEMORY[0x1E69E96A0], v7);
}

void __89__PKApplyController_submitDocumentPage_selectedDocument_frontImage_backImage_completion___block_invoke_3(uint64_t a1)
{
  v2 = UIImageJPEGRepresentation(*(a1 + 32), 1.0);
  v3 = UIImageJPEGRepresentation(*(a1 + 40), 1.0);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __89__PKApplyController_submitDocumentPage_selectedDocument_frontImage_backImage_completion___block_invoke_4;
  v7[3] = &unk_1E80173A8;
  v4 = *(a1 + 56);
  v7[4] = *(a1 + 48);
  v8 = v4;
  v9 = *(a1 + 64);
  v10 = v2;
  v11 = v3;
  v12 = *(a1 + 72);
  v5 = v3;
  v6 = v2;
  dispatch_async(MEMORY[0x1E69E96A0], v7);
}

void __89__PKApplyController_submitDocumentPage_selectedDocument_frontImage_backImage_completion___block_invoke_5(uint64_t a1)
{
  v2 = UIImageJPEGRepresentation(*(a1 + 32), 1.0);
  v3 = UIImageJPEGRepresentation(*(a1 + 40), 1.0);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __89__PKApplyController_submitDocumentPage_selectedDocument_frontImage_backImage_completion___block_invoke_6;
  v7[3] = &unk_1E80173A8;
  v4 = *(a1 + 56);
  v7[4] = *(a1 + 48);
  v8 = v4;
  v9 = *(a1 + 64);
  v10 = v2;
  v11 = v3;
  v12 = *(a1 + 72);
  v5 = v3;
  v6 = v2;
  dispatch_async(MEMORY[0x1E69E96A0], v7);
}

- (void)submitVerificationPage:(id)page verificationInfo:(id)info completion:(id)completion
{
  pageCopy = page;
  infoCopy = info;
  completionCopy = completion;
  applicationState = [(PKFeatureApplication *)self->_featureApplication applicationState];
  if ((applicationState - 5) < 0xB || (applicationState - 2) <= 1)
  {
    v12 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1BD026000, v12, OS_LOG_TYPE_DEFAULT, "Cannot submit verification from this state - returning next view controller instead", buf, 2u);
    }

    [(PKApplyController *)self nextViewControllerWithCompletion:completionCopy];
  }

  else
  {
    v13 = objc_alloc_init(MEMORY[0x1E69B8658]);
    *buf = 0;
    v33 = buf;
    v34 = 0x3032000000;
    v35 = __Block_byref_object_copy__31;
    v36 = __Block_byref_object_dispose__31;
    v37 = 0;
    v30[0] = 0;
    v30[1] = v30;
    v30[2] = 0x3032000000;
    v30[3] = __Block_byref_object_copy__31;
    v30[4] = __Block_byref_object_dispose__31;
    v31 = 0;
    v28[0] = 0;
    v28[1] = v28;
    v28[2] = 0x3032000000;
    v28[3] = __Block_byref_object_copy__31;
    v28[4] = __Block_byref_object_dispose__31;
    v29 = objc_alloc_init(MEMORY[0x1E69B8648]);
    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = __72__PKApplyController_submitVerificationPage_verificationInfo_completion___block_invoke;
    v27[3] = &unk_1E8016750;
    v27[4] = self;
    v27[5] = v28;
    [v13 addOperation:v27];
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __72__PKApplyController_submitVerificationPage_verificationInfo_completion___block_invoke_3;
    v20[3] = &unk_1E801AD38;
    v24 = v28;
    v21 = infoCopy;
    v22 = pageCopy;
    selfCopy = self;
    v25 = buf;
    v26 = v30;
    [v13 addOperation:v20];
    null = [MEMORY[0x1E695DFB0] null];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __72__PKApplyController_submitVerificationPage_verificationInfo_completion___block_invoke_7;
    v16[3] = &unk_1E801AD60;
    v17 = completionCopy;
    v18 = buf;
    v19 = v30;
    v15 = [v13 evaluateWithInput:null completion:v16];

    _Block_object_dispose(v28, 8);
    _Block_object_dispose(v30, 8);

    _Block_object_dispose(buf, 8);
  }
}

void __72__PKApplyController_submitVerificationPage_verificationInfo_completion___block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  v9 = *(a1 + 32);
  if (*(v9 + 208))
  {
    v10 = *(v9 + 176);
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __72__PKApplyController_submitVerificationPage_verificationInfo_completion___block_invoke_2;
    v11[3] = &unk_1E801AC98;
    v14 = *(a1 + 40);
    v13 = v7;
    v12 = v6;
    [v9 _getODIAssessmentForSession:v10 completion:v11];
  }

  else
  {
    (*(v7 + 2))(v7, v6, 0);
  }
}

uint64_t __72__PKApplyController_submitVerificationPage_verificationInfo_completion___block_invoke_2(uint64_t a1, uint64_t a2)
{
  [*(*(*(a1 + 48) + 8) + 40) setOdiAssessment:a2];
  v3 = *(*(a1 + 40) + 16);

  return v3();
}

void __72__PKApplyController_submitVerificationPage_verificationInfo_completion___block_invoke_3(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  [*(*(*(a1 + 56) + 8) + 40) setVerificationInfo:*(a1 + 32)];
  [*(*(*(a1 + 56) + 8) + 40) setVerificationType:{objc_msgSend(*(a1 + 40), "verificationType")}];
  v8 = *(*(*(a1 + 56) + 8) + 40);
  v9 = [*(*(a1 + 48) + 256) applicationIdentifier];
  [v8 setApplicationIdentifier:v9];

  [*(*(*(a1 + 56) + 8) + 40) setFeatureIdentifier:*(*(a1 + 48) + 216)];
  v10 = *(*(*(a1 + 56) + 8) + 40);
  v11 = [*(*(a1 + 48) + 256) applicationBaseURL];
  [v10 setBaseURL:v11];

  [*(*(*(a1 + 56) + 8) + 40) setChannel:*(*(a1 + 48) + 232)];
  ++*(*(a1 + 48) + 160);
  v12 = [*(*(a1 + 48) + 256) copy];
  v13 = *(a1 + 48);
  v14 = *(v13 + 48);
  v15 = *(*(*(a1 + 56) + 8) + 40);
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __72__PKApplyController_submitVerificationPage_verificationInfo_completion___block_invoke_4;
  v19[3] = &unk_1E801AD10;
  v19[4] = v13;
  v20 = v12;
  v23 = *(a1 + 64);
  v21 = v6;
  v22 = v7;
  v16 = v6;
  v17 = v7;
  v18 = v12;
  [v14 submitVerificationRequest:v15 completion:v19];
}

void __72__PKApplyController_submitVerificationPage_verificationInfo_completion___block_invoke_4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __72__PKApplyController_submitVerificationPage_verificationInfo_completion___block_invoke_5;
  block[3] = &unk_1E801ACE8;
  v7 = *(a1 + 40);
  block[4] = *(a1 + 32);
  v13 = v5;
  v14 = v7;
  v15 = v6;
  v18 = *(a1 + 72);
  v11 = *(a1 + 56);
  v8 = v11;
  v17 = v11;
  v16 = *(a1 + 48);
  v9 = v6;
  v10 = v5;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __72__PKApplyController_submitVerificationPage_verificationInfo_completion___block_invoke_5(uint64_t a1)
{
  [*(a1 + 32) _sendODISessionFeedbackforInflightSessionIfNecessary];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __72__PKApplyController_submitVerificationPage_verificationInfo_completion___block_invoke_6;
  v9[3] = &unk_1E801ACC0;
  v6 = *(a1 + 88);
  v9[4] = v2;
  v12 = v6;
  v8 = *(a1 + 72);
  v7 = v8;
  v11 = v8;
  v10 = *(a1 + 64);
  [v2 _handleApplyResponse:v3 originalFeatureApplication:v4 error:v5 completion:v9];
}

void __72__PKApplyController_submitVerificationPage_verificationInfo_completion___block_invoke_6(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  --*(a1[4] + 160);
  v7 = *(a1[7] + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v12 = v5;

  v9 = *(a1[8] + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
  v11 = v6;

  (*(a1[6] + 16))();
}

uint64_t __72__PKApplyController_submitVerificationPage_verificationInfo_completion___block_invoke_7(void *a1)
{
  result = a1[4];
  if (result)
  {
    return (*(result + 16))(result, *(*(a1[5] + 8) + 40), *(*(a1[6] + 8) + 40));
  }

  return result;
}

- (void)resendVerificationForPage:(id)page completion:(id)completion
{
  pageCopy = page;
  completionCopy = completion;
  if (completionCopy)
  {
    applicationState = [(PKFeatureApplication *)self->_featureApplication applicationState];
    if ((applicationState - 5) < 0xB || (applicationState - 2) <= 1)
    {
      v9 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1BD026000, v9, OS_LOG_TYPE_DEFAULT, "Cannot resend verification from this state - returning next view controller instead", buf, 2u);
      }

      (*(completionCopy + 2))(completionCopy, 0, 0);
    }

    else
    {
      v10 = objc_alloc_init(MEMORY[0x1E69B8640]);
      [v10 setVerificationType:{objc_msgSend(pageCopy, "verificationType")}];
      applicationIdentifier = [(PKFeatureApplication *)self->_featureApplication applicationIdentifier];
      [v10 setApplicationIdentifier:applicationIdentifier];

      applicationBaseURL = [(PKFeatureApplication *)self->_featureApplication applicationBaseURL];
      [v10 setBaseURL:applicationBaseURL];

      webService = self->_webService;
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = __58__PKApplyController_resendVerificationForPage_completion___block_invoke;
      v14[3] = &unk_1E801AD88;
      v14[4] = self;
      v15 = completionCopy;
      [(PKPaymentWebService *)webService resendVerificationRequest:v10 completion:v14];
    }
  }
}

void __58__PKApplyController_resendVerificationForPage_completion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __58__PKApplyController_resendVerificationForPage_completion___block_invoke_2;
  block[3] = &unk_1E8012300;
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v9 = v4;
  v10 = v5;
  v11 = v6;
  v7 = v4;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __58__PKApplyController_resendVerificationForPage_completion___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v2 = [*(a1 + 40) _displayableErrorForError:v2 showDetailedErrorFlow:1];
  }

  v3 = v2;
  (*(*(a1 + 48) + 16))(*(a1 + 48), v2 == 0);
}

- (void)termsShownWithIdentifier:(id)identifier
{
  v29 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  if (identifierCopy)
  {
    shownTermsIdentifiers = self->_shownTermsIdentifiers;
    if (!shownTermsIdentifiers)
    {
      v6 = objc_alloc_init(MEMORY[0x1E695DFA8]);
      v7 = self->_shownTermsIdentifiers;
      self->_shownTermsIdentifiers = v6;

      shownTermsIdentifiers = self->_shownTermsIdentifiers;
    }

    if (([(NSMutableSet *)shownTermsIdentifiers containsObject:identifierCopy]& 1) != 0)
    {
      v8 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v28 = identifierCopy;
        v9 = "Already sent shownTerms for :%@";
        v10 = v8;
        v11 = 12;
LABEL_9:
        _os_log_impl(&dword_1BD026000, v10, OS_LOG_TYPE_DEFAULT, v9, buf, v11);
      }
    }

    else
    {
      [(NSMutableSet *)self->_shownTermsIdentifiers addObject:identifierCopy];
      v8 = objc_alloc_init(MEMORY[0x1E69B8628]);
      applicationOfferDetails = [(PKFeatureApplication *)self->_featureApplication applicationOfferDetails];
      offerTermsIdentifier = [applicationOfferDetails offerTermsIdentifier];
      v14 = [identifierCopy isEqualToString:offerTermsIdentifier];

      if (v14)
      {
        v15 = @"offer";
      }

      else
      {
        declineDetails = [(PKFeatureApplication *)self->_featureApplication declineDetails];
        declinedTermsIdentifier = [declineDetails declinedTermsIdentifier];
        v18 = [identifierCopy isEqualToString:declinedTermsIdentifier];

        if (v18)
        {
          v15 = @"decline";
        }

        else
        {
          applicationTermsIdentifier = [(PKFeatureApplication *)self->_featureApplication applicationTermsIdentifier];
          v20 = [identifierCopy isEqualToString:applicationTermsIdentifier];

          if (v20)
          {
            v15 = @"application";
          }

          else
          {
            v15 = 0;
          }
        }
      }

      [v8 setTermsType:v15];
      [v8 setTermsIdentifier:identifierCopy];
      applicationIdentifier = [(PKFeatureApplication *)self->_featureApplication applicationIdentifier];
      [v8 setApplicationIdentifier:applicationIdentifier];

      applicationBaseURL = [(PKFeatureApplication *)self->_featureApplication applicationBaseURL];
      [v8 setBaseURL:applicationBaseURL];

      referrerIdentifier = [(PKPaymentProvisioningController *)self->_provisioningController referrerIdentifier];
      [v8 setReferrerIdentifier:referrerIdentifier];

      webService = self->_webService;
      v25[0] = MEMORY[0x1E69E9820];
      v25[1] = 3221225472;
      v25[2] = __46__PKApplyController_termsShownWithIdentifier___block_invoke;
      v25[3] = &unk_1E801ADB0;
      v25[4] = self;
      v26 = identifierCopy;
      [(PKPaymentWebService *)webService shownTermsWithRequest:v8 completion:v25];
    }
  }

  else
  {
    v8 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v9 = "Error: No terms identifier";
      v10 = v8;
      v11 = 2;
      goto LABEL_9;
    }
  }
}

void __46__PKApplyController_termsShownWithIdentifier___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __46__PKApplyController_termsShownWithIdentifier___block_invoke_2;
    v4[3] = &unk_1E8010A10;
    v3 = *(a1 + 40);
    v4[4] = *(a1 + 32);
    v5 = v3;
    dispatch_async(MEMORY[0x1E69E96A0], v4);
  }
}

- (void)termsAccepted:(BOOL)accepted termsIdentifier:(id)identifier secondaryIdentifier:(id)secondaryIdentifier actionIdentifier:(id)actionIdentifier completion:(id)completion
{
  acceptedCopy = accepted;
  v67 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  secondaryIdentifierCopy = secondaryIdentifier;
  actionIdentifierCopy = actionIdentifier;
  completionCopy = completion;
  if (completionCopy)
  {
    applicationState = [(PKFeatureApplication *)self->_featureApplication applicationState];
    if (applicationState > 0x10 || ((1 << applicationState) & 0x1FD2C) == 0)
    {
      processedTermsIdentifiers = self->_processedTermsIdentifiers;
      if (!processedTermsIdentifiers)
      {
        v20 = objc_alloc_init(MEMORY[0x1E695DFA8]);
        v21 = self->_processedTermsIdentifiers;
        self->_processedTermsIdentifiers = v20;

        processedTermsIdentifiers = self->_processedTermsIdentifiers;
      }

      if ([(NSMutableSet *)processedTermsIdentifiers containsObject:identifierCopy])
      {
        v22 = PKLogFacilityTypeGetObject();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
        {
          LODWORD(buf) = 138412290;
          *(&buf + 4) = identifierCopy;
          _os_log_impl(&dword_1BD026000, v22, OS_LOG_TYPE_DEFAULT, "Terms identifier: %@ has already been handled - querying next steps instead", &buf, 0xCu);
        }

        v23 = objc_alloc_init(MEMORY[0x1E69B8600]);
        [(PKApplyController *)self _performApplyWithRequest:v23 completion:completionCopy];
      }

      else
      {
        v24 = PKLogFacilityTypeGetObject();
        v25 = os_signpost_id_make_with_pointer(v24, self);
        if (v25 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
        {
          v26 = v25;
          if (os_signpost_enabled(v24))
          {
            LOWORD(buf) = 0;
            _os_signpost_emit_with_name_impl(&dword_1BD026000, v24, OS_SIGNPOST_INTERVAL_BEGIN, v26, "request:applyTerms", "", &buf, 2u);
          }
        }

        v27 = objc_alloc_init(MEMORY[0x1E69B8638]);
        [v27 setTermsAccepted:acceptedCopy];
        if ([(PKFeatureApplication *)self->_featureApplication applicationState]== 7)
        {
          [v27 setPathTermsIdentifier:identifierCopy];
          if (secondaryIdentifierCopy)
          {
            [v27 setPathIdentifier:secondaryIdentifierCopy];
          }
        }

        else
        {
          applicationOfferDetails = [(PKFeatureApplication *)self->_featureApplication applicationOfferDetails];
          offerTermsIdentifier = [applicationOfferDetails offerTermsIdentifier];
          v30 = [identifierCopy isEqualToString:offerTermsIdentifier];

          if (v30)
          {
            [v27 setOfferTermsIdentifier:identifierCopy];
          }

          else
          {
            applicationTermsIdentifier = [(PKFeatureApplication *)self->_featureApplication applicationTermsIdentifier];
            v32 = [identifierCopy isEqualToString:applicationTermsIdentifier];

            if (v32)
            {
              [v27 setApplicationTermsIdentifier:identifierCopy];
            }

            else
            {
              v33 = PKLogFacilityTypeGetObject();
              if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
              {
                LOWORD(buf) = 0;
                _os_log_impl(&dword_1BD026000, v33, OS_LOG_TYPE_DEFAULT, "Error: unknown terms identifier", &buf, 2u);
              }
            }
          }
        }

        [v27 setInstallmentConfiguration:self->_installmentConfiguration];
        applicationIdentifier = [(PKFeatureApplication *)self->_featureApplication applicationIdentifier];
        [v27 setApplicationIdentifier:applicationIdentifier];

        applicationBaseURL = [(PKFeatureApplication *)self->_featureApplication applicationBaseURL];
        [v27 setBaseURL:applicationBaseURL];

        referrerIdentifier = [(PKPaymentProvisioningController *)self->_provisioningController referrerIdentifier];
        [v27 setReferrerIdentifier:referrerIdentifier];

        _applyExperimentDetails = [(PKApplyController *)self _applyExperimentDetails];
        [v27 setExperimentDetails:_applyExperimentDetails];

        v38 = objc_alloc_init(MEMORY[0x1E69B8658]);
        *&buf = 0;
        *(&buf + 1) = &buf;
        v63 = 0x3032000000;
        v64 = __Block_byref_object_copy__31;
        v65 = __Block_byref_object_dispose__31;
        v66 = 0;
        objc_initWeak(&location, self);
        v59[0] = 0;
        v59[1] = v59;
        v59[2] = 0x3032000000;
        v59[3] = __Block_byref_object_copy__31;
        v59[4] = __Block_byref_object_dispose__31;
        v60 = 0;
        if (actionIdentifierCopy)
        {
          v39 = [(NSSet *)self->_actionIdentifiersRequiringAuthentication containsObject:actionIdentifierCopy];
        }

        else
        {
          v39 = 0;
        }

        if (([(PKFeatureApplication *)self->_featureApplication supportsAuthentication]& v39) == 1)
        {
          v54[0] = MEMORY[0x1E69E9820];
          v54[1] = 3221225472;
          v54[2] = __99__PKApplyController_termsAccepted_termsIdentifier_secondaryIdentifier_actionIdentifier_completion___block_invoke;
          v54[3] = &unk_1E801AE28;
          v54[4] = self;
          objc_copyWeak(&v58, &location);
          p_buf = &buf;
          v55 = v27;
          v57 = v59;
          [v38 addOperation:v54];

          objc_destroyWeak(&v58);
        }

        if (acceptedCopy)
        {
          v52[0] = MEMORY[0x1E69E9820];
          v52[1] = 3221225472;
          v52[2] = __99__PKApplyController_termsAccepted_termsIdentifier_secondaryIdentifier_actionIdentifier_completion___block_invoke_75;
          v52[3] = &unk_1E80145B0;
          v52[4] = self;
          v53 = v27;
          [v38 addOperation:v52];
        }

        if (self->_requiresODIAssessment)
        {
          v50[0] = MEMORY[0x1E69E9820];
          v50[1] = 3221225472;
          v50[2] = __99__PKApplyController_termsAccepted_termsIdentifier_secondaryIdentifier_actionIdentifier_completion___block_invoke_78;
          v50[3] = &unk_1E80145B0;
          v50[4] = self;
          v51 = v27;
          [v38 addOperation:v50];
        }

        ++self->_runningApplicationUpdates;
        null = [MEMORY[0x1E695DFB0] null];
        v43[0] = MEMORY[0x1E69E9820];
        v43[1] = 3221225472;
        v43[2] = __99__PKApplyController_termsAccepted_termsIdentifier_secondaryIdentifier_actionIdentifier_completion___block_invoke_80;
        v43[3] = &unk_1E801AF18;
        v43[4] = self;
        v47 = &buf;
        v46 = completionCopy;
        v41 = v27;
        v44 = v41;
        objc_copyWeak(&v49, &location);
        v45 = identifierCopy;
        v48 = v59;
        v42 = [v38 evaluateWithInput:null completion:v43];

        objc_destroyWeak(&v49);
        _Block_object_dispose(v59, 8);

        objc_destroyWeak(&location);
        _Block_object_dispose(&buf, 8);
      }
    }

    else
    {
      v18 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf) = 0;
        _os_log_impl(&dword_1BD026000, v18, OS_LOG_TYPE_DEFAULT, "Cannot accept terms from this state - returning next view controller instead", &buf, 2u);
      }

      [(PKApplyController *)self nextViewControllerWithCompletion:completionCopy];
    }
  }
}

void __99__PKApplyController_termsAccepted_termsIdentifier_secondaryIdentifier_actionIdentifier_completion___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = *(a1 + 32);
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __99__PKApplyController_termsAccepted_termsIdentifier_secondaryIdentifier_actionIdentifier_completion___block_invoke_2;
  v17[3] = &unk_1E801AE00;
  objc_copyWeak(&v23, (a1 + 64));
  v11 = v9;
  v20 = v11;
  v12 = v8;
  v14 = *(a1 + 40);
  v13 = *(a1 + 48);
  v18 = v12;
  v21 = v13;
  v15 = v14;
  v16 = *(a1 + 56);
  v19 = v15;
  v22 = v16;
  [v10 _performAuthenticationLocationBased:1 withCompletion:v17];

  objc_destroyWeak(&v23);
}

void __99__PKApplyController_termsAccepted_termsIdentifier_secondaryIdentifier_actionIdentifier_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __99__PKApplyController_termsAccepted_termsIdentifier_secondaryIdentifier_actionIdentifier_completion___block_invoke_3;
  block[3] = &unk_1E801ADD8;
  objc_copyWeak(&v19, (a1 + 72));
  v7 = *(a1 + 48);
  v14 = *(a1 + 32);
  v15 = v6;
  v16 = v5;
  v12 = *(a1 + 56);
  *&v8 = *(a1 + 40);
  *(&v8 + 1) = v7;
  *&v9 = v12;
  *(&v9 + 1) = *(a1 + 64);
  v18 = v9;
  v17 = v8;
  v10 = v5;
  v11 = v6;
  dispatch_async(MEMORY[0x1E69E96A0], block);

  objc_destroyWeak(&v19);
}

void __99__PKApplyController_termsAccepted_termsIdentifier_secondaryIdentifier_actionIdentifier_completion___block_invoke_3(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 88));
  v3 = WeakRetained;
  if (!WeakRetained)
  {
LABEL_6:
    (*(*(a1 + 64) + 16))();
    goto LABEL_10;
  }

  v4 = *(a1 + 40);
  if (v4)
  {
    v5 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 138412290;
      v13 = v4;
      _os_log_impl(&dword_1BD026000, v5, OS_LOG_TYPE_DEFAULT, "Apply authentication failed with error: %@", &v12, 0xCu);
    }

    v6 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E69BB758] code:1 userInfo:0];
    v7 = *(*(a1 + 72) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;

    goto LABEL_6;
  }

  v9 = [WeakRetained[32] authenticationSignaturePayload];
  if ([v9 length])
  {
    v10 = objc_alloc_init(MEMORY[0x1E69B8620]);
    [v10 setSignaturePayload:v9];
    v11 = [*(a1 + 48) externalizedContext];
    [v10 setAuthenticationCrediential:v11];

    [*(a1 + 56) setAuthenticationContext:v10];
  }

  objc_storeStrong((*(*(a1 + 80) + 8) + 40), *(a1 + 48));
  (*(*(a1 + 64) + 16))();

LABEL_10:
}

void __99__PKApplyController_termsAccepted_termsIdentifier_secondaryIdentifier_actionIdentifier_completion___block_invoke_75(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = PKLogFacilityTypeGetObject();
  v9 = os_signpost_id_make_with_pointer(v8, *(a1 + 32));
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v10 = v9;
    if (os_signpost_enabled(v8))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1BD026000, v8, OS_SIGNPOST_INTERVAL_BEGIN, v10, "request:applyTerms:getDeviceMetadata", "", buf, 2u);
    }
  }

  v11 = *(a1 + 32);
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __99__PKApplyController_termsAccepted_termsIdentifier_secondaryIdentifier_actionIdentifier_completion___block_invoke_76;
  v15[3] = &unk_1E801AE50;
  v15[4] = v11;
  v12 = *(a1 + 40);
  v17 = v6;
  v18 = v7;
  v16 = v12;
  v13 = v6;
  v14 = v7;
  [v11 _deviceMetadataFields:251 completion:v15];
}

uint64_t __99__PKApplyController_termsAccepted_termsIdentifier_secondaryIdentifier_actionIdentifier_completion___block_invoke_76(uint64_t a1, void *a2)
{
  v4 = PKLogFacilityTypeGetObject();
  v5 = *(a1 + 32);
  v6 = a2;
  v7 = os_signpost_id_make_with_pointer(v4, v5);
  if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v8 = v7;
    if (os_signpost_enabled(v4))
    {
      *v10 = 0;
      _os_signpost_emit_with_name_impl(&dword_1BD026000, v4, OS_SIGNPOST_INTERVAL_END, v8, "request:applyTerms:getDeviceMetadata", "", v10, 2u);
    }
  }

  [*(a1 + 40) setDeviceMetadata:v6];
  return (*(*(a1 + 56) + 16))();
}

void __99__PKApplyController_termsAccepted_termsIdentifier_secondaryIdentifier_actionIdentifier_completion___block_invoke_78(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = PKLogFacilityTypeGetObject();
  v9 = os_signpost_id_make_with_pointer(v8, *(a1 + 32));
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v10 = v9;
    if (os_signpost_enabled(v8))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1BD026000, v8, OS_SIGNPOST_INTERVAL_BEGIN, v10, "request:applyTerms:getAssessment", "", buf, 2u);
    }
  }

  v11 = *(a1 + 32);
  v12 = v11[24];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __99__PKApplyController_termsAccepted_termsIdentifier_secondaryIdentifier_actionIdentifier_completion___block_invoke_79;
  v16[3] = &unk_1E801AE78;
  v16[4] = v11;
  v13 = *(a1 + 40);
  v18 = v6;
  v19 = v7;
  v17 = v13;
  v14 = v6;
  v15 = v7;
  [v11 _getODIAssessmentForSession:v12 completion:v16];
}

uint64_t __99__PKApplyController_termsAccepted_termsIdentifier_secondaryIdentifier_actionIdentifier_completion___block_invoke_79(uint64_t a1, void *a2)
{
  v4 = PKLogFacilityTypeGetObject();
  v5 = *(a1 + 32);
  v6 = a2;
  v7 = os_signpost_id_make_with_pointer(v4, v5);
  if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v8 = v7;
    if (os_signpost_enabled(v4))
    {
      *v10 = 0;
      _os_signpost_emit_with_name_impl(&dword_1BD026000, v4, OS_SIGNPOST_INTERVAL_END, v8, "request:applyTerms:getAssessment", "", v10, 2u);
    }
  }

  [*(a1 + 40) setOdiAssessment:v6];
  return (*(*(a1 + 56) + 16))();
}

void __99__PKApplyController_termsAccepted_termsIdentifier_secondaryIdentifier_actionIdentifier_completion___block_invoke_80(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = [v7 isCanceled];
  v9 = *(a1 + 32);
  if (v8)
  {
    [v9 _handleResponseError:*(*(*(a1 + 64) + 8) + 40) completion:*(a1 + 56)];
    --*(*(a1 + 32) + 160);
    v10 = PKLogFacilityTypeGetObject();
    v11 = os_signpost_id_make_with_pointer(v10, *(a1 + 32));
    if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v12 = v11;
      if (os_signpost_enabled(v10))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_1BD026000, v10, OS_SIGNPOST_INTERVAL_END, v12, "request:applyTerms", "", buf, 2u);
      }
    }
  }

  else
  {
    v13 = [v9[32] copy];
    v14 = *(a1 + 40);
    v15 = *(*(a1 + 32) + 48);
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __99__PKApplyController_termsAccepted_termsIdentifier_secondaryIdentifier_actionIdentifier_completion___block_invoke_81;
    v19[3] = &unk_1E801AEF0;
    objc_copyWeak(&v25, (a1 + 80));
    v23 = *(a1 + 56);
    v10 = v13;
    v16 = *(a1 + 32);
    v20 = v10;
    v21 = v16;
    v17 = *(a1 + 48);
    v18 = *(a1 + 72);
    v22 = v17;
    v24 = v18;
    [v15 submitTermsRequest:v14 completion:v19];

    objc_destroyWeak(&v25);
  }
}

void __99__PKApplyController_termsAccepted_termsIdentifier_secondaryIdentifier_actionIdentifier_completion___block_invoke_81(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __99__PKApplyController_termsAccepted_termsIdentifier_secondaryIdentifier_actionIdentifier_completion___block_invoke_2_82;
  block[3] = &unk_1E801AEC8;
  objc_copyWeak(&v19, (a1 + 72));
  v7 = *(a1 + 56);
  v14 = v5;
  v15 = *(a1 + 32);
  v16 = v6;
  v12 = *(a1 + 40);
  v8 = *(&v12 + 1);
  *&v9 = v7;
  *(&v9 + 1) = *(a1 + 64);
  v17 = v12;
  v18 = v9;
  v10 = v6;
  v11 = v5;
  dispatch_async(MEMORY[0x1E69E96A0], block);

  objc_destroyWeak(&v19);
}

void __99__PKApplyController_termsAccepted_termsIdentifier_secondaryIdentifier_actionIdentifier_completion___block_invoke_2_82(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 88));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _sendODISessionFeedbackforInflightSessionIfNecessary];
    v4 = *(a1 + 32);
    v5 = *(a1 + 40);
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __99__PKApplyController_termsAccepted_termsIdentifier_secondaryIdentifier_actionIdentifier_completion___block_invoke_3_83;
    v11[3] = &unk_1E801AEA0;
    v10 = *(a1 + 48);
    v6 = v10.i64[0];
    v12 = vextq_s8(v10, v10, 8uLL);
    v13 = v3;
    v14 = *(a1 + 64);
    v15 = *(a1 + 72);
    [v3 _handleApplyResponse:v4 originalFeatureApplication:v5 error:v6 completion:v11];
    v7 = *(*(*(a1 + 80) + 8) + 40);
    if (v7)
    {
      [v7 invalidate];
      v8 = *(*(a1 + 80) + 8);
      v9 = *(v8 + 40);
      *(v8 + 40) = 0;
    }
  }

  else
  {
    (*(*(a1 + 72) + 16))();
  }
}

void __99__PKApplyController_termsAccepted_termsIdentifier_secondaryIdentifier_actionIdentifier_completion___block_invoke_3_83(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  --*(*(a1 + 32) + 160);
  if (v5 && !(v6 | *(a1 + 40)))
  {
    [*(*(a1 + 48) + 72) addObject:*(a1 + 56)];
  }

  v8 = *(a1 + 64);
  if (v8)
  {
    (*(v8 + 16))(v8, v5, v7);
  }

  v9 = PKLogFacilityTypeGetObject();
  v10 = os_signpost_id_make_with_pointer(v9, *(a1 + 32));
  if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v11 = v10;
    if (os_signpost_enabled(v9))
    {
      *v12 = 0;
      _os_signpost_emit_with_name_impl(&dword_1BD026000, v9, OS_SIGNPOST_INTERVAL_END, v11, "request:applyTerms", "", v12, 2u);
    }
  }
}

- (void)withdrawApplicationWithCompletion:(id)completion
{
  completionCopy = completion;
  applicationState = [(PKFeatureApplication *)self->_featureApplication applicationState];
  if (applicationState - 5 >= 0xC)
  {
    if (applicationState <= 4)
    {
      v8[0] = MEMORY[0x1E69E9820];
      v8[1] = 3221225472;
      v8[2] = __55__PKApplyController_withdrawApplicationWithCompletion___block_invoke;
      v8[3] = &unk_1E801AF40;
      v8[4] = self;
      v9 = completionCopy;
      [(PKApplyController *)self _performWithdrawWithCompletion:v8];
    }
  }

  else
  {
    v6 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&dword_1BD026000, v6, OS_LOG_TYPE_DEFAULT, "Error: Cannot withdraw from this state. Already terminal", v7, 2u);
    }

    [(PKApplyController *)self _reset];
    if (completionCopy)
    {
      (*(completionCopy + 2))(completionCopy, 0, 0);
    }
  }
}

uint64_t __55__PKApplyController_withdrawApplicationWithCompletion___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  if (a2)
  {
    v4 = *(a1 + 40);

    return [v3 _handleResponseError:a2 completion:v4];
  }

  else
  {
    [v3 _reset];
    result = *(a1 + 40);
    if (result)
    {
      v6 = *(result + 16);

      return v6();
    }
  }

  return result;
}

- (id)applicationUpdatedAlertControllerWithHandler:(id)handler
{
  handlerCopy = handler;
  preferredLanguage = [(PKApplyController *)self preferredLanguage];
  v6 = MEMORY[0x1E69DC650];
  v7 = PKLocalizedApplyFeatureString();
  v8 = PKLocalizedApplyFeatureString();
  v9 = [v6 alertControllerWithTitle:v7 message:v8 preferredStyle:1];

  v10 = MEMORY[0x1E69DC648];
  v11 = PKLocalizedApplyFeatureString();
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __66__PKApplyController_applicationUpdatedAlertControllerWithHandler___block_invoke;
  v15[3] = &unk_1E8011248;
  v16 = handlerCopy;
  v12 = handlerCopy;
  v13 = [v10 actionWithTitle:v11 style:0 handler:v15];
  [v9 addAction:v13];

  return v9;
}

uint64_t __66__PKApplyController_applicationUpdatedAlertControllerWithHandler___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)endApplyFlow
{
  v3 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_1BD026000, v3, OS_LOG_TYPE_DEFAULT, "Apply flow ended", v4, 2u);
  }

  self->_endedApplyFlow = 1;
  [(PKApplyController *)self _invalidateAssertion];
  [(PKApplyController *)self _stopPaymentServiceListener];
}

- (void)_startPaymentServiceListener
{
  if (!self->_paymentService)
  {
    paymentService = [MEMORY[0x1E69B8DB8] paymentService];
    paymentService = self->_paymentService;
    self->_paymentService = paymentService;

    v6 = self->_paymentService;

    [(PKPaymentService *)v6 registerObserver:self];
  }
}

- (void)_stopPaymentServiceListener
{
  paymentService = self->_paymentService;
  if (paymentService)
  {
    [(PKPaymentService *)paymentService unregisterObserver:self];
    v4 = self->_paymentService;
    self->_paymentService = 0;
  }
}

- (void)_reset
{
  v3 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v16 = 0;
    _os_log_impl(&dword_1BD026000, v3, OS_LOG_TYPE_DEFAULT, "Reseting apply controller", v16, 2u);
  }

  [(PKApplyController *)self _invalidateIDVSession];
  [(PKApplyController *)self _invalidateAssertion];
  idVerificationSession = self->_idVerificationSession;
  self->_idVerificationSession = 0;

  previousContextIdentifier = self->_previousContextIdentifier;
  self->_previousContextIdentifier = 0;

  actionIdentifiersRequiringAuthentication = self->_actionIdentifiersRequiringAuthentication;
  self->_requiredMetadataFields = 0;
  self->_actionIdentifiersRequiringAuthentication = 0;

  coreIDVNextStepToken = self->_coreIDVNextStepToken;
  self->_coreIDVNextStepToken = 0;

  featureApplication = self->_featureApplication;
  self->_featureApplication = 0;

  encryptionCertificates = self->_encryptionCertificates;
  self->_encryptionCertificates = 0;

  self->_endedApplyFlow = 0;
  account = self->_account;
  self->_account = 0;

  self->_didEncounterError = 0;
  [(NSMutableSet *)self->_processedTermsIdentifiers removeAllObjects];
  [(NSMutableSet *)self->_shownTermsIdentifiers removeAllObjects];
  [(NSMutableArray *)self->_viewControllers removeAllObjects];
  [(NSMutableArray *)self->_pagesToSubmit removeAllObjects];
  self->_viewControllerIndex = 0;
  self->_documentUploadType = 0;
  installmentConfiguration = self->_installmentConfiguration;
  self->_installmentConfiguration = 0;

  inflightODISession = self->_inflightODISession;
  self->_inflightODISession = 0;

  createApplicationODISession = self->_createApplicationODISession;
  self->_createApplicationODISession = 0;

  submitApplicationODISession = self->_submitApplicationODISession;
  self->_submitApplicationODISession = 0;

  applyTermsODISession = self->_applyTermsODISession;
  self->_applyTermsODISession = 0;
}

- (void)_performWithdrawWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = objc_alloc_init(MEMORY[0x1E69B85F8]);
  applicationBaseURL = [(PKFeatureApplication *)self->_featureApplication applicationBaseURL];
  [v5 setBaseURL:applicationBaseURL];

  applicationIdentifier = [(PKFeatureApplication *)self->_featureApplication applicationIdentifier];
  [v5 setApplicationIdentifier:applicationIdentifier];

  referrerIdentifier = [(PKPaymentProvisioningController *)self->_provisioningController referrerIdentifier];
  [v5 setReferrerIdentifier:referrerIdentifier];

  ++self->_runningApplicationUpdates;
  paymentService = self->_paymentService;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __52__PKApplyController__performWithdrawWithCompletion___block_invoke;
  v11[3] = &unk_1E801AF40;
  v11[4] = self;
  v12 = completionCopy;
  v10 = completionCopy;
  [(PKPaymentService *)paymentService submitDeleteRequest:v5 completion:v11];
}

void __52__PKApplyController__performWithdrawWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __52__PKApplyController__performWithdrawWithCompletion___block_invoke_2;
  block[3] = &unk_1E8014918;
  v4 = *(a1 + 40);
  block[4] = *(a1 + 32);
  v7 = v3;
  v8 = v4;
  v5 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void *__52__PKApplyController__performWithdrawWithCompletion___block_invoke_2(void *result)
{
  --*(result[4] + 160);
  v1 = result[6];
  if (v1)
  {
    return (*(v1 + 16))(result[6], result[5]);
  }

  return result;
}

- (void)_deviceMetadataFields:(unint64_t)fields completion:(id)completion
{
  completionCopy = completion;
  targetDevice = [(PKPaymentWebService *)self->_webService targetDevice];
  if (objc_opt_respondsToSelector())
  {
    webService = self->_webService;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __54__PKApplyController__deviceMetadataFields_completion___block_invoke;
    v9[3] = &unk_1E801A030;
    v10 = completionCopy;
    [targetDevice paymentWebService:webService deviceMetadataWithFields:fields completion:v9];
  }

  else
  {
    (*(completionCopy + 2))(completionCopy, 0);
  }
}

void __54__PKApplyController__deviceMetadataFields_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __54__PKApplyController__deviceMetadataFields_completion___block_invoke_2;
  v6[3] = &unk_1E8010E20;
  v4 = *(a1 + 32);
  v7 = v3;
  v8 = v4;
  v5 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], v6);
}

- (void)_performCreateWithCompletion:(id)completion
{
  v53 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  v5 = PKLogFacilityTypeGetObject();
  v6 = os_signpost_id_make_with_pointer(v5, self);
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v7 = v6;
    if (os_signpost_enabled(v5))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1BD026000, v5, OS_SIGNPOST_INTERVAL_BEGIN, v7, "request:applyCreate", "", buf, 2u);
    }
  }

  v8 = objc_alloc_init(MEMORY[0x1E69B8608]);
  applyServiceURL = self->_applyServiceURL;
  if (applyServiceURL)
  {
    applyServiceURL3 = applyServiceURL;
  }

  else
  {
    webService = [(PKPaymentProvisioningController *)self->_provisioningController webService];
    context = [webService context];
    primaryRegion = [context primaryRegion];
    applyServiceURL = [primaryRegion applyServiceURL];
    v15 = applyServiceURL;
    if (applyServiceURL)
    {
      v16 = applyServiceURL;
    }

    else
    {
      v16 = PKApplyServiceOverrideURL();
    }

    applyServiceURL3 = v16;

    if (!applyServiceURL3)
    {
      v17 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1BD026000, v17, OS_LOG_TYPE_DEFAULT, "No apply URL found in the primary region. Evaluating other regions for a possible apply URL.", buf, 2u);
      }

      webService2 = [(PKPaymentProvisioningController *)self->_provisioningController webService];
      context2 = [webService2 context];
      regions = [context2 regions];

      v49 = 0u;
      v50 = 0u;
      v47 = 0u;
      v48 = 0u;
      v21 = regions;
      applyServiceURL3 = [v21 countByEnumeratingWithState:&v47 objects:v52 count:16];
      if (applyServiceURL3)
      {
        v22 = *v48;
        while (2)
        {
          for (i = 0; i != applyServiceURL3; i = (i + 1))
          {
            if (*v48 != v22)
            {
              objc_enumerationMutation(v21);
            }

            v24 = [v21 objectForKey:*(*(&v47 + 1) + 8 * i)];
            applyServiceURL2 = [v24 applyServiceURL];

            if (applyServiceURL2)
            {
              applyServiceURL3 = [v24 applyServiceURL];

              goto LABEL_22;
            }
          }

          applyServiceURL3 = [v21 countByEnumeratingWithState:&v47 objects:v52 count:16];
          if (applyServiceURL3)
          {
            continue;
          }

          break;
        }
      }

LABEL_22:
    }
  }

  [v8 setApplyServiceURL:applyServiceURL3];
  [v8 setFeatureIdentifier:self->_featureIdentifier];
  referrerIdentifier = [(PKPaymentProvisioningController *)self->_provisioningController referrerIdentifier];
  [v8 setReferrerIdentifier:referrerIdentifier];

  _applyExperimentDetails = [(PKApplyController *)self _applyExperimentDetails];
  [v8 setExperimentDetails:_applyExperimentDetails];

  [v8 setInstallmentConfiguration:self->_installmentConfiguration];
  [v8 setApplicationType:self->_applicationType];
  [v8 setUpdateUserInfoSubType:self->_updateUserInfoSubType];
  [v8 setVerificationType:self->_verificationType];
  accountIdentifier = [(PKAccount *)self->_account accountIdentifier];
  [v8 setAccountIdentifier:accountIdentifier];

  [v8 setReferenceIdentifier:self->_referenceIdentifier];
  [v8 setChannel:self->_channel];
  v29 = objc_alloc(MEMORY[0x1E69B88A8]);
  altDSID = [(PKFamilyMember *)self->_familyMember altDSID];
  v31 = [v29 initWithAccountUserAltDSID:altDSID accessLevel:self->_accessLevel];

  [v8 setInvitationDetails:v31];
  identifier = [(PKAccountPaymentFundingSource *)self->_fundingSource identifier];
  [v8 setFundingSourceIdentifier:identifier];

  [v8 setPreliminaryAssessmentIdentifier:self->_preliminaryAssessmentIdentifier];
  [v8 setAssociatedIntent:self->_associatedIntent];
  v33 = [(PKFeatureApplication *)self->_featureApplication copy];
  ++self->_runningApplicationUpdates;
  v34 = objc_alloc_init(MEMORY[0x1E69B8658]);
  v45[0] = MEMORY[0x1E69E9820];
  v45[1] = 3221225472;
  v45[2] = __50__PKApplyController__performCreateWithCompletion___block_invoke;
  v45[3] = &unk_1E80145B0;
  v45[4] = self;
  v35 = v8;
  v46 = v35;
  [v34 addOperation:v45];
  null = [MEMORY[0x1E695DFB0] null];
  v41[0] = MEMORY[0x1E69E9820];
  v41[1] = 3221225472;
  v41[2] = __50__PKApplyController__performCreateWithCompletion___block_invoke_104;
  v41[3] = &unk_1E801AF90;
  v41[4] = self;
  v42 = v35;
  v43 = v33;
  v44 = completionCopy;
  v37 = completionCopy;
  v38 = v33;
  v39 = v35;
  v40 = [v34 evaluateWithInput:null completion:v41];
}

void __50__PKApplyController__performCreateWithCompletion___block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = PKLogFacilityTypeGetObject();
  v9 = os_signpost_id_make_with_pointer(v8, *(a1 + 32));
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v10 = v9;
    if (os_signpost_enabled(v8))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1BD026000, v8, OS_SIGNPOST_INTERVAL_BEGIN, v10, "request:applyCreate:getAssessment", "", buf, 2u);
    }
  }

  v11 = *(a1 + 32);
  v12 = v11[23];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __50__PKApplyController__performCreateWithCompletion___block_invoke_103;
  v16[3] = &unk_1E801AE78;
  v16[4] = v11;
  v13 = *(a1 + 40);
  v18 = v6;
  v19 = v7;
  v17 = v13;
  v14 = v6;
  v15 = v7;
  [v11 _getODIAssessmentForSession:v12 completion:v16];
}

uint64_t __50__PKApplyController__performCreateWithCompletion___block_invoke_103(uint64_t a1, void *a2)
{
  v4 = PKLogFacilityTypeGetObject();
  v5 = *(a1 + 32);
  v6 = a2;
  v7 = os_signpost_id_make_with_pointer(v4, v5);
  if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v8 = v7;
    if (os_signpost_enabled(v4))
    {
      *v10 = 0;
      _os_signpost_emit_with_name_impl(&dword_1BD026000, v4, OS_SIGNPOST_INTERVAL_END, v8, "request:applyCreate:getAssessment", "", v10, 2u);
    }
  }

  [*(a1 + 40) setOdiAssessment:v6];
  return (*(*(a1 + 56) + 16))();
}

void __50__PKApplyController__performCreateWithCompletion___block_invoke_104(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(v2 + 8);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __50__PKApplyController__performCreateWithCompletion___block_invoke_2;
  v5[3] = &unk_1E801AF68;
  v5[4] = v2;
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  [v4 createWithRequest:v3 completion:v5];
}

void __50__PKApplyController__performCreateWithCompletion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __50__PKApplyController__performCreateWithCompletion___block_invoke_3;
  block[3] = &unk_1E80135E0;
  v7 = *(a1 + 40);
  block[4] = *(a1 + 32);
  v11 = v5;
  v12 = v7;
  v13 = v6;
  v14 = *(a1 + 48);
  v8 = v6;
  v9 = v5;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __50__PKApplyController__performCreateWithCompletion___block_invoke_3(uint64_t a1)
{
  [*(a1 + 32) _sendODISessionFeedbackforInflightSessionIfNecessary];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __50__PKApplyController__performCreateWithCompletion___block_invoke_4;
  v6[3] = &unk_1E8010CC0;
  v6[4] = v2;
  v7 = *(a1 + 64);
  [v2 _handleApplyResponse:v3 originalFeatureApplication:v4 error:v5 completion:v6];
}

void __50__PKApplyController__performCreateWithCompletion___block_invoke_4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  --*(*(a1 + 32) + 160);
  v7 = *(a1 + 40);
  if (v7)
  {
    (*(v7 + 16))(v7, v5, v6);
  }

  v8 = PKLogFacilityTypeGetObject();
  v9 = os_signpost_id_make_with_pointer(v8, *(a1 + 32));
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v10 = v9;
    if (os_signpost_enabled(v8))
    {
      *v11 = 0;
      _os_signpost_emit_with_name_impl(&dword_1BD026000, v8, OS_SIGNPOST_INTERVAL_END, v10, "request:applyCreate", "", v11, 2u);
    }
  }
}

- (void)_performApplyWithRequest:(id)request completion:(id)completion
{
  requestCopy = request;
  completionCopy = completion;
  v8 = PKLogFacilityTypeGetObject();
  v9 = os_signpost_id_make_with_pointer(v8, self);
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v10 = v9;
    if (os_signpost_enabled(v8))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1BD026000, v8, OS_SIGNPOST_INTERVAL_BEGIN, v10, "request:applyRequest", "", buf, 2u);
    }
  }

  [requestCopy setCertificates:self->_encryptionCertificates];
  applicationBaseURL = [(PKFeatureApplication *)self->_featureApplication applicationBaseURL];
  [requestCopy setBaseURL:applicationBaseURL];

  [requestCopy setFeatureIdentifier:self->_featureIdentifier];
  applicationIdentifier = [(PKFeatureApplication *)self->_featureApplication applicationIdentifier];
  [requestCopy setApplicationIdentifier:applicationIdentifier];

  referrerIdentifier = [(PKPaymentProvisioningController *)self->_provisioningController referrerIdentifier];
  [requestCopy setReferrerIdentifier:referrerIdentifier];

  _applyExperimentDetails = [(PKApplyController *)self _applyExperimentDetails];
  [requestCopy setExperimentDetails:_applyExperimentDetails];

  [requestCopy setCoreIDVNextStepToken:self->_coreIDVNextStepToken];
  [requestCopy setPreviousContextIdentifier:self->_previousContextIdentifier];
  [requestCopy setInstallmentConfiguration:self->_installmentConfiguration];
  [requestCopy setPreliminaryAssessmentIdentifier:self->_preliminaryAssessmentIdentifier];
  [requestCopy setApplicationType:self->_applicationType];
  [requestCopy setUpdateUserInfoSubType:self->_updateUserInfoSubType];
  [requestCopy setChannel:self->_channel];
  v15 = objc_alloc(MEMORY[0x1E69B88A8]);
  altDSID = [(PKFamilyMember *)self->_familyMember altDSID];
  v17 = [v15 initWithAccountUserAltDSID:altDSID accessLevel:self->_accessLevel];

  [requestCopy setInvitationDetails:v17];
  accountIdentifier = [(PKAccount *)self->_account accountIdentifier];
  [requestCopy setAccountIdentifier:accountIdentifier];

  v19 = objc_alloc_init(MEMORY[0x1E69B8658]);
  *buf = 0;
  v45 = buf;
  v46 = 0x3032000000;
  v47 = __Block_byref_object_copy__31;
  v48 = __Block_byref_object_dispose__31;
  v49 = 0;
  objc_initWeak(&location, self);
  v41[0] = 0;
  v41[1] = v41;
  v41[2] = 0x3032000000;
  v41[3] = __Block_byref_object_copy__31;
  v41[4] = __Block_byref_object_dispose__31;
  v42 = 0;
  actionIdentifier = [requestCopy actionIdentifier];
  if (actionIdentifier)
  {
    v21 = [(NSSet *)self->_actionIdentifiersRequiringAuthentication containsObject:actionIdentifier];
  }

  else
  {
    v21 = 0;
  }

  if (([(PKFeatureApplication *)self->_featureApplication supportsAuthentication]& v21) == 1)
  {
    v36[0] = MEMORY[0x1E69E9820];
    v36[1] = 3221225472;
    v36[2] = __57__PKApplyController__performApplyWithRequest_completion___block_invoke;
    v36[3] = &unk_1E801AE28;
    v36[4] = self;
    objc_copyWeak(&v40, &location);
    v38 = buf;
    v37 = requestCopy;
    v39 = v41;
    [v19 addOperation:v36];

    objc_destroyWeak(&v40);
  }

  if (self->_requiredMetadataFields)
  {
    v34[0] = MEMORY[0x1E69E9820];
    v34[1] = 3221225472;
    v34[2] = __57__PKApplyController__performApplyWithRequest_completion___block_invoke_105;
    v34[3] = &unk_1E80145B0;
    v34[4] = self;
    v35 = requestCopy;
    [v19 addOperation:v34];
  }

  if (self->_requiresODIAssessment)
  {
    v32[0] = MEMORY[0x1E69E9820];
    v32[1] = 3221225472;
    v32[2] = __57__PKApplyController__performApplyWithRequest_completion___block_invoke_4;
    v32[3] = &unk_1E80145B0;
    v32[4] = self;
    v33 = requestCopy;
    [v19 addOperation:v32];
  }

  null = [MEMORY[0x1E695DFB0] null];
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __57__PKApplyController__performApplyWithRequest_completion___block_invoke_109;
  v26[3] = &unk_1E801B058;
  v26[4] = self;
  v23 = requestCopy;
  v27 = v23;
  objc_copyWeak(&v31, &location);
  v24 = completionCopy;
  v28 = v24;
  v29 = v41;
  v30 = buf;
  v25 = [v19 evaluateWithInput:null completion:v26];

  objc_destroyWeak(&v31);
  _Block_object_dispose(v41, 8);

  objc_destroyWeak(&location);
  _Block_object_dispose(buf, 8);
}

void __57__PKApplyController__performApplyWithRequest_completion___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = *(a1 + 32);
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __57__PKApplyController__performApplyWithRequest_completion___block_invoke_2;
  v17[3] = &unk_1E801AE00;
  objc_copyWeak(&v23, (a1 + 64));
  v11 = v9;
  v20 = v11;
  v12 = v8;
  v14 = *(a1 + 40);
  v13 = *(a1 + 48);
  v18 = v12;
  v21 = v13;
  v15 = v14;
  v16 = *(a1 + 56);
  v19 = v15;
  v22 = v16;
  [v10 _performAuthenticationLocationBased:1 withCompletion:v17];

  objc_destroyWeak(&v23);
}

void __57__PKApplyController__performApplyWithRequest_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __57__PKApplyController__performApplyWithRequest_completion___block_invoke_3;
  block[3] = &unk_1E801ADD8;
  objc_copyWeak(&v19, (a1 + 72));
  v7 = *(a1 + 48);
  v14 = *(a1 + 32);
  v15 = v6;
  v16 = v5;
  v12 = *(a1 + 56);
  *&v8 = *(a1 + 40);
  *(&v8 + 1) = v7;
  *&v9 = v12;
  *(&v9 + 1) = *(a1 + 64);
  v18 = v9;
  v17 = v8;
  v10 = v5;
  v11 = v6;
  dispatch_async(MEMORY[0x1E69E96A0], block);

  objc_destroyWeak(&v19);
}

void __57__PKApplyController__performApplyWithRequest_completion___block_invoke_3(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 88));
  v3 = WeakRetained;
  if (!WeakRetained)
  {
LABEL_6:
    (*(*(a1 + 64) + 16))();
    goto LABEL_10;
  }

  v4 = *(a1 + 40);
  if (v4)
  {
    v5 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 138412290;
      v13 = v4;
      _os_log_impl(&dword_1BD026000, v5, OS_LOG_TYPE_DEFAULT, "Apply authentication failed with error: %@", &v12, 0xCu);
    }

    v6 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E69BB758] code:1 userInfo:0];
    v7 = *(*(a1 + 72) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;

    goto LABEL_6;
  }

  v9 = [WeakRetained[32] authenticationSignaturePayload];
  if ([v9 length])
  {
    v10 = objc_alloc_init(MEMORY[0x1E69B8620]);
    [v10 setSignaturePayload:v9];
    v11 = [*(a1 + 48) externalizedContext];
    [v10 setAuthenticationCrediential:v11];

    [*(a1 + 56) setAuthenticationContext:v10];
  }

  objc_storeStrong((*(*(a1 + 80) + 8) + 40), *(a1 + 48));
  (*(*(a1 + 64) + 16))();

LABEL_10:
}

void __57__PKApplyController__performApplyWithRequest_completion___block_invoke_105(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = *(a1 + 32);
  v9 = v8[16];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __57__PKApplyController__performApplyWithRequest_completion___block_invoke_2_106;
  v13[3] = &unk_1E801AFB8;
  v10 = *(a1 + 40);
  v15 = v6;
  v16 = v7;
  v14 = v10;
  v11 = v6;
  v12 = v7;
  [v8 _deviceMetadataFields:v9 completion:v13];
}

void __57__PKApplyController__performApplyWithRequest_completion___block_invoke_2_106(id *a1, void *a2)
{
  v3 = a2;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __57__PKApplyController__performApplyWithRequest_completion___block_invoke_3_107;
  v5[3] = &unk_1E8014760;
  v6 = a1[4];
  v7 = v3;
  v9 = a1[6];
  v8 = a1[5];
  v4 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], v5);
}

uint64_t __57__PKApplyController__performApplyWithRequest_completion___block_invoke_3_107(uint64_t a1)
{
  [*(a1 + 32) setDeviceMetadata:*(a1 + 40)];
  v2 = *(*(a1 + 56) + 16);

  return v2();
}

void __57__PKApplyController__performApplyWithRequest_completion___block_invoke_4(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = PKLogFacilityTypeGetObject();
  v9 = os_signpost_id_make_with_pointer(v8, *(a1 + 32));
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v10 = v9;
    if (os_signpost_enabled(v8))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1BD026000, v8, OS_SIGNPOST_INTERVAL_BEGIN, v10, "request:applyRequest:getAssessment", "", buf, 2u);
    }
  }

  v11 = *(a1 + 32);
  v12 = v11[22];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __57__PKApplyController__performApplyWithRequest_completion___block_invoke_108;
  v16[3] = &unk_1E801AE78;
  v16[4] = v11;
  v13 = *(a1 + 40);
  v18 = v6;
  v19 = v7;
  v17 = v13;
  v14 = v6;
  v15 = v7;
  [v11 _getODIAssessmentForSession:v12 completion:v16];
}

uint64_t __57__PKApplyController__performApplyWithRequest_completion___block_invoke_108(uint64_t a1, void *a2)
{
  v4 = PKLogFacilityTypeGetObject();
  v5 = *(a1 + 32);
  v6 = a2;
  v7 = os_signpost_id_make_with_pointer(v4, v5);
  if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v8 = v7;
    if (os_signpost_enabled(v4))
    {
      *v10 = 0;
      _os_signpost_emit_with_name_impl(&dword_1BD026000, v4, OS_SIGNPOST_INTERVAL_END, v8, "request:applyRequest:getAssessment", "", v10, 2u);
    }
  }

  [*(a1 + 40) setOdiAssessment:v6];
  return (*(*(a1 + 56) + 16))();
}

void __57__PKApplyController__performApplyWithRequest_completion___block_invoke_109(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = [v7 isCanceled];
  v9 = *(a1 + 32);
  if (v8)
  {
    [v9 _handleResponseError:*(*(*(a1 + 64) + 8) + 40) completion:*(a1 + 48)];
    v10 = PKLogFacilityTypeGetObject();
    v11 = os_signpost_id_make_with_pointer(v10, *(a1 + 32));
    if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v12 = v11;
      if (os_signpost_enabled(v10))
      {
        *v17 = 0;
        _os_signpost_emit_with_name_impl(&dword_1BD026000, v10, OS_SIGNPOST_INTERVAL_END, v12, "request:applyRequest", "", v17, 2u);
      }
    }
  }

  else
  {
    v13 = [v9[32] copy];
    ++*(*(a1 + 32) + 160);
    v14 = *(a1 + 40);
    v15 = *(*(a1 + 32) + 48);
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __57__PKApplyController__performApplyWithRequest_completion___block_invoke_2_110;
    v18[3] = &unk_1E801B030;
    objc_copyWeak(&v23, (a1 + 72));
    v21 = *(a1 + 48);
    v10 = v13;
    v22 = *(a1 + 56);
    v16 = *(a1 + 32);
    v19 = v10;
    v20 = v16;
    [v15 submitApplyRequest:v14 completion:v18];

    objc_destroyWeak(&v23);
  }
}

void __57__PKApplyController__performApplyWithRequest_completion___block_invoke_2_110(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __57__PKApplyController__performApplyWithRequest_completion___block_invoke_3_111;
  block[3] = &unk_1E801B008;
  objc_copyWeak(&v17, (a1 + 64));
  v7 = *(a1 + 48);
  v13 = v5;
  v14 = v6;
  *&v8 = *(a1 + 32);
  *(&v8 + 1) = *(a1 + 40);
  *&v9 = v7;
  *(&v9 + 1) = *(a1 + 56);
  v16 = v9;
  v15 = v8;
  v10 = v6;
  v11 = v5;
  dispatch_async(MEMORY[0x1E69E96A0], block);

  objc_destroyWeak(&v17);
}

void __57__PKApplyController__performApplyWithRequest_completion___block_invoke_3_111(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 80));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    if (*(a1 + 32) && !*(a1 + 40))
    {
      v4 = *(WeakRetained + 13);
      *(WeakRetained + 13) = 0;
    }

    [v3 _sendODISessionFeedbackforInflightSessionIfNecessary];
    v6 = *(a1 + 40);
    v5 = *(a1 + 48);
    v7 = *(a1 + 32);
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __57__PKApplyController__performApplyWithRequest_completion___block_invoke_4_112;
    v10[3] = &unk_1E801AFE0;
    v10[4] = v3;
    v8 = *(a1 + 64);
    v9 = *(a1 + 72);
    v11 = v8;
    v12 = v9;
    v10[5] = *(a1 + 56);
    [v3 _handleApplyResponse:v7 originalFeatureApplication:v5 error:v6 completion:v10];
  }

  else
  {
    (*(*(a1 + 64) + 16))();
  }
}

void __57__PKApplyController__performApplyWithRequest_completion___block_invoke_4_112(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  --*(*(a1 + 32) + 160);
  v7 = *(a1 + 48);
  if (v7)
  {
    (*(v7 + 16))(v7, v5, v6);
  }

  v8 = *(*(*(a1 + 56) + 8) + 40);
  if (v8)
  {
    [v8 invalidate];
    v9 = *(*(a1 + 56) + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = 0;
  }

  v11 = PKLogFacilityTypeGetObject();
  v12 = os_signpost_id_make_with_pointer(v11, *(a1 + 40));
  if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v13 = v12;
    if (os_signpost_enabled(v11))
    {
      *v14 = 0;
      _os_signpost_emit_with_name_impl(&dword_1BD026000, v11, OS_SIGNPOST_INTERVAL_END, v13, "request:applyRequest", "", v14, 2u);
    }
  }
}

- (void)_performAuthenticationLocationBased:(BOOL)based withCompletion:(id)completion
{
  basedCopy = based;
  v20[3] = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  if (completionCopy)
  {
    if (basedCopy)
    {
      v6 = 1025;
    }

    else
    {
      v6 = 2;
    }

    v13 = 0;
    v14 = &v13;
    v15 = 0x3032000000;
    v16 = __Block_byref_object_copy__31;
    v17 = __Block_byref_object_dispose__31;
    v18 = objc_alloc_init(MEMORY[0x1E696EE50]);
    v20[0] = @"Apply Authentication";
    v19[0] = &unk_1F3CC77F0;
    v19[1] = &unk_1F3CC7808;
    v7 = PKLocalizedString(&cfstr_Wallet_1.isa);
    v19[2] = &unk_1F3CC7820;
    v20[1] = v7;
    v20[2] = MEMORY[0x1E695E118];
    v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:v19 count:3];

    v9 = v14[5];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __72__PKApplyController__performAuthenticationLocationBased_withCompletion___block_invoke;
    v10[3] = &unk_1E801B080;
    v11 = completionCopy;
    v12 = &v13;
    [v9 evaluatePolicy:v6 options:v8 reply:v10];

    _Block_object_dispose(&v13, 8);
  }
}

uint64_t __72__PKApplyController__performAuthenticationLocationBased_withCompletion___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  if (!a2 || a3)
  {
    return (*(v4 + 16))(v4, 0);
  }

  else
  {
    return (*(v4 + 16))(v4, *(*(*(a1 + 40) + 8) + 40));
  }
}

- (void)termsDataForIdentifier:(id)identifier format:(id)format completion:(id)completion
{
  completionCopy = completion;
  if (completionCopy)
  {
    v9 = MEMORY[0x1E69B8630];
    formatCopy = format;
    identifierCopy = identifier;
    v12 = objc_alloc_init(v9);
    [v12 setTermsDataFormat:formatCopy];

    [v12 setTermsIdentifier:identifierCopy];
    applicationIdentifier = [(PKFeatureApplication *)self->_featureApplication applicationIdentifier];
    [v12 setApplicationIdentifier:applicationIdentifier];

    [v12 setFeatureIdentifier:self->_featureIdentifier];
    applicationBaseURL = [(PKFeatureApplication *)self->_featureApplication applicationBaseURL];
    [v12 setBaseURL:applicationBaseURL];

    referrerIdentifier = [(PKPaymentProvisioningController *)self->_provisioningController referrerIdentifier];
    [v12 setReferrerIdentifier:referrerIdentifier];

    webService = self->_webService;
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __62__PKApplyController_termsDataForIdentifier_format_completion___block_invoke;
    v17[3] = &unk_1E801B0A8;
    v17[4] = self;
    v18 = completionCopy;
    [(PKPaymentWebService *)webService termsDataWithRequest:v12 completion:v17];
  }
}

void __62__PKApplyController_termsDataForIdentifier_format_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __62__PKApplyController_termsDataForIdentifier_format_completion___block_invoke_2;
  v10[3] = &unk_1E8014760;
  v11 = v5;
  v12 = v6;
  v7 = *(a1 + 40);
  v13 = *(a1 + 32);
  v14 = v7;
  v8 = v6;
  v9 = v5;
  dispatch_async(MEMORY[0x1E69E96A0], v10);
}

void __62__PKApplyController_termsDataForIdentifier_format_completion___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = *(a1 + 40) == 0;
  }

  else
  {
    v3 = 0;
  }

  if (v3)
  {
    v4 = *(a1 + 56);
    v6 = [v2 termsData];
    v5 = [*(a1 + 32) termsDataFileName];
    (*(v4 + 16))(v4, v6, v5, 0);
  }

  else
  {
    v6 = [*(a1 + 48) _displayableErrorForError:? showDetailedErrorFlow:?];
    (*(*(a1 + 56) + 16))();
  }
}

- (void)termsDataForFeatureWithIdentifier:(id)identifier format:(id)format completion:(id)completion
{
  completionCopy = completion;
  if (completionCopy)
  {
    v9 = MEMORY[0x1E69B8618];
    formatCopy = format;
    identifierCopy = identifier;
    v12 = objc_alloc_init(v9);
    [v12 setTermsDataFormat:formatCopy];

    [v12 setTermsIdentifier:identifierCopy];
    [v12 setFeatureIdentifier:self->_featureIdentifier];
    referrerIdentifier = [(PKPaymentProvisioningController *)self->_provisioningController referrerIdentifier];
    [v12 setReferrerIdentifier:referrerIdentifier];

    webService = self->_webService;
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __73__PKApplyController_termsDataForFeatureWithIdentifier_format_completion___block_invoke;
    v15[3] = &unk_1E801B0A8;
    v15[4] = self;
    v16 = completionCopy;
    [(PKPaymentWebService *)webService featureTermsDataWithRequest:v12 completion:v15];
  }
}

void __73__PKApplyController_termsDataForFeatureWithIdentifier_format_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __73__PKApplyController_termsDataForFeatureWithIdentifier_format_completion___block_invoke_2;
  v10[3] = &unk_1E8014760;
  v11 = v5;
  v12 = v6;
  v7 = *(a1 + 40);
  v13 = *(a1 + 32);
  v14 = v7;
  v8 = v6;
  v9 = v5;
  dispatch_async(MEMORY[0x1E69E96A0], v10);
}

void __73__PKApplyController_termsDataForFeatureWithIdentifier_format_completion___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = *(a1 + 40) == 0;
  }

  else
  {
    v3 = 0;
  }

  if (v3)
  {
    v4 = *(a1 + 56);
    v6 = [v2 termsData];
    v5 = [*(a1 + 32) termsDataFileName];
    (*(v4 + 16))(v4, v6, v5, 0);
  }

  else
  {
    v6 = [*(a1 + 48) _displayableErrorForError:? showDetailedErrorFlow:?];
    (*(*(a1 + 56) + 16))();
  }
}

- (void)submitActionIdentifier:(id)identifier termsIdentifiers:(id)identifiers odiAttributesDictionary:(id)dictionary completion:(id)completion
{
  v22 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  identifiersCopy = identifiers;
  dictionaryCopy = dictionary;
  completionCopy = completion;
  applicationState = [(PKFeatureApplication *)self->_featureApplication applicationState];
  if (applicationState > 0xF || ((1 << applicationState) & 0xFF6C) == 0)
  {
    if ([dictionaryCopy count])
    {
      v17 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v20 = 138412290;
        v21 = dictionaryCopy;
        _os_log_impl(&dword_1BD026000, v17, OS_LOG_TYPE_DEFAULT, "Adding ODI submit application attributes %@", &v20, 0xCu);
      }

      v18 = objc_alloc_init(MEMORY[0x1E69983B8]);
      [v18 setAttributes:dictionaryCopy];
      [(PKODIServiceProviderAssessment *)self->_submitApplicationODISession updateAssessment:v18];
    }

    v19 = objc_alloc_init(MEMORY[0x1E69B8600]);
    [v19 setActionIdentifier:identifierCopy];
    [v19 setTermsIdentifiers:identifiersCopy];
    [(PKApplyController *)self _performApplyWithRequest:v19 completion:completionCopy];
  }

  else
  {
    v16 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v20) = 0;
      _os_log_impl(&dword_1BD026000, v16, OS_LOG_TYPE_DEFAULT, "Cannot accept terms from this state - returning next view controller instead", &v20, 2u);
    }

    [(PKApplyController *)self nextViewControllerWithCompletion:completionCopy];
  }
}

- (void)_handleResponseError:(id)error completion:(id)completion
{
  completionCopy = completion;
  if (completionCopy)
  {
    self->_didEncounterError = 1;
    v9 = completionCopy;
    v7 = [(PKApplyController *)self _displayableErrorForError:error showDetailedErrorFlow:1];
    if (v7)
    {
      v9[2]();
    }

    else
    {
      _nextQueuedViewController = [(PKApplyController *)self _nextQueuedViewController];
      (v9[2])(v9, _nextQueuedViewController, 0);
    }

    completionCopy = v9;
  }
}

- (void)_handleApplyResponse:(id)response originalFeatureApplication:(id)application error:(id)error completion:(id)completion
{
  v68 = *MEMORY[0x1E69E9840];
  responseCopy = response;
  applicationCopy = application;
  errorCopy = error;
  completionCopy = completion;
  applicationState = [applicationCopy applicationState];
  if ([(PKFeatureApplication *)self->_featureApplication applicationState]== applicationState)
  {
    applicationStateReason = [(PKFeatureApplication *)self->_featureApplication applicationStateReason];
    if (applicationStateReason == [applicationCopy applicationStateReason])
    {
      if (errorCopy)
      {
        [(PKApplyController *)self _handleResponseError:errorCopy completion:completionCopy];
        goto LABEL_8;
      }

      if (responseCopy)
      {
        self->_didEncounterError = 0;
        featureApplication = [responseCopy featureApplication];
        featureApplication = self->_featureApplication;
        self->_featureApplication = featureApplication;

        self->_requiredMetadataFields = [responseCopy requiredDeviceMetadataFields];
        self->_requiresODIAssessment = [responseCopy requiresODIAssessment];
        actionIdentifiersRequiringAuthentication = [responseCopy actionIdentifiersRequiringAuthentication];
        actionIdentifiersRequiringAuthentication = self->_actionIdentifiersRequiringAuthentication;
        self->_actionIdentifiersRequiringAuthentication = actionIdentifiersRequiringAuthentication;

        account = [responseCopy account];

        if (account)
        {
          account2 = [responseCopy account];
          account = self->_account;
          self->_account = account2;
        }

        nextStepInfo = [responseCopy nextStepInfo];
        v25 = nextStepInfo;
        if (nextStepInfo)
        {
          pages = [nextStepInfo pages];
          firstObject = [pages firstObject];

          encryptionCertificates = [v25 encryptionCertificates];
          if ([encryptionCertificates count])
          {
            objc_storeStrong(&self->_encryptionCertificates, encryptionCertificates);
          }

          if (firstObject)
          {
LABEL_19:
            if ([(PKFeatureApplication *)self->_featureApplication applicationStateReason]== 4)
            {
              [(PKApplyController *)self _queueStateReasonExplanationFlowWithPage:firstObject];
LABEL_25:
              _nextQueuedViewController = [(PKApplyController *)self _nextQueuedViewController];
              completionCopy[2](completionCopy, _nextQueuedViewController, 0);

LABEL_26:
              goto LABEL_8;
            }

            if ([(NSMutableArray *)self->_viewControllers count])
            {
              viewControllerIndex = self->_viewControllerIndex;
              if (viewControllerIndex == [(NSMutableArray *)self->_viewControllers count])
              {
                [(NSMutableArray *)self->_viewControllers removeAllObjects];
                self->_viewControllerIndex = 0;
              }
            }

            if ([(NSMutableArray *)self->_viewControllers count])
            {
              goto LABEL_25;
            }

            applicationState2 = [(PKFeatureApplication *)self->_featureApplication applicationState];
            if (applicationState2 > 8)
            {
              if (applicationState2 > 12)
              {
                if ((applicationState2 - 13) >= 3)
                {
                  if (applicationState2 != 16)
                  {
                    goto LABEL_26;
                  }

                  goto LABEL_30;
                }

                applicationType = [(PKFeatureApplication *)self->_featureApplication applicationType];
                if (applicationType > 6 || applicationType == 2 && ([firstObject isEmptyPage] & 1) != 0)
                {
                  goto LABEL_25;
                }
              }

              else
              {
                if ((applicationState2 - 10) >= 2)
                {
                  if (applicationState2 != 9)
                  {
                    if (applicationState2 != 12)
                    {
                      goto LABEL_26;
                    }

                    [(PKApplyController *)self _queueExpiredFlowWithPage:firstObject];
                    goto LABEL_25;
                  }

                  if (self->_account)
                  {
                    [(PKApplyController *)self endApplyFlow];
                    if ([(PKFeatureApplication *)self->_featureApplication feature]== 5)
                    {
                      completionCopy[2](completionCopy, 0, 0);
                    }

                    else
                    {
                      [(PKApplyController *)self _queuePassActivationFlowWithCompletion:completionCopy];
                    }

                    goto LABEL_26;
                  }

                  v33 = PKLogFacilityTypeGetObject();
                  if (!os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
                  {
                    goto LABEL_59;
                  }

                  *buf = 0;
                  v34 = "Error: Application state is booked but no account present";
                  goto LABEL_58;
                }

                if (applicationState <= 0x10 && ((1 << applicationState) & 0x1005E) != 0)
                {
LABEL_88:
                  [(PKApplyController *)self endApplyFlow];
                  goto LABEL_25;
                }
              }

              [(PKApplyController *)self _queueTerminalStateFlowWithPage:firstObject];
              goto LABEL_25;
            }

            if (applicationState2 <= 4)
            {
              if (applicationState2 >= 5)
              {
                goto LABEL_26;
              }

LABEL_30:
              if (v25)
              {
                contextType = [v25 contextType];
                if (contextType <= 4)
                {
                  if (contextType <= 1)
                  {
                    if (contextType)
                    {
                      if (contextType == 1)
                      {
                        [(PKApplyController *)self _startCoreIDVSessionWithStepInfo:v25 completion:completionCopy];
                      }

                      goto LABEL_26;
                    }

                    [(PKApplyController *)self _queueFieldsFlowWithNextStepInfo:v25];
                  }

                  else if (contextType == 2)
                  {
                    [(PKApplyController *)self _queueDocumentSubmissionWithNextStepInfo:v25];
                  }

                  else if (contextType == 3)
                  {
                    [(PKApplyController *)self _queueApplicationTermsFlow];
                  }

                  else
                  {
                    [(PKApplyController *)self _queueActionFlowWithPage:firstObject];
                  }

                  goto LABEL_25;
                }

                if (contextType > 7)
                {
                  if (contextType != 8)
                  {
                    if (contextType == 9)
                    {
                      [(PKApplyController *)self _queueApplicationVerificationWithNextStepInfo:v25];
                    }

                    else
                    {
                      if (contextType != 10)
                      {
                        goto LABEL_26;
                      }

                      [(PKApplyController *)self _queueConfirmInfoFlowWithPage:firstObject];
                    }

                    goto LABEL_25;
                  }

                  if ([(PKFeatureApplication *)self->_featureApplication applicationType]!= 2)
                  {
                    goto LABEL_26;
                  }

                  [(PKApplyController *)self _startPaymentServiceListener];
                  applicationIdentifier = [(PKFeatureApplication *)self->_featureApplication applicationIdentifier];
                  paymentService = self->_paymentService;
                  v63[0] = MEMORY[0x1E69E9820];
                  v63[1] = 3221225472;
                  v63[2] = __86__PKApplyController__handleApplyResponse_originalFeatureApplication_error_completion___block_invoke;
                  v63[3] = &unk_1E801B0D0;
                  v63[4] = self;
                  v64 = applicationIdentifier;
                  v65 = completionCopy;
                  _nextQueuedViewController2 = applicationIdentifier;
                  [(PKPaymentService *)paymentService featureApplicationWithReferenceIdentifier:_nextQueuedViewController2 completion:v63];
                  [(PKApplyController *)self endApplyFlow];
                }

                else
                {
                  if (contextType == 5)
                  {
                    [(PKApplyController *)self _queueInfoFlowWithNextWithPage:firstObject];
                    goto LABEL_25;
                  }

                  if (contextType != 6)
                  {
                    if (-[PKFeatureApplication applicationType](self->_featureApplication, "applicationType") == 2 && ([firstObject isEmptyPage] & 1) == 0)
                    {
                      [(PKApplyController *)self _queueCompleteFlowWithNextPage:firstObject];
                      goto LABEL_25;
                    }

                    v33 = PKLogFacilityTypeGetObject();
                    if (!os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
                    {
                      goto LABEL_59;
                    }

                    *buf = 0;
                    v34 = "Error: Application Open but next step complete/info - invalid state";
                    goto LABEL_58;
                  }

                  _nextQueuedViewController2 = [(NSMutableArray *)self->_pagesToSubmit copy];
                  [(NSMutableArray *)self->_pagesToSubmit removeAllObjects];
                  v49 = PKLogFacilityTypeGetObject();
                  if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 134217984;
                    v67 = [_nextQueuedViewController2 count];
                    _os_log_impl(&dword_1BD026000, v49, OS_LOG_TYPE_DEFAULT, "Submitting all %ld combined pages.", buf, 0xCu);
                  }

                  [(PKApplyController *)self _submitAllFieldPages:_nextQueuedViewController2 completion:completionCopy];
                }

LABEL_143:

                goto LABEL_26;
              }

              v33 = PKLogFacilityTypeGetObject();
              if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 0;
                v34 = "Error: Response is missing information to continue for state";
LABEL_58:
                _os_log_impl(&dword_1BD026000, v33, OS_LOG_TYPE_DEFAULT, v34, buf, 2u);
                goto LABEL_59;
              }

              goto LABEL_59;
            }

            if (applicationState2 <= 6)
            {
              if (applicationState2 != 5)
              {
                feature = [(PKFeatureApplication *)self->_featureApplication feature];
                if (feature > 3)
                {
                  if ((feature - 4) >= 2)
                  {
                    goto LABEL_26;
                  }
                }

                else if (feature)
                {
                  if (feature == 1)
                  {
LABEL_60:
                    [(PKApplyController *)self _queueGenericErrorViewController];
                    goto LABEL_25;
                  }

                  if (feature != 2)
                  {
                    goto LABEL_26;
                  }

                  applicationOfferDetails = [(PKFeatureApplication *)self->_featureApplication applicationOfferDetails];

                  if (applicationOfferDetails)
                  {
                    [(PKApplyController *)self _queueOfferFlowWithPage:firstObject];
                    goto LABEL_25;
                  }

                  v33 = PKLogFacilityTypeGetObject();
                  if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 0;
                    v34 = "Error: No offer object on feature application but application approved. Not able to procced";
                    goto LABEL_58;
                  }

LABEL_59:

                  goto LABEL_60;
                }

                if ([v25 contextType] != 7)
                {
                  goto LABEL_26;
                }

                if (![firstObject isEmptyPage])
                {
                  [(PKApplyController *)self _queueCompleteFlowWithNextPage:firstObject];
                  goto LABEL_88;
                }

                v43 = PKLogFacilityTypeGetObject();
                if (!os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
                {
                  goto LABEL_87;
                }

                *buf = 0;
                v44 = "Server did not deliver page and it is approved: terminal state reached, not queueing another view controller";
                goto LABEL_86;
              }

              [(PKApplyController *)self _queueStateReasonExplanationFlowWithPage:firstObject];
              _nextQueuedViewController2 = [(PKApplyController *)self _nextQueuedViewController];
              WeakRetained = objc_loadWeakRetained(&self->_setupDelegate);
              _nextQueuedViewController3 = WeakRetained;
              if (self->_installmentConfiguration && WeakRetained && (objc_opt_respondsToSelector() & 1) != 0)
              {
                v41 = self->_featureApplication;
                v60[0] = MEMORY[0x1E69E9820];
                v60[1] = 3221225472;
                v60[2] = __86__PKApplyController__handleApplyResponse_originalFeatureApplication_error_completion___block_invoke_2;
                v60[3] = &unk_1E8010E20;
                v62 = completionCopy;
                v61 = _nextQueuedViewController2;
                [_nextQueuedViewController3 viewController:v61 canProceedWithInstallment:0 featureApplication:v41 completion:v60];
              }

              else
              {
                completionCopy[2](completionCopy, _nextQueuedViewController2, 0);
              }

LABEL_142:

              goto LABEL_143;
            }

            if (applicationState2 != 7)
            {
              if (-[PKFeatureApplication applicationType](self->_featureApplication, "applicationType") != 2 || ([firstObject isEmptyPage] & 1) == 0)
              {
                [(PKApplyController *)self _queueAcceptedFlowWithPage:firstObject];
              }

              goto LABEL_25;
            }

            contextType2 = [v25 contextType];
            if ([firstObject isEmptyPage] && contextType2 == 7)
            {
              v43 = PKLogFacilityTypeGetObject();
              if (!os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
              {
LABEL_87:

                goto LABEL_88;
              }

              *buf = 0;
              v44 = "Server did not deliver page in decline follow up flow which means it's terminal, not queueing another view controller";
LABEL_86:
              _os_log_impl(&dword_1BD026000, v43, OS_LOG_TYPE_DEFAULT, v44, buf, 2u);
              goto LABEL_87;
            }

            if ([(PKFeatureApplication *)self->_featureApplication applicationType]!= 2)
            {
              declineDetails = [(PKFeatureApplication *)self->_featureApplication declineDetails];
              if (declineDetails || [(PKFeatureApplication *)self->_featureApplication feature]== 3)
              {
              }

              else if ([(PKFeatureApplication *)self->_featureApplication feature]!= 5)
              {
                v33 = PKLogFacilityTypeGetObject();
                if (!os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
                {
                  goto LABEL_59;
                }

                *buf = 0;
                v34 = "Error: No decline object on feature application but application declined. Not able to proceed";
                goto LABEL_58;
              }
            }

            identifier = [firstObject identifier];
            v46 = [identifier length];
            v47 = PKLogFacilityTypeGetObject();
            v48 = os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT);
            if (v46)
            {
              if (contextType2 == 3)
              {
                if (v48)
                {
                  *buf = 0;
                  _os_log_impl(&dword_1BD026000, v47, OS_LOG_TYPE_DEFAULT, "Declined with terms, queue terms consent screen", buf, 2u);
                }

                [(PKApplyController *)self _queueProgramConsentFlowWithPage:firstObject];
                goto LABEL_136;
              }

              if (contextType2 == 4)
              {
                if (v48)
                {
                  *buf = 0;
                  _os_log_impl(&dword_1BD026000, v47, OS_LOG_TYPE_DEFAULT, "Declined with action, queue action screen", buf, 2u);
                }

                [(PKApplyController *)self _queueActionFlowWithPage:firstObject];
                goto LABEL_136;
              }

              if (v48)
              {
                *buf = 0;
                v52 = "Declined with context identifier but no qualifying context type, queue regular decline screen";
                goto LABEL_134;
              }
            }

            else if (v48)
            {
              *buf = 0;
              v52 = "No context identifier, queue regular decline screen";
LABEL_134:
              _os_log_impl(&dword_1BD026000, v47, OS_LOG_TYPE_DEFAULT, v52, buf, 2u);
            }

            [(PKApplyController *)self _queueDeclinedFlowWithPage:firstObject];
LABEL_136:
            _nextQueuedViewController2 = identifier;
            _nextQueuedViewController3 = [(PKApplyController *)self _nextQueuedViewController];
            v53 = objc_loadWeakRetained(&self->_setupDelegate);
            v54 = v53;
            if (self->_installmentConfiguration && v53 && (objc_opt_respondsToSelector() & 1) != 0)
            {
              v55 = self->_featureApplication;
              v57[0] = MEMORY[0x1E69E9820];
              v57[1] = 3221225472;
              v57[2] = __86__PKApplyController__handleApplyResponse_originalFeatureApplication_error_completion___block_invoke_137;
              v57[3] = &unk_1E8010E20;
              v59 = completionCopy;
              v58 = _nextQueuedViewController3;
              [v54 viewController:v58 canProceedWithInstallment:0 featureApplication:v55 completion:v57];
            }

            else
            {
              completionCopy[2](completionCopy, _nextQueuedViewController3, 0);
            }

            goto LABEL_142;
          }
        }
      }

      else
      {
        v25 = 0;
      }

      firstObject = objc_alloc_init(MEMORY[0x1E69B8818]);
      goto LABEL_19;
    }
  }

  v16 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1BD026000, v16, OS_LOG_TYPE_DEFAULT, "Feature application updated during last request. Ignoring response and fetching an update", buf, 2u);
  }

  [(PKApplyController *)self nextViewControllerWithCompletion:completionCopy];
LABEL_8:
}

void __86__PKApplyController__handleApplyResponse_originalFeatureApplication_error_completion___block_invoke(void *a1, void *a2)
{
  v3 = a2;
  v10 = v3;
  if (v3 && ([v3 applicationState], PKFeatureApplicationStateIsValidToPresent()))
  {
    v4 = [PKApplyControllerConfiguration alloc];
    WeakRetained = objc_loadWeakRetained((a1[4] + 16));
    v6 = [(PKApplyControllerConfiguration *)v4 initWithSetupDelegate:WeakRetained context:*(a1[4] + 264) provisioningController:*(a1[4] + 272)];

    [(PKApplyControllerConfiguration *)v6 setFeatureApplication:v10];
  }

  else
  {
    v7 = [PKApplyControllerConfiguration alloc];
    v8 = objc_loadWeakRetained((a1[4] + 16));
    v6 = [(PKApplyControllerConfiguration *)v7 initWithSetupDelegate:v8 context:*(a1[4] + 264) provisioningController:*(a1[4] + 272)];

    [(PKApplyControllerConfiguration *)v6 setApplicationType:3];
    [(PKApplyControllerConfiguration *)v6 setFeature:*(a1[4] + 216)];
    [(PKApplyControllerConfiguration *)v6 setReferenceIdentifier:a1[5]];
  }

  v9 = [[PKApplyController alloc] initWithApplyConfiguration:v6];

  [(PKApplyController *)v9 setParentFlowController:a1[4]];
  [(PKApplyController *)v9 setAnalyticsExistingAccountType:*(a1[4] + 328)];
  [(PKApplyController *)v9 nextViewControllerWithCompletion:a1[6]];
}

void __86__PKApplyController__handleApplyResponse_originalFeatureApplication_error_completion___block_invoke_2(uint64_t a1)
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __86__PKApplyController__handleApplyResponse_originalFeatureApplication_error_completion___block_invoke_3;
  v2[3] = &unk_1E8010E20;
  v4 = *(a1 + 40);
  v3 = *(a1 + 32);
  dispatch_async(MEMORY[0x1E69E96A0], v2);
}

void __86__PKApplyController__handleApplyResponse_originalFeatureApplication_error_completion___block_invoke_137(uint64_t a1)
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __86__PKApplyController__handleApplyResponse_originalFeatureApplication_error_completion___block_invoke_2_138;
  v2[3] = &unk_1E8010E20;
  v4 = *(a1 + 40);
  v3 = *(a1 + 32);
  dispatch_async(MEMORY[0x1E69E96A0], v2);
}

- (void)reportAnalyticsDictionaryForPage:(id)page pageTag:(id)tag additionalValues:(id)values
{
  valuesCopy = values;
  tagCopy = tag;
  pageCopy = page;
  _defaultSubject = [(PKApplyController *)self _defaultSubject];
  [(PKApplyController *)self reportAnalyticsDictionaryForPage:pageCopy subject:_defaultSubject pageTag:tagCopy error:0 additionalValues:valuesCopy];
}

- (void)reportAnalyticsError:(id)error page:(id)page pageTag:(id)tag additionalValues:(id)values
{
  valuesCopy = values;
  tagCopy = tag;
  pageCopy = page;
  errorCopy = error;
  _defaultSubject = [(PKApplyController *)self _defaultSubject];
  [(PKApplyController *)self reportAnalyticsDictionaryForPage:pageCopy subject:_defaultSubject pageTag:tagCopy error:errorCopy additionalValues:valuesCopy];
}

- (void)reportAnalyticsDictionaryForPage:(id)page subject:(id)subject pageTag:(id)tag error:(id)error additionalValues:(id)values
{
  pageCopy = page;
  subjectCopy = subject;
  tagCopy = tag;
  errorCopy = error;
  valuesCopy = values;
  if (!subjectCopy)
  {
    subjectCopy = [(PKApplyController *)self _defaultSubject];
  }

  if (tagCopy && subjectCopy)
  {
    v16 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v17 = PKFeatureIdentifierToString();
    [v16 setObject:v17 forKey:*MEMORY[0x1E69BA850]];

    v18 = PKFeatureApplicationTypeToString();
    [v16 setObject:v18 forKey:*MEMORY[0x1E69BA1B8]];

    [v16 setObject:tagCopy forKey:*MEMORY[0x1E69BABE8]];
    identifier = [pageCopy identifier];

    if (identifier)
    {
      identifier2 = [pageCopy identifier];
      [v16 setObject:identifier2 forKey:*MEMORY[0x1E69BA1F8]];
    }

    analyticsExistingAccountType = self->_analyticsExistingAccountType;
    if (analyticsExistingAccountType)
    {
      [v16 setObject:analyticsExistingAccountType forKey:*MEMORY[0x1E69BA688]];
    }

    if ([valuesCopy count])
    {
      [v16 addEntriesFromDictionary:valuesCopy];
    }

    if (errorCopy)
    {
      userInfo = [errorCopy userInfo];
      v23 = [userInfo objectForKey:*MEMORY[0x1E696AA08]];

      v24 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%ld", objc_msgSend(v23, "code")];
      v25 = [MEMORY[0x1E69B8540] analyticsErrorTextForError:{objc_msgSend(v23, "code")}];
      [v16 setObject:v24 forKey:*MEMORY[0x1E69BA660]];
      [v16 setObject:v25 forKey:*MEMORY[0x1E69BA668]];
    }

    v26 = MEMORY[0x1E69B8540];
    v27 = [v16 copy];
    [v26 subject:subjectCopy sendEvent:v27];
  }
}

- (void)accountUserInvitationsWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = completionCopy;
  if (completionCopy)
  {
    paymentService = self->_paymentService;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __58__PKApplyController_accountUserInvitationsWithCompletion___block_invoke;
    v7[3] = &unk_1E8016258;
    v8 = completionCopy;
    [(PKPaymentService *)paymentService featureApplicationsForAccountUserInvitationWithCompletion:v7];
  }
}

- (void)featureApplicationsWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = completionCopy;
  if (completionCopy)
  {
    paymentService = self->_paymentService;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __55__PKApplyController_featureApplicationsWithCompletion___block_invoke;
    v7[3] = &unk_1E8016258;
    v8 = completionCopy;
    [(PKPaymentService *)paymentService featureApplicationsForProvisioningWithCompletion:v7];
  }
}

- (void)_prewarmODIAssessmentIfNecessary
{
  featureIdentifier = self->_featureIdentifier;
  if (featureIdentifier == 5)
  {
    if (self->_applyTermsODISession)
    {
      return;
    }

    v4 = objc_alloc(MEMORY[0x1E69B89F8]);
    v5 = *MEMORY[0x1E6998630];
    v6 = PKPassKitCoreBundle();
    v7 = [v4 initWithServiceProviderIdentifier:v5 locationBundle:v6];
    applyTermsODISession = self->_applyTermsODISession;
    self->_applyTermsODISession = v7;

    [(PKODIServiceProviderAssessment *)self->_applyTermsODISession startAssessment];
    mEMORY[0x1E69B8568] = [MEMORY[0x1E69B8568] sharedInstance];
    appleAccountInformation = [mEMORY[0x1E69B8568] appleAccountInformation];

    mEMORY[0x1E69B8568]2 = [MEMORY[0x1E69B8568] sharedInstance];
    appleAccountInformation2 = [mEMORY[0x1E69B8568]2 appleAccountInformation];
    aaDSID = [appleAccountInformation2 aaDSID];

    firstName = [appleAccountInformation firstName];
    lastName = [appleAccountInformation lastName];
    primaryEmailAddress = [appleAccountInformation primaryEmailAddress];
    v17 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v18 = v17;
    if (aaDSID)
    {
      [v17 setObject:aaDSID forKey:*MEMORY[0x1E6998530]];
    }

    if (firstName)
    {
      [v18 setObject:firstName forKey:*MEMORY[0x1E6998518]];
    }

    if (lastName)
    {
      [v18 setObject:lastName forKey:*MEMORY[0x1E6998540]];
    }

    if (primaryEmailAddress)
    {
      [v18 setObject:primaryEmailAddress forKey:*MEMORY[0x1E6998500]];
    }

    v19 = objc_alloc_init(MEMORY[0x1E69983B8]);
    [v19 setAttributes:v18];
    [(PKODIServiceProviderAssessment *)self->_applyTermsODISession updateAssessment:v19];

    featureIdentifier = self->_featureIdentifier;
  }

  if (featureIdentifier == 3)
  {
    v27 = PKPassKitCoreBundle();
    if (!self->_createApplicationODISession)
    {
      v20 = objc_alloc(MEMORY[0x1E69B89F8]);
      v21 = [v20 initWithServiceProviderIdentifier:*MEMORY[0x1E6998568] locationBundle:v27];
      createApplicationODISession = self->_createApplicationODISession;
      self->_createApplicationODISession = v21;

      [(PKODIServiceProviderAssessment *)self->_createApplicationODISession startAssessment];
    }

    if (!self->_submitApplicationODISession)
    {
      v23 = *MEMORY[0x1E6998570];
      if (self->_applicationType == 4)
      {
        v24 = *MEMORY[0x1E6998620];

        v23 = v24;
      }

      v25 = [objc_alloc(MEMORY[0x1E69B89F8]) initWithServiceProviderIdentifier:v23 locationBundle:v27];
      submitApplicationODISession = self->_submitApplicationODISession;
      self->_submitApplicationODISession = v25;

      [(PKODIServiceProviderAssessment *)self->_submitApplicationODISession startAssessment];
    }
  }
}

- (void)_getODIAssessmentForSession:(id)session completion:(id)completion
{
  sessionCopy = session;
  completionCopy = completion;
  if (completionCopy)
  {
    workQueue = self->_workQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __60__PKApplyController__getODIAssessmentForSession_completion___block_invoke;
    block[3] = &unk_1E8014918;
    v10 = sessionCopy;
    selfCopy = self;
    v12 = completionCopy;
    dispatch_async(workQueue, block);
  }
}

void __60__PKApplyController__getODIAssessmentForSession_completion___block_invoke(id *a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = a1[4];
  if (v2)
  {
    v3 = a1[5];
    v4 = *(v3 + 25);
    if (v4)
    {
      v5 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v15 = v4;
        _os_log_impl(&dword_1BD026000, v5, OS_LOG_TYPE_DEFAULT, "There is already an ODISession inflight. This is an error %@", buf, 0xCu);
      }

      v2 = a1[4];
      v3 = a1[5];
    }

    objc_storeStrong(v3 + 25, v2);
    objc_initWeak(buf, a1[5]);
    [a1[4] computeAssessment];
    v6 = a1[4];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __60__PKApplyController__getODIAssessmentForSession_completion___block_invoke_148;
    v7[3] = &unk_1E801B120;
    objc_copyWeak(&v10, buf);
    v8 = a1[4];
    v9 = a1[6];
    [v6 waitForAssessmentWithContinueBlock:v7];

    objc_destroyWeak(&v10);
    objc_destroyWeak(buf);
  }

  else
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __60__PKApplyController__getODIAssessmentForSession_completion___block_invoke_2;
    block[3] = &unk_1E8010DD0;
    v12 = 0;
    v13 = a1[6];
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

uint64_t __60__PKApplyController__getODIAssessmentForSession_completion___block_invoke_2(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) serviceIdentifier];
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&dword_1BD026000, v2, OS_LOG_TYPE_DEFAULT, "The ODI assessment for %@ is not defined.", &v5, 0xCu);
  }

  return (*(*(a1 + 40) + 16))();
}

void __60__PKApplyController__getODIAssessmentForSession_completion___block_invoke_148(id *a1, void *a2, char a3)
{
  v5 = a2;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __60__PKApplyController__getODIAssessmentForSession_completion___block_invoke_2_149;
  block[3] = &unk_1E801B0F8;
  objc_copyWeak(&v12, a1 + 6);
  v9 = a1[4];
  v6 = a1[5];
  v10 = v5;
  v11 = v6;
  v13 = a3;
  v7 = v5;
  dispatch_async(MEMORY[0x1E69E96A0], block);

  objc_destroyWeak(&v12);
}

void __60__PKApplyController__getODIAssessmentForSession_completion___block_invoke_2_149(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    v3 = *(a1 + 48);
    if (!v3)
    {
      goto LABEL_6;
    }

    v4 = WeakRetained;
    (*(v3 + 16))(v3, *(a1 + 40), *(a1 + 64));
  }

  else
  {
    v4 = 0;
    [*(a1 + 32) provideSessionFeedback:1];
  }

  WeakRetained = v4;
LABEL_6:
}

- (void)_sendODISessionFeedbackforInflightSessionIfNecessary
{
  inflightODISession = self->_inflightODISession;
  if (inflightODISession)
  {
    if (self->_endedApplyFlow)
    {
      v4 = 1;
    }

    else
    {
      currentAssessmentDidTimeout = [(PKODIServiceProviderAssessment *)inflightODISession currentAssessmentDidTimeout];
      inflightODISession = self->_inflightODISession;
      if (currentAssessmentDidTimeout)
      {
        v4 = 2;
      }

      else
      {
        v4 = 0;
      }
    }

    [(PKODIServiceProviderAssessment *)inflightODISession provideSessionFeedback:v4];
    v6 = self->_inflightODISession;
    self->_inflightODISession = 0;
  }
}

- (void)_startCoreIDVSessionWithStepInfo:(id)info completion:(id)completion
{
  v54 = *MEMORY[0x1E69E9840];
  infoCopy = info;
  self->_documentUploadType = 1;
  v7 = MEMORY[0x1E695DF90];
  completionCopy = completion;
  v8 = objc_alloc_init(v7);
  webServiceSessionMarker = [(PKPaymentWebService *)self->_webService webServiceSessionMarker];
  if (webServiceSessionMarker)
  {
    [v8 setObject:webServiceSessionMarker forKey:*MEMORY[0x1E6997E18]];
  }

  v42 = webServiceSessionMarker;
  _appleAccountInformation = [(PKPaymentWebService *)self->_webService _appleAccountInformation];
  authorizationHeader = [_appleAccountInformation authorizationHeader];

  if (authorizationHeader)
  {
    [v8 setObject:authorizationHeader forKey:*MEMORY[0x1E6997E20]];
  }

  referrerIdentifier = [(PKPaymentProvisioningController *)self->_provisioningController referrerIdentifier];
  if (referrerIdentifier)
  {
    [v8 setObject:referrerIdentifier forKey:*MEMORY[0x1E69BB8D8]];
  }

  conversationIdentifier = [infoCopy conversationIdentifier];
  if (conversationIdentifier)
  {
    [v8 setObject:conversationIdentifier forKey:*MEMORY[0x1E69BB8D0]];
  }

  targetDevice = [(PKPaymentWebService *)self->_webService targetDevice];
  v37 = targetDevice;
  if (!targetDevice)
  {
    targetDevice = MEMORY[0x1E69B91E0];
  }

  [targetDevice secureElementIdentifiers];
  v36 = v39 = referrerIdentifier;
  v15 = [v36 componentsJoinedByString:{@", "}];
  if (v15)
  {
    [v8 setObject:v15 forKey:*MEMORY[0x1E69BB8E0]];
  }

  v35 = v15;
  v41 = authorizationHeader;
  coreIDVServiceProviderName = [infoCopy coreIDVServiceProviderName];
  v17 = coreIDVServiceProviderName;
  if (coreIDVServiceProviderName)
  {
    coreIDVServiceProviderName2 = coreIDVServiceProviderName;
  }

  else
  {
    coreIDVServiceProviderName2 = [(PKFeatureApplication *)self->_featureApplication coreIDVServiceProviderName];
  }

  v19 = coreIDVServiceProviderName2;
  v38 = conversationIdentifier;

  v43 = infoCopy;
  coreIDVTier = [infoCopy coreIDVTier];
  v21 = PKCurrentRegion();
  applicationBaseURL = [(PKFeatureApplication *)self->_featureApplication applicationBaseURL];
  v23 = [applicationBaseURL URLByAppendingPathComponent:@"v1"];

  v24 = [v23 URLByAppendingPathComponent:@"applications"];

  applicationIdentifier = [(PKFeatureApplication *)self->_featureApplication applicationIdentifier];
  v26 = [v24 URLByAppendingPathComponent:applicationIdentifier];

  absoluteString = [v26 absoluteString];
  v28 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138413314;
    v45 = v8;
    v46 = 2112;
    v47 = absoluteString;
    v48 = 2112;
    v49 = v19;
    v50 = 2112;
    v51 = coreIDVTier;
    v52 = 2112;
    v53 = v21;
    _os_log_impl(&dword_1BD026000, v28, OS_LOG_TYPE_DEFAULT, "Creating DIVerificationSession withHeaders:%@ serviceURL:%@ name:%@ tier:%@ region: %@", buf, 0x34u);
  }

  v29 = objc_alloc(MEMORY[0x1E6997E10]);
  v30 = [v8 copy];
  v31 = [v29 initWithName:v19 tier:coreIDVTier serviceUrl:absoluteString httpHeaders:v30];

  [v31 setRegionCode:v21];
  v32 = [objc_alloc(MEMORY[0x1E6997E08]) initWithContext:v31];
  idVerificationSession = self->_idVerificationSession;
  self->_idVerificationSession = v32;

  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
  {
    v34 = self->_idVerificationSession;
    *buf = 138412290;
    v45 = v34;
    _os_log_impl(&dword_1BD026000, v28, OS_LOG_TYPE_DEFAULT, "Created DIVerificationSession: %@", buf, 0xCu);
  }

  [(PKApplyController *)self _performCoreIDVNextStepWithPage:0 completion:completionCopy];
}

- (void)_submitCoreIDVFieldsPage:(id)page completion:(id)completion
{
  v22 = *MEMORY[0x1E69E9840];
  pageCopy = page;
  completionCopy = completion;
  v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  fieldModel = [pageCopy fieldModel];
  paymentSetupFields = [fieldModel paymentSetupFields];

  v11 = [paymentSetupFields countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v18;
    do
    {
      v14 = 0;
      do
      {
        if (*v18 != v13)
        {
          objc_enumerationMutation(paymentSetupFields);
        }

        submissionAttribute = [*(*(&v17 + 1) + 8 * v14) submissionAttribute];
        if (submissionAttribute)
        {
          [v8 addObject:submissionAttribute];
        }

        ++v14;
      }

      while (v12 != v14);
      v12 = [paymentSetupFields countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v12);
  }

  if ([v8 count])
  {
    v16 = objc_alloc_init(MEMORY[0x1E6997DF8]);
    [v16 setPage:{objc_msgSend(pageCopy, "pageNumber")}];
    [v16 setAttributes:v8];
  }

  else
  {
    v16 = 0;
  }

  [(PKApplyController *)self _performCoreIDVNextStepWithPage:v16 completion:completionCopy];
}

- (void)_submitCoreIDVDocumentsPage:(id)page selectedDocument:(id)document frontImageData:(id)data backImageData:(id)imageData completion:(id)completion
{
  v24[1] = *MEMORY[0x1E69E9840];
  pageCopy = page;
  documentCopy = document;
  dataCopy = data;
  imageDataCopy = imageData;
  completionCopy = completion;
  v17 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if (dataCopy)
  {
    v18 = objc_alloc_init(MEMORY[0x1E6997D68]);
    [v18 setCurrentValue:dataCopy];
    [v18 setFormat:2];
    [v17 addObject:v18];
  }

  if (imageDataCopy)
  {
    v19 = objc_alloc_init(MEMORY[0x1E6997D68]);
    [v19 setCurrentValue:imageDataCopy];
    [v19 setFormat:2];
    [v17 addObject:v19];
  }

  documentAttribute = [documentCopy documentAttribute];
  [documentAttribute setDocType:1];
  v21 = [v17 copy];
  [documentAttribute setCurrentValue:v21];

  if (documentAttribute)
  {
    v22 = objc_alloc_init(MEMORY[0x1E6997DF8]);
    [v22 setPage:{objc_msgSend(pageCopy, "pageNumber")}];
    v24[0] = documentAttribute;
    v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:1];
    [v22 setAttributes:v23];
  }

  else
  {
    v22 = 0;
  }

  [(PKApplyController *)self _performCoreIDVNextStepWithPage:v22 completion:completionCopy];
}

- (void)_performCoreIDVNextStepWithPage:(id)page completion:(id)completion
{
  v21 = *MEMORY[0x1E69E9840];
  pageCopy = page;
  completionCopy = completion;
  v8 = completionCopy;
  if (self->_idVerificationSession)
  {
    v9 = mach_absolute_time();
    v10 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = [pageCopy description];
      *buf = 138412290;
      v20 = v11;
      _os_log_impl(&dword_1BD026000, v10, OS_LOG_TYPE_DEFAULT, "Calling performVerificationWithAttributes page: %@", buf, 0xCu);
    }

    idVerificationSession = self->_idVerificationSession;
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __64__PKApplyController__performCoreIDVNextStepWithPage_completion___block_invoke_165;
    v14[3] = &unk_1E801B148;
    v16 = v9;
    v14[4] = self;
    v15 = v8;
    [(DIVerificationSession *)idVerificationSession performVerificationWithAttributes:pageCopy completion:v14];
    v13 = v15;
  }

  else
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __64__PKApplyController__performCoreIDVNextStepWithPage_completion___block_invoke;
    block[3] = &unk_1E8010B50;
    v18 = completionCopy;
    dispatch_async(MEMORY[0x1E69E96A0], block);
    v13 = v18;
  }
}

uint64_t __64__PKApplyController__performCoreIDVNextStepWithPage_completion___block_invoke(uint64_t a1)
{
  v2 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_1BD026000, v2, OS_LOG_TYPE_DEFAULT, "Error: No coreIDV session", v4, 2u);
  }

  return (*(*(a1 + 32) + 16))();
}

void __64__PKApplyController__performCoreIDVNextStepWithPage_completion___block_invoke_165(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v37[1] = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a4;
  mach_absolute_time();
  PKSecondsFromMachTimeInterval();
  v10 = v9;
  v11 = *MEMORY[0x1E69B9F58];
  v36 = @"duration";
  v12 = [MEMORY[0x1E696AD98] numberWithDouble:?];
  v37[0] = v12;
  v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v37 forKeys:&v36 count:1];
  MEMORY[0x1BFB41980](v11, v13);

  v14 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = [v7 description];
    *buf = 134219010;
    v27 = v10;
    v28 = 2112;
    v29 = v8;
    v30 = 2112;
    v31 = v15;
    v32 = 2048;
    v33 = a3;
    v34 = 2048;
    v35 = [v7 page];
    _os_log_impl(&dword_1BD026000, v14, OS_LOG_TYPE_DEFAULT, "Callback from performVerificationWithAttributes timetaken(seconds): %f error: %@ attributes: %@ totalPageCount: %lu page: %lu", buf, 0x34u);
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __64__PKApplyController__performCoreIDVNextStepWithPage_completion___block_invoke_170;
  block[3] = &unk_1E80176D0;
  v16 = *(a1 + 32);
  v17 = *(a1 + 40);
  v21 = v8;
  v22 = v16;
  v23 = v7;
  v24 = v17;
  v25 = a3;
  v18 = v7;
  v19 = v8;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

uint64_t __64__PKApplyController__performCoreIDVNextStepWithPage_completion___block_invoke_170(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v2 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1BD026000, v2, OS_LOG_TYPE_DEFAULT, "Error: performVerification failed", buf, 2u);
    }

    return [*(a1 + 40) _handleResponseError:*(a1 + 32) completion:*(a1 + 56)];
  }

  else if (*(a1 + 48))
  {
    v4 = *(a1 + 40);

    return [v4 _handleCoreIDVPage:? totalPageCount:? error:? completion:?];
  }

  else
  {
    v5 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&dword_1BD026000, v5, OS_LOG_TYPE_DEFAULT, "No attributes performing coreIDV share", v6, 2u);
    }

    return [*(a1 + 40) _performCoreIDVShareWithCompletion:*(a1 + 56)];
  }
}

- (void)_handleCoreIDVPage:(id)page totalPageCount:(int64_t)count error:(id)error completion:(id)completion
{
  v76 = *MEMORY[0x1E69E9840];
  pageCopy = page;
  errorCopy = error;
  completionCopy = completion;
  v12 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1BD026000, v12, OS_LOG_TYPE_DEFAULT, "Preparing attributes for display", buf, 2u);
  }

  attributes = [pageCopy attributes];
  v14 = [attributes count];
  if (v14)
  {
    v15 = v14;
    selfCopy = self;
    v50 = completionCopy;
    v51 = errorCopy;
    v52 = pageCopy;
    v53 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v14];
    v16 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v15];
    v67 = 0u;
    v68 = 0u;
    v69 = 0u;
    v70 = 0u;
    v48 = attributes;
    v17 = attributes;
    v18 = [v17 countByEnumeratingWithState:&v67 objects:v75 count:16];
    v55 = v16;
    if (v18)
    {
      v19 = v18;
      v20 = *v68;
      do
      {
        for (i = 0; i != v19; ++i)
        {
          if (*v68 != v20)
          {
            objc_enumerationMutation(v17);
          }

          v22 = *(*(&v67 + 1) + 8 * i);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [v16 addObject:v22];
          }

          else
          {
            v23 = [MEMORY[0x1E69B8DD0] paymentSetupFieldWithDIAttribute:v22];
            identifier = [v23 identifier];
            v25 = identifier;
            if (v23 && [identifier length])
            {
              [v53 addObject:v23];
            }

            else
            {
              if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412290;
                v74 = v22;
                _os_log_impl(&dword_1BD026000, v12, OS_LOG_TYPE_DEFAULT, "Could not generate field with malformed attribute: %@", buf, 0xCu);
              }
            }

            v16 = v55;
          }
        }

        v19 = [v17 countByEnumeratingWithState:&v67 objects:v75 count:16];
      }

      while (v19);
    }

    if ([v16 count])
    {
      v26 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v63 = 0u;
      v64 = 0u;
      v65 = 0u;
      v66 = 0u;
      obj = v16;
      v57 = [obj countByEnumeratingWithState:&v63 objects:v72 count:16];
      if (v57)
      {
        v56 = *v64;
        do
        {
          v27 = 0;
          do
          {
            if (*v64 != v56)
            {
              objc_enumerationMutation(obj);
            }

            v58 = v27;
            v28 = *(*(&v63 + 1) + 8 * v27);
            acceptableDocTypes = [v28 acceptableDocTypes];
            v59 = 0u;
            v60 = 0u;
            v61 = 0u;
            v62 = 0u;
            acceptableDocs = [v28 acceptableDocs];
            v31 = [acceptableDocs countByEnumeratingWithState:&v59 objects:v71 count:16];
            if (v31)
            {
              v32 = v31;
              v33 = *v60;
              do
              {
                for (j = 0; j != v32; ++j)
                {
                  if (*v60 != v33)
                  {
                    objc_enumerationMutation(acceptableDocs);
                  }

                  countryCode = [*(*(&v59 + 1) + 8 * j) countryCode];
                  if ((acceptableDocTypes & 2) != 0)
                  {
                    v36 = objc_alloc_init(MEMORY[0x1E69B8808]);
                    [v36 setCountryCode:countryCode];
                    [v36 setDocumentType:1];
                    [v36 setDocumentAttribute:v28];
                    [v26 addObject:v36];
                  }

                  if ((acceptableDocTypes & 4) != 0)
                  {
                    v37 = objc_alloc_init(MEMORY[0x1E69B8808]);
                    [v37 setCountryCode:countryCode];
                    [v37 setDocumentType:2];
                    [v37 setDocumentAttribute:v28];
                    [v26 addObject:v37];
                  }
                }

                v32 = [acceptableDocs countByEnumeratingWithState:&v59 objects:v71 count:16];
              }

              while (v32);
            }

            v27 = v58 + 1;
          }

          while (v58 + 1 != v57);
          v57 = [obj countByEnumeratingWithState:&v63 objects:v72 count:16];
        }

        while (v57);
      }

      v38 = objc_alloc_init(MEMORY[0x1E69B85C8]);
      pageCopy = v52;
      [v38 setPageNumber:{objc_msgSend(v52, "page")}];
      [v38 setAcceptableDocuments:v26];
      v39 = [PKApplyDocumentSubmissionController alloc];
      v40 = selfCopy;
      WeakRetained = objc_loadWeakRetained(&selfCopy->_setupDelegate);
      v42 = [(PKApplyDocumentSubmissionController *)v39 initWithController:selfCopy setupDelegate:WeakRetained documentPage:v38];

      nextViewController = [(PKApplyDocumentSubmissionController *)v42 nextViewController];
      [(NSMutableArray *)selfCopy->_viewControllers addObject:nextViewController];

      attributes = v48;
      v44 = v53;
      v16 = v55;
    }

    else
    {
      v26 = objc_alloc_init(MEMORY[0x1E69B85E0]);
      pageCopy = v52;
      [v26 setPageNumber:{objc_msgSend(v52, "page")}];
      title = [v52 title];
      [v26 setTitle:title];

      subTitle = [v52 subTitle];
      [v26 setSubtitle:subTitle];

      v44 = v53;
      v38 = [objc_alloc(MEMORY[0x1E69B8E38]) initWithPaymentSetupFields:v53];
      [v26 setFieldModel:v38];
      v40 = selfCopy;
      v42 = [(PKApplyController *)selfCopy _fieldsViewControllerForPage:v26];
      [(NSMutableArray *)selfCopy->_viewControllers addObject:v42];
    }

    _nextQueuedViewController = [(PKApplyController *)v40 _nextQueuedViewController];
    completionCopy = v50;
    (*(v50 + 2))(v50, _nextQueuedViewController, 0);

    errorCopy = v51;
  }

  else
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1BD026000, v12, OS_LOG_TYPE_DEFAULT, "Error: no attributes to display", buf, 2u);
    }

    [(PKApplyController *)self _handleResponseError:errorCopy completion:completionCopy];
  }
}

- (void)_performCoreIDVShareWithCompletion:(id)completion
{
  v20[1] = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  v5 = completionCopy;
  if (self->_idVerificationSession)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v7 = PKRequestIDHeaderValue();
    if ([v7 length])
    {
      v19 = @"x-request-id";
      v20[0] = v7;
      v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:&v19 count:1];
      [v6 setObject:v8 forKey:*MEMORY[0x1E6997E28]];
    }

    v9 = mach_absolute_time();
    v10 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v18 = v6;
      _os_log_impl(&dword_1BD026000, v10, OS_LOG_TYPE_DEFAULT, "Calling shareVerificationResultWithOptions withOptions: %@", buf, 0xCu);
    }

    idVerificationSession = self->_idVerificationSession;
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __56__PKApplyController__performCoreIDVShareWithCompletion___block_invoke_181;
    v12[3] = &unk_1E801B170;
    v14 = v9;
    v12[4] = self;
    v13 = v5;
    [(DIVerificationSession *)idVerificationSession shareVerificationResultWithOptions:v6 completion:v12];
  }

  else
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __56__PKApplyController__performCoreIDVShareWithCompletion___block_invoke;
    block[3] = &unk_1E8010B50;
    v16 = completionCopy;
    dispatch_async(MEMORY[0x1E69E96A0], block);
    v6 = v16;
  }
}

uint64_t __56__PKApplyController__performCoreIDVShareWithCompletion___block_invoke(uint64_t a1)
{
  v2 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_1BD026000, v2, OS_LOG_TYPE_DEFAULT, "Error: No coreIDV session", v4, 2u);
  }

  return (*(*(a1 + 32) + 16))();
}

void __56__PKApplyController__performCoreIDVShareWithCompletion___block_invoke_181(uint64_t a1, void *a2, void *a3)
{
  v28[1] = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  mach_absolute_time();
  PKSecondsFromMachTimeInterval();
  v8 = v7;
  v9 = *MEMORY[0x1E69B9F50];
  v27 = @"duration";
  v10 = [MEMORY[0x1E696AD98] numberWithDouble:?];
  v28[0] = v10;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v28 forKeys:&v27 count:1];
  MEMORY[0x1BFB41980](v9, v11);

  v12 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218498;
    v22 = v8;
    v23 = 2112;
    v24 = v5;
    v25 = 2112;
    v26 = v6;
    _os_log_impl(&dword_1BD026000, v12, OS_LOG_TYPE_DEFAULT, "Callback from shareVerificationResultWithOptions timeTaken(seconds): %f withResultingIdentifier: %@ error: %@", buf, 0x20u);
  }

  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __56__PKApplyController__performCoreIDVShareWithCompletion___block_invoke_182;
  v16[3] = &unk_1E8011D78;
  v17 = v5;
  v18 = v6;
  v13 = *(a1 + 40);
  v19 = *(a1 + 32);
  v20 = v13;
  v14 = v6;
  v15 = v5;
  dispatch_async(MEMORY[0x1E69E96A0], v16);
}

void __56__PKApplyController__performCoreIDVShareWithCompletion___block_invoke_182(uint64_t a1)
{
  v2 = [*(a1 + 32) UUIDString];
  if ([v2 length] && !*(a1 + 40))
  {
    v4 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&dword_1BD026000, v4, OS_LOG_TYPE_DEFAULT, "Requesting next steps from the server", v8, 2u);
    }

    [*(a1 + 48) _invalidateIDVSession];
    v5 = *(a1 + 48);
    v6 = *(v5 + 144);
    *(v5 + 144) = 0;

    objc_storeStrong((*(a1 + 48) + 104), v2);
    v7 = objc_alloc_init(MEMORY[0x1E69B8600]);
    [*(a1 + 48) _performApplyWithRequest:v7 completion:*(a1 + 56)];
  }

  else
  {
    v3 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1BD026000, v3, OS_LOG_TYPE_DEFAULT, "Error: No valid nextStepToken found", buf, 2u);
    }

    [*(a1 + 48) _handleResponseError:*(a1 + 40) completion:*(a1 + 56)];
  }
}

- (void)_submitDocumentsPage:(id)page selectedDocument:(id)document frontImageData:(id)data backImageData:(id)imageData completion:(id)completion
{
  completionCopy = completion;
  v12 = MEMORY[0x1E69B8610];
  imageDataCopy = imageData;
  dataCopy = data;
  documentCopy = document;
  v16 = objc_alloc_init(v12);
  applicationIdentifier = [(PKFeatureApplication *)self->_featureApplication applicationIdentifier];
  [v16 setApplicationIdentifier:applicationIdentifier];

  [v16 setFeatureIdentifier:self->_featureIdentifier];
  applicationBaseURL = [(PKFeatureApplication *)self->_featureApplication applicationBaseURL];
  [v16 setBaseURL:applicationBaseURL];

  [v16 setFrontImageData:dataCopy];
  [v16 setBackImageData:imageDataCopy];

  countryCode = [documentCopy countryCode];
  [v16 setDocumentCountryCode:countryCode];

  documentType = [documentCopy documentType];
  [v16 setDocumentType:documentType];
  [v16 setCertificates:self->_encryptionCertificates];
  [v16 setChannel:self->_channel];
  ++self->_runningApplicationUpdates;
  v21 = [(PKFeatureApplication *)self->_featureApplication copy];
  webService = self->_webService;
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __99__PKApplyController__submitDocumentsPage_selectedDocument_frontImageData_backImageData_completion___block_invoke;
  v25[3] = &unk_1E801AF68;
  v25[4] = self;
  v26 = v21;
  v27 = completionCopy;
  v23 = completionCopy;
  v24 = v21;
  [(PKPaymentWebService *)webService submitDocumentsWithRequest:v16 completion:v25];
}

void __99__PKApplyController__submitDocumentsPage_selectedDocument_frontImageData_backImageData_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __99__PKApplyController__submitDocumentsPage_selectedDocument_frontImageData_backImageData_completion___block_invoke_2;
  block[3] = &unk_1E80135E0;
  v7 = *(a1 + 40);
  block[4] = *(a1 + 32);
  v11 = v5;
  v12 = v7;
  v13 = v6;
  v14 = *(a1 + 48);
  v8 = v6;
  v9 = v5;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __99__PKApplyController__submitDocumentsPage_selectedDocument_frontImageData_backImageData_completion___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  v4 = *(a1 + 56);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __99__PKApplyController__submitDocumentsPage_selectedDocument_frontImageData_backImageData_completion___block_invoke_3;
  v5[3] = &unk_1E8010CC0;
  v5[4] = v1;
  v6 = *(a1 + 64);
  [v1 _handleApplyResponse:v2 originalFeatureApplication:v3 error:v4 completion:v5];
}

uint64_t __99__PKApplyController__submitDocumentsPage_selectedDocument_frontImageData_backImageData_completion___block_invoke_3(uint64_t a1)
{
  --*(*(a1 + 32) + 160);
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)_submitDocumentPageWithCoreIDVImageUpload:(id)upload selectedDocument:(id)document frontImageData:(id)data backImageData:(id)imageData completion:(id)completion
{
  v51[2] = *MEMORY[0x1E69E9840];
  uploadCopy = upload;
  documentCopy = document;
  dataCopy = data;
  imageDataCopy = imageData;
  completionCopy = completion;
  v25 = dataCopy;
  v16 = [objc_alloc(MEMORY[0x1E6997E00]) initWithData:dataCopy assetType:0];
  v17 = [objc_alloc(MEMORY[0x1E6997E00]) initWithData:imageDataCopy assetType:1];
  v51[0] = v16;
  v51[1] = v17;
  v27 = [MEMORY[0x1E695DEC8] arrayWithObjects:v51 count:2];
  imageCaptureEncryptionCertificates = [uploadCopy imageCaptureEncryptionCertificates];
  imageCaptureEncryptionVersion = [uploadCopy imageCaptureEncryptionVersion];
  v20 = imageCaptureEncryptionVersion;
  if (!imageCaptureEncryptionCertificates)
  {
    v24 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1BD026000, v24, OS_LOG_TYPE_DEFAULT, "Error: coreIDV docment CK update requires certifiates.", buf, 2u);
    }

    goto LABEL_9;
  }

  if (!imageCaptureEncryptionVersion)
  {
    v24 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1BD026000, v24, OS_LOG_TYPE_DEFAULT, "Error: coreIDV docment CK update requires encryptionVersion.", buf, 2u);
    }

LABEL_9:

    [(PKApplyController *)self _handleResponseError:0 completion:completionCopy];
    goto LABEL_10;
  }

  v21 = objc_alloc_init(MEMORY[0x1E69B8658]);
  *buf = 0;
  v46 = buf;
  v47 = 0x3032000000;
  v48 = __Block_byref_object_copy__31;
  v49 = __Block_byref_object_dispose__31;
  v50 = objc_alloc_init(MEMORY[0x1E69B8610]);
  v38[0] = MEMORY[0x1E69E9820];
  v38[1] = 3221225472;
  v38[2] = __120__PKApplyController__submitDocumentPageWithCoreIDVImageUpload_selectedDocument_frontImageData_backImageData_completion___block_invoke;
  v38[3] = &unk_1E801B1E8;
  v39 = imageCaptureEncryptionCertificates;
  v40 = v20;
  v44 = buf;
  v41 = v27;
  selfCopy = self;
  v43 = documentCopy;
  [v21 addOperation:v38];
  v37[0] = MEMORY[0x1E69E9820];
  v37[1] = 3221225472;
  v37[2] = __120__PKApplyController__submitDocumentPageWithCoreIDVImageUpload_selectedDocument_frontImageData_backImageData_completion___block_invoke_192;
  v37[3] = &unk_1E8016750;
  v37[4] = self;
  v37[5] = buf;
  [v21 addOperation:v37];
  v35[0] = 0;
  v35[1] = v35;
  v35[2] = 0x3032000000;
  v35[3] = __Block_byref_object_copy__31;
  v35[4] = __Block_byref_object_dispose__31;
  v36 = 0;
  v33[0] = 0;
  v33[1] = v33;
  v33[2] = 0x3032000000;
  v33[3] = __Block_byref_object_copy__31;
  v33[4] = __Block_byref_object_dispose__31;
  v34 = 0;
  v32[0] = MEMORY[0x1E69E9820];
  v32[1] = 3221225472;
  v32[2] = __120__PKApplyController__submitDocumentPageWithCoreIDVImageUpload_selectedDocument_frontImageData_backImageData_completion___block_invoke_3_194;
  v32[3] = &unk_1E8012DF8;
  v32[4] = self;
  v32[5] = buf;
  v32[6] = v35;
  v32[7] = v33;
  [v21 addOperation:v32];
  null = [MEMORY[0x1E695DFB0] null];
  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = __120__PKApplyController__submitDocumentPageWithCoreIDVImageUpload_selectedDocument_frontImageData_backImageData_completion___block_invoke_7;
  v28[3] = &unk_1E801AD60;
  v29 = completionCopy;
  v30 = v35;
  v31 = v33;
  v23 = [v21 evaluateWithInput:null completion:v28];

  _Block_object_dispose(v33, 8);
  _Block_object_dispose(v35, 8);

  _Block_object_dispose(buf, 8);
LABEL_10:
}

void __120__PKApplyController__submitDocumentPageWithCoreIDVImageUpload_selectedDocument_frontImageData_backImageData_completion___block_invoke(void *a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = [objc_alloc(MEMORY[0x1E6997D98]) initWithCertificateChain:a1[4] recipient:@"ivs" encryptionVersion:a1[5]];
  v9 = objc_alloc_init(MEMORY[0x1E6997D90]);
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __120__PKApplyController__submitDocumentPageWithCoreIDVImageUpload_selectedDocument_frontImageData_backImageData_completion___block_invoke_2;
  v15[3] = &unk_1E801B1C0;
  v10 = a1[8];
  v12 = a1[6];
  v11 = a1[7];
  v19 = a1[9];
  v15[4] = v11;
  v17 = v6;
  v18 = v7;
  v16 = v10;
  v13 = v6;
  v14 = v7;
  [v9 uploadDocData:v12 uploadSettings:v8 completion:v15];
}

void __120__PKApplyController__submitDocumentPageWithCoreIDVImageUpload_selectedDocument_frontImageData_backImageData_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __120__PKApplyController__submitDocumentPageWithCoreIDVImageUpload_selectedDocument_frontImageData_backImageData_completion___block_invoke_3;
  block[3] = &unk_1E801B198;
  v14 = v6;
  v15 = v5;
  v18 = *(a1 + 64);
  v12 = *(a1 + 32);
  v7 = *(&v12 + 1);
  v8 = *(a1 + 56);
  *&v9 = *(a1 + 48);
  *(&v9 + 1) = v8;
  v16 = v12;
  v17 = v9;
  v10 = v5;
  v11 = v6;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

uint64_t __120__PKApplyController__submitDocumentPageWithCoreIDVImageUpload_selectedDocument_frontImageData_backImageData_completion___block_invoke_3(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 138412290;
      v13 = v2;
      _os_log_impl(&dword_1BD026000, v3, OS_LOG_TYPE_DEFAULT, "Error: coreIDV CK document uploaded failed %@", &v12, 0xCu);
    }
  }

  if (!*(a1 + 40))
  {
    v4 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v12) = 0;
      _os_log_impl(&dword_1BD026000, v4, OS_LOG_TYPE_DEFAULT, "Error: coreIDV CK document uploaded has no data", &v12, 2u);
    }
  }

  v5 = *(*(*(a1 + 80) + 8) + 40);
  v6 = [*(*(a1 + 48) + 256) applicationIdentifier];
  [v5 setApplicationIdentifier:v6];

  [*(*(*(a1 + 80) + 8) + 40) setFeatureIdentifier:*(*(a1 + 48) + 216)];
  v7 = *(*(*(a1 + 80) + 8) + 40);
  v8 = [*(*(a1 + 48) + 256) applicationBaseURL];
  [v7 setBaseURL:v8];

  [*(*(*(a1 + 80) + 8) + 40) setUploadedDocumentData:*(a1 + 40)];
  [*(*(*(a1 + 80) + 8) + 40) setCertificates:*(*(a1 + 48) + 56)];
  v9 = *(*(*(a1 + 80) + 8) + 40);
  v10 = [*(a1 + 56) countryCode];
  [v9 setDocumentCountryCode:v10];

  [*(*(*(a1 + 80) + 8) + 40) setDocumentType:{objc_msgSend(*(a1 + 56), "documentType")}];
  [*(*(*(a1 + 80) + 8) + 40) setChannel:*(*(a1 + 48) + 232)];
  return (*(*(a1 + 72) + 16))(*(a1 + 72), *(a1 + 64), *(a1 + 32) != 0);
}

void __120__PKApplyController__submitDocumentPageWithCoreIDVImageUpload_selectedDocument_frontImageData_backImageData_completion___block_invoke_192(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  v9 = *(a1 + 32);
  if (*(v9 + 208))
  {
    v10 = *(v9 + 176);
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __120__PKApplyController__submitDocumentPageWithCoreIDVImageUpload_selectedDocument_frontImageData_backImageData_completion___block_invoke_2_193;
    v11[3] = &unk_1E801AC98;
    v14 = *(a1 + 40);
    v13 = v7;
    v12 = v6;
    [v9 _getODIAssessmentForSession:v10 completion:v11];
  }

  else
  {
    (*(v7 + 2))(v7, v6, 0);
  }
}

uint64_t __120__PKApplyController__submitDocumentPageWithCoreIDVImageUpload_selectedDocument_frontImageData_backImageData_completion___block_invoke_2_193(uint64_t a1, uint64_t a2)
{
  [*(*(*(a1 + 48) + 8) + 40) setOdiAssessment:a2];
  v3 = *(*(a1 + 40) + 16);

  return v3();
}

void __120__PKApplyController__submitDocumentPageWithCoreIDVImageUpload_selectedDocument_frontImageData_backImageData_completion___block_invoke_3_194(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  ++*(*(a1 + 32) + 160);
  v8 = [*(*(a1 + 32) + 256) copy];
  v9 = *(a1 + 32);
  v10 = *(v9 + 8);
  v11 = *(*(*(a1 + 40) + 8) + 40);
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __120__PKApplyController__submitDocumentPageWithCoreIDVImageUpload_selectedDocument_frontImageData_backImageData_completion___block_invoke_4;
  v15[3] = &unk_1E801AD10;
  v15[4] = v9;
  v16 = v8;
  v19 = *(a1 + 48);
  v17 = v6;
  v18 = v7;
  v12 = v6;
  v13 = v7;
  v14 = v8;
  [v10 submitDocumentsWithRequest:v11 completion:v15];
}

void __120__PKApplyController__submitDocumentPageWithCoreIDVImageUpload_selectedDocument_frontImageData_backImageData_completion___block_invoke_4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __120__PKApplyController__submitDocumentPageWithCoreIDVImageUpload_selectedDocument_frontImageData_backImageData_completion___block_invoke_5;
  block[3] = &unk_1E801ACE8;
  v7 = *(a1 + 40);
  block[4] = *(a1 + 32);
  v13 = v5;
  v14 = v7;
  v15 = v6;
  v18 = *(a1 + 72);
  v11 = *(a1 + 56);
  v8 = v11;
  v17 = v11;
  v16 = *(a1 + 48);
  v9 = v6;
  v10 = v5;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __120__PKApplyController__submitDocumentPageWithCoreIDVImageUpload_selectedDocument_frontImageData_backImageData_completion___block_invoke_5(uint64_t a1)
{
  [*(a1 + 32) _sendODISessionFeedbackforInflightSessionIfNecessary];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __120__PKApplyController__submitDocumentPageWithCoreIDVImageUpload_selectedDocument_frontImageData_backImageData_completion___block_invoke_6;
  v9[3] = &unk_1E801ACC0;
  v6 = *(a1 + 88);
  v9[4] = v2;
  v12 = v6;
  v8 = *(a1 + 72);
  v7 = v8;
  v11 = v8;
  v10 = *(a1 + 64);
  [v2 _handleApplyResponse:v3 originalFeatureApplication:v4 error:v5 completion:v9];
}

void __120__PKApplyController__submitDocumentPageWithCoreIDVImageUpload_selectedDocument_frontImageData_backImageData_completion___block_invoke_6(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  --*(a1[4] + 160);
  v7 = *(a1[7] + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v12 = v5;

  v9 = *(a1[8] + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
  v11 = v6;

  (*(a1[6] + 16))();
}

uint64_t __120__PKApplyController__submitDocumentPageWithCoreIDVImageUpload_selectedDocument_frontImageData_backImageData_completion___block_invoke_7(void *a1)
{
  result = a1[4];
  if (result)
  {
    return (*(result + 16))(result, *(*(a1[5] + 8) + 40), *(*(a1[6] + 8) + 40));
  }

  return result;
}

- (void)_queueDocumentSubmissionWithNextStepInfo:(id)info
{
  infoCopy = info;
  v5 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1BD026000, v5, OS_LOG_TYPE_DEFAULT, "Preparing documention submission.", buf, 2u);
  }

  pages = [infoCopy pages];
  firstObject = [pages firstObject];

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && (v8 = firstObject) != 0)
  {
    v9 = v8;
    requiresCoreIDVImageCaptureUpload = [v8 requiresCoreIDVImageCaptureUpload];
    v11 = 2;
    if (!requiresCoreIDVImageCaptureUpload)
    {
      v11 = 3;
    }

    self->_documentUploadType = v11;
    v12 = [PKApplyDocumentSubmissionController alloc];
    WeakRetained = objc_loadWeakRetained(&self->_setupDelegate);
    v14 = [(PKApplyDocumentSubmissionController *)v12 initWithController:self setupDelegate:WeakRetained documentPage:v9];

    nextViewController = [(PKApplyDocumentSubmissionController *)v14 nextViewController];
    [(NSMutableArray *)self->_viewControllers addObject:nextViewController];
  }

  else
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v16 = 0;
      _os_log_impl(&dword_1BD026000, v5, OS_LOG_TYPE_DEFAULT, "Error: No document submission page defined.", v16, 2u);
    }

    [(PKApplyController *)self _queueGenericErrorViewController];
  }
}

- (void)_queueInfoFlowWithNextWithPage:(id)page
{
  pageCopy = page;
  v5 = [PKApplyExplanationViewController alloc];
  WeakRetained = objc_loadWeakRetained(&self->_setupDelegate);
  v7 = [(PKApplyExplanationViewController *)v5 initWithController:self setupDelegate:WeakRetained context:self->_context applyPage:pageCopy];

  [(NSMutableArray *)self->_viewControllers addObject:v7];
}

- (void)_queueCompleteFlowWithNextPage:(id)page
{
  pageCopy = page;
  v5 = [PKApplyExplanationViewController alloc];
  WeakRetained = objc_loadWeakRetained(&self->_setupDelegate);
  v7 = [(PKApplyExplanationViewController *)v5 initWithController:self setupDelegate:WeakRetained context:self->_context applyPage:pageCopy];

  [(PKExplanationViewController *)v7 setShowDoneButton:0];
  [(PKExplanationViewController *)v7 setShowCancelButton:0];
  objc_initWeak(&location, self);
  v8 = MEMORY[0x1E69E9820];
  v9 = 3221225472;
  v10 = __52__PKApplyController__queueCompleteFlowWithNextPage___block_invoke;
  v11 = &unk_1E80131F8;
  objc_copyWeak(&v12, &location);
  [(PKApplyExplanationViewController *)v7 setContinueAction:&v8];
  [(NSMutableArray *)self->_viewControllers addObject:v7, v8, v9, v10, v11];
  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);
}

BOOL __52__PKApplyController__queueCompleteFlowWithNextPage___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained endApplyFlow];
  }

  return v2 != 0;
}

- (void)_queueFieldsFlowWithNextStepInfo:(id)info
{
  v18 = *MEMORY[0x1E69E9840];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  pages = [info pages];
  v5 = [pages countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    do
    {
      v8 = 0;
      do
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(pages);
        }

        v9 = *(*(&v13 + 1) + 8 * v8);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v10 = v9;
          v11 = [(PKApplyController *)self _fieldsViewControllerForPage:v10];
          [(NSMutableArray *)self->_viewControllers addObject:v11];
        }

        else
        {
          v11 = PKLogFacilityTypeGetObject();
          if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
          {
            *v12 = 0;
            _os_log_impl(&dword_1BD026000, v11, OS_LOG_TYPE_DEFAULT, "Unexpected type of page found", v12, 2u);
          }
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [pages countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }
}

- (id)_fieldsViewControllerForPage:(id)page
{
  v35 = *MEMORY[0x1E69E9840];
  pageCopy = page;
  if (self->_applicationType == 4 && self->_updateUserInfoSubType == 4)
  {
    v5 = [PKApplyAddBeneficiaryViewController alloc];
    WeakRetained = objc_loadWeakRetained(&self->_setupDelegate);
    v7 = [(PKApplyAddBeneficiaryViewController *)v5 initWithController:self setupDelegate:WeakRetained pageContent:pageCopy];

    goto LABEL_23;
  }

  featureIdentifier = self->_featureIdentifier;
  v9 = [MEMORY[0x1E695DF58] localeWithLocaleIdentifier:@"en_US_POSIX"];
  v10 = [MEMORY[0x1E695DEE8] calendarWithIdentifier:*MEMORY[0x1E695D850]];
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  fieldModel = [pageCopy fieldModel];
  paymentSetupFields = [fieldModel paymentSetupFields];

  v13 = [paymentSetupFields countByEnumeratingWithState:&v30 objects:v34 count:16];
  if (!v13)
  {

LABEL_21:
    v26 = [PKApplyFieldsViewController alloc];
    v24 = objc_loadWeakRetained(&self->_setupDelegate);
    v25 = [(PKApplyFieldsViewController *)v26 initWithController:self setupDelegate:v24 applyPage:pageCopy];
    goto LABEL_22;
  }

  v14 = v13;
  selfCopy = self;
  v29 = pageCopy;
  v15 = 0;
  v16 = *v31;
  do
  {
    for (i = 0; i != v14; ++i)
    {
      if (*v31 != v16)
      {
        objc_enumerationMutation(paymentSetupFields);
      }

      v18 = *(*(&v30 + 1) + 8 * i);
      dateFieldObject = [v18 dateFieldObject];
      pickerFieldObject = [v18 pickerFieldObject];
      v21 = pickerFieldObject;
      if (dateFieldObject)
      {
        v22 = featureIdentifier == 2;
      }

      else
      {
        v22 = 0;
      }

      if (v22)
      {
        [dateFieldObject setCalendar:v10];
        [dateFieldObject setLocale:v9];
      }

      else if (pickerFieldObject)
      {
        v15 |= [pickerFieldObject pickerType] != 0;
      }
    }

    v14 = [paymentSetupFields countByEnumeratingWithState:&v30 objects:v34 count:16];
  }

  while (v14);

  self = selfCopy;
  pageCopy = v29;
  if ((v15 & 1) == 0)
  {
    goto LABEL_21;
  }

  v23 = [PKApplyFieldsCollectionViewController alloc];
  v24 = objc_loadWeakRetained(&selfCopy->_setupDelegate);
  v25 = [(PKApplyCollectionViewController *)v23 initWithController:selfCopy setupDelegate:v24 context:selfCopy->_context applyPage:v29];
LABEL_22:
  v7 = v25;

LABEL_23:

  return v7;
}

- (void)_queueOfferFlowWithPage:(id)page
{
  pageCopy = page;
  preferredLanguage = [(PKApplyController *)self preferredLanguage];
  applicationOfferDetails = [(PKFeatureApplication *)self->_featureApplication applicationOfferDetails];
  installmentConfiguration = self->_installmentConfiguration;
  creditLimit = [applicationOfferDetails creditLimit];
  v8 = [(PKFeatureApplication *)self->_featureApplication hasSufficientOTBForInstallmentConfiguration:self->_installmentConfiguration];
  detailsInfo = [applicationOfferDetails detailsInfo];
  aprForPurchase = [applicationOfferDetails aprForPurchase];
  if (aprForPurchase)
  {
    v11 = objc_alloc_init(MEMORY[0x1E696ADA0]);
    [v11 setNumberStyle:3];
    if (([aprForPurchase pk_isIntegralNumber] & 1) == 0)
    {
      [v11 setMinimumFractionDigits:2];
    }

    v12 = [v11 stringFromNumber:aprForPurchase];

    if (detailsInfo)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v12 = @"-";
    if (detailsInfo)
    {
LABEL_5:
      v13 = objc_alloc_init(MEMORY[0x1E69B8818]);

      title = [detailsInfo title];
      [v13 setTitle:title];

      body = [detailsInfo body];
      [v13 setBody:body];

      primaryActionTitle = [detailsInfo primaryActionTitle];
      [v13 setPrimaryActionTitle:primaryActionTitle];

      primaryActionIdentifier = [detailsInfo primaryActionIdentifier];
      [v13 setPrimaryActionIdentifier:primaryActionIdentifier];

      secondaryActionTitle = [detailsInfo secondaryActionTitle];
      [v13 setSecondaryActionTitle:secondaryActionTitle];

      secondaryActionIdentifier = [detailsInfo secondaryActionIdentifier];
      [v13 setSecondaryActionIdentifier:secondaryActionIdentifier];

      [v13 setLayout:0];
      heroImageURL = [detailsInfo heroImageURL];
      [v13 setHeroImageURL:heroImageURL];
      pageCopy = v13;
LABEL_6:

      goto LABEL_21;
    }
  }

  title2 = [pageCopy title];

  if (!title2)
  {
    v22 = PKLocalizedApplyFeatureString();
    [pageCopy setTitle:v22];
  }

  subtitle = [pageCopy subtitle];
  if (!subtitle)
  {
    [(PKApplyController *)self context];
    if (PKPaymentSetupContextIsMerchantApp())
    {
      if (installmentConfiguration)
      {
        goto LABEL_16;
      }

      subtitle = PKLocalizedApplyFeatureString();
      [pageCopy setSubtitle:subtitle];
    }

    else
    {
      subtitle = 0;
    }
  }

LABEL_16:
  primaryActionTitle2 = [pageCopy primaryActionTitle];

  if (!primaryActionTitle2)
  {
    v25 = PKLocalizedApplyFeatureString();
    [pageCopy setPrimaryActionTitle:v25];
  }

  secondaryActionTitle2 = [pageCopy secondaryActionTitle];

  if (!secondaryActionTitle2)
  {
    v27 = PKLocalizedApplyFeatureString();
    [pageCopy setSecondaryActionTitle:v27];
  }

  body2 = [pageCopy body];

  if (!body2)
  {
    if (installmentConfiguration)
    {
      v46 = creditLimit;
      installmentItems = [(PKPaymentInstallmentConfiguration *)self->_installmentConfiguration installmentItems];
      firstObject = [installmentItems firstObject];
      installmentItemType = [firstObject installmentItemType];

      if (v8)
      {
        v36 = [(PKApplyController *)self _formatStringSuffixForItemType:installmentItemType];
        heroImageURL = [@"INSTALLMENT_APPLY_OFFER_APPROVED_SUBTITLE" stringByAppendingString:v36];

        currencyCode = [applicationOfferDetails currencyCode];
        v37 = PKCurrencyAmountCreate(v46, currencyCode);
        formattedStringValue = [v37 formattedStringValue];
        v43 = v12;
        v44 = formattedStringValue;
      }

      else
      {
        isInStorePurchase = [(PKPaymentInstallmentConfiguration *)self->_installmentConfiguration isInStorePurchase];
        v40 = [(PKApplyController *)self _formatStringSuffixForItemType:installmentItemType];
        if (isInStorePurchase)
        {
          v41 = @"INSTALLMENT_APPLY_OFFER_APPROVED_INSUFFICIENT_CREDIT_IN_STORE_SUBTITLE";
        }

        else
        {
          v41 = @"INSTALLMENT_APPLY_OFFER_APPROVED_INSUFFICIENT_CREDIT_SUBTITLE";
        }

        heroImageURL = [(__CFString *)v41 stringByAppendingString:v40];

        currencyCode = [applicationOfferDetails currencyCode];
        v37 = PKCurrencyAmountCreate(v46, currencyCode);
        formattedStringValue = [v37 formattedStringValue];
        v43 = formattedStringValue;
        v44 = v12;
      }

      v42 = PKLocalizedApplyFeatureString();
      [pageCopy setBody:{v42, v43, v44}];

      creditLimit = v46;
    }

    else
    {
      heroImageURL = PKLocalizedApplyFeatureString();
      [pageCopy setBody:heroImageURL];
    }

    goto LABEL_6;
  }

LABEL_21:
  v29 = [PKApplyOfferViewController alloc];
  WeakRetained = objc_loadWeakRetained(&self->_setupDelegate);
  v31 = [(PKApplyOfferViewController *)v29 initWithController:self setupDelegate:WeakRetained context:self->_context applyPage:pageCopy];

  loadHeroImageFromApplyExperiment = [(PKApplyController *)self loadHeroImageFromApplyExperiment];
  if (loadHeroImageFromApplyExperiment)
  {
    [(PKApplyOfferViewController *)v31 setHeroImage:loadHeroImageFromApplyExperiment];
  }

  [(NSMutableArray *)self->_viewControllers addObject:v31];
}

- (id)_formatStringSuffixForItemType:(int64_t)type
{
  if (type > 4)
  {
    return @"_GENERIC";
  }

  else
  {
    return off_1E801B278[type];
  }
}

- (void)_queueApplicationVerificationWithNextStepInfo:(id)info
{
  pages = [info pages];
  firstObject = [pages firstObject];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = firstObject;
    if (v6)
    {
      v7 = v6;
      verificationType = [v6 verificationType];
      switch(verificationType)
      {
        case 0:
          v15 = PKLogFacilityTypeGetObject();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
          {
            *v16 = 0;
            _os_log_impl(&dword_1BD026000, v15, OS_LOG_TYPE_DEFAULT, "Error: Verification page has unknown verification type.", v16, 2u);
          }

          [(PKApplyController *)self _queueGenericErrorViewController];
          goto LABEL_17;
        case 2:
          v13 = [PKApplyVerificationTrialDepositViewController alloc];
          WeakRetained = objc_loadWeakRetained(&self->_setupDelegate);
          v11 = [(PKApplyVerificationTrialDepositViewController *)v13 initWithController:self setupDelegate:WeakRetained verificationPage:v7];
          break;
        case 1:
          v9 = [PKApplyVerificationSMSOTPViewController alloc];
          WeakRetained = objc_loadWeakRetained(&self->_setupDelegate);
          v11 = [(PKApplyVerificationSMSOTPViewController *)v9 initWithController:self setupDelegate:WeakRetained context:self->_context verificationPage:v7];
          break;
        default:
          v14 = 0;
          goto LABEL_16;
      }

      v14 = v11;

LABEL_16:
      [(NSMutableArray *)self->_viewControllers addObject:v14];

LABEL_17:
      goto LABEL_18;
    }
  }

  v12 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1BD026000, v12, OS_LOG_TYPE_DEFAULT, "Error: No verification page defined.", buf, 2u);
  }

  [(PKApplyController *)self _queueGenericErrorViewController];
LABEL_18:
}

- (void)_queueApplicationTermsFlow
{
  v3 = [PKApplyTermsAndConditionsViewController alloc];
  WeakRetained = objc_loadWeakRetained(&self->_setupDelegate);
  context = self->_context;
  applicationTermsIdentifier = [(PKFeatureApplication *)self->_featureApplication applicationTermsIdentifier];
  v7 = [(PKApplyTermsAndConditionsViewController *)v3 initWithController:self setupDelegate:WeakRetained context:context termsIdentifier:applicationTermsIdentifier];

  [(NSMutableArray *)self->_viewControllers addObject:v7];
}

- (void)_queueStateReasonExplanationFlowWithPage:(id)page
{
  pageCopy = page;
  preferredLanguage = [(PKApplyController *)self preferredLanguage];
  applicationStateReason = [(PKFeatureApplication *)self->_featureApplication applicationStateReason];
  title = [pageCopy title];

  if (applicationStateReason > 5)
  {
    if (applicationStateReason == 6)
    {
      v20 = pageCopy;
      if (!title)
      {
        v21 = PKLocalizedApplyFeatureString();
        [pageCopy setTitle:v21];

        v20 = pageCopy;
      }

      subtitle = [v20 subtitle];

      if (!subtitle)
      {
        v23 = PKLocalizedApplyFeatureString();
        [pageCopy setSubtitle:v23];
      }

      primaryActionTitle = [pageCopy primaryActionTitle];

      if (!primaryActionTitle)
      {
        v25 = PKLocalizedApplyFeatureString();
        [pageCopy setPrimaryActionTitle:v25];
      }

      learnMore = [pageCopy learnMore];
      buttonTitle = [learnMore buttonTitle];

      if (!buttonTitle)
      {
        v28 = PKLocalizedApplyFeatureString();
        [learnMore setButtonTitle:v28];
      }

      title2 = [learnMore title];

      if (!title2)
      {
        v30 = PKLocalizedApplyFeatureString();
        [learnMore setTitle:v30];
      }

      body = [learnMore body];

      if (body)
      {
        goto LABEL_61;
      }

LABEL_53:
      v49 = PKLocalizedApplyFeatureString();
      [learnMore setBody:v49];

LABEL_61:
      goto LABEL_62;
    }

    v7 = pageCopy;
    if (applicationStateReason == 8)
    {
      if (!title)
      {
        v50 = PKLocalizedApplyFeatureString();
        [pageCopy setTitle:v50];

        v7 = pageCopy;
      }

      subtitle2 = [v7 subtitle];

      if (!subtitle2)
      {
        v52 = PKLocalizedApplyFeatureString();
        [pageCopy setSubtitle:v52];
      }

      primaryActionTitle2 = [pageCopy primaryActionTitle];

      if (!primaryActionTitle2)
      {
        goto LABEL_59;
      }

      goto LABEL_62;
    }

    if (applicationStateReason == 9)
    {
      if (!title)
      {
        v12 = PKLocalizedFeatureString();
        [pageCopy setTitle:v12];

        v7 = pageCopy;
      }

      primaryActionTitle3 = [v7 primaryActionTitle];

      if (!primaryActionTitle3)
      {
        v14 = PKLocalizedFeatureString();
LABEL_60:
        learnMore = v14;
        [pageCopy setPrimaryActionTitle:v14];
        goto LABEL_61;
      }

      goto LABEL_62;
    }
  }

  else
  {
    if (applicationStateReason == 3)
    {
      v15 = pageCopy;
      if (!title)
      {
        v16 = PKLocalizedApplyFeatureString();
        [pageCopy setTitle:v16];

        v15 = pageCopy;
      }

      subtitle3 = [v15 subtitle];

      if (!subtitle3)
      {
        v18 = PKLocalizedApplyFeatureString();
        [pageCopy setSubtitle:v18];
      }

      primaryActionTitle4 = [pageCopy primaryActionTitle];

      if (!primaryActionTitle4)
      {
        goto LABEL_59;
      }

      goto LABEL_62;
    }

    v7 = pageCopy;
    if (applicationStateReason == 4)
    {
      if (!title)
      {
        v39 = PKLocalizedApplyFeatureString();
        [pageCopy setTitle:v39];

        v7 = pageCopy;
      }

      subtitle4 = [v7 subtitle];

      if (!subtitle4)
      {
        v41 = PKLocalizedApplyFeatureString();
        [pageCopy setSubtitle:v41];
      }

      primaryActionTitle5 = [pageCopy primaryActionTitle];

      if (!primaryActionTitle5)
      {
        goto LABEL_47;
      }

      goto LABEL_48;
    }

    if (applicationStateReason == 5)
    {
      if (!title)
      {
        v8 = PKLocalizedApplyFeatureString();
        [pageCopy setTitle:v8];

        v7 = pageCopy;
      }

      subtitle5 = [v7 subtitle];

      if (!subtitle5)
      {
        v10 = PKLocalizedApplyFeatureString();
        [pageCopy setSubtitle:v10];
      }

      primaryActionTitle6 = [pageCopy primaryActionTitle];

      if (!primaryActionTitle6)
      {
LABEL_47:
        v43 = PKLocalizedApplyFeatureString();
        [pageCopy setPrimaryActionTitle:v43];
      }

LABEL_48:
      learnMore = [pageCopy learnMore];
      buttonTitle2 = [learnMore buttonTitle];

      if (!buttonTitle2)
      {
        v45 = PKLocalizedApplyFeatureString();
        [learnMore setButtonTitle:v45];
      }

      title3 = [learnMore title];

      if (!title3)
      {
        v47 = PKLocalizedApplyFeatureString();
        [learnMore setTitle:v47];
      }

      body2 = [learnMore body];

      if (body2)
      {
        goto LABEL_61;
      }

      goto LABEL_53;
    }
  }

  if (!title)
  {
    v32 = PKLocalizedApplyFeatureString();
    [pageCopy setTitle:v32];

    v7 = pageCopy;
  }

  subtitle6 = [v7 subtitle];

  if (!subtitle6)
  {
    mEMORY[0x1E69B8568] = [MEMORY[0x1E69B8568] sharedInstance];
    appleAccountInformation = [mEMORY[0x1E69B8568] appleAccountInformation];
    primaryEmailAddress = [appleAccountInformation primaryEmailAddress];

    v37 = PKLocalizedApplyFeatureString();
    [pageCopy setSubtitle:{v37, primaryEmailAddress}];
  }

  primaryActionTitle7 = [pageCopy primaryActionTitle];

  if (!primaryActionTitle7)
  {
LABEL_59:
    v14 = PKLocalizedApplyFeatureString();
    goto LABEL_60;
  }

LABEL_62:
  v54 = [PKApplyStateExplanationViewController alloc];
  WeakRetained = objc_loadWeakRetained(&self->_setupDelegate);
  v56 = [(PKApplyExplanationViewController *)v54 initWithController:self setupDelegate:WeakRetained context:self->_context applyPage:pageCopy];

  [(NSMutableArray *)self->_viewControllers addObject:v56];
}

- (void)_queueProgramConsentFlowWithPage:(id)page
{
  pageCopy = page;
  preferredLanguage = [(PKApplyController *)self preferredLanguage];
  subtitle = [pageCopy subtitle];

  if (!subtitle)
  {
    v6 = PKLocalizedApplyFeatureString();
    [pageCopy setSubtitle:v6];
  }

  primaryActionTitle = [pageCopy primaryActionTitle];

  if (!primaryActionTitle)
  {
    v8 = PKLocalizedApplyFeatureString();
    [pageCopy setPrimaryActionTitle:v8];
  }

  secondaryActionTitle = [pageCopy secondaryActionTitle];

  if (!secondaryActionTitle)
  {
    v10 = PKLocalizedApplyFeatureString();
    [pageCopy setSecondaryActionTitle:v10];
  }

  learnMore = [pageCopy learnMore];
  if (!learnMore)
  {
    learnMore = objc_alloc_init(MEMORY[0x1E69B8820]);
    [pageCopy setLearnMore:learnMore];
  }

  buttonTitle = [learnMore buttonTitle];

  if (!buttonTitle)
  {
    v13 = PKLocalizedApplyFeatureString();
    [learnMore setButtonTitle:v13];
  }

  v14 = [PKApplyProgramConsentViewController alloc];
  WeakRetained = objc_loadWeakRetained(&self->_setupDelegate);
  v16 = [(PKApplyProgramConsentViewController *)v14 initWithController:self setupDelegate:WeakRetained context:self->_context applyPage:pageCopy];

  [(NSMutableArray *)self->_viewControllers addObject:v16];
}

- (void)_queueDeclinedFlowWithPage:(id)page
{
  pageCopy = page;
  preferredLanguage = [(PKApplyController *)self preferredLanguage];
  v6 = self->_installmentConfiguration != 0;
  v32 = MEMORY[0x1E69E9820];
  v33 = 3221225472;
  v34 = __48__PKApplyController__queueDeclinedFlowWithPage___block_invoke;
  v35 = &unk_1E80170D8;
  v7 = pageCopy;
  v39 = v6;
  v36 = v7;
  selfCopy = self;
  v8 = preferredLanguage;
  v38 = v8;
  v9 = _Block_copy(&v32);
  v10 = [(PKFeatureApplication *)self->_featureApplication applicationStateReason:v32];
  if (v10 == 16)
  {
LABEL_16:
    v9[2](v9);
    goto LABEL_24;
  }

  if (v10 != 7)
  {
    if (v10 == 6)
    {
      title = [v7 title];

      if (!title)
      {
        v12 = PKLocalizedApplyFeatureString();
        [v7 setTitle:v12];
      }

      subtitle = [v7 subtitle];

      if (!subtitle)
      {
        v14 = PKLocalizedApplyFeatureString();
        [v7 setSubtitle:v14];
      }

      primaryActionTitle = [v7 primaryActionTitle];

      if (!primaryActionTitle)
      {
        v16 = PKLocalizedApplyFeatureString();
        [v7 setPrimaryActionTitle:v16];
      }

      learnMore = [v7 learnMore];
      buttonTitle = [learnMore buttonTitle];

      if (!buttonTitle)
      {
        v19 = PKLocalizedApplyFeatureString();
        [learnMore setButtonTitle:v19];
      }

      title2 = [learnMore title];

      if (!title2)
      {
        v21 = PKLocalizedApplyFeatureString();
        [learnMore setTitle:v21];
      }

      body = [learnMore body];

      if (!body)
      {
        v23 = PKLocalizedApplyFeatureString();
        [learnMore setBody:v23];
      }

      goto LABEL_23;
    }

    goto LABEL_16;
  }

  title3 = [v7 title];

  if (!title3)
  {
    v25 = PKLocalizedApplyFeatureString();
    [v7 setTitle:v25];
  }

  subtitle2 = [v7 subtitle];

  if (!subtitle2)
  {
    v27 = PKLocalizedApplyFeatureString();
    [v7 setSubtitle:v27];
  }

  primaryActionTitle2 = [v7 primaryActionTitle];

  if (!primaryActionTitle2)
  {
    learnMore = PKLocalizedApplyFeatureString();
    [v7 setPrimaryActionTitle:learnMore];
LABEL_23:
  }

LABEL_24:
  v29 = [PKApplyDeclinedViewController alloc];
  WeakRetained = objc_loadWeakRetained(&self->_setupDelegate);
  v31 = [(PKApplyExplanationViewController *)v29 initWithController:self setupDelegate:WeakRetained context:self->_context applyPage:v7];

  [(NSMutableArray *)self->_viewControllers addObject:v31];
}

void __48__PKApplyController__queueDeclinedFlowWithPage___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) title];

  if (!v2)
  {
    v3 = *(a1 + 32);
    if (*(a1 + 56) == 1)
    {
      v4 = PKLocalizedApplyFeatureString();
      [v3 setTitle:v4];

      v5 = *(a1 + 32);
      v6 = PKLocalizedApplyFeatureString();
      [v5 setDisclosureTitle:v6];
    }

    else
    {
      v6 = PKLocalizedApplyFeatureString();
      [v3 setTitle:v6];
    }
  }

  v7 = [*(a1 + 32) subtitle];

  if (!v7)
  {
    v8 = *(a1 + 56);
    v9 = [MEMORY[0x1E69B8568] sharedInstance];
    v10 = [v9 appleAccountInformation];
    v11 = [v10 primaryEmailAddress];

    if (v8 == 1)
    {
      [*(*(a1 + 40) + 288) isInStorePurchase];
      v12 = *(a1 + 32);
      v17 = v11;
      v13 = PKLocalizedApplyFeatureString();
      v14 = v12;
    }

    else
    {
      v17 = v11;
      v13 = PKLocalizedApplyFeatureString();
      v14 = *(a1 + 32);
    }

    [v14 setSubtitle:{v13, v17}];
  }

  v15 = [*(a1 + 32) primaryActionTitle];

  if (!v15)
  {
    v16 = *(a1 + 32);
    v18 = PKLocalizedApplyFeatureString();
    [v16 setPrimaryActionTitle:v18];
  }
}

- (void)_queuePassActivationFlowWithCompletion:(id)completion
{
  completionCopy = completion;
  v4 = [objc_alloc(MEMORY[0x1E69B8350]) initWithAccount:self->_account];
  v5 = [PKAccountFlowController alloc];
  provisioningController = self->_provisioningController;
  WeakRetained = objc_loadWeakRetained(&self->_setupDelegate);
  v8 = [(PKAccountFlowController *)v5 initWithAccountCredential:v4 provisioningController:provisioningController setupDelegate:WeakRetained context:self->_context operations:63];

  [(PKAccountFlowController *)v8 setParentFlowController:self];
  firstAccountViewController = [(PKAccountFlowController *)v8 firstAccountViewController];
  [(NSMutableArray *)self->_viewControllers addObject:firstAccountViewController];
  if (completionCopy)
  {
    _nextQueuedViewController = [(PKApplyController *)self _nextQueuedViewController];
    completionCopy[2](completionCopy, _nextQueuedViewController, 0);
  }
}

- (void)_queueEmailRequiredErrorViewController
{
  preferredLanguage = [(PKApplyController *)self preferredLanguage];
  v4 = objc_alloc_init(MEMORY[0x1E69B8818]);
  v5 = PKLocalizedApplyFeatureString();
  [v4 setTitle:v5];

  v6 = PKLocalizedApplyFeatureString();
  [v4 setSubtitle:v6];

  v7 = PKLocalizedApplyFeatureString();
  [v4 setPrimaryActionTitle:v7];

  v8 = objc_alloc_init(MEMORY[0x1E69B8820]);
  v9 = PKLocalizedApplyFeatureString();
  [v8 setButtonTitle:v9];

  [v4 setLearnMore:v8];
  v10 = [PKApplyExplanationViewController alloc];
  WeakRetained = objc_loadWeakRetained(&self->_setupDelegate);
  v12 = [(PKApplyExplanationViewController *)v10 initWithController:self setupDelegate:WeakRetained context:self->_context applyPage:v4];

  [(PKExplanationViewController *)v12 setShowCancelButton:1];
  [(PKApplyExplanationViewController *)v12 setContinueAction:&__block_literal_global_128];
  [(PKApplyExplanationViewController *)v12 setLearnMoreAction:&__block_literal_global_415];
  objc_initWeak(&location, self);
  v13 = MEMORY[0x1E69E9820];
  v14 = 3221225472;
  v15 = __59__PKApplyController__queueEmailRequiredErrorViewController__block_invoke_3;
  v16 = &unk_1E801B230;
  objc_copyWeak(&v17, &location);
  [(PKApplyExplanationViewController *)v12 setDoneAction:&v13];
  [(NSMutableArray *)self->_viewControllers addObject:v12, v13, v14, v15, v16];
  objc_destroyWeak(&v17);
  objc_destroyWeak(&location);
}

uint64_t __59__PKApplyController__queueEmailRequiredErrorViewController__block_invoke()
{
  v0 = [MEMORY[0x1E695DFF8] URLWithString:@"prefs:root=APPLE_ACCOUNT&path=APPLE_ACCOUNT_CONTACT"];
  v1 = [MEMORY[0x1E6963608] defaultWorkspace];
  [v1 openSensitiveURL:v0 withOptions:0];

  return 0;
}

uint64_t __59__PKApplyController__queueEmailRequiredErrorViewController__block_invoke_2()
{
  v0 = [MEMORY[0x1E695DFF8] URLWithString:@"http://support.apple.com/HT201356"];
  v1 = [MEMORY[0x1E6963608] defaultWorkspace];
  [v1 openSensitiveURL:v0 withOptions:0];

  return 0;
}

BOOL __59__PKApplyController__queueEmailRequiredErrorViewController__block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained endApplyFlow];
  }

  return v2 != 0;
}

- (void)_queueCannotResumeIDVFlow
{
  preferredLanguage = [(PKApplyController *)self preferredLanguage];
  v3 = objc_alloc_init(MEMORY[0x1E69B8818]);
  v4 = PKLocalizedApplyFeatureString();
  [v3 setTitle:v4];

  v5 = PKLocalizedApplyFeatureString();
  [v3 setSubtitle:v5];

  v6 = PKLocalizedApplyFeatureString();
  [v3 setPrimaryActionTitle:v6];

  v7 = PKLocalizedApplyFeatureString();
  [v3 setSecondaryActionTitle:v7];

  v8 = [PKApplyCannotResumeIDVViewController alloc];
  WeakRetained = objc_loadWeakRetained(&self->_setupDelegate);
  v10 = [(PKApplyExplanationViewController *)v8 initWithController:self setupDelegate:WeakRetained context:self->_context applyPage:v3];

  [(NSMutableArray *)self->_viewControllers addObject:v10];
}

- (void)_queueAcceptedFlowWithPage:(id)page
{
  pageCopy = page;
  preferredLanguage = [(PKApplyController *)self preferredLanguage];
  title = [pageCopy title];

  if (!title)
  {
    v6 = PKLocalizedApplyFeatureString();
    [pageCopy setTitle:v6];
  }

  subtitle = [pageCopy subtitle];

  if (!subtitle)
  {
    v8 = PKLocalizedApplyFeatureString();
    [pageCopy setSubtitle:v8];
  }

  v9 = [PKApplyAcceptedViewController alloc];
  WeakRetained = objc_loadWeakRetained(&self->_setupDelegate);
  v11 = [(PKApplyExplanationViewController *)v9 initWithController:self setupDelegate:WeakRetained context:self->_context applyPage:pageCopy];

  [(NSMutableArray *)self->_viewControllers addObject:v11];
}

- (void)_queueActionFlowWithPage:(id)page
{
  pageCopy = page;
  title = [pageCopy title];
  if (title && (v6 = title, [pageCopy primaryActionTitle], v7 = objc_claimAutoreleasedReturnValue(), v7, v6, v7))
  {
    v8 = [PKApplyActionExplanationViewController alloc];
    WeakRetained = objc_loadWeakRetained(&self->_setupDelegate);
    v10 = [(PKApplyExplanationViewController *)v8 initWithController:self setupDelegate:WeakRetained context:self->_context applyPage:pageCopy];

    [(NSMutableArray *)self->_viewControllers addObject:v10];
  }

  else
  {
    v11 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *v12 = 0;
      _os_log_impl(&dword_1BD026000, v11, OS_LOG_TYPE_DEFAULT, "Error: Cannot generate action view controller with no title or button", v12, 2u);
    }

    [(PKApplyController *)self _queueGenericErrorViewControllerWithPage:pageCopy];
  }
}

- (void)_queueConfirmInfoFlowWithPage:(id)page
{
  pageCopy = page;
  v5 = [PKApplyConfirmInfoViewController alloc];
  WeakRetained = objc_loadWeakRetained(&self->_setupDelegate);
  v7 = [(PKApplyConfirmInfoViewController *)v5 initWithController:self setupDelegate:WeakRetained context:self->_context applyPage:pageCopy];

  [(NSMutableArray *)self->_viewControllers addObject:v7];
}

- (void)_queueExpiredFlowWithPage:(id)page
{
  pageCopy = page;
  preferredLanguage = [(PKApplyController *)self preferredLanguage];
  title = [pageCopy title];

  if (!title)
  {
    v6 = PKLocalizedApplyFeatureString();
    [pageCopy setTitle:v6];
  }

  subtitle = [pageCopy subtitle];

  if (!subtitle)
  {
    v8 = PKLocalizedApplyFeatureString();
    [pageCopy setSubtitle:v8];
  }

  primaryActionTitle = [pageCopy primaryActionTitle];

  if (!primaryActionTitle)
  {
    v10 = PKLocalizedApplyFeatureString();
    [pageCopy setPrimaryActionTitle:v10];
  }

  [(PKApplyController *)self _queueGenericErrorViewControllerWithPage:pageCopy];
}

- (void)_queueTerminalStateFlowWithPage:(id)page
{
  pageCopy = page;
  preferredLanguage = [(PKApplyController *)self preferredLanguage];
  title = [pageCopy title];

  if (!title)
  {
    v6 = PKLocalizedApplyFeatureString();
    [pageCopy setTitle:v6];
  }

  subtitle = [pageCopy subtitle];

  if (!subtitle)
  {
    v8 = PKLocalizedApplyFeatureString();
    [pageCopy setSubtitle:v8];
  }

  primaryActionTitle = [pageCopy primaryActionTitle];

  if (!primaryActionTitle)
  {
    v10 = PKLocalizedApplyFeatureString();
    [pageCopy setPrimaryActionTitle:v10];
  }

  [(PKApplyController *)self _queueGenericErrorViewControllerWithPage:pageCopy];
}

- (void)_queueGenericErrorViewController
{
  preferredLanguage = [(PKApplyController *)self preferredLanguage];
  v3 = objc_alloc_init(MEMORY[0x1E69B8818]);
  v4 = PKLocalizedApplyFeatureString();
  [v3 setTitle:v4];

  v5 = PKLocalizedApplyFeatureString();
  [v3 setSubtitle:v5];

  v6 = PKLocalizedApplyFeatureString();
  [v3 setPrimaryActionTitle:v6];

  [(PKApplyController *)self _queueGenericErrorViewControllerWithPage:v3];
}

- (void)_queueGenericErrorViewControllerWithPage:(id)page
{
  pageCopy = page;
  v5 = [PKApplyGenericErrorViewController alloc];
  WeakRetained = objc_loadWeakRetained(&self->_setupDelegate);
  v7 = [(PKApplyExplanationViewController *)v5 initWithController:self setupDelegate:WeakRetained context:self->_context applyPage:pageCopy];

  [(NSMutableArray *)self->_viewControllers addObject:v7];
}

- (id)_nextQueuedViewController
{
  viewControllerIndex = self->_viewControllerIndex;
  if (viewControllerIndex >= [(NSMutableArray *)self->_viewControllers count])
  {
    v5 = 0;
  }

  else
  {
    viewControllers = self->_viewControllers;
    ++self->_viewControllerIndex;
    v5 = [(NSMutableArray *)viewControllers objectAtIndex:?];
    if (v5)
    {
      if (objc_opt_respondsToSelector())
      {
        currentPage = [v5 currentPage];
        identifier = [currentPage identifier];
        previousContextIdentifier = self->_previousContextIdentifier;
        self->_previousContextIdentifier = identifier;
      }

      else
      {
        currentPage = self->_previousContextIdentifier;
        self->_previousContextIdentifier = 0;
      }
    }
  }

  return v5;
}

- (void)_acquireAssertion
{
  if (self->_notificationSupressionAssertion)
  {
    v2 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&dword_1BD026000, v2, OS_LOG_TYPE_DEFAULT, "Notification suppression assertion already acquired", buf, 2u);
    }
  }

  else
  {
    v4 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&dword_1BD026000, v4, OS_LOG_TYPE_DEFAULT, "Acquiring notification suppression assertion", buf, 2u);
    }

    objc_initWeak(buf, self);
    v5 = MEMORY[0x1E69B8650];
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __38__PKApplyController__acquireAssertion__block_invoke;
    v6[3] = &unk_1E801B258;
    objc_copyWeak(&v7, buf);
    [v5 acquireAssertionOfType:4 withReason:@"User Application Process" completion:v6];
    objc_destroyWeak(&v7);
    objc_destroyWeak(buf);
  }
}

void __38__PKApplyController__acquireAssertion__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v16 = *MEMORY[0x1E69E9840];
  v6 = a2;
  v7 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v9 = PKLogFacilityTypeGetObject();
    v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
    if (!v6 || v7)
    {
      if (v10)
      {
        *buf = 138412290;
        v15 = v7;
        _os_log_impl(&dword_1BD026000, v9, OS_LOG_TYPE_DEFAULT, "Error acquiring notification suppression assertion: %@", buf, 0xCu);
      }
    }

    else
    {
      if (v10)
      {
        *buf = 0;
        _os_log_impl(&dword_1BD026000, v9, OS_LOG_TYPE_DEFAULT, "Acquired notification suppression assertion", buf, 2u);
      }

      objc_storeStrong(WeakRetained + 19, a2);
      [WeakRetained[19] setInvalidateWhenBackgrounded:1];
      v11 = WeakRetained[19];
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __38__PKApplyController__acquireAssertion__block_invoke_467;
      v12[3] = &unk_1E8010998;
      objc_copyWeak(&v13, (a1 + 32));
      [v11 setInvalidationHandler:v12];
      objc_destroyWeak(&v13);
    }
  }
}

void __38__PKApplyController__acquireAssertion__block_invoke_467(uint64_t a1)
{
  v2 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_1BD026000, v2, OS_LOG_TYPE_DEFAULT, "Executing notification suppression assertion invalidation handler", v6, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v5 = *(WeakRetained + 19);
    *(WeakRetained + 19) = 0;
  }
}

- (void)_invalidateAssertion
{
  if (self->_notificationSupressionAssertion)
  {
    v3 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v4 = 0;
      _os_log_impl(&dword_1BD026000, v3, OS_LOG_TYPE_DEFAULT, "Invalidating notification suppression assertion", v4, 2u);
    }

    [(PKAssertion *)self->_notificationSupressionAssertion invalidate];
  }
}

- (id)cancelAlertWithContinueAction:(id)action
{
  actionCopy = action;
  if ([(PKApplyController *)self featureIdentifier]== 5)
  {
    v5 = 0;
    goto LABEL_13;
  }

  preferredLanguage = [(PKApplyController *)self preferredLanguage];
  applicationType = [(PKApplyController *)self applicationType];
  if (applicationType < 2)
  {
LABEL_6:
    v8 = PKLocalizedApplyFeatureString();
    v9 = PKDeviceSpecificLocalizedStringKeyForKey(@"CANCEL_APPLY_ALERT_MESSAGE", 0);
    v10 = PKLocalizedApplyFeatureString();

    v11 = PKLocalizedApplyFeatureString();
    goto LABEL_8;
  }

  if (applicationType != 2)
  {
    if (applicationType != 3)
    {
      v12 = 0;
      v10 = 0;
      v8 = 0;
      goto LABEL_11;
    }

    goto LABEL_6;
  }

  v8 = PKLocalizedFeatureString();
  v10 = PKLocalizedFeatureString();
  v11 = PKLocalizedFeatureString();
LABEL_8:
  v12 = v11;
  if (!v8)
  {
LABEL_11:
    v5 = 0;
    goto LABEL_12;
  }

  v5 = [MEMORY[0x1E69DC650] alertControllerWithTitle:v8 message:v10 preferredStyle:1];
  v13 = MEMORY[0x1E69DC648];
  v14 = PKLocalizedApplyFeatureString();
  v15 = [v13 actionWithTitle:v14 style:1 handler:0];

  [v5 addAction:v15];
  [v5 setPreferredAction:v15];
  v16 = MEMORY[0x1E69DC648];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __51__PKApplyController_cancelAlertWithContinueAction___block_invoke;
  v19[3] = &unk_1E8011248;
  v20 = actionCopy;
  v17 = [v16 actionWithTitle:v12 style:0 handler:v19];
  [v5 addAction:v17];

LABEL_12:
LABEL_13:

  return v5;
}

- (id)_displayableErrorForError:(id)error showDetailedErrorFlow:(BOOL)flow
{
  flowCopy = flow;
  errorCopy = error;
  preferredLanguage = [(PKApplyController *)self preferredLanguage];
  domain = [errorCopy domain];
  if ([domain isEqualToString:*MEMORY[0x1E696A978]])
  {
    if ([errorCopy code] == -1009)
    {

LABEL_12:
      localizedFailureReason2 = PKLocalizedApplyFeatureString();
      localizedRecoverySuggestion = PKLocalizedApplyFeatureString();
      goto LABEL_13;
    }

    code = [errorCopy code];

    if (code == -1001)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  domain2 = [errorCopy domain];
  v10 = [domain2 isEqualToString:*MEMORY[0x1E69BC6F0]];

  if (v10 && [errorCopy code] <= 5)
  {
    localizedFailureReason = [errorCopy localizedFailureReason];

    if (localizedFailureReason)
    {
      localizedFailureReason2 = [errorCopy localizedFailureReason];
      localizedRecoverySuggestion = [errorCopy localizedRecoverySuggestion];
LABEL_13:
      localizedFailureReason = localizedRecoverySuggestion;
      v14 = 0;
      goto LABEL_14;
    }
  }

  else
  {
    localizedFailureReason = 0;
  }

  localizedFailureReason2 = 0;
  v14 = 1;
LABEL_14:
  domain3 = [errorCopy domain];
  v17 = [domain3 isEqualToString:*MEMORY[0x1E6997D50]];

  if (v14 && v17 && [errorCopy code] == 40201 && flowCopy)
  {
    [(PKApplyController *)self _queueCannotResumeIDVFlow];
LABEL_19:
    v18 = 0;
    goto LABEL_62;
  }

  if (!v14)
  {
    goto LABEL_59;
  }

  if ((v17 & 1) == 0)
  {
    domain4 = [errorCopy domain];
    v21 = [domain4 isEqualToString:*MEMORY[0x1E69BC300]];

    if (!v21)
    {
      goto LABEL_59;
    }

    localizedFailureReason3 = [errorCopy localizedFailureReason];

    if (localizedFailureReason3)
    {
      localizedFailureReason4 = [errorCopy localizedFailureReason];

      localizedRecoverySuggestion2 = [errorCopy localizedRecoverySuggestion];
      goto LABEL_57;
    }
  }

  code2 = [errorCopy code];
  if (code2 > 60011)
  {
    switch(code2)
    {
      case 60012:
      case 60013:
      case 60028:
      case 60039:
      case 60040:
      case 60041:
      case 60042:
      case 60043:
      case 60044:
      case 60045:
      case 60046:
      case 60047:
      case 60048:
      case 60049:
      case 60050:
      case 60051:
      case 60052:
      case 60053:
      case 60056:
      case 60069:
      case 60070:
      case 60071:
        goto LABEL_56;
      case 60014:
        if (!flowCopy)
        {
          goto LABEL_59;
        }

        v32 = objc_alloc_init(MEMORY[0x1E69B8818]);
        v33 = PKLocalizedApplyFeatureString();
        [v32 setTitle:v33];

        v34 = PKLocalizedApplyFeatureString();
        [v32 setSubtitle:v34];

        v35 = PKLocalizedPaymentString(&cfstr_Continue.isa);
        [v32 setPrimaryActionTitle:v35];

        [(PKApplyController *)self _queueGenericErrorViewControllerWithPage:v32];
        goto LABEL_19;
      case 60015:
      case 60016:
      case 60017:
      case 60018:
      case 60019:
      case 60020:
      case 60021:
      case 60022:
      case 60023:
      case 60024:
      case 60025:
      case 60026:
      case 60027:
      case 60029:
      case 60030:
      case 60031:
      case 60032:
      case 60033:
      case 60034:
      case 60035:
      case 60036:
      case 60037:
      case 60038:
      case 60054:
      case 60055:
      case 60058:
      case 60059:
      case 60061:
      case 60062:
      case 60063:
      case 60064:
      case 60065:
      case 60066:
      case 60067:
      case 60068:
      case 60072:
      case 60073:
      case 60074:
        goto LABEL_59;
      case 60057:
        localizedFailureReason4 = PKLocalizedApplyFeatureString();

        IsBridge = PKPaymentSetupContextIsBridge();
        localizedFailureReason2 = PKDeviceSpecificLocalizedStringKeyForKey(@"OS_VERSION_UPDATE_REQUIRED_ERROR_MESSAGE", IsBridge);
        v29 = PKLocalizedApplyFeatureString();

        localizedFailureReason = v29;
        goto LABEL_58;
      case 60060:
        if (!flowCopy)
        {
          goto LABEL_59;
        }

        [(PKApplyController *)self _queueGenericErrorViewController];
        goto LABEL_19;
      case 60075:
      case 60078:
        localizedFailureReason4 = PKLocalizedFeatureString();

        localizedRecoverySuggestion2 = PKLocalizedFeatureString();
        goto LABEL_57;
      case 60076:
        localizedFailureReason4 = PKLocalizedFeatureString();

        accountUserInvitationAllowedFeatureDescriptor = [(PKAccount *)self->_account accountUserInvitationAllowedFeatureDescriptor];
        maximumAccountUsers = [accountUserInvitationAllowedFeatureDescriptor maximumAccountUsers];

        PKLocalizedString(&cfstr_AccountUserLim_0.isa, &cfstr_Lu.isa, maximumAccountUsers);
        goto LABEL_48;
      case 60077:
        localizedFailureReason4 = PKLocalizedFeatureString();

        accountUserInvitationAllowedFeatureDescriptor2 = [(PKAccount *)self->_account accountUserInvitationAllowedFeatureDescriptor];
        maximumAccountUsers2 = [accountUserInvitationAllowedFeatureDescriptor2 maximumAccountUsers];

        PKLocalizedString(&cfstr_AccountInvitat.isa, &cfstr_Lu.isa, maximumAccountUsers2);
        localizedRecoverySuggestion2 = LABEL_48:;
        goto LABEL_57;
      default:
        if (code2 == 60089)
        {
          localizedFailureReason4 = PKLocalizedApplyFeatureString();
          goto LABEL_58;
        }

        if (code2 != 60093)
        {
          goto LABEL_59;
        }

        break;
    }

    goto LABEL_56;
  }

  if (code2 <= 40455)
  {
    if (code2 == 40319)
    {
      if (flowCopy)
      {
        [(PKApplyController *)self _queueEmailRequiredErrorViewController];
        goto LABEL_19;
      }

      goto LABEL_59;
    }

    if (code2 != 40423 && code2 != 40454)
    {
      goto LABEL_59;
    }

LABEL_56:
    localizedFailureReason4 = PKLocalizedApplyFeatureString();

    localizedRecoverySuggestion2 = PKLocalizedApplyFeatureString();
LABEL_57:
    localizedFailureReason2 = localizedFailureReason;
    localizedFailureReason = localizedRecoverySuggestion2;
LABEL_58:

    localizedFailureReason2 = localizedFailureReason4;
    goto LABEL_59;
  }

  if (code2 > 60000)
  {
    if (code2 != 60001 && code2 != 60002)
    {
      goto LABEL_59;
    }

    goto LABEL_56;
  }

  if (code2 == 40456)
  {
    localizedFailureReason4 = PKLocalizedPaymentString(&cfstr_InvalidVerific.isa);

    v25 = @"INVALID_VERIFICATION_CODE_MESSAGE";
    goto LABEL_55;
  }

  if (code2 == 40457)
  {
    localizedFailureReason4 = PKLocalizedPaymentString(&cfstr_ExpiredVerific.isa);

    v25 = @"EXPIRED_VERIFICATION_CODE_MESSAGE";
LABEL_55:
    localizedRecoverySuggestion2 = PKLocalizedPaymentString(&v25->isa);
    goto LABEL_57;
  }

LABEL_59:
  if (!(localizedFailureReason2 | localizedFailureReason))
  {
    localizedFailureReason2 = PKLocalizedApplyFeatureString();
    localizedFailureReason = PKLocalizedApplyFeatureString();
  }

  v18 = PKDisplayableErrorCustom();
LABEL_62:

  return v18;
}

- (void)featureApplicationChanged:(id)changed
{
  changedCopy = changed;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __47__PKApplyController_featureApplicationChanged___block_invoke;
  v6[3] = &unk_1E8010A10;
  v7 = changedCopy;
  selfCopy = self;
  v5 = changedCopy;
  dispatch_async(MEMORY[0x1E69E96A0], v6);
}

void __47__PKApplyController_featureApplicationChanged___block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) applicationIdentifier];
  if ([*(*(a1 + 40) + 256) feature] != 5)
  {
    v3 = *(a1 + 40);
    if (*(v3 + 160))
    {
      v4 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        v5 = [*(v3 + 256) lastUpdated];
        v6 = *(*(a1 + 40) + 160);
        v13 = 138412802;
        v14 = v2;
        v15 = 2112;
        v16 = v5;
        v17 = 2048;
        v18 = v6;
        _os_log_impl(&dword_1BD026000, v4, OS_LOG_TYPE_DEFAULT, "Application: %@ update recivied but ignored with timestamp: %@ because of running updates: %lu", &v13, 0x20u);
      }

LABEL_16:

      goto LABEL_17;
    }

    v7 = [*(v3 + 256) applicationIdentifier];
    if ([v7 isEqualToString:v2])
    {
      v8 = [*(*(a1 + 40) + 256) applicationState];
      if (v8 != [*(a1 + 32) applicationState])
      {

LABEL_13:
        objc_storeStrong((*(a1 + 40) + 256), *(a1 + 32));
        v11 = PKLogFacilityTypeGetObject();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          v12 = [*(*(a1 + 40) + 256) lastUpdated];
          v13 = 138412546;
          v14 = v2;
          v15 = 2112;
          v16 = v12;
          _os_log_impl(&dword_1BD026000, v11, OS_LOG_TYPE_DEFAULT, "Application: %@ updated with timestamp: %@ - sending notification", &v13, 0x16u);
        }

        v4 = [MEMORY[0x1E696AD88] defaultCenter];
        [v4 postNotificationName:@"PKApplyControllerUpdatedNotification" object:0];
        goto LABEL_16;
      }

      v9 = [*(*(a1 + 40) + 256) applicationStateReason];
      v10 = [*(a1 + 32) applicationStateReason];

      if (v9 != v10)
      {
        goto LABEL_13;
      }
    }

    else
    {
    }

    v4 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 138412290;
      v14 = v2;
      _os_log_impl(&dword_1BD026000, v4, OS_LOG_TYPE_DEFAULT, "Application: %@ update received but current application is identical", &v13, 0xCu);
    }

    goto LABEL_16;
  }

LABEL_17:
}

+ (id)preferredLanguageForFeatureIdentifier:(unint64_t)identifier account:(id)account
{
  accountCopy = account;
  v7 = PKPassKitBundle();
  v8 = [self preferredLanguageForFeatureIdentifier:identifier account:accountCopy mainBundle:v7];

  return v8;
}

+ (id)preferredLanguageForFeatureIdentifier:(unint64_t)identifier account:(id)account mainBundle:(id)bundle
{
  v6 = MEMORY[0x1E69B8EF8];
  bundleCopy = bundle;
  sharedService = [v6 sharedService];
  context = [sharedService context];

  v10 = [context applyServicePreferredLanguageForFeatureIdentifier:identifier mainLanguageBundle:bundleCopy];

  return v10;
}

- (id)preferredLanguage
{
  v3 = objc_opt_class();
  featureIdentifier = self->_featureIdentifier;
  account = self->_account;

  return [v3 preferredLanguageForFeatureIdentifier:featureIdentifier account:account];
}

+ (id)localizationBundleForFeatureIdentifier:(unint64_t)identifier account:(id)account
{
  accountCopy = account;
  v7 = PKPassKitBundle();
  v8 = [self localizationBundleForFeatureIdentifier:identifier account:accountCopy mainBundle:v7];

  return v8;
}

+ (id)localizationBundleForFeatureIdentifier:(unint64_t)identifier account:(id)account mainBundle:(id)bundle
{
  v6 = MEMORY[0x1E69B8EF8];
  bundleCopy = bundle;
  sharedService = [v6 sharedService];
  context = [sharedService context];

  v10 = [context applyServiceLocalizationBundleForFeatureIdentifier:identifier mainLanguageBundle:bundleCopy];

  return v10;
}

- (id)localizationBundle
{
  v3 = objc_opt_class();
  featureIdentifier = self->_featureIdentifier;
  account = self->_account;

  return [v3 localizationBundleForFeatureIdentifier:featureIdentifier account:account];
}

- (id)_applyExperiment
{
  applyExperiment = self->_applyExperiment;
  if (!applyExperiment)
  {
    featureIdentifier = self->_featureIdentifier;
    if (!featureIdentifier)
    {
      featureIdentifier = [(PKFeatureApplication *)self->_featureApplication feature];
    }

    if ([(PKApplyController *)self applicationType])
    {
      v5 = [(PKApplyController *)self applicationType]!= 1;
    }

    else
    {
      v5 = 0;
    }

    if (featureIdentifier == 2 && !v5)
    {
      v6 = objc_alloc_init(MEMORY[0x1E69B8588]);
      v7 = self->_applyExperiment;
      self->_applyExperiment = v6;
    }

    applyExperiment = self->_applyExperiment;
  }

  v8 = applyExperiment;

  return v8;
}

- (id)_applyExperimentDetails
{
  _applyExperiment = [(PKApplyController *)self _applyExperiment];
  experimentDetails = [_applyExperiment experimentDetails];

  return experimentDetails;
}

- (id)loadHeroImageFromApplyExperiment
{
  _applyExperiment = [(PKApplyController *)self _applyExperiment];
  v4 = _applyExperiment;
  if (self->_installmentConfiguration)
  {
    [_applyExperiment heroInstallmentImagePath];
  }

  else
  {
    [_applyExperiment heroImagePath];
  }
  v5 = ;
  if (v5)
  {
    v6 = [MEMORY[0x1E69DCAB8] imageWithContentsOfFile:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (PKSetupFlowControllerProtocol)parentFlowController
{
  WeakRetained = objc_loadWeakRetained(&self->_parentFlowController);

  return WeakRetained;
}

@end