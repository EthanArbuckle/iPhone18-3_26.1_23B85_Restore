@interface _PSMediaAnalysisProcessingTask
+ (id)interactionStore;
- (BOOL)skipAttachmentProcessing:(id)processing;
- (BOOL)updatePlistWithDict:(id)dict;
- (_PSMediaAnalysisProcessingTask)initWithBookmark:(id)bookmark interactionStore:(id)store;
- (id)updatedAttachmentsWithPeopleIdForAttachments:(id)attachments forBundleID:(id)d;
- (void)dealloc;
- (void)executeTaskWithCompletionHandler:(id)handler;
- (void)saveBookmark;
@end

@implementation _PSMediaAnalysisProcessingTask

- (_PSMediaAnalysisProcessingTask)initWithBookmark:(id)bookmark interactionStore:(id)store
{
  bookmarkCopy = bookmark;
  storeCopy = store;
  v25.receiver = self;
  v25.super_class = _PSMediaAnalysisProcessingTask;
  v9 = [(_PSMediaAnalysisProcessingTask *)&v25 init];
  if (v9)
  {
    v10 = objc_alloc(MEMORY[0x1E696B0B8]);
    v11 = [v10 initWithMachServiceName:*MEMORY[0x1E6997A00] options:4096];
    connection = v9->_connection;
    v9->_connection = v11;

    v13 = _CDInteractionNSXPCInterface();
    [(NSXPCConnection *)v9->_connection setRemoteObjectInterface:v13];

    if (storeCopy)
    {
      v14 = storeCopy;
    }

    else
    {
      v14 = +[_PSMediaAnalysisProcessingTask interactionStore];
    }

    interactionStore = v9->_interactionStore;
    v9->_interactionStore = v14;

    v31 = 0;
    v32 = &v31;
    v33 = 0x2050000000;
    v16 = getMADPersonIdentificationRequestClass_softClass_1;
    v34 = getMADPersonIdentificationRequestClass_softClass_1;
    if (!getMADPersonIdentificationRequestClass_softClass_1)
    {
      v26 = MEMORY[0x1E69E9820];
      v27 = 3221225472;
      v28 = __getMADPersonIdentificationRequestClass_block_invoke_1;
      v29 = &unk_1E7C23BF0;
      v30 = &v31;
      MediaAnalysisServicesLibraryCore_1();
      Class = objc_getClass("MADPersonIdentificationRequest");
      *(v30[1] + 24) = Class;
      getMADPersonIdentificationRequestClass_softClass_1 = *(v30[1] + 24);
      v16 = v32[3];
    }

    v18 = v16;
    _Block_object_dispose(&v31, 8);
    v19 = objc_opt_new();
    personIdentificationRequest = v9->_personIdentificationRequest;
    v9->_personIdentificationRequest = v19;

    [(MADPersonIdentificationRequest *)v9->_personIdentificationRequest setMaximumFaceCount:4];
    [(MADPersonIdentificationRequest *)v9->_personIdentificationRequest setAllowOnDemand:1];
    [(MADPersonIdentificationRequest *)v9->_personIdentificationRequest setAllowUnverifiedIdentity:1];
    objc_storeStrong(&v9->_bookmark, bookmark);
    peopleDirectory = [MEMORY[0x1E6997910] peopleDirectory];
    v22 = [peopleDirectory stringByAppendingPathComponent:@"MediaAnalysisProcessing"];
    mediaAnalysisConfigurationPath = v9->_mediaAnalysisConfigurationPath;
    v9->_mediaAnalysisConfigurationPath = v22;

    [(NSXPCConnection *)v9->_connection resume];
  }

  return v9;
}

+ (id)interactionStore
{
  v2 = MEMORY[0x1E69978F8];
  defaultDatabaseDirectory = [MEMORY[0x1E69978F8] defaultDatabaseDirectory];
  v4 = [v2 storeWithDirectory:defaultDatabaseDirectory readOnly:1];

  [v4 setReadConcurrently:1];

  return v4;
}

- (void)dealloc
{
  [(NSXPCConnection *)self->_connection invalidate];
  v3.receiver = self;
  v3.super_class = _PSMediaAnalysisProcessingTask;
  [(_PSMediaAnalysisProcessingTask *)&v3 dealloc];
}

