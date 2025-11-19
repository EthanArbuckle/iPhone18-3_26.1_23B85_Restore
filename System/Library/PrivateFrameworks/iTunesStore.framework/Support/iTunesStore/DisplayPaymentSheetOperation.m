@interface DisplayPaymentSheetOperation
- (BOOL)_isChallengeReadyToBeSigned;
- (BOOL)_presentPaymentSheetWithPaymentRequest:(id)a3 error:(id *)a4;
- (CGImage)_createDefaultImageWithImageRef:(CGImage *)a3 size:(CGSize)a4 borderPath:(CGPath *)a5;
- (CGImage)_createImageMaskRefWithSize:(CGSize)a3 andPath:(CGPath *)a4;
- (CGImage)_createImageRefWithURL:(id)a3 adornmentStyle:(int64_t)a4 designVersion:(id)a5;
- (CGImage)_createMaskedImageRefForImageRef:(CGImage *)a3 withPathRef:(CGPath *)a4 andAdornmentStyle:(int64_t)a5;
- (CGImage)_createRGBImageRefForGreyScaleImageRef:(CGImage *)a3 width:(unint64_t)a4 height:(unint64_t)a5;
- (CGImage)_createRatingImageWithStringValue:(id)a3 assetScale:(float *)a4;
- (CGImage)_createResizedImageWithOriginalImage:(CGImage *)a3 targetHeight:(double)a4;
- (CGPath)_createBorderPathForAdornmentStyle:(int64_t)a3 iconWidth:(double)a4 iconHeight:(double)a5 designVersion:(id)a6;
- (DisplayPaymentSheetOperation)initWithPaymentSheet:(id)a3;
- (float)_challengeSigningDelay;
- (id)_metricsDialogEvent;
- (id)_paymentRequest;
- (int64_t)_imageTypeForURL:(id)a3;
- (int64_t)_paymentSheetStyle;
- (unint64_t)_paymentRequestorTypeForPayeeType:(int64_t)a3;
- (void)_completeWithSuccess:(BOOL)a3 error:(id)a4;
- (void)_loadURLBag;
- (void)_postMetricsWithDialogEvent:(id)a3;
- (void)dealloc;
- (void)paymentAuthorizationController:(id)a3 didAuthorizePayment:(id)a4 handler:(id)a5;
- (void)paymentAuthorizationController:(id)a3 didEncounterAuthorizationEvent:(unint64_t)a4;
- (void)paymentAuthorizationController:(id)a3 willFinishWithError:(id)a4;
- (void)paymentAuthorizationControllerDidFinish:(id)a3;
- (void)run;
- (void)setLocalAuthAccessControlRef:(__SecAccessControl *)a3;
@end

@implementation DisplayPaymentSheetOperation

- (DisplayPaymentSheetOperation)initWithPaymentSheet:(id)a3
{
  v5 = a3;
  v14.receiver = self;
  v14.super_class = DisplayPaymentSheetOperation;
  v6 = [(DisplayPaymentSheetOperation *)&v14 init];
  v7 = v6;
  if (v6)
  {
    v6->_didAuthorizePayment = 0;
    v6->_didBiometricsLockout = 0;
    v6->_didCancelHomeButton = 0;
    v8 = dispatch_queue_create("com.apple.itunesstored.DisplayPaymentSheetOperation.dispatchQueue", 0);
    dispatchQueue = v7->_dispatchQueue;
    v7->_dispatchQueue = v8;

    fpanID = v7->_fpanID;
    v7->_fpanID = 0;

    v7->_isASNPurchase = 0;
    objc_storeStrong(&v7->_paymentSheet, a3);
    v11 = objc_alloc_init(NSMutableArray);
    userActions = v7->_userActions;
    v7->_userActions = v11;

    v7->_assetScaleIndex = -1;
    v7->_assetScaleRef = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
    v7->_imageArrayIndex = -1;
    v7->_imageArrayRef = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
    v7->_inlineImageArrayIndex = -1;
    v7->_inlineImageArrayRef = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
    v7->_tintArrayIndex = -1;
    v7->_tintArrayRef = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
  }

  return v7;
}

- (void)dealloc
{
  [(PKPaymentAuthorizationController *)self->_controller setDelegate:0];
  [(PKPaymentAuthorizationController *)self->_controller setPrivateDelegate:0];
  assetScaleRef = self->_assetScaleRef;
  if (assetScaleRef)
  {
    CFRelease(assetScaleRef);
  }

  imageArrayRef = self->_imageArrayRef;
  if (imageArrayRef)
  {
    CFRelease(imageArrayRef);
  }

  inlineImageArrayRef = self->_inlineImageArrayRef;
  if (inlineImageArrayRef)
  {
    CFRelease(inlineImageArrayRef);
  }

  localAuthAccessControlRef = self->_localAuthAccessControlRef;
  if (localAuthAccessControlRef)
  {
    CFRelease(localAuthAccessControlRef);
  }

  tintArrayRef = self->_tintArrayRef;
  if (tintArrayRef)
  {
    CFRelease(tintArrayRef);
  }

  v8.receiver = self;
  v8.super_class = DisplayPaymentSheetOperation;
  [(DisplayPaymentSheetOperation *)&v8 dealloc];
}

- (void)setLocalAuthAccessControlRef:(__SecAccessControl *)a3
{
  localAuthAccessControlRef = self->_localAuthAccessControlRef;
  if (localAuthAccessControlRef)
  {
    CFRelease(localAuthAccessControlRef);
  }

  self->_localAuthAccessControlRef = CFRetain(a3);
}

- (void)run
{
  v3 = +[SSLogConfig sharedDaemonConfig];
  if (!v3)
  {
    v3 = +[SSLogConfig sharedConfig];
  }

  v4 = [v3 shouldLog];
  if ([v3 shouldLogToDisk])
  {
    v5 = v4 | 2;
  }

  else
  {
    v5 = v4;
  }

  v6 = [v3 OSLogObject];
  if (!os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v5 &= 2u;
  }

  if (!v5)
  {
    goto LABEL_13;
  }

  v7 = objc_opt_class();
  paymentSheet = self->_paymentSheet;
  v9 = v7;
  v10 = [(SSPaymentSheet *)paymentSheet shouldUppercaseText];
  v11 = @"NO";
  if (v10)
  {
    v11 = @"YES";
  }

  v47 = 138543618;
  v48 = v7;
  v49 = 2114;
  v50 = v11;
  LODWORD(v45) = 22;
  v43 = &v47;
  v12 = _os_log_send_and_compose_impl();

  if (v12)
  {
    v6 = [NSString stringWithCString:v12 encoding:4, &v47, v45];
    free(v12);
    v43 = v6;
    SSFileLog();
LABEL_13:
  }

  authenticationContext = self->_authenticationContext;
  if (authenticationContext)
  {
    v14 = [(AKAppleIDAuthenticationContext *)authenticationContext username];

    if (!v14)
    {
      v36 = +[SSLogConfig sharedDaemonConfig];
      if (!v36)
      {
        v36 = +[SSLogConfig sharedConfig];
      }

      v37 = [v36 shouldLog];
      if ([v36 shouldLogToDisk])
      {
        v38 = v37 | 2;
      }

      else
      {
        v38 = v37;
      }

      v39 = [v36 OSLogObject];
      if (!os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
      {
        v38 &= 2u;
      }

      if (v38)
      {
        v40 = objc_opt_class();
        v47 = 138543362;
        v48 = v40;
        v41 = v40;
        LODWORD(v45) = 12;
        v42 = _os_log_send_and_compose_impl();

        if (!v42)
        {
LABEL_63:

          v25 = ISError();
          [(DisplayPaymentSheetOperation *)self _completeWithSuccess:0 error:v25];
          goto LABEL_64;
        }

        v39 = [NSString stringWithCString:v42 encoding:4, &v47, v45];
        free(v42);
        SSFileLog();
      }

      goto LABEL_63;
    }
  }

  v15 = [(DisplayPaymentSheetOperation *)self _paymentRequest];
  if (!v15)
  {
    v25 = ISError();
    v26 = +[SSLogConfig sharedDaemonConfig];
    if (!v26)
    {
      v26 = +[SSLogConfig sharedConfig];
    }

    v32 = [v26 shouldLog];
    if ([v26 shouldLogToDisk])
    {
      v33 = v32 | 2;
    }

    else
    {
      v33 = v32;
    }

    v29 = [v26 OSLogObject];
    if (!os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      v33 &= 2u;
    }

    if (!v33)
    {
      goto LABEL_49;
    }

    v34 = objc_opt_class();
    v47 = 138543362;
    v48 = v34;
    v31 = v34;
    LODWORD(v45) = 12;
    goto LABEL_47;
  }

  v16 = +[SSLogConfig sharedDaemonConfig];
  if (!v16)
  {
    v16 = +[SSLogConfig sharedConfig];
  }

  v17 = [v16 shouldLog];
  if ([v16 shouldLogToDisk])
  {
    v18 = v17 | 2;
  }

  else
  {
    v18 = v17;
  }

  v19 = [v16 OSLogObject];
  if (!os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    v18 &= 2u;
  }

  if (v18)
  {
    v20 = objc_opt_class();
    v21 = v20;
    v22 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v15 requestType]);
    v47 = 138543618;
    v48 = v20;
    v49 = 2114;
    v50 = v22;
    LODWORD(v45) = 22;
    v44 = &v47;
    v23 = _os_log_send_and_compose_impl();

    if (!v23)
    {
      goto LABEL_28;
    }

    v19 = [NSString stringWithCString:v23 encoding:4, &v47, v45];
    free(v23);
    v44 = v19;
    SSFileLog();
  }

LABEL_28:
  v46 = 0;
  v24 = [(DisplayPaymentSheetOperation *)self _presentPaymentSheetWithPaymentRequest:v15 error:&v46];
  v25 = v46;
  if ((v24 & 1) == 0)
  {
    v26 = +[SSLogConfig sharedDaemonConfig];
    if (!v26)
    {
      v26 = +[SSLogConfig sharedConfig];
    }

    v27 = [v26 shouldLog];
    if ([v26 shouldLogToDisk])
    {
      v28 = v27 | 2;
    }

    else
    {
      v28 = v27;
    }

    v29 = [v26 OSLogObject];
    if (!os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      v28 &= 2u;
    }

    if (!v28)
    {
      goto LABEL_49;
    }

    v30 = objc_opt_class();
    v47 = 138543618;
    v48 = v30;
    v49 = 2114;
    v50 = v25;
    v31 = v30;
    LODWORD(v45) = 22;
LABEL_47:
    v35 = _os_log_send_and_compose_impl();

    if (!v35)
    {
LABEL_50:

      [(DisplayPaymentSheetOperation *)self _completeWithSuccess:0 error:v25];
      goto LABEL_51;
    }

    v29 = [NSString stringWithCString:v35 encoding:4, &v47, v45];
    free(v35);
    SSFileLog();
LABEL_49:

    goto LABEL_50;
  }

LABEL_51:

LABEL_64:
}

- (void)_completeWithSuccess:(BOOL)a3 error:(id)a4
{
  v4 = a3;
  v6 = a4;
  v7 = +[SSLogConfig sharedDaemonConfig];
  if (!v7)
  {
    v7 = +[SSLogConfig sharedConfig];
  }

  v8 = [v7 shouldLog];
  if ([v7 shouldLogToDisk])
  {
    v9 = v8 | 2;
  }

  else
  {
    v9 = v8;
  }

  v10 = [v7 OSLogObject];
  if (!os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v9 &= 2u;
  }

  if (!v9)
  {
    goto LABEL_13;
  }

  v11 = objc_opt_class();
  v12 = @"NO";
  v28 = 138543874;
  v29 = v11;
  v30 = 2114;
  if (v4)
  {
    v12 = @"YES";
  }

  v31 = v12;
  v32 = 2114;
  v33 = v6;
  v13 = v11;
  LODWORD(v25) = 32;
  v24 = &v28;
  v14 = _os_log_send_and_compose_impl();

  if (v14)
  {
    v10 = [NSString stringWithCString:v14 encoding:4, &v28, v25];
    free(v14);
    v24 = v10;
    SSFileLog();
LABEL_13:
  }

  v15 = [(DisplayPaymentSheetOperation *)self _metricsDialogEvent];
  v16 = v15;
  if (v15)
  {
    dispatchQueue = self->_dispatchQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000F237C;
    block[3] = &unk_100327238;
    block[4] = self;
    v27 = v15;
    dispatch_async(dispatchQueue, block);
  }

  [(PKPaymentAuthorizationController *)self->_controller setDelegate:0, v24];
  [(PKPaymentAuthorizationController *)self->_controller setPrivateDelegate:0];
  [(DisplayPaymentSheetOperation *)self setError:v6];
  [(DisplayPaymentSheetOperation *)self setSuccess:v4];
  v18 = [(DisplayPaymentSheetOperation *)self completionHandlerForAutoEnrollment];
  v19 = v18;
  if (v18)
  {
    (*(v18 + 16))(v18, self->_signedChallenge, self->_passwordEquivalentToken, self->_didAuthorizePayment, self->_paymentTokenData, self->_fpanID, v6);
  }

  else
  {
    v20 = [(DisplayPaymentSheetOperation *)self completionHandler];
    v21 = v20;
    if (v20)
    {
      (*(v20 + 16))(v20, self->_signedChallenge, self->_passwordEquivalentToken, self->_didAuthorizePayment, v6);
    }
  }

  [(DisplayPaymentSheetOperation *)self setCompletionHandler:0];
  [(DisplayPaymentSheetOperation *)self setCompletionHandlerForAutoEnrollment:0];
  v22 = [(DisplayPaymentSheetOperation *)self containerCompletionHandler];
  v23 = v22;
  if (v22)
  {
    (*(v22 + 16))(v22);
  }

  [(DisplayPaymentSheetOperation *)self setContainerCompletionHandler:0];
}

