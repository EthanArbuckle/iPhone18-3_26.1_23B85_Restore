@interface WBSCertificateWarningPageContext
+ (BOOL)certificateWarningCannotBeBypassedForTrust:(__SecTrust *)trust;
+ (int64_t)certificateWarningCategoryForError:(id)error trustIncludesRevokedCertificate:(BOOL)certificate clockSkew:(double)skew;
+ (int64_t)numberOfDaysBetweenCertificateValidityRangeAndNow:(id)now;
- (NSString)expiredCerticateDescription;
- (WBSCertificateWarningPageContext)initWithCoder:(id)coder;
- (WBSCertificateWarningPageContext)initWithWarningCategory:(int64_t)category failingURL:(id)l numberOfDaysInvalid:(int64_t)invalid canGoBack:(BOOL)back clockSkew:(double)skew;
- (id)initPrivateRelayFailClosedNavigationWarningWithFailingURL:(id)l isPrivateRelaySetToTrackersAndWebsites:(BOOL)websites canGoBack:(BOOL)back;
- (void)encodeWithCoder:(id)coder;
@end

@implementation WBSCertificateWarningPageContext

+ (BOOL)certificateWarningCannotBeBypassedForTrust:(__SecTrust *)trust
{
  result = kSecTrustResultInvalid;
  TrustResult = SecTrustGetTrustResult(trust, &result);
  if (!TrustResult)
  {
    return result == kSecTrustResultFatalTrustFailure || result == kSecTrustResultDeny;
  }

  v4 = TrustResult;
  v5 = WBS_LOG_CHANNEL_PREFIXKeychain();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    [(WBSCertificateWarningPageContext *)v4 certificateWarningCannotBeBypassedForTrust:v5];
  }

  return 1;
}

+ (int64_t)certificateWarningCategoryForError:(id)error trustIncludesRevokedCertificate:(BOOL)certificate clockSkew:(double)skew
{
  errorCopy = error;
  mEMORY[0x1E69ADFB8] = [MEMORY[0x1E69ADFB8] sharedConnection];
  v9 = [mEMORY[0x1E69ADFB8] effectiveBoolValueForSetting:*MEMORY[0x1E69ADF80]];

  v10 = 2;
  if (v9 != 2 && !certificate)
  {
    code = [errorCopy code];
    userInfo = [errorCopy userInfo];
    v13 = [userInfo safari_numberForKey:*MEMORY[0x1E695AD28]];
    integerValue = [v13 integerValue];

    if (code == -1201 || integerValue == -9814)
    {
      v10 = 4 * (fabs(skew) >= 86400.0);
    }

    else if (integerValue == -9843)
    {
      v10 = 3;
    }

    else
    {
      v10 = 1;
    }
  }

  return v10;
}

