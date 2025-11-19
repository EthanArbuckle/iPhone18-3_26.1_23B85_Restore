@interface NSError
+ (id)tsp_ensureCorruptedDocumentErrorWithError:(id)a3;
+ (id)tsp_ensureReadErrorWithError:(id)a3;
+ (id)tsp_ensureSaveErrorWithError:(id)a3;
+ (id)tsp_errorWithCode:(int64_t)a3 userInfo:(id)a4;
+ (id)tsp_errorWithCode:(int64_t)a3 userInfo:(id)a4 isRecoverable:(BOOL)a5;
+ (id)tsp_errorWithError:(id)a3 hints:(id)a4;
+ (id)tsp_readCorruptZipOfPackageErrorWithUserInfo:(id)a3;
+ (id)tsp_readCorruptedDocumentErrorWithUserInfo:(id)a3;
+ (id)tsp_recoverableErrorWithError:(id)a3;
+ (id)tsp_saveDocumentErrorWithUserInfo:(id)a3;
+ (id)tsp_storageSpaceErrorWithUserInfo:(id)a3;
+ (id)tsp_unknownReadErrorWithUserInfo:(id)a3;
+ (id)tsp_unknownWriteErrorWithUserInfo:(id)a3;
+ (id)tsp_unsupportedVersionErrorWithUserInfo:(id)a3;
+ (id)tsp_userInfoWithUserInfo:(id)a3 additionalUserInfo:(id)a4;
+ (id)tsu_errorWithCode:(int64_t)a3 userInfo:(id)a4;
+ (id)tsu_errorWithDomain:(id)a3 code:(int64_t)a4 alertTitle:(id)a5 alertMessage:(id)a6 userInfo:(id)a7;
+ (id)tsu_errorWithDomain:(id)a3 code:(int64_t)a4 description:(id)a5 recoverySuggestion:(id)a6;
+ (id)tsu_errorWithDomain:(id)a3 code:(int64_t)a4 description:(id)a5 underlyingError:(id)a6;
+ (id)tsu_errorWithError:(id)a3 alertTitle:(id)a4 alertMessage:(id)a5 additionalUserInfo:(id)a6;
+ (id)tsu_errorWithWarning:(id)a3;
+ (id)tsu_fileReadCorruptedFileErrorWithUserInfo:(id)a3;
+ (id)tsu_fileReadPOSIXErrorWithNumber:(int)a3 userInfo:(id)a4;
+ (id)tsu_fileReadUnknownErrorWithUserInfo:(id)a3;
+ (id)tsu_fileWritePOSIXErrorWithNumber:(int)a3 userInfo:(id)a4;
+ (id)tsu_fileWriteUnknownErrorWithUserInfo:(id)a3;
+ (id)tsu_userInfoWithErrorType:(int64_t)a3 userInfo:(id)a4;
- (BOOL)tsu_isErrorPassingTest:(id)a3;
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
- (void)tsu_enumerateErrorUsingBlock:(id)a3;
@end

@implementation NSError

+ (id)tsp_errorWithCode:(int64_t)a3 userInfo:(id)a4
{
  v4 = [a1 tsp_errorWithCode:a3 userInfo:a4 isRecoverable:0];

  return v4;
}

+ (id)tsp_errorWithCode:(int64_t)a3 userInfo:(id)a4 isRecoverable:(BOOL)a5
{
  v5 = a5;
  v8 = a4;
  v9 = 0;
  if (a3 > 4)
  {
    if (a3 != 5 && a3 != 6)
    {
      if (a3 != 7)
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

  if ((a3 - 2) >= 2)
  {
    if (a3 != 4)
    {
      goto LABEL_17;
    }

    goto LABEL_10;
  }

  v10 = UnsafePointer();
  v11 = [v10 localizedStringForKey:@"The document could not be autosaved." value:&stru_1001D3878 table:@"TSPersistence"];

  v12 = UnsafePointer();
  if (a3 == 2)
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

    if (v5)
    {
      goto LABEL_16;
    }

    goto LABEL_18;
  }

  if (v5)
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
  v16 = [a1 tsp_userInfoWithUserInfo:v8 additionalUserInfo:v14];
  v17 = [a1 tsu_errorWithDomain:@"com.apple.iWork.TSPersistence" code:a3 alertTitle:v11 alertMessage:v9 userInfo:v16];

  if (v5)
  {
  }

  return v17;
}

+ (id)tsp_userInfoWithUserInfo:(id)a3 additionalUserInfo:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [[NSMutableDictionary alloc] initWithCapacity:{objc_msgSend(v6, "count") + objc_msgSend(v5, "count") + 1}];
  v8 = v7;
  if (v5)
  {
    [v7 addEntriesFromDictionary:v5];
  }

  if (v6)
  {
    [v8 addEntriesFromDictionary:v6];
  }

  [v8 setObject:&__kCFBooleanTrue forKeyedSubscript:@"TSPErrorIsTSPError"];

  return v8;
}

