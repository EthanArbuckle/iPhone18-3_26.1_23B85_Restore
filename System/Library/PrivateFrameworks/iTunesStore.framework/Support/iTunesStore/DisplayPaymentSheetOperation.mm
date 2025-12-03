@interface DisplayPaymentSheetOperation
- (BOOL)_isChallengeReadyToBeSigned;
- (BOOL)_presentPaymentSheetWithPaymentRequest:(id)request error:(id *)error;
- (CGImage)_createDefaultImageWithImageRef:(CGImage *)ref size:(CGSize)size borderPath:(CGPath *)path;
- (CGImage)_createImageMaskRefWithSize:(CGSize)size andPath:(CGPath *)path;
- (CGImage)_createImageRefWithURL:(id)l adornmentStyle:(int64_t)style designVersion:(id)version;
- (CGImage)_createMaskedImageRefForImageRef:(CGImage *)ref withPathRef:(CGPath *)pathRef andAdornmentStyle:(int64_t)style;
- (CGImage)_createRGBImageRefForGreyScaleImageRef:(CGImage *)ref width:(unint64_t)width height:(unint64_t)height;
- (CGImage)_createRatingImageWithStringValue:(id)value assetScale:(float *)scale;
- (CGImage)_createResizedImageWithOriginalImage:(CGImage *)image targetHeight:(double)height;
- (CGPath)_createBorderPathForAdornmentStyle:(int64_t)style iconWidth:(double)width iconHeight:(double)height designVersion:(id)version;
- (DisplayPaymentSheetOperation)initWithPaymentSheet:(id)sheet;
- (float)_challengeSigningDelay;
- (id)_metricsDialogEvent;
- (id)_paymentRequest;
- (int64_t)_imageTypeForURL:(id)l;
- (int64_t)_paymentSheetStyle;
- (unint64_t)_paymentRequestorTypeForPayeeType:(int64_t)type;
- (void)_completeWithSuccess:(BOOL)success error:(id)error;
- (void)_loadURLBag;
- (void)_postMetricsWithDialogEvent:(id)event;
- (void)dealloc;
- (void)paymentAuthorizationController:(id)controller didAuthorizePayment:(id)payment handler:(id)handler;
- (void)paymentAuthorizationController:(id)controller didEncounterAuthorizationEvent:(unint64_t)event;
- (void)paymentAuthorizationController:(id)controller willFinishWithError:(id)error;
- (void)paymentAuthorizationControllerDidFinish:(id)finish;
- (void)run;
- (void)setLocalAuthAccessControlRef:(__SecAccessControl *)ref;
@end

@implementation DisplayPaymentSheetOperation

- (DisplayPaymentSheetOperation)initWithPaymentSheet:(id)sheet
{
  sheetCopy = sheet;
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
    objc_storeStrong(&v7->_paymentSheet, sheet);
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

- (void)setLocalAuthAccessControlRef:(__SecAccessControl *)ref
{
  localAuthAccessControlRef = self->_localAuthAccessControlRef;
  if (localAuthAccessControlRef)
  {
    CFRelease(localAuthAccessControlRef);
  }

  self->_localAuthAccessControlRef = CFRetain(ref);
}

- (void)run
{
  v3 = +[SSLogConfig sharedDaemonConfig];
  if (!v3)
  {
    v3 = +[SSLogConfig sharedConfig];
  }

  shouldLog = [v3 shouldLog];
  if ([v3 shouldLogToDisk])
  {
    v5 = shouldLog | 2;
  }

  else
  {
    v5 = shouldLog;
  }

  oSLogObject = [v3 OSLogObject];
  if (!os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
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
  shouldUppercaseText = [(SSPaymentSheet *)paymentSheet shouldUppercaseText];
  v11 = @"NO";
  if (shouldUppercaseText)
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
    oSLogObject = [NSString stringWithCString:v12 encoding:4, &v47, v45];
    free(v12);
    v43 = oSLogObject;
    SSFileLog();
LABEL_13:
  }

  authenticationContext = self->_authenticationContext;
  if (authenticationContext)
  {
    username = [(AKAppleIDAuthenticationContext *)authenticationContext username];

    if (!username)
    {
      v36 = +[SSLogConfig sharedDaemonConfig];
      if (!v36)
      {
        v36 = +[SSLogConfig sharedConfig];
      }

      shouldLog2 = [v36 shouldLog];
      if ([v36 shouldLogToDisk])
      {
        v38 = shouldLog2 | 2;
      }

      else
      {
        v38 = shouldLog2;
      }

      oSLogObject2 = [v36 OSLogObject];
      if (!os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_ERROR))
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

        oSLogObject2 = [NSString stringWithCString:v42 encoding:4, &v47, v45];
        free(v42);
        SSFileLog();
      }

      goto LABEL_63;
    }
  }

  _paymentRequest = [(DisplayPaymentSheetOperation *)self _paymentRequest];
  if (!_paymentRequest)
  {
    v25 = ISError();
    v26 = +[SSLogConfig sharedDaemonConfig];
    if (!v26)
    {
      v26 = +[SSLogConfig sharedConfig];
    }

    shouldLog3 = [v26 shouldLog];
    if ([v26 shouldLogToDisk])
    {
      v33 = shouldLog3 | 2;
    }

    else
    {
      v33 = shouldLog3;
    }

    oSLogObject3 = [v26 OSLogObject];
    if (!os_log_type_enabled(oSLogObject3, OS_LOG_TYPE_ERROR))
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

  shouldLog4 = [v16 shouldLog];
  if ([v16 shouldLogToDisk])
  {
    v18 = shouldLog4 | 2;
  }

  else
  {
    v18 = shouldLog4;
  }

  oSLogObject4 = [v16 OSLogObject];
  if (!os_log_type_enabled(oSLogObject4, OS_LOG_TYPE_DEFAULT))
  {
    v18 &= 2u;
  }

  if (v18)
  {
    v20 = objc_opt_class();
    v21 = v20;
    v22 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [_paymentRequest requestType]);
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

    oSLogObject4 = [NSString stringWithCString:v23 encoding:4, &v47, v45];
    free(v23);
    v44 = oSLogObject4;
    SSFileLog();
  }

LABEL_28:
  v46 = 0;
  v24 = [(DisplayPaymentSheetOperation *)self _presentPaymentSheetWithPaymentRequest:_paymentRequest error:&v46];
  v25 = v46;
  if ((v24 & 1) == 0)
  {
    v26 = +[SSLogConfig sharedDaemonConfig];
    if (!v26)
    {
      v26 = +[SSLogConfig sharedConfig];
    }

    shouldLog5 = [v26 shouldLog];
    if ([v26 shouldLogToDisk])
    {
      v28 = shouldLog5 | 2;
    }

    else
    {
      v28 = shouldLog5;
    }

    oSLogObject3 = [v26 OSLogObject];
    if (!os_log_type_enabled(oSLogObject3, OS_LOG_TYPE_ERROR))
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

    oSLogObject3 = [NSString stringWithCString:v35 encoding:4, &v47, v45];
    free(v35);
    SSFileLog();
LABEL_49:

    goto LABEL_50;
  }

LABEL_51:

LABEL_64:
}

