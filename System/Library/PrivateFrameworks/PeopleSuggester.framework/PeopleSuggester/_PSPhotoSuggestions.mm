@interface _PSPhotoSuggestions
+ (id)allOutstandingRequestsLock;
+ (id)peopleInSharedPhotoAttachments:(id)attachments forBundleID:(id)d shouldProcessPicturesLive:(BOOL)live shouldUseVIPModel:(BOOL)model withTraceID:(id)iD withSpanID:(id)spanID shouldUseMDID:(BOOL)dID withCompletion:(id)self0;
+ (id)sharedMADService;
+ (id)suggestionTemplateForPhotoContactIdWithMessages:(id)messages cdInteraction:(id)interaction reason:(id)reason reasonType:(id)type;
+ (void)cancelRequestWithToken:(id)token;
@end

@implementation _PSPhotoSuggestions

+ (id)sharedMADService
{
  if (sharedMADService__pasOnceToken1 != -1)
  {
    +[_PSPhotoSuggestions sharedMADService];
  }

  v3 = sharedMADService__pasExprOnceResult_0;

  return v3;
}

+ (id)allOutstandingRequestsLock
{
  if (allOutstandingRequestsLock__pasOnceToken2 != -1)
  {
    +[_PSPhotoSuggestions allOutstandingRequestsLock];
  }

  v3 = allOutstandingRequestsLock__pasExprOnceResult;

  return v3;
}

