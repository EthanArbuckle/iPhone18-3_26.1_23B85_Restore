@interface PKPassPaymentContainerView
+ (BOOL)_initialUserIntentRequiredAssumptionForPass:(id)a3 context:(id)a4 paymentService:(id)a5 requirePhysicalButton:(BOOL)a6;
+ (BOOL)shouldAutomaticallyAuthorizeForPass:(id)a3 withContext:(id)a4;
+ (BOOL)userIntentPotentiallyRequiredForPass:(id)a3 fieldDetect:(BOOL)a4;
- (BOOL)_authenticationAllowed;
- (BOOL)_canDisplaySecondaryView;
- (BOOL)_isDeactivated;
- (BOOL)_isForegroundActive;
- (BOOL)_isPrimaryViewVisible;
- (BOOL)_isSecondaryViewVisible;
- (BOOL)_isVASInfoViewVisible;
- (BOOL)_restartPaymentAuthorization;
- (BOOL)_shouldDisplayPrimaryView;
- (BOOL)_shouldDisplaySecondaryView;
- (BOOL)_shouldShowTerminalIsNotRequestingPaymentError;
- (BOOL)_showGlyphForPayState:(int64_t)a3;
- (BOOL)isPassAuthorized;
- (BOOL)isTransacting;
- (BOOL)textView:(id)a3 shouldInteractWithURL:(id)a4 inRange:(_NSRange)a5 interaction:(int64_t)a6;
- (PKPassPaymentContainerView)initWithPass:(id)a3 passStateProvider:(id)a4 context:(id)a5 paymentSession:(id)a6 paymentService:(id)a7;
- (double)_topMargin;
- (id)_attributedStringForBottomTextViewFromString:(id)a3;
- (id)_buttonForState:(int64_t)a3;
- (id)_emphasisButtonForState:(int64_t)a3;
- (id)_filledButtonWithTitle:(id)a3 action:(id)a4;
- (id)_groupTileForTiles:(id)a3;
- (id)_passcodeButtonTitle;
- (id)_paymentOfferConfirmationRecordForTransaction:(id)a3 passUniqueID:(id)a4;
- (id)_textOverrideForFatalError;
- (id)passTileGroupViewRequestsBeginSuppressingCardEmulation:(id)a3;
- (unint64_t)_actionAfterTransaction;
- (void)_activateForPayment;
- (void)_activateForPaymentWithApplications:(id)a3;
- (void)_activatePaymentApplications:(id)a3 forPaymentPass:(id)a4 withCompletion:(id)a5;
- (void)_addPasscodeButtonPressed:(id)a3;
- (void)_addTransitionCompletionHandler:(id)a3;
- (void)_applyLatestContentToViews;
- (void)_applyPayState:(int64_t)a3 withTextOverride:(id)a4 animated:(BOOL)a5 completionHandler:(id)a6;
- (void)_applyPaymentIndefiniteSuccessState;
- (void)_applyPresentationPayState:(int64_t)a3;
- (void)_applyTerminalTransactionSubstateWithSuccess:(BOOL)a3 reset:(BOOL)a4 errorOverride:(id)a5;
- (void)_authorizeForTransactionWithAuthenticatorEvaluationResponse:(id)a3 authenticationIdentifier:(unint64_t)a4 completion:(id)a5;
- (void)_beginBarcodeDisplayTimer;
- (void)_beginPaymentAuthorization;
- (void)_beginSessionExchange:(id)a3;
- (void)_beginTerminalResponseTimeout;
- (void)_cancelAuthentication;
- (void)_cancelBarcodeDisplayTimer;
- (void)_cancelHoldingTerminalTransactionSubstateIfNecessary;
- (void)_cancelTerminalResponseTimeout;
- (void)_cancelTransactionAuthentication;
- (void)_clearSessionExchangeTasks;
- (void)_collectAndSubmitBarcodeEventMetadataWithAuthenticationType:(int64_t)a3;
- (void)_commitPendingPayStateAnimated:(BOOL)a3;
- (void)_configureForPaymentWithPaymentPass:(id)a3 context:(id)a4;
- (void)_configureForStyle:(int64_t)a3 context:(id)a4;
- (void)_configureForValueAddedServiceWithPass:(id)a3 context:(id)a4;
- (void)_didAuthorizePaymentApplicationWithAuthenticationIdentifier:(unint64_t)a3;
- (void)_didInvalidate;
- (void)_dismissBarcodeViewControllerIfNecessaryWithCompletion:(id)a3;
- (void)_dismissTransactionAuthenticationPasscodeViewController:(id)a3 withCompletion:(id)a4;
- (void)_emphasizeStateIfPossible:(int64_t)a3 withTextOverride:(id)a4 playSystemSound:(BOOL)a5;
- (void)_endContactlessPaymentSession;
- (void)_endPaymentAuthorizationWithWillUpdateState:(BOOL)a3;
- (void)_endTransition:(BOOL)a3;
- (void)_executeNextSessionExchangeTask;
- (void)_executePendingGlyphStateCompletionHandlers:(BOOL)a3;
- (void)_executeTransitionCompletionHandlers:(BOOL)a3;
- (void)_fetchBarcodeForPassUniqueIdentifier:(id)a3 shouldReregisterIfNecessary:(BOOL)a4 withCompletion:(id)a5;
- (void)_finishHoldingTerminalTransactionSubstateAfterDelay:(double)a3;
- (void)_handleContactlessInterfaceSessionDidEnterField:(id)a3 withProperties:(id)a4;
- (void)_handleReceivedBarcodePaymentTransaction:(id)a3;
- (void)_insertPaymentTransactionForActiveBarcode;
- (void)_openURL:(id)a3;
- (void)_performActivationStateUpdate:(id)a3;
- (void)_performApplicationRedirectForTransaction:(id)a3;
- (void)_performAuthentication;
- (void)_performAuthenticationForTransactionIfNecessary:(id)a3;
- (void)_performPaymentPINCollectionForTransaction:(id)a3;
- (void)_performTransactionSignatureSubmissionForTransaction:(id)a3;
- (void)_performUserConfirmationForTransaction:(id)a3;
- (void)_postDidAuthorizeNotification;
- (void)_postDidDeauthorizeNotification;
- (void)_presentPassWithUniqueIdentifier:(id)a3 additionalPassUniqueIdentifiers:(id)a4 payState:(int64_t)a5;
- (void)_processPaymentTransactionForContext:(id)a3 withCompletion:(id)a4;
- (void)_processValueAddedServiceTransactionsForContext:(id)a3 withCompletion:(id)a4;
- (void)_promoteToAuthorizedStateIfPossible;
- (void)_reloadTiles;
- (void)_reportPassPresentedForPayment:(id)a3;
- (void)_reportTransactionAuthorizationStatus:(int64_t)a3 forPass:(id)a4;
- (void)_reregisterAuxiliaryCapabilityForPassUniqueIdentifier:(id)a3 withCompletion:(id)a4;
- (void)_resetActiveApplicationForPaymentPass:(id)a3 withCompletion:(id)a4;
- (void)_resetCardEmulationWithCompletion:(id)a3;
- (void)_resetToIdleState;
- (void)_resetToIdleStateAfterDelay:(double)a3;
- (void)_resetTransactionAuthenticationIfNecessary;
- (void)_retrieveDecryptedBarcodeWithAuthorization:(id)a3 shouldFetchBarcodeIfNecessary:(BOOL)a4 completion:(id)a5;
- (void)_setGlyphState:(int64_t)a3 animated:(BOOL)a4 withCompletionHandler:(id)a5;
- (void)_setTransactionAuthenticationInProgress:(BOOL)a3;
- (void)_setTransactionAuthenticationUIActive:(BOOL)a3;
- (void)_setUserIntentRequired:(BOOL)a3;
- (void)_setUserIntentStyle:(int64_t)a3;
- (void)_setVASInfoViewHidden:(BOOL)a3 animated:(BOOL)a4 completion:(id)a5;
- (void)_setValueAddedServicePasses:(id)a3;
- (void)_showEmphasisButtonForStateIfPossible:(int64_t)a3;
- (void)_showInstallAssociatedApplicationInstructionsIfNecessary;
- (void)_showTerminalIsNotRequestingPaymentError;
- (void)_showTerminalIsRequestingPaymentError;
- (void)_submitEncryptedPIN:(id)a3 forTransactionIdentifier:(id)a4 completion:(id)a5;
- (void)_submitSignatureForTransactionIdentifier:(id)a3 completion:(id)a4;
- (void)_submitUserConfirmation:(BOOL)a3 forTransactionIdentifier:(id)a4 completion:(id)a5;
- (void)_transactionAwardsViewTapped:(id)a3;
- (void)_transitionToState:(int64_t)a3 withTextOverride:(id)a4 animated:(BOOL)a5 completionHandler:(id)a6;
- (void)_transitionViewsFromPayState:(int64_t)a3 animated:(BOOL)a4;
- (void)_updateApplicationsView;
- (void)_updateAuthenticatorState;
- (void)_updateBottomTextView;
- (void)_updateCoachingInstruction;
- (void)_updateContentPrimaryView;
- (void)_updateContentSecondaryView;
- (void)_updateVASInfoViewSuppressedTransactionIfNecessary;
- (void)authenticator:(id)a3 didTransitionToEvaluationStateWithEvent:(id)a4;
- (void)coachingStateDidChange;
- (void)contactlessInterfaceSession:(id)a3 didEndPersistentCardEmulationWithContexts:(id)a4;
- (void)contactlessInterfaceSession:(id)a3 didFinishTransactionWithContext:(id)a4;
- (void)contactlessInterfaceSession:(id)a3 didReceive18013Request:(id)a4 readerAuthInfo:(id)a5;
- (void)contactlessInterfaceSession:(id)a3 didReceiveExpressTransactionState:(id)a4;
- (void)contactlessInterfaceSession:(id)a3 didSuspendWithToken:(id)a4;
- (void)contactlessInterfaceSession:(id)a3 didTransitionFromState:(unint64_t)a4 toState:(unint64_t)a5;
- (void)contactlessInterfaceSessionDidEnterField:(id)a3 withProperties:(id)a4;
- (void)contactlessInterfaceSessionDidExitField:(id)a3;
- (void)contactlessInterfaceSessionDidFail:(id)a3 forPaymentApplications:(id)a4 paymentPass:(id)a5 valueAddedServicePasses:(id)a6;
- (void)contactlessInterfaceSessionDidFailDeferredAuthorization:(id)a3;
- (void)contactlessInterfaceSessionDidFailTransaction:(id)a3 forPaymentApplication:(id)a4 paymentPass:(id)a5;
- (void)contactlessInterfaceSessionDidReceiveActivityTimeout:(id)a3;
- (void)contactlessInterfaceSessionDidReceiveTerminalError:(id)a3;
- (void)contactlessInterfaceSessionDidResume:(id)a3;
- (void)contactlessInterfaceSessionDidSelectPayment:(id)a3;
- (void)contactlessInterfaceSessionDidStartTransaction:(id)a3 withContext:(id)a4;
- (void)contactlessInterfaceSessionDidTerminate:(id)a3 withErrorCode:(unint64_t)a4;
- (void)contactlessInterfaceSessionDidTimeout:(id)a3 forPaymentApplications:(id)a4 paymentPass:(id)a5 valueAddedServicePasses:(id)a6;
- (void)contactlessInterfaceSessionHasPendingServerRequest:(id)a3;
- (void)dataReleaseViewController:(id)a3 didDismissWithError:(id)a4;
- (void)dataReleaseViewController:(id)a3 didResolveToMerchant:(id)a4;
- (void)dealloc;
- (void)didBecomeHiddenAnimated:(BOOL)a3;
- (void)didBecomeVisibleAnimated:(BOOL)a3;
- (void)dismissPasscodeViewController;
- (void)foregroundActiveArbiter:(id)a3 didUpdateDeactivationReasons:(unsigned int)a4;
- (void)foregroundActiveArbiter:(id)a3 didUpdateForegroundActiveState:(id)a4;
- (void)layoutSubviews;
- (void)linkedApplicationDidChangeState:(id)a3;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)passStateProvider:(id)a3 didUpdatePassState:(id)a4;
- (void)passTileGroupView:(id)a3 displayTileContext:(int64_t)a4 tile:(id)a5 overrideMaximumRows:(BOOL)a6;
- (void)passTileGroupView:(id)a3 executeSEActionForPass:(id)a4 tile:(id)a5 withCompletion:(id)a6;
- (void)passWithUniqueIdentifier:(id)a3 didUpdateTiles:(id)a4 forContext:(int64_t)a5;
- (void)passcodeViewController:(id)a3 didGenerateEncryptedPasscode:(id)a4;
- (void)passcodeViewController:(id)a3 requestSessionExchangeTokenWithHandler:(id)a4;
- (void)passcodeViewControllerDidCancel:(id)a3;
- (void)passcodeViewControllerDidEndSessionExchange:(id)a3;
- (void)payStateView:(id)a3 revealingCheckmark:(BOOL)a4;
- (void)payStateViewRevealingFailure:(id)a3;
- (void)paymentApplicationView:(id)a3 didSelectApplication:(id)a4 completion:(id)a5;
- (void)paymentPassWithUniqueIdentifier:(id)a3 didReceiveBalanceUpdate:(id)a4;
- (void)paymentPassWithUniqueIdentifier:(id)a3 didReceivePlanUpdate:(id)a4;
- (void)paymentPassWithUniqueIdentifier:(id)a3 didUpdateWithTransitPassProperties:(id)a4;
- (void)presentPasscodeViewController:(id)a3 completionHandler:(id)a4 reply:(id)a5;
- (void)showFullScreenBarcode;
- (void)transactionSourceIdentifier:(id)a3 didReceiveTransaction:(id)a4;
- (void)willBecomeHiddenAnimated:(BOOL)a3;
- (void)willBecomeVisibleAnimated:(BOOL)a3;
@end

@implementation PKPassPaymentContainerView

+ (BOOL)userIntentPotentiallyRequiredForPass:(id)a3 fieldDetect:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v6 = [v5 passType] != 1 && !v4;
  if (v6 || ([v5 paymentPass], v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "isIdentityPass"), v7, (v8 & 1) != 0))
  {
    IsAvailable = 0;
  }

  else
  {
    IsAvailable = PKUserIntentIsAvailable();
  }

  return IsAvailable;
}

+ (BOOL)_initialUserIntentRequiredAssumptionForPass:(id)a3 context:(id)a4 paymentService:(id)a5 requirePhysicalButton:(BOOL)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if (![a1 userIntentPotentiallyRequiredForPass:v10 fieldDetect:{objc_msgSend(v11, "isFieldDetect")}])
  {
    goto LABEL_12;
  }

  v13 = [MEMORY[0x1E69BC740] userIntentStyle];
  if ([MEMORY[0x1E69BC740] isUserIntentAvailableWithStyle:v13])
  {
    goto LABEL_12;
  }

  if (v10 && [v10 passType] == 1 && (v14 = objc_msgSend(MEMORY[0x1E69B8750], "_copyDevicePrimaryContactlessAccessControlForSecureElementPass:", v10)) != 0)
  {
    v15 = v14;
    v16 = [MEMORY[0x1E69BC740] currentStateForAccessControl:v14];
    CFRelease(v15);
    if ((v16 & 1) == 0)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v16 = [MEMORY[0x1E69BC740] cachedStateForPolicy:0];
    if ((v16 & 1) == 0)
    {
LABEL_12:
      v17 = 0;
      goto LABEL_13;
    }
  }

  if (PKPearlIsAvailable())
  {
    if (v13 != 1 && a6)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v17 = 0;
    v19 = v13 != 1 && a6;
    if (v19 || (v16 & 4) != 0)
    {
      goto LABEL_13;
    }
  }

  if ((PKRunningInRemoteContext() & 1) == 0 && ([v11 isFieldDetect] & 1) == 0 && !objc_msgSend(v12, "hasPaymentDeviceFieldProperties"))
  {
    goto LABEL_12;
  }

  if ([v10 passType] == 1)
  {
    v20 = RequiredExpressApplicationsForAutomaticAuthorization(v10, v11, v12, 0);
    v17 = [v20 count] == 0;
  }

  else
  {
    v17 = 1;
  }

LABEL_13:

  return v17;
}

+ (BOOL)shouldAutomaticallyAuthorizeForPass:(id)a3 withContext:(id)a4
{
  v5 = a3;
  v6 = a4;
  if ([v5 passType] == 1)
  {
    v7 = 0;
  }

  else if ([v6 isFieldDetect])
  {
    if (PKUIOnlyDemoModeEnabled())
    {
      v7 = 1;
    }

    else
    {
      v7 = PKStoreDemoModeEnabled();
    }
  }

  else
  {
    v8 = [v5 nfcPayload];
    if (([v8 requiresAuthentication] & 1) != 0 && (PKUIOnlyDemoModeEnabled() & 1) == 0)
    {
      v7 = PKStoreDemoModeEnabled();
    }

    else
    {
      v7 = 1;
    }
  }

  return v7;
}

- (void)_reportPassPresentedForPayment:(id)a3
{
  v84 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [v3 secureElementPass];
  if (v4)
  {
    v70 = v3;
    v69 = objc_alloc_init(MEMORY[0x1E695DF90]);
    [v69 setObject:*MEMORY[0x1E69BA770] forKey:*MEMORY[0x1E69BA680]];
    v5 = *MEMORY[0x1E69BAC48];
    v73 = 0u;
    v74 = 0u;
    v75 = 0u;
    v76 = 0u;
    obj = [v4 devicePaymentApplications];
    v6 = [obj countByEnumeratingWithState:&v73 objects:v82 count:16];
    v72 = v4;
    if (v6)
    {
      v7 = v6;
      v8 = *v74;
      v9 = *MEMORY[0x1E69BAC50];
      while (2)
      {
        v10 = v5;
        for (i = 0; i != v7; ++i)
        {
          if (*v74 != v8)
          {
            objc_enumerationMutation(obj);
          }

          v12 = *(*(&v73 + 1) + 8 * i);
          if ([v12 supportsExpress])
          {
            v5 = *MEMORY[0x1E69BAC40];

            goto LABEL_14;
          }

          v13 = objc_alloc(MEMORY[0x1E695DEC8]);
          v14 = [v12 secureElementIdentifier];
          v15 = [v13 initWithObjects:{v14, 0}];

          v16 = PKDeviceClass();
          v17 = [MEMORY[0x1E69B8A00] fromDeviceVersion];
          v18 = [v4 eligibleExpressUpgradeRequestsForDeviceClass:v16 deviceSEIDs:v15 deviceVersion:v17 technologyTest:&__block_literal_global_214];
          v19 = [v18 count];

          if (v19)
          {
            v20 = v9;

            v10 = v20;
          }

          v4 = v72;
        }

        v7 = [obj countByEnumeratingWithState:&v73 objects:v82 count:16];
        v5 = v10;
        if (v7)
        {
          continue;
        }

        break;
      }
    }

LABEL_14:

    [v69 safelySetObject:v5 forKey:*MEMORY[0x1E69BAC38]];
    v21 = v69;
    v3 = v70;
    v22 = v70;
    v23 = v22;
    if (!v22 || !v21)
    {
      goto LABEL_84;
    }

    v24 = [v22 passType];
    v25 = MEMORY[0x1E69BB3A8];
    v68 = v5;
    if ((v24 + 1) >= 3)
    {
      v26 = *MEMORY[0x1E69BB3A8];
    }

    else
    {
      v26 = off_1E8021FA8[v24 + 1];
    }

    [v21 setObject:v26 forKeyedSubscript:*MEMORY[0x1E69BACA8]];

    v27 = [v23 style];
    v28 = [v23 secureElementPass];
    v29 = [v28 isIdentityPass];

    if (v29)
    {
      v30 = @"identity";
    }

    else if (v27 < 0xE && ((0x27FFu >> v27) & 1) != 0)
    {
      v30 = off_1E8021FC0[v27];
    }

    else
    {
      v30 = *v25;
    }

    [v21 setObject:v30 forKeyedSubscript:*MEMORY[0x1E69BACA0]];

    v31 = [v23 nfcPayload];
    v32 = PKAnalyticsReportSwitchToggleResultValue();
    [v21 setObject:v32 forKeyedSubscript:*MEMORY[0x1E69BAC68]];

    v33 = v23;
    if ([v33 passType] == 1)
    {
      v34 = [v33 secureElementPass];
      v35 = [v34 cardType];
      if (v35 <= 4)
      {
        v29 = **(&unk_1E8022030 + v35);
      }
    }

    else
    {
      v29 = @"other";
    }

    [v21 setObject:v29 forKeyedSubscript:*MEMORY[0x1E69BAC90]];
    v36 = [v33 secureElementPass];
    if ([v36 isIdentityPass])
    {
      v37 = [v36 identityType];
      if (v37 <= 2)
      {
        if (v37 == 1)
        {
          v38 = MEMORY[0x1E69BA648];
          goto LABEL_51;
        }

        if (v37 == 2)
        {
          v38 = MEMORY[0x1E69BB2C8];
          goto LABEL_51;
        }
      }

      else
      {
        switch(v37)
        {
          case 3:
            goto LABEL_35;
          case 4:
            v38 = MEMORY[0x1E69BA8E0];
            goto LABEL_51;
          case 5:
LABEL_35:
            v38 = MEMORY[0x1E69BACB0];
LABEL_51:
            v43 = *v38;
            goto LABEL_52;
        }
      }

LABEL_44:
      v43 = *v25;
LABEL_52:
      v42 = v43;
      goto LABEL_65;
    }

    if (![v36 isAccessPass])
    {
      goto LABEL_44;
    }

    v39 = [v36 accessType];
    v40 = [v36 accessReportingType];
    v41 = v40;
    if (v39 <= 2)
    {
      switch(v39)
      {
        case 0:
          v44 = @"general";
          if (v40)
          {
            v44 = v40;
          }

          goto LABEL_60;
        case 1:
          v42 = @"hospitality";
          goto LABEL_64;
        case 2:
          v42 = @"corporate";
LABEL_64:

LABEL_65:
          [v21 setObject:v42 forKeyedSubscript:*MEMORY[0x1E69BAC88]];

          v45 = [v33 secureElementPass];
          v46 = [v45 devicePaymentApplications];
          [v46 count];

          v47 = PKAnalyticsReportSwitchToggleResultValue();

          [v21 setObject:v47 forKeyedSubscript:*MEMORY[0x1E69BA4E0]];
          v48 = [v33 secureElementPass];
          v49 = *v25;
          v50 = [v48 organizationName];
          if ([v50 length])
          {
            v51 = [v48 cardType];
            if (v51 <= 4 && ((1 << v51) & 0x16) != 0)
            {
              v52 = v50;

              v49 = v52;
            }
          }

          [v21 setObject:v49 forKeyedSubscript:*MEMORY[0x1E69BAA28]];
          v53 = [v33 secureElementPass];
          v54 = v53;
          if (v53)
          {
            v55 = [v53 devicePaymentApplications];
            v77 = 0u;
            v78 = 0u;
            v79 = 0u;
            v80 = 0u;
            v56 = v55;
            v57 = [v56 countByEnumeratingWithState:&v77 objects:v83 count:16];
            if (v57)
            {
              v58 = v57;
              v59 = 0;
              v60 = *v78;
              while (2)
              {
                for (j = 0; j != v58; ++j)
                {
                  if (*v78 != v60)
                  {
                    objc_enumerationMutation(v56);
                  }

                  v62 = *(*(&v77 + 1) + 8 * j);
                  if (v59 && v59 != [*(*(&v77 + 1) + 8 * j) paymentType])
                  {

                    v63 = @"multiple";
                    goto LABEL_82;
                  }

                  v59 = [v62 paymentType];
                }

                v58 = [v56 countByEnumeratingWithState:&v77 objects:v83 count:16];
                if (v58)
                {
                  continue;
                }

                break;
              }
            }

            v63 = PKPaymentMethodTypeToString();
LABEL_82:

            [v21 setObject:v63 forKeyedSubscript:*MEMORY[0x1E69BAD40]];
            v64 = [v54 issuerCountryCode];
            [v21 setObject:v64 forKeyedSubscript:*MEMORY[0x1E69BAC78]];
          }

          v5 = v68;
LABEL_84:

          v65 = MEMORY[0x1E69B8540];
          v66 = *MEMORY[0x1E69BB718];
          v81[0] = *MEMORY[0x1E69BB6C0];
          v81[1] = v66;
          v67 = [MEMORY[0x1E695DEC8] arrayWithObjects:v81 count:2];
          [v65 subjects:v67 sendEvent:v21];

          v4 = v72;
          goto LABEL_85;
      }
    }

    else
    {
      if (v39 <= 4)
      {
        if (v39 == 3)
        {
          v42 = @"singlefamily";
        }

        else
        {
          v42 = @"cars";
        }

        goto LABEL_64;
      }

      if (v39 == 5)
      {
        v42 = @"multifamily";
        goto LABEL_64;
      }

      if (v39 == 6)
      {
        v42 = @"urbanmobility";
        goto LABEL_64;
      }
    }

    v44 = *v25;
LABEL_60:
    v42 = v44;
    goto LABEL_64;
  }

LABEL_85:
}

- (void)_reportTransactionAuthorizationStatus:(int64_t)a3 forPass:(id)a4
{
  v78 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = [v6 paymentPass];
  if (!v7)
  {
    goto LABEL_87;
  }

  v8 = [(PKPaymentOffersController *)self->_paymentOffersController selectedOfferDetails];
  v9 = [v8 selectedPaymentOffer];

  v10 = @"payInFull";
  if (v9)
  {
    v11 = [v9 type];
    v12 = @"installments";
    if (v11 != 1)
    {
      v12 = @"payInFull";
    }

    if (v11 == 2)
    {
      v10 = @"rewards";
    }

    else
    {
      v10 = v12;
    }
  }

  v13 = objc_alloc(MEMORY[0x1E695DF90]);
  v14 = *MEMORY[0x1E69BA680];
  v76[0] = *MEMORY[0x1E69BA790];
  v15 = *MEMORY[0x1E69BAD20];
  v75[0] = v14;
  v75[1] = v15;
  if (a3 > 7)
  {
    v16 = @"unknown";
  }

  else
  {
    v16 = off_1E8021F68[a3];
  }

  v75[2] = *MEMORY[0x1E69BAD38];
  v76[1] = v16;
  v76[2] = v10;
  v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v76 forKeys:v75 count:3];
  v18 = [v13 initWithDictionary:v17];

  v19 = v18;
  v20 = v6;
  v21 = v20;
  if (v20 && v19)
  {
    v22 = [v20 passType];
    v23 = MEMORY[0x1E69BB3A8];
    if ((v22 + 1) >= 3)
    {
      v24 = *MEMORY[0x1E69BB3A8];
    }

    else
    {
      v24 = off_1E8021FA8[v22 + 1];
    }

    [v19 setObject:v24 forKeyedSubscript:*MEMORY[0x1E69BACA8]];

    v25 = [v21 style];
    v26 = [v21 secureElementPass];
    v27 = [v26 isIdentityPass];

    if (v27)
    {
      v28 = @"identity";
    }

    else if (v25 < 0xE && ((0x27FFu >> v25) & 1) != 0)
    {
      v28 = off_1E8021FC0[v25];
    }

    else
    {
      v28 = *v23;
    }

    [v19 setObject:v28 forKeyedSubscript:*MEMORY[0x1E69BACA0]];

    v29 = [v21 nfcPayload];
    v30 = PKAnalyticsReportSwitchToggleResultValue();
    [v19 setObject:v30 forKeyedSubscript:*MEMORY[0x1E69BAC68]];

    v31 = v21;
    if ([v31 passType] == 1)
    {
      v32 = [v31 secureElementPass];
      v33 = [v32 cardType];
      if (v33 <= 4)
      {
        v27 = **(&unk_1E8022030 + v33);
      }

      v23 = MEMORY[0x1E69BB3A8];
    }

    else
    {
      v27 = @"other";
    }

    [v19 setObject:v27 forKeyedSubscript:*MEMORY[0x1E69BAC90]];
    v34 = [v31 secureElementPass];
    v69 = v9;
    if ([v34 isIdentityPass])
    {
      v35 = [v34 identityType];
      if (v35 <= 2)
      {
        if (v35 == 1)
        {
          v36 = MEMORY[0x1E69BA648];
          goto LABEL_48;
        }

        if (v35 == 2)
        {
          v36 = MEMORY[0x1E69BB2C8];
          goto LABEL_48;
        }
      }

      else
      {
        switch(v35)
        {
          case 3:
            goto LABEL_32;
          case 4:
            v36 = MEMORY[0x1E69BA8E0];
            goto LABEL_48;
          case 5:
LABEL_32:
            v36 = MEMORY[0x1E69BACB0];
LABEL_48:
            v41 = *v36;
            goto LABEL_49;
        }
      }

LABEL_41:
      v41 = *v23;
LABEL_49:
      v40 = v41;
      goto LABEL_62;
    }

    if (![v34 isAccessPass])
    {
      goto LABEL_41;
    }

    v37 = [v34 accessType];
    v38 = [v34 accessReportingType];
    v39 = v38;
    if (v37 <= 2)
    {
      switch(v37)
      {
        case 0:
          v42 = @"general";
          if (v38)
          {
            v42 = v38;
          }

          goto LABEL_57;
        case 1:
          v40 = @"hospitality";
          goto LABEL_61;
        case 2:
          v40 = @"corporate";
LABEL_61:

LABEL_62:
          [v19 setObject:v40 forKeyedSubscript:*MEMORY[0x1E69BAC88]];

          v43 = [v31 secureElementPass];
          v44 = [v43 devicePaymentApplications];
          [v44 count];

          v45 = PKAnalyticsReportSwitchToggleResultValue();

          [v19 setObject:v45 forKeyedSubscript:*MEMORY[0x1E69BA4E0]];
          v46 = [v31 secureElementPass];
          v47 = *MEMORY[0x1E69BB3A8];
          v48 = [v46 organizationName];
          if ([v48 length])
          {
            v49 = [v46 cardType];
            if (v49 <= 4 && ((1 << v49) & 0x16) != 0)
            {
              v50 = v48;

              v47 = v50;
            }
          }

          [v19 setObject:v47 forKeyedSubscript:*MEMORY[0x1E69BAA28]];
          v51 = [v31 secureElementPass];
          v52 = v51;
          if (v51)
          {
            v68 = v7;
            [v51 devicePaymentApplications];
            v70 = 0u;
            v71 = 0u;
            v72 = 0u;
            v53 = v73 = 0u;
            v54 = [v53 countByEnumeratingWithState:&v70 objects:v77 count:16];
            v67 = a3;
            if (v54)
            {
              v55 = v54;
              v56 = 0;
              v57 = *v71;
              while (2)
              {
                for (i = 0; i != v55; ++i)
                {
                  if (*v71 != v57)
                  {
                    objc_enumerationMutation(v53);
                  }

                  v59 = *(*(&v70 + 1) + 8 * i);
                  if (v56 && v56 != [*(*(&v70 + 1) + 8 * i) paymentType])
                  {

                    v60 = @"multiple";
                    goto LABEL_79;
                  }

                  v56 = [v59 paymentType];
                }

                v55 = [v53 countByEnumeratingWithState:&v70 objects:v77 count:16];
                if (v55)
                {
                  continue;
                }

                break;
              }
            }

            v60 = PKPaymentMethodTypeToString();
LABEL_79:

            [v19 setObject:v60 forKeyedSubscript:*MEMORY[0x1E69BAD40]];
            v61 = [v52 issuerCountryCode];
            [v19 setObject:v61 forKeyedSubscript:*MEMORY[0x1E69BAC78]];

            a3 = v67;
            v7 = v68;
          }

          v9 = v69;
          goto LABEL_81;
      }
    }

    else
    {
      if (v37 <= 4)
      {
        if (v37 == 3)
        {
          v40 = @"singlefamily";
        }

        else
        {
          v40 = @"cars";
        }

        goto LABEL_61;
      }

      if (v37 == 5)
      {
        v40 = @"multifamily";
        goto LABEL_61;
      }

      if (v37 == 6)
      {
        v40 = @"urbanmobility";
        goto LABEL_61;
      }
    }

    v42 = *MEMORY[0x1E69BB3A8];
LABEL_57:
    v40 = v42;
    goto LABEL_61;
  }

LABEL_81:

  if (!a3)
  {
    v62 = PKApplePayUserEducationDemoLastCompletedDate();
    if (v62)
    {
      v63 = [MEMORY[0x1E695DF00] now];
      v64 = [v62 isDateNewerThanNDays:182 beforeDate:v63];

      if (v64)
      {
        [v19 setObject:*MEMORY[0x1E69BB020] forKey:*MEMORY[0x1E69BA300]];
      }
    }
  }

  v65 = MEMORY[0x1E69B8540];
  v74 = *MEMORY[0x1E69BB6C0];
  v66 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v74 count:1];
  [v65 subjects:v66 sendEvent:v19];

LABEL_87:
}

- (PKPassPaymentContainerView)initWithPass:(id)a3 passStateProvider:(id)a4 context:(id)a5 paymentSession:(id)a6 paymentService:(id)a7
{
  v97 = *MEMORY[0x1E69E9840];
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v17 = [v12 secureElementPass];
  v18 = [v17 supportedRadioTechnologies];

  if (v18 == 2)
  {
    __break(1u);
  }

  v90.receiver = self;
  v90.super_class = PKPassPaymentContainerView;
  v19 = [(PKPassFooterContentView *)&v90 initWithPass:v12 presentationContext:v14];
  v20 = v19;
  if (!v19)
  {
    InvalidateSession_0(v15, 0);
    goto LABEL_42;
  }

  objc_storeStrong(&v19->_passStateProvider, a4);
  [v13 addPassStateObserver:v20];
  v21 = objc_alloc_init(MEMORY[0x1E69BC740]);
  authenticator = v20->_authenticator;
  v20->_authenticator = v21;

  v23 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    v24 = v20->_authenticator;
    *buf = 134218496;
    v92 = v20;
    v93 = 2048;
    v94 = v15;
    v95 = 2048;
    v96 = v24;
    _os_log_impl(&dword_1BD026000, v23, OS_LOG_TYPE_DEFAULT, "PKPassPaymentContainerView (%p): initializing with session %p and authenticator %p.", buf, 0x20u);
  }

  [(PKPassPaymentContainerView *)v20 _reportPassPresentedForPayment:v12];
  v25 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INTERACTIVE, 0);
  v26 = dispatch_queue_attr_make_with_autorelease_frequency(v25, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);

  v84 = v26;
  v27 = dispatch_queue_create("com.apple.passkit.authorization", v26);
  authorizationQueue = v20->_authorizationQueue;
  v20->_authorizationQueue = v27;

  v20->_userIntentStyle = PKUserIntentIsAvailable();
  v87 = [v12 paymentPass];
  if ([v87 isStoredValuePass])
  {
    v29 = [objc_alloc(MEMORY[0x1E69B9308]) initWithPass:v87];
    transitBalanceModel = v20->_transitBalanceModel;
    v20->_transitBalanceModel = v29;
  }

  if ([(PKPassFooterContentView *)v20 style]== 3)
  {
    v31 = [[PKLinkedApplication alloc] initWithPass:v87];
    linkedApplication = v20->_linkedApplication;
    v20->_linkedApplication = v31;

    [(PKLinkedApplication *)v20->_linkedApplication addObserver:v20];
    [(PKLinkedApplication *)v20->_linkedApplication reloadApplicationStateIfNecessary];
    v33 = objc_alloc_init(MEMORY[0x1E695DF70]);
    linkedApplicationUpdateCompletionHandlers = v20->_linkedApplicationUpdateCompletionHandlers;
    v20->_linkedApplicationUpdateCompletionHandlers = v33;
  }

  if (v16)
  {
    p_paymentService = &v20->_paymentService;
    v36 = v16;
  }

  else
  {
    v36 = [MEMORY[0x1E69B8DB8] paymentService];
    p_paymentService = &v20->_paymentService;
  }

  v37 = *p_paymentService;
  *p_paymentService = v36;
  v85 = v16;
  v86 = v13;

  [*p_paymentService registerObserver:v20];
  v20->_failureReason = 0;
  v20->_failureAction = 0;
  v38 = [MEMORY[0x1E69B8A58] sharedInstance];
  passLibrary = v20->_passLibrary;
  v20->_passLibrary = v38;

  [(PKAuthenticator *)v20->_authenticator setDelegate:v20];
  objc_storeStrong(&v20->_contactlessInterfaceSession, a6);
  [(PKContactlessInterfaceSession *)v20->_contactlessInterfaceSession setDelegate:v20];
  v40 = objc_alloc_init(MEMORY[0x1E695DF70]);
  transitionCompletionHandlers = v20->_transitionCompletionHandlers;
  v20->_transitionCompletionHandlers = v40;

  v42 = objc_alloc_init(MEMORY[0x1E695DF70]);
  pendingGlyphStateCompletionHandlers = v20->_pendingGlyphStateCompletionHandlers;
  v20->_pendingGlyphStateCompletionHandlers = v42;

  v20->_VASInfoViewHidden = 1;
  v44 = [v14 wasAutomaticallySelected];
  Current = 0.0;
  if (v44)
  {
    Current = CFAbsoluteTimeGetCurrent();
  }

  v20->_lastFieldExitTime = Current;
  if ([v87 hasAssociatedPeerPaymentAccount])
  {
    v46 = [(PKPassLibrary *)v20->_passLibrary peerPaymentPassUniqueID];
    v47 = [v12 uniqueID];
    v48 = [v46 isEqualToString:v47];

    if (v48)
    {
      v49 = [MEMORY[0x1E69B9000] sharedInstance];
      peerPaymentService = v20->_peerPaymentService;
      v20->_peerPaymentService = v49;

      v83 = objc_alloc_init(MEMORY[0x1E695CE18]);
      v51 = [MEMORY[0x1E69B8F30] requiredContactKeys];
      v52 = [objc_alloc(MEMORY[0x1E69B8740]) initWithContactStore:v83 keysToFetch:v51];
      transactionFooterContactResolver = v20->_transactionFooterContactResolver;
      v20->_transactionFooterContactResolver = v52;

      v54 = [PKPeerPaymentAccountResolutionController alloc];
      v55 = [(PKPeerPaymentService *)v20->_peerPaymentService account];
      v56 = [MEMORY[0x1E69B9020] sharedService];
      v57 = v23;
      v58 = objc_alloc_init(MEMORY[0x1E69B8A60]);
      v59 = [(PKPeerPaymentAccountResolutionController *)v54 initWithAccount:v55 webService:v56 context:0 delegate:0 passLibraryDataProvider:v58];
      peerPaymentAccountResolutionController = v20->_peerPaymentAccountResolutionController;
      v20->_peerPaymentAccountResolutionController = v59;

      v23 = v57;
    }
  }

  [(PKPassPaymentContainerView *)v20 _configureForStyle:[(PKPassFooterContentView *)v20 style] context:v14];
  v61 = [(PKPassPaymentPayStateView *)v20->_payStateView glyph];
  [v61 setFadeOnRecognized:{-[PKContactlessInterfaceSession fieldPresent](v20->_contactlessInterfaceSession, "fieldPresent")}];
  v62 = NSStringFromSelector(sel_state);
  [v61 addObserver:v20 forKeyPath:v62 options:0 context:&KVOContext];

  v63 = +[PKUIForegroundActiveArbiter sharedInstance];
  v64 = v63;
  if (v63)
  {
    v20->_foregroundActiveState = [v63 registerObserver:v20];
    v20->_deactivationReasons = [v64 registerDeactivationObserver:v20];
  }

  else
  {
    v20->_foregroundActiveState = 257;
  }

  v20->_pendingPayState = 0;
  v20->_currentPayState = 0;
  payStateView = v20->_payStateView;
  if (payStateView && [(PKPassPaymentPayStateView *)payStateView persistentEmulationHint])
  {
    [v15 queuePersistentCardEmulation];
  }

  [(PKPassPaymentContainerView *)v20 _commitPendingPayStateAnimated:0];
  if (PKRunningInRemoteContext() && (PKPearlIsAvailable() & 1) == 0)
  {
    v66 = v20->_authenticator;
    v67 = dispatch_time(0, 300000000);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __99__PKPassPaymentContainerView_initWithPass_passStateProvider_context_paymentSession_paymentService___block_invoke;
    block[3] = &unk_1E8010970;
    v89 = v66;
    v68 = v66;
    dispatch_after(v67, MEMORY[0x1E69E96A0], block);
  }

  v69 = [v14 wantsForcedModalPresentation];
  if (v69)
  {
    LOBYTE(v69) = [v14 wasForcedFromButton];
  }

  v20->_presentationWasForcedFromButton = v69;
  v20->_presentationWasForFieldDetect = [v14 isFieldDetect];
  v70 = objc_alloc_init(MEMORY[0x1E695DF70]);
  sessionExchangeTaskQueue = v20->_sessionExchangeTaskQueue;
  v20->_sessionExchangeTaskQueue = v70;

  v72 = [v14 externalizedAuthenticationContext];
  authorizedExternalizedContext = v20->_authorizedExternalizedContext;
  v20->_authorizedExternalizedContext = v72;

  if (!v20->_pendingAutomaticAuthorization && v20->_authorizedExternalizedContext && [(PKPassFooterContentView *)v20 style]!= 4)
  {
    v74 = [MEMORY[0x1E69BC740] userIntentStyle];
    if (!v74)
    {
      v75 = 1;
      goto LABEL_36;
    }

    if (v74 == 1)
    {
      v75 = [MEMORY[0x1E69BC740] isUserIntentAvailableWithStyle:1];
LABEL_36:
      v20->_pendingAutomaticAuthorization = v75;
    }
  }

  v76 = objc_alloc(MEMORY[0x1E69B8CF0]);
  v77 = [v87 uniqueID];
  v78 = [v76 initForInstoreConextWithPassUniqueID:v77];

  v79 = [MEMORY[0x1E69B8CE8] sharedInstance];
  paymentOffersController = v20->_paymentOffersController;
  v20->_paymentOffersController = v79;

  [(PKPaymentOffersController *)v20->_paymentOffersController updateSessionDetails:v78];
  v81 = [v14 selectedPaymentOffer];
  if (v81)
  {
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v92 = v81;
      _os_log_impl(&dword_1BD026000, v23, OS_LOG_TYPE_DEFAULT, "Auto selecting the selected payment offer in pre-arm %@", buf, 0xCu);
    }

    [(PKPaymentOffersController *)v20->_paymentOffersController updateCurrentSelectedPaymentOffer:v81 updateReason:3];
  }

  v13 = v86;
  v16 = v85;
LABEL_42:

  return v20;
}

void __99__PKPassPaymentContainerView_initWithPass_passStateProvider_context_paymentSession_paymentService___block_invoke(uint64_t a1)
{
  [*(a1 + 32) fingerPresent];

  JUMPOUT(0x1BFB41980);
}

- (void)dealloc
{
  v3 = +[PKUIForegroundActiveArbiter sharedInstance];
  [v3 unregisterObserver:self];
  [v3 unregisterDeactivationObserver:self];
  v4 = [MEMORY[0x1E696AD88] defaultCenter];
  [v4 removeObserver:self];

  [(PKPaymentService *)self->_paymentService unregisterObserver:self];
  [(PKPassDynamicStateProviding *)self->_passStateProvider removePassStateObserver:self];
  [(PKAuthenticator *)self->_authenticator invalidate];
  [(PKAuthenticator *)self->_authenticator setDelegate:0];
  authenticator = self->_authenticator;
  self->_authenticator = 0;

  [(PKPassPaymentContainerView *)self _endContactlessPaymentSession];
  v6 = [(PKPassFooterContentView *)self paymentPass];
  v7 = [v6 uniqueID];

  [(PKPaymentOffersController *)self->_paymentOffersController didEndContactlessPaymentSessionForPassUniqueID:v7];
  payStateView = self->_payStateView;
  if (payStateView)
  {
    v9 = [(PKPassPaymentPayStateView *)payStateView glyph];
    v10 = NSStringFromSelector(sel_state);
    [v9 removeObserver:self forKeyPath:v10 context:&KVOContext];
  }

  transactionResolutionTimer = self->_transactionResolutionTimer;
  if (transactionResolutionTimer)
  {
    dispatch_source_cancel(transactionResolutionTimer);
    v12 = self->_transactionResolutionTimer;
    self->_transactionResolutionTimer = 0;
  }

  transactionTerminalResponseTimer = self->_transactionTerminalResponseTimer;
  if (transactionTerminalResponseTimer)
  {
    dispatch_source_cancel(transactionTerminalResponseTimer);
    v14 = self->_transactionTerminalResponseTimer;
    self->_transactionTerminalResponseTimer = 0;
  }

  [(PKPassPaymentContainerView *)self _executePendingGlyphStateCompletionHandlers:1];
  [(PKPassPaymentContainerView *)self _executeTransitionCompletionHandlers:1];
  WeakRetained = objc_loadWeakRetained(&self->_dataReleaseVC);

  if (WeakRetained)
  {
    v16 = objc_loadWeakRetained(&self->_dataReleaseVC);
    v17 = [v16 presentingViewController];
    [v17 dismissViewControllerAnimated:1 completion:0];

    objc_storeWeak(&self->_dataReleaseVC, 0);
  }

  v18.receiver = self;
  v18.super_class = PKPassPaymentContainerView;
  [(PKPassFooterContentView *)&v18 dealloc];
}

- (void)layoutSubviews
{
  v92.receiver = self;
  v92.super_class = PKPassPaymentContainerView;
  [(PKPassFooterContentView *)&v92 layoutSubviews];
  physicalButtonView = self->_physicalButtonView;
  if (physicalButtonView)
  {
    [(LAUIPhysicalButtonView *)physicalButtonView updateFrame];
  }

  v4 = [(PKPassFooterContentView *)self style];
  v5 = [(PKPassFooterContentView *)self bottomRule];
  v6 = [v5 superview];
  if (v6)
  {
    [v5 alpha];
    v8 = v7 > 0.0;
  }

  else
  {
    v8 = 0;
  }

  [(PKPassPaymentContainerView *)self bounds];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  [(PKPassPaymentContainerView *)self _topMargin];
  v18 = v10 + 0.0;
  v19 = v17 + v12;
  if (v8)
  {
    [v5 frame];
    v20 = CGRectGetMinY(v93) - v19;
  }

  else
  {
    v20 = v16 - (v17 + 0.0);
  }

  memset(&slice, 0, sizeof(slice));
  remainder.origin.x = v18;
  remainder.origin.y = v19;
  remainder.size.width = v14;
  remainder.size.height = v20;
  if (self->_applicationsView)
  {
    v94.origin.x = v18;
    v94.origin.y = v19;
    v94.size.width = v14;
    v94.size.height = v20;
    CGRectDivide(v94, &slice, &remainder, 85.0, CGRectMinYEdge);
    [(PKPassPaymentApplicationView *)self->_applicationsView setFrame:slice.origin.x, slice.origin.y, slice.size.width, slice.size.height];
  }

  v85 = v19;
  rect = v18;
  [(PKPassValueAddedServiceInfoView *)self->_valueAddedServiceInfoView alpha];
  v22 = v21;
  v23 = v20;
  if ([(PKPassPaymentContainerView *)self _shouldDisplayPrimaryView])
  {
    [(UIView *)self->_displayedPrimaryView sizeThatFits:v14, 1.79769313e308];
    v25 = v24;
    displayedPrimaryView = self->_displayedPrimaryView;
    PKSizeAlignedInRect();
    [(UIView *)displayedPrimaryView setFrame:?];
    CGRectDivide(remainder, &slice, &remainder, v25, CGRectMinYEdge);
    CGRectDivide(remainder, &slice, &remainder, 10.0, CGRectMinYEdge);
  }

  valueAddedServiceInfoView = self->_valueAddedServiceInfoView;
  if (valueAddedServiceInfoView)
  {
    [(PKPassValueAddedServiceInfoView *)valueAddedServiceInfoView sizeThatFits:v14, 1.79769313e308];
    v29 = v28;
    v30 = self->_valueAddedServiceInfoView;
    PKSizeAlignedInRect();
    [(PKPassValueAddedServiceInfoView *)v30 setFrame:?];
    if (v22 > 0.0)
    {
      CGRectDivide(remainder, &slice, &remainder, v29, CGRectMinYEdge);
      CGRectDivide(remainder, &slice, &remainder, 10.0, CGRectMinYEdge);
    }
  }

  if ([(PKPassPaymentContainerView *)self _shouldDisplaySecondaryView])
  {
    [(UIView *)self->_displayedSecondaryView sizeThatFits:v14, 1.79769313e308];
    v32 = v31;
    displayedSecondaryView = self->_displayedSecondaryView;
    PKSizeAlignedInRect();
    [(UIView *)displayedSecondaryView setFrame:?];
    if (v22 <= 0.0)
    {
      CGRectDivide(remainder, &slice, &remainder, v32, CGRectMinYEdge);
    }
  }

  v34 = v19;
  v35 = rect;
  v36 = v23;
  if ([(PKPassFooterContentView *)self style]== 3)
  {
    y = remainder.origin.y;
    PKPassFrontFaceContentSize();
    if (y <= v19 + v38 - v39)
    {
      PKPassFrontFaceContentSize();
      v40 = v19 + v41 - v42;
    }

    else
    {
      v40 = remainder.origin.y;
    }

    remainder.origin.y = v40;
  }

  [(PKPassPaymentPayStateView *)self->_payStateView alpha];
  if (v43 <= 0.0)
  {
    v88[0] = MEMORY[0x1E69E9820];
    v88[1] = 3221225472;
    v89 = remainder;
    v88[2] = __44__PKPassPaymentContainerView_layoutSubviews__block_invoke;
    v88[3] = &unk_1E8012160;
    v88[4] = self;
    [MEMORY[0x1E69DD250] performWithoutAnimation:v88];
  }

  else
  {
    [(PKPassPaymentPayStateView *)self->_payStateView setFrame:remainder.origin.x, remainder.origin.y, remainder.size.width, remainder.size.height];
    [(PKPassPaymentPayStateView *)self->_payStateView layoutIfNeeded];
  }

  remainder.origin.x = rect;
  remainder.origin.y = v19;
  remainder.size.width = v14;
  remainder.size.height = v36;
  if (self->_applicationsView)
  {
    v95.origin.x = rect;
    v95.origin.y = v19;
    v95.size.width = v14;
    v95.size.height = v36;
    CGRectDivide(v95, &slice, &remainder, 85.0, CGRectMinYEdge);
  }

  v44 = self->_displayedPrimaryView;
  if (v44)
  {
    [(UIView *)v44 alpha];
    if (v45 > 0.0)
    {
      [(UIView *)self->_displayedPrimaryView frame];
      CGRectDivide(remainder, &slice, &remainder, v46, CGRectMinYEdge);
      CGRectDivide(remainder, &slice, &remainder, 10.0, CGRectMinYEdge);
    }
  }

  v47 = self->_valueAddedServiceInfoView;
  if (v47 && v22 > 0.0)
  {
    [(PKPassValueAddedServiceInfoView *)v47 frame];
    CGRectDivide(remainder, &slice, &remainder, v48, CGRectMinYEdge);
    CGRectDivide(remainder, &slice, &remainder, 10.0, CGRectMinYEdge);
  }

  v49 = self->_displayedSecondaryView;
  if (v49)
  {
    [(UIView *)v49 alpha];
    if (v50 > 0.0 && v22 <= 0.0)
    {
      [(UIView *)self->_displayedSecondaryView frame];
      CGRectDivide(remainder, &slice, &remainder, v51, CGRectMinYEdge);
    }
  }

  actionButton = self->_actionButton;
  if (actionButton)
  {
    [(UIButton *)actionButton frame];
    v54 = v53;
    if ((v4 - 1) < 3 && v8)
    {
      v84 = v36;
      v55 = [(PKPassFooterContentView *)self appIconView];
      [v55 frame];
      v57 = v56;
      v59 = v58;
      v61 = v60;
      v63 = v62;

      [(PKPassFooterContentView *)self infoButtonFrame];
      x = v96.origin.x;
      width = v96.size.width;
      v65 = v96.origin.y;
      height = v96.size.height;
      CGRectGetMinX(v96);
      v97.origin.x = v57;
      v97.origin.y = v59;
      v97.size.width = v61;
      v97.size.height = v63;
      CGRectGetMaxX(v97);
      v98.origin.x = v57;
      v98.origin.y = v59;
      v98.size.width = v61;
      v98.size.height = v63;
      CGRectGetMinX(v98);
      v99.origin.x = x;
      v99.origin.y = v65;
      v99.size.width = width;
      v99.size.height = height;
      CGRectGetMaxX(v99);
      UIRectCenteredYInRect();
      if (v4 == 2 || PKUIGetMinScreenWidthType())
      {
        v34 = v85;
        v35 = rect;
        v36 = v84;
      }

      else
      {
        [(PKPassFooterContentView *)self infoButtonAlpha];
        v34 = v85;
        v35 = rect;
        v36 = v84;
      }

      [(PKPassPaymentPayStateView *)self->_payStateView setLabelStateBottomInset:0.0];
    }

    else
    {
      [(PKPassPaymentPayStateView *)self->_payStateView bounds];
      [(PKPassPaymentContainerView *)self convertRect:self->_payStateView fromView:?];
      MaxY = CGRectGetMaxY(v100);
      [(PKPassPaymentPayStateView *)self->_payStateView setLabelStateBottomInset:MaxY - (MaxY - v54 + -12.0)];
      if (![(PKPassPaymentPayStateView *)self->_payStateView layoutState])
      {
        v68 = [(PKPassPaymentPayStateView *)self->_payStateView label];
        v69 = v68;
        if (v68)
        {
          v70 = v68;
        }

        else
        {
          v70 = [(PKPassPaymentPayStateView *)self->_payStateView glyph];
        }

        v71 = v70;

        [v71 bounds];
        [(PKPassPaymentContainerView *)self convertRect:v71 fromView:?];
        CGRectGetMaxY(v101);
      }
    }

    UIRectCenteredXInRect();
    [(UIButton *)self->_actionButton setFrame:?];
  }

  else
  {
    [(PKPassPaymentPayStateView *)self->_payStateView setLabelStateBottomInset:0.0];
  }

  bottomTextView = self->_bottomTextView;
  if (bottomTextView)
  {
    [(UITextView *)bottomTextView frame];
    v74 = v73;
    v75 = v35;
    recta = v76;
    [(UITextView *)self->_bottomTextView sizeThatFits:v14, 1.79769313e308];
    v77 = v14;
    v79 = v78;
    v80 = v36;
    v82 = v81;
    v102.origin.x = v75;
    v102.origin.y = v34;
    v102.size.width = v77;
    v102.size.height = v80;
    CGRectGetMaxY(v102);
    v103.origin.x = v74;
    v103.origin.y = recta;
    v103.size.width = v79;
    v103.size.height = v82;
    CGRectGetHeight(v103);
    UIRectCenteredXInRect();
    [(UITextView *)self->_bottomTextView setFrame:?];
  }
}

uint64_t __44__PKPassPaymentContainerView_layoutSubviews__block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 496) setFrame:{*(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 64)}];
  v2 = *(*(a1 + 32) + 496);

  return [v2 layoutIfNeeded];
}

- (double)_topMargin
{
  v2 = [(PKPassFooterContentView *)self style];
  v3 = 0.0;
  if ((v2 - 1) >= 3)
  {
    if (v2 == 4 || !v2)
    {
      return 10.0;
    }
  }

  else
  {
    v4 = PKUIGetMinScreenWidthType();
    if (v4 <= 0xE)
    {
      return dbl_1BE116778[v4];
    }
  }

  return v3;
}

- (BOOL)isPassAuthorized
{
  if ([(PKPassFooterContentView *)self style]== 3)
  {
    return self->_activeBarcodeIdentifier != 0;
  }

  else
  {
    return [(PKContactlessInterfaceSession *)self->_contactlessInterfaceSession state]== 2;
  }
}

- (BOOL)isTransacting
{
  v2 = 24;
  if (self->_transitioning)
  {
    v2 = 23;
  }

  return *(&self->super.super.super.super.isa + OBJC_IVAR___PKPassPaymentContainerView__paymentOffersController[v2]) - 7 < 3;
}

- (void)willBecomeVisibleAnimated:(BOOL)a3
{
  v8.receiver = self;
  v8.super_class = PKPassPaymentContainerView;
  [(PKPassFooterContentView *)&v8 willBecomeVisibleAnimated:a3];
  self->_isVisible = 1;
  self->_lastFieldExitTime = CFAbsoluteTimeGetCurrent();
  if (self->_failureReason)
  {
    v4 = [(PKPassPaymentContainerView *)self _textOverrideForFatalError];
    [(PKPassPaymentContainerView *)self _applyPayState:9 withTextOverride:v4];

    return;
  }

  pendingPresentationContextState = self->_pendingPresentationContextState;
  if (pendingPresentationContextState)
  {
    v6 = [(NSNumber *)pendingPresentationContextState integerValue];
    if (v6 == 8)
    {
      [(PKPassPaymentContainerView *)self _setGlyphState:8 animated:0];
      return;
    }

    if (v6)
    {
      return;
    }
  }

  if (self->_didBecomeHiddenWhileAuthorized)
  {
    v7 = [(PKPassFooterContentView *)self pass];
    self->_pendingAutomaticAuthorization = [PKPassPaymentContainerView shouldAutomaticallyAuthorizeForPass:v7 withContext:0];

    self->_didBecomeHiddenWhileAuthorized = 0;
  }

  [(PKPassPaymentContainerView *)self _resetToIdleState];
}

- (void)didBecomeVisibleAnimated:(BOOL)a3
{
  v7.receiver = self;
  v7.super_class = PKPassPaymentContainerView;
  [(PKPassFooterContentView *)&v7 didBecomeVisibleAnimated:a3];
  pendingPresentationContextState = self->_pendingPresentationContextState;
  if (pendingPresentationContextState)
  {
    v5 = [(NSNumber *)pendingPresentationContextState integerValue];
    v6 = self->_pendingPresentationContextState;
    self->_pendingPresentationContextState = 0;

    if (v5)
    {
      [(PKPassPaymentContainerView *)self _applyPresentationPayState:v5];
    }
  }

  self->_presentationWasForcedFromButton = 0;
}

- (void)willBecomeHiddenAnimated:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = PKPassPaymentContainerView;
  [(PKPassFooterContentView *)&v4 willBecomeHiddenAnimated:a3];
  self->_didBecomeHiddenWhileAuthorized = self->_currentPayState == 5;
  self->_isVisible = 0;
  [(PKPassPaymentContainerView *)self _endPaymentAuthorizationWithWillUpdateState:1];
  [(PKPassPaymentContainerView *)self dismissPasscodeViewController];
}

- (void)didBecomeHiddenAnimated:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = PKPassPaymentContainerView;
  [(PKPassFooterContentView *)&v4 didBecomeHiddenAnimated:a3];
  [(PKPassPaymentContainerView *)self _cancelHoldingTerminalTransactionSubstateIfNecessary];
  [(PKPassPaymentContainerView *)self _applyPayState:0];
  [(PKPassPaymentContainerView *)self _endContactlessPaymentSession];
  self->_didBecomeHiddenWhileAuthorized = 0;
  self->_presentationWasForFieldDetect = 0;
}

- (void)coachingStateDidChange
{
  v3.receiver = self;
  v3.super_class = PKPassPaymentContainerView;
  [(PKPassFooterContentView *)&v3 coachingStateDidChange];
  [(PKPassPaymentContainerView *)self _updateCoachingInstruction];
}

- (void)showFullScreenBarcode
{
  if (self->_activeBarcodeIdentifier && self->_activeBarcodeCredential)
  {
    WeakRetained = objc_loadWeakRetained(&self->_barcodeViewController);
    if (!WeakRetained)
    {
      if (![(PKPassPaymentContainerView *)self _authenticationAllowed])
      {
        return;
      }

      v4 = [PKPaymentBarcodeViewController alloc];
      v5 = [(PKPassFooterContentView *)self paymentPass];
      obj = [(PKPaymentBarcodeViewController *)v4 initWithPass:v5];

      [(PKPaymentBarcodeViewController *)obj setBarcodeData:self->_activeBarcodeCredential];
      v6 = [(UIView *)self pkui_viewControllerFromResponderChain];
      [v6 presentViewController:obj animated:1 completion:0];

      objc_storeWeak(&self->_barcodeViewController, obj);
      WeakRetained = obj;
    }
  }
}

- (void)_didInvalidate
{
  [(PKPassPaymentContainerView *)self _endPaymentAuthorizationWithWillUpdateState:0];
  [(PKPassPaymentContainerView *)self _endContactlessPaymentSession];
  authenticator = self->_authenticator;
  if (authenticator)
  {
    [(PKAuthenticator *)authenticator invalidate];
    [(PKAuthenticator *)self->_authenticator setDelegate:0];
    v4 = self->_authenticator;
    self->_authenticator = 0;
  }

  payStateView = self->_payStateView;
  if (payStateView)
  {
    [(PKPassPaymentPayStateView *)payStateView setDelegate:0];
    v6 = [(PKPassPaymentPayStateView *)self->_payStateView glyph];
    v7 = NSStringFromSelector(sel_state);
    [v6 removeObserver:self forKeyPath:v7 context:&KVOContext];

    [(PKPassPaymentPayStateView *)self->_payStateView removeFromSuperview];
    v8 = self->_payStateView;
    self->_payStateView = 0;
  }

  v9.receiver = self;
  v9.super_class = PKPassPaymentContainerView;
  [(PKPassFooterContentView *)&v9 _didInvalidate];
}

- (void)paymentApplicationView:(id)a3 didSelectApplication:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&dword_1BD026000, v11, OS_LOG_TYPE_DEFAULT, "Did select payment application button", buf, 2u);
  }

  if ([(PKPassPaymentContainerView *)self _recognizingBiometrics]|| self->_authenticating && ([(PKAuthenticator *)self->_authenticator fingerPresent]& 1) != 0)
  {
    if (v10)
    {
      v10[2](v10, 0);
    }
  }

  else
  {
    v12 = [(PKPassFooterContentView *)self paymentPass];
    [(PKPassPaymentContainerView *)self _resetActiveApplicationForPaymentPass:v12 withCompletion:0];
    objc_initWeak(buf, self);
    paymentService = self->_paymentService;
    v14 = [v12 uniqueID];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __85__PKPassPaymentContainerView_paymentApplicationView_didSelectApplication_completion___block_invoke;
    v15[3] = &unk_1E8021518;
    v16 = v9;
    objc_copyWeak(&v18, buf);
    v17 = v10;
    [(PKPaymentService *)paymentService setDefaultPaymentApplication:v16 forPassUniqueIdentifier:v14 completion:v15];

    objc_destroyWeak(&v18);
    objc_destroyWeak(buf);
  }
}

void __85__PKPassPaymentContainerView_paymentApplicationView_didSelectApplication_completion___block_invoke(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v6 = a2;
    v7 = [v5 description];
    v8 = [v6 description];

    *buf = 138412546;
    v13 = v7;
    v14 = 2112;
    v15 = v8;
    _os_log_impl(&dword_1BD026000, v4, OS_LOG_TYPE_DEFAULT, "Set new default payment application %@ for pass %@", buf, 0x16u);
  }

  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __85__PKPassPaymentContainerView_paymentApplicationView_didSelectApplication_completion___block_invoke_127;
  v9[3] = &unk_1E80111D0;
  objc_copyWeak(&v11, (a1 + 48));
  v10 = *(a1 + 40);
  dispatch_async(MEMORY[0x1E69E96A0], v9);

  objc_destroyWeak(&v11);
}

void __85__PKPassPaymentContainerView_paymentApplicationView_didSelectApplication_completion___block_invoke_127(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  v6 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _activateForPayment];
    v3 = v6;
    if (v6[736] == 1)
    {
      [v6 _restartPaymentAuthorization];
LABEL_8:
      v3 = v6;
      goto LABEL_9;
    }

    v4 = 24;
    if (v6[776])
    {
      v4 = 23;
    }

    if (*&v6[OBJC_IVAR___PKPassPaymentContainerView__paymentOffersController[v4]] == 5)
    {
      [v6 _beginPaymentAuthorization];
      goto LABEL_8;
    }
  }

LABEL_9:
  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, 1);
    v3 = v6;
  }
}

- (void)authenticator:(id)a3 didTransitionToEvaluationStateWithEvent:(id)a4
{
  var1 = a4.var1;
  var0 = a4.var0;
  v7 = a3;
  authenticationEvaluationState = self->_authenticationEvaluationState;
  self->_authenticationEvaluationState = var0;
  v9 = [(PKPassFooterContentView *)self secureElementPass];
  v10 = [v9 isIdentityPass];

  if (v10 && var1 == 2)
  {
    self->_authenticationRecentlyUsedUnboundBiometric = 1;
  }

  v11 = 24;
  if (self->_transitioning)
  {
    v11 = 23;
  }

  v12 = *(&self->super.super.super.super.isa + OBJC_IVAR___PKPassPaymentContainerView__paymentOffersController[v11]);
  if ([(PKPassPaymentContainerView *)self _authenticationAllowed]&& self->_authenticating)
  {
    v13 = v12 > 6 || ((1 << v12) & 0x4E) == 0;
    if (!v13 && !self->_transactionSubstate)
    {
      objc_initWeak(&location, self);
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = __84__PKPassPaymentContainerView_authenticator_didTransitionToEvaluationStateWithEvent___block_invoke;
      aBlock[3] = &unk_1E8021540;
      objc_copyWeak(v28, &location);
      v28[1] = v12;
      v14 = _Block_copy(aBlock);
      v15 = v14;
      if (var0 > 2)
      {
        if (var0 == 3)
        {
          v18 = 0;
          v19 = 2;
        }

        else if (var0 == 4)
        {
          v18 = 0;
          v19 = 3;
        }

        else
        {
          if (var0 != 5 || v12 == 6)
          {
            goto LABEL_64;
          }

          v18 = 8;
          v19 = 6;
        }

        (*(v14 + 2))(v14, v19, v18, 0, 0);
        goto LABEL_64;
      }

      if (var0)
      {
        if (var0 == 1)
        {
          if (PKPearlIsAvailable())
          {
            v16 = 4;
          }

          else
          {
            v16 = 0;
          }

          if ((self->_authenticatorState & 8) != 0 && [(PKPassFooterContentView *)self coachingState]== 3)
          {
            v17 = 3;
          }

          else
          {
            v17 = 1;
          }

LABEL_45:
          v15[2](v15, v17, v16, 0, 0);
          goto LABEL_64;
        }

        if (var0 == 2)
        {
          if ((PKPearlIsAvailable() & 1) == 0)
          {
            kdebug_trace();
          }

          if (v10)
          {
            self->_authenticationRecentlyUsedUnboundBiometric = 0;
          }

          if (PKPearlIsAvailable())
          {
            v16 = 5;
          }

          else
          {
            v16 = 1;
          }

          if ((self->_authenticatorState & 8) != 0 && [(PKPassFooterContentView *)self coachingState]== 3)
          {
            v17 = 3;
          }

          else
          {
            v17 = 1;
          }

          goto LABEL_45;
        }

LABEL_64:
        [(PKPassPaymentContainerView *)self _updateCoachingInstruction];

        objc_destroyWeak(v28);
        objc_destroyWeak(&location);
        goto LABEL_65;
      }

      if (var1 == 3)
      {
        v20 = PKLocalizedPearlString(&cfstr_GenericPearlUn.isa);
LABEL_34:
        v21 = v20;
        v22 = 0;
        v23 = 1;
        goto LABEL_56;
      }

      if (v10 && self->_authenticationRecentlyUsedUnboundBiometric && (PKPearlIsAvailable() & 1) == 0)
      {
        v20 = PKLocalizedIdentityString(&cfstr_PresentmentFoo_7.isa);
        goto LABEL_34;
      }

      if (var1 == 1)
      {
        if (!PKPearlIsAvailable())
        {
          v20 = PKLocalizedPaymentString(&cfstr_PaymentTryAgai.isa);
          goto LABEL_34;
        }

        v21 = PKLocalizedPearlString(&cfstr_GenericPearlFa.isa);
        v23 = 1;
        v22 = 3;
      }

      else
      {
        IsAvailable = PKPearlIsAvailable();
        v21 = 0;
        v22 = 0;
        if ((authenticationEvaluationState - 1) < 2)
        {
          v23 = IsAvailable;
        }

        else
        {
          v23 = 0;
        }
      }

LABEL_56:
      if (PKPearlIsAvailable())
      {
        if ((self->_authenticatorState & 8) != 0)
        {
          v26 = [(PKPassFooterContentView *)self coachingState];
          v25 = 3;
          if (v26 == 3 || v12 == 3)
          {
            goto LABEL_63;
          }
        }

        else if (v12 == 3)
        {
          v25 = 3;
LABEL_63:
          (v15)[2](v15, v25, v22, v23, v21);

          goto LABEL_64;
        }
      }

      v25 = 1;
      goto LABEL_63;
    }
  }

LABEL_65:
}

void __84__PKPassPaymentContainerView_authenticator_didTransitionToEvaluationStateWithEvent___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, int a4, void *a5)
{
  v11 = a5;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v10 = WeakRetained;
  if (WeakRetained)
  {
    if (*(a1 + 40) != a2)
    {
      [WeakRetained _applyPayState:a2];
    }

    if (a4)
    {
      [v10 _emphasizeStateIfPossible:a2 withTextOverride:v11 playSystemSound:PKPearlIsAvailable() ^ 1];
    }

    [v10 _setGlyphState:a3 animated:1 withCompletionHandler:0];
  }
}

- (void)presentPasscodeViewController:(id)a3 completionHandler:(id)a4 reply:(id)a5
{
  v7 = a3;
  v8 = a4;
  self->_presentingPasscode = 1;
  ++PresentationTrackingCounter;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __84__PKPassPaymentContainerView_presentPasscodeViewController_completionHandler_reply___block_invoke;
  aBlock[3] = &unk_1E80158C0;
  aBlock[4] = self;
  v9 = v8;
  v19 = v9;
  v10 = _Block_copy(aBlock);
  v11 = [(UIView *)self pkui_viewControllerFromResponderChain];
  if (!v11 || ((currentPayState = self->_currentPayState, v13 = currentPayState > 6, v14 = (1 << currentPayState) & 0x4E, !v13) ? (v15 = v14 == 0) : (v15 = 1), v15 || ([v7 setModalPresentationStyle:6], objc_msgSend(v7, "setModalTransitionStyle:", 0), self->_requiresPasscodeDismissal)))
  {
    v10[2](v10, 0);
  }

  else
  {
    objc_storeWeak(&self->_passcodeVC, v7);
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __84__PKPassPaymentContainerView_presentPasscodeViewController_completionHandler_reply___block_invoke_3;
    v16[3] = &unk_1E8010B50;
    v17 = v10;
    [v11 presentViewController:v7 animated:1 completion:v16];
  }
}

void __84__PKPassPaymentContainerView_presentPasscodeViewController_completionHandler_reply___block_invoke(uint64_t a1, int a2)
{
  *(*(a1 + 32) + 840) = 0;
  v3 = *(a1 + 32);
  if (v3[841] == 1)
  {
    v3[841] = 0;
    if (a2)
    {
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __84__PKPassPaymentContainerView_presentPasscodeViewController_completionHandler_reply___block_invoke_2;
      block[3] = &unk_1E8010970;
      block[4] = *(a1 + 32);
      dispatch_async(MEMORY[0x1E69E96A0], block);
    }
  }

  else if (a2)
  {
    v4 = 1;
    [v3 _setGlyphState:8 animated:1];
    goto LABEL_7;
  }

  v4 = 0;
LABEL_7:
  v5 = *(a1 + 40);
  if (v5)
  {
    (*(v5 + 16))(v5, v4);
  }

  PKUIEndTrackingPresentation();
}

- (void)dismissPasscodeViewController
{
  if (self->_presentingPasscode)
  {
    self->_requiresPasscodeDismissal = 1;
  }

  else
  {
    self->_requiresPasscodeDismissal = 0;
    WeakRetained = objc_loadWeakRetained(&self->_passcodeVC);
    objc_storeWeak(&self->_passcodeVC, 0);
    v3 = WeakRetained;
    if (WeakRetained)
    {
      v4 = [WeakRetained presentingViewController];
      v5 = [WeakRetained isBeingDismissed];
      if (v4 && (v5 & 1) == 0)
      {
        [v4 dismissViewControllerAnimated:-[PKPassPaymentContainerView _isBackgrounded](self completion:{"_isBackgrounded") ^ 1, 0}];
      }

      v3 = WeakRetained;
    }
  }
}

- (void)paymentPassWithUniqueIdentifier:(id)a3 didUpdateWithTransitPassProperties:(id)a4
{
  v6 = a3;
  v7 = a4;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __97__PKPassPaymentContainerView_paymentPassWithUniqueIdentifier_didUpdateWithTransitPassProperties___block_invoke;
  block[3] = &unk_1E8010A88;
  block[4] = self;
  v11 = v6;
  v12 = v7;
  v8 = v7;
  v9 = v6;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __97__PKPassPaymentContainerView_paymentPassWithUniqueIdentifier_didUpdateWithTransitPassProperties___block_invoke(uint64_t a1)
{
  v10 = [*(a1 + 32) paymentPass];
  v2 = [v10 uniqueID];
  v3 = *(a1 + 40);
  v4 = v2;
  v5 = v3;
  v6 = v5;
  if (v4 == v5)
  {

LABEL_12:
    [*(*(a1 + 32) + 936) setTransitProperties:*(a1 + 48)];
    [*(a1 + 32) _updateContentPrimaryView];
    v9 = *(a1 + 32);

    [v9 _updateContentSecondaryView];
    return;
  }

  if (v4)
  {
    v7 = v5 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (!v7)
  {
    v8 = [v4 isEqualToString:v5];

    if ((v8 & 1) == 0)
    {
      return;
    }

    goto LABEL_12;
  }
}

- (void)passWithUniqueIdentifier:(id)a3 didUpdateTiles:(id)a4 forContext:(int64_t)a5
{
  v8 = a3;
  v9 = a4;
  if (a5 == 1)
  {
    v10 = [(PKPassFooterContentView *)self paymentPass];
    v11 = [v10 uniqueID];
    v12 = v8;
    v13 = v12;
    if (v11 == v12)
    {
    }

    else
    {
      if (!v12 || !v11)
      {

        goto LABEL_10;
      }

      v14 = [v11 isEqualToString:v12];

      if ((v14 & 1) == 0)
      {
        goto LABEL_10;
      }
    }

    v15 = [(PKPassPaymentContainerView *)self _groupTileForTiles:v9];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __81__PKPassPaymentContainerView_passWithUniqueIdentifier_didUpdateTiles_forContext___block_invoke;
    v17[3] = &unk_1E8010A10;
    v17[4] = self;
    v18 = v15;
    v16 = v15;
    dispatch_async(MEMORY[0x1E69E96A0], v17);
  }

LABEL_10:
}

uint64_t __81__PKPassPaymentContainerView_passWithUniqueIdentifier_didUpdateTiles_forContext___block_invoke(uint64_t a1)
{
  objc_storeStrong((*(a1 + 32) + 600), *(a1 + 40));
  v2 = *(a1 + 32);

  return [v2 _updateContentPrimaryView];
}

- (void)paymentPassWithUniqueIdentifier:(id)a3 didReceiveBalanceUpdate:(id)a4
{
  v6 = a3;
  v7 = a4;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __86__PKPassPaymentContainerView_paymentPassWithUniqueIdentifier_didReceiveBalanceUpdate___block_invoke;
  block[3] = &unk_1E8010A88;
  block[4] = self;
  v11 = v6;
  v12 = v7;
  v8 = v7;
  v9 = v6;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __86__PKPassPaymentContainerView_paymentPassWithUniqueIdentifier_didReceiveBalanceUpdate___block_invoke(uint64_t a1)
{
  v10 = [*(a1 + 32) paymentPass];
  v2 = [v10 uniqueID];
  v3 = *(a1 + 40);
  v4 = v2;
  v5 = v3;
  v6 = v5;
  if (v4 == v5)
  {

    goto LABEL_10;
  }

  if (v4)
  {
    v7 = v5 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {

LABEL_12:
    goto LABEL_13;
  }

  v8 = [v4 isEqualToString:v5];

  if (!v8)
  {
    goto LABEL_12;
  }

LABEL_10:
  v9 = [v10 isStoredValuePass];

  if (v9)
  {
    [*(*(a1 + 32) + 936) setDynamicBalances:*(a1 + 48)];
    [*(a1 + 32) _updateContentPrimaryView];
    [*(a1 + 32) _updateContentSecondaryView];
  }

LABEL_13:
}

- (void)paymentPassWithUniqueIdentifier:(id)a3 didReceivePlanUpdate:(id)a4
{
  v6 = a3;
  v7 = a4;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __83__PKPassPaymentContainerView_paymentPassWithUniqueIdentifier_didReceivePlanUpdate___block_invoke;
  block[3] = &unk_1E8010A88;
  block[4] = self;
  v11 = v6;
  v12 = v7;
  v8 = v7;
  v9 = v6;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __83__PKPassPaymentContainerView_paymentPassWithUniqueIdentifier_didReceivePlanUpdate___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) paymentPass];
  v3 = [v2 uniqueID];
  v4 = PKEqualObjects();

  if (v4)
  {
    [*(*(a1 + 32) + 936) updateWithDynamicCommutePlans:*(a1 + 48)];
    [*(a1 + 32) _updateContentPrimaryView];
    v5 = *(a1 + 32);

    [v5 _updateContentSecondaryView];
  }
}

- (void)transactionSourceIdentifier:(id)a3 didReceiveTransaction:(id)a4
{
  v6 = a3;
  v7 = a4;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __80__PKPassPaymentContainerView_transactionSourceIdentifier_didReceiveTransaction___block_invoke;
  block[3] = &unk_1E8010A88;
  block[4] = self;
  v11 = v6;
  v12 = v7;
  v8 = v7;
  v9 = v6;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __80__PKPassPaymentContainerView_transactionSourceIdentifier_didReceiveTransaction___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) style] == 3)
  {
    v2 = [*(a1 + 32) paymentPass];
    v3 = [v2 hasDeviceTransactionSourceIdentifier:*(a1 + 40)];

    if (v3)
    {
      v4 = *(a1 + 32);
      v5 = *(a1 + 48);

      [v4 _handleReceivedBarcodePaymentTransaction:v5];
    }
  }
}

- (void)contactlessInterfaceSessionHasPendingServerRequest:(id)a3
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __81__PKPassPaymentContainerView_contactlessInterfaceSessionHasPendingServerRequest___block_invoke;
  block[3] = &unk_1E8010970;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __81__PKPassPaymentContainerView_contactlessInterfaceSessionHasPendingServerRequest___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = 24;
  if (v2[776])
  {
    v3 = 23;
  }

  if (!*&v2[OBJC_IVAR___PKPassPaymentContainerView__paymentOffersController[v3]] && ([v2 _recognizingBiometrics] & 1) == 0)
  {
    v4 = [*(a1 + 32) delegate];
    [v4 passFooterContentViewRequestsSessionSuppression:*(a1 + 32)];
  }
}

- (void)contactlessInterfaceSessionDidTimeout:(id)a3 forPaymentApplications:(id)a4 paymentPass:(id)a5 valueAddedServicePasses:(id)a6
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __127__PKPassPaymentContainerView_contactlessInterfaceSessionDidTimeout_forPaymentApplications_paymentPass_valueAddedServicePasses___block_invoke;
  block[3] = &unk_1E8010970;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

_BYTE *__127__PKPassPaymentContainerView_contactlessInterfaceSessionDidTimeout_forPaymentApplications_paymentPass_valueAddedServicePasses___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _cancelTerminalResponseTimeout];
  [*(*(a1 + 32) + 496) updateDebugLabel:@"did timeout" isErrorState:0];
  result = *(a1 + 32);
  v3 = 24;
  if (result[776])
  {
    v3 = 23;
  }

  if (*&result[OBJC_IVAR___PKPassPaymentContainerView__paymentOffersController[v3]] == 5)
  {

    return [result _resetToIdleState];
  }

  return result;
}

- (void)contactlessInterfaceSessionDidStartTransaction:(id)a3 withContext:(id)a4
{
  v5 = a4;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __89__PKPassPaymentContainerView_contactlessInterfaceSessionDidStartTransaction_withContext___block_invoke;
  v7[3] = &unk_1E8010A10;
  v7[4] = self;
  v8 = v5;
  v6 = v5;
  dispatch_async(MEMORY[0x1E69E96A0], v7);
}

void __89__PKPassPaymentContainerView_contactlessInterfaceSessionDidStartTransaction_withContext___block_invoke(uint64_t a1)
{
  objc_storeStrong((*(a1 + 32) + 1096), *(a1 + 40));
  [*(*(a1 + 32) + 496) updateDebugLabel:@"did start" isErrorState:0];
  v2 = [MEMORY[0x1E69DC668] sharedApplication];
  [v2 pkui_consumeSharedRootAuthenticationContext];

  [*(a1 + 32) _cancelTerminalResponseTimeout];
  v3 = *(a1 + 32);
  v4 = 24;
  if (v3[776])
  {
    v4 = 23;
  }

  v5 = *&v3[OBJC_IVAR___PKPassPaymentContainerView__paymentOffersController[v4]];
  v6 = [v3 style];
  v7 = *(a1 + 32);
  if (v6 == 4)
  {
    v8 = v7[136];
    v7[136] = 0;

    if (v5 != 7)
    {
      v9 = *(a1 + 32);
      v10 = PKLocalizedIdentityString(&cfstr_PresentmentFoo_8.isa);
      [v9 _applyPayState:7 withTextOverride:v10];
    }
  }

  else
  {

    [v7 _applyPaymentIndefiniteSuccessState];
  }
}

- (void)contactlessInterfaceSession:(id)a3 didReceive18013Request:(id)a4 readerAuthInfo:(id)a5
{
  v7 = a4;
  v8 = a5;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __96__PKPassPaymentContainerView_contactlessInterfaceSession_didReceive18013Request_readerAuthInfo___block_invoke;
  block[3] = &unk_1E8010A88;
  block[4] = self;
  v12 = v7;
  v13 = v8;
  v9 = v8;
  v10 = v7;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __96__PKPassPaymentContainerView_contactlessInterfaceSession_didReceive18013Request_readerAuthInfo___block_invoke(id *a1)
{
  v18 = *MEMORY[0x1E69E9840];
  *(a1[4] + 1128) = 1;
  [*(a1[4] + 62) updateDebugLabel:@"received request" isErrorState:0];
  v2 = PKISO18013DataReleaseRequestFromSTSRequest(a1[5], a1[6]);
  [v2 setExternalizedAuthenticationContext:*(a1[4] + 96)];
  v3 = a1[4];
  v4 = v3[96];
  v3[96] = 0;

  v5 = [v2 authenticationACL];
  if (v5)
  {
    v6 = SecAccessControlCreateFromData();
    v7 = v6 != 0;
    if (v6)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  v8 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v17 = 0;
    _os_log_impl(&dword_1BD026000, v8, OS_LOG_TYPE_DEFAULT, "Could not create access control ref from provided data with error %@", buf, 0xCu);
  }

  if (!v7)
  {
    v10 = 0;
    goto LABEL_12;
  }

LABEL_8:
  v9 = [MEMORY[0x1E69BC740] currentStateForAccessControl:v6];
  CFRelease(v6);
  if ((v9 & 1) == 0 || (v9 & 6) == 0 || (v9 & 9) == 9 || ([MEMORY[0x1E69ADFB8] sharedConnection], v13 = objc_claimAutoreleasedReturnValue(), v14 = objc_msgSend(v13, "effectiveBoolValueForSetting:", *MEMORY[0x1E69ADE88]), v13, v14 == 1))
  {
    v10 = [[_TtC9PassKitUI27PKDataReleaseViewController alloc] initWithRequest:v2 delegate:a1[4]];
    if (v10)
    {
      [a1[4] _applyPayState:11];
      objc_storeWeak(a1[4] + 133, v10);
      v11 = [a1[4] pkui_viewControllerFromResponderChain];
      [v11 presentViewController:v10 animated:1 completion:&__block_literal_global_166];

      goto LABEL_17;
    }
  }

  else
  {
    *(a1[4] + 134) = 3;
    if (PKPearlIsAvailable())
    {
      v15 = @"PRESENTMENT_BIOMETRICS_DISABLED_FACEID";
    }

    else
    {
      v15 = @"PRESENTMENT_BIOMETRICS_DISABLED_TOUCHID";
    }

    v10 = PKLocalizedIdentityString(&v15->isa);
  }

LABEL_12:
  v12 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1BD026000, v12, OS_LOG_TYPE_DEFAULT, "No controller to present", buf, 2u);
  }

  [a1[4] _cancelTerminalResponseTimeout];
  [a1[4] _endPaymentAuthorizationWithWillUpdateState:1];
  [a1[4] _endContactlessPaymentSession];
  if (!v10)
  {
    v10 = [a1[4] _textOverrideForFatalError];
  }

  [a1[4] _applyPayState:9 withTextOverride:v10];
LABEL_17:
}

void __96__PKPassPaymentContainerView_contactlessInterfaceSession_didReceive18013Request_readerAuthInfo___block_invoke_164()
{
  v0 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *v1 = 0;
    _os_log_impl(&dword_1BD026000, v0, OS_LOG_TYPE_DEFAULT, "Presented data release confirmation controller", v1, 2u);
  }
}

- (void)contactlessInterfaceSessionDidReceiveActivityTimeout:(id)a3
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __83__PKPassPaymentContainerView_contactlessInterfaceSessionDidReceiveActivityTimeout___block_invoke;
  block[3] = &unk_1E8010970;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __83__PKPassPaymentContainerView_contactlessInterfaceSessionDidReceiveActivityTimeout___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) paymentPass];
  v3 = [v2 isTransitPass];

  if (v3)
  {
    [*(a1 + 32) _cancelTerminalResponseTimeout];
    [*(a1 + 32) _applyTerminalTransactionSubstateWithSuccess:1 reset:0];
    v4 = *(*(a1 + 32) + 496);

    [v4 updateDebugLabel:@"activity timemout" isErrorState:0];
  }
}

- (void)contactlessInterfaceSessionDidReceiveTerminalError:(id)a3
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __81__PKPassPaymentContainerView_contactlessInterfaceSessionDidReceiveTerminalError___block_invoke;
  block[3] = &unk_1E8010970;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __81__PKPassPaymentContainerView_contactlessInterfaceSessionDidReceiveTerminalError___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) paymentPass];
  v3 = [v2 isIdentityPass];

  if (v3)
  {
    v4 = [MEMORY[0x1E69DC668] sharedApplication];
    [v4 pkui_consumeSharedRootAuthenticationContext];

    [*(a1 + 32) _cancelTerminalResponseTimeout];
    v5 = *(a1 + 32);
    v6 = PKLocalizedIdentityString(&cfstr_PresentmentRea.isa);
    [v5 _applyTerminalTransactionSubstateWithSuccess:0 reset:0 errorOverride:v6];

    v7 = *(*(a1 + 32) + 496);

    [v7 updateDebugLabel:@"reader error" isErrorState:0];
  }
}

- (void)contactlessInterfaceSession:(id)a3 didFinishTransactionWithContext:(id)a4
{
  v5 = a4;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __90__PKPassPaymentContainerView_contactlessInterfaceSession_didFinishTransactionWithContext___block_invoke;
  v7[3] = &unk_1E8010A10;
  v7[4] = self;
  v8 = v5;
  v6 = v5;
  dispatch_async(MEMORY[0x1E69E96A0], v7);
}

void __90__PKPassPaymentContainerView_contactlessInterfaceSession_didFinishTransactionWithContext___block_invoke(uint64_t a1)
{
  v44 = *MEMORY[0x1E69E9840];
  v2 = (a1 + 32);
  v3 = (a1 + 40);
  [*(*(a1 + 32) + 496) updateDebugLabel:@"did finish" isErrorState:{objc_msgSend(*(a1 + 40), "success") ^ 1}];
  v4 = [MEMORY[0x1E69DC668] sharedApplication];
  [v4 pkui_consumeSharedRootAuthenticationContext];

  [*v2 _cancelTerminalResponseTimeout];
  objc_initWeak(&location, *v2);
  if (*v3)
  {
    v5 = [*v3 success];
  }

  else
  {
    v5 = 0;
  }

  v34 = [*(a1 + 32) paymentPass];
  v6 = [*(a1 + 40) transitHistory];
  v33 = [*(a1 + 32) style];
  v7 = [*(a1 + 32) pkui_viewControllerFromResponderChain];
  if ([v34 isTransitPass] && !PKExpressEducationHasDismissedMessage())
  {
    v8 = *(*(a1 + 32) + 480);
    v9 = [v34 uniqueID];
    v10 = [v8 isExpressModeEnabledForPassUniqueIdentifier:v9];

    if (v10)
    {
      PKIncrementPreArmTransactionOnExpressPassCount();
      v11 = PKGetPreArmTransactionOnExpressPassCount();
      v12 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        v43 = v11;
        _os_log_impl(&dword_1BD026000, v12, OS_LOG_TYPE_DEFAULT, "Pre-arm transaction on express enabled transit pass: %ld", buf, 0xCu);
      }

      if (v11 >= *MEMORY[0x1E69BBAF0])
      {
        PKExpressEducationSetHasDismissedMessage();
        PKExpressEducationSetHasSeenMessage();
      }
    }
  }

  if ([v34 hasAssociatedPeerPaymentAccount])
  {
    MEMORY[0x1BFB41980](*MEMORY[0x1E69BA168], 0);
  }

  if (v6)
  {
    v13 = *(*(a1 + 32) + 480);
    v14 = [*(a1 + 40) date];
    v15 = [*(a1 + 40) paymentApplication];
    v16 = [*(a1 + 40) paymentPass];
    v17 = [v16 uniqueID];
    v18 = [*(a1 + 40) expressState];
    [v13 processTransitTransactionEventWithHistory:v6 transactionDate:v14 forPaymentApplication:v15 withPassUniqueIdentifier:v17 expressTransactionState:v18];
  }

  v20 = *(a1 + 32);
  v19 = *(a1 + 40);
  v35[0] = MEMORY[0x1E69E9820];
  v35[1] = 3221225472;
  v35[2] = __90__PKPassPaymentContainerView_contactlessInterfaceSession_didFinishTransactionWithContext___block_invoke_179;
  v35[3] = &unk_1E80215B8;
  v35[4] = v20;
  v36 = v19;
  objc_copyWeak(v39, &location);
  v21 = v6;
  v37 = v21;
  v40 = v5;
  v22 = v7;
  v38 = v22;
  v39[1] = v33;
  [v20 _processPaymentTransactionForContext:v36 withCompletion:v35];
  v23 = *(*(a1 + 32) + 480);
  v24 = [*(a1 + 40) paymentPass];
  v25 = [v24 uniqueID];
  v26 = [*(a1 + 40) paymentApplication];
  v27 = [v26 applicationIdentifier];
  [v23 recordPaymentApplicationUsageForPassUniqueIdentifier:v25 paymentApplicationIdentifier:v27];

  v28 = *(*(a1 + 32) + 480);
  v29 = [*(a1 + 40) paymentPass];
  v30 = [v29 uniqueID];
  v31 = [*(a1 + 40) paymentApplication];
  v32 = [v31 applicationIdentifier];
  [v28 recordPassTransactionActivitySummaryForPassUniqueIdentifier:v30 paymentApplicationIdentifier:v32 presentmentType:2];

  objc_destroyWeak(v39);
  objc_destroyWeak(&location);
}

void __90__PKPassPaymentContainerView_contactlessInterfaceSession_didFinishTransactionWithContext___block_invoke_179(uint64_t a1, char a2)
{
  v4 = (a1 + 32);
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __90__PKPassPaymentContainerView_contactlessInterfaceSession_didFinishTransactionWithContext___block_invoke_2;
  v11[3] = &unk_1E8021590;
  objc_copyWeak(v14, (a1 + 64));
  v7 = *(a1 + 40);
  v8 = *(a1 + 48);
  v15 = *(a1 + 80);
  v16 = a2;
  *&v9 = *(a1 + 56);
  *(&v9 + 1) = *v4;
  *&v10 = v7;
  *(&v10 + 1) = v8;
  v12 = v10;
  v13 = v9;
  v14[1] = *(a1 + 72);
  [v5 _processValueAddedServiceTransactionsForContext:v6 withCompletion:v11];

  objc_destroyWeak(v14);
}

void __90__PKPassPaymentContainerView_contactlessInterfaceSession_didFinishTransactionWithContext___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __90__PKPassPaymentContainerView_contactlessInterfaceSession_didFinishTransactionWithContext___block_invoke_3;
  aBlock[3] = &unk_1E8021568;
  objc_copyWeak(&v34, (a1 + 64));
  v31 = *(a1 + 32);
  v32 = *(a1 + 40);
  v35 = *(a1 + 80);
  v36 = a2;
  v37 = *(a1 + 81);
  v33 = *(a1 + 48);
  v6 = _Block_copy(aBlock);
  v7 = v6;
  v8 = *(a1 + 56);
  if (*(v8 + 1128))
  {
    goto LABEL_2;
  }

  v11 = *(a1 + 72);
  if (v11 < 2)
  {
    goto LABEL_8;
  }

  if (v11 == 4)
  {
LABEL_2:
    WeakRetained = objc_loadWeakRetained((v8 + 1064));
    v10 = WeakRetained;
    if (WeakRetained)
    {
      [WeakRetained dataReleaseCompletedWithError:0];
      objc_storeWeak((*(a1 + 56) + 1064), 0);
    }

    v7[2](v7, 0);
    goto LABEL_34;
  }

  if (v11 == 3)
  {
LABEL_8:
    if (*(a1 + 80) == 1)
    {
      v12 = objc_alloc(MEMORY[0x1E69B92D0]);
      v13 = [v12 initWithIdentifier:*MEMORY[0x1E69BC540] bundleIdentifier:*MEMORY[0x1E69BC3D8] context:*MEMORY[0x1E69BC538]];
      [v13 donateSignalWithCompletion:&__block_literal_global_183_0];
    }

    v14 = [*(a1 + 32) valueAddedServiceTransactions];
    v10 = v14;
    if (a2)
    {
      if (*(*(a1 + 56) + 656) && [v5 count])
      {
        v15 = *(a1 + 56);
        if (*(v15 + 880))
        {
          v16 = 0;
        }

        else
        {
          v16 = [*(v15 + 656) pass];
          if (v16 && [v5 containsObject:v16])
          {
            [*(*(a1 + 56) + 656) setStyle:1];
            v7[2](v7, 1);
LABEL_33:

            goto LABEL_34;
          }
        }

        v20 = [v10 firstObject];
        v21 = [v20 terminalMode];

        v22 = *(a1 + 56);
        if (*(v22 + 656) && v21 == 3)
        {
          *(v22 + 881) = 1;
          v23 = *(*(a1 + 56) + 656);
          v26[0] = MEMORY[0x1E69E9820];
          v26[1] = 3221225472;
          v26[2] = __90__PKPassPaymentContainerView_contactlessInterfaceSession_didFinishTransactionWithContext___block_invoke_184;
          v26[3] = &unk_1E801BE40;
          objc_copyWeak(&v29, (a1 + 64));
          v27 = v5;
          v28 = v7;
          [v23 setStyle:1 animated:0 completion:v26];

          objc_destroyWeak(&v29);
        }

        else
        {
          v24 = [v5 firstObject];
          v25 = [v24 uniqueID];
          [v22 _presentPassWithUniqueIdentifier:v25 additionalPassUniqueIdentifiers:0 payState:8];

          v7[2](v7, 0);
        }

        goto LABEL_33;
      }

LABEL_19:
      v7[2](v7, a2);
LABEL_34:

      goto LABEL_35;
    }

    if ((*(a1 + 80) & 1) == 0)
    {
      v17 = [v14 firstObject];
      if ([v17 terminalMode] == 2)
      {
        v18 = [*(a1 + 56) _shouldShowTerminalIsNotRequestingPaymentError];

        if (v18)
        {
          [*(a1 + 56) _showTerminalIsNotRequestingPaymentError];
          goto LABEL_19;
        }
      }

      else
      {
      }
    }

    v19 = [*(a1 + 32) expressState];
    v16 = v19;
    if (v19 && ([v19 isExpress] & 1) == 0)
    {
      [*(*(a1 + 56) + 480) handleStandaloneTransaction:v16];
    }

    else
    {
      v7[2](v7, 1);
    }

    goto LABEL_33;
  }

  (*(v6 + 2))(v6, 1);
LABEL_35:

  objc_destroyWeak(&v34);
}

void __90__PKPassPaymentContainerView_contactlessInterfaceSession_didFinishTransactionWithContext___block_invoke_3(uint64_t a1, int a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    v11 = WeakRetained;
    if (a2)
    {
      v5 = [*(a1 + 32) transaction];

      v6 = [*(a1 + 32) valueAddedServiceTransactions];

      if (*(a1 + 40))
      {
        v7 = 1;
      }

      else
      {
        v7 = v6 == 0;
      }

      v8 = !v7;
      if (v5 || (v8 & 1) != 0)
      {
        if (v5 || !v6 || *(a1 + 65) == 1)
        {
          if (*(a1 + 66))
          {
            v9 = 1;
          }

          else
          {
            v9 = *(a1 + 65);
          }

          [v11 _applyTerminalTransactionSubstateWithSuccess:v9 & 1 reset:1];
        }
      }

      else
      {
        [v11 _applyTerminalTransactionSubstateWithSuccess:*(a1 + 64) reset:0];
        [v11 _finishHoldingTerminalTransactionSubstateAfterDelay:1.0];
      }
    }

    v10 = [MEMORY[0x1E696AD88] defaultCenter];
    [v10 postNotificationName:*MEMORY[0x1E69BB7F0] object:*(a1 + 48)];

    WeakRetained = v11;
  }
}

void __90__PKPassPaymentContainerView_contactlessInterfaceSession_didFinishTransactionWithContext___block_invoke_4(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = PKLogFacilityTypeGetObject();
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
  if (v2)
  {
    if (v4)
    {
      v8 = 138412290;
      v9 = v2;
      v5 = "TPSDiscoverabilitySignal - Failed to donate discoverability signal - contactless transaction: %@";
      v6 = v3;
      v7 = 12;
LABEL_6:
      _os_log_impl(&dword_1BD026000, v6, OS_LOG_TYPE_DEFAULT, v5, &v8, v7);
    }
  }

  else if (v4)
  {
    LOWORD(v8) = 0;
    v5 = "TPSDiscoverabilitySignal - Successfully donated discoverability signal - contactless transaction";
    v6 = v3;
    v7 = 2;
    goto LABEL_6;
  }
}

void __90__PKPassPaymentContainerView_contactlessInterfaceSession_didFinishTransactionWithContext___block_invoke_184(id *a1)
{
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = *(WeakRetained + 82);
    v5 = [a1[4] firstObject];
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __90__PKPassPaymentContainerView_contactlessInterfaceSession_didFinishTransactionWithContext___block_invoke_2_185;
    v6[3] = &unk_1E80110B8;
    objc_copyWeak(&v8, a1 + 6);
    v7 = a1[5];
    [v4 setPass:v5 animated:0 completion:v6];

    objc_destroyWeak(&v8);
  }
}

void __90__PKPassPaymentContainerView_contactlessInterfaceSession_didFinishTransactionWithContext___block_invoke_2_185(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    *(WeakRetained + 881) = 0;
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __90__PKPassPaymentContainerView_contactlessInterfaceSession_didFinishTransactionWithContext___block_invoke_3_186;
    v4[3] = &unk_1E8010AD8;
    v5 = *(a1 + 32);
    [v3 _setVASInfoViewHidden:0 animated:1 completion:v4];
  }
}

- (void)contactlessInterfaceSession:(id)a3 didEndPersistentCardEmulationWithContexts:(id)a4
{
  v6 = a3;
  v7 = a4;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __100__PKPassPaymentContainerView_contactlessInterfaceSession_didEndPersistentCardEmulationWithContexts___block_invoke;
  block[3] = &unk_1E8010A88;
  block[4] = self;
  v11 = v6;
  v12 = v7;
  v8 = v7;
  v9 = v6;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __100__PKPassPaymentContainerView_contactlessInterfaceSession_didEndPersistentCardEmulationWithContexts___block_invoke(id *a1)
{
  v44 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E69DC668] sharedApplication];
  [v2 pkui_consumeSharedRootAuthenticationContext];

  [a1[4] _cancelTerminalResponseTimeout];
  [*(a1[4] + 62) setPersistentEmulationHint:{objc_msgSend(a1[5], "persistentCardEmulationQueued")}];
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v3 = a1[6];
  v34 = [v3 countByEnumeratingWithState:&v37 objects:v43 count:16];
  if (v34)
  {
    v4 = *v38;
    v5 = v36;
    v33 = a1;
    v31 = *v38;
    v32 = v3;
    do
    {
      for (i = 0; i != v34; ++i)
      {
        if (*v38 != v4)
        {
          objc_enumerationMutation(v3);
        }

        v7 = *(*(&v37 + 1) + 8 * i);
        v8 = [v7 paymentApplication];
        v9 = [v7 transitHistory];
        if (v9 && ([v7 transaction], v10 = objc_claimAutoreleasedReturnValue(), v10, !v10))
        {
          v12 = *(a1[4] + 60);
          v13 = [v7 date];
          v14 = [v7 paymentPass];
          [v14 uniqueID];
          v16 = v15 = v5;
          v17 = [v7 expressState];
          [v12 processTransitTransactionEventWithHistory:v9 transactionDate:v13 forPaymentApplication:v8 withPassUniqueIdentifier:v16 expressTransactionState:v17];

          v5 = v15;
          v18 = *(v33[4] + 60);
          v19 = [v7 paymentPass];
          v20 = [v19 uniqueID];
          v21 = [v8 applicationIdentifier];
          [v18 recordPaymentApplicationUsageForPassUniqueIdentifier:v20 paymentApplicationIdentifier:v21];

          a1 = v33;
          v22 = *(v33[4] + 60);
          v4 = v31;
          v23 = [v7 paymentPass];
          v24 = [v23 uniqueID];
          v25 = [v8 applicationIdentifier];
          v26 = v22;
          v3 = v32;
          [v26 recordPassTransactionActivitySummaryForPassUniqueIdentifier:v24 paymentApplicationIdentifier:v25 presentmentType:0];
        }

        else
        {
          v11 = a1[4];
          v35[0] = MEMORY[0x1E69E9820];
          v35[1] = 3221225472;
          v36[0] = __100__PKPassPaymentContainerView_contactlessInterfaceSession_didEndPersistentCardEmulationWithContexts___block_invoke_2;
          v36[1] = &unk_1E8012FD0;
          v36[2] = v11;
          v36[3] = v7;
          [v11 _processPaymentTransactionForContext:v7 withCompletion:v35];
        }
      }

      v34 = [v3 countByEnumeratingWithState:&v37 objects:v43 count:16];
    }

    while (v34);
  }

  v27 = [MEMORY[0x1E696AD88] defaultCenter];
  v28 = *MEMORY[0x1E69BC068];
  v29 = a1[4];
  v41 = *MEMORY[0x1E69BC070];
  v42 = MEMORY[0x1E695E110];
  v30 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v42 forKeys:&v41 count:1];
  [v27 postNotificationName:v28 object:v29 userInfo:v30];
}

- (void)contactlessInterfaceSessionDidFailDeferredAuthorization:(id)a3
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __86__PKPassPaymentContainerView_contactlessInterfaceSessionDidFailDeferredAuthorization___block_invoke;
  block[3] = &unk_1E8010970;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

uint64_t __86__PKPassPaymentContainerView_contactlessInterfaceSessionDidFailDeferredAuthorization___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E69DC668] sharedApplication];
  [v2 pkui_consumeSharedRootAuthenticationContext];

  [*(*(a1 + 32) + 496) updateDebugLabel:@"did fail deferred authorization" isErrorState:1];
  v3 = *(a1 + 32);

  return [v3 _applyTerminalTransactionSubstateWithSuccess:0 reset:1];
}

- (void)contactlessInterfaceSessionDidFailTransaction:(id)a3 forPaymentApplication:(id)a4 paymentPass:(id)a5
{
  v6 = a5;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __110__PKPassPaymentContainerView_contactlessInterfaceSessionDidFailTransaction_forPaymentApplication_paymentPass___block_invoke;
  v8[3] = &unk_1E8010A10;
  v8[4] = self;
  v9 = v6;
  v7 = v6;
  dispatch_async(MEMORY[0x1E69E96A0], v8);
}

void __110__PKPassPaymentContainerView_contactlessInterfaceSessionDidFailTransaction_forPaymentApplication_paymentPass___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E69DC668] sharedApplication];
  [v2 pkui_consumeSharedRootAuthenticationContext];

  [*(a1 + 32) _cancelTerminalResponseTimeout];
  [*(*(a1 + 32) + 496) updateDebugLabel:@"did fail transaction" isErrorState:1];
  v3 = [*(a1 + 32) style];
  v4 = *(a1 + 32);
  if (v3 == 4 || *(v4 + 1128) == 1)
  {
    WeakRetained = objc_loadWeakRetained((v4 + 1064));
    if (WeakRetained && ([WeakRetained presentingViewController], v5 = objc_claimAutoreleasedReturnValue(), v5, v5))
    {
      v6 = [MEMORY[0x1E696ABC0] errorWithDomain:@"PassKitUI.PKDataReleaseError" code:3 userInfo:0];
      [WeakRetained dataReleaseCompletedWithError:v6];

      objc_storeWeak((*(a1 + 32) + 1064), 0);
    }

    else
    {
      v7 = *(a1 + 32);
      v8 = PKLocalizedIdentityString(&cfstr_PresentmentTra.isa);
      [v7 _applyPayState:9 withTextOverride:v8];

      [*(a1 + 32) _resetToIdleStateAfterDelay:2.0];
    }
  }

  else
  {
    v9 = [v4 pass];
    WeakRetained = [v9 uniqueID];

    v10 = [*(a1 + 40) uniqueID];
    v11 = [WeakRetained isEqualToString:v10];

    if (v11)
    {
      [*(a1 + 32) _applyTerminalTransactionSubstateWithSuccess:0 reset:1];
    }
  }
}

- (id)_textOverrideForFatalError
{
  v2 = [(PKPassFooterContentView *)self paymentPass];
  v3 = [v2 cardType];

  if (v3 == 4)
  {
    PKLocalizedIdentityString(&cfstr_PresentmentTra.isa);
  }

  else
  {
    PKLocalizedPaymentString(&cfstr_PaymentErrorTr.isa);
  }
  v4 = ;

  return v4;
}

- (void)contactlessInterfaceSessionDidFail:(id)a3 forPaymentApplications:(id)a4 paymentPass:(id)a5 valueAddedServicePasses:(id)a6
{
  v7 = a5;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __124__PKPassPaymentContainerView_contactlessInterfaceSessionDidFail_forPaymentApplications_paymentPass_valueAddedServicePasses___block_invoke;
  v9[3] = &unk_1E8010A10;
  v9[4] = self;
  v10 = v7;
  v8 = v7;
  dispatch_async(MEMORY[0x1E69E96A0], v9);
}

void __124__PKPassPaymentContainerView_contactlessInterfaceSessionDidFail_forPaymentApplications_paymentPass_valueAddedServicePasses___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E69DC668] sharedApplication];
  [v2 pkui_consumeSharedRootAuthenticationContext];

  [*(a1 + 32) _cancelTerminalResponseTimeout];
  [*(*(a1 + 32) + 496) updateDebugLabel:@"did fail transaction" isErrorState:1];
  v3 = [*(a1 + 32) pass];
  v8 = [v3 uniqueID];

  v4 = [*(a1 + 40) uniqueID];
  v5 = [v8 isEqualToString:v4];

  if (v5)
  {
    v6 = *(a1 + 32);
    v7 = [v6 _textOverrideForFatalError];
    [v6 _applyPayState:9 withTextOverride:v7];
  }
}

- (void)contactlessInterfaceSessionDidTerminate:(id)a3 withErrorCode:(unint64_t)a4
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __84__PKPassPaymentContainerView_contactlessInterfaceSessionDidTerminate_withErrorCode___block_invoke;
  v4[3] = &unk_1E80119C8;
  v4[4] = self;
  v4[5] = a4;
  dispatch_async(MEMORY[0x1E69E96A0], v4);
}

void __84__PKPassPaymentContainerView_contactlessInterfaceSessionDidTerminate_withErrorCode___block_invoke(uint64_t a1)
{
  v2 = 1;
  *(*(a1 + 32) + 1080) = 1;
  [*(*(a1 + 32) + 496) updateDebugLabel:@"session did terminate" isErrorState:1];
  [*(a1 + 32) _cancelTerminalResponseTimeout];
  [*(a1 + 32) _endPaymentAuthorizationWithWillUpdateState:1];
  [*(a1 + 32) _endContactlessPaymentSession];
  *(*(a1 + 32) + 1072) = 0;
  v3 = *(a1 + 40);
  if (v3 == 3)
  {
    v4 = @"PRESENTMENT_NO_BLUETOOTH";
    goto LABEL_8;
  }

  if (v3 == 2)
  {
    if (PKUseWLAN())
    {
      v4 = @"PRESENTMENT_NO_WLAN_OR_BLUETOOTH";
    }

    else
    {
      v4 = @"PRESENTMENT_NO_WIFI_OR_BLUETOOTH";
    }

    v2 = 2;
LABEL_8:
    v5 = PKLocalizedIdentityString(&v4->isa);
    *(*(a1 + 32) + 1072) = v2;
    if (v5)
    {
      goto LABEL_10;
    }
  }

  v5 = [*(a1 + 32) _textOverrideForFatalError];
LABEL_10:
  v6 = v5;
  [*(a1 + 32) _applyPayState:9 withTextOverride:v5];
}

- (void)contactlessInterfaceSessionDidEnterField:(id)a3 withProperties:(id)a4
{
  v6 = a3;
  v7 = a4;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __86__PKPassPaymentContainerView_contactlessInterfaceSessionDidEnterField_withProperties___block_invoke;
  block[3] = &unk_1E8010A88;
  block[4] = self;
  v11 = v6;
  v12 = v7;
  v8 = v7;
  v9 = v6;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __86__PKPassPaymentContainerView_contactlessInterfaceSessionDidEnterField_withProperties___block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = CFAbsoluteTimeGetCurrent() - *(*(a1 + 32) + 888);
  v3 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 134217984;
    v5 = v2;
    _os_log_impl(&dword_1BD026000, v3, OS_LOG_TYPE_DEFAULT, "Last field exit was %g seconds ago.", &v4, 0xCu);
  }

  if (v2 >= 1.25)
  {
    [*(a1 + 32) _handleContactlessInterfaceSessionDidEnterField:*(a1 + 40) withProperties:*(a1 + 48)];
  }
}

- (void)_handleContactlessInterfaceSessionDidEnterField:(id)a3 withProperties:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_initWeak(location, self);
  v8 = [(PKPassFooterContentView *)self pass];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __93__PKPassPaymentContainerView__handleContactlessInterfaceSessionDidEnterField_withProperties___block_invoke;
  aBlock[3] = &unk_1E80215E0;
  v9 = v8;
  v27 = v9;
  v10 = v7;
  v28 = v10;
  objc_copyWeak(&v29, location);
  v11 = _Block_copy(aBlock);
  v12 = [v10 technology];
  v13 = [v10 valueAddedServiceMode];
  v14 = [v10 terminalType];
  if ([v10 secondaryPropertiesRequired])
  {
    if (([v10 secondaryPropertiesAcquired] & ((v12 & 8) != 0)) == 0)
    {
      goto LABEL_7;
    }
  }

  else if ((v12 & 8) == 0)
  {
    goto LABEL_7;
  }

  v15 = [v10 merchantIdentifiers];

  if (v15 || v14 == 3)
  {
    passLibrary = self->_passLibrary;
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __93__PKPassPaymentContainerView__handleContactlessInterfaceSessionDidEnterField_withProperties___block_invoke_4;
    v20[3] = &unk_1E8021630;
    v21 = v10;
    v22 = self;
    v25[1] = v14;
    v23 = v9;
    v24 = v11;
    v25[2] = v13;
    objc_copyWeak(v25, location);
    [(PKPassLibrary *)passLibrary getMetadataForFieldWithProperties:v21 withHandler:v20];
    objc_destroyWeak(v25);

    goto LABEL_9;
  }

LABEL_7:
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __93__PKPassPaymentContainerView__handleContactlessInterfaceSessionDidEnterField_withProperties___block_invoke_6;
  block[3] = &unk_1E80111D0;
  objc_copyWeak(&v19, location);
  v18 = v11;
  dispatch_async(MEMORY[0x1E69E96A0], block);

  objc_destroyWeak(&v19);
LABEL_9:

  objc_destroyWeak(&v29);
  objc_destroyWeak(location);
}

void __93__PKPassPaymentContainerView__handleContactlessInterfaceSessionDidEnterField_withProperties___block_invoke(uint64_t a1, void *a2)
{
  v68 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (!v3)
  {
    __break(1u);
  }

  v4 = v3;
  if ([*(a1 + 32) style] != 8)
  {
    v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
    [v5 setObject:*MEMORY[0x1E69BA740] forKeyedSubscript:*MEMORY[0x1E69BA680]];
    [v5 setObject:*MEMORY[0x1E69BAC58] forKeyedSubscript:*MEMORY[0x1E69BABE8]];
    v6 = *(a1 + 32);
    v7 = v5;
    v8 = v6;
    v9 = v8;
    if (!v7 || !v8)
    {
LABEL_73:

      v50 = *(a1 + 40);
      v51 = v7;
      v52 = [v50 terminalType];
      if (v52 <= 5)
      {
        v53 = MEMORY[0x1E69BB0C0];
        if (((1 << v52) & 0x2D) == 0)
        {
          v54 = *MEMORY[0x1E69BB0C0];
          if (v52 != 1)
          {
            [v51 setObject:@"identity" forKeyedSubscript:*MEMORY[0x1E69BB0C0]];
          }

          [v51 setObject:@"payment" forKeyedSubscript:v54];
        }

        [v51 setObject:*MEMORY[0x1E69BABC0] forKeyedSubscript:*v53];
      }

      v55 = MEMORY[0x1E69B8540];
      v66 = *MEMORY[0x1E69BB718];
      v56 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v66 count:1];
      [v55 subjects:v56 sendEvent:v51];

      goto LABEL_80;
    }

    v10 = [v8 passType];
    v11 = MEMORY[0x1E69BB3A8];
    if ((v10 + 1) >= 3)
    {
      v12 = *MEMORY[0x1E69BB3A8];
    }

    else
    {
      v12 = off_1E8021FA8[v10 + 1];
    }

    [v7 setObject:v12 forKeyedSubscript:*MEMORY[0x1E69BACA8]];

    v13 = [v9 style];
    v14 = [v9 secureElementPass];
    v15 = [v14 isIdentityPass];

    if (v15)
    {
      v16 = @"identity";
    }

    else if (v13 < 0xE && ((0x27FFu >> v13) & 1) != 0)
    {
      v16 = off_1E8021FC0[v13];
    }

    else
    {
      v16 = *v11;
    }

    [v7 setObject:v16 forKeyedSubscript:*MEMORY[0x1E69BACA0]];

    v17 = [v9 nfcPayload];
    v18 = PKAnalyticsReportSwitchToggleResultValue();
    [v7 setObject:v18 forKeyedSubscript:*MEMORY[0x1E69BAC68]];

    v19 = v9;
    if ([v19 passType] == 1)
    {
      v20 = [v19 secureElementPass];
      v21 = [v20 cardType];
      if (v21 <= 4)
      {
        v18 = **(&unk_1E8022030 + v21);
      }
    }

    else
    {
      v18 = @"other";
    }

    [v7 setObject:v18 forKeyedSubscript:*MEMORY[0x1E69BAC90]];
    v22 = [v19 secureElementPass];
    if ([v22 isIdentityPass])
    {
      v23 = [v22 identityType];
      if (v23 <= 2)
      {
        if (v23 == 1)
        {
          v24 = MEMORY[0x1E69BA648];
          goto LABEL_40;
        }

        if (v23 == 2)
        {
          v24 = MEMORY[0x1E69BB2C8];
          goto LABEL_40;
        }
      }

      else
      {
        switch(v23)
        {
          case 3:
            goto LABEL_24;
          case 4:
            v24 = MEMORY[0x1E69BA8E0];
            goto LABEL_40;
          case 5:
LABEL_24:
            v24 = MEMORY[0x1E69BACB0];
LABEL_40:
            v29 = *v24;
            goto LABEL_41;
        }
      }

LABEL_33:
      v29 = *v11;
LABEL_41:
      v28 = v29;
      goto LABEL_54;
    }

    if (![v22 isAccessPass])
    {
      goto LABEL_33;
    }

    v25 = [v22 accessType];
    v26 = [v22 accessReportingType];
    v27 = v26;
    if (v25 <= 2)
    {
      switch(v25)
      {
        case 0:
          v30 = @"general";
          if (v26)
          {
            v30 = v26;
          }

          goto LABEL_49;
        case 1:
          v28 = @"hospitality";
          goto LABEL_53;
        case 2:
          v28 = @"corporate";
LABEL_53:

LABEL_54:
          [v7 setObject:v28 forKeyedSubscript:*MEMORY[0x1E69BAC88]];

          v31 = [v19 secureElementPass];
          v32 = [v31 devicePaymentApplications];
          [v32 count];

          v33 = PKAnalyticsReportSwitchToggleResultValue();

          [v7 setObject:v33 forKeyedSubscript:*MEMORY[0x1E69BA4E0]];
          v34 = [v19 secureElementPass];
          v35 = *v11;
          v36 = [v34 organizationName];
          if ([v36 length])
          {
            v37 = [v34 cardType];
            if (v37 <= 4 && ((1 << v37) & 0x16) != 0)
            {
              v38 = v36;

              v35 = v38;
            }
          }

          [v7 setObject:v35 forKeyedSubscript:*MEMORY[0x1E69BAA28]];
          v39 = [v19 secureElementPass];
          v40 = v39;
          if (v39)
          {
            v59 = v9;
            [v39 devicePaymentApplications];
            v62 = 0u;
            v63 = 0u;
            v64 = 0u;
            v41 = v65 = 0u;
            v42 = [v41 countByEnumeratingWithState:&v62 objects:v67 count:16];
            if (v42)
            {
              v43 = v42;
              v44 = 0;
              v45 = *v63;
              while (2)
              {
                for (i = 0; i != v43; ++i)
                {
                  if (*v63 != v45)
                  {
                    objc_enumerationMutation(v41);
                  }

                  v47 = *(*(&v62 + 1) + 8 * i);
                  if (v44 && v44 != [*(*(&v62 + 1) + 8 * i) paymentType])
                  {

                    v48 = @"multiple";
                    goto LABEL_71;
                  }

                  v44 = [v47 paymentType];
                }

                v43 = [v41 countByEnumeratingWithState:&v62 objects:v67 count:16];
                if (v43)
                {
                  continue;
                }

                break;
              }
            }

            v48 = PKPaymentMethodTypeToString();
LABEL_71:

            [v7 setObject:v48 forKeyedSubscript:*MEMORY[0x1E69BAD40]];
            v49 = [v40 issuerCountryCode];
            [v7 setObject:v49 forKeyedSubscript:*MEMORY[0x1E69BAC78]];

            v9 = v59;
          }

          goto LABEL_73;
      }
    }

    else
    {
      if (v25 <= 4)
      {
        if (v25 == 3)
        {
          v28 = @"singlefamily";
        }

        else
        {
          v28 = @"cars";
        }

        goto LABEL_53;
      }

      if (v25 == 5)
      {
        v28 = @"multifamily";
        goto LABEL_53;
      }

      if (v25 == 6)
      {
        v28 = @"urbanmobility";
        goto LABEL_53;
      }
    }

    v30 = *v11;
LABEL_49:
    v28 = v30;
    goto LABEL_53;
  }

LABEL_80:
  v57 = [*(v4 + 62) glyph];
  [v57 setFadeOnRecognized:1];

  v58 = *(v4 + 65);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __93__PKPassPaymentContainerView__handleContactlessInterfaceSessionDidEnterField_withProperties___block_invoke_2;
  block[3] = &unk_1E8010998;
  objc_copyWeak(&v61, (a1 + 48));
  dispatch_async(v58, block);
  objc_destroyWeak(&v61);
}

void __93__PKPassPaymentContainerView__handleContactlessInterfaceSessionDidEnterField_withProperties___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __93__PKPassPaymentContainerView__handleContactlessInterfaceSessionDidEnterField_withProperties___block_invoke_3;
    block[3] = &unk_1E8010998;
    objc_copyWeak(&v4, (a1 + 32));
    dispatch_async(MEMORY[0x1E69E96A0], block);
    objc_destroyWeak(&v4);
  }
}

void __93__PKPassPaymentContainerView__handleContactlessInterfaceSessionDidEnterField_withProperties___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v8 = WeakRetained;
    v3 = [WeakRetained[63] state];
    v2 = v8;
    v4 = 24;
    if (*(v8 + 776))
    {
      v4 = 23;
    }

    if (v3 != 2)
    {
      v5 = *(v8 + OBJC_IVAR___PKPassPaymentContainerView__paymentOffersController[v4]);
      v6 = [v8 _recognizingBiometrics];
      v2 = v8;
      if ((v6 & 1) == 0 && v5 <= 6 && ((1 << v5) & 0x4E) != 0)
      {
        [v8 _applyPayState:v5];
        v2 = v8;
      }
    }
  }
}

void __93__PKPassPaymentContainerView__handleContactlessInterfaceSessionDidEnterField_withProperties___block_invoke_4(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = v3;
  if (v3 && ![v3 shouldIgnoreField])
  {
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __93__PKPassPaymentContainerView__handleContactlessInterfaceSessionDidEnterField_withProperties___block_invoke_214;
    v11[3] = &unk_1E8021608;
    v11[4] = *(a1 + 40);
    v7 = v4;
    v8 = *(a1 + 72);
    v12 = v7;
    v16[1] = v8;
    v13 = *(a1 + 48);
    v9 = *(a1 + 56);
    v10 = *(a1 + 80);
    v15 = v9;
    v16[2] = v10;
    v14 = *(a1 + 32);
    objc_copyWeak(v16, (a1 + 64));
    dispatch_async(MEMORY[0x1E69E96A0], v11);
    objc_destroyWeak(v16);
  }

  else
  {
    v5 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 32);
      *buf = 138412290;
      v18 = v6;
      _os_log_impl(&dword_1BD026000, v5, OS_LOG_TYPE_DEFAULT, "Ignoring entered field: %@", buf, 0xCu);
    }
  }
}

void __93__PKPassPaymentContainerView__handleContactlessInterfaceSessionDidEnterField_withProperties___block_invoke_214(uint64_t a1)
{
  v78 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) pkui_viewControllerFromResponderChain];
  v3 = [*(a1 + 40) associatedPassIdentifiers];
  v4 = v3;
  if (*(a1 + 80) == 3)
  {
    v69 = [v3 firstObject];
    v5 = [*(*(a1 + 32) + 640) passWithUniqueID:v69];
    if (([v5 isEqualToPassIncludingMetadata:*(a1 + 48)] & 1) != 0 || ((v6 = *(*(a1 + 32) + 720), v7 = v6 > 6, v8 = (1 << v6) & 0x4E, !v7) ? (v9 = v8 == 0) : (v9 = 1), v9 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0)))
    {
      (*(*(a1 + 64) + 16))();
LABEL_36:

      goto LABEL_37;
    }

    if ([v5 style] == 8)
    {
LABEL_104:
      [*(a1 + 32) _presentPassWithUniqueIdentifier:v69 additionalPassUniqueIdentifiers:0];
      goto LABEL_36;
    }

    v10 = objc_alloc_init(MEMORY[0x1E695DF90]);
    [v10 setObject:*MEMORY[0x1E69BA740] forKeyedSubscript:*MEMORY[0x1E69BA680]];
    [v10 setObject:*MEMORY[0x1E69BAC58] forKeyedSubscript:*MEMORY[0x1E69BABE8]];
    v68 = v10;
    v11 = v5;
    v12 = v11;
    if (!v11 || !v68)
    {
LABEL_103:

      v64 = MEMORY[0x1E69B8540];
      v76 = *MEMORY[0x1E69BB718];
      v65 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v76 count:1];
      [v64 subjects:v65 sendEvent:v68];

      goto LABEL_104;
    }

    v13 = [v11 passType];
    v14 = MEMORY[0x1E69BB3A8];
    if ((v13 + 1) >= 3)
    {
      v15 = *MEMORY[0x1E69BB3A8];
    }

    else
    {
      v15 = off_1E8021FA8[v13 + 1];
    }

    [v68 setObject:v15 forKeyedSubscript:*MEMORY[0x1E69BACA8]];

    v29 = [v12 style];
    v67 = v12;
    v30 = [v12 secureElementPass];
    v31 = [v30 isIdentityPass];

    if (v31)
    {
      v32 = @"identity";
    }

    else if (v29 < 0xE && ((0x27FFu >> v29) & 1) != 0)
    {
      v32 = off_1E8021FC0[v29];
    }

    else
    {
      v32 = *v14;
    }

    [v68 setObject:v32 forKeyedSubscript:*MEMORY[0x1E69BACA0]];

    v33 = [v12 nfcPayload];
    v34 = PKAnalyticsReportSwitchToggleResultValue();
    [v68 setObject:v34 forKeyedSubscript:*MEMORY[0x1E69BAC68]];

    v35 = v12;
    if ([v35 passType] == 1)
    {
      v36 = [v35 secureElementPass];
      v37 = [v36 cardType];
      if (v37 <= 4)
      {
        v33 = **(&unk_1E8022030 + v37);
      }
    }

    else
    {
      v33 = @"other";
    }

    [v68 setObject:v33 forKeyedSubscript:*MEMORY[0x1E69BAC90]];
    v38 = [v35 secureElementPass];
    if ([v38 isIdentityPass])
    {
      v39 = [v38 identityType];
      if (v39 <= 2)
      {
        if (v39 == 1)
        {
          v40 = MEMORY[0x1E69BA648];
          goto LABEL_71;
        }

        if (v39 == 2)
        {
          v40 = MEMORY[0x1E69BB2C8];
          goto LABEL_71;
        }
      }

      else
      {
        switch(v39)
        {
          case 3:
            goto LABEL_55;
          case 4:
            v40 = MEMORY[0x1E69BA8E0];
            goto LABEL_71;
          case 5:
LABEL_55:
            v40 = MEMORY[0x1E69BACB0];
LABEL_71:
            v45 = *v40;
            goto LABEL_72;
        }
      }

LABEL_64:
      v45 = *v14;
LABEL_72:
      v44 = v45;
      goto LABEL_85;
    }

    if (![v38 isAccessPass])
    {
      goto LABEL_64;
    }

    v41 = [v38 accessType];
    v42 = [v38 accessReportingType];
    v43 = v42;
    if (v41 <= 2)
    {
      switch(v41)
      {
        case 0:
          v46 = @"general";
          if (v42)
          {
            v46 = v42;
          }

          goto LABEL_80;
        case 1:
          v44 = @"hospitality";
          goto LABEL_84;
        case 2:
          v44 = @"corporate";
LABEL_84:

LABEL_85:
          [v68 setObject:v44 forKeyedSubscript:*MEMORY[0x1E69BAC88]];

          v47 = [v35 secureElementPass];
          v48 = [v47 devicePaymentApplications];
          [v48 count];

          v49 = PKAnalyticsReportSwitchToggleResultValue();

          [v68 setObject:v49 forKeyedSubscript:*MEMORY[0x1E69BA4E0]];
          v50 = [v35 secureElementPass];
          v51 = *v14;
          v52 = [v50 organizationName];
          if ([v52 length])
          {
            v53 = [v50 cardType];
            if (v53 <= 4 && ((1 << v53) & 0x16) != 0)
            {
              v54 = v52;

              v51 = v54;
            }
          }

          [v68 setObject:v51 forKeyedSubscript:*MEMORY[0x1E69BAA28]];
          v55 = [v35 secureElementPass];
          v66 = v55;
          if (v55)
          {
            [v55 devicePaymentApplications];
            v72 = 0u;
            v73 = 0u;
            v74 = 0u;
            v56 = v75 = 0u;
            v57 = 0;
            v58 = [v56 countByEnumeratingWithState:&v72 objects:v77 count:16];
            if (v58)
            {
              v59 = *v73;
              while (2)
              {
                for (i = 0; i != v58; ++i)
                {
                  if (*v73 != v59)
                  {
                    objc_enumerationMutation(v56);
                  }

                  v61 = *(*(&v72 + 1) + 8 * i);
                  if (v57 && v57 != [*(*(&v72 + 1) + 8 * i) paymentType])
                  {

                    v62 = @"multiple";
                    goto LABEL_101;
                  }

                  v57 = [v61 paymentType];
                }

                v58 = [v56 countByEnumeratingWithState:&v72 objects:v77 count:16];
                if (v58)
                {
                  continue;
                }

                break;
              }
            }

            v62 = PKPaymentMethodTypeToString();
LABEL_101:

            [v68 setObject:v62 forKeyedSubscript:*MEMORY[0x1E69BAD40]];
            v63 = [v66 issuerCountryCode];
            [v68 setObject:v63 forKeyedSubscript:*MEMORY[0x1E69BAC78]];

            v55 = v66;
          }

          v12 = v67;
          goto LABEL_103;
      }
    }

    else
    {
      if (v41 <= 4)
      {
        if (v41 == 3)
        {
          v44 = @"singlefamily";
        }

        else
        {
          v44 = @"cars";
        }

        goto LABEL_84;
      }

      if (v41 == 5)
      {
        v44 = @"multifamily";
        goto LABEL_84;
      }

      if (v41 == 6)
      {
        v44 = @"urbanmobility";
        goto LABEL_84;
      }
    }

    v46 = *v14;
LABEL_80:
    v44 = v46;
    goto LABEL_84;
  }

  v16 = *(a1 + 88);
  if (v16 != 4 && v16 != 2)
  {
    goto LABEL_31;
  }

  if (![v3 count])
  {
    v16 = *(a1 + 88);
LABEL_31:
    if (v16 == 3 && [v4 count])
    {
      v28 = *(*(a1 + 32) + 640);
      v70[0] = MEMORY[0x1E69E9820];
      v70[1] = 3221225472;
      v70[2] = __93__PKPassPaymentContainerView__handleContactlessInterfaceSessionDidEnterField_withProperties___block_invoke_2_216;
      v70[3] = &unk_1E8011158;
      objc_copyWeak(&v71, (a1 + 72));
      [v28 getPassesWithUniqueIdentifiers:v4 handler:v70];
      objc_destroyWeak(&v71);
    }

    else
    {
      (*(*(a1 + 64) + 16))();
    }

    goto LABEL_37;
  }

  v18 = [v4 firstObject];
  v19 = [*(*(a1 + 32) + 640) passWithUniqueID:v18];
  if ([*(a1 + 48) hasValidNFCPayload] && objc_msgSend(*(a1 + 48), "isValid"))
  {
    v20 = [*(a1 + 48) passTypeIdentifier];
    v21 = [v20 dataUsingEncoding:4];
    v22 = [v21 SHA256Hash];

    v23 = [*(a1 + 56) merchantIdentifiers];
    LODWORD(v21) = [v23 containsObject:v22];

    if (v21)
    {
      v24 = [*(a1 + 48) uniqueID];

      v25 = *(a1 + 48);
      v19 = v25;
      v18 = v24;
    }
  }

  if (([v19 isEqualToPassIncludingMetadata:*(a1 + 48)] & 1) != 0 || (objc_msgSend(v19, "hasStoredValue") & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    (*(*(a1 + 64) + 16))();
  }

  else
  {
    v26 = *(a1 + 32);
    v27 = [v4 subarrayWithRange:{1, objc_msgSend(v4, "count") - 1}];
    [v26 _presentPassWithUniqueIdentifier:v18 additionalPassUniqueIdentifiers:v27];
  }

LABEL_37:
}

void __93__PKPassPaymentContainerView__handleContactlessInterfaceSessionDidEnterField_withProperties___block_invoke_2_216(uint64_t a1, void *a2)
{
  v3 = a2;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __93__PKPassPaymentContainerView__handleContactlessInterfaceSessionDidEnterField_withProperties___block_invoke_3_217;
  v5[3] = &unk_1E80110E0;
  objc_copyWeak(&v7, (a1 + 32));
  v6 = v3;
  v4 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], v5);

  objc_destroyWeak(&v7);
}

void __93__PKPassPaymentContainerView__handleContactlessInterfaceSessionDidEnterField_withProperties___block_invoke_3_217(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v4 = *(a1 + 32);
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __93__PKPassPaymentContainerView__handleContactlessInterfaceSessionDidEnterField_withProperties___block_invoke_4_218;
    v10[3] = &unk_1E8013158;
    v5 = v3;
    v11 = v5;
    [v4 enumerateObjectsUsingBlock:v10];
    [WeakRetained _setValueAddedServicePasses:v5];
    v6 = WeakRetained[82];
    v7 = [v5 firstObject];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __93__PKPassPaymentContainerView__handleContactlessInterfaceSessionDidEnterField_withProperties___block_invoke_5;
    v8[3] = &unk_1E8011180;
    objc_copyWeak(&v9, (a1 + 40));
    [v6 setPass:v7 animated:0 completion:v8];

    objc_destroyWeak(&v9);
  }
}

void __93__PKPassPaymentContainerView__handleContactlessInterfaceSessionDidEnterField_withProperties___block_invoke_4_218(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 hasValidNFCPayload] && objc_msgSend(v3, "isValid") && (objc_msgSend(v3, "hasStoredValue") & 1) == 0)
  {
    [*(a1 + 32) addObject:v3];
  }
}

void __93__PKPassPaymentContainerView__handleContactlessInterfaceSessionDidEnterField_withProperties___block_invoke_5(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    if ([WeakRetained _hasValueAddedServicePasses])
    {
      [v2 _setVASInfoViewHidden:0 animated:1 completion:0];
    }

    WeakRetained = v2;
    if (v2[864] == 1)
    {
      [v2 _beginPaymentAuthorization];
      WeakRetained = v2;
    }
  }
}

void __93__PKPassPaymentContainerView__handleContactlessInterfaceSessionDidEnterField_withProperties___block_invoke_6(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    (*(*(a1 + 32) + 16))();
    WeakRetained = v3;
  }
}

- (void)contactlessInterfaceSessionDidExitField:(id)a3
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __70__PKPassPaymentContainerView_contactlessInterfaceSessionDidExitField___block_invoke;
  block[3] = &unk_1E8010970;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __70__PKPassPaymentContainerView_contactlessInterfaceSessionDidExitField___block_invoke(uint64_t a1)
{
  v57 = *MEMORY[0x1E69E9840];
  *(*(a1 + 32) + 888) = CFAbsoluteTimeGetCurrent();
  v2 = [*(a1 + 32) pass];
  if ([v2 style] != 8)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
    [v3 setObject:*MEMORY[0x1E69BA748] forKeyedSubscript:*MEMORY[0x1E69BA680]];
    [v3 setObject:*MEMORY[0x1E69BAC58] forKeyedSubscript:*MEMORY[0x1E69BABE8]];
    v4 = v3;
    v5 = v2;
    v6 = v5;
    if (!v5 || !v4)
    {
LABEL_72:

      v47 = MEMORY[0x1E69B8540];
      v55 = *MEMORY[0x1E69BB718];
      v48 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v55 count:1];
      [v47 subjects:v48 sendEvent:v4];

      goto LABEL_73;
    }

    v7 = [v5 passType];
    v8 = MEMORY[0x1E69BB3A8];
    if ((v7 + 1) >= 3)
    {
      v9 = *MEMORY[0x1E69BB3A8];
    }

    else
    {
      v9 = off_1E8021FA8[v7 + 1];
    }

    [v4 setObject:v9 forKeyedSubscript:*MEMORY[0x1E69BACA8]];

    v10 = [v6 style];
    v11 = [v6 secureElementPass];
    v12 = [v11 isIdentityPass];

    if (v12)
    {
      v13 = @"identity";
    }

    else if (v10 < 0xE && ((0x27FFu >> v10) & 1) != 0)
    {
      v13 = off_1E8021FC0[v10];
    }

    else
    {
      v13 = *v8;
    }

    [v4 setObject:v13 forKeyedSubscript:*MEMORY[0x1E69BACA0]];

    v14 = [v6 nfcPayload];
    v15 = PKAnalyticsReportSwitchToggleResultValue();
    [v4 setObject:v15 forKeyedSubscript:*MEMORY[0x1E69BAC68]];

    v16 = v6;
    if ([v16 passType] == 1)
    {
      v17 = [v16 secureElementPass];
      v18 = [v17 cardType];
      if (v18 <= 4)
      {
        v15 = **(&unk_1E8022030 + v18);
      }
    }

    else
    {
      v15 = @"other";
    }

    [v4 setObject:v15 forKeyedSubscript:*MEMORY[0x1E69BAC90]];
    v19 = [v16 secureElementPass];
    if ([v19 isIdentityPass])
    {
      v20 = [v19 identityType];
      if (v20 <= 2)
      {
        if (v20 == 1)
        {
          v21 = MEMORY[0x1E69BA648];
          goto LABEL_39;
        }

        if (v20 == 2)
        {
          v21 = MEMORY[0x1E69BB2C8];
          goto LABEL_39;
        }
      }

      else
      {
        switch(v20)
        {
          case 3:
            goto LABEL_23;
          case 4:
            v21 = MEMORY[0x1E69BA8E0];
            goto LABEL_39;
          case 5:
LABEL_23:
            v21 = MEMORY[0x1E69BACB0];
LABEL_39:
            v26 = *v21;
            goto LABEL_40;
        }
      }

LABEL_32:
      v26 = *v8;
LABEL_40:
      v25 = v26;
      goto LABEL_53;
    }

    if (![v19 isAccessPass])
    {
      goto LABEL_32;
    }

    v22 = [v19 accessType];
    v23 = [v19 accessReportingType];
    v24 = v23;
    if (v22 <= 2)
    {
      switch(v22)
      {
        case 0:
          v27 = @"general";
          if (v23)
          {
            v27 = v23;
          }

          goto LABEL_48;
        case 1:
          v25 = @"hospitality";
          goto LABEL_52;
        case 2:
          v25 = @"corporate";
LABEL_52:

LABEL_53:
          [v4 setObject:v25 forKeyedSubscript:*MEMORY[0x1E69BAC88]];

          v28 = [v16 secureElementPass];
          v29 = [v28 devicePaymentApplications];
          [v29 count];

          v30 = PKAnalyticsReportSwitchToggleResultValue();

          [v4 setObject:v30 forKeyedSubscript:*MEMORY[0x1E69BA4E0]];
          v31 = [v16 secureElementPass];
          v32 = *v8;
          v33 = [v31 organizationName];
          if ([v33 length])
          {
            v34 = [v31 cardType];
            if (v34 <= 4 && ((1 << v34) & 0x16) != 0)
            {
              v35 = v33;

              v32 = v35;
            }
          }

          [v4 setObject:v32 forKeyedSubscript:*MEMORY[0x1E69BAA28]];
          v36 = [v16 secureElementPass];
          v37 = v36;
          if (v36)
          {
            v50 = v6;
            [v36 devicePaymentApplications];
            v51 = 0u;
            v52 = 0u;
            v53 = 0u;
            v38 = v54 = 0u;
            v39 = [v38 countByEnumeratingWithState:&v51 objects:v56 count:16];
            if (v39)
            {
              v40 = v39;
              v41 = 0;
              v42 = *v52;
              while (2)
              {
                for (i = 0; i != v40; ++i)
                {
                  if (*v52 != v42)
                  {
                    objc_enumerationMutation(v38);
                  }

                  v44 = *(*(&v51 + 1) + 8 * i);
                  if (v41 && v41 != [*(*(&v51 + 1) + 8 * i) paymentType])
                  {

                    v45 = @"multiple";
                    goto LABEL_70;
                  }

                  v41 = [v44 paymentType];
                }

                v40 = [v38 countByEnumeratingWithState:&v51 objects:v56 count:16];
                if (v40)
                {
                  continue;
                }

                break;
              }
            }

            v45 = PKPaymentMethodTypeToString();
LABEL_70:

            [v4 setObject:v45 forKeyedSubscript:*MEMORY[0x1E69BAD40]];
            v46 = [v37 issuerCountryCode];
            [v4 setObject:v46 forKeyedSubscript:*MEMORY[0x1E69BAC78]];

            v6 = v50;
          }

          goto LABEL_72;
      }
    }

    else
    {
      if (v22 <= 4)
      {
        if (v22 == 3)
        {
          v25 = @"singlefamily";
        }

        else
        {
          v25 = @"cars";
        }

        goto LABEL_52;
      }

      if (v22 == 5)
      {
        v25 = @"multifamily";
        goto LABEL_52;
      }

      if (v22 == 6)
      {
        v25 = @"urbanmobility";
        goto LABEL_52;
      }
    }

    v27 = *v8;
LABEL_48:
    v25 = v27;
    goto LABEL_52;
  }

LABEL_73:
  v49 = [*(*(a1 + 32) + 496) glyph];
  [v49 setFadeOnRecognized:0];

  [*(a1 + 32) _cancelTerminalResponseTimeout];
  [*(a1 + 32) _promoteToAuthorizedStateIfPossible];
}

- (void)contactlessInterfaceSessionDidSelectPayment:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __74__PKPassPaymentContainerView_contactlessInterfaceSessionDidSelectPayment___block_invoke;
  v6[3] = &unk_1E8010A10;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  dispatch_async(MEMORY[0x1E69E96A0], v6);
}

uint64_t __74__PKPassPaymentContainerView_contactlessInterfaceSessionDidSelectPayment___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) style] == 2)
  {
    v2 = *(a1 + 32);

    return [v2 _showTerminalIsRequestingPaymentError];
  }

  else
  {
    result = [*(a1 + 40) state];
    if (result == 2)
    {
      v4 = *(a1 + 32);

      return [v4 _beginTerminalResponseTimeout];
    }
  }

  return result;
}

- (void)contactlessInterfaceSession:(id)a3 didTransitionFromState:(unint64_t)a4 toState:(unint64_t)a5
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __89__PKPassPaymentContainerView_contactlessInterfaceSession_didTransitionFromState_toState___block_invoke;
  block[3] = &unk_1E8012188;
  block[4] = self;
  block[5] = a5;
  block[6] = a4;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

uint64_t __89__PKPassPaymentContainerView_contactlessInterfaceSession_didTransitionFromState_toState___block_invoke(uint64_t result)
{
  v1 = result;
  if (*(result + 40) == 2)
  {
    result = [*(result + 32) _postDidAuthorizeNotification];
  }

  if (*(v1 + 48) == 2)
  {
    v2 = *(v1 + 32);

    return [v2 _postDidDeauthorizeNotification];
  }

  return result;
}

- (void)contactlessInterfaceSession:(id)a3 didReceiveExpressTransactionState:(id)a4
{
  v5 = a4;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __92__PKPassPaymentContainerView_contactlessInterfaceSession_didReceiveExpressTransactionState___block_invoke;
  v7[3] = &unk_1E8010A10;
  v7[4] = self;
  v8 = v5;
  v6 = v5;
  dispatch_async(MEMORY[0x1E69E96A0], v7);
}

uint64_t __92__PKPassPaymentContainerView_contactlessInterfaceSession_didReceiveExpressTransactionState___block_invoke(uint64_t a1)
{
  if ([*(*(a1 + 32) + 496) persistentEmulationHint])
  {
    [*(*(a1 + 32) + 496) setPersistentEmulationHint:0];
    v2 = *(*(a1 + 32) + 504);
    v3 = v2;
    if (v2)
    {
      v4 = *(*(a1 + 32) + 520);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __92__PKPassPaymentContainerView_contactlessInterfaceSession_didReceiveExpressTransactionState___block_invoke_2;
      block[3] = &unk_1E8010970;
      v11 = v2;
      dispatch_async(v4, block);
    }
  }

  [*(a1 + 32) _cancelTerminalResponseTimeout];
  [*(a1 + 32) _cancelAuthentication];
  v5 = [*(a1 + 40) status];
  result = [*(a1 + 40) isProcessing];
  if (result)
  {
    if ((v5 - 1) < 3)
    {
      v7 = v5 == 1;
      result = *(a1 + 32);
      v8 = 0;
      return [result _applyTerminalTransactionSubstateWithSuccess:v7 reset:v8];
    }

    if (!v5)
    {
      if ([*(a1 + 32) _shouldDisplayPrimaryView])
      {
        [*(a1 + 32) _updateContentPrimaryView];
      }

      if ([*(a1 + 32) _shouldDisplaySecondaryView])
      {
        [*(a1 + 32) _updateContentSecondaryView];
      }

      return [*(a1 + 32) _applyPaymentIndefiniteSuccessState];
    }
  }

  else
  {
    v9 = [*(a1 + 40) isIgnorable];
    result = *(a1 + 32);
    if (v9)
    {
      return [result _resetToIdleState];
    }

    if (*(result + 816) != 1)
    {
      v7 = v5 == 1;
      v8 = 1;
      return [result _applyTerminalTransactionSubstateWithSuccess:v7 reset:v8];
    }

    if (!*(result + 824))
    {
      return [result _finishHoldingTerminalTransactionSubstateAfterDelay:1.0];
    }
  }

  return result;
}

- (void)contactlessInterfaceSessionDidResume:(id)a3
{
  v4 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1BD026000, v4, OS_LOG_TYPE_DEFAULT, "Contactless interface session did resume", buf, 2u);
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __67__PKPassPaymentContainerView_contactlessInterfaceSessionDidResume___block_invoke;
  block[3] = &unk_1E8010970;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

- (void)contactlessInterfaceSession:(id)a3 didSuspendWithToken:(id)a4
{
  v5 = a4;
  v6 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1BD026000, v6, OS_LOG_TYPE_DEFAULT, "Contactless interface session did suspend", buf, 2u);
  }

  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __78__PKPassPaymentContainerView_contactlessInterfaceSession_didSuspendWithToken___block_invoke;
  v8[3] = &unk_1E8010A10;
  v8[4] = self;
  v9 = v5;
  v7 = v5;
  dispatch_async(MEMORY[0x1E69E96A0], v8);
}

void __78__PKPassPaymentContainerView_contactlessInterfaceSession_didSuspendWithToken___block_invoke(uint64_t a1)
{
  *(*(a1 + 32) + 512) = 1;
  if ([*(*(a1 + 32) + 1112) isEqual:*(a1 + 40)])
  {
    v2 = *(a1 + 32);
    v3 = *(v2 + 1112);
    *(v2 + 1112) = 0;
  }
}

- (void)payStateView:(id)a3 revealingCheckmark:(BOOL)a4
{
  v12 = a3;
  v5 = 24;
  if (self->_transitioning)
  {
    v5 = 23;
  }

  v6 = *(&self->super.super.super.super.isa + OBJC_IVAR___PKPassPaymentContainerView__paymentOffersController[v5]);
  v7 = [(PKPassPaymentContainerView *)self _isForegroundActive];
  if (v6 == 8 && v7)
  {
    kdebug_trace();
    v9 = [(PKPassFooterContentView *)self delegate];
    [v9 passFooterContentViewDidTransact:self success:1];

    if ([v12 accessPass])
    {
      v10 = 1163;
    }

    else
    {
      v10 = 1394;
    }

    AudioServicesPlaySystemSound(v10);
    v11 = [(PKPassFooterContentView *)self pass];
    [(PKPassPaymentContainerView *)self _reportTransactionAuthorizationStatus:0 forPass:v11];
  }
}

- (void)payStateViewRevealingFailure:(id)a3
{
  v4 = [(PKPassFooterContentView *)self delegate];
  [v4 passFooterContentViewDidTransact:self success:0];

  v5 = [(PKPassFooterContentView *)self pass];
  [(PKPassPaymentContainerView *)self _reportTransactionAuthorizationStatus:1 forPass:v5];
}

- (void)passStateProvider:(id)a3 didUpdatePassState:(id)a4
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __67__PKPassPaymentContainerView_passStateProvider_didUpdatePassState___block_invoke;
  block[3] = &unk_1E8010970;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

- (void)_beginPaymentAuthorization
{
  v21 = *MEMORY[0x1E69E9840];
  [(PKPassPaymentContainerView *)self _updateAuthenticatorState];
  payStateView = self->_payStateView;
  v4 = [(PKPassPaymentContainerView *)self _canAuthenticateWithBiometrics];
  v5 = self->_transitioning || self->_currentPayState != 0;
  [(PKPassPaymentPayStateView *)payStateView setBiometricsUnavailableHint:!v4 animated:v5];
  if ([(PKPassPaymentContainerView *)self _authenticationAllowed])
  {
    v6 = 24;
    if (self->_transitioning)
    {
      v6 = 23;
    }

    v7 = *(&self->super.super.super.super.isa + OBJC_IVAR___PKPassPaymentContainerView__paymentOffersController[v6]);
    pendingAutomaticAuthorization = self->_pendingAutomaticAuthorization;
    self->_pendingAutomaticAuthorization = 0;
    if (self->_requireExpress || pendingAutomaticAuthorization)
    {
      v11 = [(PKPassPaymentPayStateView *)self->_payStateView glyph];
      [v11 setFadeOnRecognized:1];
      if (self->_authorizedExternalizedContext)
      {
        if (v7 != 6)
        {
          [(PKPassPaymentContainerView *)self _applyPayState:6 withTextOverride:0 animated:0 completionHandler:0];
        }

        [(PKPassPaymentContainerView *)self _performAuthentication];
      }

      else
      {
        [(PKPassPaymentContainerView *)self _cancelAuthentication];
        if (v7 != 4)
        {
          [(PKPassPaymentContainerView *)self _applyPayState:4];
        }

        if (pendingAutomaticAuthorization)
        {
          v13 = [(PKAuthenticator *)self->_authenticator authenticationIdentifier];
          v18[0] = MEMORY[0x1E69E9820];
          v18[1] = 3221225472;
          v18[2] = __56__PKPassPaymentContainerView__beginPaymentAuthorization__block_invoke;
          v18[3] = &unk_1E8021658;
          v18[4] = self;
          v18[5] = v13;
          [(PKPassPaymentContainerView *)self _authorizeForTransactionWithAuthenticatorEvaluationResponse:0 authenticationIdentifier:v13 completion:v18];
        }

        else
        {
          v15 = PKLogFacilityTypeGetObject();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 134217984;
            v20 = self;
            _os_log_impl(&dword_1BD026000, v15, OS_LOG_TYPE_DEFAULT, "PKPassPaymentContainerView (%p): Skipping authorization.", buf, 0xCu);
          }

          [(PKPassPaymentContainerView *)self _promoteToAuthorizedStateIfPossible];
        }
      }
    }

    else
    {
      if ([(PKPassFooterContentView *)self style]== 4)
      {
        if (([(PKContactlessInterfaceSession *)self->_contactlessInterfaceSession isWaitingOnConfirmationForHandoff]& 1) != 0)
        {
          v9 = @"PRESENTMENT_FOOTER_CONNECTING";
          v10 = 7;
        }

        else
        {
          if (v7 == 4)
          {
LABEL_37:

            [(PKPassPaymentContainerView *)self _activateForPayment];
            return;
          }

          v9 = @"PRESENTMENT_NFC_INSTRUCTION";
          v10 = 4;
        }

        v14 = PKLocalizedIdentityString(&v9->isa);
        [(PKPassPaymentContainerView *)self _applyPayState:v10 withTextOverride:v14];

        goto LABEL_37;
      }

      if ([(PKPassPaymentContainerView *)self _canAuthenticateWithBiometrics]|| (PKUIOnlyDemoModeEnabled() & 1) != 0 || PKStoreDemoModeEnabled())
      {
        if (self->_userIntentRequired)
        {
          v12 = 2;
        }

        else
        {
          v12 = 1;
        }

        if (v12 != v7)
        {
          [(PKPassPaymentContainerView *)self _applyPayState:?];
        }

        [(PKPassPaymentContainerView *)self _performAuthentication];
      }

      else if ([(PKPassPaymentContainerView *)self _canAuthenticateWithPasscode])
      {
        if (self->_userIntentRequired)
        {
          v16 = 2;
        }

        else
        {
          v16 = 3;
        }

        if (v16 != v7)
        {
          [(PKPassPaymentContainerView *)self _applyPayState:?];
        }

        [(PKPassPaymentContainerView *)self _performAuthentication];
        if (self->_presentationWasForcedFromButton)
        {
          authenticator = self->_authenticator;

          [(PKAuthenticator *)authenticator fallbackToSystemPasscodeUI];
        }
      }

      else if (v7 != 10)
      {

        [(PKPassPaymentContainerView *)self _applyPayState:10];
      }
    }
  }

  else
  {

    [(PKPassPaymentContainerView *)self _endPaymentAuthorizationWithWillUpdateState:0];
  }
}

void __56__PKPassPaymentContainerView__beginPaymentAuthorization__block_invoke(uint64_t a1, int a2, void *a3)
{
  v12 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = PKLogFacilityTypeGetObject();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (a2)
  {
    if (v7)
    {
      v8 = *(a1 + 32);
      v10 = 134217984;
      v11 = v8;
      _os_log_impl(&dword_1BD026000, v6, OS_LOG_TYPE_DEFAULT, "PKPassPaymentContainerView (%p): Automatically authorized card.", &v10, 0xCu);
    }

    [*(a1 + 32) _didAuthorizePaymentApplicationWithAuthenticationIdentifier:*(a1 + 40)];
  }

  else
  {
    if (v7)
    {
      v9 = *(a1 + 32);
      v10 = 134217984;
      v11 = v9;
      _os_log_impl(&dword_1BD026000, v6, OS_LOG_TYPE_DEFAULT, "PKPassPaymentContainerView (%p): Failed to automatically authorize card, falling back to authentication.", &v10, 0xCu);
    }

    [*(a1 + 32) _beginPaymentAuthorization];
  }
}

- (void)_endPaymentAuthorizationWithWillUpdateState:(BOOL)a3
{
  v3 = a3;
  [(PKPassPaymentContainerView *)self _resetCardEmulationWithCompletion:0];
  if (v3)
  {
    [(PKPassPaymentContainerView *)self _cancelAuthentication];
  }

  else if (self->_authenticating)
  {
    [(PKAuthenticator *)self->_authenticator cancelEvaluation];
  }

  [(PKPassPaymentContainerView *)self _resetTransactionAuthenticationIfNecessary];
  [(PKPassPaymentContainerView *)self _dismissBarcodeViewControllerIfNecessaryWithCompletion:0];
  [(PKPassPaymentContainerView *)self _cancelBarcodeDisplayTimer];
  if (![(PKPassFooterContentView *)self isInvalidated])
  {

    [(PKPassPaymentContainerView *)self _updateBottomTextView];
  }
}

- (BOOL)_restartPaymentAuthorization
{
  v3 = 24;
  if (self->_transitioning)
  {
    v3 = 23;
  }

  v4 = *(&self->super.super.super.super.isa + OBJC_IVAR___PKPassPaymentContainerView__paymentOffersController[v3]);
  [(PKPassPaymentContainerView *)self _resetCardEmulationWithCompletion:0];
  if (!self->_authenticating)
  {
    return v4 == 5;
  }

  [(PKPassPaymentContainerView *)self _updateAuthenticatorState];
  if ([(PKPassPaymentContainerView *)self _authenticationAllowed]&& ([(PKPassPaymentContainerView *)self _canAuthenticateWithBiometrics]|| [(PKPassPaymentContainerView *)self _canAuthenticateWithPasscode]))
  {
    [(PKAuthenticator *)self->_authenticator restartEvaluation];
    return v4 == 5;
  }

  [(PKAuthenticator *)self->_authenticator cancelEvaluation];
  if ((v4 & 0xFFFFFFFFFFFFFFFELL) == 4)
  {
    return 1;
  }

  else
  {
    return (v4 < 7) & (0x4Eu >> v4);
  }
}

- (void)_beginBarcodeDisplayTimer
{
  v3 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, MEMORY[0x1E69E96A0]);
  barcodeDisplayTimer = self->_barcodeDisplayTimer;
  self->_barcodeDisplayTimer = v3;

  v5 = self->_barcodeDisplayTimer;
  v6 = dispatch_time(0, 60000000000);
  dispatch_source_set_timer(v5, v6, 0xFFFFFFFFFFFFFFFFLL, 0x3B9ACA00uLL);
  objc_initWeak(&location, self);
  v7 = self->_barcodeDisplayTimer;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __55__PKPassPaymentContainerView__beginBarcodeDisplayTimer__block_invoke;
  v8[3] = &unk_1E8010998;
  objc_copyWeak(&v9, &location);
  dispatch_source_set_event_handler(v7, v8);
  dispatch_resume(self->_barcodeDisplayTimer);
  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __55__PKPassPaymentContainerView__beginBarcodeDisplayTimer__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained _cancelBarcodeDisplayTimer];
    WeakRetained = v3;
    v2 = 24;
    if (v3[776])
    {
      v2 = 23;
    }

    if (*&v3[OBJC_IVAR___PKPassPaymentContainerView__paymentOffersController[v2]] == 5)
    {
      [v3 _endPaymentAuthorizationWithWillUpdateState:1];
      [v3 _resetToIdleState];
      WeakRetained = v3;
    }
  }
}

- (void)_cancelBarcodeDisplayTimer
{
  barcodeDisplayTimer = self->_barcodeDisplayTimer;
  if (barcodeDisplayTimer)
  {
    dispatch_source_cancel(barcodeDisplayTimer);
    v4 = self->_barcodeDisplayTimer;
    self->_barcodeDisplayTimer = 0;
  }
}

- (void)_performAuthentication
{
  v38[2] = *MEMORY[0x1E69E9840];
  if (!self->_authenticating)
  {
    if ((PKUIOnlyDemoModeEnabled() & 1) != 0 || PKStoreDemoModeEnabled())
    {
      v3 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf[0]) = 0;
        _os_log_impl(&dword_1BD026000, v3, OS_LOG_TYPE_DEFAULT, "PKPassPaymentContainerView: skipping authentication due to demo mode.", buf, 2u);
      }

LABEL_27:

      return;
    }

    self->_authenticating = 1;
    v4 = MEMORY[0x1E69B8540];
    v5 = *MEMORY[0x1E69BB718];
    v38[0] = *MEMORY[0x1E69BB6C0];
    v38[1] = v5;
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v38 count:2];
    v36 = *MEMORY[0x1E69BA680];
    v37 = *MEMORY[0x1E69BA7D8];
    v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v37 forKeys:&v36 count:1];
    [v4 subjects:v6 sendEvent:v7];

    Current = CFAbsoluteTimeGetCurrent();
    v3 = [(PKPassFooterContentView *)self pass];
    if ([v3 passType]== 1)
    {
      v9 = v3;
    }

    else
    {
      v9 = 0;
    }

    v10 = v9;
    if (v10)
    {
      v11 = [MEMORY[0x1E69B8750] _copyDevicePrimaryContactlessAccessControlForSecureElementPass:v10];
      v12 = 0;
    }

    else
    {
      v11 = 0;
      v12 = [objc_opt_class() userIntentPotentiallyRequiredForPass:v3 fieldDetect:self->_presentationWasForFieldDetect] ^ 1;
    }

    v13 = [objc_alloc(MEMORY[0x1E69BC748]) initWithPolicy:v12];
    v14 = v13;
    if (v11)
    {
      [v13 setAccessControlRef:v11];
      CFRelease(v11);
    }

    [v14 setInitialAuthenticatorState:self->_authenticatorState];
    [v14 setAssumeUserIntentAvailable:!self->_userIntentRequired];
    if (self->_authorizedExternalizedContext)
    {
      [v14 setExternalizedContext:?];
      [v14 setAssumeBiometricOrPasscodeAvailable:1];
      authorizedExternalizedContext = self->_authorizedExternalizedContext;
      self->_authorizedExternalizedContext = 0;
    }

    if (v10)
    {
      if (([v10 isAccessPass]& 1) != 0)
      {
        v16 = @"IN_APP_PAYMENT_PASSCODE_TITLE_CONFIRM";
LABEL_21:
        v17 = PKLocalizedPaymentString(&v16->isa);
        [v14 setPasscodeTitle:v17];

        goto LABEL_22;
      }

      if ([v10 isIdentityPass])
      {
        v16 = @"IN_APP_PAYMENT_PASSCODE_TITLE_PRESENT";
        goto LABEL_21;
      }
    }

LABEL_22:
    objc_initWeak(buf, self);
    authenticator = self->_authenticator;
    v32[0] = MEMORY[0x1E69E9820];
    v32[1] = 3221225472;
    v32[2] = __52__PKPassPaymentContainerView__performAuthentication__block_invoke;
    v32[3] = &unk_1E80216A8;
    objc_copyWeak(v34, buf);
    v34[1] = *&Current;
    v19 = v10;
    v33 = v19;
    [(PKAuthenticator *)authenticator evaluateRequest:v14 withCompletion:v32];
    if (self->_userIntentStyle == -1)
    {
      v20 = [(UIView *)self pkui_viewControllerFromResponderChain];
      if (v20)
      {
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 3221225472;
        aBlock[2] = __52__PKPassPaymentContainerView__performAuthentication__block_invoke_240;
        aBlock[3] = &unk_1E80110E0;
        objc_copyWeak(&v31, buf);
        v30 = v19;
        v21 = _Block_copy(aBlock);
        v24 = MEMORY[0x1E69E9820];
        v25 = 3221225472;
        v26 = __52__PKPassPaymentContainerView__performAuthentication__block_invoke_2;
        v27 = &unk_1E80122D8;
        objc_copyWeak(&v28, buf);
        v22 = _Block_copy(&v24);
        AccesibilityIntentUnavailable = PKAlertCreateAccesibilityIntentUnavailable(v21, v22);
        [v20 presentViewController:AccesibilityIntentUnavailable animated:1 completion:{0, v24, v25, v26, v27}];

        objc_destroyWeak(&v28);
        objc_destroyWeak(&v31);
      }
    }

    objc_destroyWeak(v34);
    objc_destroyWeak(buf);

    goto LABEL_27;
  }
}

void __52__PKPassPaymentContainerView__performAuthentication__block_invoke(uint64_t a1, void *a2)
{
  v54[2] = *MEMORY[0x1E69E9840];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (!WeakRetained)
  {
    goto LABEL_34;
  }

  Current = CFAbsoluteTimeGetCurrent();
  *(WeakRetained + 736) = 0;
  IsAvailable = PKUserIntentIsAvailable();
  v7 = 3;
  if (!IsAvailable)
  {
    v7 = 0;
  }

  *(WeakRetained + 94) = v7;
  v8 = [v3 result];
  if (v8 <= 3)
  {
    if (v8 <= 1)
    {
      if (v8)
      {
        if (v8 == 1)
        {
          v9 = MEMORY[0x1E69B8540];
          v10 = *MEMORY[0x1E69BB718];
          v51[0] = *MEMORY[0x1E69BB6C0];
          v51[1] = v10;
          v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v51 count:2];
          v49 = *MEMORY[0x1E69BA680];
          v50 = *MEMORY[0x1E69BA6B8];
          v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v50 forKeys:&v49 count:1];
          [v9 subjects:v11 sendEvent:v12];

          [WeakRetained _resetToIdleState];
        }
      }

      else
      {
        v20 = [*(WeakRetained + 61) authenticationIdentifier];
        v21 = PKLogFacilityTypeGetObject();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1BD026000, v21, OS_LOG_TYPE_DEFAULT, "Authentication Succeeded", buf, 2u);
        }

        v22 = MEMORY[0x1E69B8540];
        v23 = *MEMORY[0x1E69BB718];
        v54[0] = *MEMORY[0x1E69BB6C0];
        v54[1] = v23;
        v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:v54 count:2];
        v52 = *MEMORY[0x1E69BA680];
        v53 = *MEMORY[0x1E69BA6D0];
        v25 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v53 forKeys:&v52 count:1];
        [v22 subjects:v24 sendEvent:v25];

        v26 = [*(WeakRetained + 62) glyph];
        if (([v26 fadeOnRecognized] & 1) == 0)
        {
          [v26 setFadeOnRecognized:Current - *(a1 + 48) < 0.1];
        }

        if ([WeakRetained _authenticationAllowed] && objc_msgSend(v3, "biometricMatch"))
        {
          [MEMORY[0x1E69BC758] invokeSuccessFeedback];
        }

        if ([WeakRetained style] == 3)
        {
          [WeakRetained _applyPayState:4 withTextOverride:0 animated:0 completionHandler:0];
        }

        v36[0] = MEMORY[0x1E69E9820];
        v36[1] = 3221225472;
        v36[2] = __52__PKPassPaymentContainerView__performAuthentication__block_invoke_234;
        v36[3] = &unk_1E8021680;
        objc_copyWeak(v38, (a1 + 40));
        v38[1] = v20;
        v37 = *(a1 + 32);
        [WeakRetained _authorizeForTransactionWithAuthenticatorEvaluationResponse:v3 authenticationIdentifier:v20 completion:v36];

        objc_destroyWeak(v38);
      }

      goto LABEL_34;
    }

    if (v8 == 2)
    {
      v27 = MEMORY[0x1E69B8540];
      v28 = *MEMORY[0x1E69BB718];
      v48[0] = *MEMORY[0x1E69BB6C0];
      v48[1] = v28;
      v29 = [MEMORY[0x1E695DEC8] arrayWithObjects:v48 count:2];
      v46 = *MEMORY[0x1E69BA680];
      v47 = *MEMORY[0x1E69BA6B0];
      v30 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v47 forKeys:&v46 count:1];
      [v27 subjects:v29 sendEvent:v30];

      [WeakRetained _applyPayState:0];
      goto LABEL_34;
    }

LABEL_16:
    [WeakRetained _applyPayState:0];
    goto LABEL_34;
  }

  if ((v8 - 6) < 2)
  {
    goto LABEL_16;
  }

  if (v8 != 4)
  {
    if (v8 != 5)
    {
      goto LABEL_34;
    }

    v13 = MEMORY[0x1E69B8540];
    v14 = *MEMORY[0x1E69BB718];
    v41[0] = *MEMORY[0x1E69BB6C0];
    v41[1] = v14;
    v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v41 count:2];
    v39 = *MEMORY[0x1E69BA680];
    v40 = *MEMORY[0x1E69BA6C0];
    v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v40 forKeys:&v39 count:1];
    [v13 subjects:v15 sendEvent:v16];

    v17 = [WeakRetained secureElementPass];
    if ([v17 isIdentityPass])
    {
      v18 = *(WeakRetained + 760);

      if (v18)
      {
        v19 = PKLocalizedIdentityString(&cfstr_PresentmentFoo_6.isa);
LABEL_33:
        v35 = v19;
        [WeakRetained _applyPayState:9 withTextOverride:v19];
        [WeakRetained _resetToIdleStateAfterDelay:4.0];

        goto LABEL_34;
      }
    }

    else
    {
    }

    [*(a1 + 32) cardType];
    v19 = PKLocalizedSEPAuthorizationErrorString();
    goto LABEL_33;
  }

  v31 = [MEMORY[0x1E696AE30] processInfo];
  v32 = [v31 processName];
  v33 = [v31 processIdentifier];
  v34 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v43 = v32;
    v44 = 2048;
    v45 = v33;
    _os_log_impl(&dword_1BD026000, v34, OS_LOG_TYPE_DEFAULT, "Authentication by %@[%ld] preempted by another process.", buf, 0x16u);
  }

  [WeakRetained _applyPayState:0];
LABEL_34:
}

void __52__PKPassPaymentContainerView__performAuthentication__block_invoke_234(uint64_t a1, int a2, void *a3)
{
  v9 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v6 = WeakRetained;
  if (WeakRetained && [WeakRetained[61] authenticationIdentifier] == *(a1 + 48))
  {
    v7 = [v6[62] glyph];
    [v7 setFadeOnRecognized:{objc_msgSend(v6[63], "fieldPresent")}];

    if (a2)
    {
      [v6 _didAuthorizePaymentApplicationWithAuthenticationIdentifier:*(a1 + 48)];
    }

    else
    {
      v8 = v9;
      if (!v9)
      {
        [*(a1 + 32) cardType];
        v8 = PKLocalizedSEPAuthorizationErrorString();
      }

      v9 = v8;
      [v6 _applyPayState:9 withTextOverride:v8];
      [v6 _resetToIdleStateAfterDelay:4.0];
    }
  }
}

void __52__PKPassPaymentContainerView__performAuthentication__block_invoke_240(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained && WeakRetained[736] == 1)
  {
    v4 = WeakRetained;
    [*(a1 + 32) cardType];
    v3 = PKLocalizedSEPAuthorizationErrorString();
    [v4 _applyPayState:9 withTextOverride:v3];

    WeakRetained = v4;
  }
}

void __52__PKPassPaymentContainerView__performAuthentication__block_invoke_2(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _openURL:v5];
  }
}

- (void)_cancelAuthentication
{
  if (self->_authenticating)
  {
    self->_authenticating = 0;
    [(PKAuthenticator *)self->_authenticator cancelEvaluationWithOptions:1];
  }
}

- (void)_endContactlessPaymentSession
{
  if (self->_contactlessInterfaceSession)
  {
    [MEMORY[0x1E69B8758] attachDefaultBehaviorToSession:?];
    InvalidateSession_0(self->_contactlessInterfaceSession, self->_authorizationQueue);
    contactlessInterfaceSession = self->_contactlessInterfaceSession;
    self->_contactlessInterfaceSession = 0;

    self->_contactlessInterfaceSessionSuspended = 0;
    if ([(PKPassFooterContentView *)self style]== 4 || self->_didReceiveISO18013Signal)
    {
      WeakRetained = objc_loadWeakRetained(&self->_dataReleaseVC);
      if (WeakRetained)
      {
        v5 = [MEMORY[0x1E696ABC0] errorWithDomain:@"PassKitUI.PKDataReleaseError" code:4 userInfo:0];
        [WeakRetained dataReleaseCompletedWithError:v5];

        objc_storeWeak(&self->_dataReleaseVC, 0);
      }
    }

    [(PKPassPaymentContainerView *)self _clearSessionExchangeTasks];
  }

  self->_didReceiveISO18013Signal = 0;
}

- (void)_activateForPayment
{
  if ([(PKPassFooterContentView *)self style]!= 2)
  {

    [(PKPassPaymentContainerView *)self _activateForPaymentWithApplications:0];
  }
}

- (void)_activateForPaymentWithApplications:(id)a3
{
  v19[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([(PKPassFooterContentView *)self style]!= 2 && [(PKPassFooterContentView *)self style]!= 3)
  {
    v5 = [(PKPassFooterContentView *)self paymentPass];
    v6 = [v5 uniqueID];
    if ([v4 count])
    {
LABEL_4:
      [(PKPassPaymentContainerView *)self _activatePaymentApplications:v4 forPaymentPass:v5 withCompletion:0];

      goto LABEL_5;
    }

    v7 = [v5 contactlessActivationGroupingType];
    if (v7 <= 1)
    {
      if (v7)
      {
        if (v7 == 1)
        {
          v8 = [v5 devicePrimaryContactlessPaymentApplication];
          v9 = v8;
          if (v8)
          {
            v19[0] = v8;
            v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:1];

            v4 = v10;
          }

          else
          {

            v4 = MEMORY[0x1E695E0F0];
          }
        }
      }

      else
      {

        v4 = MEMORY[0x1E695E0F0];
      }

      goto LABEL_4;
    }

    if (v7 == 2)
    {
      v13 = [(PKPaymentService *)self->_paymentService defaultPaymentApplicationForPassUniqueIdentifier:v6];
      v11 = v13;
      if (!v13)
      {
        v15 = [v5 devicePrimaryContactlessPaymentApplication];
        if (v15)
        {
          v16 = v15;
          v17 = v15;
          v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v17 count:1];

          v4 = v16;
        }

        else
        {

          v4 = 0;
          v14 = MEMORY[0x1E695E0F0];
        }

        goto LABEL_18;
      }

      v18 = v13;
      v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v18 count:1];
    }

    else
    {
      if (v7 != 3)
      {
        goto LABEL_4;
      }

      v11 = [v5 deviceContactlessPaymentApplications];
      v12 = [v11 pk_arrayCopy];
    }

    v14 = v12;
LABEL_18:

    v4 = v14;
    goto LABEL_4;
  }

LABEL_5:
}

- (void)_addPasscodeButtonPressed:(id)a3
{
  if (PKPearlIsAvailable())
  {
    v4 = @"prefs:root=Pearl";
  }

  else
  {
    v4 = @"prefs:root=TOUCHID_PASSCODE&path=TOUCHID_PASSCODE";
  }

  v5 = [MEMORY[0x1E695DFF8] URLWithString:v4];
  [(PKPassPaymentContainerView *)self _openURL:v5];
}

- (void)_resetToIdleState
{
  v3 = 24;
  if (self->_transitioning)
  {
    v3 = 23;
  }

  v4 = *(&self->super.super.super.super.isa + OBJC_IVAR___PKPassPaymentContainerView__paymentOffersController[v3]);
  [(PKPassPaymentPayStateView *)self->_payStateView updateDebugLabel:0 isErrorState:0];
  if ([(PKPassPaymentContainerView *)self _isBackgrounded]|| !self->_isVisible || self->_waitingForPasses || self->_authenticationSuspensionCounter)
  {
    if (v4)
    {

      [(PKPassPaymentContainerView *)self _applyPayState:0];
    }
  }

  else
  {

    [(PKPassPaymentContainerView *)self _beginPaymentAuthorization];
  }
}

- (void)_resetToIdleStateAfterDelay:(double)a3
{
  objc_initWeak(&location, self);
  v4 = dispatch_time(0, (a3 * 1000000000.0));
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __58__PKPassPaymentContainerView__resetToIdleStateAfterDelay___block_invoke;
  v5[3] = &unk_1E8010998;
  objc_copyWeak(&v6, &location);
  dispatch_after(v4, MEMORY[0x1E69E96A0], v5);
  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

void __58__PKPassPaymentContainerView__resetToIdleStateAfterDelay___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained _resetToIdleState];
    WeakRetained = v2;
  }
}

- (void)_promoteToAuthorizedStateIfPossible
{
  objc_initWeak(&location, self);
  v3 = [(PKAuthenticator *)self->_authenticator authenticationIdentifier];
  authorizationQueue = self->_authorizationQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __65__PKPassPaymentContainerView__promoteToAuthorizedStateIfPossible__block_invoke;
  block[3] = &unk_1E801E5C8;
  objc_copyWeak(v6, &location);
  v6[1] = v3;
  dispatch_async(authorizationQueue, block);
  objc_destroyWeak(v6);
  objc_destroyWeak(&location);
}

void __65__PKPassPaymentContainerView__promoteToAuthorizedStateIfPossible__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __65__PKPassPaymentContainerView__promoteToAuthorizedStateIfPossible__block_invoke_2;
    v3[3] = &unk_1E801E5C8;
    objc_copyWeak(v4, (a1 + 32));
    v4[1] = *(a1 + 40);
    dispatch_async(MEMORY[0x1E69E96A0], v3);
    objc_destroyWeak(v4);
  }
}

void __65__PKPassPaymentContainerView__promoteToAuthorizedStateIfPossible__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v11 = WeakRetained;
    v4 = [WeakRetained[61] authenticationIdentifier];
    v3 = v11;
    if (v4 == *(a1 + 40))
    {
      v5 = [v11[63] state];
      v3 = v11;
      v6 = 24;
      if (*(v11 + 776))
      {
        v6 = 23;
      }

      v7 = *(v11 + OBJC_IVAR___PKPassPaymentContainerView__paymentOffersController[v6]);
      if (v5 == 2 || (v8 = PKUIOnlyDemoModeEnabled(), v3 = v11, (v8 & 1) != 0) || (v9 = PKStoreDemoModeEnabled(), v3 = v11, (v9 & 1) != 0) || v11[118] || *(v11 + 896) == 1)
      {
        if ((v7 - 1) < 4 || v7 == 6)
        {
          [v3 _applyPayState:5];
          v3 = v11;
        }
      }
    }
  }
}

- (void)_didAuthorizePaymentApplicationWithAuthenticationIdentifier:(unint64_t)a3
{
  if ([(PKPassPaymentContainerView *)self _authenticationAllowed]&& [(PKAuthenticator *)self->_authenticator authenticationIdentifier]== a3)
  {
    if ([(PKContactlessInterfaceSession *)self->_contactlessInterfaceSession fieldPresent])
    {
      v5 = dispatch_time(0, 500000000);
      v7[0] = MEMORY[0x1E69E9820];
      v7[1] = 3221225472;
      v7[2] = __90__PKPassPaymentContainerView__didAuthorizePaymentApplicationWithAuthenticationIdentifier___block_invoke;
      v7[3] = &unk_1E80119C8;
      v7[4] = self;
      v7[5] = a3;
      dispatch_after(v5, MEMORY[0x1E69E96A0], v7);
    }

    else
    {
      [(PKPassPaymentContainerView *)self _promoteToAuthorizedStateIfPossible];
    }

    v6 = [(PKPassFooterContentView *)self delegate];
    [v6 passFooterContentViewDidAuthenticate:self];
  }
}

uint64_t __90__PKPassPaymentContainerView__didAuthorizePaymentApplicationWithAuthenticationIdentifier___block_invoke(uint64_t a1)
{
  result = [*(*(a1 + 32) + 488) authenticationIdentifier];
  if (result == *(a1 + 40))
  {
    result = [*(a1 + 32) _authenticationAllowed];
    if (result)
    {
      v3 = *(a1 + 32);

      return [v3 _promoteToAuthorizedStateIfPossible];
    }
  }

  return result;
}

- (void)_updateCoachingInstruction
{
  v3 = 24;
  if (self->_transitioning)
  {
    v3 = 23;
  }

  v4 = *(&self->super.super.super.super.isa + OBJC_IVAR___PKPassPaymentContainerView__paymentOffersController[v3]);
  v5 = [(PKPassFooterContentView *)self coachingState];
  if ([(PKPassPaymentContainerView *)self _authenticationAllowed]&& self->_authenticating && v4 == 1)
  {
    v6 = !self->_transactionSubstate && v5 == 3;
    if (v6 && (self->_authenticatorState & 8) != 0)
    {

      [(PKPassPaymentContainerView *)self _applyPayState:3];
    }
  }
}

- (void)_openURL:(id)a3
{
  v10[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x1E69636B8]);
  [v5 setSensitive:1];
  v9 = *MEMORY[0x1E699F970];
  v10[0] = MEMORY[0x1E695E118];
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:&v9 count:1];
  [v5 setFrontBoardOptions:v6];

  if ((PKRunningInViewService() & 1) != 0 || PKRunningInLockScreenPlugin())
  {
    v7 = [(PKPassPaymentContainerView *)self window];
    v8 = v7;
    if (v7)
    {
      PKPostOpenApplicationNotification(v7, v4, v5);
    }
  }

  else
  {
    PKOpenApplication(v4, v5);
  }
}

- (void)_transactionAwardsViewTapped:(id)a3
{
  v21[2] = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E69B8540];
  v5 = *MEMORY[0x1E69BB6C0];
  v21[0] = *MEMORY[0x1E69BB718];
  v21[1] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:2];
  v7 = *MEMORY[0x1E69BA440];
  v19[0] = *MEMORY[0x1E69BA680];
  v19[1] = v7;
  v8 = *MEMORY[0x1E69BB340];
  v20[0] = *MEMORY[0x1E69BA6F0];
  v20[1] = v8;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:v19 count:2];
  [v4 subjects:v6 sendEvent:v9];

  v10 = [(PKPaymentTransaction *)self->_transactionForDisplayedBarcode awards];
  v11 = [v10 firstObject];

  if (v11)
  {
    v12 = [(PKPassFooterContentView *)self paymentPass];
    paymentService = self->_paymentService;
    v14 = [v12 uniqueID];
    v15 = [(PKPaymentService *)paymentService transactionsAppLaunchTokenForPassWithUniqueIdentifier:v14];

    v16 = [v11 identifier];
    if (v16)
    {
      v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"/offers/%@", v16];
    }

    else
    {
      v17 = @"/offers";
    }

    v18 = [PKPaymentNotificationAppURLHelper appURLForTransactionNotification:self->_transactionForDisplayedBarcode excludeTransactionIdentifier:0 pass:v12 pathSuffix:v17 appLaunchToken:v15];
    if (v18)
    {
      [(PKPassPaymentContainerView *)self _openURL:v18];
    }
  }
}

- (void)_postDidAuthorizeNotification
{
  v5 = [MEMORY[0x1E696AD88] defaultCenter];
  v3 = *MEMORY[0x1E69BB7E0];
  v4 = [(UIView *)self pkui_viewControllerFromResponderChain];
  [v5 postNotificationName:v3 object:v4];
}

- (void)_postDidDeauthorizeNotification
{
  v5 = [MEMORY[0x1E696AD88] defaultCenter];
  v3 = *MEMORY[0x1E69BB7E8];
  v4 = [(UIView *)self pkui_viewControllerFromResponderChain];
  [v5 postNotificationName:v3 object:v4];
}

- (void)_activatePaymentApplications:(id)a3 forPaymentPass:(id)a4 withCompletion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = self->_contactlessInterfaceSession;
  authorizationQueue = self->_authorizationQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __89__PKPassPaymentContainerView__activatePaymentApplications_forPaymentPass_withCompletion___block_invoke;
  block[3] = &unk_1E80135E0;
  v18 = v11;
  v19 = v8;
  v20 = v9;
  v21 = self;
  v22 = v10;
  v13 = v10;
  v14 = v9;
  v15 = v8;
  v16 = v11;
  dispatch_async(authorizationQueue, block);
}

void __89__PKPassPaymentContainerView__activatePaymentApplications_forPaymentPass_withCompletion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) activatePaymentApplications:*(a1 + 40) forPaymentPass:*(a1 + 48)];
  v3 = v2;
  if (v2 && [*(a1 + 56) style] == 4)
  {
    [*(a1 + 32) authorizeAndStartCardEmulationWithCredential:0 deferAuthorization:0 requiresConfirmationForHandoff:0 startHandoffIfPending:1];
  }

  v4 = *(a1 + 64);
  if (v4)
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __89__PKPassPaymentContainerView__activatePaymentApplications_forPaymentPass_withCompletion___block_invoke_2;
    v5[3] = &unk_1E8010FA8;
    v6 = v4;
    v7 = v3;
    dispatch_async(MEMORY[0x1E69E96A0], v5);
  }
}

- (void)_authorizeForTransactionWithAuthenticatorEvaluationResponse:(id)a3 authenticationIdentifier:(unint64_t)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a5;
  if ([(PKPassPaymentContainerView *)self _authenticationAllowed]&& [(PKAuthenticator *)self->_authenticator authenticationIdentifier]== a4)
  {
    v10 = [v8 credential];
    v11 = dispatch_group_create();
    v39 = 0;
    v40 = &v39;
    v41 = 0x2020000000;
    v42 = 0;
    v37[0] = 0;
    v37[1] = v37;
    v37[2] = 0x3032000000;
    v37[3] = __Block_byref_object_copy__53;
    v37[4] = __Block_byref_object_dispose__53;
    v38 = 0;
    objc_initWeak(&location, self);
    if (PKUIOnlyDemoModeEnabled() & 1) != 0 || (PKStoreDemoModeEnabled())
    {
      *(v40 + 24) = 1;
    }

    else if ([(PKPassFooterContentView *)self style]== 3)
    {
      dispatch_group_enter(v11);
      v31[0] = MEMORY[0x1E69E9820];
      v31[1] = 3221225472;
      v31[2] = __126__PKPassPaymentContainerView__authorizeForTransactionWithAuthenticatorEvaluationResponse_authenticationIdentifier_completion___block_invoke;
      v31[3] = &unk_1E80216D0;
      objc_copyWeak(v35, &location);
      v35[1] = a4;
      v32 = v11;
      v33 = &v39;
      v34 = v37;
      [(PKPassPaymentContainerView *)self _retrieveDecryptedBarcodeWithAuthorization:v10 shouldFetchBarcodeIfNecessary:1 completion:v31];

      objc_destroyWeak(v35);
    }

    else
    {
      v13 = self->_contactlessInterfaceSession;
      v14 = [(NSMutableArray *)self->_valueAddedPasses copy];
      authorizationQueue = self->_authorizationQueue;
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __126__PKPassPaymentContainerView__authorizeForTransactionWithAuthenticatorEvaluationResponse_authenticationIdentifier_completion___block_invoke_2;
      block[3] = &unk_1E80216F8;
      v27 = v13;
      v28 = v14;
      v29 = v10;
      v30 = &v39;
      v16 = v14;
      v17 = v13;
      dispatch_group_async(v11, authorizationQueue, block);
    }

    if ([(PKPassPaymentContainerView *)self _shouldDisplayPrimaryView])
    {
      [(PKPassPaymentContainerView *)self _updateContentPrimaryView];
    }

    if ([(PKPassPaymentContainerView *)self _shouldDisplaySecondaryView])
    {
      [(PKPassPaymentContainerView *)self _updateContentSecondaryView];
    }

    v12 = 24;
    if (self->_transitioning)
    {
      v12 = 23;
    }

    if (*(&self->super.super.super.super.isa + OBJC_IVAR___PKPassPaymentContainerView__paymentOffersController[v12]) - 1 <= 2 && !self->_transactionSubstate)
    {
      dispatch_group_enter(v11);
      v24[0] = MEMORY[0x1E69E9820];
      v24[1] = 3221225472;
      v24[2] = __126__PKPassPaymentContainerView__authorizeForTransactionWithAuthenticatorEvaluationResponse_authenticationIdentifier_completion___block_invoke_273;
      v24[3] = &unk_1E8011D28;
      v25 = v11;
      [(PKPassPaymentContainerView *)self _setGlyphState:8 animated:1 withCompletionHandler:v24];
    }

    if (v9)
    {
      v18[0] = MEMORY[0x1E69E9820];
      v18[1] = 3221225472;
      v18[2] = __126__PKPassPaymentContainerView__authorizeForTransactionWithAuthenticatorEvaluationResponse_authenticationIdentifier_completion___block_invoke_2_274;
      v18[3] = &unk_1E8021720;
      v20 = v9;
      v21 = &v39;
      v22 = v37;
      objc_copyWeak(&v23, &location);
      v19 = v8;
      dispatch_group_notify(v11, MEMORY[0x1E69E96A0], v18);

      objc_destroyWeak(&v23);
    }

    objc_destroyWeak(&location);
    _Block_object_dispose(v37, 8);

    _Block_object_dispose(&v39, 8);
  }

  else if (v9)
  {
    (*(v9 + 2))(v9, 0, 0);
  }
}

void __126__PKPassPaymentContainerView__authorizeForTransactionWithAuthenticatorEvaluationResponse_authenticationIdentifier_completion___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v39[2] = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = MEMORY[0x1E69B8540];
  v11 = *MEMORY[0x1E69BB718];
  v39[0] = *MEMORY[0x1E69BB6C0];
  v39[1] = v11;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v39 count:2];
  v13 = *MEMORY[0x1E69BA680];
  v38[0] = *MEMORY[0x1E69BA6D8];
  v14 = *MEMORY[0x1E69BA3E0];
  v37[0] = v13;
  v37[1] = v14;
  v15 = PKAnalyticsReportBarcodeCredentialRetrivalStatusFromError();
  v38[1] = v15;
  v37[2] = *MEMORY[0x1E69BAB10];
  v16 = PKNetworkConnectivityAvailable();
  v17 = @"true";
  if (!v16)
  {
    v17 = @"false";
  }

  v38[2] = v17;
  v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v38 forKeys:v37 count:3];
  [v10 subjects:v12 sendEvent:v18];

  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (![WeakRetained _authenticationAllowed] || objc_msgSend(WeakRetained[61], "authenticationIdentifier") != *(a1 + 64))
  {
    dispatch_group_leave(*(a1 + 32));
LABEL_14:

    goto LABEL_15;
  }

  *(*(*(a1 + 40) + 8) + 24) = v9 == 0;
  v20 = PKLogFacilityTypeGetObject();
  v21 = os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT);
  if (v9)
  {
    if (v21)
    {
      *buf = 138412290;
      v36 = v9;
      _os_log_impl(&dword_1BD026000, v20, OS_LOG_TYPE_DEFAULT, "Transaction Authorization Error: failed to retrieve barcode with error, %@", buf, 0xCu);
    }

    v22 = [v9 userInfo];
    v23 = [v22 objectForKey:*MEMORY[0x1E696AA08]];

    if (v23)
    {
      v24 = v23;

      v9 = v24;
    }

    v25 = [v9 domain];
    if ([v25 isEqualToString:*MEMORY[0x1E696A978]])
    {
      if ([v9 code] == -1001)
      {

LABEL_22:
        v26 = @"PAYMENT_ERROR_BARCODE_PAYMENT_NETWORK_ERROR";
        goto LABEL_23;
      }

      v27 = [v9 code];

      if (v27 == -1009)
      {
        goto LABEL_22;
      }
    }

    else
    {
    }

    v26 = @"PAYMENT_ERROR_BARCODE_PAYMENT_AUTHORIZATION_ERROR";
LABEL_23:
    v28 = PKLocalizedAquamanString(&v26->isa);
    v29 = *(*(a1 + 48) + 8);
    v30 = *(v29 + 40);
    *(v29 + 40) = v28;

    dispatch_group_leave(*(a1 + 32));
    goto LABEL_14;
  }

  if (v21)
  {
    *buf = 138412290;
    v36 = v7;
    _os_log_impl(&dword_1BD026000, v20, OS_LOG_TYPE_DEFAULT, "Transaction Authorization succeeded: retrieved barcode identifier, %@", buf, 0xCu);
  }

  v31[0] = MEMORY[0x1E69E9820];
  v31[1] = 3221225472;
  v31[2] = __126__PKPassPaymentContainerView__authorizeForTransactionWithAuthenticatorEvaluationResponse_authenticationIdentifier_completion___block_invoke_271;
  v31[3] = &unk_1E8011C98;
  v31[4] = WeakRetained;
  v32 = v7;
  v33 = v8;
  v34 = *(a1 + 32);
  dispatch_async(MEMORY[0x1E69E96A0], v31);

LABEL_15:
}

void __126__PKPassPaymentContainerView__authorizeForTransactionWithAuthenticatorEvaluationResponse_authenticationIdentifier_completion___block_invoke_271(uint64_t a1)
{
  objc_storeStrong((*(a1 + 32) + 944), *(a1 + 40));
  objc_storeStrong((*(a1 + 32) + 952), *(a1 + 48));
  v2 = *(a1 + 32);
  v3 = *(v2 + 1000);
  *(v2 + 1000) = 0;

  v4 = *(a1 + 56);

  dispatch_group_leave(v4);
}

void __126__PKPassPaymentContainerView__authorizeForTransactionWithAuthenticatorEvaluationResponse_authenticationIdentifier_completion___block_invoke_2(uint64_t a1)
{
  if (([*(a1 + 32) activateValueAddedServicePasses:*(a1 + 40)] & 1) == 0)
  {
    v3 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 0;
      v4 = "Transaction Authorization Error: failed to activate VAS passes...";
      v5 = &v7;
LABEL_10:
      _os_log_impl(&dword_1BD026000, v3, OS_LOG_TYPE_DEFAULT, v4, v5, 2u);
    }

LABEL_11:

    v2 = 0;
    goto LABEL_12;
  }

  if (([*(a1 + 32) authorizeAndStartCardEmulationWithCredential:*(a1 + 48)] & 1) == 0)
  {
    v3 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 0;
      v4 = "Transaction Authorization Error: failed to start card emulation...";
      v5 = &v6;
      goto LABEL_10;
    }

    goto LABEL_11;
  }

  if ([*(a1 + 32) persistentCardEmulationQueued])
  {
    MEMORY[0x1BFB41980](*MEMORY[0x1E69BA080], 0);
  }

  v2 = 1;
LABEL_12:
  *(*(*(a1 + 56) + 8) + 24) = v2;
}

void __126__PKPassPaymentContainerView__authorizeForTransactionWithAuthenticatorEvaluationResponse_authenticationIdentifier_completion___block_invoke_2_274(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v7 = WeakRetained;
    v4 = [WeakRetained style];
    v3 = v7;
    if (v4 == 3 && *(*(*(a1 + 48) + 8) + 24) == 1)
    {
      v5 = [v7 delegate];
      [v5 passFooterContentView:v7 didAuthorizeAndRetrieveDecryptedBarcode:v7[119]];

      [v7 _beginBarcodeDisplayTimer];
      [v7 _postDidAuthorizeNotification];
      [v7 _showInstallAssociatedApplicationInstructionsIfNecessary];
      if ([*(a1 + 32) biometricMatch])
      {
        if (PKPearlIsAvailable())
        {
          v6 = 3;
        }

        else
        {
          v6 = 2;
        }
      }

      else
      {
        v6 = 1;
      }

      [v7 _collectAndSubmitBarcodeEventMetadataWithAuthenticationType:v6];
      [v7 _insertPaymentTransactionForActiveBarcode];
      v3 = v7;
    }
  }
}

- (void)_resetActiveApplicationForPaymentPass:(id)a3 withCompletion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self->_contactlessInterfaceSession;
  authorizationQueue = self->_authorizationQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __83__PKPassPaymentContainerView__resetActiveApplicationForPaymentPass_withCompletion___block_invoke;
  block[3] = &unk_1E8012300;
  v14 = v8;
  v15 = v6;
  v16 = v7;
  v10 = v7;
  v11 = v6;
  v12 = v8;
  dispatch_async(authorizationQueue, block);
}

void __83__PKPassPaymentContainerView__resetActiveApplicationForPaymentPass_withCompletion___block_invoke(uint64_t a1)
{
  [*(a1 + 32) stopCardEmulation];
  v2 = [*(a1 + 32) activatePaymentApplications:0 forPaymentPass:*(a1 + 40)];
  v3 = *(a1 + 48);
  if (v3)
  {
    v4 = v2;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __83__PKPassPaymentContainerView__resetActiveApplicationForPaymentPass_withCompletion___block_invoke_2;
    v5[3] = &unk_1E8010FA8;
    v6 = v3;
    v7 = v4;
    dispatch_async(MEMORY[0x1E69E96A0], v5);
  }
}

- (void)_resetCardEmulationWithCompletion:(id)a3
{
  v4 = a3;
  if ([(PKPassFooterContentView *)self style]== 3)
  {
    activeBarcodeIdentifier = self->_activeBarcodeIdentifier;
    self->_activeBarcodeIdentifier = 0;

    activeBarcodeCredential = self->_activeBarcodeCredential;
    self->_activeBarcodeCredential = 0;

    [(PKAssertion *)self->_userNotificationSupressionAssertion invalidate];
    userNotificationSupressionAssertion = self->_userNotificationSupressionAssertion;
    self->_userNotificationSupressionAssertion = 0;
  }

  v8 = [(PKPassFooterContentView *)self delegate];
  [v8 passFooterContentViewDidInvalidateAuthorization:self];

  v9 = self->_contactlessInterfaceSession;
  authorizationQueue = self->_authorizationQueue;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __64__PKPassPaymentContainerView__resetCardEmulationWithCompletion___block_invoke;
  v13[3] = &unk_1E8010DD0;
  v14 = v9;
  v15 = v4;
  v11 = v4;
  v12 = v9;
  dispatch_async(authorizationQueue, v13);
}

void __64__PKPassPaymentContainerView__resetCardEmulationWithCompletion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) stopCardEmulation];
  v3 = *(a1 + 40);
  if (v3)
  {
    v4 = v2;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __64__PKPassPaymentContainerView__resetCardEmulationWithCompletion___block_invoke_2;
    v5[3] = &unk_1E8010FA8;
    v6 = v3;
    v7 = v4;
    dispatch_async(MEMORY[0x1E69E96A0], v5);
  }
}

- (void)_beginSessionExchange:(id)a3
{
  if (a3)
  {
    sessionExchangeTaskQueue = self->_sessionExchangeTaskQueue;
    v5 = _Block_copy(a3);
    [(NSMutableArray *)sessionExchangeTaskQueue addObject:v5];

    [(PKPassPaymentContainerView *)self _executeNextSessionExchangeTask];
  }
}

- (void)_executeNextSessionExchangeTask
{
  if (!self->_contactlessInterfaceSessionSuspended && !self->_sessionExchangeActive && [(NSMutableArray *)self->_sessionExchangeTaskQueue count])
  {
    v3 = [(NSMutableArray *)self->_sessionExchangeTaskQueue firstObject];
    [(NSMutableArray *)self->_sessionExchangeTaskQueue removeObjectAtIndex:0];
    if (self->_contactlessInterfaceSession && ![(PKPassFooterContentView *)self isInvalidated])
    {
      self->_sessionExchangeActive = 1;
      sessionExchangeToken = self->_sessionExchangeToken;
      if (sessionExchangeToken)
      {
        (v3)[2](v3, sessionExchangeToken, 0);
      }

      else
      {
        objc_initWeak(&location, self);
        contactlessInterfaceSession = self->_contactlessInterfaceSession;
        v7[0] = MEMORY[0x1E69E9820];
        v7[1] = 3221225472;
        v7[2] = __61__PKPassPaymentContainerView__executeNextSessionExchangeTask__block_invoke;
        v7[3] = &unk_1E8021748;
        objc_copyWeak(&v9, &location);
        v8 = v3;
        [(PKContactlessInterfaceSession *)contactlessInterfaceSession createSessionHandoffTokenWithCompletion:v7];

        objc_destroyWeak(&v9);
        objc_destroyWeak(&location);
      }
    }

    else
    {
      v4 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E69BBBC8] code:-1 userInfo:0];
      (v3)[2](v3, 0, v4);
    }
  }
}

void __61__PKPassPaymentContainerView__executeNextSessionExchangeTask__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __61__PKPassPaymentContainerView__executeNextSessionExchangeTask__block_invoke_2;
  v10[3] = &unk_1E801BAB0;
  objc_copyWeak(&v14, (a1 + 40));
  v11 = v5;
  v7 = *(a1 + 32);
  v12 = v6;
  v13 = v7;
  v8 = v6;
  v9 = v5;
  dispatch_async(MEMORY[0x1E69E96A0], v10);

  objc_destroyWeak(&v14);
}

void __61__PKPassPaymentContainerView__executeNextSessionExchangeTask__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    objc_storeStrong(WeakRetained + 139, *(a1 + 32));
  }

  (*(*(a1 + 48) + 16))();
  [WeakRetained _executeNextSessionExchangeTask];
}

- (void)_clearSessionExchangeTasks
{
  sessionExchangeToken = self->_sessionExchangeToken;
  self->_sessionExchangeToken = 0;

  self->_sessionExchangeActive = 0;
  v4 = [(NSMutableArray *)self->_sessionExchangeTaskQueue copy];
  [(NSMutableArray *)self->_sessionExchangeTaskQueue removeAllObjects];
  [v4 enumerateObjectsUsingBlock:&__block_literal_global_278];
}

void __56__PKPassPaymentContainerView__clearSessionExchangeTasks__block_invoke(uint64_t a1, void (**a2)(void, void, void))
{
  v3 = MEMORY[0x1E696ABC0];
  v4 = *MEMORY[0x1E69BBBC8];
  v5 = a2;
  v6 = [v3 errorWithDomain:v4 code:-1 userInfo:0];
  (a2)[2](v5, 0, v6);
}

- (id)_groupTileForTiles:(id)a3
{
  v3 = a3;
  if ([v3 count])
  {
    v4 = [v3 objectAtIndexedSubscript:0];
    v5 = [v4 metadata];
    if ([v5 isGroupType])
    {
      [v3 pk_firstObjectPassingTest:&__block_literal_global_282_0];
    }

    else
    {
      [MEMORY[0x1E69B8A90] _createDefaultDashboardGroupTileWithChildTiles:v3];
    }
    v6 = ;
  }

  else
  {
    v6 = [v3 pk_firstObjectPassingTest:&__block_literal_global_282_0];
  }

  return v6;
}

BOOL __49__PKPassPaymentContainerView__groupTileForTiles___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 prearmTiles];
  v3 = [v2 count] != 0;

  return v3;
}

- (void)_reloadTiles
{
  objc_initWeak(&location, self);
  paymentService = self->_paymentService;
  v4 = [(PKPassFooterContentView *)self paymentPass];
  v5 = [v4 uniqueID];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __42__PKPassPaymentContainerView__reloadTiles__block_invoke;
  v6[3] = &unk_1E8011850;
  objc_copyWeak(&v7, &location);
  v6[4] = self;
  [(PKPaymentService *)paymentService tilesForPassWithUniqueIdentifier:v5 context:1 completion:v6];

  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

void __42__PKPassPaymentContainerView__reloadTiles__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = [WeakRetained _groupTileForTiles:v3];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __42__PKPassPaymentContainerView__reloadTiles__block_invoke_2;
    v8[3] = &unk_1E8010A10;
    v8[4] = *(a1 + 32);
    v9 = v6;
    v7 = v6;
    dispatch_async(MEMORY[0x1E69E96A0], v8);
  }
}

uint64_t __42__PKPassPaymentContainerView__reloadTiles__block_invoke_2(uint64_t a1)
{
  objc_storeStrong((*(a1 + 32) + 600), *(a1 + 40));
  v2 = *(a1 + 32);

  return [v2 _updateContentPrimaryView];
}

- (void)_applyLatestContentToViews
{
  v50 = *MEMORY[0x1E69E9840];
  if (self->_VASInfoViewWillShow || self->_VASInfoViewSuppressedTransactionUpdate || self->_valueAddedServiceInfoView && !self->_VASInfoViewHidden && [(PKPassPaymentContainerView *)self _shouldDisplayPrimaryView])
  {
    self->_VASInfoViewSuppressedTransactionUpdate = 1;
  }

  v3 = (self->_contentUpdateCounter + 1);
  self->_contentUpdateCounter = v3;
  objc_initWeak(&location, self);
  v4 = dispatch_group_create();
  v5 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134349312;
    *&buf[4] = self;
    *&buf[12] = 2050;
    *&buf[14] = v3;
    _os_log_impl(&dword_1BD026000, v5, OS_LOG_TYPE_DEFAULT, "PKPassPaymentContainerView (%{public}p - %{public}ld): fetching content...", buf, 0x16u);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v47 = __Block_byref_object_copy__53;
  v48 = __Block_byref_object_dispose__53;
  v49 = 0;
  v43[0] = 0;
  v43[1] = v43;
  v43[2] = 0x3032000000;
  v43[3] = __Block_byref_object_copy__53;
  v43[4] = __Block_byref_object_dispose__53;
  v44 = 0;
  v41[0] = 0;
  v41[1] = v41;
  v41[2] = 0x3032000000;
  v41[3] = __Block_byref_object_copy__53;
  v41[4] = __Block_byref_object_dispose__53;
  v42 = 0;
  v39[0] = 0;
  v39[1] = v39;
  v39[2] = 0x3032000000;
  v39[3] = __Block_byref_object_copy__53;
  v39[4] = __Block_byref_object_dispose__53;
  v40 = 0;
  v6 = [(PKPassFooterContentView *)self paymentPass];
  v7 = [v6 uniqueID];
  v8 = &unk_1BE0FC000;
  if ([v6 isStoredValuePass])
  {
    v9 = [v6 devicePrimaryPaymentApplication];
    dispatch_group_enter(v4);
    paymentService = self->_paymentService;
    v34[0] = MEMORY[0x1E69E9820];
    v34[1] = 3221225472;
    v34[2] = __56__PKPassPaymentContainerView__applyLatestContentToViews__block_invoke;
    v34[3] = &unk_1E8016A48;
    v38 = v43;
    v11 = v9;
    v35 = v11;
    v36 = v6;
    v12 = v4;
    v37 = v12;
    [(PKPaymentService *)paymentService transitStateWithPassUniqueIdentifier:v7 paymentApplication:v11 completion:v34];
    dispatch_group_enter(v12);
    v13 = self->_paymentService;
    v31[0] = MEMORY[0x1E69E9820];
    v31[1] = 3221225472;
    v31[2] = __56__PKPassPaymentContainerView__applyLatestContentToViews__block_invoke_3;
    v31[3] = &unk_1E8016A70;
    v33 = v41;
    v14 = v12;
    v32 = v14;
    [(PKPaymentService *)v13 balancesForPaymentPassWithUniqueIdentifier:v7 completion:v31];
    dispatch_group_enter(v14);
    v15 = self->_paymentService;
    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = __56__PKPassPaymentContainerView__applyLatestContentToViews__block_invoke_5;
    v28[3] = &unk_1E8012BB0;
    v30 = v39;
    v29 = v14;
    [(PKPaymentService *)v15 plansForPaymentPassWithUniqueIdentifier:v7 completion:v28];

    v8 = &unk_1BE0FC000;
  }

  dispatch_group_enter(v4);
  v16 = self->_paymentService;
  v21 = MEMORY[0x1E69E9820];
  v22 = v8[509];
  v17 = v22;
  v23 = __56__PKPassPaymentContainerView__applyLatestContentToViews__block_invoke_6;
  v24 = &unk_1E801A478;
  v26 = buf;
  objc_copyWeak(&v27, &location);
  v18 = v4;
  v25 = v18;
  [(PKPaymentService *)v16 tilesForPassWithUniqueIdentifier:v7 context:1 completion:&v21];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = v17;
  v19[2] = __56__PKPassPaymentContainerView__applyLatestContentToViews__block_invoke_7;
  v19[3] = &unk_1E80217B8;
  objc_copyWeak(v20, &location);
  v20[1] = v3;
  v19[4] = v43;
  v19[5] = v41;
  v19[6] = v39;
  v19[7] = buf;
  dispatch_group_notify(v18, MEMORY[0x1E69E96A0], v19);
  objc_destroyWeak(v20);

  objc_destroyWeak(&v27);
  _Block_object_dispose(v39, 8);

  _Block_object_dispose(v41, 8);
  _Block_object_dispose(v43, 8);

  _Block_object_dispose(buf, 8);
  objc_destroyWeak(&location);
}

void __56__PKPassPaymentContainerView__applyLatestContentToViews__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __56__PKPassPaymentContainerView__applyLatestContentToViews__block_invoke_2;
  block[3] = &unk_1E8021790;
  v11 = v3;
  v4 = *(a1 + 56);
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  *&v7 = *(a1 + 48);
  *(&v7 + 1) = v4;
  *&v8 = v5;
  *(&v8 + 1) = v6;
  v12 = v8;
  v13 = v7;
  v9 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __56__PKPassPaymentContainerView__applyLatestContentToViews__block_invoke_2(void *a1)
{
  v2 = a1[4];
  if (v2)
  {
    v3 = [v2 transitPassPropertiesWithPaymentApplication:a1[5] pass:a1[6]];
    v4 = *(a1[8] + 8);
    v5 = *(v4 + 40);
    *(v4 + 40) = v3;
  }

  v6 = a1[7];

  dispatch_group_leave(v6);
}

void __56__PKPassPaymentContainerView__applyLatestContentToViews__block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __56__PKPassPaymentContainerView__applyLatestContentToViews__block_invoke_4;
  block[3] = &unk_1E8017420;
  v8 = v3;
  v6 = *(a1 + 32);
  v4 = v6;
  v9 = v6;
  v5 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __56__PKPassPaymentContainerView__applyLatestContentToViews__block_invoke_4(uint64_t a1)
{
  objc_storeStrong((*(*(a1 + 48) + 8) + 40), *(a1 + 32));
  v2 = *(a1 + 40);

  dispatch_group_leave(v2);
}

void __56__PKPassPaymentContainerView__applyLatestContentToViews__block_invoke_5(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_group_leave(*(a1 + 32));
}

void __56__PKPassPaymentContainerView__applyLatestContentToViews__block_invoke_6(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v5 = [WeakRetained _groupTileForTiles:v3];

  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  v8 = *(a1 + 32);

  dispatch_group_leave(v8);
}

void __56__PKPassPaymentContainerView__applyLatestContentToViews__block_invoke_7(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = WeakRetained[78];
    if (v4 == *(a1 + 72))
    {
      v5 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v6 = 134349312;
        v7 = v3;
        v8 = 2050;
        v9 = v4;
        _os_log_impl(&dword_1BD026000, v5, OS_LOG_TYPE_DEFAULT, "PKPassPaymentContainerView (%{public}p - %{public}ld): finished fetching balances.", &v6, 0x16u);
      }

      [v3[117] setTransitProperties:*(*(*(a1 + 32) + 8) + 40)];
      [v3[117] setDynamicBalances:*(*(*(a1 + 40) + 8) + 40)];
      [v3[117] updateWithDynamicCommutePlans:*(*(*(a1 + 48) + 8) + 40)];
      objc_storeStrong(v3 + 75, *(*(*(a1 + 56) + 8) + 40));
      [v3 _updateContentPrimaryView];
      [v3 _updateContentSecondaryView];
    }
  }
}

- (void)_updateContentPrimaryView
{
  v105[2] = *MEMORY[0x1E69E9840];
  v3 = self->_displayedPrimaryView;
  if ([(PKTransitBalanceModel *)self->_transitBalanceModel hasBalanceContent])
  {
    v4 = [(PKTransitBalanceModel *)self->_transitBalanceModel displayableBalances];
    v5 = [v4 count];
    v6 = v5;
    if (v5 == 1)
    {
      p_singleValueCellPrimary = &self->_singleValueCellPrimary;
      singleValueCellPrimary = self->_singleValueCellPrimary;
      if (!singleValueCellPrimary)
      {
        v9 = off_1E8004698;
LABEL_31:
        v57 = objc_alloc(*v9);
        v58 = [v57 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
        v59 = *p_singleValueCellPrimary;
        *p_singleValueCellPrimary = v58;

        [*p_singleValueCellPrimary setAlpha:0.0];
        [(PKPassPaymentContainerView *)self addSubview:*p_singleValueCellPrimary];
        singleValueCellPrimary = *p_singleValueCellPrimary;
        v30 = 1;
        goto LABEL_32;
      }
    }

    else
    {
      if (!v5)
      {
        v55 = 0;
        v30 = 0;
        goto LABEL_33;
      }

      p_singleValueCellPrimary = &self->_dualValueCellPrimary;
      singleValueCellPrimary = self->_dualValueCellPrimary;
      if (!singleValueCellPrimary)
      {
        v9 = off_1E8005188;
        goto LABEL_31;
      }
    }

    v30 = 0;
LABEL_32:
    v55 = singleValueCellPrimary;
LABEL_33:
    objc_storeStrong(&self->_displayedPrimaryView, v55);
    v60 = [(PKPaymentDashboardCellActionHandleable *)v55 layer];
    v61 = [v60 presentationLayer];
    v62 = v61;
    if (!v61)
    {
      v61 = v60;
    }

    [v61 opacity];
    v64 = v63;

    v65 = v64 > 0.0 && self->_isVisible;
    v66 = v6 - 1;
    if (v6 == 1)
    {
      v101 = v30;
      v67 = [v4 objectAtIndexedSubscript:0];
      v68 = v55;
      [(PKPaymentDashboardCellActionHandleable *)v68 beginUpdates];
      [(PKPaymentDashboardCellActionHandleable *)v68 setEnableDisclosure:0];
      v69 = [(PKPassFooterContentView *)self paymentPass];
      [(PKPaymentDashboardCellActionHandleable *)v68 setPass:v69];

      v70 = [(PKPaymentDashboardCellActionHandleable *)v67 localizedTitle];
      if (v70)
      {
        [(PKPaymentDashboardCellActionHandleable *)v68 setTitle:v70];
      }

      else
      {
        v73 = PKLocalizedPaymentString(&cfstr_PropertySummar.isa);
        [(PKPaymentDashboardCellActionHandleable *)v68 setTitle:v73];
      }

      v74 = [(PKPaymentDashboardCellActionHandleable *)v67 formattedValue];
      [(PKPaymentDashboardCellActionHandleable *)v68 setDetail:v74];

      [(PKPaymentDashboardCellActionHandleable *)v68 setSubDetail:0];
      v75 = v68;
    }

    else
    {
      if (v6 == 2)
      {
        v101 = v30;
        v67 = v55;
        [(PKPaymentDashboardCellActionHandleable *)v67 beginUpdates];
        v68 = [v4 objectAtIndexedSubscript:0];
        v71 = [(PKPaymentDashboardCellActionHandleable *)v68 localizedTitle];
        if (v71)
        {
          [(PKPaymentDashboardCellActionHandleable *)v67 setLeftTitle:v71];
        }

        else
        {
          v76 = PKLocalizedPaymentString(&cfstr_PropertySummar.isa);
          [(PKPaymentDashboardCellActionHandleable *)v67 setLeftTitle:v76];
        }

        v77 = [(PKPaymentDashboardCellActionHandleable *)v68 formattedValue];
        [(PKPaymentDashboardCellActionHandleable *)v67 setLeftDetail:v77];

        [(PKPaymentDashboardCellActionHandleable *)v67 setLeftSubDetail:0];
        v78 = [v4 objectAtIndexedSubscript:1];
        v79 = [v78 localizedTitle];
        if (v79)
        {
          [(PKPaymentDashboardCellActionHandleable *)v67 setRightTitle:v79];
        }

        else
        {
          PKLocalizedPaymentString(&cfstr_PropertySummar.isa);
          v81 = v80 = v3;
          [(PKPaymentDashboardCellActionHandleable *)v67 setRightTitle:v81];

          v3 = v80;
        }

        v82 = [v78 formattedValue];
        [(PKPaymentDashboardCellActionHandleable *)v67 setRightDetail:v82];

        [(PKPaymentDashboardCellActionHandleable *)v67 setRightSubDetail:0];
        v83 = [(PKPassFooterContentView *)self paymentPass];
        [(PKPaymentDashboardCellActionHandleable *)v67 setPass:v83];

        [(PKPaymentDashboardCellActionHandleable *)v67 setEnableDisclosure:0];
        [(PKPaymentDashboardCellActionHandleable *)v67 endUpdates:v65];

        goto LABEL_55;
      }

      if (v6 < 3)
      {
LABEL_56:
        [(PKPassPaymentContainerView *)self setNeedsLayout];

        goto LABEL_57;
      }

      v101 = v30;
      v67 = v55;
      [(PKPaymentDashboardCellActionHandleable *)v67 beginUpdates];
      v68 = [v4 objectAtIndexedSubscript:0];
      v72 = [(PKPaymentDashboardCellActionHandleable *)v68 localizedTitle];
      if (v72)
      {
        [(PKPaymentDashboardCellActionHandleable *)v67 setLeftTitle:v72];
      }

      else
      {
        v93 = PKLocalizedPaymentString(&cfstr_PropertySummar.isa);
        [(PKPaymentDashboardCellActionHandleable *)v67 setLeftTitle:v93];
      }

      v94 = [(PKPaymentDashboardCellActionHandleable *)v68 formattedValue];
      [(PKPaymentDashboardCellActionHandleable *)v67 setLeftDetail:v94];

      [(PKPaymentDashboardCellActionHandleable *)v67 setLeftSubDetail:0];
      v95 = PKLocalizedPaymentString(&cfstr_PropertySummar_0.isa);
      [(PKPaymentDashboardCellActionHandleable *)v67 setRightTitle:v95];

      v96 = PKLocalizedPaymentString(&cfstr_PropertySummar_1.isa, &cfstr_Lu.isa, v66);
      [(PKPaymentDashboardCellActionHandleable *)v67 setRightDetail:v96];

      [(PKPaymentDashboardCellActionHandleable *)v67 setRightSubDetail:0];
      v97 = [(PKPassFooterContentView *)self paymentPass];
      [(PKPaymentDashboardCellActionHandleable *)v67 setPass:v97];

      [(PKPaymentDashboardCellActionHandleable *)v67 setEnableDisclosure:0];
      v75 = v67;
    }

    [(PKPaymentDashboardCellActionHandleable *)v75 endUpdates:v65];
LABEL_55:

    v30 = v101;
    goto LABEL_56;
  }

  v10 = [(PKPaymentTransaction *)self->_transactionForDisplayedBarcode awards];
  v11 = [v10 count];

  if (v11)
  {
    transactionAwardsView = self->_transactionAwardsView;
    v13 = transactionAwardsView == 0;
    if (!transactionAwardsView)
    {
      v14 = [PKPaymentTransactionView alloc];
      v15 = [(PKPaymentTransactionView *)v14 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
      v16 = self->_transactionAwardsView;
      self->_transactionAwardsView = v15;

      [(PKPaymentTransactionView *)self->_transactionAwardsView setAlpha:0.0];
      [(UIView *)self->_transactionAwardsView pkui_setMaskType:3];
      v17 = self->_transactionAwardsView;
      v18 = [MEMORY[0x1E69DC888] secondarySystemGroupedBackgroundColor];
      [(PKPaymentTransactionView *)v17 setBackgroundColor:v18];

      [(PKPassPaymentContainerView *)self addSubview:self->_transactionAwardsView];
      v19 = [objc_alloc(MEMORY[0x1E69DD060]) initWithTarget:self action:sel__transactionAwardsViewTapped_];
      [(PKPaymentTransactionView *)self->_transactionAwardsView addGestureRecognizer:v19];

      transactionAwardsView = self->_transactionAwardsView;
    }

    objc_storeStrong(&self->_displayedPrimaryView, transactionAwardsView);
    v20 = [(PKPaymentTransaction *)self->_transactionForDisplayedBarcode awards];
    v21 = [v20 firstObject];

    v22 = self->_transactionAwardsView;
    v23 = [v21 formattedStringValue];
    [(PKPaymentTransactionView *)v22 setPrimaryString:v23];

    v24 = [MEMORY[0x1E695DF00] date];
    v25 = [v21 claimExpiryDate];
    v26 = [v21 redeemExpiryDate];
    v98 = v25;
    if (v25)
    {
      v27 = [v24 earlierDate:v25];
      LOBYTE(v25) = v27 == v24;
    }

    v99 = v3;
    v100 = v13;
    if (v26)
    {
      v28 = [v24 earlierDate:v26];
      v29 = v28 == v24;
    }

    else
    {
      v29 = 0;
    }

    if ((v25 | v29))
    {
      v37 = @"REDEEM_TRANSACTION_AWARD";
    }

    else
    {
      v37 = @"VIEW_TRANSACTION_AWARD";
    }

    v38 = self->_transactionAwardsView;
    v39 = v37;
    v40 = [(PKPassFooterContentView *)self paymentPass];
    v41 = [v40 organizationName];
    v42 = PKLocalizedAquamanString(v39, &stru_1F3BD5BF0.isa, v41);

    [(PKPaymentTransactionView *)v38 setSecondaryString:v42];
    v43 = [v21 subtype];
    v44 = [v43 length];

    if (v44)
    {
      v45 = [(PKPassFooterContentView *)self paymentPass];
      v46 = [v45 rawIcon];

      v47 = objc_alloc(MEMORY[0x1E69B8948]);
      v48 = [v46 imageRef];
      [v46 scale];
      v49 = [v47 initWithCGImage:v48 scale:1 orientation:?];
      v50 = [MEMORY[0x1E69DCAB8] imageWithPKImage:v49];
    }

    else
    {
      v50 = PKUIImageNamed(@"AppleOffer");
    }

    v3 = v99;
    [(PKPaymentTransactionView *)self->_transactionAwardsView setPrimaryImage:v50];
    [(PKPassPaymentContainerView *)self setNeedsLayout];
    v51 = MEMORY[0x1E69B8540];
    v52 = *MEMORY[0x1E69BB6C0];
    v105[0] = *MEMORY[0x1E69BB718];
    v105[1] = v52;
    v53 = [MEMORY[0x1E695DEC8] arrayWithObjects:v105 count:2];
    v103 = *MEMORY[0x1E69BA680];
    v104 = *MEMORY[0x1E69BA808];
    v54 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v104 forKeys:&v103 count:1];
    [v51 subjects:v53 sendEvent:v54];

    v30 = v100;
  }

  else if (self->_groupTile)
  {
    tileGroupView = self->_tileGroupView;
    v30 = tileGroupView == 0;
    if (!tileGroupView)
    {
      v32 = objc_alloc_init(PKPassTileGroupView);
      v33 = self->_tileGroupView;
      self->_tileGroupView = v32;

      [(PKPassTileGroupView *)self->_tileGroupView setAlpha:0.0];
      [(PKPassTileGroupView *)self->_tileGroupView setDelegate:self];
      [(PKPassPaymentContainerView *)self addSubview:self->_tileGroupView];
      tileGroupView = self->_tileGroupView;
    }

    objc_storeStrong(&self->_displayedPrimaryView, tileGroupView);
    v34 = [(UIView *)self->_displayedPrimaryView layer];
    v35 = [v34 presentationLayer];
    v36 = v35;
    if (!v35)
    {
      v35 = v34;
    }

    [v35 opacity];
    v90 = v89;

    v91 = v90 > 0.0 && self->_isVisible;
    v92 = self->_tileGroupView;
    v102[0] = MEMORY[0x1E69E9820];
    v102[1] = 3221225472;
    v102[2] = __55__PKPassPaymentContainerView__updateContentPrimaryView__block_invoke;
    v102[3] = &unk_1E8010970;
    v102[4] = self;
    [(PKPassTileGroupView *)v92 performBatchUpdates:v102 animated:v91];
    [(PKPassPaymentContainerView *)self setNeedsLayout];
  }

  else
  {
    displayedPrimaryView = self->_displayedPrimaryView;
    self->_displayedPrimaryView = 0;

    v30 = 0;
  }

LABEL_57:
  v84 = self->_displayedPrimaryView;
  if (v3 != v84)
  {
    if (v3)
    {
      v85 = [(UIView *)v3 layer];
      [v85 pkui_animateToOpacity:0 withCompletion:0.0];

      v84 = self->_displayedPrimaryView;
    }

    v86 = !v30;
    if (v3)
    {
      v86 = 0;
    }

    if (!v86 && v84)
    {
      v87 = [(PKPassPaymentContainerView *)self _isPrimaryViewVisible];
      v88 = [(UIView *)self->_displayedPrimaryView layer];
      [v88 pkui_animateToOpacity:0 withCompletion:v87];
    }
  }
}

void __55__PKPassPaymentContainerView__updateContentPrimaryView__block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) _canDisplaySecondaryView])
  {
    if ([*(a1 + 32) _shouldDisplaySecondaryView])
    {
      v2 = 1;
    }

    else
    {
      v2 = 2;
    }
  }

  else
  {
    v2 = 1;
  }

  v3 = *(a1 + 32);
  v4 = v3[74];
  v5 = [v3 paymentPass];
  v6 = *(a1 + 32);
  v7 = *(v6 + 600);
  v8 = [*(v6 + 584) passState];
  v9[0] = 1;
  v10 = v2;
  v11 = 0;
  [v4 setPass:v5 content:v7 passState:v8 context:v9 animated:0];
}

- (void)_updateContentSecondaryView
{
  v3 = self->_displayedSecondaryView;
  if ([(PKTransitBalanceModel *)self->_transitBalanceModel hasCommutePlanContent])
  {
    singleValueCellSecondary = self->_singleValueCellSecondary;
    v30 = singleValueCellSecondary == 0;
    if (!singleValueCellSecondary)
    {
      v5 = [PKAdjustableSingleCellView alloc];
      v6 = [(PKAdjustableSingleCellView *)v5 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
      v7 = self->_singleValueCellSecondary;
      self->_singleValueCellSecondary = v6;

      [(PKPaymentDashboardCellActionHandleable *)self->_singleValueCellSecondary setAlpha:0.0];
      [(PKPassPaymentContainerView *)self addSubview:self->_singleValueCellSecondary];
      singleValueCellSecondary = self->_singleValueCellSecondary;
    }

    objc_storeStrong(&self->_displayedSecondaryView, singleValueCellSecondary);
    v8 = [(UIView *)self->_displayedSecondaryView layer];
    v9 = [v8 presentationLayer];
    v10 = v9;
    if (!v9)
    {
      v9 = v8;
    }

    [v9 opacity];
    v14 = v13;

    v15 = v14 > 0.0 && self->_isVisible;
    v16 = [(PKPassFooterContentView *)self paymentPass];
    v17 = self->_singleValueCellSecondary;
    [(PKPaymentDashboardCellActionHandleable *)v17 beginUpdates];
    [(PKPaymentDashboardCellActionHandleable *)v17 setPass:v16];
    [(PKPaymentDashboardCellActionHandleable *)v17 setEnableDisclosure:0];
    transitBalanceModel = self->_transitBalanceModel;
    v34 = 0;
    v32 = 0;
    v33 = 0;
    v31 = &stru_1F3BD7330;
    [(PKTransitBalanceModel *)transitBalanceModel getDisplayableCommutePlanDetailsForTitle:&v33 value:&v32 subtitle:&v31 isExpired:&v34];
    v19 = v33;
    v20 = v32;
    v21 = v31;
    PKCommutePlanFieldEitherLabelOrValueIsEmpty();
    PKCommutePlanFormatTitleFromLabelAndValue();
    v22 = v19;

    v23 = v20;
    [(PKPaymentDashboardCellActionHandleable *)v17 setTitle:v22];
    [(PKPaymentDashboardCellActionHandleable *)v17 setDetail:v23];
    [(PKPaymentDashboardCellActionHandleable *)v17 setSubDetail:v21];
    if (v34)
    {
      [MEMORY[0x1E69DC888] systemRedColor];
    }

    else
    {
      [MEMORY[0x1E69DC888] secondaryLabelColor];
    }
    v24 = ;
    [(PKPaymentDashboardCellActionHandleable *)v17 setSubDetailColor:v24];

    [(PKPaymentDashboardCellActionHandleable *)v17 endUpdates:v15];
    [(PKPassPaymentContainerView *)self layoutIfNeeded];
    [(PKPassPaymentContainerView *)self setNeedsLayout];

    v12 = v30;
  }

  else
  {
    displayedSecondaryView = self->_displayedSecondaryView;
    self->_displayedSecondaryView = 0;

    v12 = 0;
  }

  v25 = self->_displayedSecondaryView;
  if (v3 != v25)
  {
    if (v3)
    {
      v26 = [(UIView *)v3 layer];
      [v26 pkui_animateToOpacity:0 withCompletion:0.0];

      v25 = self->_displayedSecondaryView;
    }

    v27 = !v12;
    if (v3)
    {
      v27 = 0;
    }

    if (!v27 && v25)
    {
      v28 = [(PKPassPaymentContainerView *)self _isSecondaryViewVisible];
      v29 = [(UIView *)self->_displayedSecondaryView layer];
      [v29 pkui_animateToOpacity:0 withCompletion:v28];
    }
  }
}

- (void)_updateApplicationsView
{
  if (self->_applicationsView)
  {
    v3 = 24;
    if (self->_transitioning)
    {
      v3 = 23;
    }

    v4 = *(&self->super.super.super.super.isa + OBJC_IVAR___PKPassPaymentContainerView__paymentOffersController[v3]);
    v5 = [(PKPassPaymentPayStateView *)self->_payStateView glyph];
    v6 = [v5 state];

    if (v4 != 1 || v6 > 8)
    {
      LOBYTE(v8) = 1;
    }

    else
    {
      v8 = 0x5Du >> v6;
    }

    applicationsView = self->_applicationsView;

    [(PKPassPaymentApplicationView *)applicationsView setUserInteractionEnabled:v8 & 1];
  }
}

- (void)_performActivationStateUpdate:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v13 = v4;
    v5 = [(PKPassPaymentContainerView *)self _isDeactivated];
    v6 = [(PKPassPaymentContainerView *)self _isBackgrounded];
    v7 = [(PKPassPaymentContainerView *)self _authenticationAllowed];
    v13[2]();
    v8 = [(PKPassPaymentContainerView *)self _isDeactivated];
    v9 = [(PKPassPaymentContainerView *)self _isBackgrounded];
    v10 = [(PKPassPaymentContainerView *)self _authenticationAllowed];
    if (v7 && !v10)
    {
      [(PKPassPaymentContainerView *)self _endPaymentAuthorizationWithWillUpdateState:(v6 ^ v9 | v5 ^ v8) & 1];
    }

    if (!v9 && v6)
    {
      [(PKPassPaymentContainerView *)self _applyLatestContentToViews];
    }

    v4 = v13;
    if ((v6 ^ v9 | v5 ^ v8))
    {
      if (!v8 && v5)
      {
        v11 = [(PKPassFooterContentView *)self pass];
        v12 = [PKPassPaymentContainerView shouldAutomaticallyAuthorizeForPass:v11 withContext:0];

        if (v12)
        {
          self->_pendingAutomaticAuthorization = 1;
        }
      }

      [(PKPassPaymentContainerView *)self _resetToIdleState];
      v4 = v13;
    }
  }
}

- (void)foregroundActiveArbiter:(id)a3 didUpdateForegroundActiveState:(id)a4
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __85__PKPassPaymentContainerView_foregroundActiveArbiter_didUpdateForegroundActiveState___block_invoke;
  v4[3] = &unk_1E8019910;
  v4[4] = self;
  v5 = a4;
  [(PKPassPaymentContainerView *)self _performActivationStateUpdate:v4];
}

- (void)foregroundActiveArbiter:(id)a3 didUpdateDeactivationReasons:(unsigned int)a4
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __83__PKPassPaymentContainerView_foregroundActiveArbiter_didUpdateDeactivationReasons___block_invoke;
  v4[3] = &unk_1E80217E0;
  v4[4] = self;
  v5 = a4;
  [(PKPassPaymentContainerView *)self _performActivationStateUpdate:v4];
}

- (BOOL)_isDeactivated
{
  if (!self->_foregroundActiveState.foregroundActive)
  {
    return 1;
  }

  if ([PKUIForegroundActiveArbiter isDeactivedForReasons:self->_deactivationReasons])
  {
    return 1;
  }

  return self->_authenticationSuspensionCounter != 0;
}

- (BOOL)_isForegroundActive
{
  if ([(PKPassPaymentContainerView *)self _isDeactivated])
  {
    return 0;
  }

  else
  {
    return ![(PKPassPaymentContainerView *)self _isBackgrounded];
  }
}

- (void)_configureForStyle:(int64_t)a3 context:(id)a4
{
  v10 = a4;
  v6 = [(PKPassFooterContentView *)self pass];
  if (PKUserIntentIsAvailable())
  {
    v7 = [objc_alloc(MEMORY[0x1E69AD308]) initWithStyle:0];
    physicalButtonView = self->_physicalButtonView;
    self->_physicalButtonView = v7;

    [(LAUIPhysicalButtonView *)self->_physicalButtonView setAlpha:0.0];
    [(PKPassPaymentContainerView *)self addSubview:self->_physicalButtonView];
    [(PKPassPaymentContainerView *)self _setUserIntentRequired:[PKPassPaymentContainerView initialUserIntentRequiredAssumptionForPass:v6 context:v10 paymentService:self->_paymentService]];
  }

  if (a3 <= 4)
  {
    if (a3 == 2)
    {
      [(PKPassPaymentContainerView *)self _configureForValueAddedServiceWithPass:v6 context:v10];
    }

    else
    {
      v9 = [(PKPassFooterContentView *)self paymentPass];
      [(PKPassPaymentContainerView *)self _configureForPaymentWithPaymentPass:v9 context:v10];
    }
  }
}

- (void)_configureForPaymentWithPaymentPass:(id)a3 context:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(PKPassFooterContentView *)self style];
  v9 = [[PKPassPaymentPayStateView alloc] initWithStyle:v8];
  payStateView = self->_payStateView;
  self->_payStateView = v9;

  v11 = [v6 isAccessPass];
  [(PKPassPaymentPayStateView *)self->_payStateView setAccessPass:v11];
  v12 = self->_payStateView;
  if (v11)
  {
    v13 = [v6 accessType] == 3;
  }

  else
  {
    v13 = 0;
  }

  [(PKPassPaymentPayStateView *)v12 setHomeKeyPass:v13];
  -[PKPassPaymentPayStateView setIdentityPass:](self->_payStateView, "setIdentityPass:", [v6 isIdentityPass]);
  [(PKPassPaymentPayStateView *)self->_payStateView setDelegate:self];
  [(PKPassPaymentPayStateView *)self->_payStateView setAlpha:0.0];
  -[PKPassPaymentPayStateView setPersistentEmulationHint:](self->_payStateView, "setPersistentEmulationHint:", [v7 wantsPersistentCardEmulation]);
  [(PKPassPaymentContainerView *)self addSubview:self->_payStateView];
  [(PKPassPaymentContainerView *)self _applyLatestContentToViews];
  if ([v6 contactlessActivationGroupingType] == 2 && objc_msgSend(v6, "hasContactlessDevicePaymentApplicationsAvailable"))
  {
    v14 = [[PKPassPaymentApplicationView alloc] initWithPass:v6];
    applicationsView = self->_applicationsView;
    self->_applicationsView = v14;

    [(PKPassPaymentApplicationView *)self->_applicationsView setDelegate:self];
    [(PKPassPaymentApplicationView *)self->_applicationsView setAlpha:0.0];
    [(PKPassPaymentContainerView *)self addSubview:self->_applicationsView];
  }

  if (v8 == 3)
  {
    v16 = [MEMORY[0x1E69DD168] pkui_plainInteractiveTextViewWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
    bottomTextView = self->_bottomTextView;
    self->_bottomTextView = v16;

    v18 = self->_bottomTextView;
    v19 = PKFontForDefaultDesign(*MEMORY[0x1E69DDD10], *MEMORY[0x1E69DDC40]);
    [(UITextView *)v18 setFont:v19];

    v20 = self->_bottomTextView;
    v21 = [MEMORY[0x1E69DC888] systemGrayColor];
    [(UITextView *)v20 setTextColor:v21];

    [(UITextView *)self->_bottomTextView setEditable:0];
    [(UITextView *)self->_bottomTextView setSelectable:1];
    [(UITextView *)self->_bottomTextView setScrollingEnabled:0];
    [(UITextView *)self->_bottomTextView _setInteractiveTextSelectionDisabled:1];
    [(UITextView *)self->_bottomTextView setAlpha:0.0];
    [(UITextView *)self->_bottomTextView setDelegate:self];
    [(PKPassPaymentContainerView *)self addSubview:self->_bottomTextView];
  }

  v22 = [(PKPassFooterContentView *)self bottomRule];
  [v22 setAlpha:0.0];

  [(PKPassFooterContentView *)self setInfoButtonAlpha:0.0];
  if (([(PKPassFooterContentView *)self style]- 1) >= 3)
  {
    v23 = [(PKPassFooterContentView *)self bottomRule];
    [(PKPassPaymentContainerView *)self addSubview:v23];

    v24 = [[PKPassValueAddedServiceInfoView alloc] initWithStyle:0];
    valueAddedServiceInfoView = self->_valueAddedServiceInfoView;
    self->_valueAddedServiceInfoView = v24;

    [(PKPassValueAddedServiceInfoView *)self->_valueAddedServiceInfoView setAlpha:0.0];
    [(PKPassPaymentContainerView *)self addSubview:self->_valueAddedServiceInfoView];
  }

  v26 = [(PKPassFooterContentView *)self paymentPass];
  v27 = RequiredExpressApplicationsForAutomaticAuthorization(v26, v7, self->_paymentService, self->_contactlessInterfaceSession);

  if ([v27 count])
  {
    self->_requireExpress = 1;
  }

  if (self->_valueAddedServiceInfoView)
  {
    self->_waitingForPasses = 1;
    objc_initWeak(&location, self);
    v28 = [v7 additionalPassUniqueIdentifiers];

    passLibrary = self->_passLibrary;
    if (v28)
    {
      v30 = [v7 additionalPassUniqueIdentifiers];
      v34[0] = MEMORY[0x1E69E9820];
      v34[1] = 3221225472;
      v34[2] = __74__PKPassPaymentContainerView__configureForPaymentWithPaymentPass_context___block_invoke;
      v34[3] = &unk_1E8011158;
      v31 = &v35;
      objc_copyWeak(&v35, &location);
      [(PKPassLibrary *)passLibrary getPassesWithUniqueIdentifiers:v30 handler:v34];
    }

    else
    {
      v32[0] = MEMORY[0x1E69E9820];
      v32[1] = 3221225472;
      v32[2] = __74__PKPassPaymentContainerView__configureForPaymentWithPaymentPass_context___block_invoke_5;
      v32[3] = &unk_1E8011158;
      v31 = &v33;
      objc_copyWeak(&v33, &location);
      [(PKPassLibrary *)passLibrary enabledValueAddedServicePassesWithCompletion:v32];
    }

    objc_destroyWeak(v31);
    objc_destroyWeak(&location);
  }

  if (v8 != 4)
  {
    [(PKPassPaymentContainerView *)self _activateForPaymentWithApplications:v27];
  }
}

void __74__PKPassPaymentContainerView__configureForPaymentWithPaymentPass_context___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 pk_objectsPassingTest:&__block_literal_global_329];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __74__PKPassPaymentContainerView__configureForPaymentWithPaymentPass_context___block_invoke_3;
  v5[3] = &unk_1E80110E0;
  objc_copyWeak(&v7, (a1 + 32));
  v6 = v3;
  v4 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], v5);

  objc_destroyWeak(&v7);
}

uint64_t __74__PKPassPaymentContainerView__configureForPaymentWithPaymentPass_context___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 hasValidNFCPayload] && objc_msgSend(v2, "isValid"))
  {
    v3 = [v2 hasStoredValue] ^ 1;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

void __74__PKPassPaymentContainerView__configureForPaymentWithPaymentPass_context___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _setValueAddedServicePasses:*(a1 + 32)];
    v4 = v3[82];
    v5 = [*(a1 + 32) firstObject];
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __74__PKPassPaymentContainerView__configureForPaymentWithPaymentPass_context___block_invoke_4;
    v6[3] = &unk_1E8011180;
    objc_copyWeak(&v7, (a1 + 40));
    [v4 setPass:v5 animated:0 completion:v6];

    objc_destroyWeak(&v7);
  }
}

void __74__PKPassPaymentContainerView__configureForPaymentWithPaymentPass_context___block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    WeakRetained[865] = 0;
    v2 = WeakRetained;
    if ([WeakRetained _hasValueAddedServicePasses])
    {
      [v2 _setVASInfoViewHidden:0 animated:1 completion:0];
    }

    WeakRetained = v2;
    if (v2[864] == 1)
    {
      [v2 _beginPaymentAuthorization];
      WeakRetained = v2;
    }
  }
}

void __74__PKPassPaymentContainerView__configureForPaymentWithPaymentPass_context___block_invoke_5(uint64_t a1, void *a2)
{
  v3 = a2;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __74__PKPassPaymentContainerView__configureForPaymentWithPaymentPass_context___block_invoke_6;
  v5[3] = &unk_1E80110E0;
  objc_copyWeak(&v7, (a1 + 32));
  v6 = v3;
  v4 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], v5);

  objc_destroyWeak(&v7);
}

void __74__PKPassPaymentContainerView__configureForPaymentWithPaymentPass_context___block_invoke_6(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained _setValueAddedServicePasses:*(a1 + 32)];
    WeakRetained = v3;
    v3[865] = 0;
    if (v3[864] == 1)
    {
      [v3 _resetToIdleState];
      WeakRetained = v3;
    }
  }
}

- (void)_configureForValueAddedServiceWithPass:(id)a3 context:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[PKPassPaymentPayStateView alloc] initWithStyle:[(PKPassFooterContentView *)self style]];
  payStateView = self->_payStateView;
  self->_payStateView = v8;

  [(PKPassPaymentPayStateView *)self->_payStateView setDelegate:self];
  [(PKPassPaymentPayStateView *)self->_payStateView setAlpha:0.0];
  [(PKPassPaymentContainerView *)self addSubview:self->_payStateView];
  [(PKPassPaymentContainerView *)self _applyLatestContentToViews];
  v10 = [(PKPassFooterContentView *)self appIconView];
  [v10 setAlpha:1.0];

  [(PKPassFooterContentView *)self setInfoButtonAlpha:1.0];
  v11 = [(PKPassFooterContentView *)self bottomRule];
  [v11 setAlpha:1.0];

  v12 = [(PKPassFooterContentView *)self bottomRule];
  [(PKPassPaymentContainerView *)self addSubview:v12];

  v16 = [v6 userInfo];
  v13 = [v16 objectForKey:@"PKPassPaymentContainerViewPresentationPayStateKey"];
  pendingPresentationContextState = self->_pendingPresentationContextState;
  self->_pendingPresentationContextState = v13;

  v15 = [MEMORY[0x1E695DEC8] arrayWithObject:v7];
  [(PKPassPaymentContainerView *)self _setValueAddedServicePasses:v15];

  LOBYTE(v15) = [PKPassPaymentContainerView shouldAutomaticallyAuthorizeForPass:v7 withContext:v6];
  self->_pendingAutomaticAuthorization = v15;
}

- (void)_applyPresentationPayState:(int64_t)a3
{
  if (a3 == 8)
  {
    [(PKPassPaymentContainerView *)self _applyTerminalTransactionSubstateWithSuccess:1 reset:1];
  }

  else
  {
    [PKPassPaymentContainerView _applyPayState:"_applyPayState:withTextOverride:animated:completionHandler:" withTextOverride:? animated:? completionHandler:?];
  }
}

- (void)_applyPaymentIndefiniteSuccessState
{
  if (!self->_transactionSubstate)
  {
    self->_transactionSubstate = 1;
    v2 = 24;
    if (self->_transitioning)
    {
      v2 = 23;
    }

    if (*(&self->super.super.super.super.isa + OBJC_IVAR___PKPassPaymentContainerView__paymentOffersController[v2]) != 7)
    {
      [(PKPassPaymentContainerView *)self _applyPayState:7 withTextOverride:0 completionHandler:0];
    }
  }
}

- (void)_applyTerminalTransactionSubstateWithSuccess:(BOOL)a3 reset:(BOOL)a4 errorOverride:(id)a5
{
  v5 = a4;
  v6 = a3;
  v34 = *MEMORY[0x1E69E9840];
  v8 = a5;
  self->_lastTransactionTime = CFAbsoluteTimeGetCurrent();
  v9 = 2;
  if (!v6)
  {
    v9 = 3;
  }

  transactionSubstate = self->_transactionSubstate;
  v11 = transactionSubstate == 2;
  if (transactionSubstate == 2)
  {
    v12 = 1;
  }

  else
  {
    transactionSubstate = v9;
    v12 = v6;
  }

  if (v11 && !v6)
  {
    v13 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v33 = 3;
      _os_log_impl(&dword_1BD026000, v13, OS_LOG_TYPE_DEFAULT, "View overriding desired transaction state: %ld -> success.", buf, 0xCu);
    }

    v12 = 1;
    transactionSubstate = 2;
  }

  holdingTerminalSubstate = self->_holdingTerminalSubstate;
  self->_holdingTerminalSubstate = !v5;
  self->_transactionSubstate = transactionSubstate;
  if (v5)
  {
    transactionResolutionTimer = self->_transactionResolutionTimer;
    if (transactionResolutionTimer)
    {
      dispatch_source_cancel(transactionResolutionTimer);
      v16 = self->_transactionResolutionTimer;
      self->_transactionResolutionTimer = 0;
    }
  }

  objc_initWeak(buf, self);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __95__PKPassPaymentContainerView__applyTerminalTransactionSubstateWithSuccess_reset_errorOverride___block_invoke;
  aBlock[3] = &unk_1E8010998;
  objc_copyWeak(&v31, buf);
  v17 = _Block_copy(aBlock);
  v18 = v17;
  v19 = 24;
  if (self->_transitioning)
  {
    v19 = 23;
  }

  if (v12)
  {
    v20 = 8;
  }

  else
  {
    v20 = 9;
  }

  if (*(&self->super.super.super.super.isa + OBJC_IVAR___PKPassPaymentContainerView__paymentOffersController[v19]) != v20)
  {
    if (v12)
    {
      v21 = 0;
LABEL_35:
      v28[0] = MEMORY[0x1E69E9820];
      v28[1] = 3221225472;
      v28[2] = __95__PKPassPaymentContainerView__applyTerminalTransactionSubstateWithSuccess_reset_errorOverride___block_invoke_2;
      v28[3] = &unk_1E8010AD8;
      v29 = v18;
      [(PKPassPaymentContainerView *)self _applyPayState:v20 withTextOverride:v21 completionHandler:v28];

      goto LABEL_36;
    }

    if ([v8 length])
    {
      v22 = v8;
LABEL_34:
      v21 = v22;
      goto LABEL_35;
    }

    v23 = [(PKPassFooterContentView *)self paymentPass];
    v24 = [v23 isAccessPass];

    if (v24)
    {
      v25 = @"PAYMENT_TRY_AGAIN";
    }

    else
    {
      v26 = [(PKPassFooterContentView *)self paymentPass];
      v27 = [v26 isIdentityPass];

      if (v27)
      {
        v22 = PKLocalizedIdentityString(&cfstr_PresentmentTra.isa);
        goto LABEL_34;
      }

      v25 = @"PAYMENT_ERROR_TRANSACTION_ERROR";
    }

    v22 = PKLocalizedPaymentString(&v25->isa);
    goto LABEL_34;
  }

  if (holdingTerminalSubstate && !self->_holdingTerminalSubstate && !self->_transitioning)
  {
    (*(v17 + 2))(v17);
  }

LABEL_36:

  objc_destroyWeak(&v31);
  objc_destroyWeak(buf);
}

void __95__PKPassPaymentContainerView__applyTerminalTransactionSubstateWithSuccess_reset_errorOverride___block_invoke(uint64_t a1)
{
  v10[1] = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained && (WeakRetained[816] & 1) == 0)
  {
    *(WeakRetained + 101) = 0;
    [WeakRetained _setVASInfoViewHidden:1 animated:1 completion:0];
    v3 = [v2 _actionAfterTransaction];
    if (v3 != 1)
    {
      if (v3 != 2)
      {
        v4 = 0;
        goto LABEL_8;
      }

      v2[897] = 1;
    }

    [v2 _resetToIdleStateAfterDelay:2.0];
    v4 = 1;
LABEL_8:
    v5 = [MEMORY[0x1E696AD88] defaultCenter];
    v6 = *MEMORY[0x1E69BC068];
    v9 = *MEMORY[0x1E69BC070];
    v7 = [MEMORY[0x1E696AD98] numberWithBool:v4];
    v10[0] = v7;
    v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:&v9 count:1];
    [v5 postNotificationName:v6 object:v2 userInfo:v8];
  }
}

uint64_t __95__PKPassPaymentContainerView__applyTerminalTransactionSubstateWithSuccess_reset_errorOverride___block_invoke_2(uint64_t result, char a2)
{
  if ((a2 & 1) == 0)
  {
    return (*(*(result + 32) + 16))();
  }

  return result;
}

- (void)_finishHoldingTerminalTransactionSubstateAfterDelay:(double)a3
{
  transactionResolutionTimer = self->_transactionResolutionTimer;
  if (transactionResolutionTimer)
  {
    dispatch_source_cancel(transactionResolutionTimer);
    v6 = self->_transactionResolutionTimer;
    self->_transactionResolutionTimer = 0;
  }

  v7 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, MEMORY[0x1E69E96A0]);
  v8 = self->_transactionResolutionTimer;
  self->_transactionResolutionTimer = v7;

  v9 = self->_transactionResolutionTimer;
  v10 = dispatch_time(0, (a3 * 1000000000.0));
  dispatch_source_set_timer(v9, v10, 0xFFFFFFFFFFFFFFFFLL, 0x989680uLL);
  objc_initWeak(&location, self);
  v11 = self->_transactionResolutionTimer;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __82__PKPassPaymentContainerView__finishHoldingTerminalTransactionSubstateAfterDelay___block_invoke;
  v12[3] = &unk_1E8010998;
  objc_copyWeak(&v13, &location);
  dispatch_source_set_event_handler(v11, v12);
  dispatch_resume(self->_transactionResolutionTimer);
  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);
}

void __82__PKPassPaymentContainerView__finishHoldingTerminalTransactionSubstateAfterDelay___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = WeakRetained[103];
    v5 = v2;
    if (v3)
    {
      dispatch_source_cancel(v3);
      v4 = v5[103];
      v5[103] = 0;

      v2 = v5;
    }

    if (*(v2 + 816) == 1)
    {
      [v2 _applyTerminalTransactionSubstateWithSuccess:v2[101] == 2 reset:1];
      v2 = v5;
    }
  }
}

- (void)_cancelHoldingTerminalTransactionSubstateIfNecessary
{
  if (self->_holdingTerminalSubstate)
  {
    self->_holdingTerminalSubstate = 0;
    self->_transactionSubstate = 0;
    transactionResolutionTimer = self->_transactionResolutionTimer;
    if (transactionResolutionTimer)
    {
      dispatch_source_cancel(transactionResolutionTimer);
      v4 = self->_transactionResolutionTimer;
      self->_transactionResolutionTimer = 0;
    }

    else
    {
      contextForCurrentTransaction = self->_contextForCurrentTransaction;
      if (contextForCurrentTransaction)
      {
        v6 = contextForCurrentTransaction;
        v7 = self->_contextForCurrentTransaction;
        self->_contextForCurrentTransaction = 0;

        v8 = [(PKContactlessInterfaceTransactionContext *)v6 paymentPass];
        v9 = [(PKContactlessInterfaceTransactionContext *)v6 paymentApplication];
        if (v9 && [v8 isTransitPass])
        {
          v10 = [(PKContactlessInterfaceSession *)self->_contactlessInterfaceSession transitAppletStateForPaymentApplication:v9];
          [(PKContactlessInterfaceSession *)self->_contactlessInterfaceSession resetExpressState];
          v11 = PKLogFacilityTypeGetObject();
          if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
          {
            *v15 = 0;
            _os_log_impl(&dword_1BD026000, v11, OS_LOG_TYPE_DEFAULT, "Handling early cancel of felica session during transaction...", v15, 2u);
          }

          paymentService = self->_paymentService;
          v13 = [MEMORY[0x1E695DF00] date];
          v14 = [v8 uniqueID];
          [(PKPaymentService *)paymentService processTransitTransactionEventWithHistory:v10 transactionDate:v13 forPaymentApplication:v9 withPassUniqueIdentifier:v14 expressTransactionState:0];
        }
      }
    }
  }
}

- (void)_beginTerminalResponseTimeout
{
  [(PKPassPaymentContainerView *)self _cancelTerminalResponseTimeout];
  v3 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, MEMORY[0x1E69E96A0]);
  transactionTerminalResponseTimer = self->_transactionTerminalResponseTimer;
  self->_transactionTerminalResponseTimer = v3;

  v5 = self->_transactionTerminalResponseTimer;
  v6 = dispatch_time(0, 4000000000);
  dispatch_source_set_timer(v5, v6, 0xFFFFFFFFFFFFFFFFLL, 0x989680uLL);
  objc_initWeak(&location, self);
  v7 = self->_transactionTerminalResponseTimer;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __59__PKPassPaymentContainerView__beginTerminalResponseTimeout__block_invoke;
  v8[3] = &unk_1E8010998;
  objc_copyWeak(&v9, &location);
  dispatch_source_set_event_handler(v7, v8);
  dispatch_resume(self->_transactionTerminalResponseTimer);
  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __59__PKPassPaymentContainerView__beginTerminalResponseTimeout__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v10 = WeakRetained;
    [WeakRetained _cancelTerminalResponseTimeout];
    v2 = [v10 pkui_viewControllerFromResponderChain];
    if (v2)
    {
      v3 = MEMORY[0x1E69DC650];
      v4 = PKLocalizedPaymentString(&cfstr_TerminalRespon.isa);
      v5 = PKLocalizedPaymentString(&cfstr_TerminalRespon_0.isa);
      v6 = [v3 alertControllerWithTitle:v4 message:v5 preferredStyle:1];

      v7 = MEMORY[0x1E69DC648];
      v8 = PKLocalizedString(&cfstr_OkButtonTitle.isa);
      v9 = [v7 actionWithTitle:v8 style:0 handler:0];
      [v6 addAction:v9];

      AudioServicesPlaySystemSound(0x573u);
      [v2 presentViewController:v6 animated:1 completion:0];
    }

    WeakRetained = v10;
  }
}

- (void)_cancelTerminalResponseTimeout
{
  transactionTerminalResponseTimer = self->_transactionTerminalResponseTimer;
  if (transactionTerminalResponseTimer)
  {
    dispatch_source_cancel(transactionTerminalResponseTimer);
    v4 = self->_transactionTerminalResponseTimer;
    self->_transactionTerminalResponseTimer = 0;
  }
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  if (a6 == &KVOContext)
  {

    [(PKPassPaymentContainerView *)self _updateApplicationsView:a3];
  }

  else
  {
    v9 = v6;
    v10 = v7;
    v8.receiver = self;
    v8.super_class = PKPassPaymentContainerView;
    [(PKPassPaymentContainerView *)&v8 observeValueForKeyPath:a3 ofObject:a4 change:a5 context:?];
  }
}

- (void)_applyPayState:(int64_t)a3 withTextOverride:(id)a4 animated:(BOOL)a5 completionHandler:(id)a6
{
  v7 = a5;
  v12 = a4;
  v10 = a6;
  if (a3 != 5)
  {
    [(PKPassPaymentContainerView *)self _cancelTerminalResponseTimeout];
  }

  v11 = 24;
  if (self->_transitioning)
  {
    v11 = 23;
  }

  if (*(&self->super.super.super.super.isa + OBJC_IVAR___PKPassPaymentContainerView__paymentOffersController[v11]) == a3)
  {
    if (a3)
    {
      [(PKPassPaymentContainerView *)self _emphasizeStateIfPossible:a3 withTextOverride:v12];
    }

    if (v10)
    {
      v10[2](v10, 0);
    }
  }

  else
  {
    [(PKPassPaymentContainerView *)self _transitionToState:a3 withTextOverride:v12 animated:v7 completionHandler:v10];
  }
}

- (void)_showEmphasisButtonForStateIfPossible:(int64_t)a3
{
  if (!self->_actionButton)
  {
    v4 = [(PKPassPaymentContainerView *)self _emphasisButtonForState:a3];
    if (v4)
    {
      v9 = v4;
      objc_storeStrong(&self->_actionButton, v4);
      [(PKPassPaymentContainerView *)self addSubview:self->_actionButton];
      v5 = 0.0;
      if (!PKUIGetMinScreenWidthType() && ([(PKPassPaymentContainerView *)self _shouldDisplayPrimaryView]|| [(PKPassPaymentContainerView *)self _shouldDisplaySecondaryView]|| [(PKPassPaymentContainerView *)self _isVASInfoViewVisible]))
      {
        [(PKPassFooterContentView *)self _setRequestPileSuppression:1];
        v5 = 0.5;
      }

      v6 = [(UIButton *)self->_actionButton layer];
      v7 = [MEMORY[0x1E69B92B0] springAnimationWithKeyPath:@"opacity"];
      [v7 setBeginTime:v5];
      [v7 pkui_updateForAdditiveAnimationFromScalar:0.0 toScalar:1.0 withLayerScalar:1.0];
      v8 = [v6 pkui_addAdditiveAnimation:v7];

      v4 = v9;
    }
  }
}

- (void)_emphasizeStateIfPossible:(int64_t)a3 withTextOverride:(id)a4 playSystemSound:(BOOL)a5
{
  v5 = a5;
  v11 = a4;
  if (v5)
  {
    AudioServicesPlaySystemSound(0x573u);
    [(PKPassPaymentContainerView *)self _showEmphasisButtonForStateIfPossible:a3];
LABEL_6:
    [(PKPassPaymentPayStateView *)self->_payStateView emphasizeStateIfPossible:a3 withOverrideText:v11];
    goto LABEL_7;
  }

  [(PKPassPaymentContainerView *)self _showEmphasisButtonForStateIfPossible:a3];
  if ((PKPearlIsAvailable() & 1) == 0)
  {
    goto LABEL_6;
  }

  if ([(PKPassPaymentPayStateView *)self->_payStateView state]== a3)
  {
    [(PKPassPaymentPayStateView *)self->_payStateView setState:a3 animated:1 withOverrideText:v11 preserveGlyphState:1 completionHandler:0];
  }

LABEL_7:
  if (self->_currentPayState == 3)
  {
    v8 = [(UIButton *)self->_actionButton layer];
    v9 = [MEMORY[0x1E6979300] pkui_shakeAnimation];
    v10 = [v8 pkui_addAdditiveAnimation:v9];
  }
}

- (void)_transitionToState:(int64_t)a3 withTextOverride:(id)a4 animated:(BOOL)a5 completionHandler:(id)a6
{
  v7 = a5;
  v10 = a4;
  v11 = a6;
  v12 = v11;
  v13 = 24;
  if (self->_transitioning)
  {
    v13 = 23;
  }

  v14 = *(&self->super.super.super.super.isa + OBJC_IVAR___PKPassPaymentContainerView__paymentOffersController[v13]);
  if (v14 == a3)
  {
    if (self->_transitioning || self->_waitingForGlyphView)
    {
      [(PKPassPaymentContainerView *)self _addTransitionCompletionHandler:v11];
    }

    else if (v11)
    {
      (*(v11 + 2))(v11, 0);
    }
  }

  else
  {
    [(PKPassPaymentContainerView *)self _executeTransitionCompletionHandlers:1];
    self->_pendingPayState = a3;
    self->_pendingPayStateAnimated = v7;
    v15 = [v10 copy];
    pendingPayStateTextOverride = self->_pendingPayStateTextOverride;
    self->_pendingPayStateTextOverride = v15;

    self->_pendingPayStateGlyphStateQueued = 0;
    [(PKPassPaymentContainerView *)self _addTransitionCompletionHandler:v12];
    v17 = 0;
    if (a3 == 2)
    {
      v17 = !self->_requireExpress;
    }

    [(PKPassPaymentContainerView *)self _setUserIntentRequired:v17];
    if (a3 == 8 || !self->_transitioning)
    {
      [(PKPassPaymentContainerView *)self _commitPendingPayStateAnimated:v7];
    }

    if ((a3 - 10) > 0xFFFFFFFFFFFFFFFCLL)
    {
      if (self->_pendingAutomaticAuthorization)
      {
        self->_pendingAutomaticAuthorization = 0;
      }
    }

    else
    {
      [(PKPassPaymentContainerView *)self _cancelHoldingTerminalTransactionSubstateIfNecessary];
    }

    if (a3 != 12 && a3 || ([(PKPassPaymentContainerView *)self _endPaymentAuthorizationWithWillUpdateState:1], a3))
    {
      if (!v14)
      {
        v18 = [(PKPassFooterContentView *)self style]- 1;
        v19 = PKUIGetMinScreenWidthType();
        if (v19)
        {
          v20 = PKUIGetMinScreenType() < 4;
        }

        else
        {
          v20 = 1;
        }

        v24 = [(PKPassFooterContentView *)self pass];
        v25 = [v24 style] == 7;

        v26 = v20 && v25;
        if (!v19)
        {
          v26 = 1;
        }

        if (v18 <= 2 && v26)
        {
          [(PKPassFooterContentView *)self _setRequestPileSuppression:1];
        }
      }
    }

    else if ([(PKPassPaymentPayStateView *)self->_payStateView persistentEmulationHint]&& ![(PKPassPaymentContainerView *)self _authenticationAllowed])
    {
      [(PKPassPaymentPayStateView *)self->_payStateView setPersistentEmulationHint:0];
      v21 = self->_contactlessInterfaceSession;
      v22 = v21;
      if (v21)
      {
        authorizationQueue = self->_authorizationQueue;
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __93__PKPassPaymentContainerView__transitionToState_withTextOverride_animated_completionHandler___block_invoke;
        block[3] = &unk_1E8010970;
        v28 = v21;
        dispatch_async(authorizationQueue, block);
      }
    }
  }
}

- (void)_commitPendingPayStateAnimated:(BOOL)a3
{
  currentPayState = self->_currentPayState;
  self->_currentPayState = self->_pendingPayState;
  self->_glyphStateDirty = !self->_pendingPayStateGlyphStateQueued;
  v6 = a3 || self->_pendingPayStateAnimated;
  [(PKPassPaymentContainerView *)self _transitionViewsFromPayState:currentPayState animated:v6];
  if (self->_pendingPayStateGlyphStateQueued)
  {
    self->_pendingPayStateGlyphStateQueued = 0;
    v7 = [(NSMutableArray *)self->_pendingGlyphStateCompletionHandlers copy];
    [(NSMutableArray *)self->_pendingGlyphStateCompletionHandlers removeAllObjects];
    pendingPayStateGlyphState = self->_pendingPayStateGlyphState;
    pendingPayStateGlyphStateAnimated = self->_pendingPayStateGlyphStateAnimated;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __61__PKPassPaymentContainerView__commitPendingPayStateAnimated___block_invoke;
    v11[3] = &unk_1E8011D28;
    v12 = v7;
    v10 = v7;
    [(PKPassPaymentContainerView *)self _setGlyphState:pendingPayStateGlyphState animated:pendingPayStateGlyphStateAnimated withCompletionHandler:v11];
  }
}

void __61__PKPassPaymentContainerView__commitPendingPayStateAnimated___block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v6 = 0u;
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v1 = *(a1 + 32);
  v2 = [v1 countByEnumeratingWithState:&v6 objects:v10 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v7;
    do
    {
      v5 = 0;
      do
      {
        if (*v7 != v4)
        {
          objc_enumerationMutation(v1);
        }

        (*(*(*(&v6 + 1) + 8 * v5) + 16))(*(*(&v6 + 1) + 8 * v5));
        ++v5;
      }

      while (v3 != v5);
      v3 = [v1 countByEnumeratingWithState:&v6 objects:v10 count:16];
    }

    while (v3);
  }
}

- (void)_transitionViewsFromPayState:(int64_t)a3 animated:(BOOL)a4
{
  v4 = a4;
  objc_initWeak(location, self);
  self->_transitioning = 1;
  self->_waitingForGlyphView = 1;
  currentPayState = self->_currentPayState;
  v43 = [(NSString *)self->_pendingPayStateTextOverride copy];
  pendingPayStateTextOverride = self->_pendingPayStateTextOverride;
  self->_pendingPayStateTextOverride = 0;

  v8 = [(PKPassFooterContentView *)self style];
  v9 = [(PKPassPaymentContainerView *)self _showPhysicalButtonForPayState:currentPayState];
  v10 = [(PKPassPaymentContainerView *)self _isVASInfoViewVisible];
  v11 = [(PKPassPaymentContainerView *)self _showGlyphForPayState:currentPayState];
  v12 = [(PKPassPaymentContainerView *)self _isPrimaryViewVisible];
  v13 = [(PKPassPaymentContainerView *)self _isSecondaryViewVisible];
  if (self->_applicationsView)
  {
    v14 = currentPayState == 0;
  }

  else
  {
    v14 = 1;
  }

  v15 = !v14;
  if ((currentPayState - 7) > 1)
  {
    v38 = 0;
  }

  else
  {
    [(PKPassPaymentPayStateView *)self->_payStateView alpha];
    v38 = v16 != 0.0;
  }

  v42 = v11;
  v40 = v13;
  v41 = v12;
  if (v8 == 2)
  {
    if (!v9)
    {
      v17 = 2;
      v37 = PKRunningInRemoteContext();
      goto LABEL_23;
    }

    goto LABEL_22;
  }

  if ((v8 - 4) < 0xFFFFFFFFFFFFFFFDLL || v9 || !PKRunningInRemoteContext())
  {
LABEL_22:
    v17 = v8;
    v37 = 0;
    goto LABEL_23;
  }

  v17 = v8;
  if (PKUIGetMinScreenWidthType())
  {
    v18 = 1;
  }

  else
  {
    v18 = currentPayState == 0;
  }

  v19 = v18;
  v37 = v19;
LABEL_23:
  v20 = v15 & !v9;
  v21 = self->_payStateTransitionCounter + 1;
  self->_payStateTransitionCounter = v21;
  v22 = v21;
  v36 = v21;
  v81[0] = 0;
  v81[1] = v81;
  v81[2] = 0x2020000000;
  v82 = 0;
  v23 = self->_actionButton;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __68__PKPassPaymentContainerView__transitionViewsFromPayState_animated___block_invoke;
  aBlock[3] = &unk_1E8021828;
  objc_copyWeak(v77, location);
  v76 = v81;
  v24 = v23;
  v74 = v24;
  v77[1] = currentPayState;
  v77[2] = v17;
  v78 = v9;
  v35 = v17;
  v79 = v42;
  v80 = v4;
  v25 = v43;
  v75 = v25;
  v77[3] = v22;
  v26 = _Block_copy(aBlock);
  v59[0] = MEMORY[0x1E69E9820];
  v59[1] = 3221225472;
  v59[2] = __68__PKPassPaymentContainerView__transitionViewsFromPayState_animated___block_invoke_3;
  v59[3] = &unk_1E8021850;
  objc_copyWeak(v64, location);
  v65 = v9;
  v66 = v38;
  v64[1] = currentPayState;
  v44 = v25;
  v60 = v44;
  v67 = v42;
  v68 = v20;
  v69 = v41;
  v70 = v40;
  v71 = v10;
  v27 = v24;
  v72 = v37;
  v39 = v27;
  v61 = v27;
  v62 = self;
  v28 = v26;
  v63 = v28;
  v29 = _Block_copy(v59);
  v50[0] = MEMORY[0x1E69E9820];
  v50[1] = 3221225472;
  v50[2] = __68__PKPassPaymentContainerView__transitionViewsFromPayState_animated___block_invoke_4;
  v50[3] = &unk_1E8021878;
  objc_copyWeak(v51, location);
  v51[1] = v35;
  v51[2] = currentPayState;
  v52 = v37;
  v53 = v10;
  v54 = v9;
  v55 = v42;
  v56 = v41;
  v57 = v40;
  v58 = v20;
  v30 = _Block_copy(v50);
  if (v4)
  {
    v31 = 0.2;
  }

  else
  {
    v31 = 0.0;
  }

  v32 = MEMORY[0x1E69DD250];
  v45[0] = MEMORY[0x1E69E9820];
  v45[1] = 3221225472;
  v45[2] = __68__PKPassPaymentContainerView__transitionViewsFromPayState_animated___block_invoke_5;
  v45[3] = &unk_1E801A368;
  objc_copyWeak(v48, location);
  v48[1] = v36;
  v33 = v28;
  v46 = v33;
  v48[2] = *&v31;
  v34 = v30;
  v47 = v34;
  v49 = v4;
  [v32 animateWithDuration:4 delay:v29 options:v45 animations:v31 completion:0.0];

  objc_destroyWeak(v48);
  objc_destroyWeak(v51);

  objc_destroyWeak(v64);
  objc_destroyWeak(v77);

  _Block_object_dispose(v81, 8);
  objc_destroyWeak(location);
}

void __68__PKPassPaymentContainerView__transitionViewsFromPayState_animated___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v3 = WeakRetained;
  if (!WeakRetained)
  {
    goto LABEL_34;
  }

  v4 = *(*(a1 + 48) + 8);
  if (*(v4 + 24))
  {
    goto LABEL_34;
  }

  *(v4 + 24) = 1;
  if (WeakRetained[83] == *(a1 + 32))
  {
    v5 = [WeakRetained _buttonForState:*(a1 + 64)];
    v6 = v5;
    if (v5)
    {
      [v5 setAlpha:0.0];
    }

    v7 = v3[83];
    if (v7 != v6)
    {
      [v7 removeFromSuperview];
      [v3 addSubview:v6];
      objc_storeStrong(v3 + 83, v6);
    }
  }

  [v3 setNeedsLayout];
  [v3 layoutIfNeeded];
  [v3 _updateApplicationsView];
  if (*(a1 + 88) == 1)
  {
    if ([v3[62] persistentEmulationHint])
    {
      v8 = @"PAYMENT_SERVICE_MODE_PUSH_BUTTON_TWO_LINE";
    }

    else if ([v3[62] accessPass])
    {
      v8 = @"GENERIC_PUSH_BUTTON_TWO_LINE";
    }

    else if ([v3[62] identityPass])
    {
      v8 = @"PRESENT_PUSH_BUTTON_TWO_LINE";
    }

    else if (*(a1 + 72) == 2)
    {
      v8 = @"NFC_PASS_PUSH_BUTTON_TWO_LINE";
    }

    else
    {
      v8 = @"PAYMENT_PUSH_BUTTON_TWO_LINE";
    }

    v9 = PKLocalizedPearlString(&v8->isa);
    [v3[69] setInstruction:v9];
  }

  v10 = v3[62];
  if (*(v3 + 736) == 1)
  {
    v11 = [v3 _recognizingBiometrics];
  }

  else
  {
    v11 = 0;
  }

  [v10 setRecognizingHint:v11];
  v12 = [v3[62] layer];
  v13 = [v12 presentationLayer];

  if (v13)
  {
    if ([v13 isHidden])
    {

      goto LABEL_28;
    }

    [v13 opacity];
    v15 = v14;

    if (v15 <= 0.0)
    {
LABEL_28:
      v16 = *(a1 + 89) == 1 && (*(a1 + 64) - 7) < 3;
      goto LABEL_31;
    }
  }

  v16 = 1;
LABEL_31:
  v17 = v3[62];
  v18 = *(a1 + 64);
  v19 = *(a1 + 90);
  v20 = *(a1 + 40);
  v21 = *(v3 + 800);
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __68__PKPassPaymentContainerView__transitionViewsFromPayState_animated___block_invoke_2;
  v22[3] = &unk_1E801A318;
  objc_copyWeak(v23, (a1 + 56));
  v23[1] = *(a1 + 80);
  v24 = *(a1 + 89);
  [v17 setState:v18 animated:v16 & v19 withOverrideText:v20 preserveGlyphState:(v21 & 1) == 0 completionHandler:v22];
  if ((*(a1 + 89) & 1) == 0)
  {
    *(v3 + 803) = 0;
  }

  objc_destroyWeak(v23);
LABEL_34:
}

void __68__PKPassPaymentContainerView__transitionViewsFromPayState_animated___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    if (*(a1 + 40) == *(WeakRetained + 85) && *(a1 + 48) == 1)
    {
      WeakRetained[803] = 0;
      if ((WeakRetained[776] & 1) == 0)
      {
        v3 = WeakRetained;
        [WeakRetained _executeTransitionCompletionHandlers:0];
        WeakRetained = v3;
      }
    }
  }
}

void __68__PKPassPaymentContainerView__transitionViewsFromPayState_animated___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v10 = WeakRetained;
    if ((*(a1 + 80) & 1) == 0)
    {
      [WeakRetained[69] setAlpha:0.0];
      [v10[69] setAnimating:0];
      v3 = v10;
    }

    if ((*(a1 + 81) & 1) == 0)
    {
      v4 = [v3[62] labelWillChangeForState:*(a1 + 72) withOverrideText:*(a1 + 32)];
      v3 = v10;
      if (v4)
      {
        [v10[62] setLabelAlpha:0.0];
        v3 = v10;
      }
    }

    if ((*(a1 + 82) & 1) == 0)
    {
      [v3[62] setAlpha:0.0];
      v3 = v10;
    }

    if ((*(a1 + 83) & 1) == 0)
    {
      [v3[81] setAlpha:0.0];
      v3 = v10;
    }

    if ((*(a1 + 84) & 1) == 0)
    {
      [v3[76] setAlpha:0.0];
      v3 = v10;
    }

    if ((*(a1 + 85) & 1) == 0)
    {
      [v3[77] setAlpha:0.0];
      v3 = v10;
    }

    if ((*(a1 + 86) & 1) != 0 || ([v3[82] alpha], v5 <= 0.0))
    {
      v6 = 0;
    }

    else
    {
      [v10[82] setAlpha:0.0];
      v6 = 1;
    }

    [*(a1 + 40) setAlpha:0.0];
    if ((*(a1 + 87) & 1) != 0 || ([*(a1 + 48) infoButtonAlpha], v7 <= 0.0))
    {
      v3 = v10;
      if ((*(a1 + 81) & 1) == 0)
      {
        if (!v6)
        {
          goto LABEL_28;
        }

        goto LABEL_26;
      }
    }

    else
    {
      v8 = [v10 appIconView];
      [v8 setAlpha:0.0];

      [v10 setInfoButtonAlpha:0.0];
      v9 = [v10 bottomRule];
      [v9 setAlpha:0.0];

      v3 = v10;
      if (*(a1 + 81) != 1)
      {
LABEL_26:
        [v3 setNeedsLayout];
        [v10 layoutIfNeeded];
        goto LABEL_27;
      }
    }

    (*(*(a1 + 56) + 16))();
LABEL_27:
    v3 = v10;
  }

LABEL_28:
}

void __68__PKPassPaymentContainerView__transitionViewsFromPayState_animated___block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v10 = WeakRetained;
    v3 = WeakRetained[83];
    if ((*(a1 + 40) - 1) > 2)
    {
      if (v3)
      {
        [v3 setAlpha:1.0];
        if (*(a1 + 48) != 3)
        {
          v4 = [v10 bottomRule];
          [v4 setAlpha:1.0];
        }
      }
    }

    else if (v3)
    {
      [v3 setAlpha:1.0];
    }

    if (*(a1 + 56) == 1 && ([v10 infoButtonAlpha], v5 <= 0.0))
    {
      v7 = [v10 appIconView];
      [v7 setAlpha:1.0];

      [v10 infoButtonAlpha];
      v8 = [v10 bottomRule];
      [v8 setAlpha:1.0];

      v6 = 1;
    }

    else
    {
      v6 = 0;
    }

    if (*(a1 + 57) == 1)
    {
      [v10[82] alpha];
      if (v9 <= 0.0)
      {
        [v10[82] setAlpha:1.0];
        v6 = 1;
      }
    }

    if (*(a1 + 58) == 1)
    {
      [v10[69] setAlpha:1.0];
      [v10[69] setAnimating:1];
    }

    [v10[62] setLabelAlpha:1.0];
    if (*(a1 + 59) == 1)
    {
      [v10[62] setAlpha:1.0];
    }

    if (*(a1 + 60) == 1)
    {
      [v10[76] setAlpha:1.0];
    }

    WeakRetained = v10;
    if (*(a1 + 61) == 1)
    {
      [v10[77] setAlpha:1.0];
      WeakRetained = v10;
    }

    if (*(a1 + 62) == 1)
    {
      [v10[81] setAlpha:1.0];
      WeakRetained = v10;
    }

    if (v6)
    {
      [v10 setNeedsLayout];
      [v10 layoutIfNeeded];
      WeakRetained = v10;
    }
  }
}

void __68__PKPassPaymentContainerView__transitionViewsFromPayState_animated___block_invoke_5(uint64_t a1)
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __68__PKPassPaymentContainerView__transitionViewsFromPayState_animated___block_invoke_6;
  v2[3] = &unk_1E801A340;
  objc_copyWeak(v5, (a1 + 48));
  v5[1] = *(a1 + 56);
  v3 = *(a1 + 32);
  v5[2] = *(a1 + 64);
  v4 = *(a1 + 40);
  v6 = *(a1 + 72);
  dispatch_async(MEMORY[0x1E69E96A0], v2);

  objc_destroyWeak(v5);
}

void __68__PKPassPaymentContainerView__transitionViewsFromPayState_animated___block_invoke_6(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = WeakRetained;
  if (WeakRetained && *(a1 + 56) == *(WeakRetained + 85))
  {
    (*(*(a1 + 32) + 16))();
    v4 = MEMORY[0x1E69DD250];
    v5 = *(a1 + 64);
    v6 = *(a1 + 40);
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __68__PKPassPaymentContainerView__transitionViewsFromPayState_animated___block_invoke_7;
    v7[3] = &unk_1E801A318;
    objc_copyWeak(v8, (a1 + 48));
    v8[1] = *(a1 + 56);
    v9 = *(a1 + 72);
    [v4 animateWithDuration:4 delay:v6 options:v7 animations:v5 completion:0.0];
    objc_destroyWeak(v8);
  }
}

void __68__PKPassPaymentContainerView__transitionViewsFromPayState_animated___block_invoke_7(uint64_t a1)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __68__PKPassPaymentContainerView__transitionViewsFromPayState_animated___block_invoke_8;
  block[3] = &unk_1E801A2F0;
  objc_copyWeak(v3, (a1 + 32));
  v3[1] = *(a1 + 40);
  v4 = *(a1 + 48);
  dispatch_async(MEMORY[0x1E69E96A0], block);
  objc_destroyWeak(v3);
}

void __68__PKPassPaymentContainerView__transitionViewsFromPayState_animated___block_invoke_8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained && *(a1 + 40) == WeakRetained[85])
  {
    v3 = WeakRetained;
    [WeakRetained _endTransition:*(a1 + 48)];
    WeakRetained = v3;
  }
}

- (void)_endTransition:(BOOL)a3
{
  self->_transitioning = 0;
  if (self->_currentPayState == self->_pendingPayState)
  {
    if (!self->_waitingForGlyphView)
    {
      [(PKPassPaymentContainerView *)self _executeTransitionCompletionHandlers:0];
    }
  }

  else
  {
    [(PKPassPaymentContainerView *)self _commitPendingPayStateAnimated:a3];
  }
}

- (void)_addTransitionCompletionHandler:(id)a3
{
  if (a3)
  {
    transitionCompletionHandlers = self->_transitionCompletionHandlers;
    v5 = [a3 copy];
    v4 = _Block_copy(v5);
    [(NSMutableArray *)transitionCompletionHandlers addObject:v4];
  }
}

- (void)_executeTransitionCompletionHandlers:(BOOL)a3
{
  v15 = *MEMORY[0x1E69E9840];
  if ([(NSMutableArray *)self->_transitionCompletionHandlers count])
  {
    v4 = [(NSMutableArray *)self->_transitionCompletionHandlers copy];
    [(NSMutableArray *)self->_transitionCompletionHandlers removeAllObjects];
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v5 = v4;
    v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v11;
      do
      {
        v9 = 0;
        do
        {
          if (*v11 != v8)
          {
            objc_enumerationMutation(v5);
          }

          (*(*(*(&v10 + 1) + 8 * v9) + 16))(*(*(&v10 + 1) + 8 * v9));
          ++v9;
        }

        while (v7 != v9);
        v7 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v7);
    }
  }
}

- (void)_setGlyphState:(int64_t)a3 animated:(BOOL)a4 withCompletionHandler:(id)a5
{
  v5 = a4;
  v11 = a5;
  if (self->_currentPayState == self->_pendingPayState || !self->_transitioning)
  {
    self->_glyphStateDirty = 0;
    v8 = [(PKPassPaymentPayStateView *)self->_payStateView glyph];
    [v8 setState:a3 animated:v5 completionHandler:v11];
LABEL_7:

    goto LABEL_8;
  }

  if (self->_pendingPayStateGlyphStateQueued && self->_pendingPayStateGlyphState == a3)
  {
    self->_pendingPayStateGlyphStateQueued = 1;
    LOBYTE(v5) = self->_pendingPayStateGlyphStateAnimated && v5;
  }

  else
  {
    [(PKPassPaymentContainerView *)self _executePendingGlyphStateCompletionHandlers:1];
    self->_pendingPayStateGlyphStateQueued = 1;
    self->_pendingPayStateGlyphState = a3;
  }

  self->_pendingPayStateGlyphStateAnimated = v5;
  if (v11)
  {
    pendingGlyphStateCompletionHandlers = self->_pendingGlyphStateCompletionHandlers;
    v8 = [v11 copy];
    v10 = _Block_copy(v8);
    [(NSMutableArray *)pendingGlyphStateCompletionHandlers addObject:v10];

    goto LABEL_7;
  }

LABEL_8:
}

- (void)_executePendingGlyphStateCompletionHandlers:(BOOL)a3
{
  v15 = *MEMORY[0x1E69E9840];
  if ([(NSMutableArray *)self->_pendingGlyphStateCompletionHandlers count])
  {
    v4 = [(NSMutableArray *)self->_pendingGlyphStateCompletionHandlers copy];
    [(NSMutableArray *)self->_pendingGlyphStateCompletionHandlers removeAllObjects];
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v5 = v4;
    v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v11;
      do
      {
        v9 = 0;
        do
        {
          if (*v11 != v8)
          {
            objc_enumerationMutation(v5);
          }

          (*(*(*(&v10 + 1) + 8 * v9) + 16))(*(*(&v10 + 1) + 8 * v9));
          ++v9;
        }

        while (v7 != v9);
        v7 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v7);
    }
  }
}

- (void)_updateAuthenticatorState
{
  v8 = [(PKPassFooterContentView *)self pass];
  if ([v8 passType] == 1)
  {
    v3 = v8;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  if (v4)
  {
    v5 = [MEMORY[0x1E69B8750] _copyDevicePrimaryContactlessAccessControlForSecureElementPass:v4];
    if (v5)
    {
      v6 = v5;
      self->_authenticatorState = [MEMORY[0x1E69BC740] currentStateForAccessControl:v5];
      CFRelease(v6);
      goto LABEL_10;
    }

    v7 = 0;
  }

  else
  {
    v7 = [objc_opt_class() userIntentPotentiallyRequiredForPass:v8 fieldDetect:self->_presentationWasForFieldDetect] ^ 1;
  }

  self->_authenticatorState = [MEMORY[0x1E69BC740] cachedStateForPolicy:v7];
LABEL_10:
  -[PKPassPaymentContainerView _setUserIntentStyle:](self, "_setUserIntentStyle:", [MEMORY[0x1E69BC740] userIntentStyle]);
}

- (void)_setUserIntentRequired:(BOOL)a3
{
  if (self->_userIntentRequired != a3)
  {
    self->_userIntentRequired = a3;
    [(PKPassPaymentContainerView *)self _updatePhysicalButtonRequirement];
  }
}

- (void)_setUserIntentStyle:(int64_t)a3
{
  if (self->_userIntentStyle != a3)
  {
    self->_userIntentStyle = a3;
    [(PKPassPaymentPayStateView *)self->_payStateView setUserIntentStyle:?];

    [(PKPassPaymentContainerView *)self _updatePhysicalButtonRequirement];
  }
}

- (id)_buttonForState:(int64_t)a3
{
  if (PKUIOnlyDemoModeEnabled() & 1) != 0 || (PKStoreDemoModeEnabled())
  {
    v5 = 0;
    goto LABEL_38;
  }

  v6 = [(PKPassFooterContentView *)self style]- 1;
  v7 = [(PKPassFooterContentView *)self bottomRule];
  v8 = v7;
  if (v6 > 2)
  {
    v11 = 0;
  }

  else
  {
    v9 = [v7 superview];
    if (v9)
    {
      [v8 alpha];
      v11 = v10 > 0.0;
    }

    else
    {
      v11 = 0;
    }
  }

  objc_initWeak(&location, self);
  switch(a3)
  {
    case 10:
      v19 = MEMORY[0x1E69DC628];
      v13 = v28;
      v28[0] = MEMORY[0x1E69E9820];
      v28[1] = 3221225472;
      v28[2] = __46__PKPassPaymentContainerView__buttonForState___block_invoke_2;
      v28[3] = &unk_1E8010A60;
      objc_copyWeak(&v29, &location);
      v14 = [v19 actionWithHandler:v28];
      v15 = PKLocalizedPaymentString(&cfstr_GenericNoPassc.isa);
      goto LABEL_19;
    case 9:
      v16 = 0;
      failureAction = self->_failureAction;
      if (failureAction > 1)
      {
        if (failureAction != 2)
        {
          v14 = 0;
          if (failureAction == 3)
          {
            v16 = PKLocalizedIdentityString(&cfstr_PresentmentTur_0.isa);
            if (PKPearlIsAvailable())
            {
              v21 = @"prefs:root=Pearl";
            }

            else
            {
              v21 = @"prefs:root=TOUCHID_PASSCODE&path=TOUCHID_PASSCODE";
            }

            v14 = [MEMORY[0x1E695DFF8] URLWithString:v21];
          }

          goto LABEL_30;
        }

        v14 = [MEMORY[0x1E695DFF8] URLWithString:@"prefs:root="];
        v18 = PKLocalizedIdentityString(&cfstr_PresentmentGoT.isa);
      }

      else
      {
        v14 = 0;
        if (!failureAction)
        {
          v20 = 0;
          goto LABEL_37;
        }

        if (failureAction != 1)
        {
LABEL_30:
          v22 = MEMORY[0x1E69DC628];
          v25[0] = MEMORY[0x1E69E9820];
          v25[1] = 3221225472;
          v25[2] = __46__PKPassPaymentContainerView__buttonForState___block_invoke_3;
          v25[3] = &unk_1E8012328;
          objc_copyWeak(&v27, &location);
          v23 = v14;
          v26 = v23;
          v14 = [v22 actionWithHandler:v25];

          objc_destroyWeak(&v27);
          goto LABEL_31;
        }

        v14 = [MEMORY[0x1E695DFF8] URLWithString:@"prefs:root=Bluetooth"];
        v18 = PKLocalizedIdentityString(&cfstr_PresentmentTur.isa);
      }

      v16 = v18;
      goto LABEL_30;
    case 3:
      v12 = MEMORY[0x1E69DC628];
      v13 = v30;
      v30[0] = MEMORY[0x1E69E9820];
      v30[1] = 3221225472;
      v30[2] = __46__PKPassPaymentContainerView__buttonForState___block_invoke;
      v30[3] = &unk_1E8010A60;
      objc_copyWeak(&v31, &location);
      v14 = [v12 actionWithHandler:v30];
      v15 = [(PKPassPaymentContainerView *)self _passcodeButtonTitle];
LABEL_19:
      v16 = v15;
      objc_destroyWeak(v13 + 4);
LABEL_31:
      v20 = 0;
      if (v14 && v16)
      {
        if (v11)
        {
          [(PKPassFooterContentView *)self _buttonWithTitle:v16 action:v14];
        }

        else
        {
          [(PKPassPaymentContainerView *)self _filledButtonWithTitle:v16 action:v14];
        }
        v20 = ;
      }

      goto LABEL_37;
  }

  v16 = 0;
  v14 = 0;
  v20 = 0;
LABEL_37:
  [v20 setAccessibilityIdentifier:*MEMORY[0x1E69B93D0]];
  v5 = v20;

  objc_destroyWeak(&location);
LABEL_38:

  return v5;
}

void __46__PKPassPaymentContainerView__buttonForState___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = [v3 sender];

  [WeakRetained _passcodeFallbackButtonPressed:v4];
}

void __46__PKPassPaymentContainerView__buttonForState___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = [v3 sender];

  [WeakRetained _addPasscodeButtonPressed:v4];
}

void __46__PKPassPaymentContainerView__buttonForState___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _openURL:*(a1 + 32)];
}

- (id)_emphasisButtonForState:(int64_t)a3
{
  if (a3 == 1 && (self->_authenticatorState & 8) != 0)
  {
    objc_initWeak(&location, self);
    v5 = MEMORY[0x1E69DC628];
    v16 = MEMORY[0x1E69E9820];
    v17 = 3221225472;
    v18 = __54__PKPassPaymentContainerView__emphasisButtonForState___block_invoke;
    v19 = &unk_1E8010A60;
    objc_copyWeak(&v20, &location);
    v6 = [v5 actionWithHandler:&v16];
    v7 = [(PKPassPaymentContainerView *)self _passcodeButtonTitle:v16];
    v8 = [(PKPassFooterContentView *)self style];
    v9 = [(PKPassFooterContentView *)self bottomRule];
    v10 = v9;
    if ((v8 - 1) <= 2 && ([v9 superview], (v11 = objc_claimAutoreleasedReturnValue()) != 0) && (objc_msgSend(v10, "alpha"), v13 = v12, v11, v13 > 0.0))
    {
      v14 = [(PKPassFooterContentView *)self _buttonWithTitle:v7 action:v6];
    }

    else
    {
      v14 = [(PKPassPaymentContainerView *)self _filledButtonWithTitle:v7 action:v6];
    }

    v4 = v14;

    objc_destroyWeak(&v20);
    objc_destroyWeak(&location);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

void __54__PKPassPaymentContainerView__emphasisButtonForState___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = [v5 sender];
    [WeakRetained _passcodeFallbackButtonPressed:v4];
  }
}

- (id)_passcodeButtonTitle
{
  v3 = [(PKPassFooterContentView *)self style];
  if (v3 <= 2)
  {
    if (v3 >= 2)
    {
      if (v3 == 2)
      {
        v4 = PKLocalizedString(&cfstr_VasPassUsePass.isa);
        goto LABEL_13;
      }

      goto LABEL_11;
    }

LABEL_7:
    v5 = [(PKPassFooterContentView *)self paymentPass];
    v6 = [v5 isAccessPass];

    if (v6)
    {
      v7 = @"GENERIC_PASSCODE";
LABEL_12:
      v4 = PKLocalizedPaymentString(&v7->isa);
      goto LABEL_13;
    }

    v8 = [(PKPassFooterContentView *)self paymentPass];
    v9 = [v8 isIdentityPass];

    if (v9)
    {
      v7 = @"PRESENT_PASSCODE";
      goto LABEL_12;
    }

LABEL_11:
    v7 = @"PAYMENT_PASSCODE";
    goto LABEL_12;
  }

  if (v3 != 4)
  {
    if (v3 != 3)
    {
      goto LABEL_11;
    }

    goto LABEL_7;
  }

  v4 = 0;
LABEL_13:

  return v4;
}

- (id)_filledButtonWithTitle:(id)a3 action:(id)a4
{
  v5 = a4;
  v6 = a3;
  PKFloatRoundToPixel();
  v8 = v7;
  v9 = PKFontForDefaultDesign(*MEMORY[0x1E69DDD00], *MEMORY[0x1E69DDC40]);
  [v9 lineHeight];
  PKFloatRoundToPixel();
  v14 = v10;
  v15 = xmmword_1BE0B69E0;
  v16 = vdupq_n_s64(2uLL);
  v11 = [[PKContinuousButton alloc] initWithConfiguration:&v14];
  [(PKContinuousButton *)v11 setContentEdgeInsets:v8, 25.0, 16.0 - v8, 25.0];
  v12 = [(PKContinuousButton *)v11 titleLabel];
  [v12 setFont:v9];
  [v12 setMinimumScaleFactor:0.5];
  [v12 setTextAlignment:1];
  [v12 setLineBreakMode:4];
  [(PKContinuousButton *)v11 setTitle:v6 forState:0];

  [(PKContinuousButton *)v11 _setTouchInsets:-10.0, -10.0, -10.0, -10.0];
  [(PKContinuousButton *)v11 setExclusiveTouch:1];
  [(PKContinuousButton *)v11 sizeToFit];
  [(PKContinuousButton *)v11 addAction:v5 forControlEvents:64];

  return v11;
}

- (unint64_t)_actionAfterTransaction
{
  v2 = self;
  v3 = [(PKPassFooterContentView *)self style];
  v4 = PKRunningInRemoteContext();
  v5 = [(PKPassFooterContentView *)v2 delegate];
  LODWORD(v2) = [v5 isPassFooterContentViewInGroup:v2];

  v6 = 2;
  if (v2)
  {
    v7 = 2;
  }

  else
  {
    v7 = 0;
  }

  if (v4)
  {
    v6 = v7;
  }

  if (v3 == 2)
  {
    return v6;
  }

  else
  {
    return v7;
  }
}

- (BOOL)_shouldDisplayPrimaryView
{
  v3 = [(PKPassFooterContentView *)self style];
  if ((v3 - 1) < 3)
  {
    if (v3 != 3)
    {
      return 0;
    }

    v4 = [(PKPaymentTransaction *)self->_transactionForDisplayedBarcode awards];
    v5 = [v4 count] == 0;
    goto LABEL_8;
  }

  v4 = [(PKPassFooterContentView *)self paymentPass];
  if (![v4 isStoredValuePass] || (-[PKTransitBalanceModel hasBalanceContent](self->_transitBalanceModel, "hasBalanceContent") & 1) == 0)
  {
    v5 = self->_groupTile == 0;
LABEL_8:
    v6 = !v5;
    goto LABEL_11;
  }

  v6 = 1;
LABEL_11:

  return v6;
}

- (BOOL)_canDisplaySecondaryView
{
  if (([(PKPassFooterContentView *)self style]- 1) < 3)
  {
    return 0;
  }

  [(PKPassValueAddedServiceInfoView *)self->_valueAddedServiceInfoView alpha];
  return v4 <= 0.0;
}

- (BOOL)_shouldDisplaySecondaryView
{
  v3 = [(PKPassPaymentContainerView *)self _canDisplaySecondaryView];
  if (v3)
  {
    v4 = [(PKPassFooterContentView *)self paymentPass];
    if ([v4 isTransitPass])
    {
      v5 = [(PKTransitBalanceModel *)self->_transitBalanceModel hasCommutePlanContent];

      if (v5)
      {
        LOBYTE(v3) = 1;
        return v3;
      }
    }

    else
    {
    }

    LOBYTE(v3) = 0;
  }

  return v3;
}

- (BOOL)_showGlyphForPayState:(int64_t)a3
{
  result = 0;
  if (a3 <= 3)
  {
    if (a3 == 1)
    {
      return PKSystemApertureIsAvailable() ^ 1;
    }

    else if (a3 == 2)
    {
      return self->_userIntentStyle != 1;
    }
  }

  else if ((a3 - 4) < 7 || a3 == 12)
  {
    return 1;
  }

  return result;
}

- (BOOL)_isVASInfoViewVisible
{
  if (self->_valueAddedServiceInfoView && !self->_VASInfoViewHidden)
  {
    return ![(PKPassPaymentContainerView *)self _showPhysicalButtonForPayState:self->_currentPayState, v2, v3];
  }

  else
  {
    return 0;
  }
}

- (BOOL)_isPrimaryViewVisible
{
  if (self->_currentPayState)
  {
    v3 = [(PKPassPaymentContainerView *)self _shouldDisplayPrimaryView];
    if (v3)
    {
      LOBYTE(v3) = ![(PKPassPaymentContainerView *)self _showPhysicalButtonForPayState:self->_currentPayState];
    }
  }

  else
  {
    LOBYTE(v3) = 0;
  }

  return v3;
}

- (BOOL)_isSecondaryViewVisible
{
  if (!self->_currentPayState)
  {
LABEL_4:
    LOBYTE(v3) = 0;
    return v3;
  }

  v3 = [(PKPassPaymentContainerView *)self _shouldDisplaySecondaryView];
  if (v3)
  {
    if (![(PKPassPaymentContainerView *)self _showPhysicalButtonForPayState:self->_currentPayState])
    {
      LOBYTE(v3) = ![(PKPassPaymentContainerView *)self _isVASInfoViewVisible];
      return v3;
    }

    goto LABEL_4;
  }

  return v3;
}

- (BOOL)_authenticationAllowed
{
  if ([(PKPassFooterContentView *)self isInvalidated]|| !self->_isVisible)
  {
    LOBYTE(v3) = 0;
  }

  else
  {
    v3 = [(PKPassPaymentContainerView *)self _isForegroundActive];
    if (v3)
    {
      LOBYTE(v3) = self->_failureReason == 0;
    }
  }

  return v3;
}

- (void)_presentPassWithUniqueIdentifier:(id)a3 additionalPassUniqueIdentifiers:(id)a4 payState:(int64_t)a5
{
  v11 = a3;
  v7 = [(UIView *)self pkui_viewControllerFromResponderChain];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v9 = [MEMORY[0x1E696AD98] numberWithInteger:a5];
    [v8 setObject:v9 forKey:@"PKPassPaymentContainerViewPresentationPayStateKey"];

    v10 = [PKPassPresentationContext contextWithWasAutomaticallySelected:1 additionalPassUniqueIdentifiers:0 userInfo:v8];
    [v10 setFieldDetect:1];
    [v7 presentPassWithUniqueID:v11 context:v10 animated:1 completionHandler:0];
  }
}

- (BOOL)_shouldShowTerminalIsNotRequestingPaymentError
{
  if ([(PKPassFooterContentView *)self style]|| self->_currentPayState != 5)
  {
    return 0;
  }

  else
  {
    return ![(PKPassPaymentContainerView *)self _hasValueAddedServicePasses];
  }
}

- (void)_showTerminalIsNotRequestingPaymentError
{
  currentPayState = self->_currentPayState;
  v4 = PKLocalizedString(&cfstr_VasPassErrorTe.isa);
  [(PKPassPaymentContainerView *)self _emphasizeStateIfPossible:currentPayState withTextOverride:v4 playSystemSound:1];

  v5 = [(PKAuthenticator *)self->_authenticator authenticationIdentifier];
  v6 = dispatch_time(0, 4000000000);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __70__PKPassPaymentContainerView__showTerminalIsNotRequestingPaymentError__block_invoke;
  v7[3] = &unk_1E80119C8;
  v7[4] = self;
  v7[5] = v5;
  dispatch_after(v6, MEMORY[0x1E69E96A0], v7);
}

void __70__PKPassPaymentContainerView__showTerminalIsNotRequestingPaymentError__block_invoke(uint64_t a1)
{
  if ([*(*(a1 + 32) + 488) authenticationIdentifier] == *(a1 + 40))
  {
    v2 = *(a1 + 32);
    if (*(v2 + 720) == 5)
    {
      v3 = *(v2 + 496);
      v4 = PKLocalizedPaymentString(&cfstr_GenericInstruc.isa);
      [v3 setState:5 animated:1 withOverrideText:v4 preserveGlyphState:0 completionHandler:0];
    }
  }
}

- (void)_showTerminalIsRequestingPaymentError
{
  currentPayState = self->_currentPayState;
  v4 = PKLocalizedString(&cfstr_VasPassErrorTe_0.isa);
  [(PKPassPaymentContainerView *)self _emphasizeStateIfPossible:currentPayState withTextOverride:v4 playSystemSound:1];

  v5 = [(PKAuthenticator *)self->_authenticator authenticationIdentifier];
  v6 = dispatch_time(0, 4000000000);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __67__PKPassPaymentContainerView__showTerminalIsRequestingPaymentError__block_invoke;
  v7[3] = &unk_1E80119C8;
  v7[4] = self;
  v7[5] = v5;
  dispatch_after(v6, MEMORY[0x1E69E96A0], v7);
}

uint64_t __67__PKPassPaymentContainerView__showTerminalIsRequestingPaymentError__block_invoke(uint64_t a1)
{
  result = [*(*(a1 + 32) + 488) authenticationIdentifier];
  if (result == *(a1 + 40))
  {
    v3 = *(a1 + 32);
    if (*(v3 + 720) == 5)
    {
      v4 = *(v3 + 496);

      return [v4 setState:5 animated:1 withOverrideText:0 preserveGlyphState:0 completionHandler:0];
    }
  }

  return result;
}

- (void)_setVASInfoViewHidden:(BOOL)a3 animated:(BOOL)a4 completion:(id)a5
{
  v5 = a4;
  v6 = a3;
  v8 = a5;
  if (self->_VASInfoViewHidden == v6)
  {
    [(PKPassPaymentContainerView *)self _updateVASInfoViewSuppressedTransactionIfNecessary];
    goto LABEL_5;
  }

  self->_VASInfoViewHidden = v6;
  [(PKPassPaymentContainerView *)self _updateVASInfoViewSuppressedTransactionIfNecessary];
  if (!self->_valueAddedServiceInfoView || (v9 = [(PKPassPaymentContainerView *)self _isVASInfoViewVisible], [(PKPassValueAddedServiceInfoView *)self->_valueAddedServiceInfoView alpha], v10 == v9))
  {
LABEL_5:
    if (v8)
    {
      v8[2](v8, 1);
    }

    goto LABEL_7;
  }

  if (v5)
  {
    [(PKPassPaymentContainerView *)self layoutIfNeeded];
  }

  [(PKPassPaymentContainerView *)self setNeedsLayout];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __72__PKPassPaymentContainerView__setVASInfoViewHidden_animated_completion___block_invoke;
  aBlock[3] = &unk_1E80119C8;
  aBlock[4] = self;
  *&aBlock[5] = v9;
  v11 = _Block_copy(aBlock);
  v12 = v11;
  if (v5)
  {
    v13 = MEMORY[0x1E69DD250];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __72__PKPassPaymentContainerView__setVASInfoViewHidden_animated_completion___block_invoke_2;
    v14[3] = &unk_1E8010B50;
    v15 = v11;
    [v13 animateWithDuration:4 delay:v14 options:v8 animations:0.2 completion:0.0];
  }

  else
  {
    v11[2](v11);
    if (v8)
    {
      v8[2](v8, 1);
    }
  }

LABEL_7:
}

uint64_t __72__PKPassPaymentContainerView__setVASInfoViewHidden_animated_completion___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 656) setAlpha:*(a1 + 40)];
  [*(*(a1 + 32) + 608) setAlpha:{objc_msgSend(*(a1 + 32), "_isPrimaryViewVisible")}];
  [*(*(a1 + 32) + 616) setAlpha:{objc_msgSend(*(a1 + 32), "_isSecondaryViewVisible")}];
  v2 = *(a1 + 32);

  return [v2 layoutIfNeeded];
}

- (void)_updateVASInfoViewSuppressedTransactionIfNecessary
{
  if (self->_VASInfoViewHidden && self->_VASInfoViewSuppressedTransactionUpdate)
  {
    self->_VASInfoViewSuppressedTransactionUpdate = 0;
    [(PKPassPaymentContainerView *)self _applyLatestContentToViews];
  }
}

- (void)_setValueAddedServicePasses:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  valueAddedPasses = self->_valueAddedPasses;
  self->_valueAddedPasses = v5;

  if (v4)
  {
    v7 = [(PKPassFooterContentView *)self paymentPass];
    v8 = v7 != 0;

    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __58__PKPassPaymentContainerView__setValueAddedServicePasses___block_invoke;
    v9[3] = &unk_1E80218A0;
    v10 = v8;
    v9[4] = self;
    [v4 enumerateObjectsUsingBlock:v9];
  }
}

void __58__PKPassPaymentContainerView__setValueAddedServicePasses___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v6 = v3;
  if (*(a1 + 40) != 1 || (v4 = [v3 hasStoredValue], v5 = v6, (v4 & 1) == 0))
  {
    [*(*(a1 + 32) + 920) addObject:v6];
    v5 = v6;
  }
}

- (void)_processPaymentTransactionForContext:(id)a3 withCompletion:(id)a4
{
  v24 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [v6 transaction];
  if (!v8)
  {
    v13 = 0;
    if (!v7)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

  v9 = [(PKPassFooterContentView *)self paymentPass];
  v10 = [v9 uniqueID];

  v11 = [v6 paymentPass];
  v12 = [v11 uniqueID];

  v13 = 0;
  if (v10 && v12)
  {
    if ([v10 isEqualToString:v12])
    {
      [v8 setMerchant:self->_merchantForCurrentTransaction];
      paymentService = self->_paymentService;
      v15 = [v6 paymentApplication];
      [(PKPaymentService *)paymentService insertOrUpdatePaymentTransaction:v8 forPassUniqueIdentifier:v10 paymentApplication:v15 completion:0];

      v16 = [(PKPassPaymentContainerView *)self _paymentOfferConfirmationRecordForTransaction:v8 passUniqueID:v10];
      v17 = v16;
      if (v16)
      {
        v21 = v16;
        v18 = [(PKPaymentOffersController *)self->_paymentOffersController selectedOfferDetails];
        v19 = [v18 selectedPaymentOffer];

        v17 = v21;
        [(PKPaymentOffersController *)self->_paymentOffersController willConsumeSelectedPaymentOfferForPassUniqueID:v10];
        [(PKPaymentService *)self->_paymentService insertOrUpdatePaymentOfferConfirmationRecord:v21 completion:0];
        if (v19 && [v19 storageType] != 1)
        {
          v20 = PKLogFacilityTypeGetObject();
          if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v23 = v19;
            _os_log_impl(&dword_1BD026000, v20, OS_LOG_TYPE_DEFAULT, "Removing selected offer post tap %@", buf, 0xCu);
          }

          [(PKPaymentService *)self->_paymentService removeSelectedPaymentOffer:v19 associatedWithPassUniqueID:v10];
        }
      }

      v13 = 1;
    }

    else
    {
      v13 = 0;
    }
  }

  if (v7)
  {
LABEL_17:
    v7[2](v7, v13);
  }

LABEL_18:
}

- (id)_paymentOfferConfirmationRecordForTransaction:(id)a3 passUniqueID:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(PKPaymentOffersController *)self->_paymentOffersController selectedOfferDetails];
  v9 = [v8 selectedPaymentOffer];

  v10 = [(PKPaymentOffersController *)self->_paymentOffersController eligiblePaymentOfferCriteriaForPassUniqueID:v7 type:1];
  v11 = v10;
  if (v9)
  {
    v12 = [v9 passUniqueID];
    v13 = v7;
    v14 = v13;
    if (v12 == v13)
    {
    }

    else
    {
      if (!v13 || !v12)
      {

LABEL_17:
        v20 = 0;
        goto LABEL_18;
      }

      v15 = [v12 isEqualToString:v13];

      if (!v15)
      {
        goto LABEL_17;
      }
    }

    v19 = [v9 type];
    if (v19 != 1)
    {
      if (v19 == 2)
      {
        v20 = [objc_alloc(MEMORY[0x1E69B8CD8]) initWithTransaction:v6 context:1 selectedOffer:v9];
        goto LABEL_18;
      }

      goto LABEL_17;
    }

    v17 = [v9 installmentSelectedPaymentOffer];
    v22 = [v17 selectionType];
    if (v22 == 1)
    {
      v23 = objc_alloc(MEMORY[0x1E69B8CE0]);
      v24 = [v11 identifier];
      v20 = [v23 initWithTransaction:v6 passUniqueID:v14 context:1 criteriaIdentifier:v24];

      goto LABEL_27;
    }

    if (v22)
    {
      v20 = 0;
      goto LABEL_27;
    }

    v18 = [objc_alloc(MEMORY[0x1E69B8CD8]) initWithTransaction:v6 context:1 selectedOffer:v9];
  }

  else
  {
    if (!v10 || ![v10 hasPreconfiguredOffers] || !objc_msgSend(v11, "supportsInstorePrePurchase") || (objc_msgSend(v11, "suppressPayInFull") & 1) != 0)
    {
      goto LABEL_17;
    }

    v16 = objc_alloc(MEMORY[0x1E69B8CC0]);
    v17 = [v11 identifier];
    v18 = [v16 initWithTransaction:v6 passUniqueID:v7 context:1 criteriaIdentifier:v17];
  }

  v20 = v18;
LABEL_27:

LABEL_18:

  return v20;
}

- (void)_insertPaymentTransactionForActiveBarcode
{
  v10 = [MEMORY[0x1E69B8EA8] paymentTransactionWithSource:1];
  [v10 setOriginatedByDevice:1];
  v3 = PKTransactionPaymentHashForBarcodeIdentifier();
  [v10 setPaymentHash:v3];

  [v10 addUpdateReasons:0x20000];
  v4 = [MEMORY[0x1E695DF00] date];
  [v10 setTransactionDate:v4];

  paymentService = self->_paymentService;
  v6 = [(PKPassFooterContentView *)self paymentPass];
  v7 = [v6 uniqueID];
  v8 = [(PKPassFooterContentView *)self paymentPass];
  v9 = [v8 devicePrimaryBarcodePaymentApplication];
  [(PKPaymentService *)paymentService insertOrUpdatePaymentTransaction:v10 forPassUniqueIdentifier:v7 paymentApplication:v9 completion:0];
}

- (void)_processValueAddedServiceTransactionsForContext:(id)a3 withCompletion:(id)a4
{
  v41 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v24 = a4;
  v25 = v5;
  v6 = [v5 valueAddedServicePasses];
  v23 = [v5 valueAddedServiceTransactions];
  v21 = [v5 transaction];
  v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v8 = v6;
  v9 = [v8 countByEnumeratingWithState:&v36 objects:v40 count:16];
  if (v9)
  {
    v10 = *v37;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v37 != v10)
        {
          objc_enumerationMutation(v8);
        }

        v12 = *(*(&v36 + 1) + 8 * i);
        v13 = [v12 passTypeIdentifier];
        v14 = [v13 dataUsingEncoding:4];
        v15 = [v14 SHA256Hash];

        v16 = [v7 objectForKey:v15];
        if (!v16)
        {
          v16 = [MEMORY[0x1E695DF70] array];
          [v7 setObject:v16 forKey:v15];
        }

        [v16 addObject:v12];
      }

      v9 = [v8 countByEnumeratingWithState:&v36 objects:v40 count:16];
    }

    while (v9);
  }

  v32 = 0;
  v33 = &v32;
  v34 = 0x2020000000;
  v35 = 0;
  v17 = [objc_alloc(MEMORY[0x1E695DFA0]) initWithCapacity:{objc_msgSend(v8, "count")}];
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __93__PKPassPaymentContainerView__processValueAddedServiceTransactionsForContext_withCompletion___block_invoke;
  v26[3] = &unk_1E80218C8;
  v31 = &v32;
  v18 = v7;
  v27 = v18;
  v19 = v17;
  v28 = v19;
  v29 = self;
  v20 = v21;
  v30 = v20;
  [v23 enumerateObjectsUsingBlock:v26];
  if (v24)
  {
    v24[2](v24, *(v33 + 24), v19);
  }

  _Block_object_dispose(&v32, 8);
}

void __93__PKPassPaymentContainerView__processValueAddedServiceTransactionsForContext_withCompletion___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v33 = *MEMORY[0x1E69E9840];
  v6 = a2;
  if ([v6 didSucceed])
  {
    *(*(*(a1 + 64) + 8) + 24) = 1;
    v7 = *(a1 + 32);
    v8 = [v6 merchant];
    v9 = [v8 identifier];
    v10 = [v7 objectForKey:v9];

    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v11 = v10;
    v12 = [v11 countByEnumeratingWithState:&v28 objects:v32 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v29;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v29 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v28 + 1) + 8 * i);
          [*(a1 + 40) addObject:{v16, v28}];
          v17 = *(*(a1 + 48) + 480);
          v18 = [v16 uniqueID];
          [v17 insertOrUpdateValueAddedServiceTransaction:v6 forPassUniqueIdentifier:v18 paymentTransaction:*(a1 + 56) completion:0];
        }

        v13 = [v11 countByEnumeratingWithState:&v28 objects:v32 count:16];
      }

      while (v13);
    }
  }

  else if ([v6 error] == 3)
  {
    v19 = *(a1 + 32);
    v20 = [v6 merchant];
    v21 = [v20 identifier];
    v22 = [v19 objectForKey:v21];

    [*(a1 + 48) _setValueAddedServicePasses:v22];
    v23 = [v6 terminalMode];
    if (![*(a1 + 48) style] && (v23 == 4 || v23 == 2))
    {
      v26 = [v22 firstObject];
      v27 = [v26 uniqueID];

      [*(a1 + 48) _presentPassWithUniqueIdentifier:v27 additionalPassUniqueIdentifiers:0 payState:5];
    }

    else
    {
      [*(a1 + 48) _resetCardEmulationWithCompletion:0];
      *a4 = 1;
    }
  }

  else if ([v6 error] == 1)
  {
    v24 = [v6 merchantURL];
    v25 = [v24 length];

    if (v25)
    {
      [*(*(a1 + 48) + 480) insertOrUpdateValueAddedServiceTransaction:v6 forPassUniqueIdentifier:0 paymentTransaction:0 completion:0];
    }
  }
}

- (void)_retrieveDecryptedBarcodeWithAuthorization:(id)a3 shouldFetchBarcodeIfNecessary:(BOOL)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a5;
  if (v9 && [(PKPassPaymentContainerView *)self _authenticationAllowed])
  {
    objc_initWeak(&location, self);
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __114__PKPassPaymentContainerView__retrieveDecryptedBarcodeWithAuthorization_shouldFetchBarcodeIfNecessary_completion___block_invoke;
    v10[3] = &unk_1E8021968;
    objc_copyWeak(&v13, &location);
    v12 = v9;
    v11 = v8;
    v14 = a4;
    [(PKPassPaymentContainerView *)self _beginSessionExchange:v10];

    objc_destroyWeak(&v13);
    objc_destroyWeak(&location);
  }
}

void __114__PKPassPaymentContainerView__retrieveDecryptedBarcodeWithAuthorization_shouldFetchBarcodeIfNecessary_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v8 = WeakRetained;
  if (!WeakRetained || ([WeakRetained _authenticationAllowed] & 1) == 0)
  {
    v9 = *(a1 + 40);
    v10 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E69BBBC8] code:-1 userInfo:0];
    (*(v9 + 16))(v9, 0, 0, v10);
LABEL_6:

    goto LABEL_7;
  }

  if (!v6)
  {
    v11 = [v8 paymentPass];
    v12 = [v11 uniqueID];

    v13 = v8[60];
    v14 = *(a1 + 32);
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __114__PKPassPaymentContainerView__retrieveDecryptedBarcodeWithAuthorization_shouldFetchBarcodeIfNecessary_completion___block_invoke_2;
    v15[3] = &unk_1E8021940;
    objc_copyWeak(&v19, (a1 + 48));
    v18 = *(a1 + 40);
    v20 = *(a1 + 56);
    v10 = v12;
    v16 = v10;
    v17 = *(a1 + 32);
    [v13 retrieveDecryptedBarcodeCredentialForPassUniqueIdentifier:v10 authorization:v14 sessionExchangeToken:v5 withCompletion:v15];

    objc_destroyWeak(&v19);
    goto LABEL_6;
  }

  [v8 _endSessionExchange];
  (*(*(a1 + 40) + 16))();
LABEL_7:
}

void __114__PKPassPaymentContainerView__retrieveDecryptedBarcodeWithAuthorization_shouldFetchBarcodeIfNecessary_completion___block_invoke_2(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __114__PKPassPaymentContainerView__retrieveDecryptedBarcodeWithAuthorization_shouldFetchBarcodeIfNecessary_completion___block_invoke_3;
  v14[3] = &unk_1E8021918;
  objc_copyWeak(&v21, (a1 + 56));
  v10 = *(a1 + 48);
  v15 = v7;
  v16 = v8;
  v20 = v10;
  v17 = v9;
  v22 = *(a1 + 64);
  v18 = *(a1 + 32);
  v19 = *(a1 + 40);
  v11 = v9;
  v12 = v8;
  v13 = v7;
  dispatch_async(MEMORY[0x1E69E96A0], v14);

  objc_destroyWeak(&v21);
}

void __114__PKPassPaymentContainerView__retrieveDecryptedBarcodeWithAuthorization_shouldFetchBarcodeIfNecessary_completion___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 80));
  v3 = WeakRetained;
  if (!WeakRetained)
  {
    goto LABEL_9;
  }

  [WeakRetained _endSessionExchange];
  v4 = [*(a1 + 48) domain];
  if (![v4 isEqualToString:*MEMORY[0x1E69BB780]])
  {

LABEL_9:
    (*(*(a1 + 72) + 16))();
    goto LABEL_10;
  }

  v5 = [*(a1 + 48) code];

  if (v5 != 3 || *(a1 + 88) != 1)
  {
    goto LABEL_9;
  }

  v6 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1BD026000, v6, OS_LOG_TYPE_DEFAULT, "No valid barcode found, trying to fetch barcodes", buf, 2u);
  }

  v7 = *(a1 + 56);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __114__PKPassPaymentContainerView__retrieveDecryptedBarcodeWithAuthorization_shouldFetchBarcodeIfNecessary_completion___block_invoke_413;
  v8[3] = &unk_1E80218F0;
  v10 = *(a1 + 72);
  objc_copyWeak(&v11, (a1 + 80));
  v9 = *(a1 + 64);
  [v3 _fetchBarcodeForPassUniqueIdentifier:v7 shouldReregisterIfNecessary:1 withCompletion:v8];

  objc_destroyWeak(&v11);
LABEL_10:
}

void __114__PKPassPaymentContainerView__retrieveDecryptedBarcodeWithAuthorization_shouldFetchBarcodeIfNecessary_completion___block_invoke_413(uint64_t a1, uint64_t a2, void *a3)
{
  v12 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 134218242;
    v9 = a2;
    v10 = 2112;
    v11 = v5;
    _os_log_impl(&dword_1BD026000, v6, OS_LOG_TYPE_DEFAULT, "Fetch barcode completed, fetched %ld, error: %@", &v8, 0x16u);
  }

  if (v5)
  {
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    WeakRetained = objc_loadWeakRetained((a1 + 48));
    [WeakRetained _retrieveDecryptedBarcodeWithAuthorization:*(a1 + 32) shouldFetchBarcodeIfNecessary:0 completion:*(a1 + 40)];
  }
}

- (void)_fetchBarcodeForPassUniqueIdentifier:(id)a3 shouldReregisterIfNecessary:(BOOL)a4 withCompletion:(id)a5
{
  v8 = a3;
  v9 = a5;
  if (v9)
  {
    objc_initWeak(&location, self);
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __110__PKPassPaymentContainerView__fetchBarcodeForPassUniqueIdentifier_shouldReregisterIfNecessary_withCompletion___block_invoke;
    v10[3] = &unk_1E8021968;
    objc_copyWeak(&v13, &location);
    v12 = v9;
    v11 = v8;
    v14 = a4;
    [(PKPassPaymentContainerView *)self _beginSessionExchange:v10];

    objc_destroyWeak(&v13);
    objc_destroyWeak(&location);
  }
}

void __110__PKPassPaymentContainerView__fetchBarcodeForPassUniqueIdentifier_shouldReregisterIfNecessary_withCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v8 = WeakRetained;
  if (WeakRetained)
  {
    if (v6)
    {
      [WeakRetained _endSessionExchange];
      (*(*(a1 + 40) + 16))();
    }

    else
    {
      v11 = WeakRetained[60];
      v12 = *(a1 + 32);
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = __110__PKPassPaymentContainerView__fetchBarcodeForPassUniqueIdentifier_shouldReregisterIfNecessary_withCompletion___block_invoke_2;
      v13[3] = &unk_1E80219B8;
      objc_copyWeak(&v16, (a1 + 48));
      v15 = *(a1 + 40);
      v17 = *(a1 + 56);
      v14 = *(a1 + 32);
      [v11 fetchBarcodesForPassUniqueIdentifier:v12 sessionExchangeToken:v5 withCompletion:v13];

      objc_destroyWeak(&v16);
    }
  }

  else
  {
    v9 = *(a1 + 40);
    v10 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E69BBBC8] code:-1 userInfo:0];
    (*(v9 + 16))(v9, 0, v10);
  }
}

void __110__PKPassPaymentContainerView__fetchBarcodeForPassUniqueIdentifier_shouldReregisterIfNecessary_withCompletion___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __110__PKPassPaymentContainerView__fetchBarcodeForPassUniqueIdentifier_shouldReregisterIfNecessary_withCompletion___block_invoke_3;
  block[3] = &unk_1E801E330;
  objc_copyWeak(&v10, (a1 + 48));
  v9 = *(a1 + 40);
  v7 = v4;
  v11 = *(a1 + 56);
  v8 = *(a1 + 32);
  v5 = v4;
  dispatch_async(MEMORY[0x1E69E96A0], block);

  objc_destroyWeak(&v10);
}

void __110__PKPassPaymentContainerView__fetchBarcodeForPassUniqueIdentifier_shouldReregisterIfNecessary_withCompletion___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v3 = WeakRetained;
  if (!WeakRetained)
  {
    goto LABEL_9;
  }

  [WeakRetained _endSessionExchange];
  v4 = [*(a1 + 32) domain];
  if (![v4 isEqualToString:*MEMORY[0x1E69BB780]])
  {

LABEL_9:
    (*(*(a1 + 48) + 16))();
    goto LABEL_10;
  }

  v5 = [*(a1 + 32) code];

  if (v5 != 2 || *(a1 + 64) != 1)
  {
    goto LABEL_9;
  }

  v6 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1BD026000, v6, OS_LOG_TYPE_DEFAULT, "No valid certificate when fetching barcode, attempting to re-register auxiliary capability", buf, 2u);
  }

  v7 = *(a1 + 40);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __110__PKPassPaymentContainerView__fetchBarcodeForPassUniqueIdentifier_shouldReregisterIfNecessary_withCompletion___block_invoke_415;
  v8[3] = &unk_1E8021990;
  objc_copyWeak(&v11, (a1 + 56));
  v10 = *(a1 + 48);
  v9 = *(a1 + 40);
  [v3 _reregisterAuxiliaryCapabilityForPassUniqueIdentifier:v7 withCompletion:v8];

  objc_destroyWeak(&v11);
LABEL_10:
}

void __110__PKPassPaymentContainerView__fetchBarcodeForPassUniqueIdentifier_shouldReregisterIfNecessary_withCompletion___block_invoke_415(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v4 = WeakRetained;
  if (v5 || !WeakRetained)
  {
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    [WeakRetained _fetchBarcodeForPassUniqueIdentifier:*(a1 + 32) shouldReregisterIfNecessary:0 withCompletion:*(a1 + 40)];
  }
}

- (void)_reregisterAuxiliaryCapabilityForPassUniqueIdentifier:(id)a3 withCompletion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    objc_initWeak(&location, self);
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __99__PKPassPaymentContainerView__reregisterAuxiliaryCapabilityForPassUniqueIdentifier_withCompletion___block_invoke;
    v8[3] = &unk_1E8021A08;
    objc_copyWeak(&v11, &location);
    v10 = v7;
    v9 = v6;
    [(PKPassPaymentContainerView *)self _beginSessionExchange:v8];

    objc_destroyWeak(&v11);
    objc_destroyWeak(&location);
  }
}

void __99__PKPassPaymentContainerView__reregisterAuxiliaryCapabilityForPassUniqueIdentifier_withCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v8 = WeakRetained;
  if (WeakRetained)
  {
    if (v6)
    {
      [WeakRetained _endSessionExchange];
      (*(*(a1 + 40) + 16))();
    }

    else
    {
      v11 = WeakRetained[60];
      v12 = *(a1 + 32);
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = __99__PKPassPaymentContainerView__reregisterAuxiliaryCapabilityForPassUniqueIdentifier_withCompletion___block_invoke_2;
      v13[3] = &unk_1E80219E0;
      objc_copyWeak(&v15, (a1 + 48));
      v14 = *(a1 + 40);
      [v11 registerAuxiliaryCapabilityForPassUniqueIdentifier:v12 sessionExchangeToken:v5 withCompletion:v13];

      objc_destroyWeak(&v15);
    }
  }

  else
  {
    v9 = *(a1 + 40);
    v10 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E69BBBC8] code:-1 userInfo:0];
    (*(v9 + 16))(v9, v10);
  }
}

void __99__PKPassPaymentContainerView__reregisterAuxiliaryCapabilityForPassUniqueIdentifier_withCompletion___block_invoke_2(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v12 = v3;
    _os_log_impl(&dword_1BD026000, v4, OS_LOG_TYPE_DEFAULT, "Re-register auxiliary capability finished with error: %@", buf, 0xCu);
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __99__PKPassPaymentContainerView__reregisterAuxiliaryCapabilityForPassUniqueIdentifier_withCompletion___block_invoke_416;
  block[3] = &unk_1E8011108;
  objc_copyWeak(&v10, (a1 + 40));
  v5 = *(a1 + 32);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], block);

  objc_destroyWeak(&v10);
}

void __99__PKPassPaymentContainerView__reregisterAuxiliaryCapabilityForPassUniqueIdentifier_withCompletion___block_invoke_416(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained _endSessionExchange];
  (*(*(a1 + 40) + 16))();
}

- (void)_dismissBarcodeViewControllerIfNecessaryWithCompletion:(id)a3
{
  v6 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_barcodeViewController);
  objc_storeWeak(&self->_barcodeViewController, 0);
  [WeakRetained invalidate];
  v5 = [WeakRetained presentingViewController];
  if (v5 && ([WeakRetained isBeingDismissed] & 1) == 0)
  {
    [v5 dismissViewControllerAnimated:-[PKPassPaymentContainerView _isBackgrounded](self completion:{"_isBackgrounded") ^ 1, v6}];
  }

  else if (v6)
  {
    v6[2]();
  }
}

- (void)_handleReceivedBarcodePaymentTransaction:(id)a3
{
  v40[2] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = v5;
  v7 = 24;
  if (self->_transitioning)
  {
    v7 = 23;
  }

  v8 = *(&self->super.super.super.super.isa + OBJC_IVAR___PKPassPaymentContainerView__paymentOffersController[v7]);
  if (self->_activeBarcodeIdentifier && ([v5 barcodeIdentifier], v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v9, "isEqualToString:", self->_activeBarcodeIdentifier), v9, v10) && (objc_storeStrong(&self->_transactionForDisplayedBarcode, a3), !self->_transactionAuthenticationInProgress) && (v8 & 0xFFFFFFFFFFFFFFFDLL) == 5 && self->_transactionSubstate <= 1uLL)
  {
    v11 = [v6 transactionStatus];
    if (v11)
    {
      if (v11 == 2)
      {
        v22 = MEMORY[0x1E69B8540];
        v23 = *MEMORY[0x1E69BB718];
        v37[0] = *MEMORY[0x1E69BB6C0];
        v37[1] = v23;
        v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:v37 count:2];
        v35 = *MEMORY[0x1E69BA680];
        v36 = *MEMORY[0x1E69BA6E8];
        v25 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v36 forKeys:&v35 count:1];
        [v22 subjects:v24 sendEvent:v25];

        [(PKPassPaymentContainerView *)self _endPaymentAuthorizationWithWillUpdateState:1];
        [(PKPassPaymentContainerView *)self _applyTerminalTransactionSubstateWithSuccess:0 reset:1];
        [(PKPassPaymentContainerView *)self _postDidDeauthorizeNotification];
      }

      else if (v11 == 1)
      {
        v12 = MEMORY[0x1E69B8540];
        v13 = *MEMORY[0x1E69BB718];
        v40[0] = *MEMORY[0x1E69BB6C0];
        v40[1] = v13;
        v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v40 count:2];
        v38 = *MEMORY[0x1E69BA680];
        v39 = *MEMORY[0x1E69BA6E0];
        v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v39 forKeys:&v38 count:1];
        [v12 subjects:v14 sendEvent:v15];

        [(PKPassPaymentContainerView *)self _endPaymentAuthorizationWithWillUpdateState:1];
        v16 = [v6 awards];
        if ([v16 count])
        {
          objc_initWeak(location, self);
          v17 = MEMORY[0x1E69B8650];
          v26[0] = MEMORY[0x1E69E9820];
          v26[1] = 3221225472;
          v26[2] = __71__PKPassPaymentContainerView__handleReceivedBarcodePaymentTransaction___block_invoke;
          v26[3] = &unk_1E801B258;
          objc_copyWeak(&v27, location);
          [v17 acquireAssertionOfType:4 withReason:@"Transaction Awards Display" completion:v26];
          objc_destroyWeak(&v27);
          objc_destroyWeak(location);
        }

        else
        {
          [(PKPassPaymentContainerView *)self _applyTerminalTransactionSubstateWithSuccess:1 reset:1];
        }

        [(PKPassPaymentContainerView *)self _postDidDeauthorizeNotification];
      }
    }

    else
    {
      [(PKPassPaymentContainerView *)self _performAuthenticationForTransactionIfNecessary:v6];
    }
  }

  else
  {
    v18 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      activeBarcodeIdentifier = self->_activeBarcodeIdentifier;
      transactionAuthenticationInProgress = self->_transactionAuthenticationInProgress;
      transactionSubstate = self->_transactionSubstate;
      *location = 138413058;
      *&location[4] = activeBarcodeIdentifier;
      v29 = 2048;
      v30 = transactionAuthenticationInProgress;
      v31 = 2048;
      v32 = v8;
      v33 = 2048;
      v34 = transactionSubstate;
      _os_log_impl(&dword_1BD026000, v18, OS_LOG_TYPE_DEFAULT, "Not handling transaction for barcode id: %@, authentication in progress: %ld, terminal state: %ld, transaction substate: %ld", location, 0x2Au);
    }
  }
}

void __71__PKPassPaymentContainerView__handleReceivedBarcodePaymentTransaction___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v7 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    if (v6)
    {
      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3221225472;
      v10[2] = __71__PKPassPaymentContainerView__handleReceivedBarcodePaymentTransaction___block_invoke_2;
      v10[3] = &unk_1E8010998;
      objc_copyWeak(&v11, (a1 + 32));
      [v6 setInvalidationHandler:v10];
      objc_storeStrong(WeakRetained + 120, a2);
      objc_destroyWeak(&v11);
    }

    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __71__PKPassPaymentContainerView__handleReceivedBarcodePaymentTransaction___block_invoke_3;
    v9[3] = &unk_1E8010970;
    v9[4] = WeakRetained;
    dispatch_async(MEMORY[0x1E69E96A0], v9);
  }
}

void __71__PKPassPaymentContainerView__handleReceivedBarcodePaymentTransaction___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained[120];
    WeakRetained[120] = 0;
    v3 = WeakRetained;

    WeakRetained = v3;
  }
}

uint64_t __71__PKPassPaymentContainerView__handleReceivedBarcodePaymentTransaction___block_invoke_3(uint64_t a1)
{
  [*(a1 + 32) _applyTerminalTransactionSubstateWithSuccess:1 reset:0];
  [*(a1 + 32) _finishHoldingTerminalTransactionSubstateAfterDelay:5.0];
  v2 = *(a1 + 32);

  return [v2 _updateContentPrimaryView];
}

- (void)_performAuthenticationForTransactionIfNecessary:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 authenticationContext];
  v6 = [v5 requestedAuthenticationMechanisms];
  v7 = 24;
  if (self->_transitioning)
  {
    v7 = 23;
  }

  v8 = *(&self->super.super.super.super.isa + OBJC_IVAR___PKPassPaymentContainerView__paymentOffersController[v7]);
  if (![v4 transactionStatus] && v6 && (objc_msgSend(v5, "complete") & 1) == 0 && PKTransactionAuthenticationMechanismIsValid() && (v8 & 0xFFFFFFFFFFFFFFFDLL) == 5)
  {
    if (v6)
    {
      [(PKPassPaymentContainerView *)self _performPaymentPINCollectionForTransaction:v4];
    }

    else if ((v6 & 4) != 0)
    {
      [(PKPassPaymentContainerView *)self _performUserConfirmationForTransaction:v4];
    }

    else if ((v6 & 8) != 0)
    {
      [(PKPassPaymentContainerView *)self _performApplicationRedirectForTransaction:v4];
    }

    else if ((v6 & 2) != 0)
    {
      [(PKPassPaymentContainerView *)self _performTransactionSignatureSubmissionForTransaction:v4];
    }

    else
    {
      v11 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v12) = 0;
        _os_log_impl(&dword_1BD026000, v11, OS_LOG_TYPE_DEFAULT, "Unsupported transaction authentication mechanism for UI", &v12, 2u);
      }
    }
  }

  else
  {
    v9 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      activeBarcodeIdentifier = self->_activeBarcodeIdentifier;
      v12 = 138413314;
      v13 = activeBarcodeIdentifier;
      v14 = 2048;
      v15 = [v4 transactionStatus];
      v16 = 2048;
      v17 = v6;
      v18 = 2048;
      v19 = [v5 complete];
      v20 = 2048;
      v21 = v8;
      _os_log_impl(&dword_1BD026000, v9, OS_LOG_TYPE_DEFAULT, "Not performing transaction authentication for barcode id %@, transaction status %ld, authentication mechanisms: %ld, authentication complete: %ld, terminal state: %ld", &v12, 0x34u);
    }
  }
}

- (void)_performTransactionSignatureSubmissionForTransaction:(id)a3
{
  v4 = a3;
  [(PKPassPaymentContainerView *)self _setTransactionAuthenticationInProgress:1];
  [(PKPassPaymentContainerView *)self _applyPaymentIndefiniteSuccessState];
  objc_initWeak(&location, self);
  v5 = [v4 identifier];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __83__PKPassPaymentContainerView__performTransactionSignatureSubmissionForTransaction___block_invoke;
  v6[3] = &unk_1E8021A30;
  objc_copyWeak(&v7, &location);
  [(PKPassPaymentContainerView *)self _submitSignatureForTransactionIdentifier:v5 completion:v6];

  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

void __83__PKPassPaymentContainerView__performTransactionSignatureSubmissionForTransaction___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v7 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v6 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _setTransactionAuthenticationInProgress:0];
    if (a3)
    {
      [v6 _endPaymentAuthorizationWithWillUpdateState:1];
      [v6 _applyTerminalTransactionSubstateWithSuccess:0 reset:1];
    }

    else
    {
      [v6 _handleReceivedBarcodePaymentTransaction:v7];
    }
  }
}

- (void)_submitSignatureForTransactionIdentifier:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v22 = 0;
  v23 = &v22;
  v24 = 0x2020000000;
  v25 = *MEMORY[0x1E69DDBE8];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __82__PKPassPaymentContainerView__submitSignatureForTransactionIdentifier_completion___block_invoke;
  aBlock[3] = &unk_1E8011A18;
  aBlock[4] = &v22;
  v8 = _Block_copy(aBlock);
  v9 = [MEMORY[0x1E69DC668] sharedApplication];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __82__PKPassPaymentContainerView__submitSignatureForTransactionIdentifier_completion___block_invoke_2;
  v19[3] = &unk_1E8010B50;
  v10 = v7;
  v20 = v10;
  v11 = [v9 beginBackgroundTaskWithName:@"Submit Transaction Details Signature" expirationHandler:v19];
  v23[3] = v11;

  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __82__PKPassPaymentContainerView__submitSignatureForTransactionIdentifier_completion___block_invoke_3;
  v15[3] = &unk_1E8021AF8;
  v15[4] = self;
  v12 = v8;
  v17 = v12;
  v13 = v10;
  v18 = v13;
  v14 = v6;
  v16 = v14;
  [(PKPassPaymentContainerView *)self _beginSessionExchange:v15];

  _Block_object_dispose(&v22, 8);
}

void __82__PKPassPaymentContainerView__submitSignatureForTransactionIdentifier_completion___block_invoke(uint64_t a1)
{
  v1 = *MEMORY[0x1E69DDBE8];
  if (*(*(*(a1 + 32) + 8) + 24) != *MEMORY[0x1E69DDBE8])
  {
    v3 = [MEMORY[0x1E69DC668] sharedApplication];
    [v3 endBackgroundTask:*(*(*(a1 + 32) + 8) + 24)];

    *(*(*(a1 + 32) + 8) + 24) = v1;
  }
}

void __82__PKPassPaymentContainerView__submitSignatureForTransactionIdentifier_completion___block_invoke_2(uint64_t a1)
{
  v7[1] = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  if (v1)
  {
    v2 = MEMORY[0x1E696ABC0];
    v3 = *MEMORY[0x1E69BBBC8];
    v6 = *MEMORY[0x1E696A278];
    v7[0] = @"Submit transaction details signature background task timeout";
    v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:&v6 count:1];
    v5 = [v2 errorWithDomain:v3 code:-1 userInfo:v4];
    (*(v1 + 16))(v1, 0, v5);
  }
}

void __82__PKPassPaymentContainerView__submitSignatureForTransactionIdentifier_completion___block_invoke_3(id *a1, void *a2, void *a3)
{
  v26 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v5)
  {
    v8 = v6 == 0;
  }

  else
  {
    v8 = 0;
  }

  v9 = !v8;
  if (!v8)
  {
    [a1[4] _endSessionExchange];
    if (*(a1[4] + 63))
    {
      v10 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v25 = v7;
        _os_log_impl(&dword_1BD026000, v10, OS_LOG_TYPE_DEFAULT, "Not submitting transaction details signature due to begin session exchange failure: %@", buf, 0xCu);
      }

      (*(a1[6] + 2))();
      v11 = a1[7];
      if (v11)
      {
        v11[2](v11, 0, v7);
      }

      goto LABEL_17;
    }

    v5 = 0;
  }

  v12 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v25 = v5;
    _os_log_impl(&dword_1BD026000, v12, OS_LOG_TYPE_DEFAULT, "Submitting transaction details signature with token: %@", buf, 0xCu);
  }

  v13 = *(a1[4] + 60);
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __82__PKPassPaymentContainerView__submitSignatureForTransactionIdentifier_completion___block_invoke_429;
  v20[3] = &unk_1E8021AD0;
  v14 = a1[5];
  v23 = v9;
  *&v15 = v14;
  *(&v15 + 1) = a1[4];
  v19 = v15;
  v16 = a1[6];
  v17 = a1[7];
  *&v18 = v16;
  *(&v18 + 1) = v17;
  v21 = v19;
  v22 = v18;
  [v13 submitTransactionSignatureForTransactionIdentifier:v14 sessionExchangeToken:v5 completion:v20];

LABEL_17:
}

void __82__PKPassPaymentContainerView__submitSignatureForTransactionIdentifier_completion___block_invoke_429(uint64_t a1, void *a2, void *a3)
{
  v29 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 32);
    [v5 transactionStatus];
    v9 = PKPaymentTransactionStatusToString();
    v10 = [v5 authenticationContext];
    *buf = 138413058;
    v22 = v8;
    v23 = 2112;
    v24 = v9;
    v25 = 2112;
    v26 = v10;
    v27 = 2112;
    v28 = v6;
    _os_log_impl(&dword_1BD026000, v7, OS_LOG_TYPE_DEFAULT, "Submitted transaction details signature for transaction %@, updated transaction status: %@, updated authentication context %@, error: %@", buf, 0x2Au);
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __82__PKPassPaymentContainerView__submitSignatureForTransactionIdentifier_completion___block_invoke_430;
  block[3] = &unk_1E8021AA8;
  v20 = *(a1 + 64);
  v11 = *(a1 + 48);
  block[4] = *(a1 + 40);
  v15 = v6;
  v18 = v11;
  v19 = *(a1 + 56);
  v16 = *(a1 + 32);
  v17 = v5;
  v12 = v5;
  v13 = v6;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __82__PKPassPaymentContainerView__submitSignatureForTransactionIdentifier_completion___block_invoke_430(uint64_t a1)
{
  if ((*(a1 + 80) & 1) == 0)
  {
    [*(a1 + 32) _endSessionExchange];
  }

  v2 = [*(a1 + 40) domain];
  if ([v2 isEqualToString:*MEMORY[0x1E69BB780]])
  {
    v3 = [*(a1 + 40) code];

    if (v3 == 2)
    {
      v4 = *(a1 + 32);
      v5 = [v4 paymentPass];
      v6 = [v5 uniqueID];
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = __82__PKPassPaymentContainerView__submitSignatureForTransactionIdentifier_completion___block_invoke_2_431;
      v11[3] = &unk_1E8021A80;
      v13 = *(a1 + 64);
      v7 = *(a1 + 72);
      v8 = *(a1 + 32);
      v14 = v7;
      v11[4] = v8;
      v12 = *(a1 + 48);
      [v4 _reregisterAuxiliaryCapabilityForPassUniqueIdentifier:v6 withCompletion:v11];

      return;
    }
  }

  else
  {
  }

  (*(*(a1 + 64) + 16))();
  v9 = *(a1 + 72);
  if (v9)
  {
    v10 = *(v9 + 16);

    v10();
  }
}

void __82__PKPassPaymentContainerView__submitSignatureForTransactionIdentifier_completion___block_invoke_2_431(uint64_t a1, void *a2)
{
  v3 = a2;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __82__PKPassPaymentContainerView__submitSignatureForTransactionIdentifier_completion___block_invoke_3_432;
  block[3] = &unk_1E8021A58;
  v4 = *(a1 + 48);
  v11 = v3;
  v5 = *(a1 + 56);
  v9 = *(a1 + 32);
  v6 = *(&v9 + 1);
  *&v7 = v4;
  *(&v7 + 1) = v5;
  v13 = v7;
  v12 = v9;
  v8 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

uint64_t __82__PKPassPaymentContainerView__submitSignatureForTransactionIdentifier_completion___block_invoke_3_432(void *a1)
{
  (*(a1[7] + 16))();
  if (a1[4])
  {
    result = a1[8];
    if (result)
    {
      v3 = *(result + 16);

      return v3();
    }
  }

  else
  {
    v4 = a1[5];
    v5 = a1[6];
    v6 = a1[8];

    return [v4 _submitSignatureForTransactionIdentifier:v5 completion:v6];
  }

  return result;
}

- (void)_performPaymentPINCollectionForTransaction:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x1E69B8540] archivedSessionTokenForSubject:*MEMORY[0x1E69BB718]];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = [MEMORY[0x1E69B8540] archivedSessionTokenForSubject:*MEMORY[0x1E69BB6C0]];
  }

  v8 = v7;

  v9 = [PKTransactionAuthenticationPasscodeViewController alloc];
  v10 = [(PKPassFooterContentView *)self paymentPass];
  v11 = [v10 uniqueID];
  v12 = [v4 identifier];
  v13 = [(PKTransactionAuthenticationPasscodeViewController *)v9 initWithPassUniqueIdentifier:v11 transactionIdentifier:v12 archivedAnalyticsSessionToken:v8];

  [(PKTransactionAuthenticationPasscodeViewController *)v13 setDelegate:self];
  objc_initWeak(&location, self);
  [(PKPassPaymentContainerView *)self _setTransactionAuthenticationInProgress:1];
  objc_storeWeak(&self->_activeTransactionAuthenticationViewController, v13);
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __73__PKPassPaymentContainerView__performPaymentPINCollectionForTransaction___block_invoke;
  v15[3] = &unk_1E80110E0;
  objc_copyWeak(&v17, &location);
  v14 = v13;
  v16 = v14;
  [(PKPassPaymentContainerView *)self _dismissBarcodeViewControllerIfNecessaryWithCompletion:v15];

  objc_destroyWeak(&v17);
  objc_destroyWeak(&location);
}

void __73__PKPassPaymentContainerView__performPaymentPINCollectionForTransaction___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [WeakRetained pkui_viewControllerFromResponderChain];
  v4 = *(a1 + 32);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __73__PKPassPaymentContainerView__performPaymentPINCollectionForTransaction___block_invoke_2;
  v5[3] = &unk_1E8010998;
  objc_copyWeak(&v6, (a1 + 40));
  [v3 presentViewController:v4 animated:1 completion:v5];

  objc_destroyWeak(&v6);
}

void __73__PKPassPaymentContainerView__performPaymentPINCollectionForTransaction___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _setTransactionAuthenticationUIActive:1];
}

- (void)_performApplicationRedirectForTransaction:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __72__PKPassPaymentContainerView__performApplicationRedirectForTransaction___block_invoke;
  aBlock[3] = &unk_1E80110E0;
  objc_copyWeak(&v16, &location);
  v5 = v4;
  v15 = v5;
  v6 = _Block_copy(aBlock);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __72__PKPassPaymentContainerView__performApplicationRedirectForTransaction___block_invoke_5;
  v11[3] = &unk_1E80111D0;
  objc_copyWeak(&v13, &location);
  v7 = v6;
  v12 = v7;
  v8 = _Block_copy(v11);
  [(PKPassPaymentContainerView *)self _setTransactionAuthenticationInProgress:1];
  if ([(PKLinkedApplication *)self->_linkedApplication state])
  {
    v8[2](v8);
  }

  else
  {
    linkedApplicationUpdateCompletionHandlers = self->_linkedApplicationUpdateCompletionHandlers;
    v10 = _Block_copy(v8);
    [(NSMutableArray *)linkedApplicationUpdateCompletionHandlers addObject:v10];

    [(PKLinkedApplication *)self->_linkedApplication reloadApplicationStateIfNecessary];
  }

  objc_destroyWeak(&v13);
  objc_destroyWeak(&v16);
  objc_destroyWeak(&location);
}

void __72__PKPassPaymentContainerView__performApplicationRedirectForTransaction___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = [WeakRetained pkui_viewControllerFromResponderChain];
    if ([v3[129] state] != 1 || v4 == 0)
    {
      [v3 _setTransactionAuthenticationInProgress:0];
    }

    else
    {
      v6 = MEMORY[0x1E69DC648];
      v7 = PKLocalizedAquamanString(&cfstr_Cancel.isa);
      v35[0] = MEMORY[0x1E69E9820];
      v35[1] = 3221225472;
      v35[2] = __72__PKPassPaymentContainerView__performApplicationRedirectForTransaction___block_invoke_2;
      v35[3] = &unk_1E8012CC0;
      objc_copyWeak(v36, (a1 + 40));
      v27 = [v6 actionWithTitle:v7 style:1 handler:v35];

      v8 = [v3 paymentPass];
      v9 = [v8 organizationName];

      v10 = [v3[129] isInstalled];
      v11 = v10;
      if (v10)
      {
        v26 = PKLocalizedAquamanString(&cfstr_TransactionAut.isa, &stru_1F3BD5BF0.isa, v9);
        v12 = [*(a1 + 32) currencyAmount];
        v13 = [v12 formattedStringValue];
        v14 = [*(a1 + 32) merchant];
        v15 = [v14 displayName];
        v16 = PKLocalizedAquamanString(&cfstr_TransactionAut_0.isa, &stru_1F3BDAC30.isa, v13, v15, v9);

        v17 = PKLocalizedAquamanString(&cfstr_Open.isa);
        v18 = MEMORY[0x1E69BA358];
      }

      else
      {
        v26 = PKLocalizedAquamanString(&cfstr_TransactionAut_1.isa, &stru_1F3BD5BF0.isa, v9);
        v19 = [*(a1 + 32) merchant];
        v20 = [v19 displayName];
        v16 = PKLocalizedAquamanString(&cfstr_TransactionAut_2.isa, &stru_1F3BD6370.isa, v20, v9);

        v17 = PKLocalizedAquamanString(&cfstr_ViewInAppStore.isa);
        v18 = MEMORY[0x1E69BA360];
      }

      v21 = *v18;
      v22 = MEMORY[0x1E69DC648];
      v30[0] = MEMORY[0x1E69E9820];
      v30[1] = 3221225472;
      v30[2] = __72__PKPassPaymentContainerView__performApplicationRedirectForTransaction___block_invoke_3;
      v30[3] = &unk_1E8021B20;
      objc_copyWeak(&v33, (a1 + 40));
      v23 = v21;
      v31 = v23;
      v34 = v11;
      v32 = *(a1 + 32);
      v24 = [v22 actionWithTitle:v17 style:0 handler:v30];
      v25 = [MEMORY[0x1E69DC650] alertControllerWithTitle:v26 message:v16 preferredStyle:1];
      [v25 addAction:v27];
      [v25 addAction:v24];
      [v25 setPreferredAction:v24];
      objc_storeWeak(v3 + 123, v25);
      v28[0] = MEMORY[0x1E69E9820];
      v28[1] = 3221225472;
      v28[2] = __72__PKPassPaymentContainerView__performApplicationRedirectForTransaction___block_invoke_4;
      v28[3] = &unk_1E8010998;
      objc_copyWeak(&v29, (a1 + 40));
      [v4 presentViewController:v25 animated:1 completion:v28];
      objc_destroyWeak(&v29);

      objc_destroyWeak(&v33);
      objc_destroyWeak(v36);
    }
  }
}

void __72__PKPassPaymentContainerView__performApplicationRedirectForTransaction___block_invoke_2(uint64_t a1)
{
  v10[2] = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = MEMORY[0x1E69B8540];
    v3 = *MEMORY[0x1E69BB6C0];
    v10[0] = *MEMORY[0x1E69BB718];
    v10[1] = v3;
    v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:2];
    v5 = *MEMORY[0x1E69BA440];
    v8[0] = *MEMORY[0x1E69BA680];
    v8[1] = v5;
    v6 = *MEMORY[0x1E69BA350];
    v9[0] = *MEMORY[0x1E69BA6F0];
    v9[1] = v6;
    v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:v8 count:2];
    [v2 subjects:v4 sendEvent:v7];

    [WeakRetained _setTransactionAuthenticationUIActive:0];
    [WeakRetained _cancelTransactionAuthentication];
  }
}

void __72__PKPassPaymentContainerView__performApplicationRedirectForTransaction___block_invoke_3(uint64_t a1)
{
  v21[2] = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v3 = MEMORY[0x1E69B8540];
    v4 = *MEMORY[0x1E69BB6C0];
    v21[0] = *MEMORY[0x1E69BB718];
    v21[1] = v4;
    v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:2];
    v6 = *MEMORY[0x1E69BA6F0];
    v7 = *MEMORY[0x1E69BA440];
    v19[0] = *MEMORY[0x1E69BA680];
    v19[1] = v7;
    v8 = *(a1 + 32);
    v20[0] = v6;
    v20[1] = v8;
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:v19 count:2];
    [v3 subjects:v5 sendEvent:v9];

    if (*(a1 + 56) == 1)
    {
      v10 = WeakRetained[60];
      v11 = [WeakRetained paymentPass];
      v12 = [v11 uniqueID];
      v13 = [v10 transactionsAppLaunchTokenForPassWithUniqueIdentifier:v12];

      v14 = *(a1 + 40);
      v15 = [WeakRetained paymentPass];
      v16 = [PKPaymentNotificationAppURLHelper appURLForTransactionNotification:v14 excludeTransactionIdentifier:0 pass:v15 pathSuffix:@"/authenticate" appLaunchToken:v13];
    }

    else
    {
      v16 = 0;
    }

    v17 = WeakRetained[129];
    v18 = [WeakRetained pkui_viewControllerFromResponderChain];
    [v17 openApplication:v18 withLaunchOptions:0 launchURL:v16];

    [WeakRetained _endPaymentAuthorizationWithWillUpdateState:1];
    [WeakRetained _resetToIdleState];
  }
}

void __72__PKPassPaymentContainerView__performApplicationRedirectForTransaction___block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _setTransactionAuthenticationUIActive:1];
}

void __72__PKPassPaymentContainerView__performApplicationRedirectForTransaction___block_invoke_5(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __72__PKPassPaymentContainerView__performApplicationRedirectForTransaction___block_invoke_6;
  v3[3] = &unk_1E8010B50;
  v4 = *(a1 + 32);
  [WeakRetained _dismissBarcodeViewControllerIfNecessaryWithCompletion:v3];
}

- (void)_performUserConfirmationForTransaction:(id)a3
{
  v4 = a3;
  v5 = [(UIView *)self pkui_viewControllerFromResponderChain];
  if (v5)
  {
    objc_initWeak(location, self);
    v6 = MEMORY[0x1E69DC648];
    v7 = PKLocalizedAquamanString(&cfstr_TransactionAut_3.isa);
    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = __69__PKPassPaymentContainerView__performUserConfirmationForTransaction___block_invoke;
    v28[3] = &unk_1E8012CC0;
    objc_copyWeak(&v29, location);
    v8 = [v6 actionWithTitle:v7 style:1 handler:v28];

    v9 = MEMORY[0x1E69DC648];
    v10 = PKLocalizedAquamanString(&cfstr_TransactionAut_4.isa);
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __69__PKPassPaymentContainerView__performUserConfirmationForTransaction___block_invoke_2;
    v25[3] = &unk_1E80178E8;
    objc_copyWeak(&v27, location);
    v11 = v4;
    v26 = v11;
    v12 = [v9 actionWithTitle:v10 style:0 handler:v25];

    v13 = [v11 currencyAmount];
    v14 = [v13 formattedStringValue];
    v15 = [v11 merchant];
    v16 = [v15 displayName];
    v17 = PKLocalizedAquamanString(&cfstr_TransactionAut_5.isa, &stru_1F3BD6370.isa, v14, v16);

    v18 = MEMORY[0x1E69DC650];
    v19 = PKLocalizedAquamanString(&cfstr_TransactionAut_6.isa);
    v20 = [v18 alertControllerWithTitle:v19 message:v17 preferredStyle:1];

    [v20 addAction:v8];
    [v20 addAction:v12];
    [v20 setPreferredAction:v12];
    [(PKPassPaymentContainerView *)self _setTransactionAuthenticationInProgress:1];
    objc_storeWeak(&self->_activeTransactionAuthenticationViewController, v20);
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __69__PKPassPaymentContainerView__performUserConfirmationForTransaction___block_invoke_4;
    v22[3] = &unk_1E80110E0;
    objc_copyWeak(&v24, location);
    v21 = v20;
    v23 = v21;
    [(PKPassPaymentContainerView *)self _dismissBarcodeViewControllerIfNecessaryWithCompletion:v22];

    objc_destroyWeak(&v24);
    objc_destroyWeak(&v27);

    objc_destroyWeak(&v29);
    objc_destroyWeak(location);
  }
}

void __69__PKPassPaymentContainerView__performUserConfirmationForTransaction___block_invoke(uint64_t a1)
{
  v10[2] = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = MEMORY[0x1E69B8540];
    v3 = *MEMORY[0x1E69BB6C0];
    v10[0] = *MEMORY[0x1E69BB718];
    v10[1] = v3;
    v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:2];
    v5 = *MEMORY[0x1E69BA440];
    v8[0] = *MEMORY[0x1E69BA680];
    v8[1] = v5;
    v6 = *MEMORY[0x1E69BB3C0];
    v9[0] = *MEMORY[0x1E69BA6F0];
    v9[1] = v6;
    v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:v8 count:2];
    [v2 subjects:v4 sendEvent:v7];

    [WeakRetained _setTransactionAuthenticationUIActive:0];
    [WeakRetained _cancelTransactionAuthentication];
  }
}

void __69__PKPassPaymentContainerView__performUserConfirmationForTransaction___block_invoke_2(uint64_t a1, void *a2)
{
  v17[2] = *MEMORY[0x1E69E9840];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v5 = MEMORY[0x1E69B8540];
    v6 = *MEMORY[0x1E69BB6C0];
    v17[0] = *MEMORY[0x1E69BB718];
    v17[1] = v6;
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:2];
    v8 = *MEMORY[0x1E69BA6F0];
    v9 = *MEMORY[0x1E69BA440];
    v15[0] = *MEMORY[0x1E69BA680];
    v15[1] = v9;
    v10 = *MEMORY[0x1E69BB3C8];
    v16[0] = v8;
    v16[1] = v10;
    v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:v15 count:2];
    [v5 subjects:v7 sendEvent:v11];

    [WeakRetained _setTransactionAuthenticationUIActive:0];
    [WeakRetained _applyPaymentIndefiniteSuccessState];
    v12 = [*(a1 + 32) identifier];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __69__PKPassPaymentContainerView__performUserConfirmationForTransaction___block_invoke_3;
    v13[3] = &unk_1E8021A30;
    objc_copyWeak(&v14, (a1 + 40));
    [WeakRetained _submitUserConfirmation:1 forTransactionIdentifier:v12 completion:v13];

    objc_destroyWeak(&v14);
  }
}

void __69__PKPassPaymentContainerView__performUserConfirmationForTransaction___block_invoke_3(uint64_t a1, void *a2, uint64_t a3)
{
  v7 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v6 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _setTransactionAuthenticationInProgress:0];
    if (a3)
    {
      [v6 _endPaymentAuthorizationWithWillUpdateState:1];
      [v6 _applyTerminalTransactionSubstateWithSuccess:0 reset:1];
    }

    else
    {
      [v6 _handleReceivedBarcodePaymentTransaction:v7];
    }
  }
}

void __69__PKPassPaymentContainerView__performUserConfirmationForTransaction___block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [WeakRetained pkui_viewControllerFromResponderChain];
  v4 = *(a1 + 32);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __69__PKPassPaymentContainerView__performUserConfirmationForTransaction___block_invoke_5;
  v5[3] = &unk_1E8010998;
  objc_copyWeak(&v6, (a1 + 40));
  [v3 presentViewController:v4 animated:1 completion:v5];

  objc_destroyWeak(&v6);
}

void __69__PKPassPaymentContainerView__performUserConfirmationForTransaction___block_invoke_5(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _setTransactionAuthenticationUIActive:1];
}

- (void)_submitUserConfirmation:(BOOL)a3 forTransactionIdentifier:(id)a4 completion:(id)a5
{
  v8 = a4;
  v9 = a5;
  v25 = 0;
  v26 = &v25;
  v27 = 0x2020000000;
  v28 = *MEMORY[0x1E69DDBE8];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __90__PKPassPaymentContainerView__submitUserConfirmation_forTransactionIdentifier_completion___block_invoke;
  aBlock[3] = &unk_1E8011A18;
  aBlock[4] = &v25;
  v10 = _Block_copy(aBlock);
  v11 = [MEMORY[0x1E69DC668] sharedApplication];
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __90__PKPassPaymentContainerView__submitUserConfirmation_forTransactionIdentifier_completion___block_invoke_2;
  v22[3] = &unk_1E8010B50;
  v12 = v9;
  v23 = v12;
  v13 = [v11 beginBackgroundTaskWithName:@"Submit User Confirmation" expirationHandler:v22];
  v26[3] = v13;

  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __90__PKPassPaymentContainerView__submitUserConfirmation_forTransactionIdentifier_completion___block_invoke_3;
  v17[3] = &unk_1E8021BE8;
  v17[4] = self;
  v14 = v10;
  v19 = v14;
  v15 = v12;
  v20 = v15;
  v16 = v8;
  v18 = v16;
  v21 = a3;
  [(PKPassPaymentContainerView *)self _beginSessionExchange:v17];

  _Block_object_dispose(&v25, 8);
}

void __90__PKPassPaymentContainerView__submitUserConfirmation_forTransactionIdentifier_completion___block_invoke(uint64_t a1)
{
  v1 = *MEMORY[0x1E69DDBE8];
  if (*(*(*(a1 + 32) + 8) + 24) != *MEMORY[0x1E69DDBE8])
  {
    v3 = [MEMORY[0x1E69DC668] sharedApplication];
    [v3 endBackgroundTask:*(*(*(a1 + 32) + 8) + 24)];

    *(*(*(a1 + 32) + 8) + 24) = v1;
  }
}

void __90__PKPassPaymentContainerView__submitUserConfirmation_forTransactionIdentifier_completion___block_invoke_2(uint64_t a1)
{
  v7[1] = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  if (v1)
  {
    v2 = MEMORY[0x1E696ABC0];
    v3 = *MEMORY[0x1E69BBBC8];
    v6 = *MEMORY[0x1E696A278];
    v7[0] = @"Submit user confirmation background task timeout";
    v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:&v6 count:1];
    v5 = [v2 errorWithDomain:v3 code:-1 userInfo:v4];
    (*(v1 + 16))(v1, 0, v5);
  }
}

void __90__PKPassPaymentContainerView__submitUserConfirmation_forTransactionIdentifier_completion___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v27 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v5)
  {
    v8 = v6 == 0;
  }

  else
  {
    v8 = 0;
  }

  v9 = !v8;
  if (!v8)
  {
    [*(a1 + 32) _endSessionExchange];
    if (*(*(a1 + 32) + 504))
    {
      v10 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v26 = v7;
        _os_log_impl(&dword_1BD026000, v10, OS_LOG_TYPE_DEFAULT, "Not submitting user confirmation due to begin session exchange failure: %@", buf, 0xCu);
      }

      (*(*(a1 + 48) + 16))();
      v11 = *(a1 + 56);
      if (v11)
      {
        (*(v11 + 16))(v11, 0, v7);
      }

      goto LABEL_17;
    }

    v5 = 0;
  }

  v12 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v26 = v5;
    _os_log_impl(&dword_1BD026000, v12, OS_LOG_TYPE_DEFAULT, "Submitting user confirmation with token: %@", buf, 0xCu);
  }

  v13 = *(*(a1 + 32) + 480);
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __90__PKPassPaymentContainerView__submitUserConfirmation_forTransactionIdentifier_completion___block_invoke_483;
  v20[3] = &unk_1E8021BC0;
  v14 = *(a1 + 40);
  v23 = v9;
  *&v15 = v14;
  *(&v15 + 1) = *(a1 + 32);
  v19 = v15;
  v16 = *(a1 + 48);
  v17 = *(a1 + 56);
  *&v18 = v16;
  *(&v18 + 1) = v17;
  v21 = v19;
  v22 = v18;
  v24 = *(a1 + 64);
  [v13 submitUserConfirmation:1 forTransactionIdentifier:v14 sessionExchangeToken:v5 completion:v20];

LABEL_17:
}

void __90__PKPassPaymentContainerView__submitUserConfirmation_forTransactionIdentifier_completion___block_invoke_483(uint64_t a1, void *a2, void *a3)
{
  v30 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 32);
    [v5 transactionStatus];
    v9 = PKPaymentTransactionStatusToString();
    v10 = [v5 authenticationContext];
    *buf = 138413058;
    v23 = v8;
    v24 = 2112;
    v25 = v9;
    v26 = 2112;
    v27 = v10;
    v28 = 2112;
    v29 = v6;
    _os_log_impl(&dword_1BD026000, v7, OS_LOG_TYPE_DEFAULT, "Submitted user confirmation YES for transaction %@, updated transaction status: %@, updated authentication context %@, error: %@", buf, 0x2Au);
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __90__PKPassPaymentContainerView__submitUserConfirmation_forTransactionIdentifier_completion___block_invoke_484;
  block[3] = &unk_1E8021B98;
  v20 = *(a1 + 64);
  v11 = *(a1 + 48);
  block[4] = *(a1 + 40);
  v15 = v6;
  v18 = v11;
  v19 = *(a1 + 56);
  v21 = *(a1 + 65);
  v16 = *(a1 + 32);
  v17 = v5;
  v12 = v5;
  v13 = v6;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __90__PKPassPaymentContainerView__submitUserConfirmation_forTransactionIdentifier_completion___block_invoke_484(uint64_t a1)
{
  if ((*(a1 + 80) & 1) == 0)
  {
    [*(a1 + 32) _endSessionExchange];
  }

  v2 = [*(a1 + 40) domain];
  if ([v2 isEqualToString:*MEMORY[0x1E69BB780]])
  {
    v3 = [*(a1 + 40) code];

    if (v3 == 2)
    {
      v4 = *(a1 + 32);
      v5 = [v4 paymentPass];
      v6 = [v5 uniqueID];
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = __90__PKPassPaymentContainerView__submitUserConfirmation_forTransactionIdentifier_completion___block_invoke_2_485;
      v11[3] = &unk_1E8021B70;
      v13 = *(a1 + 64);
      v7 = *(a1 + 72);
      v8 = *(a1 + 32);
      v14 = v7;
      v11[4] = v8;
      v15 = *(a1 + 81);
      v12 = *(a1 + 48);
      [v4 _reregisterAuxiliaryCapabilityForPassUniqueIdentifier:v6 withCompletion:v11];

      return;
    }
  }

  else
  {
  }

  (*(*(a1 + 64) + 16))();
  v9 = *(a1 + 72);
  if (v9)
  {
    v10 = *(v9 + 16);

    v10();
  }
}

void __90__PKPassPaymentContainerView__submitUserConfirmation_forTransactionIdentifier_completion___block_invoke_2_485(uint64_t a1, void *a2)
{
  v3 = a2;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __90__PKPassPaymentContainerView__submitUserConfirmation_forTransactionIdentifier_completion___block_invoke_3_486;
  block[3] = &unk_1E8021B48;
  v4 = *(a1 + 48);
  v11 = v3;
  v5 = *(a1 + 56);
  v14 = *(a1 + 64);
  v9 = *(a1 + 32);
  v6 = *(&v9 + 1);
  *&v7 = v4;
  *(&v7 + 1) = v5;
  v13 = v7;
  v12 = v9;
  v8 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

uint64_t __90__PKPassPaymentContainerView__submitUserConfirmation_forTransactionIdentifier_completion___block_invoke_3_486(uint64_t a1)
{
  (*(*(a1 + 56) + 16))();
  if (*(a1 + 32))
  {
    result = *(a1 + 64);
    if (result)
    {
      v3 = *(result + 16);

      return v3();
    }
  }

  else
  {
    v4 = *(a1 + 72);
    v5 = *(a1 + 40);
    v6 = *(a1 + 48);
    v7 = *(a1 + 64);

    return [v5 _submitUserConfirmation:v4 forTransactionIdentifier:v6 completion:v7];
  }

  return result;
}

- (void)_setTransactionAuthenticationInProgress:(BOOL)a3
{
  if (self->_transactionAuthenticationInProgress == !a3)
  {
    self->_transactionAuthenticationInProgress = a3;
  }
}

- (void)_setTransactionAuthenticationUIActive:(BOOL)a3
{
  if (self->_transactionAuthenticationUIActive == !a3)
  {
    self->_transactionAuthenticationUIActive = a3;
    barcodeDisplayTimer = self->_barcodeDisplayTimer;
    if (barcodeDisplayTimer)
    {
      if (a3)
      {
        dispatch_suspend(barcodeDisplayTimer);
      }

      else
      {
        dispatch_resume(barcodeDisplayTimer);
      }
    }
  }
}

- (void)_resetTransactionAuthenticationIfNecessary
{
  WeakRetained = objc_loadWeakRetained(&self->_activeTransactionAuthenticationViewController);
  objc_storeWeak(&self->_activeTransactionAuthenticationViewController, 0);
  if (WeakRetained)
  {
    v3 = [WeakRetained presentingViewController];
    v4 = [WeakRetained isBeingDismissed];
    if (v3 && (v4 & 1) == 0)
    {
      [v3 dismissViewControllerAnimated:-[PKPassPaymentContainerView _isBackgrounded](self completion:{"_isBackgrounded") ^ 1, 0}];
    }
  }

  [(PKPassPaymentContainerView *)self _setTransactionAuthenticationUIActive:0];
  [(PKPassPaymentContainerView *)self _setTransactionAuthenticationInProgress:0];
}

- (void)_cancelTransactionAuthentication
{
  [(PKPassPaymentContainerView *)self _setTransactionAuthenticationInProgress:0];
  [(PKPassPaymentContainerView *)self _endPaymentAuthorizationWithWillUpdateState:1];
  v3 = PKLocalizedAquamanString(&cfstr_PaymentErrorUs.isa);
  [(PKPassPaymentContainerView *)self _applyPayState:9 withTextOverride:v3];

  [(PKPassPaymentContainerView *)self _resetToIdleStateAfterDelay:4.0];
}

- (void)passcodeViewController:(id)a3 requestSessionExchangeTokenWithHandler:(id)a4
{
  v5 = a4;
  v6 = v5;
  if (v5)
  {
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __92__PKPassPaymentContainerView_passcodeViewController_requestSessionExchangeTokenWithHandler___block_invoke;
    v7[3] = &unk_1E8010DD0;
    v7[4] = self;
    v8 = v5;
    dispatch_async(MEMORY[0x1E69E96A0], v7);
  }
}

void __92__PKPassPaymentContainerView_passcodeViewController_requestSessionExchangeTokenWithHandler___block_invoke(uint64_t a1)
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __92__PKPassPaymentContainerView_passcodeViewController_requestSessionExchangeTokenWithHandler___block_invoke_2;
  v2[3] = &unk_1E8021C10;
  v1 = *(a1 + 32);
  v3 = *(a1 + 40);
  [v1 _beginSessionExchange:v2];
}

void __92__PKPassPaymentContainerView_passcodeViewController_requestSessionExchangeTokenWithHandler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&dword_1BD026000, v7, OS_LOG_TYPE_DEFAULT, "Failed to obtain session exchange token for passcode encryption", v9, 2u);
    }

    v8 = *(*(a1 + 32) + 16);
  }

  else
  {
    v8 = *(*(a1 + 32) + 16);
  }

  v8();
}

- (void)passcodeViewControllerDidEndSessionExchange:(id)a3
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __74__PKPassPaymentContainerView_passcodeViewControllerDidEndSessionExchange___block_invoke;
  block[3] = &unk_1E8010970;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

- (void)passcodeViewControllerDidCancel:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __62__PKPassPaymentContainerView_passcodeViewControllerDidCancel___block_invoke;
  v6[3] = &unk_1E8012808;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  objc_copyWeak(&v8, &location);
  dispatch_async(MEMORY[0x1E69E96A0], v6);
  objc_destroyWeak(&v8);

  objc_destroyWeak(&location);
}

void __62__PKPassPaymentContainerView_passcodeViewControllerDidCancel___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __62__PKPassPaymentContainerView_passcodeViewControllerDidCancel___block_invoke_2;
  v3[3] = &unk_1E8010998;
  objc_copyWeak(&v4, (a1 + 48));
  [v1 _dismissTransactionAuthenticationPasscodeViewController:v2 withCompletion:v3];
  objc_destroyWeak(&v4);
}

void __62__PKPassPaymentContainerView_passcodeViewControllerDidCancel___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained _cancelTransactionAuthentication];
    WeakRetained = v2;
  }
}

- (void)passcodeViewController:(id)a3 didGenerateEncryptedPasscode:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_initWeak(&location, self);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __82__PKPassPaymentContainerView_passcodeViewController_didGenerateEncryptedPasscode___block_invoke;
  aBlock[3] = &unk_1E80110E0;
  objc_copyWeak(&v21, &location);
  v8 = v6;
  v20 = v8;
  v9 = _Block_copy(aBlock);
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __82__PKPassPaymentContainerView_passcodeViewController_didGenerateEncryptedPasscode___block_invoke_3;
  v13[3] = &unk_1E8021C88;
  v14 = v7;
  v15 = v8;
  v16 = self;
  v17 = v9;
  v10 = v8;
  v11 = v9;
  v12 = v7;
  objc_copyWeak(&v18, &location);
  dispatch_async(MEMORY[0x1E69E96A0], v13);
  objc_destroyWeak(&v18);

  objc_destroyWeak(&v21);
  objc_destroyWeak(&location);
}

void __82__PKPassPaymentContainerView_passcodeViewController_didGenerateEncryptedPasscode___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = *(a1 + 32);
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __82__PKPassPaymentContainerView_passcodeViewController_didGenerateEncryptedPasscode___block_invoke_2;
    v4[3] = &unk_1E8010998;
    objc_copyWeak(&v5, (a1 + 40));
    [WeakRetained _dismissTransactionAuthenticationPasscodeViewController:v3 withCompletion:v4];
    objc_destroyWeak(&v5);
  }
}

void __82__PKPassPaymentContainerView_passcodeViewController_didGenerateEncryptedPasscode___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained _setTransactionAuthenticationInProgress:0];
    [v2 _endPaymentAuthorizationWithWillUpdateState:1];
    [v2 _applyTerminalTransactionSubstateWithSuccess:0 reset:1];
    WeakRetained = v2;
  }
}

void __82__PKPassPaymentContainerView_passcodeViewController_didGenerateEncryptedPasscode___block_invoke_3(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v2 = [*(a1 + 40) transactionIdentifier];
    v3 = [*(a1 + 40) passUniqueIdentifier];
    [*(a1 + 48) _applyPaymentIndefiniteSuccessState];
    v4 = *(a1 + 48);
    v5 = *(a1 + 32);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __82__PKPassPaymentContainerView_passcodeViewController_didGenerateEncryptedPasscode___block_invoke_4;
    v9[3] = &unk_1E8021C60;
    objc_copyWeak(&v14, (a1 + 64));
    v6 = v3;
    v10 = v6;
    v7 = v2;
    v11 = v7;
    v13 = *(a1 + 56);
    v12 = *(a1 + 40);
    [v4 _submitEncryptedPIN:v5 forTransactionIdentifier:v7 completion:v9];

    objc_destroyWeak(&v14);
  }

  else
  {
    v8 = *(*(a1 + 56) + 16);

    v8();
  }
}

void __82__PKPassPaymentContainerView_passcodeViewController_didGenerateEncryptedPasscode___block_invoke_4(id *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __82__PKPassPaymentContainerView_passcodeViewController_didGenerateEncryptedPasscode___block_invoke_5;
  block[3] = &unk_1E80180D8;
  objc_copyWeak(&v16, a1 + 8);
  v10 = v5;
  v11 = a1[4];
  v12 = a1[5];
  v13 = v6;
  v15 = a1[7];
  v14 = a1[6];
  v7 = v6;
  v8 = v5;
  dispatch_async(MEMORY[0x1E69E96A0], block);

  objc_destroyWeak(&v16);
}

void __82__PKPassPaymentContainerView_passcodeViewController_didGenerateEncryptedPasscode___block_invoke_5(uint64_t a1)
{
  v57 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 80));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = WeakRetained[118];
    v5 = [*(a1 + 32) barcodeIdentifier];
    LODWORD(v4) = [v4 isEqual:v5];

    if (v4)
    {
      v6 = [*(a1 + 32) authenticationContext];
      v7 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v9 = *(a1 + 40);
        v8 = *(a1 + 48);
        [*(a1 + 32) transactionStatus];
        v10 = PKPaymentTransactionStatusToString();
        v11 = *(a1 + 56);
        *buf = 138413314;
        v48 = v9;
        v49 = 2112;
        v50 = v8;
        v51 = 2112;
        v52 = v10;
        v53 = 2112;
        v54 = v6;
        v55 = 2112;
        v56 = v11;
        _os_log_impl(&dword_1BD026000, v7, OS_LOG_TYPE_DEFAULT, "Submited payment PIN for pass %@, transaction %@, updated transaction status %@, updated authentication context %@, error: %@", buf, 0x34u);
      }

      if (*(a1 + 56))
      {
        (*(*(a1 + 72) + 16))();
      }

      else
      {
        v12 = v3[129];
        v13 = [v6 requestedAuthenticationMechanisms];
        if ([v6 authenticationFailure] == 2 && objc_msgSend(*(a1 + 32), "transactionStatus") != 1 && v13 <= 1 && objc_msgSend(v12, "state") == 1)
        {
          v14 = MEMORY[0x1E69DC648];
          v15 = PKLocalizedAquamanString(&cfstr_Cancel.isa);
          v44[0] = MEMORY[0x1E69E9820];
          v44[1] = 3221225472;
          v44[2] = __82__PKPassPaymentContainerView_passcodeViewController_didGenerateEncryptedPasscode___block_invoke_490;
          v44[3] = &unk_1E80178E8;
          objc_copyWeak(&v46, (a1 + 80));
          v45 = *(a1 + 64);
          v30 = [v14 actionWithTitle:v15 style:1 handler:v44];

          v16 = [v12 isInstalled];
          v17 = [v3 paymentPass];
          if (v16)
          {
            v18 = @"OPEN";
          }

          else
          {
            v18 = @"VIEW_IN_APP_STORE";
          }

          v31 = PKLocalizedAquamanString(&v18->isa);
          v19 = MEMORY[0x1E69DC648];
          v37[0] = MEMORY[0x1E69E9820];
          v37[1] = 3221225472;
          v37[2] = __82__PKPassPaymentContainerView_passcodeViewController_didGenerateEncryptedPasscode___block_invoke_3_492;
          v37[3] = &unk_1E8021C38;
          objc_copyWeak(&v42, (a1 + 80));
          v43 = v16;
          v38 = *(a1 + 40);
          v39 = *(a1 + 32);
          v29 = v17;
          v40 = v29;
          v41 = v12;
          v20 = [v19 actionWithTitle:v31 style:0 handler:v37];
          v21 = [v3 paymentPass];
          v22 = [v21 organizationName];

          if (v16)
          {
            v23 = PKLocalizedAquamanString(&cfstr_TransactionAut.isa, &stru_1F3BD5BF0.isa, v22);
            PKLocalizedAquamanString(&cfstr_TransactionAut_7.isa, &stru_1F3BD5BF0.isa, v22);
          }

          else
          {
            v23 = PKLocalizedAquamanString(&cfstr_TransactionAut_1.isa, &stru_1F3BD5BF0.isa, v22);
            PKLocalizedAquamanString(&cfstr_TransactionAut_8.isa, &stru_1F3BD5BF0.isa, v22);
          }
          v27 = ;
          v28 = [MEMORY[0x1E69DC650] alertControllerWithTitle:v23 message:v27 preferredStyle:1];
          [v28 addAction:v20];
          [v28 addAction:v30];
          [v28 setPreferredAction:v20];
          [*(a1 + 64) presentViewController:v28 animated:1 completion:0];

          objc_destroyWeak(&v42);
          objc_destroyWeak(&v46);
        }

        else
        {
          ShouldAuthenticateForMechanism = PKPaymentTransactionShouldAuthenticateForMechanism();
          v25 = *(a1 + 64);
          if (ShouldAuthenticateForMechanism)
          {
            v26 = [v6 authenticationFailure];
            v35[0] = MEMORY[0x1E69E9820];
            v35[1] = 3221225472;
            v35[2] = __82__PKPassPaymentContainerView_passcodeViewController_didGenerateEncryptedPasscode___block_invoke_4_502;
            v35[3] = &unk_1E8010AD8;
            v36 = *(a1 + 72);
            [v25 resetWithTransactionAuthenticationFailure:v26 completion:v35];
          }

          else
          {
            v32[0] = MEMORY[0x1E69E9820];
            v32[1] = 3221225472;
            v32[2] = __82__PKPassPaymentContainerView_passcodeViewController_didGenerateEncryptedPasscode___block_invoke_5_503;
            v32[3] = &unk_1E80110E0;
            objc_copyWeak(&v34, (a1 + 80));
            v33 = *(a1 + 32);
            [v3 _dismissTransactionAuthenticationPasscodeViewController:v25 withCompletion:v32];

            objc_destroyWeak(&v34);
          }
        }
      }
    }
  }
}

void __82__PKPassPaymentContainerView_passcodeViewController_didGenerateEncryptedPasscode___block_invoke_490(uint64_t a1, void *a2)
{
  v17[2] = *MEMORY[0x1E69E9840];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v5 = MEMORY[0x1E69B8540];
    v6 = *MEMORY[0x1E69BB6C0];
    v17[0] = *MEMORY[0x1E69BB718];
    v17[1] = v6;
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:2];
    v8 = *MEMORY[0x1E69BA6F0];
    v9 = *MEMORY[0x1E69BA440];
    v15[0] = *MEMORY[0x1E69BA680];
    v15[1] = v9;
    v10 = *MEMORY[0x1E69BABC8];
    v16[0] = v8;
    v16[1] = v10;
    v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:v15 count:2];
    [v5 subjects:v7 sendEvent:v11];

    v12 = *(a1 + 32);
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __82__PKPassPaymentContainerView_passcodeViewController_didGenerateEncryptedPasscode___block_invoke_2_491;
    v13[3] = &unk_1E8010998;
    objc_copyWeak(&v14, (a1 + 40));
    [WeakRetained _dismissTransactionAuthenticationPasscodeViewController:v12 withCompletion:v13];
    objc_destroyWeak(&v14);
  }
}

void __82__PKPassPaymentContainerView_passcodeViewController_didGenerateEncryptedPasscode___block_invoke_2_491(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained _cancelTransactionAuthentication];
    WeakRetained = v2;
  }
}

void __82__PKPassPaymentContainerView_passcodeViewController_didGenerateEncryptedPasscode___block_invoke_3_492(uint64_t a1)
{
  v17[2] = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  if (WeakRetained)
  {
    v3 = MEMORY[0x1E69B8540];
    v4 = *MEMORY[0x1E69BB6C0];
    v17[0] = *MEMORY[0x1E69BB718];
    v17[1] = v4;
    v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:2];
    v6 = *MEMORY[0x1E69BA6F0];
    v7 = *MEMORY[0x1E69BA440];
    v15[0] = *MEMORY[0x1E69BA680];
    v15[1] = v7;
    v8 = MEMORY[0x1E69BABD8];
    if (*(a1 + 72))
    {
      v8 = MEMORY[0x1E69BABD0];
    }

    v9 = *v8;
    v16[0] = v6;
    v16[1] = v9;
    v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:v15 count:2];
    [v3 subjects:v5 sendEvent:v10];

    if (*(a1 + 72) == 1)
    {
      v11 = [WeakRetained[60] transactionsAppLaunchTokenForPassWithUniqueIdentifier:*(a1 + 32)];
      v12 = [PKPaymentNotificationAppURLHelper appURLForTransactionNotification:*(a1 + 40) excludeTransactionIdentifier:1 pass:*(a1 + 48) pathSuffix:@"/resetPaymentCredential" appLaunchToken:v11];
    }

    else
    {
      v12 = 0;
    }

    v13 = *(a1 + 56);
    v14 = [WeakRetained pkui_viewControllerFromResponderChain];
    [v13 openApplication:v14 withLaunchOptions:1 launchURL:v12];
  }
}

uint64_t __82__PKPassPaymentContainerView_passcodeViewController_didGenerateEncryptedPasscode___block_invoke_4_502(uint64_t result, char a2)
{
  if ((a2 & 1) == 0)
  {
    return (*(*(result + 32) + 16))();
  }

  return result;
}

void __82__PKPassPaymentContainerView_passcodeViewController_didGenerateEncryptedPasscode___block_invoke_5_503(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained _setTransactionAuthenticationInProgress:0];
    [v3 _handleReceivedBarcodePaymentTransaction:*(a1 + 32)];
    WeakRetained = v3;
  }
}

- (void)_submitEncryptedPIN:(id)a3 forTransactionIdentifier:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v27 = 0;
  v28 = &v27;
  v29 = 0x2020000000;
  v30 = *MEMORY[0x1E69DDBE8];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __86__PKPassPaymentContainerView__submitEncryptedPIN_forTransactionIdentifier_completion___block_invoke;
  aBlock[3] = &unk_1E8011A18;
  aBlock[4] = &v27;
  v11 = _Block_copy(aBlock);
  v12 = [MEMORY[0x1E69DC668] sharedApplication];
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __86__PKPassPaymentContainerView__submitEncryptedPIN_forTransactionIdentifier_completion___block_invoke_2;
  v24[3] = &unk_1E8010B50;
  v13 = v10;
  v25 = v13;
  v14 = [v12 beginBackgroundTaskWithName:@"Submit Encrypted PIN" expirationHandler:v24];
  v28[3] = v14;

  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __86__PKPassPaymentContainerView__submitEncryptedPIN_forTransactionIdentifier_completion___block_invoke_3;
  v19[3] = &unk_1E8021D50;
  v19[4] = self;
  v15 = v11;
  v22 = v15;
  v16 = v13;
  v23 = v16;
  v17 = v8;
  v20 = v17;
  v18 = v9;
  v21 = v18;
  [(PKPassPaymentContainerView *)self _beginSessionExchange:v19];

  _Block_object_dispose(&v27, 8);
}

void __86__PKPassPaymentContainerView__submitEncryptedPIN_forTransactionIdentifier_completion___block_invoke(uint64_t a1)
{
  v1 = *MEMORY[0x1E69DDBE8];
  if (*(*(*(a1 + 32) + 8) + 24) != *MEMORY[0x1E69DDBE8])
  {
    v3 = [MEMORY[0x1E69DC668] sharedApplication];
    [v3 endBackgroundTask:*(*(*(a1 + 32) + 8) + 24)];

    *(*(*(a1 + 32) + 8) + 24) = v1;
  }
}

void __86__PKPassPaymentContainerView__submitEncryptedPIN_forTransactionIdentifier_completion___block_invoke_2(uint64_t a1)
{
  v7[1] = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  if (v1)
  {
    v2 = MEMORY[0x1E696ABC0];
    v3 = *MEMORY[0x1E69BBBC8];
    v6 = *MEMORY[0x1E696A278];
    v7[0] = @"Submit encrypted PIN task timeout";
    v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:&v6 count:1];
    v5 = [v2 errorWithDomain:v3 code:-1 userInfo:v4];
    (*(v1 + 16))(v1, 0, v5);
  }
}

void __86__PKPassPaymentContainerView__submitEncryptedPIN_forTransactionIdentifier_completion___block_invoke_3(id *a1, void *a2, void *a3)
{
  v27 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v5)
  {
    v8 = v6 == 0;
  }

  else
  {
    v8 = 0;
  }

  v9 = !v8;
  if (v8)
  {
    goto LABEL_14;
  }

  [a1[4] _endSessionExchange];
  if (!*(a1[4] + 63))
  {

    v5 = 0;
LABEL_14:
    v12 = a1[5];
    v13 = a1[6];
    v14 = a1[4];
    v15 = v14[60];
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __86__PKPassPaymentContainerView__submitEncryptedPIN_forTransactionIdentifier_completion___block_invoke_510;
    v20[3] = &unk_1E8021D28;
    v24 = v9;
    v16 = a1[7];
    v23 = a1[8];
    v17 = a1[5];
    *&v18 = a1[6];
    *(&v18 + 1) = v16;
    *&v19 = v14;
    *(&v19 + 1) = v17;
    v21 = v19;
    v22 = v18;
    [v15 submitEncryptedPIN:v12 forTransactionIdentifier:v13 sessionExchangeToken:v5 completion:v20];

    goto LABEL_15;
  }

  v10 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v26 = v7;
    _os_log_impl(&dword_1BD026000, v10, OS_LOG_TYPE_DEFAULT, "Not submitting encrypted PIN due to begin session exchange failure: %@", buf, 0xCu);
  }

  (*(a1[7] + 2))();
  v11 = a1[8];
  if (v11)
  {
    v11[2](v11, 0, v7);
  }

LABEL_15:
}

void __86__PKPassPaymentContainerView__submitEncryptedPIN_forTransactionIdentifier_completion___block_invoke_510(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __86__PKPassPaymentContainerView__submitEncryptedPIN_forTransactionIdentifier_completion___block_invoke_2_511;
  v9[3] = &unk_1E8021D00;
  v16 = *(a1 + 72);
  v9[4] = *(a1 + 32);
  v10 = v6;
  v14 = *(a1 + 56);
  v15 = *(a1 + 64);
  v11 = *(a1 + 40);
  v12 = *(a1 + 48);
  v13 = v5;
  v7 = v5;
  v8 = v6;
  dispatch_async(MEMORY[0x1E69E96A0], v9);
}

void __86__PKPassPaymentContainerView__submitEncryptedPIN_forTransactionIdentifier_completion___block_invoke_2_511(uint64_t a1)
{
  if ((*(a1 + 88) & 1) == 0)
  {
    [*(a1 + 32) _endSessionExchange];
  }

  v2 = [*(a1 + 40) domain];
  if ([v2 isEqualToString:*MEMORY[0x1E69BB780]])
  {
    v3 = [*(a1 + 40) code];

    if (v3 == 2)
    {
      v4 = *(a1 + 32);
      v5 = [v4 paymentPass];
      v6 = [v5 uniqueID];
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = __86__PKPassPaymentContainerView__submitEncryptedPIN_forTransactionIdentifier_completion___block_invoke_3_512;
      v11[3] = &unk_1E8021CD8;
      v14 = *(a1 + 72);
      v7 = *(a1 + 80);
      v8 = *(a1 + 32);
      v15 = v7;
      v11[4] = v8;
      v12 = *(a1 + 48);
      v13 = *(a1 + 56);
      [v4 _reregisterAuxiliaryCapabilityForPassUniqueIdentifier:v6 withCompletion:v11];

      return;
    }
  }

  else
  {
  }

  (*(*(a1 + 72) + 16))();
  v9 = *(a1 + 80);
  if (v9)
  {
    v10 = *(v9 + 16);

    v10();
  }
}

void __86__PKPassPaymentContainerView__submitEncryptedPIN_forTransactionIdentifier_completion___block_invoke_3_512(uint64_t a1, void *a2)
{
  v3 = a2;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __86__PKPassPaymentContainerView__submitEncryptedPIN_forTransactionIdentifier_completion___block_invoke_4;
  block[3] = &unk_1E8021CB0;
  v4 = *(a1 + 56);
  v10 = v3;
  v13 = *(a1 + 64);
  v8 = *(a1 + 32);
  v5 = *(&v8 + 1);
  *&v6 = *(a1 + 48);
  *(&v6 + 1) = v4;
  v11 = v8;
  v12 = v6;
  v7 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

uint64_t __86__PKPassPaymentContainerView__submitEncryptedPIN_forTransactionIdentifier_completion___block_invoke_4(void *a1)
{
  (*(a1[8] + 16))();
  if (a1[4])
  {
    result = a1[9];
    if (result)
    {
      v3 = *(result + 16);

      return v3();
    }
  }

  else
  {
    v4 = a1[5];
    v5 = a1[6];
    v6 = a1[7];
    v7 = a1[9];

    return [v4 _submitEncryptedPIN:v5 forTransactionIdentifier:v6 completion:v7];
  }

  return result;
}

- (void)_dismissTransactionAuthenticationPasscodeViewController:(id)a3 withCompletion:(id)a4
{
  v6 = a3;
  v7 = a4;
  [v6 setDelegate:0];
  v8 = [v6 presentingViewController];
  if (v8 && ([v6 isBeingDismissed] & 1) == 0)
  {
    objc_initWeak(&location, self);
    v9 = [(PKPassPaymentContainerView *)self _isBackgrounded];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __101__PKPassPaymentContainerView__dismissTransactionAuthenticationPasscodeViewController_withCompletion___block_invoke;
    v10[3] = &unk_1E80111D0;
    objc_copyWeak(&v12, &location);
    v11 = v7;
    [v8 dismissViewControllerAnimated:!v9 completion:v10];

    objc_destroyWeak(&v12);
    objc_destroyWeak(&location);
  }

  else if (v7)
  {
    v7[2](v7);
  }
}

void __101__PKPassPaymentContainerView__dismissTransactionAuthenticationPasscodeViewController_withCompletion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _setTransactionAuthenticationUIActive:0];
  v2 = *(a1 + 32);
  if (v2)
  {
    (*(v2 + 16))();
  }
}

- (void)_showInstallAssociatedApplicationInstructionsIfNecessary
{
  if ([(PKPassFooterContentView *)self style]== 3)
  {
    if ([(PKLinkedApplication *)self->_linkedApplication state])
    {

      [(PKPassPaymentContainerView *)self _updateBottomTextView];
    }

    else
    {
      objc_initWeak(&location, self);
      linkedApplicationUpdateCompletionHandlers = self->_linkedApplicationUpdateCompletionHandlers;
      v5 = MEMORY[0x1E69E9820];
      v6 = 3221225472;
      v7 = __86__PKPassPaymentContainerView__showInstallAssociatedApplicationInstructionsIfNecessary__block_invoke;
      v8 = &unk_1E8010998;
      objc_copyWeak(&v9, &location);
      v4 = _Block_copy(&v5);
      [(NSMutableArray *)linkedApplicationUpdateCompletionHandlers addObject:v4, v5, v6, v7, v8];

      [(PKLinkedApplication *)self->_linkedApplication reloadApplicationStateIfNecessary];
      objc_destroyWeak(&v9);
      objc_destroyWeak(&location);
    }
  }
}

void __86__PKPassPaymentContainerView__showInstallAssociatedApplicationInstructionsIfNecessary__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _updateBottomTextView];
}

- (id)_attributedStringForBottomTextViewFromString:(id)a3
{
  v15[3] = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E69DB7C8];
  v5 = a3;
  v6 = objc_alloc_init(v4);
  [v6 setLineBreakMode:0];
  [v6 setAlignment:1];
  v14[0] = *MEMORY[0x1E69DB648];
  v7 = [(UITextView *)self->_bottomTextView font];
  v8 = *MEMORY[0x1E69DB688];
  v15[0] = v7;
  v15[1] = v6;
  v9 = *MEMORY[0x1E69DB650];
  v14[1] = v8;
  v14[2] = v9;
  v10 = [(UITextView *)self->_bottomTextView textColor];
  v15[2] = v10;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:v14 count:3];

  v12 = PKAttributedStringByParsingLinksInString();

  return v12;
}

- (void)_updateBottomTextView
{
  if (self->_bottomTextViewAnimating)
  {
    self->_bottomTextViewNeedsUpdate = 1;
    return;
  }

  v3 = CFAbsoluteTimeGetCurrent() - self->_bottomTextViewDisplayedTimestamp;
  if (v3 < 4.0)
  {
    v4 = dispatch_time(0, ((4.0 - v3) * 1000000000.0));
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __51__PKPassPaymentContainerView__updateBottomTextView__block_invoke;
    block[3] = &unk_1E8010970;
    block[4] = self;
    dispatch_after(v4, MEMORY[0x1E69E96A0], block);
    return;
  }

  v5 = [(PKPassFooterContentView *)self style]== 3 && self->_activeBarcodeIdentifier != 0;
  v6 = [(PKPassFooterContentView *)self paymentPass];
  v7 = [v6 organizationName];

  v8 = [(UITextView *)self->_bottomTextView attributedText];
  if (v5)
  {
    if (self->_collectingBarcodeEventMetadata)
    {
      v9 = @"FRAUD_PREVENTION_INSTRUCTIONS";
LABEL_11:
      v10 = PKLocalizedAquamanString(&v9->isa, &stru_1F3BD5BF0.isa, v7);
      bottomTextView = self->_bottomTextView;
      v12 = [(PKPassPaymentContainerView *)self _attributedStringForBottomTextViewFromString:v10];
      [(UITextView *)bottomTextView setAttributedText:v12];

      v13 = 1;
      goto LABEL_15;
    }

    if ([(PKLinkedApplication *)self->_linkedApplication state]== 1 && ![(PKLinkedApplication *)self->_linkedApplication isInstalled])
    {
      v9 = @"INSTALL_ASSOCIATED_APPLICATION_INSTRUCTIONS";
      goto LABEL_11;
    }
  }

  v13 = 0;
LABEL_15:
  objc_initWeak(&location, self);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __51__PKPassPaymentContainerView__updateBottomTextView__block_invoke_2;
  aBlock[3] = &unk_1E8012858;
  objc_copyWeak(&v35, &location);
  v36 = v13;
  v14 = _Block_copy(aBlock);
  v32[0] = MEMORY[0x1E69E9820];
  v32[1] = 3221225472;
  v32[2] = __51__PKPassPaymentContainerView__updateBottomTextView__block_invoke_4;
  v32[3] = &unk_1E8021D78;
  objc_copyWeak(&v33, &location);
  v15 = _Block_copy(v32);
  [(UITextView *)self->_bottomTextView alpha];
  self->_bottomTextViewAnimating = 1;
  if (((v13 ^ (v16 <= 0.0)) & 1) == 0)
  {
    if (v13)
    {
      [(PKPassPaymentContainerView *)self setNeedsLayout];
      [(PKPassPaymentContainerView *)self layoutIfNeeded];
    }

    v19 = MEMORY[0x1E69DD250];
    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 3221225472;
    v29[2] = __51__PKPassPaymentContainerView__updateBottomTextView__block_invoke_5;
    v29[3] = &unk_1E8010FA8;
    v30 = v15;
    v31 = v13;
    [v19 animateWithDuration:4 delay:v29 options:v14 animations:0.2 completion:0.0];
    v20 = v30;
    goto LABEL_23;
  }

  if (v16 > 0.0)
  {
    if (v13)
    {
      v17 = [(UITextView *)self->_bottomTextView attributedText];
      v18 = PKEqualObjects();

      if ((v18 & 1) == 0)
      {
        v21 = MEMORY[0x1E69DD250];
        v27[0] = MEMORY[0x1E69E9820];
        v27[1] = 3221225472;
        v27[2] = __51__PKPassPaymentContainerView__updateBottomTextView__block_invoke_6;
        v27[3] = &unk_1E8010B50;
        v22 = v15;
        v28 = v22;
        v23[0] = MEMORY[0x1E69E9820];
        v23[1] = 3221225472;
        v23[2] = __51__PKPassPaymentContainerView__updateBottomTextView__block_invoke_7;
        v23[3] = &unk_1E8021DC8;
        objc_copyWeak(&v26, &location);
        v24 = v22;
        v25 = v14;
        [v21 animateWithDuration:4 delay:v27 options:v23 animations:0.2 completion:0.0];

        objc_destroyWeak(&v26);
        v20 = v28;
LABEL_23:

        goto LABEL_24;
      }
    }
  }

  self->_bottomTextViewAnimating = 0;
LABEL_24:

  objc_destroyWeak(&v33);
  objc_destroyWeak(&v35);
  objc_destroyWeak(&location);
}

void __51__PKPassPaymentContainerView__updateBottomTextView__block_invoke_2(uint64_t a1)
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __51__PKPassPaymentContainerView__updateBottomTextView__block_invoke_3;
  v2[3] = &unk_1E80111A8;
  objc_copyWeak(&v3, (a1 + 32));
  v4 = *(a1 + 40);
  dispatch_async(MEMORY[0x1E69E96A0], v2);
  objc_destroyWeak(&v3);
}

void __51__PKPassPaymentContainerView__updateBottomTextView__block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    *(WeakRetained + 1016) = 0;
    v4 = WeakRetained;
    if (*(a1 + 40) == 1)
    {
      Current = CFAbsoluteTimeGetCurrent();
      WeakRetained = v4;
      v4[128] = Current;
    }

    if (*(WeakRetained + 1017) == 1)
    {
      *(WeakRetained + 1017) = 0;
      [v4 _updateBottomTextView];
      WeakRetained = v4;
    }
  }
}

void __51__PKPassPaymentContainerView__updateBottomTextView__block_invoke_4(uint64_t a1, double a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    [WeakRetained[126] setAlpha:a2];
    WeakRetained = v4;
  }
}

void __51__PKPassPaymentContainerView__updateBottomTextView__block_invoke_7(id *a1)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __51__PKPassPaymentContainerView__updateBottomTextView__block_invoke_8;
  block[3] = &unk_1E8021DA0;
  objc_copyWeak(&v5, a1 + 6);
  v3 = a1[4];
  v4 = a1[5];
  dispatch_async(MEMORY[0x1E69E96A0], block);

  objc_destroyWeak(&v5);
}

void __51__PKPassPaymentContainerView__updateBottomTextView__block_invoke_8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained setNeedsLayout];
    [v3 layoutIfNeeded];
    v4 = MEMORY[0x1E69DD250];
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __51__PKPassPaymentContainerView__updateBottomTextView__block_invoke_9;
    v5[3] = &unk_1E8010B50;
    v6 = *(a1 + 32);
    [v4 animateWithDuration:4 delay:v5 options:*(a1 + 40) animations:0.2 completion:0.0];
  }
}

- (BOOL)textView:(id)a3 shouldInteractWithURL:(id)a4 inRange:(_NSRange)a5 interaction:(int64_t)a6
{
  v7 = [a4 absoluteString];
  if ([v7 isEqualToString:@"OPEN_ASSOCIATED_APPLICATION_IN_APP_STORE"])
  {
    linkedApplication = self->_linkedApplication;
    v9 = [(UIView *)self pkui_viewControllerFromResponderChain];
    [(PKLinkedApplication *)linkedApplication openApplication:v9];
LABEL_5:

    goto LABEL_6;
  }

  if ([v7 isEqualToString:@"OPEN_PAYMENT_INFO_EXTENSION_PRIVACY_TEXT"])
  {
    v10 = [PKBarcodePaymentPrivacyViewController alloc];
    v11 = [(PKPassFooterContentView *)self paymentPass];
    v12 = [v11 organizationName];
    v9 = [(PKBarcodePaymentPrivacyViewController *)v10 initWithIssuerName:v12 displayContext:1 paymentSetupContext:0];

    v13 = [[PKPortraitNavigationController alloc] initWithRootViewController:v9];
    v14 = [(UIView *)self pkui_viewControllerFromResponderChain];
    [v14 presentViewController:v13 animated:1 completion:0];

    goto LABEL_5;
  }

LABEL_6:

  return 0;
}

- (void)linkedApplicationDidChangeState:(id)a3
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __62__PKPassPaymentContainerView_linkedApplicationDidChangeState___block_invoke;
  block[3] = &unk_1E8010970;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __62__PKPassPaymentContainerView_linkedApplicationDidChangeState___block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 1040);
  [v1 removeAllObjects];
  [v1 enumerateObjectsUsingBlock:&__block_literal_global_531_0];
}

- (void)_collectAndSubmitBarcodeEventMetadataWithAuthenticationType:(int64_t)a3
{
  v5 = [(PKPassFooterContentView *)self paymentPass];
  if (v5)
  {
    activeBarcodeIdentifier = self->_activeBarcodeIdentifier;

    if (activeBarcodeIdentifier)
    {
      objc_initWeak(location, self);
      v7 = [(PKPassFooterContentView *)self paymentPass];
      v8 = [v7 uniqueID];

      v9 = [(PKPassFooterContentView *)self paymentPass];
      v10 = [v9 deviceAccountIdentifier];

      v11 = [(NSString *)self->_activeBarcodeIdentifier copy];
      v12 = [MEMORY[0x1E695DF00] date];
      v45 = 0;
      v46 = &v45;
      v47 = 0x2020000000;
      v48 = *MEMORY[0x1E69DDBE8];
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = __90__PKPassPaymentContainerView__collectAndSubmitBarcodeEventMetadataWithAuthenticationType___block_invoke;
      aBlock[3] = &unk_1E8011A18;
      aBlock[4] = &v45;
      v13 = _Block_copy(aBlock);
      v14 = [MEMORY[0x1E69DC668] sharedApplication];
      v15 = [v14 beginBackgroundTaskWithName:@"Submit Barcode Payment Event" expirationHandler:v13];
      v46[3] = v15;

      v36[0] = MEMORY[0x1E69E9820];
      v36[1] = 3221225472;
      v36[2] = __90__PKPassPaymentContainerView__collectAndSubmitBarcodeEventMetadataWithAuthenticationType___block_invoke_2;
      v36[3] = &unk_1E8021E38;
      v29 = v12;
      v37 = v29;
      v16 = v10;
      v38 = v16;
      v17 = v11;
      v43 = a3;
      v39 = v17;
      v40 = self;
      v18 = v8;
      v41 = v18;
      v28 = v13;
      v42 = v28;
      v19 = _Block_copy(v36);
      v20 = [MEMORY[0x1E69B8868] providerForExtensionPoint:*MEMORY[0x1E69BB8A8]];
      v21 = [(PKPassFooterContentView *)self paymentPass];
      v22 = [v21 associatedApplicationIdentifiers];
      v23 = [v22 allObjects];
      v30[0] = MEMORY[0x1E69E9820];
      v30[1] = 3221225472;
      v30[2] = __90__PKPassPaymentContainerView__collectAndSubmitBarcodeEventMetadataWithAuthenticationType___block_invoke_3_540;
      v30[3] = &unk_1E8021EB0;
      v24 = v18;
      v31 = v24;
      v25 = v19;
      v34 = v25;
      objc_copyWeak(&v35, location);
      v26 = v17;
      v32 = v26;
      v27 = v16;
      v33 = v27;
      [v20 extensionsWithContainingApplicationIdentifiers:v23 completion:v30];

      objc_destroyWeak(&v35);
      _Block_object_dispose(&v45, 8);

      objc_destroyWeak(location);
    }
  }
}

void __90__PKPassPaymentContainerView__collectAndSubmitBarcodeEventMetadataWithAuthenticationType___block_invoke(uint64_t a1)
{
  v1 = *MEMORY[0x1E69DDBE8];
  if (*(*(*(a1 + 32) + 8) + 24) != *MEMORY[0x1E69DDBE8])
  {
    v3 = [MEMORY[0x1E69DC668] sharedApplication];
    [v3 endBackgroundTask:*(*(*(a1 + 32) + 8) + 24)];

    *(*(*(a1 + 32) + 8) + 24) = v1;
  }
}

void __90__PKPassPaymentContainerView__collectAndSubmitBarcodeEventMetadataWithAuthenticationType___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x1E69B86C0];
  v4 = a2;
  v5 = objc_alloc_init(v3);
  [v5 setEventType:1];
  [v5 setTimestamp:*(a1 + 32)];
  [v5 setEventMetadata:v4];

  [v5 setDeviceAccountIdentifier:*(a1 + 40)];
  [v5 setBarcodeIdentifier:*(a1 + 48)];
  [v5 setAuthenticationType:*(a1 + 80)];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __90__PKPassPaymentContainerView__collectAndSubmitBarcodeEventMetadataWithAuthenticationType___block_invoke_3;
  v8[3] = &unk_1E8011D78;
  v6 = *(a1 + 64);
  v8[4] = *(a1 + 56);
  v9 = v5;
  v10 = v6;
  v11 = *(a1 + 72);
  v7 = v5;
  dispatch_async(MEMORY[0x1E69E96A0], v8);
}

void __90__PKPassPaymentContainerView__collectAndSubmitBarcodeEventMetadataWithAuthenticationType___block_invoke_3(uint64_t a1)
{
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __90__PKPassPaymentContainerView__collectAndSubmitBarcodeEventMetadataWithAuthenticationType___block_invoke_4;
  v7[3] = &unk_1E8021E10;
  v6 = *(a1 + 32);
  v2 = *(&v6 + 1);
  v3 = *(a1 + 48);
  v4 = *(a1 + 56);
  *&v5 = v3;
  *(&v5 + 1) = v4;
  v8 = v6;
  v9 = v5;
  [v6 _beginSessionExchange:v7];
}

void __90__PKPassPaymentContainerView__collectAndSubmitBarcodeEventMetadataWithAuthenticationType___block_invoke_4(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  if (!a2 || v5)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __90__PKPassPaymentContainerView__collectAndSubmitBarcodeEventMetadataWithAuthenticationType___block_invoke_7;
    block[3] = &unk_1E80135E0;
    block[4] = *(a1 + 32);
    v10 = &v13;
    v13 = v5;
    v14 = *(a1 + 40);
    v15 = *(a1 + 48);
    v16 = *(a1 + 56);
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }

  else
  {
    v7 = *(a1 + 32);
    v8 = *(a1 + 40);
    v9 = *(v7 + 480);
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __90__PKPassPaymentContainerView__collectAndSubmitBarcodeEventMetadataWithAuthenticationType___block_invoke_5;
    v17[3] = &unk_1E8010DD0;
    v17[4] = v7;
    v10 = &v18;
    v11 = *(a1 + 48);
    v18 = *(a1 + 56);
    [v9 submitBarcodePaymentEvent:v8 forPassUniqueIdentifier:v11 sessionExchangeToken:a2 withCompletion:v17];
  }
}

void __90__PKPassPaymentContainerView__collectAndSubmitBarcodeEventMetadataWithAuthenticationType___block_invoke_5(uint64_t a1)
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __90__PKPassPaymentContainerView__collectAndSubmitBarcodeEventMetadataWithAuthenticationType___block_invoke_6;
  v2[3] = &unk_1E8010DD0;
  v1 = *(a1 + 40);
  v2[4] = *(a1 + 32);
  v3 = v1;
  dispatch_async(MEMORY[0x1E69E96A0], v2);
}

uint64_t __90__PKPassPaymentContainerView__collectAndSubmitBarcodeEventMetadataWithAuthenticationType___block_invoke_6(uint64_t a1)
{
  [*(a1 + 32) _endSessionExchange];
  v2 = *(*(a1 + 40) + 16);

  return v2();
}

void __90__PKPassPaymentContainerView__collectAndSubmitBarcodeEventMetadataWithAuthenticationType___block_invoke_7(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  [*(a1 + 32) _endSessionExchange];
  if (!*(*(a1 + 32) + 504))
  {
    v2 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = *(a1 + 40);
      *buf = 138412290;
      v10 = v3;
      _os_log_impl(&dword_1BD026000, v2, OS_LOG_TYPE_DEFAULT, "Failed to acquire session exchange token but still submitting barcode event. Acquire token error: %@", buf, 0xCu);
    }

    v4 = *(*(a1 + 32) + 480);
    v5 = *(a1 + 48);
    v6 = *(a1 + 56);
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __90__PKPassPaymentContainerView__collectAndSubmitBarcodeEventMetadataWithAuthenticationType___block_invoke_536;
    v7[3] = &unk_1E8010B50;
    v8 = *(a1 + 64);
    [v4 submitBarcodePaymentEvent:v5 forPassUniqueIdentifier:v6 withCompletion:v7];
  }
}

void __90__PKPassPaymentContainerView__collectAndSubmitBarcodeEventMetadataWithAuthenticationType___block_invoke_536(uint64_t a1)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __90__PKPassPaymentContainerView__collectAndSubmitBarcodeEventMetadataWithAuthenticationType___block_invoke_2_537;
  block[3] = &unk_1E8010B50;
  v2 = *(a1 + 32);
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __90__PKPassPaymentContainerView__collectAndSubmitBarcodeEventMetadataWithAuthenticationType___block_invoke_3_540(id *a1, void *a2, void *a3)
{
  v36[2] = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = 0;
  }

  else
  {
    v7 = [v5 count];
  }

  v8 = MEMORY[0x1E69B8540];
  v9 = *MEMORY[0x1E69BB718];
  v36[0] = *MEMORY[0x1E69BB6C0];
  v36[1] = v9;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v36 count:2];
  v11 = *MEMORY[0x1E69BA730];
  v12 = *MEMORY[0x1E69BA840];
  v34[0] = *MEMORY[0x1E69BA680];
  v34[1] = v12;
  v13 = *MEMORY[0x1E69BB8A8];
  v35[0] = v11;
  v35[1] = v13;
  v34[2] = *MEMORY[0x1E69BAB78];
  v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%lu", v7];
  v35[2] = v14;
  v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v35 forKeys:v34 count:3];
  [v8 subjects:v10 sendEvent:v15];

  v16 = PKLogFacilityTypeGetObject();
  v17 = os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT);
  if (v7)
  {
    if (v17)
    {
      v18 = a1[4];
      *buf = 138412290;
      *&buf[4] = v18;
      _os_log_impl(&dword_1BD026000, v16, OS_LOG_TYPE_DEFAULT, "Matched payment information event extension for pass %@. Collecting payment information.", buf, 0xCu);
    }

    v19 = [v5 firstObject];
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v31 = __Block_byref_object_copy__53;
    v32 = __Block_byref_object_dispose__53;
    v33 = 0;
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __90__PKPassPaymentContainerView__collectAndSubmitBarcodeEventMetadataWithAuthenticationType___block_invoke_541;
    v22[3] = &unk_1E8021E88;
    v23 = a1[4];
    v27 = a1[7];
    objc_copyWeak(&v29, a1 + 8);
    v28 = buf;
    v20 = v19;
    v24 = v20;
    v25 = a1[5];
    v26 = a1[6];
    [v20 beginExtensionRequestWithOptions:1 completion:v22];

    objc_destroyWeak(&v29);
    _Block_object_dispose(buf, 8);
  }

  else
  {
    if (v17)
    {
      v21 = a1[4];
      *buf = 138412546;
      *&buf[4] = v21;
      *&buf[12] = 2112;
      *&buf[14] = v6;
      _os_log_impl(&dword_1BD026000, v16, OS_LOG_TYPE_DEFAULT, "Unable to match payment information event extension for pass: %@, error: %@. Submitting barcode event directly.", buf, 0x16u);
    }

    (*(a1[7] + 2))();
  }
}

void __90__PKPassPaymentContainerView__collectAndSubmitBarcodeEventMetadataWithAuthenticationType___block_invoke_541(uint64_t a1, void *a2)
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = v3;
  if (v3 && ([v3 isInvalidated] & 1) == 0)
  {
    v5 = [v4 extensionContext];
    if (v5)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __90__PKPassPaymentContainerView__collectAndSubmitBarcodeEventMetadataWithAuthenticationType___block_invoke_543;
        block[3] = &unk_1E8010998;
        objc_copyWeak(&v20, (a1 + 80));
        dispatch_async(MEMORY[0x1E69E96A0], block);
        v8 = MEMORY[0x1E695FBE0];
        v9 = [*(a1 + 40) identifier];
        v10 = [v8 newAssertionForBundleIdentifier:v9 withReason:@"Barcode Event Metadata"];
        v11 = *(*(a1 + 72) + 8);
        v12 = *(v11 + 40);
        *(v11 + 40) = v10;

        v13 = [objc_alloc(MEMORY[0x1E69B86B8]) initWithBarcodeIdentifier:*(a1 + 48) deviceAccountIdentifier:*(a1 + 56)];
        v14[0] = MEMORY[0x1E69E9820];
        v14[1] = 3221225472;
        v14[2] = __90__PKPassPaymentContainerView__collectAndSubmitBarcodeEventMetadataWithAuthenticationType___block_invoke_2_549;
        v14[3] = &unk_1E8021E60;
        v17 = *(a1 + 72);
        v15 = v4;
        objc_copyWeak(&v18, (a1 + 80));
        v16 = *(a1 + 64);
        [v5 handleInformationRequest:v13 completion:v14];

        objc_destroyWeak(&v18);
        objc_destroyWeak(&v20);
        goto LABEL_7;
      }
    }
  }

  else
  {
    v5 = 0;
  }

  v6 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 32);
    *buf = 138412290;
    v22 = v7;
    _os_log_impl(&dword_1BD026000, v6, OS_LOG_TYPE_DEFAULT, "Failed to begin payment information event extension for pass: %@. Submitting barcode event directly.", buf, 0xCu);
  }

  [v4 invalidate];
  (*(*(a1 + 64) + 16))();
LABEL_7:
}

void __90__PKPassPaymentContainerView__collectAndSubmitBarcodeEventMetadataWithAuthenticationType___block_invoke_543(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    WeakRetained[1048] = 1;
    v2 = WeakRetained;
    [WeakRetained _updateBottomTextView];
    WeakRetained = v2;
  }
}

void __90__PKPassPaymentContainerView__collectAndSubmitBarcodeEventMetadataWithAuthenticationType___block_invoke_2_549(uint64_t a1, void *a2)
{
  v3 = a2;
  [*(*(*(a1 + 48) + 8) + 40) invalidate];
  [*(a1 + 32) invalidate];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __90__PKPassPaymentContainerView__collectAndSubmitBarcodeEventMetadataWithAuthenticationType___block_invoke_3_550;
  block[3] = &unk_1E8010998;
  objc_copyWeak(&v7, (a1 + 56));
  dispatch_async(MEMORY[0x1E69E96A0], block);
  v4 = *(a1 + 40);
  v5 = [v3 paymentInformation];
  (*(v4 + 16))(v4, v5);

  objc_destroyWeak(&v7);
}

void __90__PKPassPaymentContainerView__collectAndSubmitBarcodeEventMetadataWithAuthenticationType___block_invoke_3_550(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    WeakRetained[1048] = 0;
    v2 = WeakRetained;
    [WeakRetained _updateBottomTextView];
    WeakRetained = v2;
  }
}

- (void)passTileGroupView:(id)a3 executeSEActionForPass:(id)a4 tile:(id)a5 withCompletion:(id)a6
{
  v9 = a4;
  v10 = a5;
  v11 = a6;
  v12 = [(PKPassFooterContentView *)self paymentPass];
  if (v12 != v9 || ![(PKPassPaymentContainerView *)self _authenticationAllowed])
  {

    goto LABEL_10;
  }

  transactionSubstate = self->_transactionSubstate;

  if (transactionSubstate)
  {
LABEL_10:
    v11[2](v11, 0);
    goto LABEL_11;
  }

  v14 = [v10 state];
  v15 = MEMORY[0x1E69B8D10];
  v16 = [v14 actions];
  v17 = [v15 effectiveActionForActions:v16];

  if (v17 && [v17 type] == 4 && !self->_contactlessInterfaceSessionShared)
  {
    self->_contactlessInterfaceSessionShared = 1;
    [(PKPassPaymentContainerView *)self _applyPayState:12];
    objc_initWeak(&location, self);
    v18 = self->_contactlessInterfaceSession;
    authorizationQueue = self->_authorizationQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __91__PKPassPaymentContainerView_passTileGroupView_executeSEActionForPass_tile_withCompletion___block_invoke;
    block[3] = &unk_1E8021F00;
    v22 = v18;
    v23 = v10;
    v26 = v11;
    v20 = v18;
    objc_copyWeak(&v27, &location);
    v24 = self;
    v25 = v9;
    dispatch_async(authorizationQueue, block);

    objc_destroyWeak(&v27);
    objc_destroyWeak(&location);
  }

  else
  {
    v11[2](v11, 0);
  }

LABEL_11:
}

void __91__PKPassPaymentContainerView_passTileGroupView_executeSEActionForPass_tile_withCompletion___block_invoke(uint64_t a1)
{
  v44 = *MEMORY[0x1E69E9840];
  v40 = 0;
  v41 = 0;
  [*(a1 + 32) activatedPaymentApplications];
  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  obj = v37 = 0u;
  v24 = [obj countByEnumeratingWithState:&v36 objects:v43 count:16];
  if (v24)
  {
    v25 = 0;
    v23 = *v37;
LABEL_3:
    v2 = 0;
    while (1)
    {
      if (*v37 != v23)
      {
        v3 = v2;
        objc_enumerationMutation(obj);
        v2 = v3;
      }

      v26 = v2;
      v4 = *(*(&v36 + 1) + 8 * v2);
      v5 = [v4 applicationIdentifier];
      v35 = 0u;
      v33 = 0u;
      v34 = 0u;
      v32 = 0u;
      v6 = [v4 subcredentials];
      v7 = [v6 countByEnumeratingWithState:&v32 objects:v42 count:16];
      if (v7)
      {
        v8 = *v33;
        while (2)
        {
          for (i = 0; i != v7; ++i)
          {
            if (*v33 != v8)
            {
              objc_enumerationMutation(v6);
            }

            v10 = *(a1 + 40);
            v11 = [*(*(&v32 + 1) + 8 * i) identifier];
            [PKPassTileGroupView extractSupportedVehicleFunction:&v41 action:&v40 forTile:v10 applicationIdentifier:v5 keyIdentifier:v11];

            if (v41 && v40)
            {
              v12 = v5;

              v25 = v12;
              goto LABEL_17;
            }
          }

          v7 = [v6 countByEnumeratingWithState:&v32 objects:v42 count:16];
          if (v7)
          {
            continue;
          }

          break;
        }
      }

LABEL_17:

      v13 = !v41 || v40 == 0;
      v14 = v13;

      if (!v14)
      {
        break;
      }

      v2 = v26 + 1;
      if (v26 + 1 == v24)
      {
        v24 = [obj countByEnumeratingWithState:&v36 objects:v43 count:16];
        if (v24)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  else
  {
    v25 = 0;
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __91__PKPassPaymentContainerView_passTileGroupView_executeSEActionForPass_tile_withCompletion___block_invoke_2;
  aBlock[3] = &unk_1E8010EE0;
  v30 = *(a1 + 64);
  objc_copyWeak(&v31, (a1 + 72));
  v15 = _Block_copy(aBlock);
  v16 = v15;
  v17 = v41;
  if (v41 && (v18 = v40) != 0)
  {
    v19 = *(a1 + 32);
    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = __91__PKPassPaymentContainerView_passTileGroupView_executeSEActionForPass_tile_withCompletion___block_invoke_4;
    v27[3] = &unk_1E8010AD8;
    v28 = v15;
    [v19 sendRKEFunction:v17 action:v18 withAuthorization:0 completion:v27];
    v20 = *(*(a1 + 48) + 480);
    v21 = [*(a1 + 56) uniqueID];
    [v20 recordPassTransactionActivitySummaryForPassUniqueIdentifier:v21 paymentApplicationIdentifier:v25 presentmentType:1];
  }

  else
  {
    (*(v15 + 2))(v15, 0);
  }

  objc_destroyWeak(&v31);
}

void __91__PKPassPaymentContainerView_passTileGroupView_executeSEActionForPass_tile_withCompletion___block_invoke_2(uint64_t a1, char a2)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __91__PKPassPaymentContainerView_passTileGroupView_executeSEActionForPass_tile_withCompletion___block_invoke_3;
  block[3] = &unk_1E8021ED8;
  v5 = *(a1 + 32);
  v7 = a2;
  objc_copyWeak(&v6, (a1 + 40));
  dispatch_async(MEMORY[0x1E69E96A0], block);
  objc_destroyWeak(&v6);
}

void __91__PKPassPaymentContainerView_passTileGroupView_executeSEActionForPass_tile_withCompletion___block_invoke_3(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    WeakRetained[513] = 0;
    v3 = WeakRetained;
    [WeakRetained _resetToIdleState];
    WeakRetained = v3;
  }
}

- (void)passTileGroupView:(id)a3 displayTileContext:(int64_t)a4 tile:(id)a5 overrideMaximumRows:(BOOL)a6
{
  v6 = a6;
  v25 = a5;
  v10 = a3;
  v11 = [(PKPassFooterContentView *)self paymentPass];
  v12 = [v10 pass];

  if (v12 == v11)
  {
    v13 = [v25 state];
    v14 = [v13 stateTypeGroup];
    v15 = [v14 header];

    v16 = [PKDashboardSectionDataSourcePassTiles alloc];
    v17 = [v25 metadata];
    v18 = [v17 identifier];
    v19 = [(PKDashboardSectionDataSourcePassTiles *)v16 initWithPass:v11 forContext:a4 tileGroupID:v18 passStateProvider:self->_passStateProvider overridesMaximumRows:v6];

    v20 = objc_alloc_init(MEMORY[0x1E695DF70]);
    [v20 addObject:v19];
    v21 = [[PKSectionedDashboardDataSource alloc] initWithSectionDataSources:v20];
    v22 = [[PKDashboardTileContextViewController alloc] initWithTitle:v15 dataSource:v21];
    v23 = [[PKNavigationController alloc] initWithRootViewController:v22];
    v24 = [(UIView *)self pkui_viewControllerFromResponderChain];
    [v24 presentViewController:v23 animated:1 completion:0];
  }
}

- (id)passTileGroupViewRequestsBeginSuppressingCardEmulation:(id)a3
{
  v4 = a3;
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __85__PKPassPaymentContainerView_passTileGroupViewRequestsBeginSuppressingCardEmulation___block_invoke;
  v21[3] = &unk_1E8010970;
  v21[4] = self;
  [(PKPassPaymentContainerView *)self _performActivationStateUpdate:v21];
  objc_initWeak(&location, self);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __85__PKPassPaymentContainerView_passTileGroupViewRequestsBeginSuppressingCardEmulation___block_invoke_2;
  aBlock[3] = &unk_1E8010998;
  objc_copyWeak(&v19, &location);
  v5 = _Block_copy(aBlock);
  v6 = objc_alloc(MEMORY[0x1E69B8798]);
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __85__PKPassPaymentContainerView_passTileGroupViewRequestsBeginSuppressingCardEmulation___block_invoke_4;
  v16[3] = &unk_1E8010B50;
  v7 = v5;
  v17 = v7;
  v8 = [v6 initWithBlock:v16];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __85__PKPassPaymentContainerView_passTileGroupViewRequestsBeginSuppressingCardEmulation___block_invoke_5;
  v13[3] = &unk_1E8010DD0;
  v14 = v8;
  v15 = v7;
  v9 = v7;
  v10 = v8;
  v11 = _Block_copy(v13);

  objc_destroyWeak(&v19);
  objc_destroyWeak(&location);

  return v11;
}

void __85__PKPassPaymentContainerView_passTileGroupViewRequestsBeginSuppressingCardEmulation___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __85__PKPassPaymentContainerView_passTileGroupViewRequestsBeginSuppressingCardEmulation___block_invoke_3;
    v3[3] = &unk_1E8010970;
    v3[4] = WeakRetained;
    [WeakRetained _performActivationStateUpdate:v3];
  }
}

uint64_t __85__PKPassPaymentContainerView_passTileGroupViewRequestsBeginSuppressingCardEmulation___block_invoke_5(uint64_t a1)
{
  result = [*(a1 + 32) invalidate];
  if (result)
  {
    __break(1u);
  }

  else
  {
    v3 = *(*(a1 + 40) + 16);

    return v3();
  }

  return result;
}

- (void)dataReleaseViewController:(id)a3 didDismissWithError:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1BD026000, v8, OS_LOG_TYPE_DEFAULT, "Dismissed data release controller", buf, 2u);
  }

  if (v7)
  {
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __76__PKPassPaymentContainerView_dataReleaseViewController_didDismissWithError___block_invoke_2;
    v10[3] = &unk_1E8011D28;
    v10[4] = self;
    [(PKPassPaymentContainerView *)self _resetCardEmulationWithCompletion:v10];
  }

  else
  {
    v9 = dispatch_time(0, 300000000);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __76__PKPassPaymentContainerView_dataReleaseViewController_didDismissWithError___block_invoke;
    block[3] = &unk_1E8010970;
    block[4] = self;
    dispatch_after(v9, MEMORY[0x1E69E96A0], block);
  }
}

void __76__PKPassPaymentContainerView_dataReleaseViewController_didDismissWithError___block_invoke(uint64_t a1)
{
  v7[1] = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E696AD88] defaultCenter];
  v3 = *MEMORY[0x1E69BC068];
  v4 = *(a1 + 32);
  v6 = *MEMORY[0x1E69BC070];
  v7[0] = MEMORY[0x1E695E110];
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:&v6 count:1];
  [v2 postNotificationName:v3 object:v4 userInfo:v5];
}

- (void)dataReleaseViewController:(id)a3 didResolveToMerchant:(id)a4
{
  v5 = a4;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __77__PKPassPaymentContainerView_dataReleaseViewController_didResolveToMerchant___block_invoke;
  v7[3] = &unk_1E8010A10;
  v7[4] = self;
  v8 = v5;
  v6 = v5;
  dispatch_async(MEMORY[0x1E69E96A0], v7);
}

@end