- (void)_completeWithSuccess:(BOOL)success error:(id)error
{
  successCopy = success;
  errorCopy = error;
  v7 = +[SSLogConfig sharedDaemonConfig];
  if (!v7)
  {
    v7 = +[SSLogConfig sharedConfig];
  }

  shouldLog = [v7 shouldLog];
  if ([v7 shouldLogToDisk])
  {
    v9 = shouldLog | 2;
  }

  else
  {
    v9 = shouldLog;
  }

  oSLogObject = [v7 OSLogObject];
  if (!os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
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
  if (successCopy)
  {
    v12 = @"YES";
  }

  v31 = v12;
  v32 = 2114;
  v33 = errorCopy;
  v13 = v11;
  LODWORD(v25) = 32;
  v24 = &v28;
  v14 = _os_log_send_and_compose_impl();

  if (v14)
  {
    oSLogObject = [NSString stringWithCString:v14 encoding:4, &v28, v25];
    free(v14);
    v24 = oSLogObject;
    SSFileLog();
LABEL_13:
  }

  _metricsDialogEvent = [(DisplayPaymentSheetOperation *)self _metricsDialogEvent];
  v16 = _metricsDialogEvent;
  if (_metricsDialogEvent)
  {
    dispatchQueue = self->_dispatchQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000F237C;
    block[3] = &unk_100327238;
    block[4] = self;
    v27 = _metricsDialogEvent;
    dispatch_async(dispatchQueue, block);
  }

  [(PKPaymentAuthorizationController *)self->_controller setDelegate:0, v24];
  [(PKPaymentAuthorizationController *)self->_controller setPrivateDelegate:0];
  [(DisplayPaymentSheetOperation *)self setError:errorCopy];
  [(DisplayPaymentSheetOperation *)self setSuccess:successCopy];
  completionHandlerForAutoEnrollment = [(DisplayPaymentSheetOperation *)self completionHandlerForAutoEnrollment];
  v19 = completionHandlerForAutoEnrollment;
  if (completionHandlerForAutoEnrollment)
  {
    (*(completionHandlerForAutoEnrollment + 16))(completionHandlerForAutoEnrollment, self->_signedChallenge, self->_passwordEquivalentToken, self->_didAuthorizePayment, self->_paymentTokenData, self->_fpanID, errorCopy);
  }

  else
  {
    completionHandler = [(DisplayPaymentSheetOperation *)self completionHandler];
    v21 = completionHandler;
    if (completionHandler)
    {
      (*(completionHandler + 16))(completionHandler, self->_signedChallenge, self->_passwordEquivalentToken, self->_didAuthorizePayment, errorCopy);
    }
  }

  [(DisplayPaymentSheetOperation *)self setCompletionHandler:0];
  [(DisplayPaymentSheetOperation *)self setCompletionHandlerForAutoEnrollment:0];
  containerCompletionHandler = [(DisplayPaymentSheetOperation *)self containerCompletionHandler];
  v23 = containerCompletionHandler;
  if (containerCompletionHandler)
  {
    (*(containerCompletionHandler + 16))(containerCompletionHandler);
  }

  [(DisplayPaymentSheetOperation *)self setContainerCompletionHandler:0];
}

- (int64_t)_imageTypeForURL:(id)l
{
  absoluteString = [l absoluteString];
  lowercaseString = [absoluteString lowercaseString];

  if ([lowercaseString hasSuffix:@"jpg"])
  {
    v5 = 2;
  }

  else
  {
    v5 = [lowercaseString hasSuffix:@"png"];
  }

  return v5;
}

- (BOOL)_isChallengeReadyToBeSigned
{
  challenge = [(DisplayPaymentSheetOperation *)self challenge];
  if (challenge)
  {
    accountIdentifier = [(DisplayPaymentSheetOperation *)self accountIdentifier];
    if (accountIdentifier && [(DisplayPaymentSheetOperation *)self localAuthAccessControlRef])
    {
      localAuthContext = [(DisplayPaymentSheetOperation *)self localAuthContext];
      if (localAuthContext)
      {
        localAuthOptions = [(DisplayPaymentSheetOperation *)self localAuthOptions];
        v7 = localAuthOptions != 0;
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
    uRLBag = [v3 URLBag];
    urlBag = self->_urlBag;
    self->_urlBag = uRLBag;
    goto LABEL_17;
  }

  urlBag = +[SSLogConfig sharedDaemonConfig];
  if (!urlBag)
  {
    urlBag = +[SSLogConfig sharedConfig];
  }

  shouldLog = [urlBag shouldLog];
  if ([urlBag shouldLogToDisk])
  {
    v10 = shouldLog | 2;
  }

  else
  {
    v10 = shouldLog;
  }

  oSLogObject = [urlBag OSLogObject];
  if (!os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
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
    oSLogObject = [NSString stringWithCString:v14 encoding:4, &v18, v16];
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
  authenticationContext = [(DisplayPaymentSheetOperation *)self authenticationContext];
  [v4 setAppleIDAuthenticationContext:authenticationContext];

  localAuthContext = [(DisplayPaymentSheetOperation *)self localAuthContext];
  externalizedContext = [localAuthContext externalizedContext];
  [v4 setExternalizedContext:externalizedContext];

  paymentSheet = [(DisplayPaymentSheetOperation *)self paymentSheet];
  LODWORD(externalizedContext) = [paymentSheet isApplePayClassic];

  v9 = &CFDictionaryGetValue_ptr;
  if (externalizedContext)
  {
    paymentSheet2 = [(DisplayPaymentSheetOperation *)self paymentSheet];
    merchantSession = [paymentSheet2 merchantSession];

    v12 = +[SSLogConfig sharedDaemonConfig];
    v13 = v12;
    if (merchantSession)
    {
      if (!v12)
      {
        v13 = +[SSLogConfig sharedConfig];
      }

      shouldLog = [v13 shouldLog];
      if ([v13 shouldLogToDisk])
      {
        v15 = shouldLog | 2;
      }

      else
      {
        v15 = shouldLog;
      }

      oSLogObject = [v13 OSLogObject];
      if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
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

        oSLogObject = [NSString stringWithCString:v19 encoding:4, &v260, v231];
        free(v19);
        v227 = oSLogObject;
        SSFileLog();
      }

      goto LABEL_15;
    }

    if (!v12)
    {
      v13 = +[SSLogConfig sharedConfig];
    }

    shouldLog2 = [v13 shouldLog];
    if ([v13 shouldLogToDisk])
    {
      v26 = shouldLog2 | 2;
    }

    else
    {
      v26 = shouldLog2;
    }

    oSLogObject2 = [v13 OSLogObject];
    if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEFAULT))
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

    shouldLog3 = [v13 shouldLog];
    if ([v13 shouldLogToDisk])
    {
      v22 = shouldLog3 | 2;
    }

    else
    {
      v22 = shouldLog3;
    }

    oSLogObject2 = [v13 OSLogObject];
    if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEFAULT))
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
    oSLogObject2 = [NSString stringWithCString:v29 encoding:4, &v260, v231];
    free(v29);
    v227 = oSLogObject2;
    SSFileLog();
LABEL_37:
  }

  v20 = 1;