+ (id)peopleInSharedPhotoAttachments:(id)attachments forBundleID:(id)d shouldProcessPicturesLive:(BOOL)live shouldUseVIPModel:(BOOL)model withTraceID:(id)iD withSpanID:(id)spanID shouldUseMDID:(BOOL)dID withCompletion:(id)self0
{
  modelCopy = model;
  liveCopy = live;
  v88 = *MEMORY[0x1E69E9840];
  dCopy = d;
  iDCopy = iD;
  spanIDCopy = spanID;
  completionCopy = completion;
  v47 = [_PSPhotoUtils attachmentsEligibleForPhotoProcessingFromAttachments:attachments];
  if ([v47 count])
  {
    v13 = +[_PSPhotoSuggestions allOutstandingRequestsLock];
    [v13 tryWithLockAcquired:&__block_literal_global_239];

    v14 = objc_alloc(MEMORY[0x1E69C5D60]);
    v15 = objc_opt_new();
    v54 = [v14 initWithGuardedData:v15];

    v79 = 0;
    v45 = [objc_alloc(MEMORY[0x1E69635F8]) initWithBundleIdentifier:dCopy allowPlaceholder:0 error:&v79];
    v43 = v79;
    v16 = v45;
    if (!v45)
    {
      v17 = +[_PSLogging heuristicsChannel];
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        [_PSPhotoSuggestions peopleInSharedPhotoAttachments:v43 forBundleID:v17 shouldProcessPicturesLive:? shouldUseVIPModel:? withTraceID:? withSpanID:? shouldUseMDID:? withCompletion:?];
      }

      v16 = 0;
    }

    developerType = [v16 developerType];
    v19 = +[_PSLogging heuristicsChannel];
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138478083;
      *&buf[4] = v47;
      *&buf[12] = 1024;
      *&buf[14] = developerType == 1;
      _os_log_impl(&dword_1B5ED1000, v19, OS_LOG_TYPE_DEFAULT, "IDsOfPeopleInSharedPhotoAssets with attachments %{private}@, isFirstParty: %d", buf, 0x12u);
    }

    v55 = objc_opt_new();
    v78[0] = 0;
    v78[1] = v78;
    v78[2] = 0x2020000000;
    v78[3] = [v47 count];
    v53 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E6997A20] code:*MEMORY[0x1E6997A48] userInfo:&unk_1F2D8C910];
    v76 = 0u;
    v77 = 0u;
    v74 = 0u;
    v75 = 0u;
    obj = v47;
    v20 = [obj countByEnumeratingWithState:&v74 objects:v84 count:16];
    if (v20)
    {
      v49 = *v75;
      do
      {
        for (i = 0; i != v20; ++i)
        {
          if (*v75 != v49)
          {
            objc_enumerationMutation(obj);
          }

          v22 = *(*(&v74 + 1) + 8 * i);
          v80 = 0;
          v81 = &v80;
          v82 = 0x2050000000;
          v23 = getMADPersonIdentificationRequestClass_softClass_0;
          v83 = getMADPersonIdentificationRequestClass_softClass_0;
          if (!getMADPersonIdentificationRequestClass_softClass_0)
          {
            *buf = MEMORY[0x1E69E9820];
            *&buf[8] = 3221225472;
            *&buf[16] = __getMADPersonIdentificationRequestClass_block_invoke_0;
            v86 = &unk_1E7C23BF0;
            v87 = &v80;
            MediaAnalysisServicesLibraryCore_0();
            Class = objc_getClass("MADPersonIdentificationRequest");
            *(v87[1] + 24) = Class;
            getMADPersonIdentificationRequestClass_softClass_0 = *(v87[1] + 24);
            v23 = v81[3];
          }

          v25 = v23;
          _Block_object_dispose(&v80, 8);
          v26 = objc_alloc_init(v23);
          [v26 setMaximumFaceCount:4];
          [v26 setAllowOnDemand:liveCopy];
          [v26 setAllowUnverifiedIdentity:1];
          [v26 setUseLowResolutionPicture:1];
          [v26 setIncludePets:1];
          [v26 setUseVIPModel:modelCopy];
          *buf = 0;
          *&buf[8] = buf;
          *&buf[16] = 0x2020000000;
          LODWORD(v86) = 0;
          v27 = [AeroMLTracerSession alloc];
          v28 = +[_PSConstants peopleSuggesterShareSheetProjectName];
          if (iDCopy)
          {
            v29 = [(AeroMLTracerSession *)v27 initWithTraceId:iDCopy projectName:v28];
          }

          else
          {
            v29 = [(AeroMLTracerSession *)v27 initWithProjectName:v28];
          }

          v30 = v29;

          v31 = [v30 createSubSpanWithName:@"fetchingMADResultsSpan" parentSpanId:spanIDCopy];
          [v31 start];
          v66[0] = MEMORY[0x1E69E9820];
          v66[1] = 3221225472;
          v66[2] = __162___PSPhotoSuggestions_peopleInSharedPhotoAttachments_forBundleID_shouldProcessPicturesLive_shouldUseVIPModel_withTraceID_withSpanID_shouldUseMDID_withCompletion___block_invoke_254;
          v66[3] = &unk_1E7C26EA8;
          v32 = v26;
          v67 = v32;
          v33 = v31;
          v68 = v33;
          dIDCopy = dID;
          v69 = v54;
          v34 = v53;
          v70 = v34;
          v72 = v78;
          v71 = completionCopy;
          v35 = MEMORY[0x1B8C8C060](v66);
          v36 = +[_PSPhotoSuggestions allOutstandingRequestsLock];
          v59[0] = MEMORY[0x1E69E9820];
          v59[1] = 3221225472;
          v59[2] = __162___PSPhotoSuggestions_peopleInSharedPhotoAttachments_forBundleID_shouldProcessPicturesLive_shouldUseVIPModel_withTraceID_withSpanID_shouldUseMDID_withCompletion___block_invoke_298;
          v59[3] = &unk_1E7C26F20;
          v37 = v35;
          v63 = v37;
          v64 = buf;
          v59[4] = v22;
          selfCopy = self;
          v38 = v32;
          v60 = v38;
          v61 = v34;
          v62 = v55;
          [v36 runWithLockAcquired:v59];

          _Block_object_dispose(buf, 8);
        }

        v20 = [obj countByEnumeratingWithState:&v74 objects:v84 count:16];
      }

      while (v20);
    }

    _Block_object_dispose(v78, 8);
    v39 = completionCopy;
  }

  else
  {
    v40 = [MEMORY[0x1E695DFD8] set];
    v39 = completionCopy;
    (*(completionCopy + 2))(completionCopy, v40);

    v55 = MEMORY[0x1E695E0F0];
  }

  v41 = *MEMORY[0x1E69E9840];

  return v55;
}