- (void)executeTaskWithCompletionHandler:(id)handler
{
  v40[1] = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  v30 = [(NSXPCConnection *)self->_connection synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_45];
  v27 = [MEMORY[0x1E696AE18] predicateWithFormat:@"startDate > %@ AND direction == %@ AND mechanism IN %@", self->_bookmark, &unk_1F2D8BDC0, &unk_1F2D8C648];
  interactionStore = self->_interactionStore;
  v5 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"startDate" ascending:1];
  v40[0] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v40 count:1];
  v29 = [(_CDInteractionStore *)interactionStore queryInteractionsUsingPredicate:v27 sortDescriptors:v6 limit:-1 offset:0 error:0];

  v7 = [v29 count] == 0;
  v8 = +[_PSLogging mediaAnalysisChannel];
  v9 = v8;
  if (v7)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      bookmark = self->_bookmark;
      *buf = 138543362;
      *&buf[4] = bookmark;
      _os_log_impl(&dword_1B5ED1000, v9, OS_LOG_TYPE_DEFAULT, "No interactions to process for %{public}@-now. Returning.", buf, 0xCu);
    }

    date = [MEMORY[0x1E695DF00] date];
    v25 = self->_bookmark;
    self->_bookmark = date;

    [(_PSMediaAnalysisProcessingTask *)self saveBookmark];
    goto LABEL_27;
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v10 = [v29 count];
    v11 = self->_bookmark;
    *buf = 134218242;
    *&buf[4] = v10;
    *&buf[12] = 2114;
    *&buf[14] = v11;
    _os_log_impl(&dword_1B5ED1000, v9, OS_LOG_TYPE_INFO, "Fetched %tu interactions for media analysis (Interval: %{public}@ - now)", buf, 0x16u);
  }

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v12 = v29;
  v13 = [v12 countByEnumeratingWithState:&v32 objects:v39 count:16];
  if (!v13)
  {
    goto LABEL_26;
  }

  v14 = *v33;
  while (2)
  {
    for (i = 0; i != v13; ++i)
    {
      if (*v33 != v14)
      {
        objc_enumerationMutation(v12);
      }

      v16 = *(*(&v32 + 1) + 8 * i);
      if (([v16 forcePersistInteraction] & 1) == 0)
      {
        [v16 setForcePersistInteraction:1];
      }

      attachments = [v16 attachments];
      if (![(_PSMediaAnalysisProcessingTask *)self skipAttachmentProcessing:attachments])
      {
        if (![(_PSMediaAnalysisProcessingTask *)self attachmentsContainsPersonId:attachments])
        {
          bundleId = [v16 bundleId];
          v19 = [(_PSMediaAnalysisProcessingTask *)self updatedAttachmentsWithPeopleIdForAttachments:attachments forBundleID:bundleId];

          if (!v19 || ![v19 count])
          {

            goto LABEL_19;
          }

          [v16 setAttachments:v19];
        }

        *buf = 0;
        *&buf[8] = buf;
        *&buf[16] = 0x2020000000;
        v38 = 0;
        v36 = v16;
        v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v36 count:1];
        v31[0] = MEMORY[0x1E69E9820];
        v31[1] = 3221225472;
        v31[2] = __67___PSMediaAnalysisProcessingTask_executeTaskWithCompletionHandler___block_invoke_239;
        v31[3] = &unk_1E7C27010;
        v31[4] = v16;
        v31[5] = buf;
        [v30 updateInteractions:v20 enforceDataLimits:0 enforcePrivacy:0 reply:v31];

        if ((*(*&buf[8] + 24) & 1) == 0)
        {
          _Block_object_dispose(buf, 8);

          goto LABEL_26;
        }

        startDate = [v16 startDate];
        v22 = self->_bookmark;
        self->_bookmark = startDate;

        [(_PSMediaAnalysisProcessingTask *)self saveBookmark];
        _Block_object_dispose(buf, 8);
      }

LABEL_19:
    }

    v13 = [v12 countByEnumeratingWithState:&v32 objects:v39 count:16];
    if (v13)
    {
      continue;
    }

    break;
  }

LABEL_26:

LABEL_27:
  if (handlerCopy)
  {
    handlerCopy[2]();
  }

  v26 = *MEMORY[0x1E69E9840];
}