+ (id)tsp_recoverableErrorWithError:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6 = [v4 domain];
    v7 = [v5 code];
    v8 = [v5 userInfo];
    v13 = @"TSPErrorIsRecoverable";
    v14 = &__kCFBooleanTrue;
    v9 = [NSDictionary dictionaryWithObjects:&v14 forKeys:&v13 count:1];
    v10 = [a1 tsp_userInfoWithUserInfo:v8 additionalUserInfo:v9];
    v11 = [a1 errorWithDomain:v6 code:v7 userInfo:v10];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

+ (id)tsp_errorWithError:(id)a3 hints:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (!v6)
  {
    v15 = 0;
    goto LABEL_12;
  }

  v9 = [v7 count];
  if (!v9)
  {
    v15 = v6;
    goto LABEL_12;
  }

  v10 = [v6 userInfo];
  v11 = [v10 objectForKeyedSubscript:@"TSPErrorHints"];

  v12 = [v11 count];
  if (!v12)
  {
    v14 = [NSSet setWithArray:v8];
LABEL_10:
    v16 = [v6 domain];
    v17 = [v6 code];
    v18 = [v6 userInfo];
    v22 = @"TSPErrorHints";
    v23 = v14;
    v19 = [NSDictionary dictionaryWithObjects:&v23 forKeys:&v22 count:1];
    v20 = [a1 tsp_userInfoWithUserInfo:v18 additionalUserInfo:v19];
    v15 = [a1 errorWithDomain:v16 code:v17 userInfo:v20];

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

  v15 = v6;

LABEL_11:
LABEL_12:

  return v15;
}

+ (id)tsp_unknownReadErrorWithUserInfo:(id)a3
{
  v4 = [a1 tsp_userInfoWithUserInfo:a3 additionalUserInfo:0];
  v5 = [a1 tsu_fileReadUnknownErrorWithUserInfo:v4];

  return v5;
}

+ (id)tsp_readCorruptedDocumentErrorWithUserInfo:(id)a3
{
  v4 = [a1 tsp_userInfoWithUserInfo:a3 additionalUserInfo:0];
  v5 = [a1 tsu_fileReadCorruptedFileErrorWithUserInfo:v4];

  return v5;
}

+ (id)tsp_unsupportedVersionErrorWithUserInfo:(id)a3
{
  v4 = a3;
  v5 = [[NSMutableDictionary alloc] initWithCapacity:{objc_msgSend(v4, "count") + 1}];
  v6 = v5;
  if (v4)
  {
    [v5 addEntriesFromDictionary:v4];
  }

  [v6 setObject:&__kCFBooleanTrue forKeyedSubscript:@"TSPIsUnsupportedVersionError"];
  v7 = [a1 tsp_unknownReadErrorWithUserInfo:v6];

  return v7;
}

+ (id)tsp_unknownWriteErrorWithUserInfo:(id)a3
{
  v4 = [a1 tsp_userInfoWithUserInfo:a3 additionalUserInfo:0];
  v5 = [a1 tsu_fileWriteUnknownErrorWithUserInfo:v4];

  return v5;
}

+ (id)tsp_saveDocumentErrorWithUserInfo:(id)a3
{
  v3 = [a1 tsp_errorWithCode:2 userInfo:a3];

  return v3;
}

+ (id)tsp_storageSpaceErrorWithUserInfo:(id)a3
{
  v3 = [a1 tsp_errorWithCode:3 userInfo:a3];

  return v3;
}