- (int64_t)_imageTypeForURL:(id)a3
{
  v3 = [a3 absoluteString];
  v4 = [v3 lowercaseString];

  if ([v4 hasSuffix:@"jpg"])
  {
    v5 = 2;
  }

  else
  {
    v5 = [v4 hasSuffix:@"png"];
  }

  return v5;
}

- (BOOL)_isChallengeReadyToBeSigned
{
  v3 = [(DisplayPaymentSheetOperation *)self challenge];
  if (v3)
  {
    v4 = [(DisplayPaymentSheetOperation *)self accountIdentifier];
    if (v4 && [(DisplayPaymentSheetOperation *)self localAuthAccessControlRef])
    {
      v5 = [(DisplayPaymentSheetOperation *)self localAuthContext];
      if (v5)
      {
        v6 = [(DisplayPaymentSheetOperation *)self localAuthOptions];
        v7 = v6 != 0;
      }

      else
      {
        v7 = 0;
      }
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)_loadURLBag
{
  v3 = objc_alloc_init(ISLoadURLBagOperation);
  v17 = 0;
  v4 = [(DisplayPaymentSheetOperation *)self runSubOperation:v3 returningError:&v17];
  v5 = v17;
  v6 = v5;
  if (v4)
  {
    v7 = v5 == 0;
  }

  else
  {
    v7 = 0;
  }

  if (v7)
  {
    v15 = [v3 URLBag];
    urlBag = self->_urlBag;
    self->_urlBag = v15;
    goto LABEL_17;
  }

  urlBag = +[SSLogConfig sharedDaemonConfig];
  if (!urlBag)
  {
    urlBag = +[SSLogConfig sharedConfig];
  }

  v9 = [urlBag shouldLog];
  if ([urlBag shouldLogToDisk])
  {
    v10 = v9 | 2;
  }

  else
  {
    v10 = v9;
  }

  v11 = [urlBag OSLogObject];
  if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    v10 &= 2u;
  }

  if (!v10)
  {
    goto LABEL_15;
  }

  v12 = objc_opt_class();
  v18 = 138543618;
  v19 = v12;
  v20 = 2114;
  v21 = v6;
  v13 = v12;
  LODWORD(v16) = 22;
  v14 = _os_log_send_and_compose_impl();

  if (v14)
  {
    v11 = [NSString stringWithCString:v14 encoding:4, &v18, v16];
    free(v14);
    SSFileLog();
LABEL_15:
  }

LABEL_17:
}

- (id)_paymentRequest
{
  v3 = ISWeakLinkedClassForString();
  v236 = ISWeakLinkedClassForString();
  v237 = ISWeakLinkedClassForString();
  v4 = objc_alloc_init(v3);
  [v4 setAccesssControlRef:{-[DisplayPaymentSheetOperation localAuthAccessControlRef](self, "localAuthAccessControlRef")}];
  v5 = [(DisplayPaymentSheetOperation *)self authenticationContext];
  [v4 setAppleIDAuthenticationContext:v5];

  v6 = [(DisplayPaymentSheetOperation *)self localAuthContext];
  v7 = [v6 externalizedContext];
  [v4 setExternalizedContext:v7];

  v8 = [(DisplayPaymentSheetOperation *)self paymentSheet];
  LODWORD(v7) = [v8 isApplePayClassic];

  v9 = &CFDictionaryGetValue_ptr;
  if (v7)
  {
    v10 = [(DisplayPaymentSheetOperation *)self paymentSheet];
    v11 = [v10 merchantSession];

    v12 = +[SSLogConfig sharedDaemonConfig];
    v13 = v12;
    if (v11)
    {
      if (!v12)
      {
        v13 = +[SSLogConfig sharedConfig];
      }

      v14 = [v13 shouldLog];
      if ([v13 shouldLogToDisk])
      {
        v15 = v14 | 2;
      }

      else
      {
        v15 = v14;
      }

      v16 = [v13 OSLogObject];
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v17 = v15;
      }

      else
      {
        v17 = v15 & 2;
      }

      if (v17)
      {
        v18 = objc_opt_class();
        v260 = 138543362;
        v261 = v18;
        LODWORD(v231) = 12;
        v227 = &v260;
        v19 = _os_log_send_and_compose_impl();

        if (!v19)
        {
LABEL_15:
          v20 = 0;
          goto LABEL_39;
        }

        v16 = [NSString stringWithCString:v19 encoding:4, &v260, v231];
        free(v19);
        v227 = v16;
        SSFileLog();
      }

      goto LABEL_15;
    }

    if (!v12)
    {
      v13 = +[SSLogConfig sharedConfig];
    }

    v25 = [v13 shouldLog];
    if ([v13 shouldLogToDisk])
    {
      v26 = v25 | 2;
    }

    else
    {
      v26 = v25;
    }

    v23 = [v13 OSLogObject];
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      v27 = v26;
    }

    else
    {
      v27 = v26 & 2;
    }

    if (!v27)
    {
      goto LABEL_37;
    }
  }

  else
  {
    v13 = +[SSLogConfig sharedDaemonConfig];
    if (!v13)
    {
      v13 = +[SSLogConfig sharedConfig];
    }

    v21 = [v13 shouldLog];
    if ([v13 shouldLogToDisk])
    {
      v22 = v21 | 2;
    }

    else
    {
      v22 = v21;
    }

    v23 = [v13 OSLogObject];
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      v24 = v22;
    }

    else
    {
      v24 = v22 & 2;
    }

    if (!v24)
    {
      goto LABEL_37;
    }
  }

  v28 = objc_opt_class();
  v260 = 138543362;
  v261 = v28;
  LODWORD(v231) = 12;
  v227 = &v260;
  v29 = _os_log_send_and_compose_impl();

  if (v29)
  {
    v23 = [NSString stringWithCString:v29 encoding:4, &v260, v231];
    free(v29);
    v227 = v23;
    SSFileLog();
LABEL_37:
  }

  v20 = 1;
LABEL_39:

  [v4 setRequestType:v20];
  v30 = [v4 externalizedContext];
  if (v30)
  {
  }

  else
  {
    v31 = [v4 appleIDAuthenticationContext];

    if (!v31)
    {
      self->_isASNPurchase = 1;
    }
  }

  v32 = self->_paymentSheet;
  v33 = [(SSPaymentSheet *)v32 currencyCode];
  [v4 setCurrencyCode:v33];

  v34 = [(SSPaymentSheet *)v32 countryCode];
  [v4 setCountryCode:v34];

  if ([(SSPaymentSheet *)v32 titleType]== 2)
  {
    if ([(SSPaymentSheet *)v32 isApplePayClassic])
    {
      [v4 setRequestor:{-[DisplayPaymentSheetOperation _paymentRequestorTypeForPayeeType:](self, "_paymentRequestorTypeForPayeeType:", -[SSPaymentSheet payeeType](v32, "payeeType"))}];
      v35 = [(SSPaymentSheet *)v32 title];
      [v4 setLocalizedNavigationTitle:v35];

      goto LABEL_50;
    }

    v39 = v4;
    v38 = 0;
  }

  else
  {
    v36 = [(SSPaymentSheet *)v32 title];
    [v4 setLocalizedNavigationTitle:v36];

    v37 = [(DisplayPaymentSheetOperation *)self _paymentRequestorTypeForPayeeType:[(SSPaymentSheet *)v32 payeeType]];
    if (!v37)
    {
      goto LABEL_50;
    }

    v38 = v37;
    v39 = v4;
  }

  [v39 setRequestor:{v38, v227}];
LABEL_50:
  v40 = +[SSLogConfig sharedDaemonConfig];
  if (!v40)
  {
    v40 = +[SSLogConfig sharedConfig];
  }

  v41 = [v40 shouldLog];
  if ([v40 shouldLogToDisk])
  {
    v42 = v41 | 2;
  }

  else
  {
    v42 = v41;
  }

  v43 = [v40 OSLogObject];
  if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
  {
    v44 = v42;
  }

  else
  {
    v44 = v42 & 2;
  }

  v240 = v32;
  if (!v44)
  {
    goto LABEL_61;
  }

  v45 = objc_opt_class();
  v46 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v4 requestor]);
  v47 = [v4 localizedNavigationTitle];
  v260 = 138543874;
  v261 = v45;
  v262 = 2114;
  v263 = v46;
  v264 = 2114;
  v265 = v47;
  LODWORD(v231) = 32;
  v228 = &v260;
  v48 = _os_log_send_and_compose_impl();

  v32 = v240;
  if (v48)
  {
    v43 = [NSString stringWithCString:v48 encoding:4, &v260, v231];
    free(v48);
    v228 = v43;
    SSFileLog();
LABEL_61:
  }

  if ((+[ISBiometricStore shouldUseAutoEnrollment](ISBiometricStore, "shouldUseAutoEnrollment") & 1) != 0 || +[ISBiometricStore shouldUseApplePayClassic])
  {
    if (![AMSBiometrics isActionSupported:4 withAccessControl:self->_localAuthAccessControlRef, v228])
    {
      v49 = [AMSBiometrics ACLVersionForAccessControl:self->_localAuthAccessControlRef];
      v58 = +[SSLogConfig sharedDaemonConfig];
      if (!v58)
      {
        v58 = +[SSLogConfig sharedConfig];
      }

      v59 = [v58 shouldLog];
      if ([v58 shouldLogToDisk])
      {
        v60 = v59 | 2;
      }

      else
      {
        v60 = v59;
      }

      v61 = [v58 OSLogObject];
      if (!os_log_type_enabled(v61, OS_LOG_TYPE_DEFAULT))
      {
        v60 &= 2u;
      }

      if (v60)
      {
        v62 = objc_opt_class();
        v260 = 138543618;
        v261 = v62;
        v262 = 2114;
        v263 = v49;
        LODWORD(v231) = 22;
        v228 = &v260;
        v63 = _os_log_send_and_compose_impl();

        if (!v63)
        {
LABEL_142:

          goto LABEL_143;
        }

        v61 = [NSString stringWithCString:v63 encoding:4, &v260, v231];
        free(v63);
        v228 = v61;
        SSFileLog();
      }

LABEL_141:

      goto LABEL_142;
    }

    v49 = [(SSPaymentSheet *)v32 merchantSession];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v50 = +[SSLogConfig sharedDaemonConfig];
      if (!v50)
      {
        v50 = +[SSLogConfig sharedConfig];
      }

      v64 = [v50 shouldLog];
      if ([v50 shouldLogToDisk])
      {
        v65 = v64 | 2;
      }

      else
      {
        v65 = v64;
      }

      v66 = [v50 OSLogObject];
      if (!os_log_type_enabled(v66, OS_LOG_TYPE_DEFAULT))
      {
        v65 &= 2u;
      }

      if (v65)
      {
        v67 = objc_opt_class();
        v260 = 138543362;
        v261 = v67;
        LODWORD(v231) = 12;
        v228 = &v260;
        v68 = _os_log_send_and_compose_impl();

        if (!v68)
        {
          goto LABEL_112;
        }

        v66 = [NSString stringWithCString:v68 encoding:4, &v260, v231];
        free(v68);
        v228 = v66;
        SSFileLog();
      }

LABEL_112:
      if (![(SSPaymentSheet *)v32 isApplePayClassic])
      {
LABEL_143:

        goto LABEL_144;
      }

      v58 = [(SSPaymentSheet *)v32 countryCode];
      if (v58)
      {
        v74 = [NSSet setWithObject:v58];
        [v4 setSupportedCountries:v74];
        goto LABEL_127;
      }

      v74 = +[SSLogConfig sharedDaemonConfig];
      if (!v74)
      {
        v74 = +[SSLogConfig sharedConfig];
      }

      v75 = [v74 shouldLog];
      if ([v74 shouldLogToDisk])
      {
        v76 = v75 | 2;
      }

      else
      {
        v76 = v75;
      }

      v77 = [v74 OSLogObject];
      if (!os_log_type_enabled(v77, OS_LOG_TYPE_ERROR))
      {
        v76 &= 2u;
      }

      if (v76)
      {
        v78 = objc_opt_class();
        v260 = 138543362;
        v261 = v78;
        LODWORD(v231) = 12;
        v228 = &v260;
        v79 = _os_log_send_and_compose_impl();

        if (!v79)
        {
          v32 = v240;
LABEL_127:

          v61 = +[ISBiometricStore applePayClassicNetworks];
          if (v61)
          {
            [v4 setSupportedNetworks:v61];
            goto LABEL_141;
          }

          v80 = +[SSLogConfig sharedDaemonConfig];
          if (!v80)
          {
            v80 = +[SSLogConfig sharedConfig];
          }

          v81 = [v80 shouldLog];
          if ([v80 shouldLogToDisk])
          {
            v82 = v81 | 2;
          }

          else
          {
            v82 = v81;
          }

          v83 = [v80 OSLogObject];
          if (!os_log_type_enabled(v83, OS_LOG_TYPE_ERROR))
          {
            v82 &= 2u;
          }

          if (v82)
          {
            v84 = objc_opt_class();
            v260 = 138543362;
            v261 = v84;
            LODWORD(v231) = 12;
            v228 = &v260;
            v85 = _os_log_send_and_compose_impl();

            v9 = &CFDictionaryGetValue_ptr;
            if (!v85)
            {
LABEL_140:

              v32 = v240;
              goto LABEL_141;
            }

            v83 = [NSString stringWithCString:v85 encoding:4, &v260, v231];
            free(v85);
            v228 = v83;
            SSFileLog();
          }

          goto LABEL_140;
        }

        v77 = [NSString stringWithCString:v79 encoding:4, &v260, v231];
        free(v79);
        v228 = v77;
        SSFileLog();
        v32 = v240;
      }

      goto LABEL_127;
    }

    v50 = [objc_alloc(ISWeakLinkedClassForString()) initWithDictionary:v49];
    v51 = +[SSLogConfig sharedDaemonConfig];
    v52 = v51;
    if (v50)
    {
      if (!v51)
      {
        v52 = +[SSLogConfig sharedConfig];
      }

      v53 = [v52 shouldLog];
      if ([v52 shouldLogToDisk])
      {
        v54 = v53 | 2;
      }

      else
      {
        v54 = v53;
      }

      v55 = [v52 OSLogObject];
      if (!os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
      {
        v54 &= 2u;
      }

      if (v54)
      {
        v56 = objc_opt_class();
        v260 = 138543362;
        v261 = v56;
        LODWORD(v231) = 12;
        v228 = &v260;
        v57 = _os_log_send_and_compose_impl();

        v32 = v240;
        if (!v57)
        {
LABEL_78:

          [v4 setMerchantSession:v50];
          [v4 setMerchantCapabilities:13];
          self->_didAttemptDualActionBuy = 1;
          goto LABEL_112;
        }

        v55 = [NSString stringWithCString:v57 encoding:4, &v260, v231];
        free(v57);
        v228 = v55;
        SSFileLog();
      }

      goto LABEL_78;
    }

    if (!v51)
    {
      v52 = +[SSLogConfig sharedConfig];
    }

    v69 = [v52 shouldLog];
    if ([v52 shouldLogToDisk])
    {
      v70 = v69 | 2;
    }

    else
    {
      v70 = v69;
    }

    v71 = [v52 OSLogObject];
    if (!os_log_type_enabled(v71, OS_LOG_TYPE_ERROR))
    {
      v70 &= 2u;
    }

    if (v70)
    {
      v72 = objc_opt_class();
      v260 = 138543362;
      v261 = v72;
      LODWORD(v231) = 12;
      v228 = &v260;
      v73 = _os_log_send_and_compose_impl();

      v32 = v240;
      if (!v73)
      {
LABEL_111:

        goto LABEL_112;
      }

      v71 = [NSString stringWithCString:v73 encoding:4, &v260, v231];
      free(v73);
      v228 = v71;
      SSFileLog();
    }

    goto LABEL_111;
  }