- (id)updatedAttachmentsWithPeopleIdForAttachments:(id)attachments forBundleID:(id)d
{
  v125 = *MEMORY[0x1E69E9840];
  attachmentsCopy = attachments;
  dCopy = d;
  v7 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v90 = objc_opt_new();
  v83 = objc_opt_new();
  v111 = 0;
  v77 = dCopy;
  v79 = [objc_alloc(MEMORY[0x1E69635F8]) initWithBundleIdentifier:dCopy allowPlaceholder:0 error:&v111];
  v78 = v111;
  v8 = v79;
  if (!v79)
  {
    v9 = +[_PSLogging mediaAnalysisChannel];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [(_PSMediaAnalysisProcessingTask *)v78 updatedAttachmentsWithPeopleIdForAttachments:v9 forBundleID:v10, v11, v12, v13, v14, v15];
    }

    v8 = 0;
  }

  developerType = [v8 developerType];
  v17 = +[_PSLogging mediaAnalysisChannel];
  if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
  {
    v18 = [MEMORY[0x1E696AD98] numberWithBool:developerType == 1];
    *buf = 138412546;
    *&buf[4] = attachmentsCopy;
    *&buf[12] = 2112;
    *&buf[14] = v18;
    _os_log_impl(&dword_1B5ED1000, v17, OS_LOG_TYPE_INFO, "Attachments %@, isFirstParty: %@", buf, 0x16u);
  }

  v109 = 0u;
  v110 = 0u;
  v107 = 0u;
  v108 = 0u;
  obj = attachmentsCopy;
  v85 = [obj countByEnumeratingWithState:&v107 objects:v121 count:16];
  if (!v85)
  {

    goto LABEL_69;
  }

  v76 = 0;
  v84 = *v108;
  do
  {
    for (i = 0; i != v85; ++i)
    {
      if (*v108 != v84)
      {
        objc_enumerationMutation(obj);
      }

      v19 = *(*(&v107 + 1) + 8 * i);
      [v90 addObject:v19];
      photoLocalIdentifier = [v19 photoLocalIdentifier];
      v21 = photoLocalIdentifier == 0;

      if (!v21)
      {
        photoLocalIdentifier2 = [v19 photoLocalIdentifier];
        v23 = [v83 containsObject:photoLocalIdentifier2];

        if ((v23 & 1) == 0)
        {
          contentURL = [v19 contentURL];
          if (contentURL && ([v19 contentURL], v25 = objc_claimAutoreleasedReturnValue(), v26 = objc_msgSend(v25, "isFileURL"), v25, contentURL, v26))
          {
            v27 = +[_PSLogging mediaAnalysisChannel];
            if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
            {
              *buf = 0;
              _os_log_impl(&dword_1B5ED1000, v27, OS_LOG_TYPE_INFO, "Fetching attachment info from fileURL", buf, 2u);
            }

            service = [getMADServiceClass() service];
            personIdentificationRequest = self->_personIdentificationRequest;
            v29 = [MEMORY[0x1E695DEC8] arrayWithObjects:&personIdentificationRequest count:1];
            contentURL2 = [v19 contentURL];
            photoLocalIdentifier3 = [v19 photoLocalIdentifier];
            v106 = 0;
            v32 = [service performRequests:v29 onImageURL:contentURL2 withIdentifier:photoLocalIdentifier3 error:&v106];
            v81 = v106;

            if ((v32 & 1) == 0)
            {
              goto LABEL_19;
            }

LABEL_28:
            photoLocalIdentifier4 = [v19 photoLocalIdentifier];

            if (photoLocalIdentifier4)
            {
              photoLocalIdentifier5 = [v19 photoLocalIdentifier];
              [v83 addObject:photoLocalIdentifier5];
            }

            results = [(MADPersonIdentificationRequest *)self->_personIdentificationRequest results];
            v48 = +[_PSLogging mediaAnalysisChannel];
            if (os_log_type_enabled(v48, OS_LOG_TYPE_INFO))
            {
              photoLocalIdentifier6 = [v19 photoLocalIdentifier];
              v50 = [results count];
              *buf = 138412546;
              *&buf[4] = photoLocalIdentifier6;
              *&buf[12] = 2048;
              *&buf[14] = v50;
              _os_log_impl(&dword_1B5ED1000, v48, OS_LOG_TYPE_INFO, "For PhotoId: %@, fetched %tu photo results", buf, 0x16u);
            }

            v103 = 0u;
            v104 = 0u;
            v101 = 0u;
            v102 = 0u;
            oslog = results;
            v89 = [oslog countByEnumeratingWithState:&v101 objects:v118 count:16];
            if (v89)
            {
              v88 = *v102;
              do
              {
                v51 = 0;
                do
                {
                  if (*v102 != v88)
                  {
                    v52 = v51;
                    objc_enumerationMutation(oslog);
                    v51 = v52;
                  }

                  v91 = v51;
                  v92 = *(*(&v101 + 1) + 8 * v51);
                  v53 = +[_PSLogging mediaAnalysisChannel];
                  if (os_log_type_enabled(v53, OS_LOG_TYPE_INFO))
                  {
                    photoLocalIdentifier7 = [v19 photoLocalIdentifier];
                    resultItems = [v92 resultItems];
                    v56 = [resultItems count];
                    *buf = 138412546;
                    *&buf[4] = photoLocalIdentifier7;
                    *&buf[12] = 2048;
                    *&buf[14] = v56;
                    _os_log_impl(&dword_1B5ED1000, v53, OS_LOG_TYPE_INFO, "PhotoId: %@ has %tu personId", buf, 0x16u);
                  }

                  v99 = 0u;
                  v100 = 0u;
                  v97 = 0u;
                  v98 = 0u;
                  resultItems2 = [v92 resultItems];
                  v58 = [resultItems2 countByEnumeratingWithState:&v97 objects:v117 count:16];
                  if (v58)
                  {
                    v59 = *v98;
                    do
                    {
                      for (j = 0; j != v58; ++j)
                      {
                        if (*v98 != v59)
                        {
                          objc_enumerationMutation(resultItems2);
                        }

                        personIdentifier = [*(*(&v97 + 1) + 8 * j) personIdentifier];
                        if (personIdentifier)
                        {
                          [v7 addObject:personIdentifier];
                          v62 = +[_PSLogging mediaAnalysisChannel];
                          if (os_log_type_enabled(v62, OS_LOG_TYPE_INFO))
                          {
                            photoLocalIdentifier8 = [v19 photoLocalIdentifier];
                            *buf = 138412547;
                            *&buf[4] = photoLocalIdentifier8;
                            *&buf[12] = 2113;
                            *&buf[14] = personIdentifier;
                            _os_log_impl(&dword_1B5ED1000, v62, OS_LOG_TYPE_INFO, "PhotoId: %@, adding personIdentifier: %{private}@", buf, 0x16u);
                          }
                        }
                      }

                      v58 = [resultItems2 countByEnumeratingWithState:&v97 objects:v117 count:16];
                    }

                    while (v58);
                  }

                  v51 = v91 + 1;
                }

                while (v91 + 1 != v89);
                v89 = [oslog countByEnumeratingWithState:&v101 objects:v118 count:16];
              }

              while (v89);
            }

            v64 = +[_PSLogging mediaAnalysisChannel];
            if (os_log_type_enabled(v64, OS_LOG_TYPE_INFO))
            {
              photoLocalIdentifier9 = [v19 photoLocalIdentifier];
              *buf = 138412546;
              *&buf[4] = photoLocalIdentifier9;
              *&buf[12] = 2112;
              *&buf[14] = v7;
              _os_log_impl(&dword_1B5ED1000, v64, OS_LOG_TYPE_INFO, "PhotoId: %@, asset identifiers %@", buf, 0x16u);
            }

            if ([v7 count])
            {
              v95 = 0u;
              v96 = 0u;
              v93 = 0u;
              v94 = 0u;
              v66 = v7;
              v67 = [v66 countByEnumeratingWithState:&v93 objects:v116 count:16];
              if (v67)
              {
                v68 = *v94;
                do
                {
                  for (k = 0; k != v67; ++k)
                  {
                    if (*v94 != v68)
                    {
                      objc_enumerationMutation(v66);
                    }

                    v70 = *(*(&v93 + 1) + 8 * k);
                    v71 = [v19 copy];
                    [v71 setPersonInPhoto:v70];
                    photoLocalIdentifier10 = [v19 photoLocalIdentifier];
                    [v71 setPhotoLocalIdentifier:photoLocalIdentifier10];

                    [v90 addObject:v71];
                  }

                  v67 = [v66 countByEnumeratingWithState:&v93 objects:v116 count:16];
                }

                while (v67);
              }

              v76 = 1;
            }
          }

          else
          {
            photoLocalIdentifier11 = [v19 photoLocalIdentifier];

            if (!photoLocalIdentifier11)
            {
              continue;
            }

            v36 = +[_PSLogging mediaAnalysisChannel];
            if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
            {
              photoLocalIdentifier12 = [v19 photoLocalIdentifier];
              *buf = 138412290;
              *&buf[4] = photoLocalIdentifier12;
              _os_log_impl(&dword_1B5ED1000, v36, OS_LOG_TYPE_INFO, "Fetching attachment info from photoLocalIdentifier %@", buf, 0xCu);
            }

            service2 = [getMADServiceClass() service];
            v119 = self->_personIdentificationRequest;
            v39 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v119 count:1];
            photoLocalIdentifier13 = [v19 photoLocalIdentifier];
            v112 = 0;
            v113 = &v112;
            v114 = 0x2050000000;
            v41 = getPHPhotoLibraryClass_softClass_2;
            v115 = getPHPhotoLibraryClass_softClass_2;
            if (!getPHPhotoLibraryClass_softClass_2)
            {
              *buf = MEMORY[0x1E69E9820];
              *&buf[8] = 3221225472;
              *&buf[16] = __getPHPhotoLibraryClass_block_invoke_2;
              v123 = &unk_1E7C23BF0;
              v124 = &v112;
              __getPHPhotoLibraryClass_block_invoke_2(buf);
              v41 = v113[3];
            }

            v42 = v41;
            _Block_object_dispose(&v112, 8);
            systemPhotoLibraryURL = [v41 systemPhotoLibraryURL];
            v105 = 0;
            v44 = [service2 performRequests:v39 assetLocalIdentifier:photoLocalIdentifier13 photoLibraryURL:systemPhotoLibraryURL error:&v105];
            v81 = v105;

            if (v44)
            {
              goto LABEL_28;
            }

LABEL_19:
            if (!v81)
            {
              continue;
            }

            oslog = +[_PSLogging mediaAnalysisChannel];
            if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
            {
              photoLocalIdentifier14 = [v19 photoLocalIdentifier];
              localizedDescription = [v81 localizedDescription];
              *buf = 138412546;
              *&buf[4] = photoLocalIdentifier14;
              *&buf[12] = 2112;
              *&buf[14] = localizedDescription;
              _os_log_error_impl(&dword_1B5ED1000, oslog, OS_LOG_TYPE_ERROR, "PhotoId: %@, Media Analysis returned an error %@", buf, 0x16u);
            }
          }

          continue;
        }
      }
    }

    v85 = [obj countByEnumeratingWithState:&v107 objects:v121 count:16];
  }

  while (v85);

  if (v76)
  {
    v73 = v90;
    goto LABEL_70;
  }