LABEL_39:

  [v4 setRequestType:v20];
  externalizedContext2 = [v4 externalizedContext];
  if (externalizedContext2)
  {
  }

  else
  {
    appleIDAuthenticationContext = [v4 appleIDAuthenticationContext];

    if (!appleIDAuthenticationContext)
    {
      self->_isASNPurchase = 1;
    }
  }

  v32 = self->_paymentSheet;
  currencyCode = [(SSPaymentSheet *)v32 currencyCode];
  [v4 setCurrencyCode:currencyCode];

  countryCode = [(SSPaymentSheet *)v32 countryCode];
  [v4 setCountryCode:countryCode];

  if ([(SSPaymentSheet *)v32 titleType]== 2)
  {
    if ([(SSPaymentSheet *)v32 isApplePayClassic])
    {
      [v4 setRequestor:{-[DisplayPaymentSheetOperation _paymentRequestorTypeForPayeeType:](self, "_paymentRequestorTypeForPayeeType:", -[SSPaymentSheet payeeType](v32, "payeeType"))}];
      title = [(SSPaymentSheet *)v32 title];
      [v4 setLocalizedNavigationTitle:title];

      goto LABEL_50;
    }

    v39 = v4;
    v38 = 0;
  }

  else
  {
    title2 = [(SSPaymentSheet *)v32 title];
    [v4 setLocalizedNavigationTitle:title2];

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

  shouldLog4 = [v40 shouldLog];
  if ([v40 shouldLogToDisk])
  {
    v42 = shouldLog4 | 2;
  }

  else
  {
    v42 = shouldLog4;
  }

  oSLogObject3 = [v40 OSLogObject];
  if (os_log_type_enabled(oSLogObject3, OS_LOG_TYPE_DEFAULT))
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
  localizedNavigationTitle = [v4 localizedNavigationTitle];
  v260 = 138543874;
  v261 = v45;
  v262 = 2114;
  v263 = v46;
  v264 = 2114;
  v265 = localizedNavigationTitle;
  LODWORD(v231) = 32;
  v228 = &v260;
  v48 = _os_log_send_and_compose_impl();

  v32 = v240;
  if (v48)
  {
    oSLogObject3 = [NSString stringWithCString:v48 encoding:4, &v260, v231];
    free(v48);
    v228 = oSLogObject3;
    SSFileLog();
LABEL_61:
  }

  if ((+[ISBiometricStore shouldUseAutoEnrollment](ISBiometricStore, "shouldUseAutoEnrollment") & 1) != 0 || +[ISBiometricStore shouldUseApplePayClassic])
  {
    if (![AMSBiometrics isActionSupported:4 withAccessControl:self->_localAuthAccessControlRef, v228])
    {
      merchantSession2 = [AMSBiometrics ACLVersionForAccessControl:self->_localAuthAccessControlRef];
      countryCode2 = +[SSLogConfig sharedDaemonConfig];
      if (!countryCode2)
      {
        countryCode2 = +[SSLogConfig sharedConfig];
      }

      shouldLog5 = [countryCode2 shouldLog];
      if ([countryCode2 shouldLogToDisk])
      {
        v60 = shouldLog5 | 2;
      }

      else
      {
        v60 = shouldLog5;
      }

      oSLogObject4 = [countryCode2 OSLogObject];
      if (!os_log_type_enabled(oSLogObject4, OS_LOG_TYPE_DEFAULT))
      {
        v60 &= 2u;
      }

      if (v60)
      {
        v62 = objc_opt_class();
        v260 = 138543618;
        v261 = v62;
        v262 = 2114;
        v263 = merchantSession2;
        LODWORD(v231) = 22;
        v228 = &v260;
        v63 = _os_log_send_and_compose_impl();

        if (!v63)
        {
LABEL_142:

          goto LABEL_143;
        }

        oSLogObject4 = [NSString stringWithCString:v63 encoding:4, &v260, v231];
        free(v63);
        v228 = oSLogObject4;
        SSFileLog();
      }

LABEL_141:

      goto LABEL_142;
    }

    merchantSession2 = [(SSPaymentSheet *)v32 merchantSession];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v50 = +[SSLogConfig sharedDaemonConfig];
      if (!v50)
      {
        v50 = +[SSLogConfig sharedConfig];
      }

      shouldLog6 = [v50 shouldLog];
      if ([v50 shouldLogToDisk])
      {
        v65 = shouldLog6 | 2;
      }

      else
      {
        v65 = shouldLog6;
      }

      oSLogObject5 = [v50 OSLogObject];
      if (!os_log_type_enabled(oSLogObject5, OS_LOG_TYPE_DEFAULT))
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

        oSLogObject5 = [NSString stringWithCString:v68 encoding:4, &v260, v231];
        free(v68);
        v228 = oSLogObject5;
        SSFileLog();
      }

LABEL_112:
      if (![(SSPaymentSheet *)v32 isApplePayClassic])
      {
LABEL_143:

        goto LABEL_144;
      }

      countryCode2 = [(SSPaymentSheet *)v32 countryCode];
      if (countryCode2)
      {
        v74 = [NSSet setWithObject:countryCode2];
        [v4 setSupportedCountries:v74];
        goto LABEL_127;
      }

      v74 = +[SSLogConfig sharedDaemonConfig];
      if (!v74)
      {
        v74 = +[SSLogConfig sharedConfig];
      }

      shouldLog7 = [v74 shouldLog];
      if ([v74 shouldLogToDisk])
      {
        v76 = shouldLog7 | 2;
      }

      else
      {
        v76 = shouldLog7;
      }

      oSLogObject6 = [v74 OSLogObject];
      if (!os_log_type_enabled(oSLogObject6, OS_LOG_TYPE_ERROR))
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

          oSLogObject4 = +[ISBiometricStore applePayClassicNetworks];
          if (oSLogObject4)
          {
            [v4 setSupportedNetworks:oSLogObject4];
            goto LABEL_141;
          }

          v80 = +[SSLogConfig sharedDaemonConfig];
          if (!v80)
          {
            v80 = +[SSLogConfig sharedConfig];
          }

          shouldLog8 = [v80 shouldLog];
          if ([v80 shouldLogToDisk])
          {
            v82 = shouldLog8 | 2;
          }

          else
          {
            v82 = shouldLog8;
          }

          oSLogObject7 = [v80 OSLogObject];
          if (!os_log_type_enabled(oSLogObject7, OS_LOG_TYPE_ERROR))
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

            oSLogObject7 = [NSString stringWithCString:v85 encoding:4, &v260, v231];
            free(v85);
            v228 = oSLogObject7;
            SSFileLog();
          }

          goto LABEL_140;
        }

        oSLogObject6 = [NSString stringWithCString:v79 encoding:4, &v260, v231];
        free(v79);
        v228 = oSLogObject6;
        SSFileLog();
        v32 = v240;
      }

      goto LABEL_127;
    }

    v50 = [objc_alloc(ISWeakLinkedClassForString()) initWithDictionary:merchantSession2];
    v51 = +[SSLogConfig sharedDaemonConfig];
    v52 = v51;
    if (v50)
    {
      if (!v51)
      {
        v52 = +[SSLogConfig sharedConfig];
      }

      shouldLog9 = [v52 shouldLog];
      if ([v52 shouldLogToDisk])
      {
        v54 = shouldLog9 | 2;
      }

      else
      {
        v54 = shouldLog9;
      }

      oSLogObject8 = [v52 OSLogObject];
      if (!os_log_type_enabled(oSLogObject8, OS_LOG_TYPE_DEFAULT))
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

        oSLogObject8 = [NSString stringWithCString:v57 encoding:4, &v260, v231];
        free(v57);
        v228 = oSLogObject8;
        SSFileLog();
      }

      goto LABEL_78;
    }

    if (!v51)
    {
      v52 = +[SSLogConfig sharedConfig];
    }

    shouldLog10 = [v52 shouldLog];
    if ([v52 shouldLogToDisk])
    {
      v70 = shouldLog10 | 2;
    }

    else
    {
      v70 = shouldLog10;
    }

    oSLogObject9 = [v52 OSLogObject];
    if (!os_log_type_enabled(oSLogObject9, OS_LOG_TYPE_ERROR))
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

      oSLogObject9 = [NSString stringWithCString:v73 encoding:4, &v260, v231];
      free(v73);
      v228 = oSLogObject9;
      SSFileLog();
    }

    goto LABEL_111;
  }

LABEL_144:
  v86 = objc_opt_new();
  salableInfoLabel = [(SSPaymentSheet *)v32 salableInfoLabel];

  selfCopy = self;
  v239 = v86;
  if (!salableInfoLabel)
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

    paymentSheet3 = [(DisplayPaymentSheetOperation *)self paymentSheet];
    designVersion = [paymentSheet3 designVersion];
    v93 = [(DisplayPaymentSheetOperation *)self _createImageRefWithURL:v234 adornmentStyle:v90 designVersion:designVersion];

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

    shouldLog11 = [v95 shouldLog];
    if ([v95 shouldLogToDisk])
    {
      v97 = shouldLog11 | 2;
    }

    else
    {
      v97 = shouldLog11;
    }

    oSLogObject10 = [v95 OSLogObject];
    if (os_log_type_enabled(oSLogObject10, OS_LOG_TYPE_ERROR))
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

      oSLogObject10 = [NSString stringWithCString:v101 encoding:4, &v260, v231];
      free(v101);
      v228 = oSLogObject10;
      SSFileLog();
    }

    goto LABEL_166;
  }

LABEL_167:
  v233 = v4;
  inlineImages = [(SSPaymentSheet *)v32 inlineImages];
  v103 = [inlineImages count];
  v104 = +[SSLogConfig sharedDaemonConfig];
  v105 = v104;
  if (!v103)
  {
    if (!v104)
    {
      v105 = +[SSLogConfig sharedConfig];
    }

    shouldLog12 = [v105 shouldLog];
    if ([v105 shouldLogToDisk])
    {
      v114 = shouldLog12 | 2;
    }

    else
    {
      v114 = shouldLog12;
    }

    oSLogObject11 = [v105 OSLogObject];
    if (os_log_type_enabled(oSLogObject11, OS_LOG_TYPE_DEFAULT))
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

      oSLogObject11 = [NSString stringWithCString:v118 encoding:4, &v260, v231];
      free(v118);
      v229 = oSLogObject11;
      SSFileLog();
    }

    goto LABEL_193;
  }

  if (!v104)
  {
    v105 = +[SSLogConfig sharedConfig];
  }

  shouldLog13 = [v105 shouldLog];
  if ([v105 shouldLogToDisk])
  {
    v107 = shouldLog13 | 2;
  }

  else
  {
    v107 = shouldLog13;
  }

  oSLogObject12 = [v105 OSLogObject];
  if (os_log_type_enabled(oSLogObject12, OS_LOG_TYPE_DEFAULT))
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
  v111 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [inlineImages count]);
  v260 = 138543618;
  v261 = v110;
  v262 = 2114;
  v263 = v111;
  LODWORD(v231) = 22;
  v229 = &v260;
  v112 = _os_log_send_and_compose_impl();

  if (v112)
  {
    oSLogObject12 = [NSString stringWithCString:v112 encoding:4, &v260, v231];
    free(v112);
    v229 = oSLogObject12;
    SSFileLog();
LABEL_179:
  }

  v257[0] = _NSConcreteStackBlock;
  v257[1] = 3221225472;
  v257[2] = sub_1000F4C74;
  v257[3] = &unk_100328AF8;
  v257[4] = self;
  [inlineImages enumerateObjectsUsingBlock:v257];