+ (id)tsp_readCorruptZipOfPackageErrorWithUserInfo:(id)a3
{
  v4 = a3;
  v5 = [[NSMutableDictionary alloc] initWithCapacity:{objc_msgSend(v4, "count") + 1}];
  v6 = v5;
  if (v4)
  {
    [v5 addEntriesFromDictionary:v4];
  }

  [v6 setObject:&__kCFBooleanTrue forKeyedSubscript:@"TSPIsCorruptZipOfPackageError"];
  v7 = [a1 tsp_readCorruptedDocumentErrorWithUserInfo:v6];

  return v7;
}

+ (id)tsp_ensureReadErrorWithError:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (!v4)
  {
    v11 = [a1 tsp_unknownReadErrorWithUserInfo:0];
LABEL_13:
    v12 = v11;
    goto LABEL_17;
  }

  if ([v4 code] != 2 && objc_msgSend(v5, "code") != 3)
  {
    v6 = [v5 domain];
    v7 = [v6 isEqualToString:@"com.apple.iWork.TSPersistence"];

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

    v8 = [v5 domain];
    v9 = NSCocoaErrorDomain;
    v10 = [v8 isEqualToString:NSCocoaErrorDomain];

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
  v12 = [a1 tsp_unknownReadErrorWithUserInfo:v14];

LABEL_17:

  return v12;
}

+ (id)tsp_ensureCorruptedDocumentErrorWithError:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (!v4)
  {
    v6 = [a1 tsp_readCorruptedDocumentErrorWithUserInfo:0];
    goto LABEL_5;
  }

  if ([v4 tsp_isCorruptedError])
  {
    v6 = v5;
LABEL_5:
    v7 = v6;
    goto LABEL_7;
  }

  v10 = NSUnderlyingErrorKey;
  v11 = v5;
  v8 = [NSDictionary dictionaryWithObjects:&v11 forKeys:&v10 count:1];
  v7 = [a1 tsp_readCorruptedDocumentErrorWithUserInfo:v8];

LABEL_7:

  return v7;
}

+ (id)tsp_ensureSaveErrorWithError:(id)a3
{
  v4 = a3;
  v5 = [v4 domain];
  v6 = [v5 isEqualToString:@"com.apple.iWork.TSPersistence"];

  if (!v4)
  {
    v9 = [a1 tsp_saveDocumentErrorWithUserInfo:0];
    goto LABEL_9;
  }

  if ((v6 & 1) == 0 && [v4 tsu_isOutOfSpaceError])
  {
    v14 = NSUnderlyingErrorKey;
    v15 = v4;
    v7 = [NSDictionary dictionaryWithObjects:&v15 forKeys:&v14 count:1];
    v8 = [a1 tsp_storageSpaceErrorWithUserInfo:v7];

    goto LABEL_10;
  }

  if ((([v4 code] == 3) & v6) == 1 || ((objc_msgSend(v4, "code") == 2) & v6) != 0)
  {
    v9 = v4;
LABEL_9:
    v8 = v9;
    goto LABEL_10;
  }

  v12 = NSUnderlyingErrorKey;
  v13 = v4;
  v11 = [NSDictionary dictionaryWithObjects:&v13 forKeys:&v12 count:1];
  v8 = [a1 tsp_saveDocumentErrorWithUserInfo:v11];

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
  v4 = [(NSError *)self tsp_hints];
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v11 + 1) + 8 * i);
        if ((v7 & 1) == 0)
        {
          [v3 appendString:{@", "}];
        }

        [v3 appendString:v9];
        v7 = 0;
      }

      v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
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
  v2 = [v6[5] longLongValue];
  _Block_object_dispose(&v5, 8);

  return v2;
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
  v2 = [v6[5] unsignedLongLongValue];
  _Block_object_dispose(&v5, 8);

  return v2;
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

+ (id)tsu_errorWithDomain:(id)a3 code:(int64_t)a4 description:(id)a5 recoverySuggestion:(id)a6
{
  v10 = a3;
  v11 = a5;
  v12 = a6;
  v13 = [[NSMutableDictionary alloc] initWithCapacity:2];
  v14 = v13;
  if (v11)
  {
    [v13 setObject:v11 forKeyedSubscript:NSLocalizedDescriptionKey];
  }

  if (v12)
  {
    [v14 setObject:v12 forKeyedSubscript:NSLocalizedRecoverySuggestionErrorKey];
  }

  v15 = [a1 errorWithDomain:v10 code:a4 userInfo:v14];

  return v15;
}