LABEL_69:
  v73 = MEMORY[0x1E695E0F0];
LABEL_70:

  v74 = *MEMORY[0x1E69E9840];

  return v73;
}

- (BOOL)skipAttachmentProcessing:(id)processing
{
  v19 = *MEMORY[0x1E69E9840];
  processingCopy = processing;
  v4 = processingCopy;
  if (processingCopy && [processingCopy count])
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v5 = v4;
    v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v15;
      while (2)
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v15 != v8)
          {
            objc_enumerationMutation(v5);
          }

          photoLocalIdentifier = [*(*(&v14 + 1) + 8 * i) photoLocalIdentifier];

          if (photoLocalIdentifier)
          {
            v11 = 0;
            goto LABEL_14;
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
        if (v7)
        {
          continue;
        }

        break;
      }
    }

    v11 = 1;
LABEL_14:
  }

  else
  {
    v11 = 1;
  }

  v12 = *MEMORY[0x1E69E9840];
  return v11;
}

- (void)saveBookmark
{
  v10 = *MEMORY[0x1E69E9840];
  v9 = HIDWORD(*self);
  OUTLINED_FUNCTION_0_2(&dword_1B5ED1000, a2, a3, "Could not update plist file for bookmark: %@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

- (BOOL)updatePlistWithDict:(id)dict
{
  v9 = 0;
  v4 = [MEMORY[0x1E696AE40] dataWithPropertyList:dict format:200 options:0 error:&v9];
  v5 = v9;
  if (v4)
  {
    v6 = [v4 writeToFile:self->_mediaAnalysisConfigurationPath atomically:1];
  }

  else
  {
    v7 = +[_PSLogging mediaAnalysisChannel];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [(_PSMediaAnalysisProcessingTask *)v5 updatePlistWithDict:v7];
    }

    v6 = 0;
  }

  return v6;
}

- (void)updatedAttachmentsWithPeopleIdForAttachments:(uint64_t)a3 forBundleID:(uint64_t)a4 .cold.1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_2(&dword_1B5ED1000, a2, a3, "appRecord lookup failed with error: %@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

- (void)updatePlistWithDict:(void *)a1 .cold.1(void *a1, NSObject *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = [a1 localizedDescription];
  v5 = 138412290;
  v6 = v3;
  _os_log_error_impl(&dword_1B5ED1000, a2, OS_LOG_TYPE_ERROR, "Error encountered while updating plist: %@", &v5, 0xCu);

  v4 = *MEMORY[0x1E69E9840];
}

@end