LABEL_194:
  salableInfoLabel2 = [(SSPaymentSheet *)v32 salableInfoLabel];
  if ([inlineImages count])
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
          v131 = [NSString stringWithFormat:@"%@", v131];

          self = selfCopy;
          if (v119 <= selfCopy->_assetScaleIndex)
          {
            [CFArrayGetValueAtIndex(selfCopy->_assetScaleRef v119)];
          }

          if (v119 <= selfCopy->_tintArrayIndex)
          {
            CFArrayGetValueAtIndex(selfCopy->_tintArrayRef, v119);
          }

          oSLogObject13 = salableInfoLabel2;
          salableInfoLabel2 = SSPaymentSheetImagePlaceholderReplaceTagWithImageDataAndTint();
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

        v131 = [v9[412] sharedDaemonConfig];
        if (!v131)
        {
          v131 = +[SSLogConfig sharedConfig];
        }

        shouldLog14 = [v131 shouldLog];
        if ([v131 shouldLogToDisk])
        {
          v134 = shouldLog14 | 2;
        }

        else
        {
          v134 = shouldLog14;
        }

        oSLogObject13 = [v131 OSLogObject];
        if (os_log_type_enabled(oSLogObject13, OS_LOG_TYPE_ERROR))
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
            self = selfCopy;
            goto LABEL_229;
          }

          oSLogObject13 = [NSString stringWithCString:v138 encoding:4, &v260, v231];
          free(v138);
          v228 = oSLogObject13;
          SSFileLog();
        }

        self = selfCopy;
        goto LABEL_228;
      }

      sharedDaemonConfig = [v9[412] sharedDaemonConfig];
      if (!sharedDaemonConfig)
      {
        sharedDaemonConfig = [v9[412] sharedConfig];
      }

      shouldLog15 = [sharedDaemonConfig shouldLog];
      if ([sharedDaemonConfig shouldLogToDisk])
      {
        shouldLog15 |= 2u;
      }

      oSLogObject14 = [sharedDaemonConfig OSLogObject];
      if (os_log_type_enabled(oSLogObject14, OS_LOG_TYPE_DEFAULT))
      {
        v123 = shouldLog15;
      }

      else
      {
        v123 = shouldLog15 & 2;
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

      self = selfCopy;
      v9 = &CFDictionaryGetValue_ptr;
LABEL_233:
      if (++v119 >= [inlineImages count])
      {
        goto LABEL_236;
      }
    }

    oSLogObject14 = [NSString stringWithCString:v127 encoding:4, &v260, v231];
    free(v127);
    v228 = oSLogObject14;
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
  ratingHeader = [(SSPaymentSheet *)v32 ratingHeader];
  ratingValue = [(SSPaymentSheet *)v32 ratingValue];
  v143 = ratingValue;
  v245 = ratingHeader;
  if (ratingHeader && ratingValue)
  {
    v144 = objc_alloc_init(v237);
    v145 = [[NSAttributedString alloc] initWithString:v245];
    [v144 setTitle:v145];

    v146 = [[NSAttributedString alloc] initWithString:v143];
    [v144 setLabel:v146];

    [v86 addObject:v144];
  }

  flexList = [(SSPaymentSheet *)v32 flexList];
  if (flexList)
  {
    v254[0] = _NSConcreteStackBlock;
    v254[1] = 3221225472;
    v254[2] = sub_1000F5380;
    v254[3] = &unk_100328B20;
    v254[4] = self;
    v256 = v237;
    v255 = v86;
    [(__CFString *)flexList enumerateObjectsUsingBlock:v254];
  }

  allocator = v143;
  attributedList = [(SSPaymentSheet *)v32 attributedList];
  type = flexList;
  v241 = attributedList;
  if (attributedList)
  {
    v149 = attributedList;
    v251[0] = _NSConcreteStackBlock;
    v251[1] = 3221225472;
    v251[2] = sub_1000F5790;
    v251[3] = &unk_100328B98;
    v253 = v236;
    sharedDaemonConfig2 = objc_alloc_init(NSMutableArray);
    v252 = sharedDaemonConfig2;
    [v149 enumerateObjectsUsingBlock:v251];
    paymentSheet4 = [(DisplayPaymentSheetOperation *)selfCopy paymentSheet];
    paymentSummary = [paymentSheet4 paymentSummary];

    paymentSheet5 = [(DisplayPaymentSheetOperation *)selfCopy paymentSheet];
    v154 = paymentSheet5;
    if (paymentSummary)
    {
      paymentSummary2 = [paymentSheet5 paymentSummary];
    }

    else
    {
      storeName = [paymentSheet5 storeName];

      if (storeName)
      {
        v154 = [NSBundle bundleForClass:objc_opt_class()];
        v164 = [v154 localizedStringForKey:@"CONFIRMATION_TITLE_PAY" value:&stru_10033CC30 table:@"Mesa"];
        v165 = objc_opt_self();
        paymentSheet6 = [v165 paymentSheet];
        storeName2 = [paymentSheet6 storeName];
        v167 = [NSString stringWithFormat:@"%@ %@", v164, storeName2];

        v32 = v240;
        goto LABEL_260;
      }

      v154 = [NSBundle bundleForClass:objc_opt_class()];
      paymentSummary2 = [v154 localizedStringForKey:@"CONFIRMATION_TITLE_PAY" value:&stru_10033CC30 table:@"Mesa"];
    }

    v167 = paymentSummary2;
LABEL_260:

    paymentSheet7 = [(DisplayPaymentSheetOperation *)selfCopy paymentSheet];
    price = [paymentSheet7 price];
    v170 = price;
    if (price)
    {
      v171 = price;
    }

    else
    {
      v171 = &off_10034BDF0;
    }

    v172 = v171;

    [v172 decimalValue];
    v173 = [NSDecimalNumber decimalNumberWithDecimal:&v260];
    v174 = [v236 summaryItemWithLabel:v167 amount:v173];

    [sharedDaemonConfig2 addObject:v174];
    v162 = [sharedDaemonConfig2 copy];

    oSLogObject15 = v252;
    v86 = v239;
    goto LABEL_264;
  }

  sharedDaemonConfig2 = [v9[412] sharedDaemonConfig];
  if (!sharedDaemonConfig2)
  {
    sharedDaemonConfig2 = [v9[412] sharedConfig];
  }

  shouldLog16 = [sharedDaemonConfig2 shouldLog];
  if ([sharedDaemonConfig2 shouldLogToDisk])
  {
    v158 = shouldLog16 | 2;
  }

  else
  {
    v158 = shouldLog16;
  }

  oSLogObject15 = [sharedDaemonConfig2 OSLogObject];
  if (os_log_type_enabled(oSLogObject15, OS_LOG_TYPE_DEFAULT))
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

    oSLogObject15 = [NSString stringWithCString:v162 encoding:4, &v260, v231];
    free(v162);
    v230 = oSLogObject15;
    SSFileLog();
  }

  v162 = 0;
LABEL_264:

LABEL_265:
  paymentSheet8 = [(DisplayPaymentSheetOperation *)selfCopy paymentSheet];
  designVersion2 = [paymentSheet8 designVersion];
  v177 = AMSPaymentSheetDesignVersion_2_0;
  v178 = [designVersion2 isEqualToNumber:AMSPaymentSheetDesignVersion_2_0];

  if (v178)
  {
    goto LABEL_285;
  }

  accountHeader = [(SSPaymentSheet *)v32 accountHeader];
  if (accountHeader)
  {
    v180 = v162;
    accountName = [(DisplayPaymentSheetOperation *)selfCopy accountName];
    v182 = [SSPaymentSheet stringWithFormattedUsernameForString:SSPaymentSheetAppleIDUppercaseReplacementPattern username:accountName];
    if (v182)
    {
      sharedDaemonConfig3 = objc_alloc_init(v237);
      v184 = [[NSAttributedString alloc] initWithString:accountHeader];
      [sharedDaemonConfig3 setTitle:v184];

      v185 = [[NSAttributedString alloc] initWithString:v182];
      [sharedDaemonConfig3 setLabel:v185];

      [v239 addObject:sharedDaemonConfig3];
LABEL_283:
      v162 = v180;

      v9 = &CFDictionaryGetValue_ptr;
      v86 = v239;
      goto LABEL_284;
    }

    v186 = v4;
    sharedDaemonConfig3 = [v9[412] sharedDaemonConfig];
    if (!sharedDaemonConfig3)
    {
      sharedDaemonConfig3 = +[SSLogConfig sharedConfig];
    }

    shouldLog17 = [sharedDaemonConfig3 shouldLog];
    if ([sharedDaemonConfig3 shouldLogToDisk])
    {
      shouldLog17 |= 2u;
    }

    oSLogObject16 = [sharedDaemonConfig3 OSLogObject];
    if (os_log_type_enabled(oSLogObject16, OS_LOG_TYPE_ERROR))
    {
      v189 = shouldLog17;
    }

    else
    {
      v189 = shouldLog17 & 2;
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

      oSLogObject16 = [NSString stringWithCString:v191 encoding:4, &v260, v231];
      free(v191);
      v230 = oSLogObject16;
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
    paymentSummary3 = [(SSPaymentSheet *)v32 paymentSummary];
    storeName3 = [(SSPaymentSheet *)v32 storeName];
    v238 = storeName3;
    v194 = v4;
    if (paymentSummary3)
    {
      v196 = paymentSummary3;
    }

    else
    {
      v196 = storeName3;
      if (storeName3)
      {
        v197 = [NSBundle bundleForClass:objc_opt_class()];
        v198 = [v197 localizedStringForKey:@"CONFIRMATION_TITLE_PAY" value:&stru_10033CC30 table:@"Mesa"];
        v196 = [NSString stringWithFormat:@"%@ %@", v198, v196];

        v32 = v240;
      }

      else
      {
        v199 = [NSBundle bundleForClass:objc_opt_class()];
        v196 = [v199 localizedStringForKey:@"CONFIRMATION_TITLE_PAY" value:&stru_10033CC30 table:@"Mesa"];
      }
    }

    price2 = [(SSPaymentSheet *)v32 price];
    v201 = price2;
    v202 = &off_10034BDF0;
    if (price2)
    {
      v202 = price2;
    }

    v203 = v202;

    [v203 decimalValue];
    v204 = [NSDecimalNumber decimalNumberWithDecimal:&v260];
    [v236 summaryItemWithLabel:v196 amount:v204];
    v206 = v205 = v32;

    v207 = objc_alloc_init(NSMutableArray);
    priceSectionItems = [(SSPaymentSheet *)v205 priceSectionItems];
    v248[0] = _NSConcreteStackBlock;
    v248[1] = 3221225472;
    v248[2] = sub_1000F5C2C;
    v248[3] = &unk_100328BC0;
    v250 = v236;
    v209 = v207;
    v249 = v209;
    [priceSectionItems enumerateObjectsUsingBlock:v248];
    if (paymentSummary3 && priceSectionItems)
    {
      [v194 setLocalizedSummaryItemsTitle:paymentSummary3];
    }

    [v209 addObject:v206];
    [v194 setPaymentSummaryItems:v209];
    price3 = [(SSPaymentSheet *)v240 price];
    if (!price3 || (v211 = price3, v212 = [(SSPaymentSheet *)v240 shouldSuppressPrice], v211, v212))
    {
      [v194 setSuppressTotal:1];
    }

    v4 = v194;
    v9 = &CFDictionaryGetValue_ptr;
    v86 = v239;
    v32 = v240;
  }

  confirmationTitleType = [(SSPaymentSheet *)v32 confirmationTitleType];
  if (confirmationTitleType <= 5)
  {
    [v4 setConfirmationStyle:confirmationTitleType];
  }

  designVersion3 = [(SSPaymentSheet *)v32 designVersion];
  v215 = [designVersion3 isEqualToNumber:v177];

  v216 = allocator;
  if (v215)
  {
    [v4 setClientViewSourceIdentifier:@"AMSUIPaymentSheetViewProvider"];
    v247 = 0;
    v217 = [NSKeyedArchiver archivedDataWithRootObject:v4 requiringSecureCoding:1 error:&v247];
    v218 = v247;
    if (v218)
    {
      sharedDaemonConfig4 = [v9[412] sharedDaemonConfig];
      if (!sharedDaemonConfig4)
      {
        sharedDaemonConfig4 = [v9[412] sharedConfig];
      }

      shouldLog18 = [sharedDaemonConfig4 shouldLog];
      if ([sharedDaemonConfig4 shouldLogToDisk])
      {
        shouldLog18 |= 2u;
      }

      oSLogObject17 = [sharedDaemonConfig4 OSLogObject];
      if (os_log_type_enabled(oSLogObject17, OS_LOG_TYPE_ERROR))
      {
        v222 = shouldLog18;
      }

      else
      {
        v222 = shouldLog18 & 2;
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

        oSLogObject17 = [NSString stringWithCString:v224 encoding:4, &v260, v231];
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
      sharedDaemonConfig4 = [NSDictionary dictionaryWithObjects:&v259 forKeys:&v258 count:1];
      [v4 setClientViewSourceParameter:sharedDaemonConfig4];
    }

LABEL_319:

    v216 = allocator;
    goto LABEL_320;
  }

LABEL_321:
  v225 = v4;

  return v4;
}

- (unint64_t)_paymentRequestorTypeForPayeeType:(int64_t)type
{
  if ((type - 1) > 4)
  {
    return 0;
  }

  else
  {
    return qword_1002A8F70[type - 1];
  }
}

- (int64_t)_paymentSheetStyle
{
  localAuthContext = [(DisplayPaymentSheetOperation *)self localAuthContext];
  if (localAuthContext)
  {
    v4 = localAuthContext;
    authenticationContext = [(DisplayPaymentSheetOperation *)self authenticationContext];

    if (authenticationContext)
    {
      return 1;
    }
  }

  authenticationContext2 = [(DisplayPaymentSheetOperation *)self authenticationContext];

  if (authenticationContext2)
  {
    return 2;
  }

  else
  {
    return 3;
  }
}

- (BOOL)_presentPaymentSheetWithPaymentRequest:(id)request error:(id *)error
{
  requestCopy = request;
  v7 = +[SSLogConfig sharedDaemonConfig];
  if (!v7)
  {
    v7 = +[SSLogConfig sharedConfig];
  }

  shouldLog = [v7 shouldLog];
  if ([v7 shouldLogToDisk])
  {
    v9 = shouldLog | 2;
  }

  else
  {
    v9 = shouldLog;
  }

  oSLogObject = [v7 OSLogObject];
  if (!os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
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

  v14 = [objc_alloc(ISWeakLinkedClassForString()) initWithPaymentRequest:requestCopy];
  controller = self->_controller;
  self->_controller = v14;

  if (self->_controller)
  {
    v16 = +[SSLogConfig sharedDaemonConfig];
    if (!v16)
    {
      v16 = +[SSLogConfig sharedConfig];
    }

    shouldLog2 = [v16 shouldLog];
    if ([v16 shouldLogToDisk])
    {
      v18 = shouldLog2 | 2;
    }

    else
    {
      v18 = shouldLog2;
    }

    oSLogObject2 = [v16 OSLogObject];
    if (!os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEFAULT))
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

      oSLogObject2 = [NSString stringWithCString:v22 encoding:4, location, v35];
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

  shouldLog3 = [v25 shouldLog];
  if ([v25 shouldLogToDisk])
  {
    v27 = shouldLog3 | 2;
  }

  else
  {
    v27 = shouldLog3;
  }

  oSLogObject3 = [v25 OSLogObject];
  if (!os_log_type_enabled(oSLogObject3, OS_LOG_TYPE_ERROR))
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
    oSLogObject3 = [NSString stringWithCString:v31 encoding:4, location, v35];
    free(v31);
    SSFileLog();
LABEL_35:
  }

LABEL_37:
  if (error)
  {
    v32 = v24;
    *error = v24;
  }

  return v24 == 0;
}

- (float)_challengeSigningDelay
{
  v3 = +[ISDevice sharedInstance];
  deviceBiometricStyle = [v3 deviceBiometricStyle];

  if (self->_touchIDDelayEnabled && deviceBiometricStyle == 2)
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

          shouldLog = [v17 shouldLog];
          if ([v17 shouldLogToDisk])
          {
            v19 = shouldLog | 2;
          }

          else
          {
            v19 = shouldLog;
          }

          oSLogObject = [v17 OSLogObject];
          if (!os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
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

            oSLogObject = [NSString stringWithCString:v22 encoding:4, v32, v31, *v32, *&v32[8]];
            free(v22);
            SSFileLog();
          }

          goto LABEL_31;
        }
      }

      oSLogObject3 = +[SSLogConfig sharedDaemonConfig];
      if (!oSLogObject3)
      {
        oSLogObject3 = +[SSLogConfig sharedConfig];
      }

      shouldLog2 = [oSLogObject3 shouldLog];
      if ([oSLogObject3 shouldLogToDisk])
      {
        v24 = shouldLog2 | 2;
      }

      else
      {
        v24 = shouldLog2;
      }

      oSLogObject2 = [oSLogObject3 OSLogObject];
      if (!os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEFAULT))
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
        oSLogObject2 = [NSString stringWithCString:v27 encoding:4, v32, v31, *v32, *&v32[8]];
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

      shouldLog3 = [v6 shouldLog];
      if ([v6 shouldLogToDisk])
      {
        v30 = shouldLog3 | 2;
      }

      else
      {
        v30 = shouldLog3;
      }

      oSLogObject3 = [v6 OSLogObject];
      if (!os_log_type_enabled(oSLogObject3, OS_LOG_TYPE_ERROR))
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

  shouldLog4 = [v6 shouldLog];
  if ([v6 shouldLogToDisk])
  {
    v8 = shouldLog4 | 2;
  }

  else
  {
    v8 = shouldLog4;
  }

  oSLogObject3 = [v6 OSLogObject];
  if (!os_log_type_enabled(oSLogObject3, OS_LOG_TYPE_DEFAULT))
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
  _paymentSheetStyle = [(DisplayPaymentSheetOperation *)self _paymentSheetStyle];
  if (_paymentSheetStyle == 3)
  {
    v5 = SSAuthorizationMetricsKeyEventType;
    v6 = &off_10034BE68;
  }

  else
  {
    if (_paymentSheetStyle != 2)
    {
      if (_paymentSheetStyle == 1)
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
  paymentSheet = [(DisplayPaymentSheetOperation *)self paymentSheet];
  buyParams = [paymentSheet buyParams];

  if (buyParams)
  {
    [v3 setObject:buyParams forKeyedSubscript:SSAuthorizationMetricsKeyBuyParams];
  }

  dialogId = [(DisplayPaymentSheetOperation *)self dialogId];
  if (dialogId)
  {
    [v3 setObject:dialogId forKeyedSubscript:SSAuthorizationMetricsKeyDialogID];
  }

  userAgent = [(DisplayPaymentSheetOperation *)self userAgent];
  if (userAgent)
  {
    [v3 setObject:userAgent forKeyedSubscript:SSAuthorizationMetricsKeyUserAgent];
  }

  v16 = [SSAuthorizationMetricsController authorizationDialogEventForParameters:v3];
  [v16 setUserActions:self->_userActions];

  return v16;
}

- (void)_postMetricsWithDialogEvent:(id)event
{
  eventCopy = event;
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
      [v8 insertEvent:eventCopy withCompletionHandler:v25];
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

      shouldLog = [v9 shouldLog];
      if ([v9 shouldLogToDisk])
      {
        v11 = shouldLog | 2;
      }

      else
      {
        v11 = shouldLog;
      }

      oSLogObject = [v9 OSLogObject];
      if (!os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
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

    shouldLog2 = [v6 shouldLog];
    if ([v6 shouldLogToDisk])
    {
      v17 = shouldLog2 | 2;
    }

    else
    {
      v17 = shouldLog2;
    }

    oSLogObject2 = [v6 OSLogObject];
    if (!os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_ERROR))
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

- (CGImage)_createDefaultImageWithImageRef:(CGImage *)ref size:(CGSize)size borderPath:(CGPath *)path
{
  height = size.height;
  width = size.width;
  DeviceRGB = CGColorSpaceCreateDeviceRGB();
  v10 = CGBitmapContextCreate(0, width, height, 8uLL, vcvtd_n_u64_f64(width, 2uLL), DeviceRGB, 2u);
  v15.origin.x = 0.0;
  v15.origin.y = 0.0;
  v15.size.width = width;
  v15.size.height = height;
  CGContextDrawImage(v10, v15, ref);
  v14[0] = xmmword_1002A8F10;
  v14[1] = unk_1002A8F20;
  v11 = CGColorCreate(DeviceRGB, v14);
  CGContextSetStrokeColorWithColor(v10, v11);
  CGContextSetLineWidth(v10, 1.0);
  CGContextAddPath(v10, path);
  CGContextDrawPath(v10, kCGPathStroke);
  Image = CGBitmapContextCreateImage(v10);
  CGColorSpaceRelease(DeviceRGB);
  CGColorRelease(v11);
  CGContextRelease(v10);
  return Image;
}

- (CGPath)_createBorderPathForAdornmentStyle:(int64_t)style iconWidth:(double)width iconHeight:(double)height designVersion:(id)version
{
  versionCopy = version;
  v10 = versionCopy;
  if (style == 4)
  {
    v23.size.width = width + -1.0;
    v23.size.height = height + -1.0;
    v23.origin.x = 0.5;
    v23.origin.y = 0.5;
    v21 = CGPathCreateWithRoundedRect(v23, (width + -1.0) * 0.5, (height + -1.0) * 0.5, 0);
    MutableCopy = CGPathCreateMutableCopy(v21);
    CGPathRelease(v21);
  }

  else if (style == 1)
  {
    v13 = [versionCopy isEqualToNumber:AMSPaymentSheetDesignVersion_2_0];
    v14 = 0.236842111;
    if (v13)
    {
      v14 = 0.185185185;
    }

    v15 = v14 * width;
    MutableCopy = CGPathCreateMutable();
    v16 = v15 + 0.0 + 0.5;
    CGPathMoveToPoint(MutableCopy, 0, 0.5, v16);
    v17 = height - v15 + -0.5;
    CGPathAddLineToPoint(MutableCopy, 0, 0.5, v17);
    v18 = height + -0.5;
    CGPathAddQuadCurveToPoint(MutableCopy, 0, 0.5, v18, v16, v18);
    v19 = width - v15 + -0.5;
    CGPathAddLineToPoint(MutableCopy, 0, v19, v18);
    v20 = width + -0.5;
    CGPathAddQuadCurveToPoint(MutableCopy, 0, v20, v18, v20, v17);
    CGPathAddLineToPoint(MutableCopy, 0, v20, v16);
    CGPathAddQuadCurveToPoint(MutableCopy, 0, v20, 0.5, v19, 0.5);
    CGPathAddLineToPoint(MutableCopy, 0, v16, 0.5);
    CGPathAddQuadCurveToPoint(MutableCopy, 0, 0.5, 0.5, 0.5, v16);
  }

  else if (style)
  {
    MutableCopy = 0;
  }

  else
  {
    MutableCopy = CGPathCreateMutable();
    CGPathMoveToPoint(MutableCopy, 0, 0.5, 0.5);
    CGPathAddLineToPoint(MutableCopy, 0, 0.5, height + -0.5);
    v12 = width + -0.5;
    CGPathAddLineToPoint(MutableCopy, 0, v12, height + -0.5);
    CGPathAddLineToPoint(MutableCopy, 0, v12, 0.5);
    CGPathAddLineToPoint(MutableCopy, 0, 0.5, 0.5);
  }

  return MutableCopy;
}

- (CGImage)_createImageMaskRefWithSize:(CGSize)size andPath:(CGPath *)path
{
  height = size.height;
  width = size.width;
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
  CGContextAddPath(v8, path);
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

- (CGImage)_createImageRefWithURL:(id)l adornmentStyle:(int64_t)style designVersion:(id)version
{
  lCopy = l;
  versionCopy = version;
  v10 = +[SSLogConfig sharedDaemonConfig];
  if (!v10)
  {
    v10 = +[SSLogConfig sharedConfig];
  }

  shouldLog = [v10 shouldLog];
  if ([v10 shouldLogToDisk])
  {
    v12 = shouldLog | 2;
  }

  else
  {
    v12 = shouldLog;
  }

  oSLogObject = [v10 OSLogObject];
  if (!os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
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
  v81 = lCopy;
  v14 = v79;
  LODWORD(v73) = 22;
  v71 = &v78;
  v15 = _os_log_send_and_compose_impl();

  if (v15)
  {
    oSLogObject = [NSString stringWithCString:v15 encoding:4, &v78, v73];
    free(v15);
    v71 = oSLogObject;
    SSFileLog();
LABEL_11:
  }

  v16 = objc_alloc_init(SSMutableURLRequestProperties);
  [v16 setHTTPMethod:@"GET"];
  [v16 setITunesStoreRequest:1];
  [v16 setURL:lCopy];
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
    v76 = versionCopy;
    v20 = +[SSLogConfig sharedDaemonConfig];
    if (!v20)
    {
      v20 = +[SSLogConfig sharedConfig];
    }

    shouldLog2 = [v20 shouldLog];
    if ([v20 shouldLogToDisk])
    {
      v22 = shouldLog2 | 2;
    }

    else
    {
      v22 = shouldLog2;
    }

    oSLogObject2 = [v20 OSLogObject];
    if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEFAULT))
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
      v81 = lCopy;
      v26 = v25;
      LODWORD(v73) = 22;
      v72 = &v78;
      v27 = _os_log_send_and_compose_impl();

      if (!v27)
      {
        goto LABEL_26;
      }

      oSLogObject2 = [NSString stringWithCString:v27 encoding:4, &v78, v73];
      free(v27);
      v72 = oSLogObject2;
      SSFileLog();
    }

LABEL_26:
    dataProvider = [v17 dataProvider];
    output = [dataProvider output];

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v41 = 0;
      goto LABEL_43;
    }

    v30 = CGDataProviderCreateWithCFData(output);
    v31 = [(DisplayPaymentSheetOperation *)self _imageTypeForURL:lCopy];
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
      if (style <= 1)
      {
        if (!style)
        {
          [(DisplayPaymentSheetOperation *)self paymentSheet];
          v68 = v67 = v42;
          designVersion = [v68 designVersion];
          v47 = [(DisplayPaymentSheetOperation *)self _createBorderPathForAdornmentStyle:0 iconWidth:designVersion iconHeight:v45 designVersion:v46];

          v42 = v67;
          v66 = [(DisplayPaymentSheetOperation *)self _createDefaultImageWithImageRef:v67 size:v47 borderPath:v45, v46];
LABEL_73:
          v41 = v66;
          if (v47)
          {
            CGPathRelease(v47);
          }

LABEL_75:
          versionCopy = v76;
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

        if (style == 1)
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
          selfCopy3 = self;
          v49 = v42;
          v50 = v47;
          v51 = 1;
          goto LABEL_71;
        }
      }

      else
      {
        switch(style)
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
            selfCopy3 = self;
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
            selfCopy3 = self;
            v49 = v42;
            v50 = v47;
            v51 = 4;
LABEL_71:
            v66 = [(DisplayPaymentSheetOperation *)selfCopy3 _createMaskedImageRefForImageRef:v49 withPathRef:v50 andAdornmentStyle:v51, v72];
            goto LABEL_73;
        }
      }

      v41 = v42;