+ (id)tsu_errorWithCode:(int64_t)a3 userInfo:(id)a4
{
  v6 = a4;
  if (a3 >= 3)
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

  v11 = [a1 errorWithDomain:@"com.apple.iWork.TSUtility" code:a3 userInfo:v6];

  return v11;
}

+ (id)tsu_errorWithDomain:(id)a3 code:(int64_t)a4 alertTitle:(id)a5 alertMessage:(id)a6 userInfo:(id)a7
{
  v12 = a3;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  v16 = [[NSMutableDictionary alloc] initWithCapacity:{objc_msgSend(v15, "count") + 4}];
  v17 = v16;
  if (v15)
  {
    [v16 addEntriesFromDictionary:v15];
  }

  if (v13)
  {
    [v17 setObject:v13 forKeyedSubscript:NSLocalizedDescriptionKey];
    [v17 setObject:v13 forKeyedSubscript:@"TSULocalizedErrorAlertTitle"];
  }

  if (v14)
  {
    [v17 setObject:v14 forKeyedSubscript:NSLocalizedRecoverySuggestionErrorKey];
    [v17 setObject:v14 forKeyedSubscript:@"TSULocalizedErrorAlertMessage"];
    [v17 setObject:v14 forKeyedSubscript:NSLocalizedFailureReasonErrorKey];
  }

  v18 = [a1 errorWithDomain:v12 code:a4 userInfo:v17];

  return v18;
}

+ (id)tsu_errorWithDomain:(id)a3 code:(int64_t)a4 description:(id)a5 underlyingError:(id)a6
{
  v10 = a3;
  v11 = a6;
  v12 = a5;
  v13 = [[NSMutableDictionary alloc] initWithCapacity:2];
  [v13 setObject:v12 forKeyedSubscript:NSLocalizedDescriptionKey];

  if (v11)
  {
    [v13 setObject:v11 forKeyedSubscript:NSUnderlyingErrorKey];
  }

  v14 = [a1 errorWithDomain:v10 code:a4 userInfo:v13];

  return v14;
}