LABEL_144:
  v86 = objc_opt_new();
  v87 = [(SSPaymentSheet *)v32 salableInfoLabel];

  v246 = self;
  v239 = v86;
  if (!v87)
  {
    goto LABEL_237;
  }

  v88 = objc_alloc_init(v237);
  [(SSPaymentSheet *)v32 salableIconURL];
  v234 = v232 = v88;
  if (v234)
  {
    if ([(SSPaymentSheet *)self->_paymentSheet payeeType]== 3 && ![(SSPaymentSheet *)self->_paymentSheet salableIconType])
    {
      v90 = 1;
    }

    else
    {
      v89 = [(SSPaymentSheet *)self->_paymentSheet salableIconType]- 1;
      if (v89 > 3)
      {
        v90 = 0;
      }

      else
      {
        v90 = qword_1002A8F50[v89];
      }
    }

    v91 = [(DisplayPaymentSheetOperation *)self paymentSheet];
    v92 = [v91 designVersion];
    v93 = [(DisplayPaymentSheetOperation *)self _createImageRefWithURL:v234 adornmentStyle:v90 designVersion:v92];

    if (v93)
    {
      CFArrayAppendValue(self->_imageArrayRef, v93);
      v94 = self->_imageArrayIndex + 1;
      self->_imageArrayIndex = v94;
      [v88 setImage:{CFArrayGetValueAtIndex(self->_imageArrayRef, v94)}];
      CGImageRelease(v93);
      goto LABEL_167;
    }

    v95 = +[SSLogConfig sharedDaemonConfig];
    if (!v95)
    {
      v95 = +[SSLogConfig sharedConfig];
    }

    v96 = [v95 shouldLog];
    if ([v95 shouldLogToDisk])
    {
      v97 = v96 | 2;
    }

    else
    {
      v97 = v96;
    }

    v98 = [v95 OSLogObject];
    if (os_log_type_enabled(v98, OS_LOG_TYPE_ERROR))
    {
      v99 = v97;
    }

    else
    {
      v99 = v97 & 2;
    }

    if (v99)
    {
      v100 = objc_opt_class();
      v260 = 138543618;
      v261 = v100;
      v262 = 2114;
      v263 = v234;
      LODWORD(v231) = 22;
      v228 = &v260;
      v101 = _os_log_send_and_compose_impl();

      if (!v101)
      {
LABEL_166:

        goto LABEL_167;
      }

      v98 = [NSString stringWithCString:v101 encoding:4, &v260, v231];
      free(v101);
      v228 = v98;
      SSFileLog();
    }

    goto LABEL_166;
  }

LABEL_167:
  v233 = v4;
  v102 = [(SSPaymentSheet *)v32 inlineImages];
  v103 = [v102 count];
  v104 = +[SSLogConfig sharedDaemonConfig];
  v105 = v104;
  if (!v103)
  {
    if (!v104)
    {
      v105 = +[SSLogConfig sharedConfig];
    }

    v113 = [v105 shouldLog];
    if ([v105 shouldLogToDisk])
    {
      v114 = v113 | 2;
    }

    else
    {
      v114 = v113;
    }

    v115 = [v105 OSLogObject];
    if (os_log_type_enabled(v115, OS_LOG_TYPE_DEFAULT))
    {
      v116 = v114;
    }

    else
    {
      v116 = v114 & 2;
    }

    if (v116)
    {
      v117 = objc_opt_class();
      v260 = 138543362;
      v261 = v117;
      LODWORD(v231) = 12;
      v229 = &v260;
      v118 = _os_log_send_and_compose_impl();

      if (!v118)
      {
LABEL_193:

        goto LABEL_194;
      }

      v115 = [NSString stringWithCString:v118 encoding:4, &v260, v231];
      free(v118);
      v229 = v115;
      SSFileLog();
    }

    goto LABEL_193;
  }

  if (!v104)
  {
    v105 = +[SSLogConfig sharedConfig];
  }

  v106 = [v105 shouldLog];
  if ([v105 shouldLogToDisk])
  {
    v107 = v106 | 2;
  }

  else
  {
    v107 = v106;
  }

  v108 = [v105 OSLogObject];
  if (os_log_type_enabled(v108, OS_LOG_TYPE_DEFAULT))
  {
    v109 = v107;
  }

  else
  {
    v109 = v107 & 2;
  }

  if (!v109)
  {
    goto LABEL_179;
  }

  v110 = objc_opt_class();
  v111 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v102 count]);
  v260 = 138543618;
  v261 = v110;
  v262 = 2114;
  v263 = v111;
  LODWORD(v231) = 22;
  v229 = &v260;
  v112 = _os_log_send_and_compose_impl();

  if (v112)
  {
    v108 = [NSString stringWithCString:v112 encoding:4, &v260, v231];
    free(v112);
    v229 = v108;
    SSFileLog();
LABEL_179:
  }

  v257[0] = _NSConcreteStackBlock;
  v257[1] = 3221225472;
  v257[2] = sub_1000F4C74;
  v257[3] = &unk_100328AF8;
  v257[4] = self;
  [v102 enumerateObjectsUsingBlock:v257];
LABEL_194:
  v244 = [(SSPaymentSheet *)v32 salableInfoLabel];
  if ([v102 count])
  {
    v119 = 0;
    while (1)
    {
      if (v119 <= self->_inlineImageArrayIndex)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(self->_inlineImageArrayRef, v119);
        Mutable = CFDataCreateMutable(kCFAllocatorDefault, 0);
        v130 = CGImageDestinationCreateWithData(Mutable, kUTTypePNG, 1uLL, 0);
        CGImageDestinationAddImage(v130, ValueAtIndex, 0);
        if (CGImageDestinationFinalize(v130))
        {
          v131 = [NSNumber numberWithLong:v119];
          v132 = [NSString stringWithFormat:@"%@", v131];

          self = v246;
          if (v119 <= v246->_assetScaleIndex)
          {
            [CFArrayGetValueAtIndex(v246->_assetScaleRef v119)];
          }

          if (v119 <= v246->_tintArrayIndex)
          {
            CFArrayGetValueAtIndex(v246->_tintArrayRef, v119);
          }

          v135 = v244;
          v244 = SSPaymentSheetImagePlaceholderReplaceTagWithImageDataAndTint();
LABEL_228:

LABEL_229:
          if (Mutable)
          {
            CFRelease(Mutable);
          }

          v9 = &CFDictionaryGetValue_ptr;
          if (v130)
          {
            CFRelease(v130);
          }

          goto LABEL_233;
        }

        v132 = [v9[412] sharedDaemonConfig];
        if (!v132)
        {
          v132 = +[SSLogConfig sharedConfig];
        }

        v133 = [v132 shouldLog];
        if ([v132 shouldLogToDisk])
        {
          v134 = v133 | 2;
        }

        else
        {
          v134 = v133;
        }

        v135 = [v132 OSLogObject];
        if (os_log_type_enabled(v135, OS_LOG_TYPE_ERROR))
        {
          v136 = v134;
        }

        else
        {
          v136 = v134 & 2;
        }

        if (v136)
        {
          v137 = objc_opt_class();
          v260 = 138543362;
          v261 = v137;
          LODWORD(v231) = 12;
          v228 = &v260;
          v138 = _os_log_send_and_compose_impl();

          if (!v138)
          {
            self = v246;
            goto LABEL_229;
          }

          v135 = [NSString stringWithCString:v138 encoding:4, &v260, v231];
          free(v138);
          v228 = v135;
          SSFileLog();
        }

        self = v246;
        goto LABEL_228;
      }

      v120 = [v9[412] sharedDaemonConfig];
      if (!v120)
      {
        v120 = [v9[412] sharedConfig];
      }

      v121 = [v120 shouldLog];
      if ([v120 shouldLogToDisk])
      {
        v121 |= 2u;
      }

      v122 = [v120 OSLogObject];
      if (os_log_type_enabled(v122, OS_LOG_TYPE_DEFAULT))
      {
        v123 = v121;
      }

      else
      {
        v123 = v121 & 2;
      }

      if (!v123)
      {
        goto LABEL_207;
      }

      v124 = objc_opt_class();
      v125 = [NSNumber numberWithLong:v119];
      v126 = [NSNumber numberWithLong:self->_inlineImageArrayIndex];
      v260 = 138412802;
      v261 = v124;
      v262 = 2112;
      v263 = v125;
      v264 = 2112;
      v265 = v126;
      LODWORD(v231) = 32;
      v228 = &v260;
      v127 = _os_log_send_and_compose_impl();

      if (v127)
      {
        break;
      }

LABEL_208:

      self = v246;
      v9 = &CFDictionaryGetValue_ptr;
LABEL_233:
      if (++v119 >= [v102 count])
      {
        goto LABEL_236;
      }
    }

    v122 = [NSString stringWithCString:v127 encoding:4, &v260, v231];
    free(v127);
    v228 = v122;
    SSFileLog();
LABEL_207:

    goto LABEL_208;
  }

LABEL_236:
  v139 = SSPaymentSheetImagePlaceholderRemoveAllTags();

  v140 = [[NSAttributedString alloc] initWithString:&stru_10033CC30];
  [v232 setTitle:v140];

  [v232 setLabel:v139];
  v86 = v239;
  [v239 addObject:v232];

  v4 = v233;
  v32 = v240;