LABEL_43:
      versionCopy = v76;
      goto LABEL_79;
    }

LABEL_47:
    CFRelease(v30);
    goto LABEL_48;
  }

  output = +[SSLogConfig sharedDaemonConfig];
  if (!output)
  {
    output = +[SSLogConfig sharedConfig];
  }

  shouldLog3 = [(__CFData *)output shouldLog];
  if ([(__CFData *)output shouldLogToDisk])
  {
    v34 = shouldLog3 | 2;
  }

  else
  {
    v34 = shouldLog3;
  }

  oSLogObject3 = [(__CFData *)output OSLogObject];
  if (os_log_type_enabled(oSLogObject3, OS_LOG_TYPE_ERROR))
  {
    v36 = v34;
  }

  else
  {
    v36 = v34 & 2;
  }

  if (v36)
  {
    v37 = versionCopy;
    v38 = objc_opt_class();
    v78 = 138543874;
    v79 = v38;
    v80 = 2114;
    v81 = lCopy;
    v82 = 2114;
    v83 = v19;
    v39 = v38;
    LODWORD(v73) = 32;
    v40 = _os_log_send_and_compose_impl();

    if (!v40)
    {
      v41 = 0;
      versionCopy = v37;
      goto LABEL_79;
    }

    oSLogObject3 = [NSString stringWithCString:v40 encoding:4, &v78, v73];
    free(v40);
    SSFileLog();
    versionCopy = v37;
  }

  v41 = 0;