+ (id)tsu_errorWithError:(id)a3 alertTitle:(id)a4 alertMessage:(id)a5 additionalUserInfo:(id)a6
{
  v10 = a6;
  if (a3)
  {
    v11 = a5;
    v12 = a4;
    v13 = a3;
    v14 = [v13 userInfo];
    v15 = [[NSMutableDictionary alloc] initWithCapacity:{objc_msgSend(v10, "count") + objc_msgSend(v14, "count") + 1}];
    v16 = v15;
    if (v14)
    {
      [v15 addEntriesFromDictionary:v14];
    }

    if (v10)
    {
      [v16 addEntriesFromDictionary:v10];
    }

    [v16 setObject:v13 forKeyedSubscript:NSUnderlyingErrorKey];
    v17 = [v13 domain];
    v18 = [v13 code];

    v19 = [a1 tsu_errorWithDomain:v17 code:v18 alertTitle:v12 alertMessage:v11 userInfo:v16];
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

- (id)tsu_errorPreservingAlertTitle
{
  v3 = [(NSError *)self userInfo];
  v4 = [v3 objectForKeyedSubscript:NSLocalizedDescriptionKey];
  if (!v4)
  {
    goto LABEL_5;
  }

  v5 = [v3 objectForKeyedSubscript:@"TSULocalizedErrorAlertTitle"];
  v6 = v5;
  if (!v5 || [v5 isEqualToString:v4])
  {

LABEL_5:
    v7 = self;
    goto LABEL_6;
  }

  v9 = [v3 mutableCopy];
  [v9 setObject:v6 forKeyedSubscript:NSLocalizedDescriptionKey];
  v10 = objc_opt_class();
  v11 = [(NSError *)self domain];
  v7 = [v10 errorWithDomain:v11 code:-[NSError code](self userInfo:{"code"), v9}];

LABEL_6:

  return v7;
}

- (id)tsu_errorPreservingCancel
{
  v2 = self;
  if ([(NSError *)v2 tsu_isCancelError])
  {
    if ([(NSError *)v2 code]== 3072)
    {
      v3 = [(NSError *)v2 domain];
      v4 = NSCocoaErrorDomain;
      v5 = [v3 isEqualToString:NSCocoaErrorDomain];

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
    v11 = v2;
    v7 = [NSDictionary dictionaryWithObjects:&v11 forKeys:&v10 count:1];
    v8 = [v6 errorWithDomain:v4 code:3072 userInfo:v7];

    v2 = v8;
  }

LABEL_7:

  return v2;
}

- (id)tsu_localizedAlertTitle
{
  v2 = [(NSError *)self userInfo];
  v3 = [v2 objectForKeyedSubscript:@"TSULocalizedErrorAlertTitle"];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = [v2 objectForKeyedSubscript:NSLocalizedDescriptionKey];
  }

  v6 = v5;

  return v6;
}

- (id)tsu_localizedAlertMessage
{
  v2 = [(NSError *)self userInfo];
  v3 = [v2 objectForKeyedSubscript:@"TSULocalizedErrorAlertMessage"];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = [v2 objectForKeyedSubscript:NSLocalizedRecoverySuggestionErrorKey];
  }

  v6 = v5;

  return v6;
}

- (void)tsu_enumerateErrorUsingBlock:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = self;
    v12 = 0;
    if (v5)
    {
      v6 = v5;
      do
      {
        v7 = [(NSError *)v6 userInfo];
        v8 = [(NSError *)v6 domain];
        v4[2](v4, v8, [(NSError *)v6 code], v7, &v12);

        v9 = [v7 objectForKeyedSubscript:NSUnderlyingErrorKey];
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

- (BOOL)tsu_isErrorPassingTest:(id)a3
{
  v4 = a3;
  v5 = v4;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  if (v4)
  {
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_1000882A4;
    v8[3] = &unk_1001CCF58;
    v9 = v4;
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

+ (id)tsu_errorWithWarning:(id)a3
{
  v7 = NSLocalizedDescriptionKey;
  v3 = [a3 message];
  v8 = v3;
  v4 = [NSDictionary dictionaryWithObjects:&v8 forKeys:&v7 count:1];
  v5 = [NSError errorWithDomain:@"com.apple.tangier.TSUWarningErrorDomain" code:0 userInfo:v4];

  return v5;
}

+ (id)tsu_userInfoWithErrorType:(int64_t)a3 userInfo:(id)a4
{
  v5 = a4;
  v6 = [[NSMutableDictionary alloc] initWithCapacity:{objc_msgSend(v5, "count") + 1}];
  v7 = v6;
  if (v5)
  {
    [v6 addEntriesFromDictionary:v5];
  }

  v8 = [NSNumber numberWithInteger:a3];
  [v7 setObject:v8 forKeyedSubscript:@"TSUIOErrorType"];

  return v7;
}

+ (id)tsu_fileReadUnknownErrorWithUserInfo:(id)a3
{
  v3 = [a1 tsu_userInfoWithErrorType:1 userInfo:a3];
  v4 = [NSError errorWithDomain:NSCocoaErrorDomain code:256 userInfo:v3];

  return v4;
}

+ (id)tsu_fileReadCorruptedFileErrorWithUserInfo:(id)a3
{
  v3 = [a1 tsu_userInfoWithErrorType:1 userInfo:a3];
  v4 = [NSError errorWithDomain:NSCocoaErrorDomain code:259 userInfo:v3];

  return v4;
}

+ (id)tsu_fileReadPOSIXErrorWithNumber:(int)a3 userInfo:(id)a4
{
  v4 = a3;
  v5 = [a1 tsu_userInfoWithErrorType:1 userInfo:a4];
  v6 = [NSError errorWithDomain:NSPOSIXErrorDomain code:v4 userInfo:v5];

  return v6;
}

+ (id)tsu_fileWriteUnknownErrorWithUserInfo:(id)a3
{
  v3 = [a1 tsu_userInfoWithErrorType:2 userInfo:a3];
  v4 = [NSError errorWithDomain:NSCocoaErrorDomain code:512 userInfo:v3];

  return v4;
}

+ (id)tsu_fileWritePOSIXErrorWithNumber:(int)a3 userInfo:(id)a4
{
  v6 = a4;
  v7 = [NSError alloc];
  v8 = [a1 tsu_userInfoWithErrorType:2 userInfo:v6];

  v9 = [v7 initWithDomain:NSPOSIXErrorDomain code:a3 userInfo:v8];

  return v9;
}

@end