LABEL_237:
  v141 = [(SSPaymentSheet *)v32 ratingHeader];
  v142 = [(SSPaymentSheet *)v32 ratingValue];
  v143 = v142;
  v245 = v141;
  if (v141 && v142)
  {
    v144 = objc_alloc_init(v237);
    v145 = [[NSAttributedString alloc] initWithString:v245];
    [v144 setTitle:v145];

    v146 = [[NSAttributedString alloc] initWithString:v143];
    [v144 setLabel:v146];

    [v86 addObject:v144];
  }

  v147 = [(SSPaymentSheet *)v32 flexList];
  if (v147)
  {
    v254[0] = _NSConcreteStackBlock;
    v254[1] = 3221225472;
    v254[2] = sub_1000F5380;
    v254[3] = &unk_100328B20;
    v254[4] = self;
    v256 = v237;
    v255 = v86;
    [(__CFString *)v147 enumerateObjectsUsingBlock:v254];
  }

  allocator = v143;
  v148 = [(SSPaymentSheet *)v32 attributedList];
  type = v147;
  v241 = v148;
  if (v148)
  {
    v149 = v148;
    v251[0] = _NSConcreteStackBlock;
    v251[1] = 3221225472;
    v251[2] = sub_1000F5790;
    v251[3] = &unk_100328B98;
    v253 = v236;
    v150 = objc_alloc_init(NSMutableArray);
    v252 = v150;
    [v149 enumerateObjectsUsingBlock:v251];
    v151 = [(DisplayPaymentSheetOperation *)v246 paymentSheet];
    v152 = [v151 paymentSummary];

    v153 = [(DisplayPaymentSheetOperation *)v246 paymentSheet];
    v154 = v153;
    if (v152)
    {
      v155 = [v153 paymentSummary];
    }

    else
    {
      v163 = [v153 storeName];

      if (v163)
      {
        v154 = [NSBundle bundleForClass:objc_opt_class()];
        v164 = [v154 localizedStringForKey:@"CONFIRMATION_TITLE_PAY" value:&stru_10033CC30 table:@"Mesa"];
        v165 = objc_opt_self();
        v166 = [v165 paymentSheet];
        v167 = [v166 storeName];
        v156 = [NSString stringWithFormat:@"%@ %@", v164, v167];

        v32 = v240;
        goto LABEL_260;
      }

      v154 = [NSBundle bundleForClass:objc_opt_class()];
      v155 = [v154 localizedStringForKey:@"CONFIRMATION_TITLE_PAY" value:&stru_10033CC30 table:@"Mesa"];
    }

    v156 = v155;
LABEL_260:

    v168 = [(DisplayPaymentSheetOperation *)v246 paymentSheet];
    v169 = [v168 price];
    v170 = v169;
    if (v169)
    {
      v171 = v169;
    }

    else
    {
      v171 = &off_10034BDF0;
    }

    v172 = v171;

    [v172 decimalValue];
    v173 = [NSDecimalNumber decimalNumberWithDecimal:&v260];
    v174 = [v236 summaryItemWithLabel:v156 amount:v173];

    [v150 addObject:v174];
    v162 = [v150 copy];

    v159 = v252;
    v86 = v239;
    goto LABEL_264;
  }

  v150 = [v9[412] sharedDaemonConfig];
  if (!v150)
  {
    v150 = [v9[412] sharedConfig];
  }

  v157 = [v150 shouldLog];
  if ([v150 shouldLogToDisk])
  {
    v158 = v157 | 2;
  }

  else
  {
    v158 = v157;
  }

  v159 = [v150 OSLogObject];
  if (os_log_type_enabled(v159, OS_LOG_TYPE_DEFAULT))
  {
    v160 = v158;
  }

  else
  {
    v160 = v158 & 2;
  }

  if (v160)
  {
    v161 = objc_opt_class();
    v260 = 138543362;
    v261 = v161;
    LODWORD(v231) = 12;
    v230 = &v260;
    v162 = _os_log_send_and_compose_impl();

    if (!v162)
    {
      goto LABEL_265;
    }

    v159 = [NSString stringWithCString:v162 encoding:4, &v260, v231];
    free(v162);
    v230 = v159;
    SSFileLog();
  }

  v162 = 0;
LABEL_264:

LABEL_265:
  v175 = [(DisplayPaymentSheetOperation *)v246 paymentSheet];
  v176 = [v175 designVersion];
  v177 = AMSPaymentSheetDesignVersion_2_0;
  v178 = [v176 isEqualToNumber:AMSPaymentSheetDesignVersion_2_0];

  if (v178)
  {
    goto LABEL_285;
  }

  v179 = [(SSPaymentSheet *)v32 accountHeader];
  if (v179)
  {
    v180 = v162;
    v181 = [(DisplayPaymentSheetOperation *)v246 accountName];
    v182 = [SSPaymentSheet stringWithFormattedUsernameForString:SSPaymentSheetAppleIDUppercaseReplacementPattern username:v181];
    if (v182)
    {
      v183 = objc_alloc_init(v237);
      v184 = [[NSAttributedString alloc] initWithString:v179];
      [v183 setTitle:v184];

      v185 = [[NSAttributedString alloc] initWithString:v182];
      [v183 setLabel:v185];

      [v239 addObject:v183];
LABEL_283:
      v162 = v180;

      v9 = &CFDictionaryGetValue_ptr;
      v86 = v239;
      goto LABEL_284;
    }

    v186 = v4;
    v183 = [v9[412] sharedDaemonConfig];
    if (!v183)
    {
      v183 = +[SSLogConfig sharedConfig];
    }

    v187 = [v183 shouldLog];
    if ([v183 shouldLogToDisk])
    {
      v187 |= 2u;
    }

    v188 = [v183 OSLogObject];
    if (os_log_type_enabled(v188, OS_LOG_TYPE_ERROR))
    {
      v189 = v187;
    }

    else
    {
      v189 = v187 & 2;
    }

    if (v189)
    {
      v190 = objc_opt_class();
      v260 = 138543362;
      v261 = v190;
      LODWORD(v231) = 12;
      v230 = &v260;
      v191 = _os_log_send_and_compose_impl();

      if (!v191)
      {
        v4 = v186;
        goto LABEL_282;
      }

      v188 = [NSString stringWithCString:v191 encoding:4, &v260, v231];
      free(v191);
      v230 = v188;
      SSFileLog();
    }

    v4 = v186;

LABEL_282:
    v32 = v240;
    goto LABEL_283;
  }

LABEL_284:

LABEL_285:
  [v4 setPaymentContentItems:{v86, v230}];
  v235 = v162;
  if ([v162 count])
  {
    [v4 setPaymentSummaryItems:v162];
    [v4 setPaymentSummaryPinned:1];
    [v4 setSuppressTotal:1];
  }

  else
  {
    v192 = [(SSPaymentSheet *)v32 paymentSummary];
    v193 = [(SSPaymentSheet *)v32 storeName];
    v238 = v193;
    v194 = v4;
    if (v192)
    {
      v195 = v192;
    }

    else
    {
      v196 = v193;
      if (v193)
      {
        v197 = [NSBundle bundleForClass:objc_opt_class()];
        v198 = [v197 localizedStringForKey:@"CONFIRMATION_TITLE_PAY" value:&stru_10033CC30 table:@"Mesa"];
        v195 = [NSString stringWithFormat:@"%@ %@", v198, v196];

        v32 = v240;
      }

      else
      {
        v199 = [NSBundle bundleForClass:objc_opt_class()];
        v195 = [v199 localizedStringForKey:@"CONFIRMATION_TITLE_PAY" value:&stru_10033CC30 table:@"Mesa"];
      }
    }

    v200 = [(SSPaymentSheet *)v32 price];
    v201 = v200;
    v202 = &off_10034BDF0;
    if (v200)
    {
      v202 = v200;
    }

    v203 = v202;

    [v203 decimalValue];
    v204 = [NSDecimalNumber decimalNumberWithDecimal:&v260];
    [v236 summaryItemWithLabel:v195 amount:v204];
    v206 = v205 = v32;

    v207 = objc_alloc_init(NSMutableArray);
    v208 = [(SSPaymentSheet *)v205 priceSectionItems];
    v248[0] = _NSConcreteStackBlock;
    v248[1] = 3221225472;
    v248[2] = sub_1000F5C2C;
    v248[3] = &unk_100328BC0;
    v250 = v236;
    v209 = v207;
    v249 = v209;
    [v208 enumerateObjectsUsingBlock:v248];
    if (v192 && v208)
    {
      [v194 setLocalizedSummaryItemsTitle:v192];
    }

    [v209 addObject:v206];
    [v194 setPaymentSummaryItems:v209];
    v210 = [(SSPaymentSheet *)v240 price];
    if (!v210 || (v211 = v210, v212 = [(SSPaymentSheet *)v240 shouldSuppressPrice], v211, v212))
    {
      [v194 setSuppressTotal:1];
    }

    v4 = v194;
    v9 = &CFDictionaryGetValue_ptr;
    v86 = v239;
    v32 = v240;
  }

  v213 = [(SSPaymentSheet *)v32 confirmationTitleType];
  if (v213 <= 5)
  {
    [v4 setConfirmationStyle:v213];
  }

  v214 = [(SSPaymentSheet *)v32 designVersion];
  v215 = [v214 isEqualToNumber:v177];

  v216 = allocator;
  if (v215)
  {
    [v4 setClientViewSourceIdentifier:@"AMSUIPaymentSheetViewProvider"];
    v247 = 0;
    v217 = [NSKeyedArchiver archivedDataWithRootObject:v4 requiringSecureCoding:1 error:&v247];
    v218 = v247;
    if (v218)
    {
      v219 = [v9[412] sharedDaemonConfig];
      if (!v219)
      {
        v219 = [v9[412] sharedConfig];
      }

      v220 = [v219 shouldLog];
      if ([v219 shouldLogToDisk])
      {
        v220 |= 2u;
      }

      v221 = [v219 OSLogObject];
      if (os_log_type_enabled(v221, OS_LOG_TYPE_ERROR))
      {
        v222 = v220;
      }

      else
      {
        v222 = v220 & 2;
      }

      if (v222)
      {
        v223 = objc_opt_class();
        v260 = 138543618;
        v261 = v223;
        v262 = 2114;
        v263 = v218;
        LODWORD(v231) = 22;
        v224 = _os_log_send_and_compose_impl();

        if (!v224)
        {
          v86 = v239;
          v32 = v240;
          goto LABEL_319;
        }

        v221 = [NSString stringWithCString:v224 encoding:4, &v260, v231];
        free(v224);
        SSFileLog();
      }

      v32 = v240;

      v86 = v239;
    }

    else
    {
      if (!v217)
      {
LABEL_320:

        goto LABEL_321;
      }

      v258 = @"AMSPaymentSheetPaymentRequest";
      v259 = v217;
      v219 = [NSDictionary dictionaryWithObjects:&v259 forKeys:&v258 count:1];
      [v4 setClientViewSourceParameter:v219];
    }

LABEL_319:

    v216 = allocator;
    goto LABEL_320;
  }

LABEL_321:
  v225 = v4;

  return v4;
}

- (unint64_t)_paymentRequestorTypeForPayeeType:(int64_t)a3
{
  if ((a3 - 1) > 4)
  {
    return 0;
  }

  else
  {
    return qword_1002A8F70[a3 - 1];
  }
}

- (int64_t)_paymentSheetStyle
{
  v3 = [(DisplayPaymentSheetOperation *)self localAuthContext];
  if (v3)
  {
    v4 = v3;
    v5 = [(DisplayPaymentSheetOperation *)self authenticationContext];

    if (v5)
    {
      return 1;
    }
  }

  v7 = [(DisplayPaymentSheetOperation *)self authenticationContext];

  if (v7)
  {
    return 2;
  }

  else
  {
    return 3;
  }
}

- (BOOL)_presentPaymentSheetWithPaymentRequest:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = +[SSLogConfig sharedDaemonConfig];
  if (!v7)
  {
    v7 = +[SSLogConfig sharedConfig];
  }

  v8 = [v7 shouldLog];
  if ([v7 shouldLogToDisk])
  {
    v9 = v8 | 2;
  }

  else
  {
    v9 = v8;
  }

  v10 = [v7 OSLogObject];
  if (!os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v9 &= 2u;
  }

  if (v9)
  {
    LODWORD(location[0]) = 138543362;
    *(location + 4) = objc_opt_class();
    v11 = *(location + 4);
    LODWORD(v35) = 12;
    v34 = location;
    v12 = _os_log_send_and_compose_impl();

    if (v12)
    {
      v13 = [NSString stringWithCString:v12 encoding:4, location, v35];
      free(v12);
      v34 = v13;
      SSFileLog();
    }
  }

  else
  {
  }

  v14 = [objc_alloc(ISWeakLinkedClassForString()) initWithPaymentRequest:v6];
  controller = self->_controller;
  self->_controller = v14;

  if (self->_controller)
  {
    v16 = +[SSLogConfig sharedDaemonConfig];
    if (!v16)
    {
      v16 = +[SSLogConfig sharedConfig];
    }

    v17 = [v16 shouldLog];
    if ([v16 shouldLogToDisk])
    {
      v18 = v17 | 2;
    }

    else
    {
      v18 = v17;
    }

    v19 = [v16 OSLogObject];
    if (!os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v18 &= 2u;
    }

    if (v18)
    {
      v20 = objc_opt_class();
      LODWORD(location[0]) = 138543362;
      *(location + 4) = v20;
      v21 = v20;
      LODWORD(v35) = 12;
      v22 = _os_log_send_and_compose_impl();

      if (!v22)
      {
LABEL_24:

        [(PKPaymentAuthorizationController *)self->_controller setDelegate:self];
        [(PKPaymentAuthorizationController *)self->_controller setPrivateDelegate:self];
        objc_initWeak(location, self);
        v23 = self->_controller;
        v36[0] = _NSConcreteStackBlock;
        v36[1] = 3221225472;
        v36[2] = sub_1000F62A4;
        v36[3] = &unk_100328BE8;
        objc_copyWeak(&v37, location);
        v36[4] = self;
        [(PKPaymentAuthorizationController *)v23 presentWithCompletion:v36];
        objc_destroyWeak(&v37);
        objc_destroyWeak(location);
        v24 = 0;
        goto LABEL_37;
      }

      v19 = [NSString stringWithCString:v22 encoding:4, location, v35];
      free(v22);
      SSFileLog();
    }

    goto LABEL_24;
  }

  v24 = ISError();
  v25 = +[SSLogConfig sharedDaemonConfig];
  if (!v25)
  {
    v25 = +[SSLogConfig sharedConfig];
  }

  v26 = [v25 shouldLog];
  if ([v25 shouldLogToDisk])
  {
    v27 = v26 | 2;
  }

  else
  {
    v27 = v26;
  }

  v28 = [v25 OSLogObject];
  if (!os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
  {
    v27 &= 2u;
  }

  if (!v27)
  {
    goto LABEL_35;
  }

  v29 = objc_opt_class();
  LODWORD(location[0]) = 138543362;
  *(location + 4) = v29;
  v30 = v29;
  LODWORD(v35) = 12;
  v31 = _os_log_send_and_compose_impl();

  if (v31)
  {
    v28 = [NSString stringWithCString:v31 encoding:4, location, v35];
    free(v31);
    SSFileLog();
LABEL_35:
  }

LABEL_37:
  if (a4)
  {
    v32 = v24;
    *a4 = v24;
  }

  return v24 == 0;
}

