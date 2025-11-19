@interface PKApplyController
+ (id)localizationBundleForFeatureIdentifier:(unint64_t)a3 account:(id)a4;
+ (id)localizationBundleForFeatureIdentifier:(unint64_t)a3 account:(id)a4 mainBundle:(id)a5;
+ (id)preferredLanguageForFeatureIdentifier:(unint64_t)a3 account:(id)a4;
+ (id)preferredLanguageForFeatureIdentifier:(unint64_t)a3 account:(id)a4 mainBundle:(id)a5;
- (PKApplyController)initWithApplyConfiguration:(id)a3;
- (PKSetupFlowControllerProtocol)parentFlowController;
- (id)_applyExperiment;
- (id)_applyExperimentDetails;
- (id)_displayableErrorForError:(id)a3 showDetailedErrorFlow:(BOOL)a4;
- (id)_fieldsViewControllerForPage:(id)a3;
- (id)_formatStringSuffixForItemType:(int64_t)a3;
- (id)_nextQueuedViewController;
- (id)applicationUpdatedAlertControllerWithHandler:(id)a3;
- (id)cancelAlertWithContinueAction:(id)a3;
- (id)loadHeroImageFromApplyExperiment;
- (id)localizationBundle;
- (id)preferredLanguage;
- (void)_acquireAssertion;
- (void)_deviceMetadataFields:(unint64_t)a3 completion:(id)a4;
- (void)_getODIAssessmentForSession:(id)a3 completion:(id)a4;
- (void)_handleApplyResponse:(id)a3 originalFeatureApplication:(id)a4 error:(id)a5 completion:(id)a6;
- (void)_handleCoreIDVPage:(id)a3 totalPageCount:(int64_t)a4 error:(id)a5 completion:(id)a6;
- (void)_handleResponseError:(id)a3 completion:(id)a4;
- (void)_invalidateAssertion;
- (void)_performApplyWithRequest:(id)a3 completion:(id)a4;
- (void)_performAuthenticationLocationBased:(BOOL)a3 withCompletion:(id)a4;
- (void)_performCoreIDVNextStepWithPage:(id)a3 completion:(id)a4;
- (void)_performCoreIDVShareWithCompletion:(id)a3;
- (void)_performCreateWithCompletion:(id)a3;
- (void)_performWithdrawWithCompletion:(id)a3;
- (void)_prewarmODIAssessmentIfNecessary;
- (void)_queueAcceptedFlowWithPage:(id)a3;
- (void)_queueActionFlowWithPage:(id)a3;
- (void)_queueApplicationTermsFlow;
- (void)_queueApplicationVerificationWithNextStepInfo:(id)a3;
- (void)_queueCannotResumeIDVFlow;
- (void)_queueCompleteFlowWithNextPage:(id)a3;
- (void)_queueConfirmInfoFlowWithPage:(id)a3;
- (void)_queueDeclinedFlowWithPage:(id)a3;
- (void)_queueDocumentSubmissionWithNextStepInfo:(id)a3;
- (void)_queueEmailRequiredErrorViewController;
- (void)_queueExpiredFlowWithPage:(id)a3;
- (void)_queueFieldsFlowWithNextStepInfo:(id)a3;
- (void)_queueGenericErrorViewController;
- (void)_queueGenericErrorViewControllerWithPage:(id)a3;
- (void)_queueInfoFlowWithNextWithPage:(id)a3;
- (void)_queueOfferFlowWithPage:(id)a3;
- (void)_queuePassActivationFlowWithCompletion:(id)a3;
- (void)_queueProgramConsentFlowWithPage:(id)a3;
- (void)_queueStateReasonExplanationFlowWithPage:(id)a3;
- (void)_queueTerminalStateFlowWithPage:(id)a3;
- (void)_reset;
- (void)_sendODISessionFeedbackforInflightSessionIfNecessary;
- (void)_startCoreIDVSessionWithStepInfo:(id)a3 completion:(id)a4;
- (void)_startPaymentServiceListener;
- (void)_stopPaymentServiceListener;
- (void)_submitAllFieldPages:(id)a3 completion:(id)a4;
- (void)_submitCoreIDVDocumentsPage:(id)a3 selectedDocument:(id)a4 frontImageData:(id)a5 backImageData:(id)a6 completion:(id)a7;
- (void)_submitCoreIDVFieldsPage:(id)a3 completion:(id)a4;
- (void)_submitDocumentPageWithCoreIDVImageUpload:(id)a3 selectedDocument:(id)a4 frontImageData:(id)a5 backImageData:(id)a6 completion:(id)a7;
- (void)_submitDocumentsPage:(id)a3 selectedDocument:(id)a4 frontImageData:(id)a5 backImageData:(id)a6 completion:(id)a7;
- (void)accountUserInvitationsWithCompletion:(id)a3;
- (void)dealloc;
- (void)endApplyFlow;
- (void)featureApplicationChanged:(id)a3;
- (void)featureApplicationsWithCompletion:(id)a3;
- (void)nextViewControllerWithCompletion:(id)a3;
- (void)reportAnalyticsDictionaryForPage:(id)a3 pageTag:(id)a4 additionalValues:(id)a5;
- (void)reportAnalyticsDictionaryForPage:(id)a3 subject:(id)a4 pageTag:(id)a5 error:(id)a6 additionalValues:(id)a7;
- (void)reportAnalyticsError:(id)a3 page:(id)a4 pageTag:(id)a5 additionalValues:(id)a6;
- (void)resendVerificationForPage:(id)a3 completion:(id)a4;
- (void)submitActionIdentifier:(id)a3 termsIdentifiers:(id)a4 odiAttributesDictionary:(id)a5 completion:(id)a6;
- (void)submitDocumentPage:(id)a3 selectedDocument:(id)a4 frontImage:(id)a5 backImage:(id)a6 completion:(id)a7;
- (void)submitFieldsPage:(id)a3 completion:(id)a4;
- (void)submitVerificationPage:(id)a3 verificationInfo:(id)a4 completion:(id)a5;
- (void)termsAccepted:(BOOL)a3 termsIdentifier:(id)a4 secondaryIdentifier:(id)a5 actionIdentifier:(id)a6 completion:(id)a7;
- (void)termsDataForFeatureWithIdentifier:(id)a3 format:(id)a4 completion:(id)a5;
- (void)termsDataForIdentifier:(id)a3 format:(id)a4 completion:(id)a5;
- (void)termsShownWithIdentifier:(id)a3;
- (void)withdrawApplicationWithCompletion:(id)a3;
@end

@implementation PKApplyController

- (PKApplyController)initWithApplyConfiguration:(id)a3
{
  v4 = a3;
  v5 = [v4 featureApplication];
  if (v5)
  {

LABEL_4:
    v30.receiver = self;
    v30.super_class = PKApplyController;
    v6 = [(PKApplyController *)&v30 init];
    if (v6)
    {
      v6->_featureIdentifier = [v4 feature];
      v6->_applicationType = [v4 applicationType];
      v7 = [v4 featureApplication];
      featureApplication = v6->_featureApplication;
      v6->_featureApplication = v7;

      v9 = [v4 referenceIdentifier];
      referenceIdentifier = v6->_referenceIdentifier;
      v6->_referenceIdentifier = v9;

      v6->_updateUserInfoSubType = [v4 updateUserInfoSubType];
      v6->_verificationType = [v4 verificationType];
      v6->_context = [v4 context];
      v11 = [v4 setupDelegate];
      objc_storeWeak(&v6->_setupDelegate, v11);

      v12 = [v4 provisioningController];
      provisioningController = v6->_provisioningController;
      v6->_provisioningController = v12;

      v14 = [v4 account];
      account = v6->_account;
      v6->_account = v14;

      v16 = [v4 fundingSource];
      fundingSource = v6->_fundingSource;
      v6->_fundingSource = v16;

      v18 = [(PKPaymentProvisioningController *)v6->_provisioningController webService];
      webService = v6->_webService;
      v6->_webService = v18;

      v20 = dispatch_queue_create("com.apple.applyManager.queue", 0);
      workQueue = v6->_workQueue;
      v6->_workQueue = v20;

      v22 = objc_alloc_init(MEMORY[0x1E695DF70]);
      viewControllers = v6->_viewControllers;
      v6->_viewControllers = v22;

      v24 = objc_alloc_init(MEMORY[0x1E695DF70]);
      pagesToSubmit = v6->_pagesToSubmit;
      v6->_pagesToSubmit = v24;

      v26 = [v4 context];
      if (v26 <= 0xA)
      {
        v6->_channel = qword_1BE115938[v26];
      }

      [(PKApplyController *)v6 _prewarmODIAssessmentIfNecessary];
    }

    self = v6;
    v27 = self;
    goto LABEL_9;
  }

  if ([v4 feature])
  {
    goto LABEL_4;
  }

  v29 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1BD026000, v29, OS_LOG_TYPE_DEFAULT, "Error: Cannot create controller with unknown feature or nil featureApplication", buf, 2u);
  }

  v27 = 0;
LABEL_9:

  return v27;
}

- (void)dealloc
{
  [(PKApplyController *)self _reset];
  [(PKPaymentService *)self->_paymentService unregisterObserver:self];
  v3.receiver = self;
  v3.super_class = PKApplyController;
  [(PKApplyController *)&v3 dealloc];
}

- (void)nextViewControllerWithCompletion:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(PKApplyController *)self _nextQueuedViewController];
    if (v5)
    {
      [(PKApplyController *)self _startPaymentServiceListener];
      v4[2](v4, v5, 0);
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
        v14 = v4;
        [v7 nextViewControllerWithCompletion:v13];
      }

      else
      {
        [(PKApplyController *)self _reset];
        v4[2](v4, 0, 0);
      }
    }

    else
    {
      [(PKApplyController *)self _startPaymentServiceListener];
      v8 = [(PKFeatureApplication *)self->_featureApplication applicationIdentifier];
      v9 = [v8 length];

      if (v9)
      {
        v10 = objc_alloc_init(MEMORY[0x1E69B8600]);
        [(PKApplyController *)self _performApplyWithRequest:v10 completion:v4];
      }

      else
      {
        v11 = PKLogFacilityTypeGetObject();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          v12[0] = 0;
          _os_log_impl(&dword_1BD026000, v11, OS_LOG_TYPE_DEFAULT, "No application present - creating one", v12, 2u);
        }

        [(PKApplyController *)self _performCreateWithCompletion:v4];
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

- (void)submitFieldsPage:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(PKFeatureApplication *)self->_featureApplication applicationState];
  if ((v8 - 5) >= 0xB && (v8 - 2) > 1)
  {
    if (self->_idVerificationSession)
    {
      [(PKApplyController *)self _submitCoreIDVFieldsPage:v6 completion:v7];
      goto LABEL_5;
    }

    [(NSMutableArray *)self->_pagesToSubmit addObject:v6];
    v10 = objc_alloc_init(MEMORY[0x1E69B8600]);
    v11 = [v6 fieldModel];
    v12 = *MEMORY[0x1E69BB760];
    v13 = [v11 submissionValuesForDestination:*MEMORY[0x1E69BB760]];
    [v10 setOverlayParameters:v13];

    v14 = [v11 secureSubmissionValuesForDestination:v12];
    [v10 setSecureOverlayParameters:v14];

    v15 = [(PKFeatureApplication *)self->_featureApplication applicationTermsIdentifier];
    v16 = [v6 footerContent];
    v17 = [v16 links];
    if ([v17 count])
    {
      v18 = [v15 length];

      if (!v18)
      {
LABEL_14:
        submitApplicationODISession = self->_submitApplicationODISession;
        v20 = [v11 odiAttributes];
        [(PKODIServiceProviderAssessment *)submitApplicationODISession updateAssessment:v20];

        [(PKApplyController *)self _performApplyWithRequest:v10 completion:v7];
        goto LABEL_5;
      }

      v16 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{v15, 0}];
      [v10 setTermsIdentifiers:v16];
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

  [(PKApplyController *)self nextViewControllerWithCompletion:v7];
LABEL_5:
}

