void sub_1B5F8D254(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B5F8F858(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getEKEventStoreClass_block_invoke_0(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  if (!EventKitLibraryCore_frameworkLibrary_0)
  {
    EventKitLibraryCore_frameworkLibrary_0 = _sl_dlopen();
  }

  result = objc_getClass("EKEventStore");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getEKEventStoreClass_softClass_0 = *(*(*(a1 + 32) + 8) + 24);
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __EventKitLibraryCore_block_invoke_0(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  EventKitLibraryCore_frameworkLibrary_0 = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

Class __getCNContactStoreClass_block_invoke_8(uint64_t a1)
{
  ContactsLibraryCore_9();
  result = objc_getClass("CNContactStore");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCNContactStoreClass_softClass_8 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __ContactsLibraryCore_block_invoke_16(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  ContactsLibraryCore_frameworkLibrary_16 = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

Class __getCNContactFormatterClass_block_invoke_6(uint64_t a1)
{
  ContactsLibraryCore_9();
  result = objc_getClass("CNContactFormatter");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCNContactFormatterClass_softClass_6 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getCNContactIdentifierKeySymbolLoc_block_invoke_8(uint64_t a1)
{
  v2 = ContactsLibrary_8();
  result = dlsym(v2, "CNContactIdentifierKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCNContactIdentifierKeySymbolLoc_ptr_8 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t ContactsLibrary_8()
{
  v0 = ContactsLibraryCore_9();
  if (!v0)
  {
    v2 = abort_report_np();
    free(v2);
  }

  return v0;
}

void *__getCNContactPhoneNumbersKeySymbolLoc_block_invoke_7(uint64_t a1)
{
  v2 = ContactsLibrary_8();
  result = dlsym(v2, "CNContactPhoneNumbersKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCNContactPhoneNumbersKeySymbolLoc_ptr_7 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getCNContactEmailAddressesKeySymbolLoc_block_invoke_7(uint64_t a1)
{
  v2 = ContactsLibrary_8();
  result = dlsym(v2, "CNContactEmailAddressesKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCNContactEmailAddressesKeySymbolLoc_ptr_7 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class __getTRIClientClass_block_invoke_1(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  if (!TrialLibraryCore_frameworkLibrary_1)
  {
    TrialLibraryCore_frameworkLibrary_1 = _sl_dlopen();
  }

  result = objc_getClass("TRIClient");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getTRIClientClass_softClass_1 = *(*(*(a1 + 32) + 8) + 24);
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __TrialLibraryCore_block_invoke_1(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  TrialLibraryCore_frameworkLibrary_1 = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1B5F91C14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_0_10(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, a5, 0xCu);
}

id _PSSuggestionKey(void *a1, void *a2)
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = MEMORY[0x1E696AD98];
  v5 = a2;
  v6 = [v4 numberWithUnsignedInteger:{objc_msgSend(a1, "hash")}];
  v7 = MEMORY[0x1E696AD98];
  v8 = [v5 hash];

  v9 = [v7 numberWithUnsignedInteger:v8];
  v10 = [v3 stringWithFormat:@"%@:%@", v6, v9];

  return v10;
}

id _PSIntentForSelectedSuggestionWithContextExtensionUUID(void *a1, void *a2, void *a3, void *a4)
{
  v78 = *MEMORY[0x1E69E9840];
  v7 = a1;
  v8 = a2;
  v9 = a3;
  v10 = a4;
  v11 = +[_PSLogging shareExtensionChannel];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    *buf = 138413058;
    v71 = v7;
    v72 = 2112;
    v73 = v8;
    v74 = 2112;
    v75 = v9;
    v76 = 2112;
    v77 = v10;
    _os_log_impl(&dword_1B5ED1000, v11, OS_LOG_TYPE_INFO, "Fetcheding intent for applicationBundleID: %@, extensionBundleID: %@, extensionContextUUID: %@, supportedIntents: %@", buf, 0x2Au);
  }

  v12 = 0;
  if (v7 && v8 && v9)
  {
    if ([v10 count])
    {
      v13 = [MEMORY[0x1E6997A60] userContext];
      v14 = [MEMORY[0x1E6997A78] keyPathWithKey:@"/sharesheet/selectedSuggestion"];
      v15 = [v13 objectForKeyedSubscript:v14];
      [v13 setObject:0 forKeyedSubscript:v14];
      v16 = [v15 objectForKeyedSubscript:@"bundleID"];
      if ([v16 isEqualToString:v7])
      {
        v64 = v14;
        v17 = [v15 objectForKeyedSubscript:@"derivedIntentIdentifier"];
        if (v17)
        {
          v61 = v16;
          v62 = v15;
          v63 = v13;
          v65 = [MEMORY[0x1E69979A0] knowledgeStore];
          v18 = [MEMORY[0x1E69979D0] startDateSortDescriptorAscending:0];
          v19 = MEMORY[0x1E69979D0];
          v20 = [MEMORY[0x1E6997990] derivedIntentIdentifier];
          v60 = v17;
          v21 = [v19 predicateForObjectsWithMetadataKey:v20 andStringValue:v17];

          v22 = MEMORY[0x1E69979D0];
          v23 = [MEMORY[0x1E69979E0] intentsSourceID];
          v24 = [v22 predicateForEventsWithSourceID:v23 bundleID:v7];

          v25 = MEMORY[0x1E696AB28];
          v57 = v24;
          v58 = v21;
          v69[0] = v21;
          v69[1] = v24;
          v26 = [MEMORY[0x1E695DEC8] arrayWithObjects:v69 count:2];
          v27 = [v25 andPredicateWithSubpredicates:v26];

          v28 = MEMORY[0x1E6997968];
          v29 = [MEMORY[0x1E69979E8] appIntentsStream];
          v68 = v29;
          v30 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v68 count:1];
          v59 = v18;
          v67 = v18;
          v31 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v67 count:1];
          v56 = v27;
          v32 = [v28 eventQueryWithPredicate:v27 eventStreams:v30 offset:0 limit:1 sortDescriptors:v31];

          v33 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"_PSSuggestion.m"];
          v34 = [v33 stringByAppendingFormat:@":%d", 74];
          [v32 setClientName:v34];

          [v32 setTracker:&__block_literal_global_40];
          [v32 setExecuteConcurrently:1];
          v66 = 0;
          v55 = v32;
          v35 = [v65 executeQuery:v32 error:&v66];
          v53 = v66;
          v54 = v35;
          if (v53)
          {
            +[_PSLogging shareExtensionChannel];
            v52 = v14 = v64;
            if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
            {
              _PSIntentForSelectedSuggestionWithContextExtensionUUID_cold_2();
            }

            v12 = 0;
            v15 = v62;
            v13 = v63;
            v36 = v60;
            v16 = v61;
          }

          else
          {
            v52 = [v35 firstObject];
            v38 = [v52 interaction];
            v39 = [v38 intent];

            v14 = v64;
            v51 = v39;
            if (v39)
            {
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v40 = MEMORY[0x1E696E9E8];
                v41 = v39;
                v49 = [v40 alloc];
                v42 = [v41 recipients];
                v43 = [v41 speakableGroupName];
                v44 = [v41 conversationIdentifier];

                v12 = [v49 initWithRecipients:v42 outgoingMessageType:0 content:0 speakableGroupName:v43 conversationIdentifier:v44 serviceName:0 sender:0 attachments:0];
              }

              else
              {
                v12 = 0;
              }

              v15 = v62;
              v13 = v63;
              v16 = v61;
              v46 = +[_PSLogging shareExtensionChannel];
              if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412546;
                v71 = v12;
                v72 = 2112;
                v73 = v7;
                _os_log_impl(&dword_1B5ED1000, v46, OS_LOG_TYPE_DEFAULT, "Fetched share extension intent %@ for applicationBundleID %@", buf, 0x16u);
              }

              v45 = v46;
              v36 = v60;
            }

            else
            {
              v50 = +[_PSLogging shareExtensionChannel];
              if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
              {
                v36 = v60;
                _PSIntentForSelectedSuggestionWithContextExtensionUUID_cold_3();
                v45 = v50;
                v12 = 0;
                v15 = v62;
                v13 = v63;
                v16 = v61;
              }

              else
              {
                v12 = 0;
                v15 = v62;
                v13 = v63;
                v36 = v60;
                v16 = v61;
                v45 = v50;
              }
            }
          }
        }

        else
        {
          v37 = +[_PSLogging shareExtensionChannel];
          v65 = v37;
          if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
          {
            *buf = 138412802;
            v71 = v7;
            v72 = 2112;
            v73 = v8;
            v74 = 2112;
            v75 = v9;
            _os_log_impl(&dword_1B5ED1000, v37, OS_LOG_TYPE_INFO, "No sharesheet selectedSuggestion for application %@ with share extension %@, extensionContextUUID: %@", buf, 0x20u);
          }

          v12 = 0;
          v36 = 0;
          v14 = v64;
        }
      }

      else
      {
        v36 = +[_PSLogging shareExtensionChannel];
        if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
        {
          _PSIntentForSelectedSuggestionWithContextExtensionUUID_cold_1();
        }

        v12 = 0;
      }
    }

    else
    {
      v12 = 0;
    }
  }

  v47 = *MEMORY[0x1E69E9840];

  return v12;
}

Class __getBMStoreConfigClass_block_invoke_0(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  if (!BiomeStorageLibraryCore_frameworkLibrary_0)
  {
    BiomeStorageLibraryCore_frameworkLibrary_0 = _sl_dlopen();
  }

  result = objc_getClass("BMStoreConfig");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getBMStoreConfigClass_softClass_0 = *(*(*(a1 + 32) + 8) + 24);
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __BiomeStorageLibraryCore_block_invoke_0(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  BiomeStorageLibraryCore_frameworkLibrary_0 = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

Class __getBMStoreStreamClass_block_invoke_0(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  if (!BiomeStreamsLibraryCore_frameworkLibrary_2)
  {
    BiomeStreamsLibraryCore_frameworkLibrary_2 = _sl_dlopen();
  }

  result = objc_getClass("BMStoreStream");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getBMStoreStreamClass_softClass_0 = *(*(*(a1 + 32) + 8) + 24);
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __BiomeStreamsLibraryCore_block_invoke_2(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  BiomeStreamsLibraryCore_frameworkLibrary_2 = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1B5F99770(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B5F99A04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__303(uint64_t a1, uint64_t a2)
{
  result = MEMORY[0x1B8C8C060](*(a2 + 40));
  *(a1 + 40) = result;
  return result;
}

Class __getMADServiceClass_block_invoke_0(uint64_t a1)
{
  MediaAnalysisServicesLibraryCore_0();
  result = objc_getClass("MADService");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMADServiceClass_softClass_0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void MediaAnalysisServicesLibraryCore_0()
{
  v1 = *MEMORY[0x1E69E9840];
  if (!MediaAnalysisServicesLibraryCore_frameworkLibrary_0)
  {
    MediaAnalysisServicesLibraryCore_frameworkLibrary_0 = _sl_dlopen();
  }

  v0 = *MEMORY[0x1E69E9840];
}

uint64_t __MediaAnalysisServicesLibraryCore_block_invoke_0(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  MediaAnalysisServicesLibraryCore_frameworkLibrary_0 = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

Class __getMADPersonIdentificationRequestClass_block_invoke_0(uint64_t a1)
{
  MediaAnalysisServicesLibraryCore_0();
  result = objc_getClass("MADPersonIdentificationRequest");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMADPersonIdentificationRequestClass_softClass_0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class __getPHPhotoLibraryClass_block_invoke_1(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  if (!PhotosLibraryCore_frameworkLibrary_1)
  {
    PhotosLibraryCore_frameworkLibrary_1 = _sl_dlopen();
  }

  result = objc_getClass("PHPhotoLibrary");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getPHPhotoLibraryClass_softClass_1 = *(*(*(a1 + 32) + 8) + 24);
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __PhotosLibraryCore_block_invoke_1(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  PhotosLibraryCore_frameworkLibrary_1 = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1B5F9D25C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getLPLinkMetadataClass_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  if (!LinkPresentationLibraryCore_frameworkLibrary)
  {
    LinkPresentationLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  result = objc_getClass("LPLinkMetadata");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getLPLinkMetadataClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __LinkPresentationLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  LinkPresentationLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

Class __getMLMultiArrayClass_block_invoke_1(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  if (!CoreMLLibraryCore_frameworkLibrary_4)
  {
    CoreMLLibraryCore_frameworkLibrary_4 = _sl_dlopen();
  }

  result = objc_getClass("MLMultiArray");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMLMultiArrayClass_softClass_1 = *(*(*(a1 + 32) + 8) + 24);
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __CoreMLLibraryCore_block_invoke_4(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  CoreMLLibraryCore_frameworkLibrary_4 = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t CAPContactFillerUserEventReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v50 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v50 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v50 & 0x7F) << v5;
        if ((v50 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) > 3)
      {
        switch(v13)
        {
          case 4:
            v33 = 0;
            v34 = 0;
            v16 = 0;
            *(a1 + 32) |= 1u;
            while (1)
            {
              v53 = 0;
              v35 = [a2 position] + 1;
              if (v35 >= [a2 position] && (v36 = objc_msgSend(a2, "position") + 1, v36 <= objc_msgSend(a2, "length")))
              {
                v37 = [a2 data];
                [v37 getBytes:&v53 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v16 |= (v53 & 0x7F) << v33;
              if ((v53 & 0x80) == 0)
              {
                break;
              }

              v33 += 7;
              v20 = v34++ > 8;
              if (v20)
              {
                v21 = 0;
                v22 = &OBJC_IVAR___CAPContactFillerUserEvent__highConfidenceRuleCount;
                goto LABEL_89;
              }
            }

            v22 = &OBJC_IVAR___CAPContactFillerUserEvent__highConfidenceRuleCount;
            goto LABEL_86;
          case 5:
            v43 = 0;
            v44 = 0;
            v16 = 0;
            *(a1 + 32) |= 4u;
            while (1)
            {
              v52 = 0;
              v45 = [a2 position] + 1;
              if (v45 >= [a2 position] && (v46 = objc_msgSend(a2, "position") + 1, v46 <= objc_msgSend(a2, "length")))
              {
                v47 = [a2 data];
                [v47 getBytes:&v52 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v16 |= (v52 & 0x7F) << v43;
              if ((v52 & 0x80) == 0)
              {
                break;
              }

              v43 += 7;
              v20 = v44++ > 8;
              if (v20)
              {
                v21 = 0;
                v22 = &OBJC_IVAR___CAPContactFillerUserEvent__mediumConfidenceRuleCount;
                goto LABEL_89;
              }
            }

            v22 = &OBJC_IVAR___CAPContactFillerUserEvent__mediumConfidenceRuleCount;
LABEL_86:
            if ([a2 hasError])
            {
              v21 = 0;
            }

            else
            {
              v21 = v16;
            }

LABEL_89:
            *(a1 + *v22) = v21;
            goto LABEL_90;
          case 6:
            v23 = 0;
            v24 = 0;
            v16 = 0;
            *(a1 + 32) |= 2u;
            while (1)
            {
              v51 = 0;
              v25 = [a2 position] + 1;
              if (v25 >= [a2 position] && (v26 = objc_msgSend(a2, "position") + 1, v26 <= objc_msgSend(a2, "length")))
              {
                v27 = [a2 data];
                [v27 getBytes:&v51 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v16 |= (v51 & 0x7F) << v23;
              if ((v51 & 0x80) == 0)
              {
                break;
              }

              v23 += 7;
              v20 = v24++ > 8;
              if (v20)
              {
                v21 = 0;
                v22 = &OBJC_IVAR___CAPContactFillerUserEvent__lowConfidenceRuleCount;
                goto LABEL_89;
              }
            }

            v22 = &OBJC_IVAR___CAPContactFillerUserEvent__lowConfidenceRuleCount;
            goto LABEL_86;
        }
      }

      else
      {
        switch(v13)
        {
          case 1:
            v28 = 0;
            v29 = 0;
            v16 = 0;
            while (1)
            {
              v56 = 0;
              v30 = [a2 position] + 1;
              if (v30 >= [a2 position] && (v31 = objc_msgSend(a2, "position") + 1, v31 <= objc_msgSend(a2, "length")))
              {
                v32 = [a2 data];
                [v32 getBytes:&v56 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v16 |= (v56 & 0x7F) << v28;
              if ((v56 & 0x80) == 0)
              {
                break;
              }

              v28 += 7;
              v20 = v29++ > 8;
              if (v20)
              {
                v21 = 0;
                v22 = &OBJC_IVAR___CAPContactFillerUserEvent__textInteractionsSent;
                goto LABEL_89;
              }
            }

            v22 = &OBJC_IVAR___CAPContactFillerUserEvent__textInteractionsSent;
            goto LABEL_86;
          case 2:
            v38 = 0;
            v39 = 0;
            v16 = 0;
            while (1)
            {
              v55 = 0;
              v40 = [a2 position] + 1;
              if (v40 >= [a2 position] && (v41 = objc_msgSend(a2, "position") + 1, v41 <= objc_msgSend(a2, "length")))
              {
                v42 = [a2 data];
                [v42 getBytes:&v55 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v16 |= (v55 & 0x7F) << v38;
              if ((v55 & 0x80) == 0)
              {
                break;
              }

              v38 += 7;
              v20 = v39++ > 8;
              if (v20)
              {
                v21 = 0;
                v22 = &OBJC_IVAR___CAPContactFillerUserEvent__textInteractionsReceived;
                goto LABEL_89;
              }
            }

            v22 = &OBJC_IVAR___CAPContactFillerUserEvent__textInteractionsReceived;
            goto LABEL_86;
          case 3:
            v14 = 0;
            v15 = 0;
            v16 = 0;
            while (1)
            {
              v54 = 0;
              v17 = [a2 position] + 1;
              if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
              {
                v19 = [a2 data];
                [v19 getBytes:&v54 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v16 |= (v54 & 0x7F) << v14;
              if ((v54 & 0x80) == 0)
              {
                break;
              }

              v14 += 7;
              v20 = v15++ > 8;
              if (v20)
              {
                v21 = 0;
                v22 = &OBJC_IVAR___CAPContactFillerUserEvent__shareInteractionsSent;
                goto LABEL_89;
              }
            }

            v22 = &OBJC_IVAR___CAPContactFillerUserEvent__shareInteractionsSent;
            goto LABEL_86;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_90:
      v48 = [a2 position];
    }

    while (v48 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void sub_1B5FA5D38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getCNHandleStringClassifierClass_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  if (!ContactsFoundationLibraryCore_frameworkLibrary)
  {
    ContactsFoundationLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  result = objc_getClass("CNHandleStringClassifier");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCNHandleStringClassifierClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __ContactsFoundationLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  ContactsFoundationLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1B5FA67A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getMADServiceClass()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2050000000;
  v0 = getMADServiceClass_softClass_1;
  v6 = getMADServiceClass_softClass_1;
  if (!getMADServiceClass_softClass_1)
  {
    MediaAnalysisServicesLibraryCore_1();
    v4[3] = objc_getClass("MADService");
    getMADServiceClass_softClass_1 = v4[3];
    v0 = v4[3];
  }

  v1 = v0;
  _Block_object_dispose(&v3, 8);

  return v1;
}

void sub_1B5FA7AB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getMADPersonIdentificationRequestClass_block_invoke_1(uint64_t a1)
{
  MediaAnalysisServicesLibraryCore_1();
  result = objc_getClass("MADPersonIdentificationRequest");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMADPersonIdentificationRequestClass_softClass_1 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void MediaAnalysisServicesLibraryCore_1()
{
  v1 = *MEMORY[0x1E69E9840];
  if (!MediaAnalysisServicesLibraryCore_frameworkLibrary_1)
  {
    MediaAnalysisServicesLibraryCore_frameworkLibrary_1 = _sl_dlopen();
  }

  v0 = *MEMORY[0x1E69E9840];
}

uint64_t __MediaAnalysisServicesLibraryCore_block_invoke_1(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  MediaAnalysisServicesLibraryCore_frameworkLibrary_1 = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

Class __getMADServiceClass_block_invoke_1(uint64_t a1)
{
  MediaAnalysisServicesLibraryCore_1();
  result = objc_getClass("MADService");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMADServiceClass_softClass_1 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class __getPHPhotoLibraryClass_block_invoke_2(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  if (!PhotosLibraryCore_frameworkLibrary_2)
  {
    PhotosLibraryCore_frameworkLibrary_2 = _sl_dlopen();
  }

  result = objc_getClass("PHPhotoLibrary");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getPHPhotoLibraryClass_softClass_2 = *(*(*(a1 + 32) + 8) + 24);
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __PhotosLibraryCore_block_invoke_2(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  PhotosLibraryCore_frameworkLibrary_2 = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

Class __getATXProactiveSuggestionClientModelClass_block_invoke_2(uint64_t a1)
{
  ProactiveSuggestionClientModelLibraryCore_2();
  result = objc_getClass("ATXProactiveSuggestionClientModel");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getATXProactiveSuggestionClientModelClass_softClass_2 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void ProactiveSuggestionClientModelLibraryCore_2()
{
  v1 = *MEMORY[0x1E69E9840];
  if (!ProactiveSuggestionClientModelLibraryCore_frameworkLibrary_3)
  {
    ProactiveSuggestionClientModelLibraryCore_frameworkLibrary_3 = _sl_dlopen();
  }

  v0 = *MEMORY[0x1E69E9840];
}

uint64_t __ProactiveSuggestionClientModelLibraryCore_block_invoke_3(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  ProactiveSuggestionClientModelLibraryCore_frameworkLibrary_3 = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

Class __getATXProactiveSuggestionClientModelSpecificationClass_block_invoke_1(uint64_t a1)
{
  ProactiveSuggestionClientModelLibraryCore_2();
  result = objc_getClass("ATXProactiveSuggestionClientModelSpecification");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getATXProactiveSuggestionClientModelSpecificationClass_softClass_1 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class __getATXProactiveSuggestionExecutableSpecificationClass_block_invoke_1(uint64_t a1)
{
  ProactiveSuggestionClientModelLibraryCore_2();
  result = objc_getClass("ATXProactiveSuggestionExecutableSpecification");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getATXProactiveSuggestionExecutableSpecificationClass_softClass_1 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class __getATXProactiveSuggestionUISpecificationClass_block_invoke_1(uint64_t a1)
{
  ProactiveSuggestionClientModelLibraryCore_2();
  result = objc_getClass("ATXProactiveSuggestionUISpecification");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getATXProactiveSuggestionUISpecificationClass_softClass_1 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class __getATXProactiveSuggestionLayoutConfigClass_block_invoke_1(uint64_t a1)
{
  ProactiveSuggestionClientModelLibraryCore_2();
  result = objc_getClass("ATXProactiveSuggestionLayoutConfig");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getATXProactiveSuggestionLayoutConfigClass_softClass_1 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class __getATXProactiveSuggestionScoreSpecificationClass_block_invoke_1(uint64_t a1)
{
  ProactiveSuggestionClientModelLibraryCore_2();
  result = objc_getClass("ATXProactiveSuggestionScoreSpecification");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getATXProactiveSuggestionScoreSpecificationClass_softClass_1 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class __getATXProactiveSuggestionClass_block_invoke_1(uint64_t a1)
{
  ProactiveSuggestionClientModelLibraryCore_2();
  result = objc_getClass("ATXProactiveSuggestion");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getATXProactiveSuggestionClass_softClass_1 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class __getATXSuggestionRequestResponseClass_block_invoke_2(uint64_t a1)
{
  ProactiveSuggestionClientModelLibraryCore_2();
  result = objc_getClass("ATXSuggestionRequestResponse");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getATXSuggestionRequestResponseClass_softClass_2 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_1B5FA9F10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B5FAA37C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getMLMultiArrayClass_0()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2050000000;
  v0 = getMLMultiArrayClass_softClass_2;
  v6 = getMLMultiArrayClass_softClass_2;
  if (!getMLMultiArrayClass_softClass_2)
  {
    CoreMLLibraryCore_3();
    v4[3] = objc_getClass("MLMultiArray");
    getMLMultiArrayClass_softClass_2 = v4[3];
    v0 = v4[3];
  }

  v1 = v0;
  _Block_object_dispose(&v3, 8);

  return v1;
}

void sub_1B5FAB1D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getLCFModelStoreClass_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  if (!LighthouseCoreMLModelStoreLibraryCore_frameworkLibrary)
  {
    LighthouseCoreMLModelStoreLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  result = objc_getClass("LCFModelStore");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getLCFModelStoreClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __LighthouseCoreMLModelStoreLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  LighthouseCoreMLModelStoreLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

Class __getTRIClientClass_block_invoke_2(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  if (!TrialLibraryCore_frameworkLibrary_2)
  {
    TrialLibraryCore_frameworkLibrary_2 = _sl_dlopen();
  }

  result = objc_getClass("TRIClient");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getTRIClientClass_softClass_2 = *(*(*(a1 + 32) + 8) + 24);
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __TrialLibraryCore_block_invoke_2(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  TrialLibraryCore_frameworkLibrary_2 = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

Class __getMLModelConfigurationClass_block_invoke_0(uint64_t a1)
{
  CoreMLLibraryCore_3();
  result = objc_getClass("MLModelConfiguration");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMLModelConfigurationClass_softClass_0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void CoreMLLibraryCore_3()
{
  v1 = *MEMORY[0x1E69E9840];
  if (!CoreMLLibraryCore_frameworkLibrary_5)
  {
    CoreMLLibraryCore_frameworkLibrary_5 = _sl_dlopen();
  }

  v0 = *MEMORY[0x1E69E9840];
}

uint64_t __CoreMLLibraryCore_block_invoke_5(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  CoreMLLibraryCore_frameworkLibrary_5 = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

Class __getMLModelClass_block_invoke_3(uint64_t a1)
{
  CoreMLLibraryCore_3();
  result = objc_getClass("MLModel");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMLModelClass_softClass_3 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class __getMLMultiArrayClass_block_invoke_2(uint64_t a1)
{
  CoreMLLibraryCore_3();
  result = objc_getClass("MLMultiArray");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMLMultiArrayClass_softClass_2 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class __getMLDictionaryFeatureProviderClass_block_invoke_2(uint64_t a1)
{
  CoreMLLibraryCore_3();
  result = objc_getClass("MLDictionaryFeatureProvider");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMLDictionaryFeatureProviderClass_softClass_2 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class __getMLArrayBatchProviderClass_block_invoke_0(uint64_t a1)
{
  CoreMLLibraryCore_3();
  result = objc_getClass("MLArrayBatchProvider");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMLArrayBatchProviderClass_softClass_0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void OUTLINED_FUNCTION_5_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_fault_impl(a1, a2, OS_LOG_TYPE_FAULT, a4, &a9, 2u);
}

uint64_t ContactEmbeddingAnalysisPETNeuralNetEmbeddingReadFrom(uint64_t a1, void *a2)
{
  v3 = [a2 position];
  if (v3 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v4 = 0;
      v5 = 0;
      v6 = 0;
      while (1)
      {
        LOBYTE(v21[0]) = 0;
        v7 = [a2 position] + 1;
        if (v7 >= [a2 position] && (v8 = objc_msgSend(a2, "position") + 1, v8 <= objc_msgSend(a2, "length")))
        {
          v9 = [a2 data];
          [v9 getBytes:v21 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v6 |= (v21[0] & 0x7F) << v4;
        if ((v21[0] & 0x80) == 0)
        {
          break;
        }

        v4 += 7;
        if (v5++ >= 9)
        {
          v11 = 0;
          goto LABEL_15;
        }
      }

      v11 = [a2 hasError] ? 0 : v6;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v11 & 7) == 4)
      {
        break;
      }

      if ((v11 >> 3) == 1)
      {
        if ((v11 & 7) == 2)
        {
          v21[0] = 0;
          v21[1] = 0;
          result = PBReaderPlaceMark();
          if (!result)
          {
            return result;
          }

          while (1)
          {
            v13 = [a2 position];
            if (v13 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
            {
              break;
            }

            v22 = 0;
            v14 = [a2 position] + 4;
            if (v14 >= [a2 position] && (v15 = objc_msgSend(a2, "position") + 4, v15 <= objc_msgSend(a2, "length")))
            {
              v16 = [a2 data];
              [v16 getBytes:&v22 range:{objc_msgSend(a2, "position"), 4}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
            }

            else
            {
              [a2 _setError];
            }

            PBRepeatedFloatAdd();
          }

          PBReaderRecallMark();
        }

        else
        {
          LODWORD(v21[0]) = 0;
          v17 = [a2 position] + 4;
          if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 4, v18 <= objc_msgSend(a2, "length")))
          {
            v19 = [a2 data];
            [v19 getBytes:v21 range:{objc_msgSend(a2, "position"), 4}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
          }

          else
          {
            [a2 _setError];
          }

          PBRepeatedFloatAdd();
        }
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

      v20 = [a2 position];
    }

    while (v20 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t AeroMLTracerSpanEventReadFrom(_BYTE *a1, void *a2)
{
  v4 = a2;
  while (2)
  {
    v5 = [v4 position];
    if (v5 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
    {
      return [a2 hasError] ^ 1;
    }

    v6 = 0;
    v7 = 0;
    v8 = 0;
    while (1)
    {
      LOBYTE(v63) = 0;
      v9 = [a2 position] + 1;
      if (v9 >= [a2 position] && (v10 = objc_msgSend(a2, "position") + 1, v10 <= objc_msgSend(a2, "length")))
      {
        v11 = [a2 data];
        [v11 getBytes:&v63 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v8 |= (v63 & 0x7F) << v6;
      if ((v63 & 0x80) == 0)
      {
        break;
      }

      v6 += 7;
      v12 = v7++ >= 9;
      if (v12)
      {
        v13 = 0;
        goto LABEL_16;
      }
    }

    v13 = [a2 hasError] ? 0 : v8;
LABEL_16:
    if (([a2 hasError] & 1) != 0 || (v13 & 7) == 4)
    {
      return [a2 hasError] ^ 1;
    }

    switch((v13 >> 3))
    {
      case 1u:
        v14 = PBReaderReadString();
        v15 = 24;
        goto LABEL_105;
      case 2u:
        v14 = PBReaderReadString();
        v15 = 152;
        goto LABEL_105;
      case 0xAu:
        v14 = PBReaderReadString();
        v15 = 192;
        goto LABEL_105;
      case 0xBu:
        v14 = PBReaderReadString();
        v15 = 80;
        goto LABEL_105;
      case 0xCu:
        v14 = PBReaderReadString();
        v15 = 168;
        goto LABEL_105;
      case 0xDu:
        v14 = PBReaderReadString();
        v15 = 176;
        goto LABEL_105;
      case 0xEu:
        v14 = PBReaderReadString();
        v15 = 184;
        goto LABEL_105;
      case 0xFu:
        v14 = PBReaderReadString();
        v15 = 160;
        goto LABEL_105;
      case 0x10u:
        v14 = PBReaderReadString();
        v15 = 88;
        goto LABEL_105;
      case 0x11u:
        v14 = PBReaderReadString();
        v15 = 136;
        goto LABEL_105;
      case 0x12u:
        v48 = 0;
        v49 = 0;
        v50 = 0;
        a1[208] |= 0x20u;
        while (1)
        {
          LOBYTE(v63) = 0;
          v51 = [a2 position] + 1;
          if (v51 >= [a2 position] && (v52 = objc_msgSend(a2, "position") + 1, v52 <= objc_msgSend(a2, "length")))
          {
            v53 = [a2 data];
            [v53 getBytes:&v63 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v50 |= (v63 & 0x7F) << v48;
          if ((v63 & 0x80) == 0)
          {
            break;
          }

          v48 += 7;
          v12 = v49++ >= 9;
          if (v12)
          {
            v22 = 0;
            goto LABEL_134;
          }
        }

        if ([a2 hasError])
        {
          v22 = 0;
        }

        else
        {
          v22 = v50;
        }

LABEL_134:
        v61 = 100;
        goto LABEL_139;
      case 0x13u:
        v30 = 0;
        v31 = 0;
        v32 = 0;
        a1[208] |= 0x10u;
        while (1)
        {
          LOBYTE(v63) = 0;
          v33 = [a2 position] + 1;
          if (v33 >= [a2 position] && (v34 = objc_msgSend(a2, "position") + 1, v34 <= objc_msgSend(a2, "length")))
          {
            v35 = [a2 data];
            [v35 getBytes:&v63 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v32 |= (v63 & 0x7F) << v30;
          if ((v63 & 0x80) == 0)
          {
            break;
          }

          v30 += 7;
          v12 = v31++ >= 9;
          if (v12)
          {
            v22 = 0;
            goto LABEL_122;
          }
        }

        if ([a2 hasError])
        {
          v22 = 0;
        }

        else
        {
          v22 = v32;
        }

LABEL_122:
        v61 = 96;
        goto LABEL_139;
      case 0x14u:
        v24 = 0;
        v25 = 0;
        v26 = 0;
        a1[208] |= 4u;
        while (1)
        {
          LOBYTE(v63) = 0;
          v27 = [a2 position] + 1;
          if (v27 >= [a2 position] && (v28 = objc_msgSend(a2, "position") + 1, v28 <= objc_msgSend(a2, "length")))
          {
            v29 = [a2 data];
            [v29 getBytes:&v63 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v26 |= (v63 & 0x7F) << v24;
          if ((v63 & 0x80) == 0)
          {
            break;
          }

          v24 += 7;
          v12 = v25++ >= 9;
          if (v12)
          {
            v22 = 0;
            goto LABEL_118;
          }
        }

        if ([a2 hasError])
        {
          v22 = 0;
        }

        else
        {
          v22 = v26;
        }

LABEL_118:
        v61 = 72;
        goto LABEL_139;
      case 0x15u:
        v14 = PBReaderReadString();
        v15 = 48;
        goto LABEL_105;
      case 0x16u:
        v36 = 0;
        v37 = 0;
        v38 = 0;
        a1[208] |= 2u;
        while (1)
        {
          LOBYTE(v63) = 0;
          v39 = [a2 position] + 1;
          if (v39 >= [a2 position] && (v40 = objc_msgSend(a2, "position") + 1, v40 <= objc_msgSend(a2, "length")))
          {
            v41 = [a2 data];
            [v41 getBytes:&v63 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v38 |= (v63 & 0x7F) << v36;
          if ((v63 & 0x80) == 0)
          {
            break;
          }

          v36 += 7;
          v12 = v37++ >= 9;
          if (v12)
          {
            v22 = 0;
            goto LABEL_126;
          }
        }

        if ([a2 hasError])
        {
          v22 = 0;
        }

        else
        {
          v22 = v38;
        }

LABEL_126:
        v61 = 36;
        goto LABEL_139;
      case 0x17u:
        v14 = PBReaderReadString();
        v15 = 104;
        goto LABEL_105;
      case 0x18u:
        v54 = 0;
        v55 = 0;
        v56 = 0;
        a1[208] |= 0x40u;
        while (1)
        {
          LOBYTE(v63) = 0;
          v57 = [a2 position] + 1;
          if (v57 >= [a2 position] && (v58 = objc_msgSend(a2, "position") + 1, v58 <= objc_msgSend(a2, "length")))
          {
            v59 = [a2 data];
            [v59 getBytes:&v63 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v56 |= (v63 & 0x7F) << v54;
          if ((v63 & 0x80) == 0)
          {
            break;
          }

          v54 += 7;
          v12 = v55++ >= 9;
          if (v12)
          {
            v22 = 0;
            goto LABEL_138;
          }
        }

        if ([a2 hasError])
        {
          v22 = 0;
        }

        else
        {
          v22 = v56;
        }

LABEL_138:
        v61 = 144;
        goto LABEL_139;
      case 0x19u:
        v42 = 0;
        v43 = 0;
        v44 = 0;
        a1[208] |= 1u;
        while (1)
        {
          LOBYTE(v63) = 0;
          v45 = [a2 position] + 1;
          if (v45 >= [a2 position] && (v46 = objc_msgSend(a2, "position") + 1, v46 <= objc_msgSend(a2, "length")))
          {
            v47 = [a2 data];
            [v47 getBytes:&v63 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v44 |= (v63 & 0x7F) << v42;
          if ((v63 & 0x80) == 0)
          {
            break;
          }

          v42 += 7;
          v12 = v43++ >= 9;
          if (v12)
          {
            v22 = 0;
            goto LABEL_130;
          }
        }

        if ([a2 hasError])
        {
          v22 = 0;
        }

        else
        {
          v22 = v44;
        }

LABEL_130:
        v61 = 32;
        goto LABEL_139;
      case 0x1Au:
        v16 = 0;
        v17 = 0;
        v18 = 0;
        a1[208] |= 8u;
        while (1)
        {
          LOBYTE(v63) = 0;
          v19 = [a2 position] + 1;
          if (v19 >= [a2 position] && (v20 = objc_msgSend(a2, "position") + 1, v20 <= objc_msgSend(a2, "length")))
          {
            v21 = [a2 data];
            [v21 getBytes:&v63 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v18 |= (v63 & 0x7F) << v16;
          if ((v63 & 0x80) == 0)
          {
            break;
          }

          v16 += 7;
          v12 = v17++ >= 9;
          if (v12)
          {
            v22 = 0;
            goto LABEL_114;
          }
        }

        if ([a2 hasError])
        {
          v22 = 0;
        }

        else
        {
          v22 = v18;
        }

LABEL_114:
        v61 = 76;
LABEL_139:
        *&a1[v61] = v22;
        goto LABEL_140;
      case 0x1Bu:
        v14 = PBReaderReadString();
        v15 = 56;
        goto LABEL_105;
      case 0x1Cu:
        v14 = PBReaderReadString();
        v15 = 120;
        goto LABEL_105;
      case 0x1Du:
        v14 = PBReaderReadString();
        v15 = 128;
        goto LABEL_105;
      case 0x1Eu:
        v14 = PBReaderReadString();
        v15 = 112;
LABEL_105:
        v60 = *&a1[v15];
        *&a1[v15] = v14;

        goto LABEL_140;
      case 0x28u:
        v23 = objc_alloc_init(AeroMLTracerAttribute);
        [a1 addAttributes:v23];
        v63 = 0;
        v64 = 0;
        if (!PBReaderPlaceMark() || !AeroMLTracerAttributeReadFrom(v23, a2))
        {
          goto LABEL_142;
        }

        goto LABEL_110;
      case 0x29u:
        v23 = objc_alloc_init(AeroMLTracerSubEvent);
        [a1 addInfoEvents:v23];
        goto LABEL_108;
      case 0x2Au:
        v23 = objc_alloc_init(AeroMLTracerSubEvent);
        [a1 addWarningEvents:v23];
        goto LABEL_108;
      case 0x2Bu:
        v23 = objc_alloc_init(AeroMLTracerSubEvent);
        [a1 addDebugEvents:v23];
        goto LABEL_108;
      case 0x2Cu:
        v23 = objc_alloc_init(AeroMLTracerSubEvent);
        [a1 addErrorEvents:v23];
LABEL_108:
        v63 = 0;
        v64 = 0;
        if (PBReaderPlaceMark() && AeroMLTracerSubEventReadFrom(v23, a2))
        {
LABEL_110:
          PBReaderRecallMark();

LABEL_140:
          v4 = a2;
          continue;
        }

LABEL_142:

        return 0;
      default:
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          return 0;
        }

        goto LABEL_140;
    }
  }
}

uint64_t AeroMLTracerSubEventReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v27[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v27 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v27[0] & 0x7F) << v5;
        if ((v27[0] & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) <= 2)
      {
        break;
      }

      if (v13 == 3)
      {
        v22 = PBReaderReadString();
        v23 = 16;
        goto LABEL_38;
      }

      if (v13 != 4)
      {
        goto LABEL_34;
      }

      v21 = objc_alloc_init(AeroMLTracerAttribute);
      [a1 addAttributes:v21];
      v27[0] = 0;
      v27[1] = 0;
      if (!PBReaderPlaceMark() || !AeroMLTracerAttributeReadFrom(v21, a2))
      {

        return 0;
      }

      PBReaderRecallMark();

LABEL_43:
      v25 = [a2 position];
      if (v25 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    if (v13 == 1)
    {
      v22 = PBReaderReadString();
      v23 = 24;
LABEL_38:
      v24 = *(a1 + v23);
      *(a1 + v23) = v22;

      goto LABEL_43;
    }

    if (v13 == 2)
    {
      v14 = 0;
      v15 = 0;
      v16 = 0;
      *(a1 + 36) |= 1u;
      while (1)
      {
        LOBYTE(v27[0]) = 0;
        v17 = [a2 position] + 1;
        if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
        {
          v19 = [a2 data];
          [v19 getBytes:v27 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v16 |= (v27[0] & 0x7F) << v14;
        if ((v27[0] & 0x80) == 0)
        {
          break;
        }

        v14 += 7;
        v11 = v15++ >= 9;
        if (v11)
        {
          v20 = 0;
          goto LABEL_42;
        }
      }

      if ([a2 hasError])
      {
        v20 = 0;
      }

      else
      {
        v20 = v16;
      }

LABEL_42:
      *(a1 + 32) = v20;
      goto LABEL_43;
    }

LABEL_34:
    if ((PBReaderSkipValueWithTag() & 1) == 0)
    {
      return 0;
    }

    goto LABEL_43;
  }

  return [a2 hasError] ^ 1;
}

uint64_t _PSUnarchiverZip(const void *a1, unint64_t a2, NSURL *a3)
{
  v70[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = os_log_create("com.apple.PeopleSuggester.unarchiver", "general");
  v6 = sLog;
  sLog = v5;

  v7 = 0;
  if (!a1 || !v4)
  {
    goto LABEL_11;
  }

  if (!archive_read_new())
  {
LABEL_10:
    v7 = 0;
    goto LABEL_11;
  }

  if (archive_read_support_format_zip())
  {
    v8 = sLog;
    if (os_log_type_enabled(sLog, OS_LOG_TYPE_INFO))
    {
      v9 = v8;
      *buf = 136446210;
      *&buf[4] = archive_error_string();
      _os_log_impl(&dword_1B5ED1000, v9, OS_LOG_TYPE_INFO, "_PSUnarchiver: archive_read unable to set supported formats - %{public}s.", buf, 0xCu);
    }

LABEL_7:
    if (archive_read_free())
    {
      v10 = sLog;
      if (os_log_type_enabled(sLog, OS_LOG_TYPE_ERROR))
      {
        _PSUnarchiverZip(v10);
      }
    }

    goto LABEL_10;
  }

  support_filter_all = archive_read_support_filter_all();
  if (support_filter_all != -20 && support_filter_all)
  {
    v14 = sLog;
    if (os_log_type_enabled(sLog, OS_LOG_TYPE_ERROR))
    {
      _PSUnarchiverZip(v14);
    }

    goto LABEL_7;
  }

  if (!archive_read_open_memory())
  {
    v16 = v4;
    v17 = [MEMORY[0x1E696AC08] defaultManager];
    v69 = *MEMORY[0x1E696A370];
    v70[0] = &unk_1F2D8BF58;
    v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v70 forKeys:&v69 count:1];
    v65[0] = 0;
    v19 = [v17 createDirectoryAtURL:v16 withIntermediateDirectories:0 attributes:v18 error:v65];
    v20 = v65[0];

    if (v19)
    {
      goto LABEL_22;
    }

    v22 = [v20 domain];
    if ([v22 isEqualToString:*MEMORY[0x1E696A250]])
    {
      v23 = [v20 code];

      if (v23 == 516)
      {
LABEL_22:

        if (archive_write_disk_new())
        {
          if (archive_write_disk_set_standard_lookup())
          {
            v21 = sLog;
            if (os_log_type_enabled(sLog, OS_LOG_TYPE_ERROR))
            {
              _PSUnarchiverZip(v21);
            }
          }

          else
          {
            if (!archive_write_disk_set_options())
            {
              v28 = [(NSURL *)v16 path];
              if (v28)
              {
                v30 = v28;
                v31 = realpath_DARWIN_EXTSN([v28 fileSystemRepresentation], 0);
                if (v31)
                {
                  v32 = v31;
                  v33 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithUTF8String:v31];

                  free(v32);
                  v64 = v33;
                }

                else
                {
                  v64 = v30;
                  v34 = sLog;
                  if (os_log_type_enabled(sLog, OS_LOG_TYPE_ERROR))
                  {
                    _PSUnarchiverZip(v30, v34);
                  }
                }
              }

              else
              {
                v64 = 0;
              }

              *&v29 = 134218240;
              v63 = v29;
              while (1)
              {
                next_header = archive_read_next_header();
                if (next_header)
                {
                  if (next_header == 1)
                  {
                    v7 = 1;
                    goto LABEL_87;
                  }

                  v51 = sLog;
                  if (os_log_type_enabled(sLog, OS_LOG_TYPE_ERROR))
                  {
                    _PSUnarchiverZip(v51);
                  }

                  goto LABEL_86;
                }

                v36 = archive_entry_filetype();
                v37 = objc_autoreleasePoolPush();
                v38 = archive_entry_pathname_utf8();
                if (!v38)
                {
                  v52 = sLog;
                  if (os_log_type_enabled(sLog, OS_LOG_TYPE_ERROR))
                  {
                    _PSUnarchiverZip(v52);
                  }

                  goto LABEL_85;
                }

                v39 = v38;
                v40 = -1;
                do
                {
                  v41 = *(v38 + v40++ + 1);
                }

                while (v41 == 47);
                if (v40)
                {
                  v42 = sLog;
                  if (os_log_type_enabled(sLog, OS_LOG_TYPE_ERROR))
                  {
                    v47 = strlen(v39);
                    *buf = v63;
                    *&buf[4] = v40;
                    v67 = 2048;
                    v68 = v47;
                    _os_log_error_impl(&dword_1B5ED1000, v42, OS_LOG_TYPE_ERROR, "_PSUnarchiver: archive_entry with absolute path encountered...ignoring leading %zu of %zu bytes.", buf, 0x16u);
                  }
                }

                v43 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithUTF8String:&v39[v40]];
                v44 = [v43 length];
                if (!v44 && v36 != 0x4000)
                {
                  v53 = sLog;
                  if (os_log_type_enabled(sLog, OS_LOG_TYPE_ERROR))
                  {
                    _PSUnarchiverZip(v53);
                  }

LABEL_85:
                  objc_autoreleasePoolPop(v37);
                  goto LABEL_86;
                }

                v45 = [v64 stringByAppendingPathComponent:{v43, v63}];

                [v45 fileSystemRepresentation];
                archive_entry_update_pathname_utf8();

                objc_autoreleasePoolPop(v37);
                archive_entry_perm();
                archive_entry_set_perm();
                if (v44)
                {
                  if (archive_write_header())
                  {
                    v56 = sLog;
                    if (!os_log_type_enabled(sLog, OS_LOG_TYPE_INFO))
                    {
                      goto LABEL_86;
                    }

                    v57 = v56;
                    v58 = archive_error_string();
                    *buf = 136446210;
                    *&buf[4] = v58;
                    v59 = "_PSUnarchiver: archive_write_header failed - %{public}s.";
                    goto LABEL_99;
                  }

                  if (!archive_entry_size_is_set() || archive_entry_size() >= 1)
                  {
                    while (1)
                    {
                      v65[2] = 0;
                      *buf = 0;
                      v65[1] = 0;
                      data_block = archive_read_data_block();
                      if (data_block)
                      {
                        break;
                      }

                      if (archive_write_data_block() < 0)
                      {
                        v49 = sLog;
                        if (os_log_type_enabled(sLog, OS_LOG_TYPE_ERROR))
                        {
                          _PSUnarchiverZip(v49);
                        }

                        goto LABEL_86;
                      }
                    }

                    if (data_block == 1)
                    {
                      goto LABEL_70;
                    }

                    v48 = sLog;
                    if (os_log_type_enabled(sLog, OS_LOG_TYPE_ERROR))
                    {
                      _PSUnarchiverZip(v48);
                    }

                    goto LABEL_86;
                  }

LABEL_70:
                  if (archive_write_finish_entry())
                  {
                    break;
                  }
                }
              }

              v60 = sLog;
              if (os_log_type_enabled(sLog, OS_LOG_TYPE_INFO))
              {
                v57 = v60;
                v62 = archive_error_string();
                *buf = 136446210;
                *&buf[4] = v62;
                v59 = "_PSUnarchiver: archive_write_finish_entry failed - %{public}s.";
LABEL_99:
                _os_log_impl(&dword_1B5ED1000, v57, OS_LOG_TYPE_INFO, v59, buf, 0xCu);
              }

LABEL_86:
              v7 = 0;
LABEL_87:
              if (archive_write_close())
              {
                v54 = sLog;
                if (os_log_type_enabled(sLog, OS_LOG_TYPE_ERROR))
                {
                  _PSUnarchiverZip(v54);
                }

                v7 = 0;
              }

              if (archive_write_free())
              {
                v55 = sLog;
                if (os_log_type_enabled(sLog, OS_LOG_TYPE_ERROR))
                {
                  _PSUnarchiverZip(v55);
                }
              }

              goto LABEL_40;
            }

            v24 = sLog;
            if (os_log_type_enabled(sLog, OS_LOG_TYPE_ERROR))
            {
              _PSUnarchiverZip(v24);
            }
          }

          if (archive_write_free())
          {
            v25 = sLog;
            if (os_log_type_enabled(sLog, OS_LOG_TYPE_ERROR))
            {
              _PSUnarchiverZip(v25);
            }
          }
        }

LABEL_39:
        v7 = 0;
LABEL_40:

        if (archive_read_close())
        {
          v26 = sLog;
          if (os_log_type_enabled(sLog, OS_LOG_TYPE_ERROR))
          {
            _PSUnarchiverZip(v26);
          }
        }

        goto LABEL_43;
      }
    }

    else
    {
    }

    if (os_log_type_enabled(sLog, OS_LOG_TYPE_ERROR))
    {
      _PSUnarchiverZip();
    }

    goto LABEL_39;
  }

  v15 = sLog;
  if (os_log_type_enabled(sLog, OS_LOG_TYPE_ERROR))
  {
    _PSUnarchiverZip(v15);
  }

  v7 = 0;
LABEL_43:
  if (archive_read_free())
  {
    v27 = sLog;
    if (os_log_type_enabled(sLog, OS_LOG_TYPE_ERROR))
    {
      _PSUnarchiverZip(v27);
    }
  }

LABEL_11:

  v11 = *MEMORY[0x1E69E9840];
  return v7;
}

uint64_t OUTLINED_FUNCTION_2_0()
{

  return archive_error_string();
}

void LogCompletionForCache_cold_1(void *a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v1 = [a1 error];
  v2 = [v1 description];
  [v2 UTF8String];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0xCu);

  v8 = *MEMORY[0x1E69E9840];
}

void LogCompletionForCache_cold_2()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_3_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void _PSResolveContactWithPredicate_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_1B5ED1000, a2, OS_LOG_TYPE_ERROR, "Contact Resolution: Error fetching contacts from Contact Store = %@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

void LogCompletion_cold_1(void *a1, NSObject *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = [a1 error];
  v4 = [v3 description];
  v6 = 136315138;
  v7 = [v4 UTF8String];
  _os_log_debug_impl(&dword_1B5ED1000, a2, OS_LOG_TYPE_DEBUG, "BMGroupActivitySession access error: %s", &v6, 0xCu);

  v5 = *MEMORY[0x1E69E9840];
}

void _PSIntentForSelectedSuggestionWithContextExtensionUUID_cold_1()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_8(&dword_1B5ED1000, v0, v1, "Current sharesheet selected suggestion has a different bundleID (%@) than the share extension requesting an intent (%@)");
  v2 = *MEMORY[0x1E69E9840];
}

void _PSIntentForSelectedSuggestionWithContextExtensionUUID_cold_2()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_2(&dword_1B5ED1000, v0, v1, "Error querying for intent when fetching selected suggestion: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void _PSIntentForSelectedSuggestionWithContextExtensionUUID_cold_3()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_8(&dword_1B5ED1000, v0, v1, "No intent with applicationBundleID %@ and derivedIntentIdentifier %@");
  v2 = *MEMORY[0x1E69E9840];
}

void sub_1B5FBE444(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void _PSUnarchiverZip(void *a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = a1;
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_11();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0xCu);

  v8 = *MEMORY[0x1E69E9840];
}

{
  v9 = *MEMORY[0x1E69E9840];
  v2 = a1;
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_11();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0xCu);

  v8 = *MEMORY[0x1E69E9840];
}

{
  v9 = *MEMORY[0x1E69E9840];
  v2 = a1;
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_11();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0xCu);

  v8 = *MEMORY[0x1E69E9840];
}

{
  v9 = *MEMORY[0x1E69E9840];
  v2 = a1;
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_11();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0xCu);

  v8 = *MEMORY[0x1E69E9840];
}

{
  v9 = *MEMORY[0x1E69E9840];
  v2 = a1;
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_11();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0xCu);

  v8 = *MEMORY[0x1E69E9840];
}

{
  v9 = *MEMORY[0x1E69E9840];
  v2 = a1;
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_11();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0xCu);

  v8 = *MEMORY[0x1E69E9840];
}

{
  v9 = *MEMORY[0x1E69E9840];
  v2 = a1;
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_11();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0xCu);

  v8 = *MEMORY[0x1E69E9840];
}

{
  v9 = *MEMORY[0x1E69E9840];
  v2 = a1;
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_11();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0xCu);

  v8 = *MEMORY[0x1E69E9840];
}

{
  v9 = *MEMORY[0x1E69E9840];
  v2 = a1;
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_11();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0xCu);

  v8 = *MEMORY[0x1E69E9840];
}

{
  v9 = *MEMORY[0x1E69E9840];
  v2 = a1;
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_11();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0xCu);

  v8 = *MEMORY[0x1E69E9840];
}

{
  v9 = *MEMORY[0x1E69E9840];
  v2 = a1;
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_11();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0xCu);

  v8 = *MEMORY[0x1E69E9840];
}

void _PSUnarchiverZip()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  v4 = 2112;
  v5 = v0;
  _os_log_error_impl(&dword_1B5ED1000, v1, OS_LOG_TYPE_ERROR, "_PSUnarchiver: failed to create directory at %@ - %@.", v3, 0x16u);
  v2 = *MEMORY[0x1E69E9840];
}

void _PSUnarchiverZip(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = __error();
  strerror(*v3);
  OUTLINED_FUNCTION_0_11();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x16u);

  v9 = *MEMORY[0x1E69E9840];
}

void _PSUnarchiverZip(os_log_t log)
{
  *v1 = 0;
  _os_log_error_impl(&dword_1B5ED1000, log, OS_LOG_TYPE_ERROR, "_PSUnarchiver: archive_entry with no path after sanitization encountered.", v1, 2u);
}

{
  *v1 = 0;
  _os_log_error_impl(&dword_1B5ED1000, log, OS_LOG_TYPE_ERROR, "_PSUnarchiver: archive_entry with no path encountered.", v1, 2u);
}

__double2 __sincos_stret(double a1)
{
  MEMORY[0x1EEE73570](a1);
  result.__cosval = v2;
  result.__sinval = v1;
  return result;
}