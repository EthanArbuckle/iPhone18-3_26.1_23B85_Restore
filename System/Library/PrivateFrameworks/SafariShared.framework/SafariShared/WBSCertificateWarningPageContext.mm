@interface WBSCertificateWarningPageContext
+ (BOOL)certificateWarningCannotBeBypassedForTrust:(__SecTrust *)a3;
+ (int64_t)certificateWarningCategoryForError:(id)a3 trustIncludesRevokedCertificate:(BOOL)a4 clockSkew:(double)a5;
+ (int64_t)numberOfDaysBetweenCertificateValidityRangeAndNow:(id)a3;
- (NSString)expiredCerticateDescription;
- (WBSCertificateWarningPageContext)initWithCoder:(id)a3;
- (WBSCertificateWarningPageContext)initWithWarningCategory:(int64_t)a3 failingURL:(id)a4 numberOfDaysInvalid:(int64_t)a5 canGoBack:(BOOL)a6 clockSkew:(double)a7;
- (id)initPrivateRelayFailClosedNavigationWarningWithFailingURL:(id)a3 isPrivateRelaySetToTrackersAndWebsites:(BOOL)a4 canGoBack:(BOOL)a5;
- (void)encodeWithCoder:(id)a3;
@end

@implementation WBSCertificateWarningPageContext

+ (BOOL)certificateWarningCannotBeBypassedForTrust:(__SecTrust *)a3
{
  result = kSecTrustResultInvalid;
  TrustResult = SecTrustGetTrustResult(a3, &result);
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

+ (int64_t)certificateWarningCategoryForError:(id)a3 trustIncludesRevokedCertificate:(BOOL)a4 clockSkew:(double)a5
{
  v7 = a3;
  v8 = [MEMORY[0x1E69ADFB8] sharedConnection];
  v9 = [v8 effectiveBoolValueForSetting:*MEMORY[0x1E69ADF80]];

  v10 = 2;
  if (v9 != 2 && !a4)
  {
    v11 = [v7 code];
    v12 = [v7 userInfo];
    v13 = [v12 safari_numberForKey:*MEMORY[0x1E695AD28]];
    v14 = [v13 integerValue];

    if (v11 == -1201 || v14 == -9814)
    {
      v10 = 4 * (fabs(a5) >= 86400.0);
    }

    else if (v14 == -9843)
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

+ (int64_t)numberOfDaysBetweenCertificateValidityRangeAndNow:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a3;
  Current = CFAbsoluteTimeGetCurrent();
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = v3;
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

- (WBSCertificateWarningPageContext)initWithWarningCategory:(int64_t)a3 failingURL:(id)a4 numberOfDaysInvalid:(int64_t)a5 canGoBack:(BOOL)a6 clockSkew:(double)a7
{
  v13 = a4;
  v18.receiver = self;
  v18.super_class = WBSCertificateWarningPageContext;
  v14 = [(WBSCertificateWarningPageContext *)&v18 init];
  v15 = v14;
  if (v14)
  {
    v14->_warningCategory = a3;
    objc_storeStrong(&v14->_failingURL, a4);
    v15->_canGoBack = a6;
    v15->_numberOfDaysInvalid = a5;
    v15->_clockSkew = a7;
    v16 = v15;
  }

  return v15;
}

- (id)initPrivateRelayFailClosedNavigationWarningWithFailingURL:(id)a3 isPrivateRelaySetToTrackersAndWebsites:(BOOL)a4 canGoBack:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v9 = v8;
  if (a4)
  {
    v10 = 7;
  }

  else if ([v8 safari_isHTTPURL])
  {
    v10 = 8;
  }

  else
  {
    v10 = 7;
  }

  v11 = [(WBSCertificateWarningPageContext *)self initWithWarningCategory:v10 failingURL:v9 numberOfDaysInvalid:0 canGoBack:v5 clockSkew:0.0];

  return v11;
}

- (WBSCertificateWarningPageContext)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeIntegerForKey:@"WarningCategory"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"FailingURL"];
  v7 = [v4 decodeBoolForKey:@"CanGoBack"];
  v8 = [v4 decodeIntegerForKey:@"NumberOfDaysInvalid"];
  [v4 decodeDoubleForKey:@"ClockSkew"];
  v9 = [(WBSCertificateWarningPageContext *)self initWithWarningCategory:v5 failingURL:v6 numberOfDaysInvalid:v8 canGoBack:v7 clockSkew:?];

  return v9;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeInteger:self->_warningCategory forKey:@"WarningCategory"];
  [v4 encodeObject:self->_failingURL forKey:@"FailingURL"];
  [v4 encodeBool:self->_canGoBack forKey:@"CanGoBack"];
  [v4 encodeInteger:self->_numberOfDaysInvalid forKey:@"NumberOfDaysInvalid"];
  [v4 encodeDouble:@"ClockSkew" forKey:self->_clockSkew];
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

      v8 = [v6 localizedStringWithFormat:v7, numberOfDaysInvalid];
    }

    else
    {
      v7 = _WBSLocalizedString();
      v8 = [v6 localizedStringWithFormat:v7, self->_numberOfDaysInvalid];
    }

    v10 = self->_expiredCertificateDescription;
    self->_expiredCertificateDescription = v8;

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