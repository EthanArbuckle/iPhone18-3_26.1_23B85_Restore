@interface NSError
+ (id)tsp_ensureCorruptedDocumentErrorWithError:(id)error;
+ (id)tsp_ensureReadErrorWithError:(id)error;
+ (id)tsp_ensureSaveErrorWithError:(id)error;
+ (id)tsp_errorWithCode:(int64_t)code userInfo:(id)info;
+ (id)tsp_errorWithCode:(int64_t)code userInfo:(id)info isRecoverable:(BOOL)recoverable;
+ (id)tsp_errorWithError:(id)error hints:(id)hints;
+ (id)tsp_readCorruptZipOfPackageErrorWithUserInfo:(id)info;
+ (id)tsp_readCorruptedDocumentErrorWithUserInfo:(id)info;
+ (id)tsp_recoverableErrorWithError:(id)error;
+ (id)tsp_saveDocumentErrorWithUserInfo:(id)info;
+ (id)tsp_storageSpaceErrorWithUserInfo:(id)info;
+ (id)tsp_unknownReadErrorWithUserInfo:(id)info;
+ (id)tsp_unknownWriteErrorWithUserInfo:(id)info;
+ (id)tsp_unsupportedVersionErrorWithUserInfo:(id)info;
+ (id)tsp_userInfoWithUserInfo:(id)info additionalUserInfo:(id)userInfo;
+ (id)tsu_errorWithCode:(int64_t)code userInfo:(id)info;
+ (id)tsu_errorWithDomain:(id)domain code:(int64_t)code alertTitle:(id)title alertMessage:(id)message userInfo:(id)info;
+ (id)tsu_errorWithDomain:(id)domain code:(int64_t)code description:(id)description recoverySuggestion:(id)suggestion;
+ (id)tsu_errorWithDomain:(id)domain code:(int64_t)code description:(id)description underlyingError:(id)error;
+ (id)tsu_errorWithError:(id)error alertTitle:(id)title alertMessage:(id)message additionalUserInfo:(id)info;
+ (id)tsu_errorWithWarning:(id)warning;
+ (id)tsu_fileReadCorruptedFileErrorWithUserInfo:(id)info;
+ (id)tsu_fileReadPOSIXErrorWithNumber:(int)number userInfo:(id)info;
+ (id)tsu_fileReadUnknownErrorWithUserInfo:(id)info;
+ (id)tsu_fileWritePOSIXErrorWithNumber:(int)number userInfo:(id)info;
+ (id)tsu_fileWriteUnknownErrorWithUserInfo:(id)info;
+ (id)tsu_userInfoWithErrorType:(int64_t)type userInfo:(id)info;
- (BOOL)tsu_isErrorPassingTest:(id)test;
- (NSDate)tsp_dataCreationTime;
- (NSSet)tsp_hints;
- (NSString)tsp_actualDataDigest;
- (NSString)tsp_dataCreationVersion;
- (NSString)tsp_dataType;
- (NSString)tsp_dataValidationReason;
- (NSString)tsp_expectedDataDigest;
- (NSString)tsp_hintsDescription;
- (NSString)tsu_zipArchiveErrorDescription;
- (NSString)tsu_zipArchiveErrorEntryName;
- (id)tsu_errorPreservingAlertTitle;
- (id)tsu_errorPreservingCancel;
- (id)tsu_localizedAlertMessage;
- (id)tsu_localizedAlertTitle;
- (int64_t)tsp_dataIdentifier;
- (unint64_t)tsp_dataLength;
- (void)tsu_enumerateErrorUsingBlock:(id)block;
@end

@implementation NSError

+ (id)tsp_errorWithCode:(int64_t)code userInfo:(id)info
{
  v4 = [self tsp_errorWithCode:code userInfo:info isRecoverable:0];

  return v4;
}