+ (void)cancelRequestWithToken:(id)token
{
  v46 = *MEMORY[0x1E69E9840];
  tokenCopy = token;
  objc_opt_class();
  v29 = tokenCopy;
  if (objc_opt_isKindOfClass())
  {
    v5 = tokenCopy;
    v28 = v5;
    if ([v5 count])
    {
      v38 = 0u;
      v39 = 0u;
      v36 = 0u;
      v37 = 0u;
      v6 = v5;
      v7 = [v6 countByEnumeratingWithState:&v36 objects:v45 count:16];
      if (v7)
      {
        v8 = *v37;
        while (2)
        {
          for (i = 0; i != v7; ++i)
          {
            if (*v37 != v8)
            {
              objc_enumerationMutation(v6);
            }

            v10 = *(*(&v36 + 1) + 8 * i);
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              v25 = +[_PSLogging heuristicsChannel];
              if (os_log_type_enabled(v25, OS_LOG_TYPE_FAULT))
              {
                [(_PSPhotoSuggestions *)v6 cancelRequestWithToken:v25];
              }

              goto LABEL_30;
            }
          }

          v7 = [v6 countByEnumeratingWithState:&v36 objects:v45 count:16];
          if (v7)
          {
            continue;
          }

          break;
        }
      }

      v27 = [v6 count];
      v34 = 0u;
      v35 = 0u;
      v32 = 0u;
      v33 = 0u;
      obj = v6;
      v11 = 0;
      v12 = [obj countByEnumeratingWithState:&v32 objects:v44 count:16];
      if (v12)
      {
        v13 = *v33;
        do
        {
          for (j = 0; j != v12; ++j)
          {
            if (*v33 != v13)
            {
              objc_enumerationMutation(obj);
            }

            v15 = *(*(&v32 + 1) + 8 * j);
            integerValue = [v15 integerValue];
            *buf = 0;
            *&buf[8] = buf;
            *&buf[16] = 0x3032000000;
            v41 = __Block_byref_object_copy__303;
            v42 = __Block_byref_object_dispose__304;
            v43 = 0;
            allOutstandingRequestsLock = [self allOutstandingRequestsLock];
            v31[0] = MEMORY[0x1E69E9820];
            v31[1] = 3221225472;
            v31[2] = __46___PSPhotoSuggestions_cancelRequestWithToken___block_invoke;
            v31[3] = &unk_1E7C26F48;
            v31[4] = v15;
            v31[5] = buf;
            [allOutstandingRequestsLock runWithLockAcquired:v31];

            v18 = *(*&buf[8] + 40);
            if (v18)
            {
              (*(v18 + 16))();
              sharedMADService = [self sharedMADService];
              [sharedMADService cancelRequestID:integerValue];

              ++v11;
            }

            _Block_object_dispose(buf, 8);
          }

          v12 = [obj countByEnumeratingWithState:&v32 objects:v44 count:16];
        }

        while (v12);
      }

      v6 = +[_PSLogging heuristicsChannel];
      if (!os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_30;
      }

      *buf = 134218240;
      *&buf[4] = v11;
      *&buf[12] = 2048;
      *&buf[14] = v27;
      v20 = "_PSPhotoSuggestions request cancelled (%tu of %tu attachments were still in-flight)";
      v21 = v6;
      v22 = 22;
    }

    else
    {
      v6 = +[_PSLogging heuristicsChannel];
      if (!os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
LABEL_30:

        v24 = v28;
        goto LABEL_31;
      }

      *buf = 0;
      v20 = "_PSPhotoSuggestions request cancelled (no-op because request was for 0 items)";
      v21 = v6;
      v22 = 2;
    }

    _os_log_impl(&dword_1B5ED1000, v21, OS_LOG_TYPE_DEFAULT, v20, buf, v22);
    goto LABEL_30;
  }

  v23 = +[_PSLogging heuristicsChannel];
  v24 = v23;
  if (os_log_type_enabled(v23, OS_LOG_TYPE_FAULT))
  {
    [(_PSPhotoSuggestions *)v29 cancelRequestWithToken:v23];
    v24 = v23;
  }