- (float)_challengeSigningDelay
{
  v3 = +[ISDevice sharedInstance];
  v4 = [v3 deviceBiometricStyle];

  if (self->_touchIDDelayEnabled && v4 == 2)
  {
    urlBag = self->_urlBag;
    if (urlBag || ([(DisplayPaymentSheetOperation *)self _loadURLBag], (urlBag = self->_urlBag) != 0))
    {
      v6 = [(ISURLBag *)urlBag valueForKey:@"touchIDChallengeSigningDelay"];
      if (v6)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v6 floatValue];
          v12 = 0.0;
          if (v15 <= 0.0)
          {
            goto LABEL_44;
          }

          v16 = v15;
          v17 = +[SSLogConfig sharedDaemonConfig];
          if (!v17)
          {
            v17 = +[SSLogConfig sharedConfig];
          }

          v18 = [v17 shouldLog];
          if ([v17 shouldLogToDisk])
          {
            v19 = v18 | 2;
          }

          else
          {
            v19 = v18;
          }

          v20 = [v17 OSLogObject];
          if (!os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
          {
            v19 &= 2u;
          }

          if (v19)
          {
            *v32 = 138543618;
            *&v32[4] = objc_opt_class();
            *&v32[12] = 2114;
            *&v32[14] = v6;
            v21 = *&v32[4];
            LODWORD(v31) = 22;
            v22 = _os_log_send_and_compose_impl();

            if (!v22)
            {
LABEL_31:

              v12 = v16;
              goto LABEL_44;
            }

            v20 = [NSString stringWithCString:v22 encoding:4, v32, v31, *v32, *&v32[8]];
            free(v22);
            SSFileLog();
          }

          goto LABEL_31;
        }
      }

      v9 = +[SSLogConfig sharedDaemonConfig];
      if (!v9)
      {
        v9 = +[SSLogConfig sharedConfig];
      }

      v23 = [v9 shouldLog];
      if ([v9 shouldLogToDisk])
      {
        v24 = v23 | 2;
      }

      else
      {
        v24 = v23;
      }

      v25 = [v9 OSLogObject];
      if (!os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        v24 &= 2u;
      }

      if (!v24)
      {
        goto LABEL_42;
      }

      *v32 = 138543362;
      *&v32[4] = objc_opt_class();
      v26 = *&v32[4];
      LODWORD(v31) = 12;
      v27 = _os_log_send_and_compose_impl();

      if (v27)
      {
        v25 = [NSString stringWithCString:v27 encoding:4, v32, v31, *v32, *&v32[8]];
        free(v27);
        SSFileLog();
LABEL_42:
      }
    }

    else
    {
      v6 = +[SSLogConfig sharedDaemonConfig];
      if (!v6)
      {
        v6 = +[SSLogConfig sharedConfig];
      }

      v29 = [v6 shouldLog];
      if ([v6 shouldLogToDisk])
      {
        v30 = v29 | 2;
      }

      else
      {
        v30 = v29;
      }

      v9 = [v6 OSLogObject];
      if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v30 &= 2u;
      }

      if (v30)
      {
        goto LABEL_13;
      }
    }

LABEL_43:

    v12 = 0.0;
    goto LABEL_44;
  }

  v6 = +[SSLogConfig sharedDaemonConfig];
  if (!v6)
  {
    v6 = +[SSLogConfig sharedConfig];
  }

  v7 = [v6 shouldLog];
  if ([v6 shouldLogToDisk])
  {
    v8 = v7 | 2;
  }

  else
  {
    v8 = v7;
  }

  v9 = [v6 OSLogObject];
  if (!os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v8 &= 2u;
  }

  if (!v8)
  {
    goto LABEL_43;
  }

LABEL_13:
  *v32 = 138543362;
  *&v32[4] = objc_opt_class();
  v10 = *&v32[4];
  LODWORD(v31) = 12;
  v11 = _os_log_send_and_compose_impl();

  v12 = 0.0;
  if (v11)
  {
    v13 = [NSString stringWithCString:v11 encoding:4, v32, v31, *v32];
    free(v11);
    SSFileLog();
  }

LABEL_44:

  return v12;
}

- (id)_metricsDialogEvent
{
  v3 = objc_alloc_init(NSMutableDictionary);
  v4 = [(DisplayPaymentSheetOperation *)self _paymentSheetStyle];
  if (v4 == 3)
  {
    v5 = SSAuthorizationMetricsKeyEventType;
    v6 = &off_10034BE68;
  }

  else
  {
    if (v4 != 2)
    {
      if (v4 == 1)
      {
        [v3 setObject:&off_10034BE08 forKeyedSubscript:SSAuthorizationMetricsKeyEventType];
        if (self->_didAuthorizePayment)
        {
          [v3 setObject:&off_10034BE38 forKeyedSubscript:SSAuthorizationMetricsKeyBiometricMatchState];
        }

        else
        {
          [v3 setObject:&off_10034BE20 forKeyedSubscript:SSAuthorizationMetricsKeyBiometricMatchState];
          if (self->_didCancelHomeButton)
          {
            v9 = 32;
          }

          else
          {
            v9 = 8;
          }

          v10 = [SSAuthorizationMetricsController userActionDictionaryForBiometricMatchState:v9 didBiometricsLockout:self->_didBiometricsLockout];
          if (v10)
          {
            [(NSMutableArray *)self->_userActions addObject:v10];
          }
        }

        if (self->_didAttemptDualActionBuy)
        {
          if (self->_paymentTokenData)
          {
            v11 = &SSMetricsDialogEventResultSuccess;
          }

          else
          {
            v11 = &SSMetricsDialogEventResultFailure;
          }

          [v3 setObject:*v11 forKeyedSubscript:SSAuthorizationMetricsKeyDualAction];
        }
      }

      goto LABEL_26;
    }

    v5 = SSAuthorizationMetricsKeyEventType;
    v6 = &off_10034BE50;
  }

  [v3 setObject:v6 forKeyedSubscript:v5];
  if (!self->_didAuthorizePayment)
  {
    if (self->_didCancelHomeButton)
    {
      v7 = 9;
    }

    else
    {
      v7 = 4;
    }

    v8 = [SSAuthorizationMetricsController userActionDictionaryForUserAction:v7 didBiometricsLockout:self->_didBiometricsLockout];
    if (v8)
    {
      [(NSMutableArray *)self->_userActions addObject:v8];
    }
  }

LABEL_26:
  v12 = [(DisplayPaymentSheetOperation *)self paymentSheet];
  v13 = [v12 buyParams];

  if (v13)
  {
    [v3 setObject:v13 forKeyedSubscript:SSAuthorizationMetricsKeyBuyParams];
  }

  v14 = [(DisplayPaymentSheetOperation *)self dialogId];
  if (v14)
  {
    [v3 setObject:v14 forKeyedSubscript:SSAuthorizationMetricsKeyDialogID];
  }

  v15 = [(DisplayPaymentSheetOperation *)self userAgent];
  if (v15)
  {
    [v3 setObject:v15 forKeyedSubscript:SSAuthorizationMetricsKeyUserAgent];
  }

  v16 = [SSAuthorizationMetricsController authorizationDialogEventForParameters:v3];
  [v16 setUserActions:self->_userActions];

  return v16;
}

- (void)_postMetricsWithDialogEvent:(id)a3
{
  v4 = a3;
  urlBag = self->_urlBag;
  if (urlBag || ([(DisplayPaymentSheetOperation *)self _loadURLBag], (urlBag = self->_urlBag) != 0))
  {
    v6 = [(ISURLBag *)urlBag valueForKey:SSMetricsURLBagKey];
    if ([v6 count])
    {
      objc_initWeak(location, self);
      v7 = [[SSMetricsConfiguration alloc] initWithGlobalConfiguration:v6];
      v8 = objc_alloc_init(SSMetricsController);
      [v8 setGlobalConfiguration:v7];
      v25[0] = _NSConcreteStackBlock;
      v25[1] = 3221225472;
      v25[2] = sub_1000F72C0;
      v25[3] = &unk_100328C10;
      objc_copyWeak(&v26, location);
      [v8 insertEvent:v4 withCompletionHandler:v25];
      v23[0] = _NSConcreteStackBlock;
      v23[1] = 3221225472;
      v23[2] = sub_1000F7470;
      v23[3] = &unk_100328C10;
      objc_copyWeak(&v24, location);
      [v8 flushUnreportedEventsWithCompletionHandler:v23];
      objc_destroyWeak(&v24);
      objc_destroyWeak(&v26);

      objc_destroyWeak(location);
    }

    else
    {
      v9 = +[SSLogConfig sharedDaemonConfig];
      if (!v9)
      {
        v9 = +[SSLogConfig sharedConfig];
      }

      v10 = [v9 shouldLog];
      if ([v9 shouldLogToDisk])
      {
        v11 = v10 | 2;
      }

      else
      {
        v11 = v10;
      }

      v12 = [v9 OSLogObject];
      if (!os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v11 &= 2u;
      }

      if (v11)
      {
        LODWORD(location[0]) = 138543362;
        *(location + 4) = objc_opt_class();
        v13 = *(location + 4);
        LODWORD(v22) = 12;
        v14 = _os_log_send_and_compose_impl();

        if (v14)
        {
          v15 = [NSString stringWithCString:v14 encoding:4, location, v22];
          free(v14);
          SSFileLog();
        }
      }

      else
      {
      }
    }
  }

  else
  {
    v6 = +[SSLogConfig sharedDaemonConfig];
    if (!v6)
    {
      v6 = +[SSLogConfig sharedConfig];
    }

    v16 = [v6 shouldLog];
    if ([v6 shouldLogToDisk])
    {
      v17 = v16 | 2;
    }

    else
    {
      v17 = v16;
    }

    v18 = [v6 OSLogObject];
    if (!os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v17 &= 2u;
    }

    if (v17)
    {
      LODWORD(location[0]) = 138543362;
      *(location + 4) = objc_opt_class();
      v19 = *(location + 4);
      LODWORD(v22) = 12;
      v20 = _os_log_send_and_compose_impl();

      if (v20)
      {
        v21 = [NSString stringWithCString:v20 encoding:4, location, v22];
        free(v20);
        SSFileLog();
      }
    }

    else
    {
    }
  }
}

- (CGImage)_createDefaultImageWithImageRef:(CGImage *)a3 size:(CGSize)a4 borderPath:(CGPath *)a5
{
  height = a4.height;
  width = a4.width;
  DeviceRGB = CGColorSpaceCreateDeviceRGB();
  v10 = CGBitmapContextCreate(0, width, height, 8uLL, vcvtd_n_u64_f64(width, 2uLL), DeviceRGB, 2u);
  v15.origin.x = 0.0;
  v15.origin.y = 0.0;
  v15.size.width = width;
  v15.size.height = height;
  CGContextDrawImage(v10, v15, a3);
  v14[0] = xmmword_1002A8F10;
  v14[1] = unk_1002A8F20;
  v11 = CGColorCreate(DeviceRGB, v14);
  CGContextSetStrokeColorWithColor(v10, v11);
  CGContextSetLineWidth(v10, 1.0);
  CGContextAddPath(v10, a5);
  CGContextDrawPath(v10, kCGPathStroke);
  Image = CGBitmapContextCreateImage(v10);
  CGColorSpaceRelease(DeviceRGB);
  CGColorRelease(v11);
  CGContextRelease(v10);
  return Image;
}