+ (id)tsp_errorWithCode:(int64_t)code userInfo:(id)info isRecoverable:(BOOL)recoverable
{
  recoverableCopy = recoverable;
  infoCopy = info;
  v9 = 0;
  if (code > 4)
  {
    if (code != 5 && code != 6)
    {
      if (code != 7)
      {
        goto LABEL_17;
      }

      v12 = UnsafePointer();
      v13 = [v12 localizedStringForKey:@"To open this document value:download the latest version of the app from the App Store." table:{&stru_1001D3878, @"TSPersistence"}];
      goto LABEL_11;
    }

LABEL_10:
    v12 = UnsafePointer();
    v13 = [v12 localizedStringForKey:@"Encountered a critical error." value:&stru_1001D3878 table:@"TSPersistence"];
LABEL_11:
    v11 = v13;
    v9 = 0;
    goto LABEL_14;
  }

  if ((code - 2) >= 2)
  {
    if (code != 4)
    {
      goto LABEL_17;
    }

    goto LABEL_10;
  }

  v10 = UnsafePointer();
  v11 = [v10 localizedStringForKey:@"The document could not be autosaved." value:&stru_1001D3878 table:@"TSPersistence"];

  v12 = UnsafePointer();
  if (code == 2)
  {
    [v12 localizedStringForKey:@"Your most recent changes might be lost." value:&stru_1001D3878 table:@"TSPersistence"];
  }

  else
  {
    [v12 localizedStringForKey:@"The disk is full. Free up some space value:then return to your document. Your most recent changes might be lost." table:{&stru_1001D3878, @"TSPersistence"}];
  }
  v9 = ;
LABEL_14:

  if (!v11)
  {
LABEL_17:
    v15 = UnsafePointer();
    v11 = [v15 localizedStringForKey:@"An error occurred while reading the document." value:&stru_1001D3878 table:@"TSPersistence"];

    if (recoverableCopy)
    {
      goto LABEL_16;
    }

    goto LABEL_18;
  }

  if (recoverableCopy)
  {
LABEL_16:
    v19 = @"TSPErrorIsRecoverable";
    v20 = &__kCFBooleanTrue;
    v14 = [NSDictionary dictionaryWithObjects:&v20 forKeys:&v19 count:1];
    goto LABEL_19;
  }

LABEL_18:
  v14 = 0;
LABEL_19:
  v16 = [self tsp_userInfoWithUserInfo:infoCopy additionalUserInfo:v14];
  v17 = [self tsu_errorWithDomain:@"com.apple.iWork.TSPersistence" code:code alertTitle:v11 alertMessage:v9 userInfo:v16];

  if (recoverableCopy)
  {
  }

  return v17;
}

+ (id)tsp_userInfoWithUserInfo:(id)info additionalUserInfo:(id)userInfo
{
  infoCopy = info;
  userInfoCopy = userInfo;
  v7 = [[NSMutableDictionary alloc] initWithCapacity:{objc_msgSend(userInfoCopy, "count") + objc_msgSend(infoCopy, "count") + 1}];
  v8 = v7;
  if (infoCopy)
  {
    [v7 addEntriesFromDictionary:infoCopy];
  }

  if (userInfoCopy)
  {
    [v8 addEntriesFromDictionary:userInfoCopy];
  }

  [v8 setObject:&__kCFBooleanTrue forKeyedSubscript:@"TSPErrorIsTSPError"];

  return v8;
}