LABEL_31:

  v26 = *MEMORY[0x1E69E9840];
}

+ (id)suggestionTemplateForPhotoContactIdWithMessages:(id)messages cdInteraction:(id)interaction reason:(id)reason reasonType:(id)type
{
  v51 = *MEMORY[0x1E69E9840];
  messagesCopy = messages;
  interactionCopy = interaction;
  reasonCopy = reason;
  typeCopy = type;
  sender = [interactionCopy sender];
  personId = [sender personId];
  v13 = [personId isEqualToString:messagesCopy];

  if (v13)
  {
    sender2 = [interactionCopy sender];
    identifier = [sender2 identifier];

    sender3 = [interactionCopy sender];
    recipients = sender3;
LABEL_13:
    type = [sender3 type];
  }

  else
  {
    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    recipients = [interactionCopy recipients];
    v18 = [recipients countByEnumeratingWithState:&v41 objects:v50 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v42;
      while (2)
      {
        for (i = 0; i != v19; ++i)
        {
          if (*v42 != v20)
          {
            objc_enumerationMutation(recipients);
          }

          v22 = *(*(&v41 + 1) + 8 * i);
          personId2 = [v22 personId];
          v24 = [personId2 isEqualToString:messagesCopy];

          if (v24)
          {
            identifier = [v22 identifier];
            sender3 = v22;
            goto LABEL_13;
          }
        }

        v19 = [recipients countByEnumeratingWithState:&v41 objects:v50 count:16];
        if (v19)
        {
          continue;
        }

        break;
      }
    }

    identifier = 0;
    type = 0;
  }

  if (!identifier)
  {
    v32 = 0;
    goto LABEL_27;
  }

  v37 = interactionCopy;
  v26 = [_PSSuggestionTemplate alloc];
  v38 = +[_PSConstants mobileMessagesBundleId];
  uUID = [MEMORY[0x1E696AFB0] UUID];
  uUIDString = [uUID UUIDString];
  v49 = messagesCopy;
  v28 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v49 count:1];
  v29 = type != 2;
  if (type == 2)
  {
    v48 = identifier;
    v31 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v48 count:1];
LABEL_21:
    v30 = 0;
    goto LABEL_22;
  }

  if (type != 1)
  {
    v29 = 0;
    v31 = 0;
    goto LABEL_21;
  }

  v47 = identifier;
  v30 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v47 count:1];
  v31 = 0;
LABEL_22:
  v45 = messagesCopy;
  v46 = identifier;
  v33 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v46 forKeys:&v45 count:1];
  v32 = [(_PSSuggestionTemplate *)v26 initWithBundleID:v38 interactionRecipients:uUIDString image:0 groupName:0 recipientContactIDs:v28 recipientEmailAddresses:v31 recipientPhoneNumbers:v30 recipientDisplayNames:0 contactIdToHandleMapping:v33 reason:reasonCopy reasonType:typeCopy];

  if (v29)
  {
  }

  if (type == 2)
  {
  }

  interactionCopy = v37;
LABEL_27:

  v34 = *MEMORY[0x1E69E9840];

  return v32;
}

+ (void)peopleInSharedPhotoAttachments:(uint64_t)a1 forBundleID:(NSObject *)a2 shouldProcessPicturesLive:shouldUseVIPModel:withTraceID:withSpanID:shouldUseMDID:withCompletion:.cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_1B5ED1000, a2, OS_LOG_TYPE_ERROR, "appRecord lookup failed with error: %@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

+ (void)cancelRequestWithToken:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138543362;
  v4 = a1;
  _os_log_fault_impl(&dword_1B5ED1000, a2, OS_LOG_TYPE_FAULT, "unexpected cancel token (not array): %{public}@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

+ (void)cancelRequestWithToken:(uint64_t)a1 .cold.2(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138543362;
  v4 = a1;
  _os_log_fault_impl(&dword_1B5ED1000, a2, OS_LOG_TYPE_FAULT, "unexpected cancel token (some items are not NSNumber): %{public}@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

@end