- (void)_submitAllFieldPages:(id)a3 completion:(id)a4
{
  v26 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v9 = v6;
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

        v14 = [*(*(&v21 + 1) + 8 * v13) fieldModel];
        v15 = [v14 paymentSetupFields];
        [v8 addObjectsFromArray:v15];

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

  [(PKApplyController *)self _performApplyWithRequest:v17 completion:v7];
}

- (void)submitDocumentPage:(id)a3 selectedDocument:(id)a4 frontImage:(id)a5 backImage:(id)a6 completion:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v17 = [(PKFeatureApplication *)self->_featureApplication applicationState];
  if ((v17 - 5) < 0xB || (v17 - 2) <= 1)
  {
    v18 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1BD026000, v18, OS_LOG_TYPE_DEFAULT, "Cannot submit documents from this state - returning next view controller instead", buf, 2u);
    }

    [(PKApplyController *)self nextViewControllerWithCompletion:v16];
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
        v26 = v14;
        v27 = v15;
        v28 = self;
        v29 = v12;
        v30 = v13;
        v31 = v16;
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
        v33 = v14;
        v34 = v15;
        v35 = self;
        v36 = v12;
        v37 = v13;
        v38 = v16;
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
        v40 = v14;
        v41 = v15;
        v42 = self;
        v43 = v12;
        v44 = v13;
        v45 = v16;
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

      [(PKApplyController *)self _handleResponseError:0 completion:v16];
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

- (void)submitVerificationPage:(id)a3 verificationInfo:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(PKFeatureApplication *)self->_featureApplication applicationState];
  if ((v11 - 5) < 0xB || (v11 - 2) <= 1)
  {
    v12 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1BD026000, v12, OS_LOG_TYPE_DEFAULT, "Cannot submit verification from this state - returning next view controller instead", buf, 2u);
    }

    [(PKApplyController *)self nextViewControllerWithCompletion:v10];
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
    v21 = v9;
    v22 = v8;
    v23 = self;
    v25 = buf;
    v26 = v30;
    [v13 addOperation:v20];
    v14 = [MEMORY[0x1E695DFB0] null];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __72__PKApplyController_submitVerificationPage_verificationInfo_completion___block_invoke_7;
    v16[3] = &unk_1E801AD60;
    v17 = v10;
    v18 = buf;
    v19 = v30;
    v15 = [v13 evaluateWithInput:v14 completion:v16];

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