- (CGPath)_createBorderPathForAdornmentStyle:(int64_t)a3 iconWidth:(double)a4 iconHeight:(double)a5 designVersion:(id)a6
{
  v9 = a6;
  v10 = v9;
  if (a3 == 4)
  {
    v23.size.width = a4 + -1.0;
    v23.size.height = a5 + -1.0;
    v23.origin.x = 0.5;
    v23.origin.y = 0.5;
    v21 = CGPathCreateWithRoundedRect(v23, (a4 + -1.0) * 0.5, (a5 + -1.0) * 0.5, 0);
    MutableCopy = CGPathCreateMutableCopy(v21);
    CGPathRelease(v21);
  }

  else if (a3 == 1)
  {
    v13 = [v9 isEqualToNumber:AMSPaymentSheetDesignVersion_2_0];
    v14 = 0.236842111;
    if (v13)
    {
      v14 = 0.185185185;
    }

    v15 = v14 * a4;
    MutableCopy = CGPathCreateMutable();
    v16 = v15 + 0.0 + 0.5;
    CGPathMoveToPoint(MutableCopy, 0, 0.5, v16);
    v17 = a5 - v15 + -0.5;
    CGPathAddLineToPoint(MutableCopy, 0, 0.5, v17);
    v18 = a5 + -0.5;
    CGPathAddQuadCurveToPoint(MutableCopy, 0, 0.5, v18, v16, v18);
    v19 = a4 - v15 + -0.5;
    CGPathAddLineToPoint(MutableCopy, 0, v19, v18);
    v20 = a4 + -0.5;
    CGPathAddQuadCurveToPoint(MutableCopy, 0, v20, v18, v20, v17);
    CGPathAddLineToPoint(MutableCopy, 0, v20, v16);
    CGPathAddQuadCurveToPoint(MutableCopy, 0, v20, 0.5, v19, 0.5);
    CGPathAddLineToPoint(MutableCopy, 0, v16, 0.5);
    CGPathAddQuadCurveToPoint(MutableCopy, 0, 0.5, 0.5, 0.5, v16);
  }

  else if (a3)
  {
    MutableCopy = 0;
  }

  else
  {
    MutableCopy = CGPathCreateMutable();
    CGPathMoveToPoint(MutableCopy, 0, 0.5, 0.5);
    CGPathAddLineToPoint(MutableCopy, 0, 0.5, a5 + -0.5);
    v12 = a4 + -0.5;
    CGPathAddLineToPoint(MutableCopy, 0, v12, a5 + -0.5);
    CGPathAddLineToPoint(MutableCopy, 0, v12, 0.5);
    CGPathAddLineToPoint(MutableCopy, 0, 0.5, 0.5);
  }

  return MutableCopy;
}

- (CGImage)_createImageMaskRefWithSize:(CGSize)a3 andPath:(CGPath *)a4
{
  height = a3.height;
  width = a3.width;
  DeviceGray = CGColorSpaceCreateDeviceGray();
  v8 = CGBitmapContextCreate(0, width, height, 8uLL, 0, DeviceGray, 7u);
  v19 = xmmword_1002A8F00;
  v9 = CGColorCreate(DeviceGray, &v19);
  CGContextSetFillColorWithColor(v8, v9);
  v20.origin.x = 0.0;
  v20.origin.y = 0.0;
  v20.size.width = width;
  v20.size.height = height;
  CGContextFillRect(v8, v20);
  CGContextBeginPath(v8);
  CGContextAddPath(v8, a4);
  CGContextClip(v8);
  v21.origin.x = 0.0;
  v21.origin.y = 0.0;
  v21.size.width = width;
  v21.size.height = height;
  CGContextClearRect(v8, v21);
  Image = CGBitmapContextCreateImage(v8);
  v11 = CGImageGetWidth(Image);
  v12 = CGImageGetHeight(Image);
  BitsPerComponent = CGImageGetBitsPerComponent(Image);
  BitsPerPixel = CGImageGetBitsPerPixel(Image);
  BytesPerRow = CGImageGetBytesPerRow(Image);
  DataProvider = CGImageGetDataProvider(Image);
  v17 = CGImageMaskCreate(v11, v12, BitsPerComponent, BitsPerPixel, BytesPerRow, DataProvider, 0, 0);
  CGImageRelease(Image);
  CGColorRelease(v9);
  CGContextRelease(v8);
  CGColorSpaceRelease(DeviceGray);
  return v17;
}

- (CGImage)_createImageRefWithURL:(id)a3 adornmentStyle:(int64_t)a4 designVersion:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = +[SSLogConfig sharedDaemonConfig];
  if (!v10)
  {
    v10 = +[SSLogConfig sharedConfig];
  }

  v11 = [v10 shouldLog];
  if ([v10 shouldLogToDisk])
  {
    v12 = v11 | 2;
  }

  else
  {
    v12 = v11;
  }

  v13 = [v10 OSLogObject];
  if (!os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v12 &= 2u;
  }

  if (!v12)
  {
    goto LABEL_11;
  }

  v78 = 138543618;
  v79 = objc_opt_class();
  v80 = 2114;
  v81 = v8;
  v14 = v79;
  LODWORD(v73) = 22;
  v71 = &v78;
  v15 = _os_log_send_and_compose_impl();

  if (v15)
  {
    v13 = [NSString stringWithCString:v15 encoding:4, &v78, v73];
    free(v15);
    v71 = v13;
    SSFileLog();
LABEL_11:
  }

  v16 = objc_alloc_init(SSMutableURLRequestProperties);
  [v16 setHTTPMethod:@"GET"];
  [v16 setITunesStoreRequest:1];
  [v16 setURL:v8];
  v17 = objc_alloc_init(ISStoreURLOperation);
  v18 = +[ISDataProvider provider];
  [v17 setDataProvider:v18];

  [v17 setNeedsAuthentication:0];
  [v17 setNeedsURLBag:0];
  [v17 setRequestProperties:v16];
  v77 = 0;
  [(DisplayPaymentSheetOperation *)self runSubOperation:v17 returningError:&v77];
  v19 = v77;
  if (!v19 && ([v17 success] & 1) != 0)
  {
    v76 = v9;
    v20 = +[SSLogConfig sharedDaemonConfig];
    if (!v20)
    {
      v20 = +[SSLogConfig sharedConfig];
    }

    v21 = [v20 shouldLog];
    if ([v20 shouldLogToDisk])
    {
      v22 = v21 | 2;
    }

    else
    {
      v22 = v21;
    }

    v23 = [v20 OSLogObject];
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      v24 = v22;
    }

    else
    {
      v24 = v22 & 2;
    }

    if (v24)
    {
      v25 = objc_opt_class();
      v78 = 138543618;
      v79 = v25;
      v80 = 2114;
      v81 = v8;
      v26 = v25;
      LODWORD(v73) = 22;
      v72 = &v78;
      v27 = _os_log_send_and_compose_impl();

      if (!v27)
      {
        goto LABEL_26;
      }

      v23 = [NSString stringWithCString:v27 encoding:4, &v78, v73];
      free(v27);
      v72 = v23;
      SSFileLog();
    }

LABEL_26:
    v28 = [v17 dataProvider];
    v29 = [v28 output];

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v41 = 0;
      goto LABEL_43;
    }

    v30 = CGDataProviderCreateWithCFData(v29);
    v31 = [(DisplayPaymentSheetOperation *)self _imageTypeForURL:v8];
    if (v31 >= 2)
    {
      if (v31 != 2)
      {
        v42 = 0;
        if (!v30)
        {
          goto LABEL_48;
        }

        goto LABEL_47;
      }

      v32 = CGImageCreateWithJPEGDataProvider(v30, 0, 1, kCGRenderingIntentDefault);
    }

    else
    {
      v32 = CGImageCreateWithPNGDataProvider(v30, 0, 1, kCGRenderingIntentDefault);
    }

    v42 = v32;
    if (!v30)
    {
LABEL_48:
      v43 = CGImageGetWidth(v42);
      Height = CGImageGetHeight(v42);
      v45 = v43;
      v46 = Height;
      if (a4 <= 1)
      {
        if (!a4)
        {
          [(DisplayPaymentSheetOperation *)self paymentSheet];
          v68 = v67 = v42;
          v69 = [v68 designVersion];
          v47 = [(DisplayPaymentSheetOperation *)self _createBorderPathForAdornmentStyle:0 iconWidth:v69 iconHeight:v45 designVersion:v46];

          v42 = v67;
          v66 = [(DisplayPaymentSheetOperation *)self _createDefaultImageWithImageRef:v67 size:v47 borderPath:v45, v46];
LABEL_73:
          v41 = v66;
          if (v47)
          {
            CGPathRelease(v47);
          }

LABEL_75:
          v9 = v76;
          if (v41)
          {
            if (v42)
            {
              CGImageRelease(v42);
            }
          }

          else
          {
            v41 = v42;
          }

          goto LABEL_79;
        }

        if (a4 == 1)
        {
          v52 = [v76 isEqualToNumber:AMSPaymentSheetDesignVersion_2_0];
          v53 = 0.236842111;
          if (v52)
          {
            v53 = 0.185185185;
          }

          v54 = v53 * v45;
          v55 = v53 * v46;
          v85.origin.x = 0.0;
          v85.origin.y = 0.0;
          v85.size.width = v43;
          v85.size.height = v46;
          v47 = CGPathCreateWithRoundedRect(v85, v54, v55, 0);
          v48 = self;
          v49 = v42;
          v50 = v47;
          v51 = 1;
          goto LABEL_71;
        }
      }

      else
      {
        switch(a4)
        {
          case 2:
            v56 = Height;
            width = v43;
            Mutable = CGPathCreateMutable();
            CGPathMoveToPoint(Mutable, 0, 0.0, v45 * 0.032);
            CGPathAddLineToPoint(Mutable, 0, 0.0, v46 - v45 * 0.032);
            CGPathAddArcToPoint(Mutable, 0, 0.0, v46, v45 * 0.032, v46, v45 * 0.032);
            CGPathAddLineToPoint(Mutable, 0, v45 - v45 * 0.473684222, v46);
            CGPathAddArcToPoint(Mutable, 0, v43, v46, v43, v46 - v45 * 0.473684222, v45 * 0.473684222);
            CGPathAddLineToPoint(Mutable, 0, v43, v45 * 0.032);
            CGPathAddArcToPoint(Mutable, 0, v43, 0.0, v45 - v45 * 0.032, 0.0, v45 * 0.032);
            CGPathAddLineToPoint(Mutable, 0, v45 * 0.032, 0.0);
            CGPathAddArcToPoint(Mutable, 0, 0.0, 0.0, 0.0, v45 * 0.032, v45 * 0.032);
            Copy = CGPathCreateCopy(Mutable);
            image = [(DisplayPaymentSheetOperation *)self _createMaskedImageRefForImageRef:v42 withPathRef:Copy andAdornmentStyle:2];
            if (Mutable)
            {
              CGPathRelease(Mutable);
            }

            if (Copy)
            {
              CGPathRelease(Copy);
            }

            DeviceRGB = CGColorSpaceCreateDeviceRGB();
            v60 = CGBitmapContextCreate(0, width, v56, 8uLL, 4 * width, DeviceRGB, 2u);
            CGContextSetRGBFillColor(v60, 0.0, 0.0, 0.0, 0.0);
            v86.origin.x = 0.0;
            v86.origin.y = 0.0;
            v86.size.width = v45;
            v86.size.height = v46;
            CGContextFillRect(v60, v86);
            CGContextSetRGBFillColor(v60, 0.827000022, 0.827000022, 0.827000022, 1.0);
            v87.origin.x = 0.0;
            v87.origin.y = 0.0;
            v87.size.width = v45;
            v87.size.height = v46;
            v61 = CGPathCreateWithRoundedRect(v87, v45 * 0.0579999983, v46 * 0.0579999983, 0);
            CGContextBeginPath(v60);
            CGContextAddPath(v60, v61);
            CGContextFillPath(v60);
            if (DeviceRGB)
            {
              CGColorSpaceRelease(DeviceRGB);
            }

            if (v61)
            {
              CGPathRelease(v61);
            }

            v88.size.width = v45 + v45 * 0.0813999996 * -2.0;
            v88.size.height = v46 + v46 * 0.0813999996 * -2.0;
            v88.origin.x = v45 * 0.0813999996;
            v88.origin.y = v46 * 0.0813999996;
            CGContextDrawImage(v60, v88, image);
            CGImageRelease(image);
            v62 = v45 * 0.0813999996 * 0.550000012;
            v63 = v46 * 0.0813999996 * 0.550000012;
            v64 = v45 - v45 * 0.0813999996 - v62;
            v65 = v46 - v46 * 0.0813999996 - v63;
            CGContextSetRGBStrokeColor(v60, 0.707, 0.707, 0.707, 1.0);
            CGContextSetLineWidth(v60, (width * 0.020833));
            CGContextMoveToPoint(v60, v64, v63 + v65);
            CGContextAddLineToPoint(v60, v64, v65 - v63);
            CGContextStrokePath(v60);
            CGContextMoveToPoint(v60, v64 - v62, v65);
            CGContextAddLineToPoint(v60, v62 + v64, v65);
            CGContextStrokePath(v60);
            v41 = CGBitmapContextCreateImage(v60);
            if (v60)
            {
              CGContextRelease(v60);
            }

            goto LABEL_75;
          case 3:
            v89.origin.y = v46 * 0.125;
            v89.size.height = v46 * 0.75;
            v89.origin.x = 0.0;
            v89.size.width = v43;
            v47 = CGPathCreateWithRoundedRect(v89, v46 * 0.375, v46 * 0.375, 0);
            v48 = self;
            v49 = v42;
            v50 = v47;
            v51 = 3;
            goto LABEL_71;
          case 4:
            v84.origin.x = 0.0;
            v84.origin.y = 0.0;
            v84.size.width = v43;
            v84.size.height = Height;
            v47 = CGPathCreateWithRoundedRect(v84, v45 * 0.5, v46 * 0.5, 0);
            v48 = self;
            v49 = v42;
            v50 = v47;
            v51 = 4;
LABEL_71:
            v66 = [(DisplayPaymentSheetOperation *)v48 _createMaskedImageRefForImageRef:v49 withPathRef:v50 andAdornmentStyle:v51, v72];
            goto LABEL_73;
        }
      }

      v41 = v42;
LABEL_43:
      v9 = v76;
      goto LABEL_79;
    }