LABEL_79:

  return v41;
}

- (CGImage)_createMaskedImageRefForImageRef:(CGImage *)ref withPathRef:(CGPath *)pathRef andAdornmentStyle:(int64_t)style
{
  Width = CGImageGetWidth(ref);
  Height = CGImageGetHeight(ref);
  v11 = Width;
  v12 = Height;
  ColorSpace = CGImageGetColorSpace(ref);
  Model = CGColorSpaceGetModel(ColorSpace);
  if (Model == 1)
  {
    Copy = CGImageCreateCopy(ref);
    goto LABEL_5;
  }

  v15 = Model;
  if (!Model)
  {
    Copy = [(DisplayPaymentSheetOperation *)self _createRGBImageRefForGreyScaleImageRef:ref width:Width height:Height];
LABEL_5:
    v17 = Copy;
    goto LABEL_16;
  }

  v18 = +[SSLogConfig sharedConfig];
  shouldLog = [v18 shouldLog];
  if ([v18 shouldLogToDisk])
  {
    v20 = shouldLog | 2;
  }

  else
  {
    v20 = shouldLog;
  }

  oSLogObject = [v18 OSLogObject];
  if (!os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
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
    oSLogObject = [NSString stringWithCString:v24 encoding:4, components, v39];
    free(v24);
    v38 = oSLogObject;
    SSFileLog();
LABEL_14:
  }

  v17 = 0;
LABEL_16:
  v25 = [(DisplayPaymentSheetOperation *)self _createImageMaskRefWithSize:pathRef andPath:v11, v12, v38];
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
  paymentSheet = [(DisplayPaymentSheetOperation *)self paymentSheet];
  designVersion = [paymentSheet designVersion];
  v34 = [(DisplayPaymentSheetOperation *)self _createBorderPathForAdornmentStyle:style iconWidth:designVersion iconHeight:v11 designVersion:v12];

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

- (CGImage)_createRatingImageWithStringValue:(id)value assetScale:(float *)scale
{
  valueCopy = value;
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
  v12 = CFAttributedStringCreate(0, valueCopy, Mutable);
  v13 = CTFramesetterCreateWithAttributedString(v12);
  v14 = [(__CFString *)valueCopy length];

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

  if (scale)
  {
    *scale = v7;
  }

  return Image;
}

- (CGImage)_createResizedImageWithOriginalImage:(CGImage *)image targetHeight:(double)height
{
  Width = CGImageGetWidth(image);
  v7 = Width / CGImageGetHeight(image) * height;
  v8 = vcvtas_u32_f32(v7);
  heightCopy = height;
  v10 = vcvtas_u32_f32(heightCopy);
  ColorSpace = CGImageGetColorSpace(image);
  BitsPerComponent = CGImageGetBitsPerComponent(image);
  v13 = (CGImageGetBytesPerRow(image) / Width * v8);
  AlphaInfo = CGImageGetAlphaInfo(image);
  v15 = CGBitmapContextCreate(0, v8, v10, BitsPerComponent, v13, ColorSpace, AlphaInfo);
  ClipBoundingBox = CGContextGetClipBoundingBox(v15);
  CGContextDrawImage(v15, ClipBoundingBox, image);
  Image = CGBitmapContextCreateImage(v15);
  CGContextRelease(v15);
  return Image;
}

- (CGImage)_createRGBImageRefForGreyScaleImageRef:(CGImage *)ref width:(unint64_t)width height:(unint64_t)height
{
  widthCopy = width;
  heightCopy = height;
  DeviceRGB = CGColorSpaceCreateDeviceRGB();
  Width = CGImageGetWidth(ref);
  Height = CGImageGetHeight(ref);
  v12 = CGBitmapContextCreate(0, Width, Height, 8uLL, 4 * width, DeviceRGB, 1u);
  CGContextSetRGBFillColor(v12, 0.0, 0.0, 0.0, 1.0);
  v15.origin.x = 0.0;
  v15.origin.y = 0.0;
  v15.size.width = widthCopy;
  v15.size.height = heightCopy;
  CGContextFillRect(v12, v15);
  v16.origin.x = 0.0;
  v16.origin.y = 0.0;
  v16.size.width = widthCopy;
  v16.size.height = heightCopy;
  CGContextDrawImage(v12, v16, ref);
  Image = CGBitmapContextCreateImage(v12);
  CGColorSpaceRelease(DeviceRGB);
  CGContextRelease(v12);
  return Image;
}

- (void)paymentAuthorizationController:(id)controller didAuthorizePayment:(id)payment handler:(id)handler
{
  paymentCopy = payment;
  handlerCopy = handler;
  self->_didAuthorizePayment = 1;
  v9 = +[SSLogConfig sharedDaemonConfig];
  if (!v9)
  {
    v9 = +[SSLogConfig sharedConfig];
  }

  shouldLog = [v9 shouldLog];
  if ([v9 shouldLogToDisk])
  {
    v11 = shouldLog | 2;
  }

  else
  {
    v11 = shouldLog;
  }

  oSLogObject = [v9 OSLogObject];
  if (!os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
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

    oSLogObject = [NSString stringWithCString:v14 encoding:4, &v102, v91];
    free(v14);
    v89 = oSLogObject;
    SSFileLog();
  }

LABEL_12:
  authKitAuthenticationResults = [paymentCopy authKitAuthenticationResults];

  if (authKitAuthenticationResults)
  {
    authKitAuthenticationResults2 = [paymentCopy authKitAuthenticationResults];
    v17 = [authKitAuthenticationResults2 valueForKey:AKAuthenticationPasswordKey];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v18 = [SSAuthorizationMetricsController userActionDictionaryForUserAction:6 didBiometricsLockout:self->_didBiometricsLockout];
      if (v18)
      {
        [(NSMutableArray *)self->_userActions addObject:v18];
      }

      v19 = handlerCopy;
      objc_storeStrong(&self->_passwordEquivalentToken, v17);
      v20 = +[SSLogConfig sharedDaemonConfig];
      if (!v20)
      {
        v20 = +[SSLogConfig sharedConfig];
      }

      shouldLog2 = [v20 shouldLog];
      if ([v20 shouldLogToDisk])
      {
        v22 = shouldLog2 | 2;
      }

      else
      {
        v22 = shouldLog2;
      }

      oSLogObject2 = [v20 OSLogObject];
      if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEFAULT))
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
        v19 = handlerCopy;
        v31 = ISError();
        v20 = +[SSLogConfig sharedDaemonConfig];
        if (!v20)
        {
          v20 = +[SSLogConfig sharedConfig];
        }

        shouldLog3 = [v20 shouldLog];
        if ([v20 shouldLogToDisk])
        {
          v58 = shouldLog3 | 2;
        }

        else
        {
          v58 = shouldLog3;
        }

        oSLogObject2 = [v20 OSLogObject];
        if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_ERROR))
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

          handlerCopy = v19;
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

      v19 = handlerCopy;
      v20 = +[SSLogConfig sharedDaemonConfig];
      if (!v20)
      {
        v20 = +[SSLogConfig sharedConfig];
      }

      shouldLog4 = [v20 shouldLog];
      if ([v20 shouldLogToDisk])
      {
        v42 = shouldLog4 | 2;
      }

      else
      {
        v42 = shouldLog4;
      }

      oSLogObject2 = [v20 OSLogObject];
      if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEFAULT))
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
        oSLogObject2 = [NSString stringWithCString:v46 encoding:4, &v102, v91];
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
    v95 = handlerCopy;
    v96 = paymentCopy;
    v18 = [SSAuthorizationMetricsController userActionDictionaryForBiometricMatchState:2 didBiometricsLockout:self->_didBiometricsLockout];
    if (v18)
    {
      [(NSMutableArray *)self->_userActions addObject:v18];
    }

    v25 = +[DaemonBiometricKeychain sharedInstance];
    challenge = [(DisplayPaymentSheetOperation *)self challenge];
    accountIdentifier = [(DisplayPaymentSheetOperation *)self accountIdentifier];
    localAuthContext = [(DisplayPaymentSheetOperation *)self localAuthContext];
    localAuthOptions = [(DisplayPaymentSheetOperation *)self localAuthOptions];
    v100 = 0;
    v94 = v25;
    v30 = [v25 signDataWithKeychain:challenge accountIdentifier:accountIdentifier purpose:0 localAuthContext:localAuthContext localAuthOptions:localAuthOptions error:&v100];
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

      shouldLog5 = [v32 shouldLog];
      if ([v32 shouldLogToDisk])
      {
        v34 = shouldLog5 | 2;
      }

      else
      {
        v34 = shouldLog5;
      }

      oSLogObject3 = [v32 OSLogObject];
      if (os_log_type_enabled(oSLogObject3, OS_LOG_TYPE_ERROR))
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
          token = [v40 token];
          paymentData = [token paymentData];

          v71 = +[SSLogConfig sharedDaemonConfig];
          token2 = v71;
          if (!paymentData)
          {
            if (!v71)
            {
              token2 = +[SSLogConfig sharedConfig];
            }

            shouldLog6 = [token2 shouldLog];
            if ([token2 shouldLogToDisk])
            {
              v84 = shouldLog6 | 2;
            }

            else
            {
              v84 = shouldLog6;
            }

            oSLogObject4 = [token2 OSLogObject];
            if (os_log_type_enabled(oSLogObject4, OS_LOG_TYPE_DEFAULT))
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

                handlerCopy = v95;
                paymentCopy = v96;
                if (v92)
                {
                  goto LABEL_87;
                }

                goto LABEL_83;
              }

              oSLogObject4 = [NSString stringWithCString:v88 encoding:4, &v102, v91];
              free(v88);
              SSFileLog();
            }