- (void)resendVerificationForPage:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    v8 = [(PKFeatureApplication *)self->_featureApplication applicationState];
    if ((v8 - 5) < 0xB || (v8 - 2) <= 1)
    {
      v9 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1BD026000, v9, OS_LOG_TYPE_DEFAULT, "Cannot resend verification from this state - returning next view controller instead", buf, 2u);
      }

      (*(v7 + 2))(v7, 0, 0);
    }

    else
    {
      v10 = objc_alloc_init(MEMORY[0x1E69B8640]);
      [v10 setVerificationType:{objc_msgSend(v6, "verificationType")}];
      v11 = [(PKFeatureApplication *)self->_featureApplication applicationIdentifier];
      [v10 setApplicationIdentifier:v11];

      v12 = [(PKFeatureApplication *)self->_featureApplication applicationBaseURL];
      [v10 setBaseURL:v12];

      webService = self->_webService;
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = __58__PKApplyController_resendVerificationForPage_completion___block_invoke;
      v14[3] = &unk_1E801AD88;
      v14[4] = self;
      v15 = v7;
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

- (void)termsShownWithIdentifier:(id)a3
{
  v29 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (v4)
  {
    shownTermsIdentifiers = self->_shownTermsIdentifiers;
    if (!shownTermsIdentifiers)
    {
      v6 = objc_alloc_init(MEMORY[0x1E695DFA8]);
      v7 = self->_shownTermsIdentifiers;
      self->_shownTermsIdentifiers = v6;

      shownTermsIdentifiers = self->_shownTermsIdentifiers;
    }

    if (([(NSMutableSet *)shownTermsIdentifiers containsObject:v4]& 1) != 0)
    {
      v8 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v28 = v4;
        v9 = "Already sent shownTerms for :%@";
        v10 = v8;
        v11 = 12;
LABEL_9:
        _os_log_impl(&dword_1BD026000, v10, OS_LOG_TYPE_DEFAULT, v9, buf, v11);
      }
    }

    else
    {
      [(NSMutableSet *)self->_shownTermsIdentifiers addObject:v4];
      v8 = objc_alloc_init(MEMORY[0x1E69B8628]);
      v12 = [(PKFeatureApplication *)self->_featureApplication applicationOfferDetails];
      v13 = [v12 offerTermsIdentifier];
      v14 = [v4 isEqualToString:v13];

      if (v14)
      {
        v15 = @"offer";
      }

      else
      {
        v16 = [(PKFeatureApplication *)self->_featureApplication declineDetails];
        v17 = [v16 declinedTermsIdentifier];
        v18 = [v4 isEqualToString:v17];

        if (v18)
        {
          v15 = @"decline";
        }

        else
        {
          v19 = [(PKFeatureApplication *)self->_featureApplication applicationTermsIdentifier];
          v20 = [v4 isEqualToString:v19];

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
      [v8 setTermsIdentifier:v4];
      v21 = [(PKFeatureApplication *)self->_featureApplication applicationIdentifier];
      [v8 setApplicationIdentifier:v21];

      v22 = [(PKFeatureApplication *)self->_featureApplication applicationBaseURL];
      [v8 setBaseURL:v22];

      v23 = [(PKPaymentProvisioningController *)self->_provisioningController referrerIdentifier];
      [v8 setReferrerIdentifier:v23];

      webService = self->_webService;
      v25[0] = MEMORY[0x1E69E9820];
      v25[1] = 3221225472;
      v25[2] = __46__PKApplyController_termsShownWithIdentifier___block_invoke;
      v25[3] = &unk_1E801ADB0;
      v25[4] = self;
      v26 = v4;
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

- (void)termsAccepted:(BOOL)a3 termsIdentifier:(id)a4 secondaryIdentifier:(id)a5 actionIdentifier:(id)a6 completion:(id)a7
{
  v10 = a3;
  v67 = *MEMORY[0x1E69E9840];
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  if (v15)
  {
    v16 = [(PKFeatureApplication *)self->_featureApplication applicationState];
    if (v16 > 0x10 || ((1 << v16) & 0x1FD2C) == 0)
    {
      processedTermsIdentifiers = self->_processedTermsIdentifiers;
      if (!processedTermsIdentifiers)
      {
        v20 = objc_alloc_init(MEMORY[0x1E695DFA8]);
        v21 = self->_processedTermsIdentifiers;
        self->_processedTermsIdentifiers = v20;

        processedTermsIdentifiers = self->_processedTermsIdentifiers;
      }

      if ([(NSMutableSet *)processedTermsIdentifiers containsObject:v12])
      {
        v22 = PKLogFacilityTypeGetObject();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
        {
          LODWORD(buf) = 138412290;
          *(&buf + 4) = v12;
          _os_log_impl(&dword_1BD026000, v22, OS_LOG_TYPE_DEFAULT, "Terms identifier: %@ has already been handled - querying next steps instead", &buf, 0xCu);
        }

        v23 = objc_alloc_init(MEMORY[0x1E69B8600]);
        [(PKApplyController *)self _performApplyWithRequest:v23 completion:v15];
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
        [v27 setTermsAccepted:v10];
        if ([(PKFeatureApplication *)self->_featureApplication applicationState]== 7)
        {
          [v27 setPathTermsIdentifier:v12];
          if (v13)
          {
            [v27 setPathIdentifier:v13];
          }
        }

        else
        {
          v28 = [(PKFeatureApplication *)self->_featureApplication applicationOfferDetails];
          v29 = [v28 offerTermsIdentifier];
          v30 = [v12 isEqualToString:v29];

          if (v30)
          {
            [v27 setOfferTermsIdentifier:v12];
          }

          else
          {
            v31 = [(PKFeatureApplication *)self->_featureApplication applicationTermsIdentifier];
            v32 = [v12 isEqualToString:v31];

            if (v32)
            {
              [v27 setApplicationTermsIdentifier:v12];
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
        v34 = [(PKFeatureApplication *)self->_featureApplication applicationIdentifier];
        [v27 setApplicationIdentifier:v34];

        v35 = [(PKFeatureApplication *)self->_featureApplication applicationBaseURL];
        [v27 setBaseURL:v35];

        v36 = [(PKPaymentProvisioningController *)self->_provisioningController referrerIdentifier];
        [v27 setReferrerIdentifier:v36];

        v37 = [(PKApplyController *)self _applyExperimentDetails];
        [v27 setExperimentDetails:v37];

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
        if (v14)
        {
          v39 = [(NSSet *)self->_actionIdentifiersRequiringAuthentication containsObject:v14];
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

        if (v10)
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
        v40 = [MEMORY[0x1E695DFB0] null];
        v43[0] = MEMORY[0x1E69E9820];
        v43[1] = 3221225472;
        v43[2] = __99__PKApplyController_termsAccepted_termsIdentifier_secondaryIdentifier_actionIdentifier_completion___block_invoke_80;
        v43[3] = &unk_1E801AF18;
        v43[4] = self;
        v47 = &buf;
        v46 = v15;
        v41 = v27;
        v44 = v41;
        objc_copyWeak(&v49, &location);
        v45 = v12;
        v48 = v59;
        v42 = [v38 evaluateWithInput:v40 completion:v43];

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

      [(PKApplyController *)self nextViewControllerWithCompletion:v15];
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

- (void)withdrawApplicationWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(PKFeatureApplication *)self->_featureApplication applicationState];
  if (v5 - 5 >= 0xC)
  {
    if (v5 <= 4)
    {
      v8[0] = MEMORY[0x1E69E9820];
      v8[1] = 3221225472;
      v8[2] = __55__PKApplyController_withdrawApplicationWithCompletion___block_invoke;
      v8[3] = &unk_1E801AF40;
      v8[4] = self;
      v9 = v4;
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
    if (v4)
    {
      (*(v4 + 2))(v4, 0, 0);
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

- (id)applicationUpdatedAlertControllerWithHandler:(id)a3
{
  v4 = a3;
  v5 = [(PKApplyController *)self preferredLanguage];
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
  v16 = v4;
  v12 = v4;
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
    v4 = [MEMORY[0x1E69B8DB8] paymentService];
    paymentService = self->_paymentService;
    self->_paymentService = v4;

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

- (void)_performWithdrawWithCompletion:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x1E69B85F8]);
  v6 = [(PKFeatureApplication *)self->_featureApplication applicationBaseURL];
  [v5 setBaseURL:v6];

  v7 = [(PKFeatureApplication *)self->_featureApplication applicationIdentifier];
  [v5 setApplicationIdentifier:v7];

  v8 = [(PKPaymentProvisioningController *)self->_provisioningController referrerIdentifier];
  [v5 setReferrerIdentifier:v8];

  ++self->_runningApplicationUpdates;
  paymentService = self->_paymentService;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __52__PKApplyController__performWithdrawWithCompletion___block_invoke;
  v11[3] = &unk_1E801AF40;
  v11[4] = self;
  v12 = v4;
  v10 = v4;
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

- (void)_deviceMetadataFields:(unint64_t)a3 completion:(id)a4
{
  v6 = a4;
  v7 = [(PKPaymentWebService *)self->_webService targetDevice];
  if (objc_opt_respondsToSelector())
  {
    webService = self->_webService;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __54__PKApplyController__deviceMetadataFields_completion___block_invoke;
    v9[3] = &unk_1E801A030;
    v10 = v6;
    [v7 paymentWebService:webService deviceMetadataWithFields:a3 completion:v9];
  }

  else
  {
    (*(v6 + 2))(v6, 0);
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

- (void)_performCreateWithCompletion:(id)a3
{
  v53 = *MEMORY[0x1E69E9840];
  v4 = a3;
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
    v10 = applyServiceURL;
  }

  else
  {
    v11 = [(PKPaymentProvisioningController *)self->_provisioningController webService];
    v12 = [v11 context];
    v13 = [v12 primaryRegion];
    v14 = [v13 applyServiceURL];
    v15 = v14;
    if (v14)
    {
      v16 = v14;
    }

    else
    {
      v16 = PKApplyServiceOverrideURL();
    }

    v10 = v16;

    if (!v10)
    {
      v17 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1BD026000, v17, OS_LOG_TYPE_DEFAULT, "No apply URL found in the primary region. Evaluating other regions for a possible apply URL.", buf, 2u);
      }

      v18 = [(PKPaymentProvisioningController *)self->_provisioningController webService];
      v19 = [v18 context];
      v20 = [v19 regions];

      v49 = 0u;
      v50 = 0u;
      v47 = 0u;
      v48 = 0u;
      v21 = v20;
      v10 = [v21 countByEnumeratingWithState:&v47 objects:v52 count:16];
      if (v10)
      {
        v22 = *v48;
        while (2)
        {
          for (i = 0; i != v10; i = (i + 1))
          {
            if (*v48 != v22)
            {
              objc_enumerationMutation(v21);
            }

            v24 = [v21 objectForKey:*(*(&v47 + 1) + 8 * i)];
            v25 = [v24 applyServiceURL];

            if (v25)
            {
              v10 = [v24 applyServiceURL];

              goto LABEL_22;
            }
          }

          v10 = [v21 countByEnumeratingWithState:&v47 objects:v52 count:16];
          if (v10)
          {
            continue;
          }

          break;
        }
      }

LABEL_22:
    }
  }

  [v8 setApplyServiceURL:v10];
  [v8 setFeatureIdentifier:self->_featureIdentifier];
  v26 = [(PKPaymentProvisioningController *)self->_provisioningController referrerIdentifier];
  [v8 setReferrerIdentifier:v26];

  v27 = [(PKApplyController *)self _applyExperimentDetails];
  [v8 setExperimentDetails:v27];

  [v8 setInstallmentConfiguration:self->_installmentConfiguration];
  [v8 setApplicationType:self->_applicationType];
  [v8 setUpdateUserInfoSubType:self->_updateUserInfoSubType];
  [v8 setVerificationType:self->_verificationType];
  v28 = [(PKAccount *)self->_account accountIdentifier];
  [v8 setAccountIdentifier:v28];

  [v8 setReferenceIdentifier:self->_referenceIdentifier];
  [v8 setChannel:self->_channel];
  v29 = objc_alloc(MEMORY[0x1E69B88A8]);
  v30 = [(PKFamilyMember *)self->_familyMember altDSID];
  v31 = [v29 initWithAccountUserAltDSID:v30 accessLevel:self->_accessLevel];

  [v8 setInvitationDetails:v31];
  v32 = [(PKAccountPaymentFundingSource *)self->_fundingSource identifier];
  [v8 setFundingSourceIdentifier:v32];

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
  v36 = [MEMORY[0x1E695DFB0] null];
  v41[0] = MEMORY[0x1E69E9820];
  v41[1] = 3221225472;
  v41[2] = __50__PKApplyController__performCreateWithCompletion___block_invoke_104;
  v41[3] = &unk_1E801AF90;
  v41[4] = self;
  v42 = v35;
  v43 = v33;
  v44 = v4;
  v37 = v4;
  v38 = v33;
  v39 = v35;
  v40 = [v34 evaluateWithInput:v36 completion:v41];
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

- (void)_performApplyWithRequest:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
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

  [v6 setCertificates:self->_encryptionCertificates];
  v11 = [(PKFeatureApplication *)self->_featureApplication applicationBaseURL];
  [v6 setBaseURL:v11];

  [v6 setFeatureIdentifier:self->_featureIdentifier];
  v12 = [(PKFeatureApplication *)self->_featureApplication applicationIdentifier];
  [v6 setApplicationIdentifier:v12];

  v13 = [(PKPaymentProvisioningController *)self->_provisioningController referrerIdentifier];
  [v6 setReferrerIdentifier:v13];

  v14 = [(PKApplyController *)self _applyExperimentDetails];
  [v6 setExperimentDetails:v14];

  [v6 setCoreIDVNextStepToken:self->_coreIDVNextStepToken];
  [v6 setPreviousContextIdentifier:self->_previousContextIdentifier];
  [v6 setInstallmentConfiguration:self->_installmentConfiguration];
  [v6 setPreliminaryAssessmentIdentifier:self->_preliminaryAssessmentIdentifier];
  [v6 setApplicationType:self->_applicationType];
  [v6 setUpdateUserInfoSubType:self->_updateUserInfoSubType];
  [v6 setChannel:self->_channel];
  v15 = objc_alloc(MEMORY[0x1E69B88A8]);
  v16 = [(PKFamilyMember *)self->_familyMember altDSID];
  v17 = [v15 initWithAccountUserAltDSID:v16 accessLevel:self->_accessLevel];

  [v6 setInvitationDetails:v17];
  v18 = [(PKAccount *)self->_account accountIdentifier];
  [v6 setAccountIdentifier:v18];

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
  v20 = [v6 actionIdentifier];
  if (v20)
  {
    v21 = [(NSSet *)self->_actionIdentifiersRequiringAuthentication containsObject:v20];
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
    v37 = v6;
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
    v35 = v6;
    [v19 addOperation:v34];
  }

  if (self->_requiresODIAssessment)
  {
    v32[0] = MEMORY[0x1E69E9820];
    v32[1] = 3221225472;
    v32[2] = __57__PKApplyController__performApplyWithRequest_completion___block_invoke_4;
    v32[3] = &unk_1E80145B0;
    v32[4] = self;
    v33 = v6;
    [v19 addOperation:v32];
  }

  v22 = [MEMORY[0x1E695DFB0] null];
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __57__PKApplyController__performApplyWithRequest_completion___block_invoke_109;
  v26[3] = &unk_1E801B058;
  v26[4] = self;
  v23 = v6;
  v27 = v23;
  objc_copyWeak(&v31, &location);
  v24 = v7;
  v28 = v24;
  v29 = v41;
  v30 = buf;
  v25 = [v19 evaluateWithInput:v22 completion:v26];

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

- (void)_performAuthenticationLocationBased:(BOOL)a3 withCompletion:(id)a4
{
  v4 = a3;
  v20[3] = *MEMORY[0x1E69E9840];
  v5 = a4;
  if (v5)
  {
    if (v4)
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
    v11 = v5;
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

- (void)termsDataForIdentifier:(id)a3 format:(id)a4 completion:(id)a5
{
  v8 = a5;
  if (v8)
  {
    v9 = MEMORY[0x1E69B8630];
    v10 = a4;
    v11 = a3;
    v12 = objc_alloc_init(v9);
    [v12 setTermsDataFormat:v10];

    [v12 setTermsIdentifier:v11];
    v13 = [(PKFeatureApplication *)self->_featureApplication applicationIdentifier];
    [v12 setApplicationIdentifier:v13];

    [v12 setFeatureIdentifier:self->_featureIdentifier];
    v14 = [(PKFeatureApplication *)self->_featureApplication applicationBaseURL];
    [v12 setBaseURL:v14];

    v15 = [(PKPaymentProvisioningController *)self->_provisioningController referrerIdentifier];
    [v12 setReferrerIdentifier:v15];

    webService = self->_webService;
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __62__PKApplyController_termsDataForIdentifier_format_completion___block_invoke;
    v17[3] = &unk_1E801B0A8;
    v17[4] = self;
    v18 = v8;
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

- (void)termsDataForFeatureWithIdentifier:(id)a3 format:(id)a4 completion:(id)a5
{
  v8 = a5;
  if (v8)
  {
    v9 = MEMORY[0x1E69B8618];
    v10 = a4;
    v11 = a3;
    v12 = objc_alloc_init(v9);
    [v12 setTermsDataFormat:v10];

    [v12 setTermsIdentifier:v11];
    [v12 setFeatureIdentifier:self->_featureIdentifier];
    v13 = [(PKPaymentProvisioningController *)self->_provisioningController referrerIdentifier];
    [v12 setReferrerIdentifier:v13];

    webService = self->_webService;
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __73__PKApplyController_termsDataForFeatureWithIdentifier_format_completion___block_invoke;
    v15[3] = &unk_1E801B0A8;
    v15[4] = self;
    v16 = v8;
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

- (void)submitActionIdentifier:(id)a3 termsIdentifiers:(id)a4 odiAttributesDictionary:(id)a5 completion:(id)a6
{
  v22 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [(PKFeatureApplication *)self->_featureApplication applicationState];
  if (v14 > 0xF || ((1 << v14) & 0xFF6C) == 0)
  {
    if ([v12 count])
    {
      v17 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v20 = 138412290;
        v21 = v12;
        _os_log_impl(&dword_1BD026000, v17, OS_LOG_TYPE_DEFAULT, "Adding ODI submit application attributes %@", &v20, 0xCu);
      }

      v18 = objc_alloc_init(MEMORY[0x1E69983B8]);
      [v18 setAttributes:v12];
      [(PKODIServiceProviderAssessment *)self->_submitApplicationODISession updateAssessment:v18];
    }

    v19 = objc_alloc_init(MEMORY[0x1E69B8600]);
    [v19 setActionIdentifier:v10];
    [v19 setTermsIdentifiers:v11];
    [(PKApplyController *)self _performApplyWithRequest:v19 completion:v13];
  }

  else
  {
    v16 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v20) = 0;
      _os_log_impl(&dword_1BD026000, v16, OS_LOG_TYPE_DEFAULT, "Cannot accept terms from this state - returning next view controller instead", &v20, 2u);
    }

    [(PKApplyController *)self nextViewControllerWithCompletion:v13];
  }
}

- (void)_handleResponseError:(id)a3 completion:(id)a4
{
  v6 = a4;
  if (v6)
  {
    self->_didEncounterError = 1;
    v9 = v6;
    v7 = [(PKApplyController *)self _displayableErrorForError:a3 showDetailedErrorFlow:1];
    if (v7)
    {
      v9[2]();
    }

    else
    {
      v8 = [(PKApplyController *)self _nextQueuedViewController];
      (v9[2])(v9, v8, 0);
    }

    v6 = v9;
  }
}

- (void)_handleApplyResponse:(id)a3 originalFeatureApplication:(id)a4 error:(id)a5 completion:(id)a6
{
  v68 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [v11 applicationState];
  if ([(PKFeatureApplication *)self->_featureApplication applicationState]== v14)
  {
    v15 = [(PKFeatureApplication *)self->_featureApplication applicationStateReason];
    if (v15 == [v11 applicationStateReason])
    {
      if (v12)
      {
        [(PKApplyController *)self _handleResponseError:v12 completion:v13];
        goto LABEL_8;
      }

      if (v10)
      {
        self->_didEncounterError = 0;
        v17 = [v10 featureApplication];
        featureApplication = self->_featureApplication;
        self->_featureApplication = v17;

        self->_requiredMetadataFields = [v10 requiredDeviceMetadataFields];
        self->_requiresODIAssessment = [v10 requiresODIAssessment];
        v19 = [v10 actionIdentifiersRequiringAuthentication];
        actionIdentifiersRequiringAuthentication = self->_actionIdentifiersRequiringAuthentication;
        self->_actionIdentifiersRequiringAuthentication = v19;

        v21 = [v10 account];

        if (v21)
        {
          v22 = [v10 account];
          account = self->_account;
          self->_account = v22;
        }

        v24 = [v10 nextStepInfo];
        v25 = v24;
        if (v24)
        {
          v26 = [v24 pages];
          v27 = [v26 firstObject];

          v28 = [v25 encryptionCertificates];
          if ([v28 count])
          {
            objc_storeStrong(&self->_encryptionCertificates, v28);
          }

          if (v27)
          {
LABEL_19:
            if ([(PKFeatureApplication *)self->_featureApplication applicationStateReason]== 4)
            {
              [(PKApplyController *)self _queueStateReasonExplanationFlowWithPage:v27];
LABEL_25:
              v30 = [(PKApplyController *)self _nextQueuedViewController];
              v13[2](v13, v30, 0);

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

            v31 = [(PKFeatureApplication *)self->_featureApplication applicationState];
            if (v31 > 8)
            {
              if (v31 > 12)
              {
                if ((v31 - 13) >= 3)
                {
                  if (v31 != 16)
                  {
                    goto LABEL_26;
                  }

                  goto LABEL_30;
                }

                v37 = [(PKFeatureApplication *)self->_featureApplication applicationType];
                if (v37 > 6 || v37 == 2 && ([v27 isEmptyPage] & 1) != 0)
                {
                  goto LABEL_25;
                }
              }

              else
              {
                if ((v31 - 10) >= 2)
                {
                  if (v31 != 9)
                  {
                    if (v31 != 12)
                    {
                      goto LABEL_26;
                    }

                    [(PKApplyController *)self _queueExpiredFlowWithPage:v27];
                    goto LABEL_25;
                  }

                  if (self->_account)
                  {
                    [(PKApplyController *)self endApplyFlow];
                    if ([(PKFeatureApplication *)self->_featureApplication feature]== 5)
                    {
                      v13[2](v13, 0, 0);
                    }

                    else
                    {
                      [(PKApplyController *)self _queuePassActivationFlowWithCompletion:v13];
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

                if (v14 <= 0x10 && ((1 << v14) & 0x1005E) != 0)
                {
LABEL_88:
                  [(PKApplyController *)self endApplyFlow];
                  goto LABEL_25;
                }
              }

              [(PKApplyController *)self _queueTerminalStateFlowWithPage:v27];
              goto LABEL_25;
            }

            if (v31 <= 4)
            {
              if (v31 >= 5)
              {
                goto LABEL_26;
              }

LABEL_30:
              if (v25)
              {
                v32 = [v25 contextType];
                if (v32 <= 4)
                {
                  if (v32 <= 1)
                  {
                    if (v32)
                    {
                      if (v32 == 1)
                      {
                        [(PKApplyController *)self _startCoreIDVSessionWithStepInfo:v25 completion:v13];
                      }

                      goto LABEL_26;
                    }

                    [(PKApplyController *)self _queueFieldsFlowWithNextStepInfo:v25];
                  }

                  else if (v32 == 2)
                  {
                    [(PKApplyController *)self _queueDocumentSubmissionWithNextStepInfo:v25];
                  }

                  else if (v32 == 3)
                  {
                    [(PKApplyController *)self _queueApplicationTermsFlow];
                  }

                  else
                  {
                    [(PKApplyController *)self _queueActionFlowWithPage:v27];
                  }

                  goto LABEL_25;
                }

                if (v32 > 7)
                {
                  if (v32 != 8)
                  {
                    if (v32 == 9)
                    {
                      [(PKApplyController *)self _queueApplicationVerificationWithNextStepInfo:v25];
                    }

                    else
                    {
                      if (v32 != 10)
                      {
                        goto LABEL_26;
                      }

                      [(PKApplyController *)self _queueConfirmInfoFlowWithPage:v27];
                    }

                    goto LABEL_25;
                  }

                  if ([(PKFeatureApplication *)self->_featureApplication applicationType]!= 2)
                  {
                    goto LABEL_26;
                  }

                  [(PKApplyController *)self _startPaymentServiceListener];
                  v50 = [(PKFeatureApplication *)self->_featureApplication applicationIdentifier];
                  paymentService = self->_paymentService;
                  v63[0] = MEMORY[0x1E69E9820];
                  v63[1] = 3221225472;
                  v63[2] = __86__PKApplyController__handleApplyResponse_originalFeatureApplication_error_completion___block_invoke;
                  v63[3] = &unk_1E801B0D0;
                  v63[4] = self;
                  v64 = v50;
                  v65 = v13;
                  v38 = v50;
                  [(PKPaymentService *)paymentService featureApplicationWithReferenceIdentifier:v38 completion:v63];
                  [(PKApplyController *)self endApplyFlow];
                }

                else
                {
                  if (v32 == 5)
                  {
                    [(PKApplyController *)self _queueInfoFlowWithNextWithPage:v27];
                    goto LABEL_25;
                  }

                  if (v32 != 6)
                  {
                    if (-[PKFeatureApplication applicationType](self->_featureApplication, "applicationType") == 2 && ([v27 isEmptyPage] & 1) == 0)
                    {
                      [(PKApplyController *)self _queueCompleteFlowWithNextPage:v27];
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

                  v38 = [(NSMutableArray *)self->_pagesToSubmit copy];
                  [(NSMutableArray *)self->_pagesToSubmit removeAllObjects];
                  v49 = PKLogFacilityTypeGetObject();
                  if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 134217984;
                    v67 = [v38 count];
                    _os_log_impl(&dword_1BD026000, v49, OS_LOG_TYPE_DEFAULT, "Submitting all %ld combined pages.", buf, 0xCu);
                  }

                  [(PKApplyController *)self _submitAllFieldPages:v38 completion:v13];
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

            if (v31 <= 6)
            {
              if (v31 != 5)
              {
                v35 = [(PKFeatureApplication *)self->_featureApplication feature];
                if (v35 > 3)
                {
                  if ((v35 - 4) >= 2)
                  {
                    goto LABEL_26;
                  }
                }

                else if (v35)
                {
                  if (v35 == 1)
                  {
LABEL_60:
                    [(PKApplyController *)self _queueGenericErrorViewController];
                    goto LABEL_25;
                  }

                  if (v35 != 2)
                  {
                    goto LABEL_26;
                  }

                  v36 = [(PKFeatureApplication *)self->_featureApplication applicationOfferDetails];

                  if (v36)
                  {
                    [(PKApplyController *)self _queueOfferFlowWithPage:v27];
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

                if (![v27 isEmptyPage])
                {
                  [(PKApplyController *)self _queueCompleteFlowWithNextPage:v27];
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

              [(PKApplyController *)self _queueStateReasonExplanationFlowWithPage:v27];
              v38 = [(PKApplyController *)self _nextQueuedViewController];
              WeakRetained = objc_loadWeakRetained(&self->_setupDelegate);
              v40 = WeakRetained;
              if (self->_installmentConfiguration && WeakRetained && (objc_opt_respondsToSelector() & 1) != 0)
              {
                v41 = self->_featureApplication;
                v60[0] = MEMORY[0x1E69E9820];
                v60[1] = 3221225472;
                v60[2] = __86__PKApplyController__handleApplyResponse_originalFeatureApplication_error_completion___block_invoke_2;
                v60[3] = &unk_1E8010E20;
                v62 = v13;
                v61 = v38;
                [v40 viewController:v61 canProceedWithInstallment:0 featureApplication:v41 completion:v60];
              }

              else
              {
                v13[2](v13, v38, 0);
              }

LABEL_142:

              goto LABEL_143;
            }

            if (v31 != 7)
            {
              if (-[PKFeatureApplication applicationType](self->_featureApplication, "applicationType") != 2 || ([v27 isEmptyPage] & 1) == 0)
              {
                [(PKApplyController *)self _queueAcceptedFlowWithPage:v27];
              }

              goto LABEL_25;
            }

            v42 = [v25 contextType];
            if ([v27 isEmptyPage] && v42 == 7)
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
              v45 = [(PKFeatureApplication *)self->_featureApplication declineDetails];
              if (v45 || [(PKFeatureApplication *)self->_featureApplication feature]== 3)
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

            v56 = [v27 identifier];
            v46 = [v56 length];
            v47 = PKLogFacilityTypeGetObject();
            v48 = os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT);
            if (v46)
            {
              if (v42 == 3)
              {
                if (v48)
                {
                  *buf = 0;
                  _os_log_impl(&dword_1BD026000, v47, OS_LOG_TYPE_DEFAULT, "Declined with terms, queue terms consent screen", buf, 2u);
                }

                [(PKApplyController *)self _queueProgramConsentFlowWithPage:v27];
                goto LABEL_136;
              }

              if (v42 == 4)
              {
                if (v48)
                {
                  *buf = 0;
                  _os_log_impl(&dword_1BD026000, v47, OS_LOG_TYPE_DEFAULT, "Declined with action, queue action screen", buf, 2u);
                }

                [(PKApplyController *)self _queueActionFlowWithPage:v27];
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

            [(PKApplyController *)self _queueDeclinedFlowWithPage:v27];
LABEL_136:
            v38 = v56;
            v40 = [(PKApplyController *)self _nextQueuedViewController];
            v53 = objc_loadWeakRetained(&self->_setupDelegate);
            v54 = v53;
            if (self->_installmentConfiguration && v53 && (objc_opt_respondsToSelector() & 1) != 0)
            {
              v55 = self->_featureApplication;
              v57[0] = MEMORY[0x1E69E9820];
              v57[1] = 3221225472;
              v57[2] = __86__PKApplyController__handleApplyResponse_originalFeatureApplication_error_completion___block_invoke_137;
              v57[3] = &unk_1E8010E20;
              v59 = v13;
              v58 = v40;
              [v54 viewController:v58 canProceedWithInstallment:0 featureApplication:v55 completion:v57];
            }

            else
            {
              v13[2](v13, v40, 0);
            }

            goto LABEL_142;
          }
        }
      }

      else
      {
        v25 = 0;
      }

      v27 = objc_alloc_init(MEMORY[0x1E69B8818]);
      goto LABEL_19;
    }
  }

  v16 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1BD026000, v16, OS_LOG_TYPE_DEFAULT, "Feature application updated during last request. Ignoring response and fetching an update", buf, 2u);
  }

  [(PKApplyController *)self nextViewControllerWithCompletion:v13];
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

- (void)reportAnalyticsDictionaryForPage:(id)a3 pageTag:(id)a4 additionalValues:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(PKApplyController *)self _defaultSubject];
  [(PKApplyController *)self reportAnalyticsDictionaryForPage:v10 subject:v11 pageTag:v9 error:0 additionalValues:v8];
}

- (void)reportAnalyticsError:(id)a3 page:(id)a4 pageTag:(id)a5 additionalValues:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v14 = [(PKApplyController *)self _defaultSubject];
  [(PKApplyController *)self reportAnalyticsDictionaryForPage:v12 subject:v14 pageTag:v11 error:v13 additionalValues:v10];
}

- (void)reportAnalyticsDictionaryForPage:(id)a3 subject:(id)a4 pageTag:(id)a5 error:(id)a6 additionalValues:(id)a7
{
  v28 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  if (!v12)
  {
    v12 = [(PKApplyController *)self _defaultSubject];
  }

  if (v13 && v12)
  {
    v16 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v17 = PKFeatureIdentifierToString();
    [v16 setObject:v17 forKey:*MEMORY[0x1E69BA850]];

    v18 = PKFeatureApplicationTypeToString();
    [v16 setObject:v18 forKey:*MEMORY[0x1E69BA1B8]];

    [v16 setObject:v13 forKey:*MEMORY[0x1E69BABE8]];
    v19 = [v28 identifier];

    if (v19)
    {
      v20 = [v28 identifier];
      [v16 setObject:v20 forKey:*MEMORY[0x1E69BA1F8]];
    }

    analyticsExistingAccountType = self->_analyticsExistingAccountType;
    if (analyticsExistingAccountType)
    {
      [v16 setObject:analyticsExistingAccountType forKey:*MEMORY[0x1E69BA688]];
    }

    if ([v15 count])
    {
      [v16 addEntriesFromDictionary:v15];
    }

    if (v14)
    {
      v22 = [v14 userInfo];
      v23 = [v22 objectForKey:*MEMORY[0x1E696AA08]];

      v24 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%ld", objc_msgSend(v23, "code")];
      v25 = [MEMORY[0x1E69B8540] analyticsErrorTextForError:{objc_msgSend(v23, "code")}];
      [v16 setObject:v24 forKey:*MEMORY[0x1E69BA660]];
      [v16 setObject:v25 forKey:*MEMORY[0x1E69BA668]];
    }

    v26 = MEMORY[0x1E69B8540];
    v27 = [v16 copy];
    [v26 subject:v12 sendEvent:v27];
  }
}

- (void)accountUserInvitationsWithCompletion:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    paymentService = self->_paymentService;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __58__PKApplyController_accountUserInvitationsWithCompletion___block_invoke;
    v7[3] = &unk_1E8016258;
    v8 = v4;
    [(PKPaymentService *)paymentService featureApplicationsForAccountUserInvitationWithCompletion:v7];
  }
}

- (void)featureApplicationsWithCompletion:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    paymentService = self->_paymentService;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __55__PKApplyController_featureApplicationsWithCompletion___block_invoke;
    v7[3] = &unk_1E8016258;
    v8 = v4;
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
    v9 = [MEMORY[0x1E69B8568] sharedInstance];
    v10 = [v9 appleAccountInformation];

    v11 = [MEMORY[0x1E69B8568] sharedInstance];
    v12 = [v11 appleAccountInformation];
    v13 = [v12 aaDSID];

    v14 = [v10 firstName];
    v15 = [v10 lastName];
    v16 = [v10 primaryEmailAddress];
    v17 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v18 = v17;
    if (v13)
    {
      [v17 setObject:v13 forKey:*MEMORY[0x1E6998530]];
    }

    if (v14)
    {
      [v18 setObject:v14 forKey:*MEMORY[0x1E6998518]];
    }

    if (v15)
    {
      [v18 setObject:v15 forKey:*MEMORY[0x1E6998540]];
    }

    if (v16)
    {
      [v18 setObject:v16 forKey:*MEMORY[0x1E6998500]];
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

- (void)_getODIAssessmentForSession:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    workQueue = self->_workQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __60__PKApplyController__getODIAssessmentForSession_completion___block_invoke;
    block[3] = &unk_1E8014918;
    v10 = v6;
    v11 = self;
    v12 = v7;
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
      v5 = [(PKODIServiceProviderAssessment *)inflightODISession currentAssessmentDidTimeout];
      inflightODISession = self->_inflightODISession;
      if (v5)
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

- (void)_startCoreIDVSessionWithStepInfo:(id)a3 completion:(id)a4
{
  v54 = *MEMORY[0x1E69E9840];
  v6 = a3;
  self->_documentUploadType = 1;
  v7 = MEMORY[0x1E695DF90];
  v40 = a4;
  v8 = objc_alloc_init(v7);
  v9 = [(PKPaymentWebService *)self->_webService webServiceSessionMarker];
  if (v9)
  {
    [v8 setObject:v9 forKey:*MEMORY[0x1E6997E18]];
  }

  v42 = v9;
  v10 = [(PKPaymentWebService *)self->_webService _appleAccountInformation];
  v11 = [v10 authorizationHeader];

  if (v11)
  {
    [v8 setObject:v11 forKey:*MEMORY[0x1E6997E20]];
  }

  v12 = [(PKPaymentProvisioningController *)self->_provisioningController referrerIdentifier];
  if (v12)
  {
    [v8 setObject:v12 forKey:*MEMORY[0x1E69BB8D8]];
  }

  v13 = [v6 conversationIdentifier];
  if (v13)
  {
    [v8 setObject:v13 forKey:*MEMORY[0x1E69BB8D0]];
  }

  v14 = [(PKPaymentWebService *)self->_webService targetDevice];
  v37 = v14;
  if (!v14)
  {
    v14 = MEMORY[0x1E69B91E0];
  }

  [v14 secureElementIdentifiers];
  v36 = v39 = v12;
  v15 = [v36 componentsJoinedByString:{@", "}];
  if (v15)
  {
    [v8 setObject:v15 forKey:*MEMORY[0x1E69BB8E0]];
  }

  v35 = v15;
  v41 = v11;
  v16 = [v6 coreIDVServiceProviderName];
  v17 = v16;
  if (v16)
  {
    v18 = v16;
  }

  else
  {
    v18 = [(PKFeatureApplication *)self->_featureApplication coreIDVServiceProviderName];
  }

  v19 = v18;
  v38 = v13;

  v43 = v6;
  v20 = [v6 coreIDVTier];
  v21 = PKCurrentRegion();
  v22 = [(PKFeatureApplication *)self->_featureApplication applicationBaseURL];
  v23 = [v22 URLByAppendingPathComponent:@"v1"];

  v24 = [v23 URLByAppendingPathComponent:@"applications"];

  v25 = [(PKFeatureApplication *)self->_featureApplication applicationIdentifier];
  v26 = [v24 URLByAppendingPathComponent:v25];

  v27 = [v26 absoluteString];
  v28 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138413314;
    v45 = v8;
    v46 = 2112;
    v47 = v27;
    v48 = 2112;
    v49 = v19;
    v50 = 2112;
    v51 = v20;
    v52 = 2112;
    v53 = v21;
    _os_log_impl(&dword_1BD026000, v28, OS_LOG_TYPE_DEFAULT, "Creating DIVerificationSession withHeaders:%@ serviceURL:%@ name:%@ tier:%@ region: %@", buf, 0x34u);
  }

  v29 = objc_alloc(MEMORY[0x1E6997E10]);
  v30 = [v8 copy];
  v31 = [v29 initWithName:v19 tier:v20 serviceUrl:v27 httpHeaders:v30];

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

  [(PKApplyController *)self _performCoreIDVNextStepWithPage:0 completion:v40];
}

- (void)_submitCoreIDVFieldsPage:(id)a3 completion:(id)a4
{
  v22 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v9 = [v6 fieldModel];
  v10 = [v9 paymentSetupFields];

  v11 = [v10 countByEnumeratingWithState:&v17 objects:v21 count:16];
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
          objc_enumerationMutation(v10);
        }

        v15 = [*(*(&v17 + 1) + 8 * v14) submissionAttribute];
        if (v15)
        {
          [v8 addObject:v15];
        }

        ++v14;
      }

      while (v12 != v14);
      v12 = [v10 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v12);
  }

  if ([v8 count])
  {
    v16 = objc_alloc_init(MEMORY[0x1E6997DF8]);
    [v16 setPage:{objc_msgSend(v6, "pageNumber")}];
    [v16 setAttributes:v8];
  }

  else
  {
    v16 = 0;
  }

  [(PKApplyController *)self _performCoreIDVNextStepWithPage:v16 completion:v7];
}

- (void)_submitCoreIDVDocumentsPage:(id)a3 selectedDocument:(id)a4 frontImageData:(id)a5 backImageData:(id)a6 completion:(id)a7
{
  v24[1] = *MEMORY[0x1E69E9840];
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v17 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if (v14)
  {
    v18 = objc_alloc_init(MEMORY[0x1E6997D68]);
    [v18 setCurrentValue:v14];
    [v18 setFormat:2];
    [v17 addObject:v18];
  }

  if (v15)
  {
    v19 = objc_alloc_init(MEMORY[0x1E6997D68]);
    [v19 setCurrentValue:v15];
    [v19 setFormat:2];
    [v17 addObject:v19];
  }

  v20 = [v13 documentAttribute];
  [v20 setDocType:1];
  v21 = [v17 copy];
  [v20 setCurrentValue:v21];

  if (v20)
  {
    v22 = objc_alloc_init(MEMORY[0x1E6997DF8]);
    [v22 setPage:{objc_msgSend(v12, "pageNumber")}];
    v24[0] = v20;
    v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:1];
    [v22 setAttributes:v23];
  }

  else
  {
    v22 = 0;
  }

  [(PKApplyController *)self _performCoreIDVNextStepWithPage:v22 completion:v16];
}

- (void)_performCoreIDVNextStepWithPage:(id)a3 completion:(id)a4
{
  v21 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (self->_idVerificationSession)
  {
    v9 = mach_absolute_time();
    v10 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = [v6 description];
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
    [(DIVerificationSession *)idVerificationSession performVerificationWithAttributes:v6 completion:v14];
    v13 = v15;
  }

  else
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __64__PKApplyController__performCoreIDVNextStepWithPage_completion___block_invoke;
    block[3] = &unk_1E8010B50;
    v18 = v7;
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

- (void)_handleCoreIDVPage:(id)a3 totalPageCount:(int64_t)a4 error:(id)a5 completion:(id)a6
{
  v76 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a5;
  v11 = a6;
  v12 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1BD026000, v12, OS_LOG_TYPE_DEFAULT, "Preparing attributes for display", buf, 2u);
  }

  v13 = [v9 attributes];
  v14 = [v13 count];
  if (v14)
  {
    v15 = v14;
    v49 = self;
    v50 = v11;
    v51 = v10;
    v52 = v9;
    v53 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v14];
    v16 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v15];
    v67 = 0u;
    v68 = 0u;
    v69 = 0u;
    v70 = 0u;
    v48 = v13;
    v17 = v13;
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
            v24 = [v23 identifier];
            v25 = v24;
            if (v23 && [v24 length])
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
            v29 = [v28 acceptableDocTypes];
            v59 = 0u;
            v60 = 0u;
            v61 = 0u;
            v62 = 0u;
            v30 = [v28 acceptableDocs];
            v31 = [v30 countByEnumeratingWithState:&v59 objects:v71 count:16];
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
                    objc_enumerationMutation(v30);
                  }

                  v35 = [*(*(&v59 + 1) + 8 * j) countryCode];
                  if ((v29 & 2) != 0)
                  {
                    v36 = objc_alloc_init(MEMORY[0x1E69B8808]);
                    [v36 setCountryCode:v35];
                    [v36 setDocumentType:1];
                    [v36 setDocumentAttribute:v28];
                    [v26 addObject:v36];
                  }

                  if ((v29 & 4) != 0)
                  {
                    v37 = objc_alloc_init(MEMORY[0x1E69B8808]);
                    [v37 setCountryCode:v35];
                    [v37 setDocumentType:2];
                    [v37 setDocumentAttribute:v28];
                    [v26 addObject:v37];
                  }
                }

                v32 = [v30 countByEnumeratingWithState:&v59 objects:v71 count:16];
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
      v9 = v52;
      [v38 setPageNumber:{objc_msgSend(v52, "page")}];
      [v38 setAcceptableDocuments:v26];
      v39 = [PKApplyDocumentSubmissionController alloc];
      v40 = v49;
      WeakRetained = objc_loadWeakRetained(&v49->_setupDelegate);
      v42 = [(PKApplyDocumentSubmissionController *)v39 initWithController:v49 setupDelegate:WeakRetained documentPage:v38];

      v43 = [(PKApplyDocumentSubmissionController *)v42 nextViewController];
      [(NSMutableArray *)v49->_viewControllers addObject:v43];

      v13 = v48;
      v44 = v53;
      v16 = v55;
    }

    else
    {
      v26 = objc_alloc_init(MEMORY[0x1E69B85E0]);
      v9 = v52;
      [v26 setPageNumber:{objc_msgSend(v52, "page")}];
      v45 = [v52 title];
      [v26 setTitle:v45];

      v46 = [v52 subTitle];
      [v26 setSubtitle:v46];

      v44 = v53;
      v38 = [objc_alloc(MEMORY[0x1E69B8E38]) initWithPaymentSetupFields:v53];
      [v26 setFieldModel:v38];
      v40 = v49;
      v42 = [(PKApplyController *)v49 _fieldsViewControllerForPage:v26];
      [(NSMutableArray *)v49->_viewControllers addObject:v42];
    }

    v47 = [(PKApplyController *)v40 _nextQueuedViewController];
    v11 = v50;
    (*(v50 + 2))(v50, v47, 0);

    v10 = v51;
  }

  else
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1BD026000, v12, OS_LOG_TYPE_DEFAULT, "Error: no attributes to display", buf, 2u);
    }

    [(PKApplyController *)self _handleResponseError:v10 completion:v11];
  }
}

- (void)_performCoreIDVShareWithCompletion:(id)a3
{
  v20[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = v4;
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
    v16 = v4;
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

- (void)_submitDocumentsPage:(id)a3 selectedDocument:(id)a4 frontImageData:(id)a5 backImageData:(id)a6 completion:(id)a7
{
  v11 = a7;
  v12 = MEMORY[0x1E69B8610];
  v13 = a6;
  v14 = a5;
  v15 = a4;
  v16 = objc_alloc_init(v12);
  v17 = [(PKFeatureApplication *)self->_featureApplication applicationIdentifier];
  [v16 setApplicationIdentifier:v17];

  [v16 setFeatureIdentifier:self->_featureIdentifier];
  v18 = [(PKFeatureApplication *)self->_featureApplication applicationBaseURL];
  [v16 setBaseURL:v18];

  [v16 setFrontImageData:v14];
  [v16 setBackImageData:v13];

  v19 = [v15 countryCode];
  [v16 setDocumentCountryCode:v19];

  v20 = [v15 documentType];
  [v16 setDocumentType:v20];
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
  v27 = v11;
  v23 = v11;
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

- (void)_submitDocumentPageWithCoreIDVImageUpload:(id)a3 selectedDocument:(id)a4 frontImageData:(id)a5 backImageData:(id)a6 completion:(id)a7
{
  v51[2] = *MEMORY[0x1E69E9840];
  v12 = a3;
  v26 = a4;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  v25 = v13;
  v16 = [objc_alloc(MEMORY[0x1E6997E00]) initWithData:v13 assetType:0];
  v17 = [objc_alloc(MEMORY[0x1E6997E00]) initWithData:v14 assetType:1];
  v51[0] = v16;
  v51[1] = v17;
  v27 = [MEMORY[0x1E695DEC8] arrayWithObjects:v51 count:2];
  v18 = [v12 imageCaptureEncryptionCertificates];
  v19 = [v12 imageCaptureEncryptionVersion];
  v20 = v19;
  if (!v18)
  {
    v24 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1BD026000, v24, OS_LOG_TYPE_DEFAULT, "Error: coreIDV docment CK update requires certifiates.", buf, 2u);
    }

    goto LABEL_9;
  }

  if (!v19)
  {
    v24 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1BD026000, v24, OS_LOG_TYPE_DEFAULT, "Error: coreIDV docment CK update requires encryptionVersion.", buf, 2u);
    }

LABEL_9:

    [(PKApplyController *)self _handleResponseError:0 completion:v15];
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
  v39 = v18;
  v40 = v20;
  v44 = buf;
  v41 = v27;
  v42 = self;
  v43 = v26;
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
  v22 = [MEMORY[0x1E695DFB0] null];
  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = __120__PKApplyController__submitDocumentPageWithCoreIDVImageUpload_selectedDocument_frontImageData_backImageData_completion___block_invoke_7;
  v28[3] = &unk_1E801AD60;
  v29 = v15;
  v30 = v35;
  v31 = v33;
  v23 = [v21 evaluateWithInput:v22 completion:v28];

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

- (void)_queueDocumentSubmissionWithNextStepInfo:(id)a3
{
  v4 = a3;
  v5 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1BD026000, v5, OS_LOG_TYPE_DEFAULT, "Preparing documention submission.", buf, 2u);
  }

  v6 = [v4 pages];
  v7 = [v6 firstObject];

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && (v8 = v7) != 0)
  {
    v9 = v8;
    v10 = [v8 requiresCoreIDVImageCaptureUpload];
    v11 = 2;
    if (!v10)
    {
      v11 = 3;
    }

    self->_documentUploadType = v11;
    v12 = [PKApplyDocumentSubmissionController alloc];
    WeakRetained = objc_loadWeakRetained(&self->_setupDelegate);
    v14 = [(PKApplyDocumentSubmissionController *)v12 initWithController:self setupDelegate:WeakRetained documentPage:v9];

    v15 = [(PKApplyDocumentSubmissionController *)v14 nextViewController];
    [(NSMutableArray *)self->_viewControllers addObject:v15];
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

- (void)_queueInfoFlowWithNextWithPage:(id)a3
{
  v4 = a3;
  v5 = [PKApplyExplanationViewController alloc];
  WeakRetained = objc_loadWeakRetained(&self->_setupDelegate);
  v7 = [(PKApplyExplanationViewController *)v5 initWithController:self setupDelegate:WeakRetained context:self->_context applyPage:v4];

  [(NSMutableArray *)self->_viewControllers addObject:v7];
}

- (void)_queueCompleteFlowWithNextPage:(id)a3
{
  v4 = a3;
  v5 = [PKApplyExplanationViewController alloc];
  WeakRetained = objc_loadWeakRetained(&self->_setupDelegate);
  v7 = [(PKApplyExplanationViewController *)v5 initWithController:self setupDelegate:WeakRetained context:self->_context applyPage:v4];

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

- (void)_queueFieldsFlowWithNextStepInfo:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = [a3 pages];
  v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
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
          objc_enumerationMutation(v4);
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
      v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }
}

- (id)_fieldsViewControllerForPage:(id)a3
{
  v35 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (self->_applicationType == 4 && self->_updateUserInfoSubType == 4)
  {
    v5 = [PKApplyAddBeneficiaryViewController alloc];
    WeakRetained = objc_loadWeakRetained(&self->_setupDelegate);
    v7 = [(PKApplyAddBeneficiaryViewController *)v5 initWithController:self setupDelegate:WeakRetained pageContent:v4];

    goto LABEL_23;
  }

  featureIdentifier = self->_featureIdentifier;
  v9 = [MEMORY[0x1E695DF58] localeWithLocaleIdentifier:@"en_US_POSIX"];
  v10 = [MEMORY[0x1E695DEE8] calendarWithIdentifier:*MEMORY[0x1E695D850]];
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v11 = [v4 fieldModel];
  v12 = [v11 paymentSetupFields];

  v13 = [v12 countByEnumeratingWithState:&v30 objects:v34 count:16];
  if (!v13)
  {

LABEL_21:
    v26 = [PKApplyFieldsViewController alloc];
    v24 = objc_loadWeakRetained(&self->_setupDelegate);
    v25 = [(PKApplyFieldsViewController *)v26 initWithController:self setupDelegate:v24 applyPage:v4];
    goto LABEL_22;
  }

  v14 = v13;
  v28 = self;
  v29 = v4;
  v15 = 0;
  v16 = *v31;
  do
  {
    for (i = 0; i != v14; ++i)
    {
      if (*v31 != v16)
      {
        objc_enumerationMutation(v12);
      }

      v18 = *(*(&v30 + 1) + 8 * i);
      v19 = [v18 dateFieldObject];
      v20 = [v18 pickerFieldObject];
      v21 = v20;
      if (v19)
      {
        v22 = featureIdentifier == 2;
      }

      else
      {
        v22 = 0;
      }

      if (v22)
      {
        [v19 setCalendar:v10];
        [v19 setLocale:v9];
      }

      else if (v20)
      {
        v15 |= [v20 pickerType] != 0;
      }
    }

    v14 = [v12 countByEnumeratingWithState:&v30 objects:v34 count:16];
  }

  while (v14);

  self = v28;
  v4 = v29;
  if ((v15 & 1) == 0)
  {
    goto LABEL_21;
  }

  v23 = [PKApplyFieldsCollectionViewController alloc];
  v24 = objc_loadWeakRetained(&v28->_setupDelegate);
  v25 = [(PKApplyCollectionViewController *)v23 initWithController:v28 setupDelegate:v24 context:v28->_context applyPage:v29];
LABEL_22:
  v7 = v25;

LABEL_23:

  return v7;
}

- (void)_queueOfferFlowWithPage:(id)a3
{
  v47 = a3;
  v4 = [(PKApplyController *)self preferredLanguage];
  v5 = [(PKFeatureApplication *)self->_featureApplication applicationOfferDetails];
  installmentConfiguration = self->_installmentConfiguration;
  v7 = [v5 creditLimit];
  v8 = [(PKFeatureApplication *)self->_featureApplication hasSufficientOTBForInstallmentConfiguration:self->_installmentConfiguration];
  v9 = [v5 detailsInfo];
  v10 = [v5 aprForPurchase];
  if (v10)
  {
    v11 = objc_alloc_init(MEMORY[0x1E696ADA0]);
    [v11 setNumberStyle:3];
    if (([v10 pk_isIntegralNumber] & 1) == 0)
    {
      [v11 setMinimumFractionDigits:2];
    }

    v12 = [v11 stringFromNumber:v10];

    if (v9)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v12 = @"-";
    if (v9)
    {
LABEL_5:
      v13 = objc_alloc_init(MEMORY[0x1E69B8818]);

      v14 = [v9 title];
      [v13 setTitle:v14];

      v15 = [v9 body];
      [v13 setBody:v15];

      v16 = [v9 primaryActionTitle];
      [v13 setPrimaryActionTitle:v16];

      v17 = [v9 primaryActionIdentifier];
      [v13 setPrimaryActionIdentifier:v17];

      v18 = [v9 secondaryActionTitle];
      [v13 setSecondaryActionTitle:v18];

      v19 = [v9 secondaryActionIdentifier];
      [v13 setSecondaryActionIdentifier:v19];

      [v13 setLayout:0];
      v20 = [v9 heroImageURL];
      [v13 setHeroImageURL:v20];
      v47 = v13;
LABEL_6:

      goto LABEL_21;
    }
  }

  v21 = [v47 title];

  if (!v21)
  {
    v22 = PKLocalizedApplyFeatureString();
    [v47 setTitle:v22];
  }

  v23 = [v47 subtitle];
  if (!v23)
  {
    [(PKApplyController *)self context];
    if (PKPaymentSetupContextIsMerchantApp())
    {
      if (installmentConfiguration)
      {
        goto LABEL_16;
      }

      v23 = PKLocalizedApplyFeatureString();
      [v47 setSubtitle:v23];
    }

    else
    {
      v23 = 0;
    }
  }

LABEL_16:
  v24 = [v47 primaryActionTitle];

  if (!v24)
  {
    v25 = PKLocalizedApplyFeatureString();
    [v47 setPrimaryActionTitle:v25];
  }

  v26 = [v47 secondaryActionTitle];

  if (!v26)
  {
    v27 = PKLocalizedApplyFeatureString();
    [v47 setSecondaryActionTitle:v27];
  }

  v28 = [v47 body];

  if (!v28)
  {
    if (installmentConfiguration)
    {
      v46 = v7;
      v33 = [(PKPaymentInstallmentConfiguration *)self->_installmentConfiguration installmentItems];
      v34 = [v33 firstObject];
      v35 = [v34 installmentItemType];

      if (v8)
      {
        v36 = [(PKApplyController *)self _formatStringSuffixForItemType:v35];
        v20 = [@"INSTALLMENT_APPLY_OFFER_APPROVED_SUBTITLE" stringByAppendingString:v36];

        v45 = [v5 currencyCode];
        v37 = PKCurrencyAmountCreate(v46, v45);
        v38 = [v37 formattedStringValue];
        v43 = v12;
        v44 = v38;
      }

      else
      {
        v39 = [(PKPaymentInstallmentConfiguration *)self->_installmentConfiguration isInStorePurchase];
        v40 = [(PKApplyController *)self _formatStringSuffixForItemType:v35];
        if (v39)
        {
          v41 = @"INSTALLMENT_APPLY_OFFER_APPROVED_INSUFFICIENT_CREDIT_IN_STORE_SUBTITLE";
        }

        else
        {
          v41 = @"INSTALLMENT_APPLY_OFFER_APPROVED_INSUFFICIENT_CREDIT_SUBTITLE";
        }

        v20 = [(__CFString *)v41 stringByAppendingString:v40];

        v45 = [v5 currencyCode];
        v37 = PKCurrencyAmountCreate(v46, v45);
        v38 = [v37 formattedStringValue];
        v43 = v38;
        v44 = v12;
      }

      v42 = PKLocalizedApplyFeatureString();
      [v47 setBody:{v42, v43, v44}];

      v7 = v46;
    }

    else
    {
      v20 = PKLocalizedApplyFeatureString();
      [v47 setBody:v20];
    }

    goto LABEL_6;
  }

LABEL_21:
  v29 = [PKApplyOfferViewController alloc];
  WeakRetained = objc_loadWeakRetained(&self->_setupDelegate);
  v31 = [(PKApplyOfferViewController *)v29 initWithController:self setupDelegate:WeakRetained context:self->_context applyPage:v47];

  v32 = [(PKApplyController *)self loadHeroImageFromApplyExperiment];
  if (v32)
  {
    [(PKApplyOfferViewController *)v31 setHeroImage:v32];
  }

  [(NSMutableArray *)self->_viewControllers addObject:v31];
}

- (id)_formatStringSuffixForItemType:(int64_t)a3
{
  if (a3 > 4)
  {
    return @"_GENERIC";
  }

  else
  {
    return off_1E801B278[a3];
  }
}

- (void)_queueApplicationVerificationWithNextStepInfo:(id)a3
{
  v4 = [a3 pages];
  v5 = [v4 firstObject];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
    if (v6)
    {
      v7 = v6;
      v8 = [v6 verificationType];
      switch(v8)
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
  v6 = [(PKFeatureApplication *)self->_featureApplication applicationTermsIdentifier];
  v7 = [(PKApplyTermsAndConditionsViewController *)v3 initWithController:self setupDelegate:WeakRetained context:context termsIdentifier:v6];

  [(NSMutableArray *)self->_viewControllers addObject:v7];
}

- (void)_queueStateReasonExplanationFlowWithPage:(id)a3
{
  v57 = a3;
  v4 = [(PKApplyController *)self preferredLanguage];
  v5 = [(PKFeatureApplication *)self->_featureApplication applicationStateReason];
  v6 = [v57 title];

  if (v5 > 5)
  {
    if (v5 == 6)
    {
      v20 = v57;
      if (!v6)
      {
        v21 = PKLocalizedApplyFeatureString();
        [v57 setTitle:v21];

        v20 = v57;
      }

      v22 = [v20 subtitle];

      if (!v22)
      {
        v23 = PKLocalizedApplyFeatureString();
        [v57 setSubtitle:v23];
      }

      v24 = [v57 primaryActionTitle];

      if (!v24)
      {
        v25 = PKLocalizedApplyFeatureString();
        [v57 setPrimaryActionTitle:v25];
      }

      v26 = [v57 learnMore];
      v27 = [v26 buttonTitle];

      if (!v27)
      {
        v28 = PKLocalizedApplyFeatureString();
        [v26 setButtonTitle:v28];
      }

      v29 = [v26 title];

      if (!v29)
      {
        v30 = PKLocalizedApplyFeatureString();
        [v26 setTitle:v30];
      }

      v31 = [v26 body];

      if (v31)
      {
        goto LABEL_61;
      }

LABEL_53:
      v49 = PKLocalizedApplyFeatureString();
      [v26 setBody:v49];

LABEL_61:
      goto LABEL_62;
    }

    v7 = v57;
    if (v5 == 8)
    {
      if (!v6)
      {
        v50 = PKLocalizedApplyFeatureString();
        [v57 setTitle:v50];

        v7 = v57;
      }

      v51 = [v7 subtitle];

      if (!v51)
      {
        v52 = PKLocalizedApplyFeatureString();
        [v57 setSubtitle:v52];
      }

      v53 = [v57 primaryActionTitle];

      if (!v53)
      {
        goto LABEL_59;
      }

      goto LABEL_62;
    }

    if (v5 == 9)
    {
      if (!v6)
      {
        v12 = PKLocalizedFeatureString();
        [v57 setTitle:v12];

        v7 = v57;
      }

      v13 = [v7 primaryActionTitle];

      if (!v13)
      {
        v14 = PKLocalizedFeatureString();
LABEL_60:
        v26 = v14;
        [v57 setPrimaryActionTitle:v14];
        goto LABEL_61;
      }

      goto LABEL_62;
    }
  }

  else
  {
    if (v5 == 3)
    {
      v15 = v57;
      if (!v6)
      {
        v16 = PKLocalizedApplyFeatureString();
        [v57 setTitle:v16];

        v15 = v57;
      }

      v17 = [v15 subtitle];

      if (!v17)
      {
        v18 = PKLocalizedApplyFeatureString();
        [v57 setSubtitle:v18];
      }

      v19 = [v57 primaryActionTitle];

      if (!v19)
      {
        goto LABEL_59;
      }

      goto LABEL_62;
    }

    v7 = v57;
    if (v5 == 4)
    {
      if (!v6)
      {
        v39 = PKLocalizedApplyFeatureString();
        [v57 setTitle:v39];

        v7 = v57;
      }

      v40 = [v7 subtitle];

      if (!v40)
      {
        v41 = PKLocalizedApplyFeatureString();
        [v57 setSubtitle:v41];
      }

      v42 = [v57 primaryActionTitle];

      if (!v42)
      {
        goto LABEL_47;
      }

      goto LABEL_48;
    }

    if (v5 == 5)
    {
      if (!v6)
      {
        v8 = PKLocalizedApplyFeatureString();
        [v57 setTitle:v8];

        v7 = v57;
      }

      v9 = [v7 subtitle];

      if (!v9)
      {
        v10 = PKLocalizedApplyFeatureString();
        [v57 setSubtitle:v10];
      }

      v11 = [v57 primaryActionTitle];

      if (!v11)
      {
LABEL_47:
        v43 = PKLocalizedApplyFeatureString();
        [v57 setPrimaryActionTitle:v43];
      }

LABEL_48:
      v26 = [v57 learnMore];
      v44 = [v26 buttonTitle];

      if (!v44)
      {
        v45 = PKLocalizedApplyFeatureString();
        [v26 setButtonTitle:v45];
      }

      v46 = [v26 title];

      if (!v46)
      {
        v47 = PKLocalizedApplyFeatureString();
        [v26 setTitle:v47];
      }

      v48 = [v26 body];

      if (v48)
      {
        goto LABEL_61;
      }

      goto LABEL_53;
    }
  }

  if (!v6)
  {
    v32 = PKLocalizedApplyFeatureString();
    [v57 setTitle:v32];

    v7 = v57;
  }

  v33 = [v7 subtitle];

  if (!v33)
  {
    v34 = [MEMORY[0x1E69B8568] sharedInstance];
    v35 = [v34 appleAccountInformation];
    v36 = [v35 primaryEmailAddress];

    v37 = PKLocalizedApplyFeatureString();
    [v57 setSubtitle:{v37, v36}];
  }

  v38 = [v57 primaryActionTitle];

  if (!v38)
  {
LABEL_59:
    v14 = PKLocalizedApplyFeatureString();
    goto LABEL_60;
  }

LABEL_62:
  v54 = [PKApplyStateExplanationViewController alloc];
  WeakRetained = objc_loadWeakRetained(&self->_setupDelegate);
  v56 = [(PKApplyExplanationViewController *)v54 initWithController:self setupDelegate:WeakRetained context:self->_context applyPage:v57];

  [(NSMutableArray *)self->_viewControllers addObject:v56];
}

- (void)_queueProgramConsentFlowWithPage:(id)a3
{
  v17 = a3;
  v4 = [(PKApplyController *)self preferredLanguage];
  v5 = [v17 subtitle];

  if (!v5)
  {
    v6 = PKLocalizedApplyFeatureString();
    [v17 setSubtitle:v6];
  }

  v7 = [v17 primaryActionTitle];

  if (!v7)
  {
    v8 = PKLocalizedApplyFeatureString();
    [v17 setPrimaryActionTitle:v8];
  }

  v9 = [v17 secondaryActionTitle];

  if (!v9)
  {
    v10 = PKLocalizedApplyFeatureString();
    [v17 setSecondaryActionTitle:v10];
  }

  v11 = [v17 learnMore];
  if (!v11)
  {
    v11 = objc_alloc_init(MEMORY[0x1E69B8820]);
    [v17 setLearnMore:v11];
  }

  v12 = [v11 buttonTitle];

  if (!v12)
  {
    v13 = PKLocalizedApplyFeatureString();
    [v11 setButtonTitle:v13];
  }

  v14 = [PKApplyProgramConsentViewController alloc];
  WeakRetained = objc_loadWeakRetained(&self->_setupDelegate);
  v16 = [(PKApplyProgramConsentViewController *)v14 initWithController:self setupDelegate:WeakRetained context:self->_context applyPage:v17];

  [(NSMutableArray *)self->_viewControllers addObject:v16];
}

- (void)_queueDeclinedFlowWithPage:(id)a3
{
  v4 = a3;
  v5 = [(PKApplyController *)self preferredLanguage];
  v6 = self->_installmentConfiguration != 0;
  v32 = MEMORY[0x1E69E9820];
  v33 = 3221225472;
  v34 = __48__PKApplyController__queueDeclinedFlowWithPage___block_invoke;
  v35 = &unk_1E80170D8;
  v7 = v4;
  v39 = v6;
  v36 = v7;
  v37 = self;
  v8 = v5;
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
      v11 = [v7 title];

      if (!v11)
      {
        v12 = PKLocalizedApplyFeatureString();
        [v7 setTitle:v12];
      }

      v13 = [v7 subtitle];

      if (!v13)
      {
        v14 = PKLocalizedApplyFeatureString();
        [v7 setSubtitle:v14];
      }

      v15 = [v7 primaryActionTitle];

      if (!v15)
      {
        v16 = PKLocalizedApplyFeatureString();
        [v7 setPrimaryActionTitle:v16];
      }

      v17 = [v7 learnMore];
      v18 = [v17 buttonTitle];

      if (!v18)
      {
        v19 = PKLocalizedApplyFeatureString();
        [v17 setButtonTitle:v19];
      }

      v20 = [v17 title];

      if (!v20)
      {
        v21 = PKLocalizedApplyFeatureString();
        [v17 setTitle:v21];
      }

      v22 = [v17 body];

      if (!v22)
      {
        v23 = PKLocalizedApplyFeatureString();
        [v17 setBody:v23];
      }

      goto LABEL_23;
    }

    goto LABEL_16;
  }

  v24 = [v7 title];

  if (!v24)
  {
    v25 = PKLocalizedApplyFeatureString();
    [v7 setTitle:v25];
  }

  v26 = [v7 subtitle];

  if (!v26)
  {
    v27 = PKLocalizedApplyFeatureString();
    [v7 setSubtitle:v27];
  }

  v28 = [v7 primaryActionTitle];

  if (!v28)
  {
    v17 = PKLocalizedApplyFeatureString();
    [v7 setPrimaryActionTitle:v17];
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

- (void)_queuePassActivationFlowWithCompletion:(id)a3
{
  v11 = a3;
  v4 = [objc_alloc(MEMORY[0x1E69B8350]) initWithAccount:self->_account];
  v5 = [PKAccountFlowController alloc];
  provisioningController = self->_provisioningController;
  WeakRetained = objc_loadWeakRetained(&self->_setupDelegate);
  v8 = [(PKAccountFlowController *)v5 initWithAccountCredential:v4 provisioningController:provisioningController setupDelegate:WeakRetained context:self->_context operations:63];

  [(PKAccountFlowController *)v8 setParentFlowController:self];
  v9 = [(PKAccountFlowController *)v8 firstAccountViewController];
  [(NSMutableArray *)self->_viewControllers addObject:v9];
  if (v11)
  {
    v10 = [(PKApplyController *)self _nextQueuedViewController];
    v11[2](v11, v10, 0);
  }
}

- (void)_queueEmailRequiredErrorViewController
{
  v3 = [(PKApplyController *)self preferredLanguage];
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
  v11 = [(PKApplyController *)self preferredLanguage];
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

- (void)_queueAcceptedFlowWithPage:(id)a3
{
  v12 = a3;
  v4 = [(PKApplyController *)self preferredLanguage];
  v5 = [v12 title];

  if (!v5)
  {
    v6 = PKLocalizedApplyFeatureString();
    [v12 setTitle:v6];
  }

  v7 = [v12 subtitle];

  if (!v7)
  {
    v8 = PKLocalizedApplyFeatureString();
    [v12 setSubtitle:v8];
  }

  v9 = [PKApplyAcceptedViewController alloc];
  WeakRetained = objc_loadWeakRetained(&self->_setupDelegate);
  v11 = [(PKApplyExplanationViewController *)v9 initWithController:self setupDelegate:WeakRetained context:self->_context applyPage:v12];

  [(NSMutableArray *)self->_viewControllers addObject:v11];
}

- (void)_queueActionFlowWithPage:(id)a3
{
  v4 = a3;
  v5 = [v4 title];
  if (v5 && (v6 = v5, [v4 primaryActionTitle], v7 = objc_claimAutoreleasedReturnValue(), v7, v6, v7))
  {
    v8 = [PKApplyActionExplanationViewController alloc];
    WeakRetained = objc_loadWeakRetained(&self->_setupDelegate);
    v10 = [(PKApplyExplanationViewController *)v8 initWithController:self setupDelegate:WeakRetained context:self->_context applyPage:v4];

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

    [(PKApplyController *)self _queueGenericErrorViewControllerWithPage:v4];
  }
}

- (void)_queueConfirmInfoFlowWithPage:(id)a3
{
  v4 = a3;
  v5 = [PKApplyConfirmInfoViewController alloc];
  WeakRetained = objc_loadWeakRetained(&self->_setupDelegate);
  v7 = [(PKApplyConfirmInfoViewController *)v5 initWithController:self setupDelegate:WeakRetained context:self->_context applyPage:v4];

  [(NSMutableArray *)self->_viewControllers addObject:v7];
}

- (void)_queueExpiredFlowWithPage:(id)a3
{
  v11 = a3;
  v4 = [(PKApplyController *)self preferredLanguage];
  v5 = [v11 title];

  if (!v5)
  {
    v6 = PKLocalizedApplyFeatureString();
    [v11 setTitle:v6];
  }

  v7 = [v11 subtitle];

  if (!v7)
  {
    v8 = PKLocalizedApplyFeatureString();
    [v11 setSubtitle:v8];
  }

  v9 = [v11 primaryActionTitle];

  if (!v9)
  {
    v10 = PKLocalizedApplyFeatureString();
    [v11 setPrimaryActionTitle:v10];
  }

  [(PKApplyController *)self _queueGenericErrorViewControllerWithPage:v11];
}

- (void)_queueTerminalStateFlowWithPage:(id)a3
{
  v11 = a3;
  v4 = [(PKApplyController *)self preferredLanguage];
  v5 = [v11 title];

  if (!v5)
  {
    v6 = PKLocalizedApplyFeatureString();
    [v11 setTitle:v6];
  }

  v7 = [v11 subtitle];

  if (!v7)
  {
    v8 = PKLocalizedApplyFeatureString();
    [v11 setSubtitle:v8];
  }

  v9 = [v11 primaryActionTitle];

  if (!v9)
  {
    v10 = PKLocalizedApplyFeatureString();
    [v11 setPrimaryActionTitle:v10];
  }

  [(PKApplyController *)self _queueGenericErrorViewControllerWithPage:v11];
}

- (void)_queueGenericErrorViewController
{
  v7 = [(PKApplyController *)self preferredLanguage];
  v3 = objc_alloc_init(MEMORY[0x1E69B8818]);
  v4 = PKLocalizedApplyFeatureString();
  [v3 setTitle:v4];

  v5 = PKLocalizedApplyFeatureString();
  [v3 setSubtitle:v5];

  v6 = PKLocalizedApplyFeatureString();
  [v3 setPrimaryActionTitle:v6];

  [(PKApplyController *)self _queueGenericErrorViewControllerWithPage:v3];
}

- (void)_queueGenericErrorViewControllerWithPage:(id)a3
{
  v4 = a3;
  v5 = [PKApplyGenericErrorViewController alloc];
  WeakRetained = objc_loadWeakRetained(&self->_setupDelegate);
  v7 = [(PKApplyExplanationViewController *)v5 initWithController:self setupDelegate:WeakRetained context:self->_context applyPage:v4];

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
        v6 = [v5 currentPage];
        v7 = [v6 identifier];
        previousContextIdentifier = self->_previousContextIdentifier;
        self->_previousContextIdentifier = v7;
      }

      else
      {
        v6 = self->_previousContextIdentifier;
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

- (id)cancelAlertWithContinueAction:(id)a3
{
  v4 = a3;
  if ([(PKApplyController *)self featureIdentifier]== 5)
  {
    v5 = 0;
    goto LABEL_13;
  }

  v6 = [(PKApplyController *)self preferredLanguage];
  v7 = [(PKApplyController *)self applicationType];
  if (v7 < 2)
  {
LABEL_6:
    v8 = PKLocalizedApplyFeatureString();
    v9 = PKDeviceSpecificLocalizedStringKeyForKey(@"CANCEL_APPLY_ALERT_MESSAGE", 0);
    v10 = PKLocalizedApplyFeatureString();

    v11 = PKLocalizedApplyFeatureString();
    goto LABEL_8;
  }

  if (v7 != 2)
  {
    if (v7 != 3)
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
  v20 = v4;
  v17 = [v16 actionWithTitle:v12 style:0 handler:v19];
  [v5 addAction:v17];

LABEL_12:
LABEL_13:

  return v5;
}

- (id)_displayableErrorForError:(id)a3 showDetailedErrorFlow:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [(PKApplyController *)self preferredLanguage];
  v8 = [v6 domain];
  if ([v8 isEqualToString:*MEMORY[0x1E696A978]])
  {
    if ([v6 code] == -1009)
    {

LABEL_12:
      v12 = PKLocalizedApplyFeatureString();
      v13 = PKLocalizedApplyFeatureString();
      goto LABEL_13;
    }

    v15 = [v6 code];

    if (v15 == -1001)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  v9 = [v6 domain];
  v10 = [v9 isEqualToString:*MEMORY[0x1E69BC6F0]];

  if (v10 && [v6 code] <= 5)
  {
    v11 = [v6 localizedFailureReason];

    if (v11)
    {
      v12 = [v6 localizedFailureReason];
      v13 = [v6 localizedRecoverySuggestion];
LABEL_13:
      v11 = v13;
      v14 = 0;
      goto LABEL_14;
    }
  }

  else
  {
    v11 = 0;
  }

  v12 = 0;
  v14 = 1;
LABEL_14:
  v16 = [v6 domain];
  v17 = [v16 isEqualToString:*MEMORY[0x1E6997D50]];

  if (v14 && v17 && [v6 code] == 40201 && v4)
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
    v20 = [v6 domain];
    v21 = [v20 isEqualToString:*MEMORY[0x1E69BC300]];

    if (!v21)
    {
      goto LABEL_59;
    }

    v22 = [v6 localizedFailureReason];

    if (v22)
    {
      v23 = [v6 localizedFailureReason];

      v24 = [v6 localizedRecoverySuggestion];
      goto LABEL_57;
    }
  }

  v19 = [v6 code];
  if (v19 > 60011)
  {
    switch(v19)
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
        if (!v4)
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
        v23 = PKLocalizedApplyFeatureString();

        IsBridge = PKPaymentSetupContextIsBridge();
        v12 = PKDeviceSpecificLocalizedStringKeyForKey(@"OS_VERSION_UPDATE_REQUIRED_ERROR_MESSAGE", IsBridge);
        v29 = PKLocalizedApplyFeatureString();

        v11 = v29;
        goto LABEL_58;
      case 60060:
        if (!v4)
        {
          goto LABEL_59;
        }

        [(PKApplyController *)self _queueGenericErrorViewController];
        goto LABEL_19;
      case 60075:
      case 60078:
        v23 = PKLocalizedFeatureString();

        v24 = PKLocalizedFeatureString();
        goto LABEL_57;
      case 60076:
        v23 = PKLocalizedFeatureString();

        v30 = [(PKAccount *)self->_account accountUserInvitationAllowedFeatureDescriptor];
        v31 = [v30 maximumAccountUsers];

        PKLocalizedString(&cfstr_AccountUserLim_0.isa, &cfstr_Lu.isa, v31);
        goto LABEL_48;
      case 60077:
        v23 = PKLocalizedFeatureString();

        v26 = [(PKAccount *)self->_account accountUserInvitationAllowedFeatureDescriptor];
        v27 = [v26 maximumAccountUsers];

        PKLocalizedString(&cfstr_AccountInvitat.isa, &cfstr_Lu.isa, v27);
        v24 = LABEL_48:;
        goto LABEL_57;
      default:
        if (v19 == 60089)
        {
          v23 = PKLocalizedApplyFeatureString();
          goto LABEL_58;
        }

        if (v19 != 60093)
        {
          goto LABEL_59;
        }

        break;
    }

    goto LABEL_56;
  }

  if (v19 <= 40455)
  {
    if (v19 == 40319)
    {
      if (v4)
      {
        [(PKApplyController *)self _queueEmailRequiredErrorViewController];
        goto LABEL_19;
      }

      goto LABEL_59;
    }

    if (v19 != 40423 && v19 != 40454)
    {
      goto LABEL_59;
    }

LABEL_56:
    v23 = PKLocalizedApplyFeatureString();

    v24 = PKLocalizedApplyFeatureString();
LABEL_57:
    v12 = v11;
    v11 = v24;
LABEL_58:

    v12 = v23;
    goto LABEL_59;
  }

  if (v19 > 60000)
  {
    if (v19 != 60001 && v19 != 60002)
    {
      goto LABEL_59;
    }

    goto LABEL_56;
  }

  if (v19 == 40456)
  {
    v23 = PKLocalizedPaymentString(&cfstr_InvalidVerific.isa);

    v25 = @"INVALID_VERIFICATION_CODE_MESSAGE";
    goto LABEL_55;
  }

  if (v19 == 40457)
  {
    v23 = PKLocalizedPaymentString(&cfstr_ExpiredVerific.isa);

    v25 = @"EXPIRED_VERIFICATION_CODE_MESSAGE";
LABEL_55:
    v24 = PKLocalizedPaymentString(&v25->isa);
    goto LABEL_57;
  }

LABEL_59:
  if (!(v12 | v11))
  {
    v12 = PKLocalizedApplyFeatureString();
    v11 = PKLocalizedApplyFeatureString();
  }

  v18 = PKDisplayableErrorCustom();
LABEL_62:

  return v18;
}

- (void)featureApplicationChanged:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __47__PKApplyController_featureApplicationChanged___block_invoke;
  v6[3] = &unk_1E8010A10;
  v7 = v4;
  v8 = self;
  v5 = v4;
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

+ (id)preferredLanguageForFeatureIdentifier:(unint64_t)a3 account:(id)a4
{
  v6 = a4;
  v7 = PKPassKitBundle();
  v8 = [a1 preferredLanguageForFeatureIdentifier:a3 account:v6 mainBundle:v7];

  return v8;
}

+ (id)preferredLanguageForFeatureIdentifier:(unint64_t)a3 account:(id)a4 mainBundle:(id)a5
{
  v6 = MEMORY[0x1E69B8EF8];
  v7 = a5;
  v8 = [v6 sharedService];
  v9 = [v8 context];

  v10 = [v9 applyServicePreferredLanguageForFeatureIdentifier:a3 mainLanguageBundle:v7];

  return v10;
}

- (id)preferredLanguage
{
  v3 = objc_opt_class();
  featureIdentifier = self->_featureIdentifier;
  account = self->_account;

  return [v3 preferredLanguageForFeatureIdentifier:featureIdentifier account:account];
}

+ (id)localizationBundleForFeatureIdentifier:(unint64_t)a3 account:(id)a4
{
  v6 = a4;
  v7 = PKPassKitBundle();
  v8 = [a1 localizationBundleForFeatureIdentifier:a3 account:v6 mainBundle:v7];

  return v8;
}

+ (id)localizationBundleForFeatureIdentifier:(unint64_t)a3 account:(id)a4 mainBundle:(id)a5
{
  v6 = MEMORY[0x1E69B8EF8];
  v7 = a5;
  v8 = [v6 sharedService];
  v9 = [v8 context];

  v10 = [v9 applyServiceLocalizationBundleForFeatureIdentifier:a3 mainLanguageBundle:v7];

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
  v2 = [(PKApplyController *)self _applyExperiment];
  v3 = [v2 experimentDetails];

  return v3;
}

- (id)loadHeroImageFromApplyExperiment
{
  v3 = [(PKApplyController *)self _applyExperiment];
  v4 = v3;
  if (self->_installmentConfiguration)
  {
    [v3 heroInstallmentImagePath];
  }

  else
  {
    [v3 heroImagePath];
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