LABEL_47:
    CFRelease(v30);
    goto LABEL_48;
  }

  v29 = +[SSLogConfig sharedDaemonConfig];
  if (!v29)
  {
    v29 = +[SSLogConfig sharedConfig];
  }

  v33 = [(__CFData *)v29 shouldLog];
  if ([(__CFData *)v29 shouldLogToDisk])
  {
    v34 = v33 | 2;
  }

  else
  {
    v34 = v33;
  }

  v35 = [(__CFData *)v29 OSLogObject];
  if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
  {
    v36 = v34;
  }

  else
  {
    v36 = v34 & 2;
  }

  if (v36)
  {
    v37 = v9;
    v38 = objc_opt_class();
    v78 = 138543874;
    v79 = v38;
    v80 = 2114;
    v81 = v8;
    v82 = 2114;
    v83 = v19;
    v39 = v38;
    LODWORD(v73) = 32;
    v40 = _os_log_send_and_compose_impl();

    if (!v40)
    {
      v41 = 0;
      v9 = v37;
      goto LABEL_79;
    }

    v35 = [NSString stringWithCString:v40 encoding:4, &v78, v73];
    free(v40);
    SSFileLog();
    v9 = v37;
  }

  v41 = 0;
LABEL_79:

  return v41;
}

- (CGImage)_createMaskedImageRefForImageRef:(CGImage *)a3 withPathRef:(CGPath *)a4 andAdornmentStyle:(int64_t)a5
{
  Width = CGImageGetWidth(a3);
  Height = CGImageGetHeight(a3);
  v11 = Width;
  v12 = Height;
  ColorSpace = CGImageGetColorSpace(a3);
  Model = CGColorSpaceGetModel(ColorSpace);
  if (Model == 1)
  {
    Copy = CGImageCreateCopy(a3);
    goto LABEL_5;
  }

  v15 = Model;
  if (!Model)
  {
    Copy = [(DisplayPaymentSheetOperation *)self _createRGBImageRefForGreyScaleImageRef:a3 width:Width height:Height];
LABEL_5:
    v17 = Copy;
    goto LABEL_16;
  }

  v18 = +[SSLogConfig sharedConfig];
  v19 = [v18 shouldLog];
  if ([v18 shouldLogToDisk])
  {
    v20 = v19 | 2;
  }

  else
  {
    v20 = v19;
  }

  v21 = [v18 OSLogObject];
  if (!os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
  {
    v20 &= 2u;
  }

  if (!v20)
  {
    goto LABEL_14;
  }

  v22 = objc_opt_class();
  v40 = v22;
  v23 = [NSNumber numberWithInt:v15];
  *components = 138412546;
  *&components[4] = v22;
  *&components[12] = 2114;
  *&components[14] = v23;
  LODWORD(v39) = 22;
  v38 = components;
  v24 = _os_log_send_and_compose_impl();

  if (v24)
  {
    v21 = [NSString stringWithCString:v24 encoding:4, components, v39];
    free(v24);
    v38 = v21;
    SSFileLog();
LABEL_14:
  }

  v17 = 0;
LABEL_16:
  v25 = [(DisplayPaymentSheetOperation *)self _createImageMaskRefWithSize:a4 andPath:v11, v12, v38];
  v26 = CGImageCreateWithMask(v17, v25);
  v27 = CGImageGetWidth(v26);
  v28 = CGImageGetHeight(v26);
  BitsPerComponent = CGImageGetBitsPerComponent(v26);
  BytesPerRow = CGImageGetBytesPerRow(v26);
  v31 = CGBitmapContextCreate(0, v27, v28, BitsPerComponent, BytesPerRow, ColorSpace, 1u);
  CGContextSetRGBFillColor(v31, 1.0, 0.0, 0.0, 0.0);
  v42.origin.x = 0.0;
  v42.origin.y = 0.0;
  v42.size.width = v11;
  v42.size.height = v12;
  CGContextFillRect(v31, v42);
  v43.origin.x = 0.0;
  v43.origin.y = 0.0;
  v43.size.width = v11;
  v43.size.height = v12;
  CGContextDrawImage(v31, v43, v26);
  v32 = [(DisplayPaymentSheetOperation *)self paymentSheet];
  v33 = [v32 designVersion];
  v34 = [(DisplayPaymentSheetOperation *)self _createBorderPathForAdornmentStyle:a5 iconWidth:v33 iconHeight:v11 designVersion:v12];

  if (v34)
  {
    *components = xmmword_1002A8F10;
    *&components[16] = unk_1002A8F20;
    v35 = CGColorCreate(ColorSpace, components);
    CGContextSetStrokeColorWithColor(v31, v35);
    CGContextSetLineWidth(v31, 1.0);
    CGContextAddPath(v31, v34);
    CGContextDrawPath(v31, kCGPathStroke);
    CGPathRelease(v34);
    CGColorRelease(v35);
  }

  Image = CGBitmapContextCreateImage(v31);
  CGContextRelease(v31);
  CGImageRelease(v25);
  CGImageRelease(v26);
  CGImageRelease(v17);
  return Image;
}

- (CGImage)_createRatingImageWithStringValue:(id)a3 assetScale:(float *)a4
{
  v4 = a3;
  v5 = +[AMSDevice screenScale];
  [v5 floatValue];
  v7 = v6;

  DeviceRGB = CGColorSpaceCreateDeviceRGB();
  *components = xmmword_1002A8F30;
  v28 = unk_1002A8F40;
  v9 = CGColorCreate(DeviceRGB, components);
  UIFontForLanguage = CTFontCreateUIFontForLanguage(kCTFontUIFontLabel, v7 * 9.0, 0);
  Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  CFDictionaryAddValue(Mutable, kCTFontAttributeName, UIFontForLanguage);
  CFDictionaryAddValue(Mutable, kCTForegroundColorAttributeName, v9);
  v12 = CFAttributedStringCreate(0, v4, Mutable);
  v13 = CTFramesetterCreateWithAttributedString(v12);
  v14 = [(__CFString *)v4 length];

  v30.width = 1.79769313e308;
  v29.location = 0;
  v29.length = v14;
  v30.height = 1.79769313e308;
  v15 = CTFramesetterSuggestFrameSizeWithConstraints(v13, v29, 0, v30, 0);
  height = v15.height;
  v17 = ceilf(height);
  v18 = v17 * 0.352941176;
  width = v15.width;
  v20 = ceilf(width) + ceilf(v18) * 2.0;
  v21 = CGBitmapContextCreate(0, v20, vcvtps_u32_f32(height), 8uLL, vcvtd_n_u64_f64(v20, 3uLL), DeviceRGB, 2u);
  CGContextSetShouldAntialias(v21, 1);
  CGContextSetInterpolationQuality(v21, kCGInterpolationHigh);
  v31.origin.x = 0.0;
  v31.origin.y = 0.0;
  v31.size.width = v20;
  v31.size.height = v17;
  v32 = CGRectInset(v31, 1.0, 1.0);
  v22 = CGPathCreateWithRoundedRect(v32, 6.0, 6.0, 0);
  CGContextAddPath(v21, v22);
  CGContextSetStrokeColorWithColor(v21, v9);
  CGContextSetLineWidth(v21, 1.0);
  CGContextStrokePath(v21);
  v23 = CTLineCreateWithAttributedString(v12);
  CGContextSetTextPosition(v21, v20 * 0.5 - v15.width * 0.5, v17 * 0.5 + v15.height * -0.25 + -1.0);
  CTLineDraw(v23, v21);
  Image = CGBitmapContextCreateImage(v21);
  CGColorSpaceRelease(DeviceRGB);
  CGColorRelease(v9);
  CGContextRelease(v21);
  CGPathRelease(v22);
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (v12)
  {
    CFRelease(v12);
  }

  if (UIFontForLanguage)
  {
    CFRelease(UIFontForLanguage);
  }

  if (v13)
  {
    CFRelease(v13);
  }

  if (v23)
  {
    CFRelease(v23);
  }

  if (a4)
  {
    *a4 = v7;
  }

  return Image;
}

- (CGImage)_createResizedImageWithOriginalImage:(CGImage *)a3 targetHeight:(double)a4
{
  Width = CGImageGetWidth(a3);
  v7 = Width / CGImageGetHeight(a3) * a4;
  v8 = vcvtas_u32_f32(v7);
  v9 = a4;
  v10 = vcvtas_u32_f32(v9);
  ColorSpace = CGImageGetColorSpace(a3);
  BitsPerComponent = CGImageGetBitsPerComponent(a3);
  v13 = (CGImageGetBytesPerRow(a3) / Width * v8);
  AlphaInfo = CGImageGetAlphaInfo(a3);
  v15 = CGBitmapContextCreate(0, v8, v10, BitsPerComponent, v13, ColorSpace, AlphaInfo);
  ClipBoundingBox = CGContextGetClipBoundingBox(v15);
  CGContextDrawImage(v15, ClipBoundingBox, a3);
  Image = CGBitmapContextCreateImage(v15);
  CGContextRelease(v15);
  return Image;
}

- (CGImage)_createRGBImageRefForGreyScaleImageRef:(CGImage *)a3 width:(unint64_t)a4 height:(unint64_t)a5
{
  v7 = a4;
  v8 = a5;
  DeviceRGB = CGColorSpaceCreateDeviceRGB();
  Width = CGImageGetWidth(a3);
  Height = CGImageGetHeight(a3);
  v12 = CGBitmapContextCreate(0, Width, Height, 8uLL, 4 * a4, DeviceRGB, 1u);
  CGContextSetRGBFillColor(v12, 0.0, 0.0, 0.0, 1.0);
  v15.origin.x = 0.0;
  v15.origin.y = 0.0;
  v15.size.width = v7;
  v15.size.height = v8;
  CGContextFillRect(v12, v15);
  v16.origin.x = 0.0;
  v16.origin.y = 0.0;
  v16.size.width = v7;
  v16.size.height = v8;
  CGContextDrawImage(v12, v16, a3);
  Image = CGBitmapContextCreateImage(v12);
  CGColorSpaceRelease(DeviceRGB);
  CGContextRelease(v12);
  return Image;
}

- (void)paymentAuthorizationController:(id)a3 didAuthorizePayment:(id)a4 handler:(id)a5
{
  v7 = a4;
  v8 = a5;
  self->_didAuthorizePayment = 1;
  v9 = +[SSLogConfig sharedDaemonConfig];
  if (!v9)
  {
    v9 = +[SSLogConfig sharedConfig];
  }

  v10 = [v9 shouldLog];
  if ([v9 shouldLogToDisk])
  {
    v11 = v10 | 2;
  }

  else
  {
    v11 = v10;
  }

  v12 = [v9 OSLogObject];
  if (!os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v11 &= 2u;
  }

  if (v11)
  {
    v102 = 138543362;
    v103 = objc_opt_class();
    v13 = v103;
    LODWORD(v91) = 12;
    v89 = &v102;
    v14 = _os_log_send_and_compose_impl();

    if (!v14)
    {
      goto LABEL_12;
    }

    v12 = [NSString stringWithCString:v14 encoding:4, &v102, v91];
    free(v14);
    v89 = v12;
    SSFileLog();
  }

LABEL_12:
  v15 = [v7 authKitAuthenticationResults];

  if (v15)
  {
    v16 = [v7 authKitAuthenticationResults];
    v17 = [v16 valueForKey:AKAuthenticationPasswordKey];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v18 = [SSAuthorizationMetricsController userActionDictionaryForUserAction:6 didBiometricsLockout:self->_didBiometricsLockout];
      if (v18)
      {
        [(NSMutableArray *)self->_userActions addObject:v18];
      }

      v19 = v8;
      objc_storeStrong(&self->_passwordEquivalentToken, v17);
      v20 = +[SSLogConfig sharedDaemonConfig];
      if (!v20)
      {
        v20 = +[SSLogConfig sharedConfig];
      }

      v21 = [v20 shouldLog];
      if ([v20 shouldLogToDisk])
      {
        v22 = v21 | 2;
      }

      else
      {
        v22 = v21;
      }

      v23 = [v20 OSLogObject];
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        v24 = v22;
      }

      else
      {
        v24 = v22 & 2;
      }

      if (v24)
      {
        goto LABEL_54;
      }
    }

    else
    {
      if (!self->_isASNPurchase)
      {
        v19 = v8;
        v31 = ISError();
        v20 = +[SSLogConfig sharedDaemonConfig];
        if (!v20)
        {
          v20 = +[SSLogConfig sharedConfig];
        }

        v57 = [v20 shouldLog];
        if ([v20 shouldLogToDisk])
        {
          v58 = v57 | 2;
        }

        else
        {
          v58 = v57;
        }

        v23 = [v20 OSLogObject];
        if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          v59 = v58;
        }

        else
        {
          v59 = v58 & 2;
        }

        if (!v59)
        {
          v18 = 0;
          v47 = 1;
          goto LABEL_81;
        }

        v60 = objc_opt_class();
        v102 = 138543362;
        v103 = v60;
        v61 = v60;
        LODWORD(v91) = 12;
        v46 = _os_log_send_and_compose_impl();

        v18 = 0;
        v47 = 1;
        if (!v46)
        {
LABEL_82:

          v8 = v19;
LABEL_83:
          if (v31)
          {
            v101 = v31;
            v56 = [NSArray arrayWithObjects:&v101 count:1];
          }

          else
          {
            v56 = &__NSArray0__struct;
          }

          goto LABEL_86;
        }

        goto LABEL_80;
      }

      v18 = [SSAuthorizationMetricsController userActionDictionaryForUserAction:1 didBiometricsLockout:self->_didBiometricsLockout];
      if (v18)
      {
        [(NSMutableArray *)self->_userActions addObject:v18];
      }

      v19 = v8;
      v20 = +[SSLogConfig sharedDaemonConfig];
      if (!v20)
      {
        v20 = +[SSLogConfig sharedConfig];
      }

      v41 = [v20 shouldLog];
      if ([v20 shouldLogToDisk])
      {
        v42 = v41 | 2;
      }

      else
      {
        v42 = v41;
      }

      v23 = [v20 OSLogObject];
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        v43 = v42;
      }

      else
      {
        v43 = v42 & 2;
      }

      if (v43)
      {
LABEL_54:
        v44 = objc_opt_class();
        v102 = 138543362;
        v103 = v44;
        v45 = v44;
        LODWORD(v91) = 12;
        v46 = _os_log_send_and_compose_impl();

        v47 = 0;
        v31 = 0;
        if (!v46)
        {
          goto LABEL_82;
        }

LABEL_80:
        v23 = [NSString stringWithCString:v46 encoding:4, &v102, v91];
        free(v46);
        SSFileLog();
        goto LABEL_81;
      }
    }

    v47 = 0;
    v31 = 0;