+ (int64_t)numberOfDaysBetweenCertificateValidityRangeAndNow:(id)now
{
  v19 = *MEMORY[0x1E69E9840];
  nowCopy = now;
  Current = CFAbsoluteTimeGetCurrent();
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = nowCopy;
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = *v15;
LABEL_3:
    v8 = 0;
    while (1)
    {
      if (*v15 != v7)
      {
        objc_enumerationMutation(v5);
      }

      if ((SecCertificateIsValid() & 1) == 0)
      {
        SecCertificateNotValidAfter();
        if (Current > v9)
        {
          v12 = (Current - v9) / 86400.0;
          if (v12 <= 1.0)
          {
            v12 = 1.0;
          }

          goto LABEL_17;
        }

        SecCertificateNotValidBefore();
        if (Current < v10)
        {
          v12 = (Current - v10) / 86400.0;
          if (v12 >= -1.0)
          {
            v12 = -1.0;
          }

LABEL_17:
          v11 = v12;
          goto LABEL_18;
        }
      }

      if (v6 == ++v8)
      {
        v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
        if (v6)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  v11 = 0;
LABEL_18:

  return v11;
}

- (WBSCertificateWarningPageContext)initWithWarningCategory:(int64_t)category failingURL:(id)l numberOfDaysInvalid:(int64_t)invalid canGoBack:(BOOL)back clockSkew:(double)skew
{
  lCopy = l;
  v18.receiver = self;
  v18.super_class = WBSCertificateWarningPageContext;
  v14 = [(WBSCertificateWarningPageContext *)&v18 init];
  v15 = v14;
  if (v14)
  {
    v14->_warningCategory = category;
    objc_storeStrong(&v14->_failingURL, l);
    v15->_canGoBack = back;
    v15->_numberOfDaysInvalid = invalid;
    v15->_clockSkew = skew;
    v16 = v15;
  }

  return v15;
}

- (id)initPrivateRelayFailClosedNavigationWarningWithFailingURL:(id)l isPrivateRelaySetToTrackersAndWebsites:(BOOL)websites canGoBack:(BOOL)back
{
  backCopy = back;
  lCopy = l;
  v9 = lCopy;
  if (websites)
  {
    v10 = 7;
  }

  else if ([lCopy safari_isHTTPURL])
  {
    v10 = 8;
  }

  else
  {
    v10 = 7;
  }

  v11 = [(WBSCertificateWarningPageContext *)self initWithWarningCategory:v10 failingURL:v9 numberOfDaysInvalid:0 canGoBack:backCopy clockSkew:0.0];

  return v11;
}

- (WBSCertificateWarningPageContext)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeIntegerForKey:@"WarningCategory"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"FailingURL"];
  v7 = [coderCopy decodeBoolForKey:@"CanGoBack"];
  v8 = [coderCopy decodeIntegerForKey:@"NumberOfDaysInvalid"];
  [coderCopy decodeDoubleForKey:@"ClockSkew"];
  v9 = [(WBSCertificateWarningPageContext *)self initWithWarningCategory:v5 failingURL:v6 numberOfDaysInvalid:v8 canGoBack:v7 clockSkew:?];

  return v9;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInteger:self->_warningCategory forKey:@"WarningCategory"];
  [coderCopy encodeObject:self->_failingURL forKey:@"FailingURL"];
  [coderCopy encodeBool:self->_canGoBack forKey:@"CanGoBack"];
  [coderCopy encodeInteger:self->_numberOfDaysInvalid forKey:@"NumberOfDaysInvalid"];
  [coderCopy encodeDouble:@"ClockSkew" forKey:self->_clockSkew];
}

- (NSString)expiredCerticateDescription
{
  expiredCertificateDescription = self->_expiredCertificateDescription;
  if (expiredCertificateDescription)
  {
LABEL_2:
    v3 = expiredCertificateDescription;
    goto LABEL_5;
  }

  if (!self->_warningCategory)
  {
    v6 = MEMORY[0x1E696AEC0];
    if (self->_numberOfDaysInvalid < 1)
    {
      v7 = _WBSLocalizedString();
      numberOfDaysInvalid = self->_numberOfDaysInvalid;
      if (numberOfDaysInvalid < 0)
      {
        numberOfDaysInvalid = -numberOfDaysInvalid;
      }

      numberOfDaysInvalid = [v6 localizedStringWithFormat:v7, numberOfDaysInvalid];
    }

    else
    {
      v7 = _WBSLocalizedString();
      numberOfDaysInvalid = [v6 localizedStringWithFormat:v7, self->_numberOfDaysInvalid];
    }

    v10 = self->_expiredCertificateDescription;
    self->_expiredCertificateDescription = numberOfDaysInvalid;

    expiredCertificateDescription = self->_expiredCertificateDescription;
    goto LABEL_2;
  }

  v3 = 0;
LABEL_5:

  return v3;
}

+ (void)certificateWarningCannotBeBypassedForTrust:(int)a1 .cold.1(int a1, NSObject *a2)
{
  v3 = *MEMORY[0x1E69E9840];
  v2[0] = 67109120;
  v2[1] = a1;
  _os_log_error_impl(&dword_1BB6F3000, a2, OS_LOG_TYPE_ERROR, "SecTrustGetTrustResult failed with error %d", v2, 8u);
}

@end