+ (id)tsp_recoverableErrorWithError:(id)error
{
  errorCopy = error;
  v5 = errorCopy;
  if (errorCopy)
  {
    domain = [errorCopy domain];
    code = [v5 code];
    userInfo = [v5 userInfo];
    v13 = @"TSPErrorIsRecoverable";
    v14 = &__kCFBooleanTrue;
    v9 = [NSDictionary dictionaryWithObjects:&v14 forKeys:&v13 count:1];
    v10 = [self tsp_userInfoWithUserInfo:userInfo additionalUserInfo:v9];
    v11 = [self errorWithDomain:domain code:code userInfo:v10];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

+ (id)tsp_errorWithError:(id)error hints:(id)hints
{
  errorCopy = error;
  hintsCopy = hints;
  v8 = hintsCopy;
  if (!errorCopy)
  {
    v15 = 0;
    goto LABEL_12;
  }

  v9 = [hintsCopy count];
  if (!v9)
  {
    v15 = errorCopy;
    goto LABEL_12;
  }

  userInfo = [errorCopy userInfo];
  v11 = [userInfo objectForKeyedSubscript:@"TSPErrorHints"];

  v12 = [v11 count];
  if (!v12)
  {
    v14 = [NSSet setWithArray:v8];
LABEL_10:
    domain = [errorCopy domain];
    code = [errorCopy code];
    userInfo2 = [errorCopy userInfo];
    v22 = @"TSPErrorHints";
    v23 = v14;
    v19 = [NSDictionary dictionaryWithObjects:&v23 forKeys:&v22 count:1];
    v20 = [self tsp_userInfoWithUserInfo:userInfo2 additionalUserInfo:v19];
    v15 = [self errorWithDomain:domain code:code userInfo:v20];

    goto LABEL_11;
  }

  v13 = [[NSMutableSet alloc] initWithCapacity:&v9[v12]];
  [v13 unionSet:v11];
  [v13 addObjectsFromArray:v8];
  v14 = v13;
  if (![v14 isEqualToSet:v11])
  {

    goto LABEL_10;
  }

  v15 = errorCopy;

LABEL_11:
LABEL_12:

  return v15;
}

+ (id)tsp_unknownReadErrorWithUserInfo:(id)info
{
  v4 = [self tsp_userInfoWithUserInfo:info additionalUserInfo:0];
  v5 = [self tsu_fileReadUnknownErrorWithUserInfo:v4];

  return v5;
}

+ (id)tsp_readCorruptedDocumentErrorWithUserInfo:(id)info
{
  v4 = [self tsp_userInfoWithUserInfo:info additionalUserInfo:0];
  v5 = [self tsu_fileReadCorruptedFileErrorWithUserInfo:v4];

  return v5;
}

+ (id)tsp_unsupportedVersionErrorWithUserInfo:(id)info
{
  infoCopy = info;
  v5 = [[NSMutableDictionary alloc] initWithCapacity:{objc_msgSend(infoCopy, "count") + 1}];
  v6 = v5;
  if (infoCopy)
  {
    [v5 addEntriesFromDictionary:infoCopy];
  }

  [v6 setObject:&__kCFBooleanTrue forKeyedSubscript:@"TSPIsUnsupportedVersionError"];
  v7 = [self tsp_unknownReadErrorWithUserInfo:v6];

  return v7;
}

+ (id)tsp_unknownWriteErrorWithUserInfo:(id)info
{
  v4 = [self tsp_userInfoWithUserInfo:info additionalUserInfo:0];
  v5 = [self tsu_fileWriteUnknownErrorWithUserInfo:v4];

  return v5;
}

+ (id)tsp_saveDocumentErrorWithUserInfo:(id)info
{
  v3 = [self tsp_errorWithCode:2 userInfo:info];

  return v3;
}

+ (id)tsp_storageSpaceErrorWithUserInfo:(id)info
{
  v3 = [self tsp_errorWithCode:3 userInfo:info];

  return v3;
}

+ (id)tsp_readCorruptZipOfPackageErrorWithUserInfo:(id)info
{
  infoCopy = info;
  v5 = [[NSMutableDictionary alloc] initWithCapacity:{objc_msgSend(infoCopy, "count") + 1}];
  v6 = v5;
  if (infoCopy)
  {
    [v5 addEntriesFromDictionary:infoCopy];
  }

  [v6 setObject:&__kCFBooleanTrue forKeyedSubscript:@"TSPIsCorruptZipOfPackageError"];
  v7 = [self tsp_readCorruptedDocumentErrorWithUserInfo:v6];

  return v7;
}

+ (id)tsp_ensureReadErrorWithError:(id)error
{
  errorCopy = error;
  v5 = errorCopy;
  if (!errorCopy)
  {
    v11 = [self tsp_unknownReadErrorWithUserInfo:0];
LABEL_13:
    v12 = v11;
    goto LABEL_17;
  }

  if ([errorCopy code] != 2 && objc_msgSend(v5, "code") != 3)
  {
    domain = [v5 domain];
    v7 = [domain isEqualToString:@"com.apple.iWork.TSPersistence"];

    if (v7)
    {
      goto LABEL_12;
    }
  }

  if ([v5 tsu_isCancelError])
  {
    if ([v5 code] != 3072)
    {
      v9 = NSCocoaErrorDomain;
LABEL_15:
      v18 = NSUnderlyingErrorKey;
      v19 = v5;
      v13 = [NSDictionary dictionaryWithObjects:&v19 forKeys:&v18 count:1];
      v12 = [NSError errorWithDomain:v9 code:3072 userInfo:v13];

      goto LABEL_17;
    }

    domain2 = [v5 domain];
    v9 = NSCocoaErrorDomain;
    v10 = [domain2 isEqualToString:NSCocoaErrorDomain];

    if ((v10 & 1) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_12;
  }

  if ([v5 tsp_isReadError] & 1) != 0 || (objc_msgSend(v5, "tsp_isCorruptedError"))
  {
LABEL_12:
    v11 = v5;
    goto LABEL_13;
  }

  v16 = NSUnderlyingErrorKey;
  v17 = v5;
  v14 = [NSDictionary dictionaryWithObjects:&v17 forKeys:&v16 count:1];
  v12 = [self tsp_unknownReadErrorWithUserInfo:v14];

LABEL_17:

  return v12;
}

+ (id)tsp_ensureCorruptedDocumentErrorWithError:(id)error
{
  errorCopy = error;
  v5 = errorCopy;
  if (!errorCopy)
  {
    v6 = [self tsp_readCorruptedDocumentErrorWithUserInfo:0];
    goto LABEL_5;
  }

  if ([errorCopy tsp_isCorruptedError])
  {
    v6 = v5;
LABEL_5:
    v7 = v6;
    goto LABEL_7;
  }

  v10 = NSUnderlyingErrorKey;
  v11 = v5;
  v8 = [NSDictionary dictionaryWithObjects:&v11 forKeys:&v10 count:1];
  v7 = [self tsp_readCorruptedDocumentErrorWithUserInfo:v8];

LABEL_7:

  return v7;
}

+ (id)tsp_ensureSaveErrorWithError:(id)error
{
  errorCopy = error;
  domain = [errorCopy domain];
  v6 = [domain isEqualToString:@"com.apple.iWork.TSPersistence"];

  if (!errorCopy)
  {
    v9 = [self tsp_saveDocumentErrorWithUserInfo:0];
    goto LABEL_9;
  }

  if ((v6 & 1) == 0 && [errorCopy tsu_isOutOfSpaceError])
  {
    v14 = NSUnderlyingErrorKey;
    v15 = errorCopy;
    v7 = [NSDictionary dictionaryWithObjects:&v15 forKeys:&v14 count:1];
    v8 = [self tsp_storageSpaceErrorWithUserInfo:v7];

    goto LABEL_10;
  }

  if ((([errorCopy code] == 3) & v6) == 1 || ((objc_msgSend(errorCopy, "code") == 2) & v6) != 0)
  {
    v9 = errorCopy;
LABEL_9:
    v8 = v9;
    goto LABEL_10;
  }

  v12 = NSUnderlyingErrorKey;
  v13 = errorCopy;
  v11 = [NSDictionary dictionaryWithObjects:&v13 forKeys:&v12 count:1];
  v8 = [self tsp_saveDocumentErrorWithUserInfo:v11];

LABEL_10:

  return v8;
}

- (NSSet)tsp_hints
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = sub_10000E0E0;
  v17 = sub_10000E0F0;
  v18 = 0;
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = sub_10000E0E0;
  v11 = sub_10000E0F0;
  v12 = 0;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10000E0F8;
  v6[3] = &unk_1001C5AF0;
  v6[4] = &v13;
  v6[5] = &v7;
  [(NSError *)self tsu_enumerateErrorUsingBlock:v6];
  v2 = v8[5];
  if (v2 || (v2 = v14[5]) != 0)
  {
    v3 = v2;
  }

  else
  {
    v3 = objc_opt_new();
  }

  v4 = v3;
  _Block_object_dispose(&v7, 8);

  _Block_object_dispose(&v13, 8);

  return v4;
}

- (NSString)tsp_hintsDescription
{
  v3 = objc_opt_new();
  [v3 appendString:@"["];
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  tsp_hints = [(NSError *)self tsp_hints];
  v5 = [tsp_hints countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = *v12;
    v7 = 1;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(tsp_hints);
        }

        v9 = *(*(&v11 + 1) + 8 * i);
        if ((v7 & 1) == 0)
        {
          [v3 appendString:{@", "}];
        }

        [v3 appendString:v9];
        v7 = 0;
      }

      v5 = [tsp_hints countByEnumeratingWithState:&v11 objects:v15 count:16];
      v7 = 0;
    }

    while (v5);
  }

  [v3 appendString:@"]"];

  return v3;
}