LABEL_118:

            goto LABEL_119;
          }

          if (!v71)
          {
            token2 = +[SSLogConfig sharedConfig];
          }

          shouldLog7 = [token2 shouldLog];
          if ([token2 shouldLogToDisk])
          {
            v74 = shouldLog7 | 2;
          }

          else
          {
            v74 = shouldLog7;
          }

          oSLogObject5 = [token2 OSLogObject];
          if (os_log_type_enabled(oSLogObject5, OS_LOG_TYPE_DEFAULT))
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

              token2 = [v96 token];
              oSLogObject4 = [token2 paymentData];
              v81 = [oSLogObject4 copy];
              paymentTokenData = self->_paymentTokenData;
              self->_paymentTokenData = v81;

              goto LABEL_118;
            }

            oSLogObject5 = [NSString stringWithCString:v79 encoding:4, &v102, v91];
            free(v79);
            SSFileLog();
          }

          goto LABEL_117;
        }

        oSLogObject3 = [NSString stringWithCString:v39 encoding:4, &v102, v91];
        free(v39);
        v90 = oSLogObject3;
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

      shouldLog8 = [v32 shouldLog];
      if ([v32 shouldLogToDisk])
      {
        v66 = shouldLog8 | 2;
      }

      else
      {
        v66 = shouldLog8;
      }

      oSLogObject3 = [v32 OSLogObject];
      if (os_log_type_enabled(oSLogObject3, OS_LOG_TYPE_ERROR))
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

  shouldLog9 = [v48 shouldLog];
  if ([v48 shouldLogToDisk])
  {
    v50 = shouldLog9 | 2;
  }

  else
  {
    v50 = shouldLog9;
  }

  oSLogObject6 = [v48 OSLogObject];
  if (os_log_type_enabled(oSLogObject6, OS_LOG_TYPE_ERROR))
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
    oSLogObject6 = [NSString stringWithCString:v55 encoding:4, &v102, v91];
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
  (*(handlerCopy + 2))(handlerCopy, v62);

LABEL_87:
}

- (void)paymentAuthorizationControllerDidFinish:(id)finish
{
  self->_didFinishPayment = 1;
  finishCopy = finish;
  v5 = +[SSLogConfig sharedDaemonConfig];
  if (!v5)
  {
    v5 = +[SSLogConfig sharedConfig];
  }

  shouldLog = [v5 shouldLog];
  if ([v5 shouldLogToDisk])
  {
    v7 = shouldLog | 2;
  }

  else
  {
    v7 = shouldLog;
  }

  oSLogObject = [v5 OSLogObject];
  if (!os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
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
    oSLogObject = [NSString stringWithCString:v10 encoding:4, &v13, v11];
    free(v10);
    SSFileLog();
LABEL_11:
  }

  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1000FA1DC;
  v12[3] = &unk_100327110;
  v12[4] = self;
  [finishCopy dismissWithCompletion:v12];
  [finishCopy setDelegate:0];
}

- (void)paymentAuthorizationController:(id)controller didEncounterAuthorizationEvent:(unint64_t)event
{
  v6 = +[SSLogConfig sharedDaemonConfig];
  if (!v6)
  {
    v6 = +[SSLogConfig sharedConfig];
  }

  shouldLog = [v6 shouldLog];
  if ([v6 shouldLogToDisk])
  {
    v8 = shouldLog | 2;
  }

  else
  {
    v8 = shouldLog;
  }

  oSLogObject = [v6 OSLogObject];
  if (!os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
  {
    v8 &= 2u;
  }

  if (v8)
  {
    v10 = objc_opt_class();
    v11 = v10;
    v12 = [NSNumber numberWithUnsignedInteger:event];
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

    oSLogObject = [NSString stringWithCString:v13 encoding:4, &v21, v20];
    free(v13);
    v19 = oSLogObject;
    SSFileLog();
  }

LABEL_12:
  if (event > 4)
  {
    if (event > 6)
    {
      if (event == 7)
      {
        didBiometricsLockout = self->_didBiometricsLockout;
        v16 = 8;
      }

      else
      {
        if (event != 8)
        {
          return;
        }

        didBiometricsLockout = self->_didBiometricsLockout;
        v16 = 7;
      }
    }

    else
    {
      if (event != 5)
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
    if (event <= 2)
    {
      if (event != 1)
      {
        if (event != 2)
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
    if (event == 3)
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

- (void)paymentAuthorizationController:(id)controller willFinishWithError:(id)error
{
  errorCopy = error;
  controllerCopy = controller;
  v7 = +[SSLogConfig sharedDaemonConfig];
  if (!v7)
  {
    v7 = +[SSLogConfig sharedConfig];
  }

  shouldLog = [v7 shouldLog];
  if ([v7 shouldLogToDisk])
  {
    v9 = shouldLog | 2;
  }

  else
  {
    v9 = shouldLog;
  }

  oSLogObject = [v7 OSLogObject];
  if (!os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
  {
    v9 &= 2u;
  }

  if (!v9)
  {
    goto LABEL_11;
  }

  v11 = objc_opt_class();
  v12 = v11;
  [errorCopy localizedDescription];
  v15 = 138543618;
  v16 = v11;
  v18 = v17 = 2114;
  LODWORD(v14) = 22;
  v13 = _os_log_send_and_compose_impl();

  if (v13)
  {
    oSLogObject = [NSString stringWithCString:v13 encoding:4, &v15, v14];
    free(v13);
    SSFileLog();
LABEL_11:
  }

  [controllerCopy setPrivateDelegate:0];
}

@end