LABEL_81:

    goto LABEL_82;
  }

  if ([(DisplayPaymentSheetOperation *)self _isChallengeReadyToBeSigned])
  {
    v95 = v8;
    v96 = v7;
    v18 = [SSAuthorizationMetricsController userActionDictionaryForBiometricMatchState:2 didBiometricsLockout:self->_didBiometricsLockout];
    if (v18)
    {
      [(NSMutableArray *)self->_userActions addObject:v18];
    }

    v25 = +[DaemonBiometricKeychain sharedInstance];
    v26 = [(DisplayPaymentSheetOperation *)self challenge];
    v27 = [(DisplayPaymentSheetOperation *)self accountIdentifier];
    v28 = [(DisplayPaymentSheetOperation *)self localAuthContext];
    v29 = [(DisplayPaymentSheetOperation *)self localAuthOptions];
    v100 = 0;
    v94 = v25;
    v30 = [v25 signDataWithKeychain:v26 accountIdentifier:v27 purpose:0 localAuthContext:v28 localAuthOptions:v29 error:&v100];
    v31 = v100;

    v93 = v30;
    if (v31)
    {
      [(DisplayPaymentSheetOperation *)self setError:v31];
      v32 = +[SSLogConfig sharedDaemonConfig];
      if (!v32)
      {
        v32 = +[SSLogConfig sharedConfig];
      }

      v33 = [v32 shouldLog];
      if ([v32 shouldLogToDisk])
      {
        v34 = v33 | 2;
      }

      else
      {
        v34 = v33;
      }

      v35 = [v32 OSLogObject];
      if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
      {
        v36 = v34;
      }

      else
      {
        v36 = v34 & 2;
      }

      if (v36)
      {
        v37 = objc_opt_class();
        v102 = 138543618;
        v103 = v37;
        v104 = 2114;
        v105 = v31;
        v38 = v37;
        LODWORD(v91) = 22;
        v90 = &v102;
LABEL_40:
        v39 = _os_log_send_and_compose_impl();

        v40 = v96;
        if (!v39)
        {
LABEL_103:

          v92 = 0;
          v47 = 1;
LABEL_104:
          v69 = [v40 token];
          v70 = [v69 paymentData];

          v71 = +[SSLogConfig sharedDaemonConfig];
          v72 = v71;
          if (!v70)
          {
            if (!v71)
            {
              v72 = +[SSLogConfig sharedConfig];
            }

            v83 = [v72 shouldLog];
            if ([v72 shouldLogToDisk])
            {
              v84 = v83 | 2;
            }

            else
            {
              v84 = v83;
            }

            v80 = [v72 OSLogObject];
            if (os_log_type_enabled(v80, OS_LOG_TYPE_DEFAULT))
            {
              v85 = v84;
            }

            else
            {
              v85 = v84 & 2;
            }

            if (v85)
            {
              v86 = objc_opt_class();
              v102 = 138543362;
              v103 = v86;
              v87 = v86;
              LODWORD(v91) = 12;
              v88 = _os_log_send_and_compose_impl();

              if (!v88)
              {
LABEL_119:

                v8 = v95;
                v7 = v96;
                if (v92)
                {
                  goto LABEL_87;
                }

                goto LABEL_83;
              }

              v80 = [NSString stringWithCString:v88 encoding:4, &v102, v91];
              free(v88);
              SSFileLog();
            }

LABEL_118:

            goto LABEL_119;
          }

          if (!v71)
          {
            v72 = +[SSLogConfig sharedConfig];
          }

          v73 = [v72 shouldLog];
          if ([v72 shouldLogToDisk])
          {
            v74 = v73 | 2;
          }

          else
          {
            v74 = v73;
          }

          v75 = [v72 OSLogObject];
          if (os_log_type_enabled(v75, OS_LOG_TYPE_DEFAULT))
          {
            v76 = v74;
          }

          else
          {
            v76 = v74 & 2;
          }

          if (v76)
          {
            v77 = objc_opt_class();
            v102 = 138543362;
            v103 = v77;
            v78 = v77;
            LODWORD(v91) = 12;
            v79 = _os_log_send_and_compose_impl();

            if (!v79)
            {
LABEL_117:

              v72 = [v96 token];
              v80 = [v72 paymentData];
              v81 = [v80 copy];
              paymentTokenData = self->_paymentTokenData;
              self->_paymentTokenData = v81;

              goto LABEL_118;
            }

            v75 = [NSString stringWithCString:v79 encoding:4, &v102, v91];
            free(v79);
            SSFileLog();
          }

          goto LABEL_117;
        }

        v35 = [NSString stringWithCString:v39 encoding:4, &v102, v91];
        free(v39);
        v90 = v35;
        SSFileLog();
LABEL_102:

        goto LABEL_103;
      }
    }

    else
    {
      v40 = v96;
      if (v30)
      {
        self->_didAuthorizePayment = 0;
        [(DisplayPaymentSheetOperation *)self _challengeSigningDelay];
        v64 = dispatch_time(0, (v63 * 1000000000.0));
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_1000F9CAC;
        block[3] = &unk_100328C38;
        block[4] = self;
        v98 = v30;
        v99 = v95;
        dispatch_after(v64, &_dispatch_main_q, block);

        v47 = 0;
        v31 = 0;
        v92 = 1;
        goto LABEL_104;
      }

      v31 = ISError();
      [(DisplayPaymentSheetOperation *)self setError:v31];
      v32 = +[SSLogConfig sharedDaemonConfig];
      if (!v32)
      {
        v32 = +[SSLogConfig sharedConfig];
      }

      v65 = [v32 shouldLog];
      if ([v32 shouldLogToDisk])
      {
        v66 = v65 | 2;
      }

      else
      {
        v66 = v65;
      }

      v35 = [v32 OSLogObject];
      if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
      {
        v67 = v66;
      }

      else
      {
        v67 = v66 & 2;
      }

      if (v67)
      {
        v68 = objc_opt_class();
        v102 = 138543362;
        v103 = v68;
        v38 = v68;
        LODWORD(v91) = 12;
        v90 = &v102;
        goto LABEL_40;
      }
    }

    v40 = v96;
    goto LABEL_102;
  }

  self->_didAuthorizePayment = 0;
  v48 = +[SSLogConfig sharedDaemonConfig];
  if (!v48)
  {
    v48 = +[SSLogConfig sharedConfig];
  }

  v49 = [v48 shouldLog];
  if ([v48 shouldLogToDisk])
  {
    v50 = v49 | 2;
  }

  else
  {
    v50 = v49;
  }

  v51 = [v48 OSLogObject];
  if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
  {
    v52 = v50;
  }

  else
  {
    v52 = v50 & 2;
  }

  if (!v52)
  {
    goto LABEL_67;
  }

  v53 = objc_opt_class();
  v102 = 138543362;
  v103 = v53;
  v54 = v53;
  LODWORD(v91) = 12;
  v55 = _os_log_send_and_compose_impl();

  if (v55)
  {
    v51 = [NSString stringWithCString:v55 encoding:4, &v102, v91];
    free(v55);
    SSFileLog();
LABEL_67:
  }

  v18 = 0;
  v31 = 0;
  v56 = &__NSArray0__struct;
  v47 = 1;
LABEL_86:
  v62 = [objc_alloc(ISWeakLinkedClassForString()) initWithStatus:v47 errors:v56];
  (*(v8 + 2))(v8, v62);

LABEL_87:
}

- (void)paymentAuthorizationControllerDidFinish:(id)a3
{
  self->_didFinishPayment = 1;
  v4 = a3;
  v5 = +[SSLogConfig sharedDaemonConfig];
  if (!v5)
  {
    v5 = +[SSLogConfig sharedConfig];
  }

  v6 = [v5 shouldLog];
  if ([v5 shouldLogToDisk])
  {
    v7 = v6 | 2;
  }

  else
  {
    v7 = v6;
  }

  v8 = [v5 OSLogObject];
  if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v7 &= 2u;
  }

  if (!v7)
  {
    goto LABEL_11;
  }

  v13 = 138543362;
  v14 = objc_opt_class();
  v9 = v14;
  LODWORD(v11) = 12;
  v10 = _os_log_send_and_compose_impl();

  if (v10)
  {
    v8 = [NSString stringWithCString:v10 encoding:4, &v13, v11];
    free(v10);
    SSFileLog();
LABEL_11:
  }

  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1000FA1DC;
  v12[3] = &unk_100327110;
  v12[4] = self;
  [v4 dismissWithCompletion:v12];
  [v4 setDelegate:0];
}

- (void)paymentAuthorizationController:(id)a3 didEncounterAuthorizationEvent:(unint64_t)a4
{
  v6 = +[SSLogConfig sharedDaemonConfig];
  if (!v6)
  {
    v6 = +[SSLogConfig sharedConfig];
  }

  v7 = [v6 shouldLog];
  if ([v6 shouldLogToDisk])
  {
    v8 = v7 | 2;
  }

  else
  {
    v8 = v7;
  }

  v9 = [v6 OSLogObject];
  if (!os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v8 &= 2u;
  }

  if (v8)
  {
    v10 = objc_opt_class();
    v11 = v10;
    v12 = [NSNumber numberWithUnsignedInteger:a4];
    v21 = 138543618;
    v22 = v10;
    v23 = 2114;
    v24 = v12;
    LODWORD(v20) = 22;
    v19 = &v21;
    v13 = _os_log_send_and_compose_impl();

    if (!v13)
    {
      goto LABEL_12;
    }

    v9 = [NSString stringWithCString:v13 encoding:4, &v21, v20];
    free(v13);
    v19 = v9;
    SSFileLog();
  }

LABEL_12:
  if (a4 > 4)
  {
    if (a4 > 6)
    {
      if (a4 == 7)
      {
        didBiometricsLockout = self->_didBiometricsLockout;
        v16 = 8;
      }

      else
      {
        if (a4 != 8)
        {
          return;
        }

        didBiometricsLockout = self->_didBiometricsLockout;
        v16 = 7;
      }
    }

    else
    {
      if (a4 != 5)
      {
        v14 = 171;
LABEL_20:
        self->ISOperation_opaque[v14] = 1;
        return;
      }

      didBiometricsLockout = self->_didBiometricsLockout;
      v16 = 5;
    }
  }

  else
  {
    if (a4 <= 2)
    {
      if (a4 != 1)
      {
        if (a4 != 2)
        {
          return;
        }

        v14 = 170;
        goto LABEL_20;
      }

      v17 = [SSAuthorizationMetricsController userActionDictionaryForBiometricMatchState:16 didBiometricsLockout:self->_didBiometricsLockout];
      goto LABEL_31;
    }

    didBiometricsLockout = self->_didBiometricsLockout;
    if (a4 == 3)
    {
      v16 = 3;
    }

    else
    {
      v16 = 2;
    }
  }

  v17 = [SSAuthorizationMetricsController userActionDictionaryForUserAction:v16 didBiometricsLockout:didBiometricsLockout, v19];
LABEL_31:
  v18 = v17;
  if (v17)
  {
    [(NSMutableArray *)self->_userActions addObject:v17];
  }
}

- (void)paymentAuthorizationController:(id)a3 willFinishWithError:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = +[SSLogConfig sharedDaemonConfig];
  if (!v7)
  {
    v7 = +[SSLogConfig sharedConfig];
  }

  v8 = [v7 shouldLog];
  if ([v7 shouldLogToDisk])
  {
    v9 = v8 | 2;
  }

  else
  {
    v9 = v8;
  }

  v10 = [v7 OSLogObject];
  if (!os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v9 &= 2u;
  }

  if (!v9)
  {
    goto LABEL_11;
  }

  v11 = objc_opt_class();
  v12 = v11;
  [v5 localizedDescription];
  v15 = 138543618;
  v16 = v11;
  v18 = v17 = 2114;
  LODWORD(v14) = 22;
  v13 = _os_log_send_and_compose_impl();

  if (v13)
  {
    v10 = [NSString stringWithCString:v13 encoding:4, &v15, v14];
    free(v13);
    SSFileLog();
LABEL_11:
  }

  [v6 setPrivateDelegate:0];
}

@end