- (NSString)tsp_dataValidationReason
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = sub_10000E0E0;
  v9 = sub_10000E0F0;
  v10 = 0;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10000E710;
  v4[3] = &unk_1001C5BB8;
  v4[4] = &v5;
  [(NSError *)self tsu_enumerateErrorUsingBlock:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

- (int64_t)tsp_dataIdentifier
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = sub_10000E0E0;
  v9 = sub_10000E0F0;
  v10 = 0;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10000E998;
  v4[3] = &unk_1001C5BB8;
  v4[4] = &v5;
  [(NSError *)self tsu_enumerateErrorUsingBlock:v4];
  longLongValue = [v6[5] longLongValue];
  _Block_object_dispose(&v5, 8);

  return longLongValue;
}

- (NSString)tsp_expectedDataDigest
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = sub_10000E0E0;
  v9 = sub_10000E0F0;
  v10 = 0;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10000EB78;
  v4[3] = &unk_1001C5BB8;
  v4[4] = &v5;
  [(NSError *)self tsu_enumerateErrorUsingBlock:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

- (NSString)tsp_actualDataDigest
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = sub_10000E0E0;
  v9 = sub_10000E0F0;
  v10 = 0;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10000ED58;
  v4[3] = &unk_1001C5BB8;
  v4[4] = &v5;
  [(NSError *)self tsu_enumerateErrorUsingBlock:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

- (NSDate)tsp_dataCreationTime
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = sub_10000E0E0;
  v9 = sub_10000E0F0;
  v10 = 0;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10000F160;
  v4[3] = &unk_1001C5BB8;
  v4[4] = &v5;
  [(NSError *)self tsu_enumerateErrorUsingBlock:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

- (NSString)tsp_dataCreationVersion
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = sub_10000E0E0;
  v9 = sub_10000E0F0;
  v10 = 0;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10000F340;
  v4[3] = &unk_1001C5BB8;
  v4[4] = &v5;
  [(NSError *)self tsu_enumerateErrorUsingBlock:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

- (unint64_t)tsp_dataLength
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = sub_10000E0E0;
  v9 = sub_10000E0F0;
  v10 = 0;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10000F510;
  v4[3] = &unk_1001C5BB8;
  v4[4] = &v5;
  [(NSError *)self tsu_enumerateErrorUsingBlock:v4];
  unsignedLongLongValue = [v6[5] unsignedLongLongValue];
  _Block_object_dispose(&v5, 8);

  return unsignedLongLongValue;
}

- (NSString)tsp_dataType
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = sub_10000E0E0;
  v9 = sub_10000E0F0;
  v10 = 0;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10000F6F0;
  v4[3] = &unk_1001C5BB8;
  v4[4] = &v5;
  [(NSError *)self tsu_enumerateErrorUsingBlock:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

- (NSString)tsu_zipArchiveErrorDescription
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = sub_100085DF0;
  v9 = sub_100085E00;
  v10 = 0;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10008714C;
  v4[3] = &unk_1001CCE48;
  v4[4] = &v5;
  [(NSError *)self tsu_enumerateErrorUsingBlock:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

- (NSString)tsu_zipArchiveErrorEntryName
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = sub_100085DF0;
  v9 = sub_100085E00;
  v10 = 0;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000872F8;
  v4[3] = &unk_1001CCE48;
  v4[4] = &v5;
  [(NSError *)self tsu_enumerateErrorUsingBlock:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

+ (id)tsu_errorWithDomain:(id)domain code:(int64_t)code description:(id)description recoverySuggestion:(id)suggestion
{
  domainCopy = domain;
  descriptionCopy = description;
  suggestionCopy = suggestion;
  v13 = [[NSMutableDictionary alloc] initWithCapacity:2];
  v14 = v13;
  if (descriptionCopy)
  {
    [v13 setObject:descriptionCopy forKeyedSubscript:NSLocalizedDescriptionKey];
  }

  if (suggestionCopy)
  {
    [v14 setObject:suggestionCopy forKeyedSubscript:NSLocalizedRecoverySuggestionErrorKey];
  }

  v15 = [self errorWithDomain:domainCopy code:code userInfo:v14];

  return v15;
}

+ (id)tsu_errorWithCode:(int64_t)code userInfo:(id)info
{
  infoCopy = info;
  if (code >= 3)
  {
    v7 = +[TSUAssertionHandler _atomicIncrementAssertCount];
    if (TSUAssertCat_init_token != -1)
    {
      sub_10015B7E8();
    }

    v8 = TSUAssertCat_log_t;
    if (os_log_type_enabled(TSUAssertCat_log_t, OS_LOG_TYPE_ERROR))
    {
      sub_10015B7FC(v7, v8);
    }

    v9 = +[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", "+[NSError(TSUAdditions) tsu_errorWithCode:userInfo:]");
    v10 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/utility/NSError_TSUAdditions.m"];
    [TSUAssertionHandler handleFailureInFunction:v9 file:v10 lineNumber:46 isFatal:0 description:"Bad error code"];

    +[TSUAssertionHandler logBacktraceThrottled];
  }

  v11 = [self errorWithDomain:@"com.apple.iWork.TSUtility" code:code userInfo:infoCopy];

  return v11;
}

+ (id)tsu_errorWithDomain:(id)domain code:(int64_t)code alertTitle:(id)title alertMessage:(id)message userInfo:(id)info
{
  domainCopy = domain;
  titleCopy = title;
  messageCopy = message;
  infoCopy = info;
  v16 = [[NSMutableDictionary alloc] initWithCapacity:{objc_msgSend(infoCopy, "count") + 4}];
  v17 = v16;
  if (infoCopy)
  {
    [v16 addEntriesFromDictionary:infoCopy];
  }

  if (titleCopy)
  {
    [v17 setObject:titleCopy forKeyedSubscript:NSLocalizedDescriptionKey];
    [v17 setObject:titleCopy forKeyedSubscript:@"TSULocalizedErrorAlertTitle"];
  }

  if (messageCopy)
  {
    [v17 setObject:messageCopy forKeyedSubscript:NSLocalizedRecoverySuggestionErrorKey];
    [v17 setObject:messageCopy forKeyedSubscript:@"TSULocalizedErrorAlertMessage"];
    [v17 setObject:messageCopy forKeyedSubscript:NSLocalizedFailureReasonErrorKey];
  }

  v18 = [self errorWithDomain:domainCopy code:code userInfo:v17];

  return v18;
}

+ (id)tsu_errorWithDomain:(id)domain code:(int64_t)code description:(id)description underlyingError:(id)error
{
  domainCopy = domain;
  errorCopy = error;
  descriptionCopy = description;
  v13 = [[NSMutableDictionary alloc] initWithCapacity:2];
  [v13 setObject:descriptionCopy forKeyedSubscript:NSLocalizedDescriptionKey];

  if (errorCopy)
  {
    [v13 setObject:errorCopy forKeyedSubscript:NSUnderlyingErrorKey];
  }

  v14 = [self errorWithDomain:domainCopy code:code userInfo:v13];

  return v14;
}

+ (id)tsu_errorWithError:(id)error alertTitle:(id)title alertMessage:(id)message additionalUserInfo:(id)info
{
  infoCopy = info;
  if (error)
  {
    messageCopy = message;
    titleCopy = title;
    errorCopy = error;
    userInfo = [errorCopy userInfo];
    v15 = [[NSMutableDictionary alloc] initWithCapacity:{objc_msgSend(infoCopy, "count") + objc_msgSend(userInfo, "count") + 1}];
    v16 = v15;
    if (userInfo)
    {
      [v15 addEntriesFromDictionary:userInfo];
    }

    if (infoCopy)
    {
      [v16 addEntriesFromDictionary:infoCopy];
    }

    [v16 setObject:errorCopy forKeyedSubscript:NSUnderlyingErrorKey];
    domain = [errorCopy domain];
    code = [errorCopy code];

    v19 = [self tsu_errorWithDomain:domain code:code alertTitle:titleCopy alertMessage:messageCopy userInfo:v16];
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

- (id)tsu_errorPreservingAlertTitle
{
  userInfo = [(NSError *)self userInfo];
  v4 = [userInfo objectForKeyedSubscript:NSLocalizedDescriptionKey];
  if (!v4)
  {
    goto LABEL_5;
  }

  v5 = [userInfo objectForKeyedSubscript:@"TSULocalizedErrorAlertTitle"];
  v6 = v5;
  if (!v5 || [v5 isEqualToString:v4])
  {

LABEL_5:
    selfCopy = self;
    goto LABEL_6;
  }

  v9 = [userInfo mutableCopy];
  [v9 setObject:v6 forKeyedSubscript:NSLocalizedDescriptionKey];
  v10 = objc_opt_class();
  domain = [(NSError *)self domain];
  selfCopy = [v10 errorWithDomain:domain code:-[NSError code](self userInfo:{"code"), v9}];

LABEL_6:

  return selfCopy;
}

- (id)tsu_errorPreservingCancel
{
  selfCopy = self;
  if ([(NSError *)selfCopy tsu_isCancelError])
  {
    if ([(NSError *)selfCopy code]== 3072)
    {
      domain = [(NSError *)selfCopy domain];
      v4 = NSCocoaErrorDomain;
      v5 = [domain isEqualToString:NSCocoaErrorDomain];

      if (v5)
      {
        goto LABEL_7;
      }
    }

    else
    {
      v4 = NSCocoaErrorDomain;
    }

    v6 = objc_opt_class();
    v10 = NSUnderlyingErrorKey;
    v11 = selfCopy;
    v7 = [NSDictionary dictionaryWithObjects:&v11 forKeys:&v10 count:1];
    v8 = [v6 errorWithDomain:v4 code:3072 userInfo:v7];

    selfCopy = v8;
  }

LABEL_7:

  return selfCopy;
}

- (id)tsu_localizedAlertTitle
{
  userInfo = [(NSError *)self userInfo];
  v3 = [userInfo objectForKeyedSubscript:@"TSULocalizedErrorAlertTitle"];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = [userInfo objectForKeyedSubscript:NSLocalizedDescriptionKey];
  }

  v6 = v5;

  return v6;
}

- (id)tsu_localizedAlertMessage
{
  userInfo = [(NSError *)self userInfo];
  v3 = [userInfo objectForKeyedSubscript:@"TSULocalizedErrorAlertMessage"];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = [userInfo objectForKeyedSubscript:NSLocalizedRecoverySuggestionErrorKey];
  }

  v6 = v5;

  return v6;
}

- (void)tsu_enumerateErrorUsingBlock:(id)block
{
  blockCopy = block;
  if (blockCopy)
  {
    selfCopy = self;
    v12 = 0;
    if (selfCopy)
    {
      v6 = selfCopy;
      do
      {
        userInfo = [(NSError *)v6 userInfo];
        domain = [(NSError *)v6 domain];
        blockCopy[2](blockCopy, domain, [(NSError *)v6 code], userInfo, &v12);

        v9 = [userInfo objectForKeyedSubscript:NSUnderlyingErrorKey];
        v10 = v9;
        if (v9 != v6)
        {
          v11 = v9;

          v6 = v11;
        }
      }

      while (v6 && (v12 & 1) == 0);
    }
  }
}

- (BOOL)tsu_isErrorPassingTest:(id)test
{
  testCopy = test;
  v5 = testCopy;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  if (testCopy)
  {
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_1000882A4;
    v8[3] = &unk_1001CCF58;
    v9 = testCopy;
    v10 = &v11;
    [(NSError *)self tsu_enumerateErrorUsingBlock:v8];

    v6 = *(v12 + 24);
  }

  else
  {
    v6 = 0;
  }

  _Block_object_dispose(&v11, 8);

  return v6 & 1;
}

+ (id)tsu_errorWithWarning:(id)warning
{
  v7 = NSLocalizedDescriptionKey;
  message = [warning message];
  v8 = message;
  v4 = [NSDictionary dictionaryWithObjects:&v8 forKeys:&v7 count:1];
  v5 = [NSError errorWithDomain:@"com.apple.tangier.TSUWarningErrorDomain" code:0 userInfo:v4];

  return v5;
}

+ (id)tsu_userInfoWithErrorType:(int64_t)type userInfo:(id)info
{
  infoCopy = info;
  v6 = [[NSMutableDictionary alloc] initWithCapacity:{objc_msgSend(infoCopy, "count") + 1}];
  v7 = v6;
  if (infoCopy)
  {
    [v6 addEntriesFromDictionary:infoCopy];
  }

  v8 = [NSNumber numberWithInteger:type];
  [v7 setObject:v8 forKeyedSubscript:@"TSUIOErrorType"];

  return v7;
}

+ (id)tsu_fileReadUnknownErrorWithUserInfo:(id)info
{
  v3 = [self tsu_userInfoWithErrorType:1 userInfo:info];
  v4 = [NSError errorWithDomain:NSCocoaErrorDomain code:256 userInfo:v3];

  return v4;
}

+ (id)tsu_fileReadCorruptedFileErrorWithUserInfo:(id)info
{
  v3 = [self tsu_userInfoWithErrorType:1 userInfo:info];
  v4 = [NSError errorWithDomain:NSCocoaErrorDomain code:259 userInfo:v3];

  return v4;
}

+ (id)tsu_fileReadPOSIXErrorWithNumber:(int)number userInfo:(id)info
{
  numberCopy = number;
  v5 = [self tsu_userInfoWithErrorType:1 userInfo:info];
  v6 = [NSError errorWithDomain:NSPOSIXErrorDomain code:numberCopy userInfo:v5];

  return v6;
}

+ (id)tsu_fileWriteUnknownErrorWithUserInfo:(id)info
{
  v3 = [self tsu_userInfoWithErrorType:2 userInfo:info];
  v4 = [NSError errorWithDomain:NSCocoaErrorDomain code:512 userInfo:v3];

  return v4;
}

+ (id)tsu_fileWritePOSIXErrorWithNumber:(int)number userInfo:(id)info
{
  infoCopy = info;
  v7 = [NSError alloc];
  v8 = [self tsu_userInfoWithErrorType:2 userInfo:infoCopy];

  v9 = [v7 initWithDomain:NSPOSIXErrorDomain code:number userInfo:v8];

  return v9;
}

@end