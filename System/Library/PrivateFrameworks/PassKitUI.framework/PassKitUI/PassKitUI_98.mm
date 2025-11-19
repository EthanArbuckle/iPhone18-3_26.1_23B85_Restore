void __PKLookupAppStoreApplications_block_invoke_8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (([a4 isCanceled] & 1) == 0)
  {
    v5 = *(a1 + 48);
    v6 = [*(a1 + 32) copy];
    (*(v5 + 16))(v5, v6);
  }
}

id PKLookupAppStoreApplication(void *a1, void *a2)
{
  v32 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  if (v4)
  {
    v5 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v3;
      _os_log_impl(&dword_1BD026000, v5, OS_LOG_TYPE_DEFAULT, "PKLinkedApplication: Looking up item(s) from AppleMediaServices: %@.", &buf, 0xCu);
    }

    v6 = objc_alloc_init(MEMORY[0x1E69B8658]);
    *&buf = 0;
    *(&buf + 1) = &buf;
    v28 = 0x3032000000;
    v29 = __Block_byref_object_copy__6;
    v30 = __Block_byref_object_dispose__6;
    v31 = 0;
    v7 = [objc_alloc(MEMORY[0x1E698B3D0]) initWithName:@"Wallet App Lookup"];
    v8 = objc_alloc(MEMORY[0x1E695DFD8]);
    v9 = [v8 initWithObjects:{*MEMORY[0x1E698B3F0], *MEMORY[0x1E698B410], *MEMORY[0x1E698B428], *MEMORY[0x1E698B420], *MEMORY[0x1E698B418], *MEMORY[0x1E698B408], 0}];
    [v6 addOperation:&__block_literal_global_324];
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __PKLookupAppStoreApplication_block_invoke_3;
    v21[3] = &unk_1E8014380;
    v10 = v7;
    v22 = v10;
    v23 = v3;
    v11 = v6;
    v24 = v11;
    v12 = v9;
    v25 = v12;
    p_buf = &buf;
    [v11 addOperation:v21];
    v13 = [MEMORY[0x1E695DFB0] null];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __PKLookupAppStoreApplication_block_invoke_7;
    v17[3] = &unk_1E80143A8;
    v19 = v4;
    v20 = &buf;
    v14 = v10;
    v18 = v14;
    v15 = [v11 evaluateWithInput:v13 completion:v17];

    _Block_object_dispose(&buf, 8);
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

void __PKLookupAppStoreApplication_block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v5 = a3;
  v6 = a4;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __PKLookupAppStoreApplication_block_invoke_2;
  v9[3] = &unk_1E8010E20;
  v10 = v5;
  v11 = v6;
  v7 = v5;
  v8 = v6;
  dispatch_async(MEMORY[0x1E69E96A0], v9);
}

void __PKLookupAppStoreApplication_block_invoke_3(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = *(a1 + 32);
  v11 = *(a1 + 40);
  v12 = *MEMORY[0x1E698B350];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __PKLookupAppStoreApplication_block_invoke_4;
  v18[3] = &unk_1E8014358;
  v24 = v9;
  v19 = v7;
  v20 = v8;
  v21 = *(a1 + 48);
  v22 = *(a1 + 32);
  v13 = *(a1 + 56);
  v14 = *(a1 + 64);
  v23 = v13;
  v25 = v14;
  v15 = v8;
  v16 = v9;
  v17 = v7;
  [v10 _lockupRequestForBundleID:v11 withContext:v12 completionBlock:v18];
}

void __PKLookupAppStoreApplication_block_invoke_4(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if (([*(a1 + 32) isCanceled] & 1) == 0)
  {
    if (!v5 || a3)
    {
      (*(*(a1 + 72) + 16))();
    }

    else
    {
      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3221225472;
      v10[2] = __PKLookupAppStoreApplication_block_invoke_5;
      v10[3] = &unk_1E8014330;
      v6 = *(a1 + 48);
      v11 = *(a1 + 56);
      v12 = v5;
      v7 = *(a1 + 64);
      v8 = *(a1 + 80);
      v13 = v7;
      v14 = v8;
      [v6 addOperation:v10];
      (*(*(a1 + 72) + 16))(*(a1 + 72), *(a1 + 40), 0, v9);
    }
  }
}

void __PKLookupAppStoreApplication_block_invoke_5(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  if (([a2 isCanceled] & 1) == 0)
  {
    v9 = a1[4];
    v10 = a1[5];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __PKLookupAppStoreApplication_block_invoke_6;
    v12[3] = &unk_1E8014308;
    v11 = a1[6];
    v15 = a1[7];
    v14 = v8;
    v13 = v7;
    [v9 _lockupDictionaryForRequest:v10 includingKeys:v11 withCompletionBlock:v12];
  }
}

uint64_t __PKLookupAppStoreApplication_block_invoke_6(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [[PKAMSLookupItem alloc] initWithDict:v3];

  v5 = *(*(a1 + 48) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  v7 = *(*(a1 + 40) + 16);

  return v7();
}

uint64_t __PKLookupAppStoreApplication_block_invoke_7(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  result = [a4 isCanceled];
  if ((result & 1) == 0)
  {
    v6 = *(*(a1 + 40) + 16);

    return v6();
  }

  return result;
}

PKLinkedApplicationAMSPromiseWrapper *PKLookupAppStoreApplicationPrivacyPolicy(void *a1, void *a2)
{
  v25 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  if (v4)
  {
    v5 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v24 = v3;
      _os_log_impl(&dword_1BD026000, v5, OS_LOG_TYPE_DEFAULT, "PKLinkedApplication: Looking up item(s) from AppleMediaServices for bundle identifier: %@.", buf, 0xCu);
    }

    v6 = MEMORY[0x1E698C7D8];
    v7 = [MEMORY[0x1E698C9E0] bagSubProfile];
    v8 = [MEMORY[0x1E698C9E0] bagSubProfileVersion];
    v9 = [v6 bagForProfile:v7 profileVersion:v8];

    v10 = [objc_alloc(MEMORY[0x1E698C9E0]) initWithType:0 clientIdentifier:@"com.apple.Passbook" clientVersion:@"1" bag:v9];
    v22 = v3;
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v22 count:1];
    [v10 setBundleIdentifiers:v11];

    [v10 setAdditionalQueryParams:&unk_1F3CC8820];
    v12 = [v10 perform];
    v13 = [[PKLinkedApplicationAMSPromiseWrapper alloc] initWithAMSPromise:v12];
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __PKLookupAppStoreApplicationPrivacyPolicy_block_invoke;
    v18[3] = &unk_1E80143D0;
    v14 = v13;
    v19 = v14;
    v20 = v3;
    v21 = v4;
    [v12 addFinishBlock:v18];
    v15 = v21;
    v16 = v14;
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

void __PKLookupAppStoreApplicationPrivacyPolicy_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v35 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  [*(a1 + 32) invalidate];
  if (v6)
  {
    v7 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [v6 localizedDescription];
      v31 = 138412290;
      v32 = v8;
      _os_log_impl(&dword_1BD026000, v7, OS_LOG_TYPE_DEFAULT, "PKLinkedApplication: Received error: %@.", &v31, 0xCu);
    }

    v9 = 0;
  }

  else
  {
    v9 = [v5 responseDataItems];
    v10 = [v9 count];
    v7 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v31 = 134217984;
      v32 = v10;
      _os_log_impl(&dword_1BD026000, v7, OS_LOG_TYPE_DEFAULT, "PKLinkedApplication: Received %ld results from AppleMediaServices", &v31, 0xCu);
    }
  }

  v11 = [v9 firstObject];
  if (v11)
  {
    v12 = PKIsPad();
    v13 = @"ios";
    if (v12)
    {
      v13 = @"ipados";
    }

    v14 = v13;
    v15 = [v11 PKDictionaryForKey:@"attributes"];
    v16 = objc_opt_class();
    v17 = [v15 PKDictionaryOfKeyClass:v16 valueClass:objc_opt_class() ForKey:@"platformAttributes"];
    v18 = [v17 objectForKeyedSubscript:v14];

    v19 = [v18 mutableCopy];
    if (v19 || ([v17 allValues], v20 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v20, "firstObject"), v21 = objc_claimAutoreleasedReturnValue(), v19 = objc_msgSend(v21, "mutableCopy"), v21, v20, v19))
    {
      [v19 addEntriesFromDictionary:v15];
      v22 = [objc_alloc(MEMORY[0x1E698C978]) initWithLookupDictionary:v19];
    }

    else
    {
      v22 = 0;
    }
  }

  else
  {
    v22 = 0;
  }

  v23 = [v22 itemDictionary];
  v24 = [v23 objectForKeyedSubscript:*MEMORY[0x1E698C638]];

  v25 = PKLogFacilityTypeGetObject();
  v26 = os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT);
  if (v24)
  {
    if (v26)
    {
      v27 = *(a1 + 40);
      v31 = 138412546;
      v32 = v24;
      v33 = 2112;
      v34 = v27;
      _os_log_impl(&dword_1BD026000, v25, OS_LOG_TYPE_DEFAULT, "PKLinkedApplication: Received privacy policy string from AMS: %@ for bundle identifier: %@.", &v31, 0x16u);
    }

    v28 = [MEMORY[0x1E695DFF8] URLWithString:v24];
    if (v28)
    {
      v29 = *(*(a1 + 48) + 16);
    }

    else
    {
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        v31 = 138412290;
        v32 = v24;
        _os_log_impl(&dword_1BD026000, v25, OS_LOG_TYPE_DEFAULT, "PKLinkedApplication: Unable to convert received privacy policy string: %@ to URL.", &v31, 0xCu);
      }

      v29 = *(*(a1 + 48) + 16);
    }

    v29();
  }

  else
  {
    if (v26)
    {
      v30 = *(a1 + 40);
      v31 = 138412290;
      v32 = v30;
      _os_log_impl(&dword_1BD026000, v25, OS_LOG_TYPE_DEFAULT, "PKLinkedApplication: No privacy policy string was returned from AppleMediaServices for bundle identifier: %@.", &v31, 0xCu);
    }

    (*(*(a1 + 48) + 16))();
  }
}

void __LookupSystemApplications_block_invoke(uint64_t a1)
{
  v26 = *MEMORY[0x1E69E9840];
  [MEMORY[0x1E69635F8] enumeratorWithOptions:1];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v2 = v24 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v22;
LABEL_3:
    v6 = 0;
    while (1)
    {
      if (*v22 != v5)
      {
        objc_enumerationMutation(v2);
      }

      v7 = *(*(&v21 + 1) + 8 * v6);
      v8 = *(a1 + 32);
      v9 = [v7 bundleIdentifier];
      LOBYTE(v8) = [v8 containsObject:v9];

      if (v8)
      {
        break;
      }

      if (v4 == ++v6)
      {
        v4 = [v2 countByEnumeratingWithState:&v21 objects:v25 count:16];
        if (v4)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }

    v10 = v7;

    if (!v10)
    {
      goto LABEL_12;
    }

    v11 = objc_alloc(MEMORY[0x1E69A8A00]);
    v12 = [v10 URL];
    v13 = [v11 initWithURL:v12];

    v14 = *(a1 + 40);
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __LookupSystemApplications_block_invoke_2;
    v17[3] = &unk_1E80143F8;
    v18 = v14;
    v15 = *(a1 + 48);
    v19 = v10;
    v20 = v15;
    v16 = v10;
    [v13 getCGImageForImageDescriptor:v18 completion:v17];
  }

  else
  {
LABEL_9:

LABEL_12:
    (*(*(a1 + 48) + 16))();
  }
}

void __LookupSystemApplications_block_invoke_2(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v4 = objc_alloc(MEMORY[0x1E69DCAB8]);
    [*(a1 + 32) scale];
    v5 = [v4 initWithCGImage:a2 scale:0 orientation:?];
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  (*(*(a1 + 48) + 16))();
}

void __LookupApplications_block_invoke(uint64_t a1)
{
  v23 = *MEMORY[0x1E69E9840];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v19;
    while (2)
    {
      v6 = 0;
      do
      {
        if (*v19 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = [MEMORY[0x1E6963620] bundleRecordWithApplicationIdentifier:*(*(&v18 + 1) + 8 * v6) error:0];
        if (v7)
        {
          v8 = v7;

          v9 = objc_alloc(MEMORY[0x1E69A8A00]);
          v10 = [v8 URL];
          v11 = [v9 initWithURL:v10];

          v12 = *(a1 + 40);
          v14[0] = MEMORY[0x1E69E9820];
          v14[1] = 3221225472;
          v14[2] = __LookupApplications_block_invoke_2;
          v14[3] = &unk_1E80143F8;
          v15 = v12;
          v16 = v8;
          v17 = *(a1 + 48);
          v13 = v8;
          [v11 getCGImageForImageDescriptor:v15 completion:v14];

          return;
        }

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v18 objects:v22 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  (*(*(a1 + 48) + 16))();
}

void __LookupApplications_block_invoke_2(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v4 = objc_alloc(MEMORY[0x1E69DCAB8]);
    [*(a1 + 32) scale];
    v6 = [v4 initWithCGImage:a2 scale:0 orientation:?];
  }

  else
  {
    v6 = 0;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = *(a1 + 40);
  }

  else
  {
    v5 = 0;
  }

  (*(*(a1 + 48) + 16))(*(a1 + 48), v5, v6);
}

void __LookupInstalledApplications_block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = *(*(*(a1 + 40) + 8) + 40);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __LookupInstalledApplications_block_invoke_2;
  v12[3] = &unk_1E8014420;
  v9 = *(a1 + 32);
  v14 = v6;
  v15 = v7;
  v13 = v9;
  v10 = v6;
  v11 = v7;
  [v8 getRemovableSytemApplicationsWithCompletionBlock:v12];
}

uint64_t __LookupInstalledApplications_block_invoke_2(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) addObjectsFromArray:a2];
  v3 = *(*(a1 + 48) + 16);

  return v3();
}

void __LookupInstalledApplications_block_invoke_3(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = *(*(*(a1 + 48) + 8) + 40);
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __LookupInstalledApplications_block_invoke_4;
  v13[3] = &unk_1E8014420;
  v9 = *(a1 + 32);
  v10 = *(a1 + 40);
  v15 = v6;
  v16 = v7;
  v14 = v10;
  v11 = v6;
  v12 = v7;
  [v8 getLibraryItemsForITunesStoreItemIdentifiers:v9 completionBlock:v13];
}

void __LookupInstalledApplications_block_invoke_6(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v4 = objc_alloc(MEMORY[0x1E69DCAB8]);
    [*(a1 + 32) scale];
    v5 = [v4 initWithCGImage:a2 scale:0 orientation:?];
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  (*(*(a1 + 48) + 16))();
}

void __LookupInstalledApplications_block_invoke_7(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 8);
  v2 = *(v1 + 40);
  *(v1 + 40) = 0;
}

void __LookupStoreApplications_block_invoke(uint64_t a1, void *a2)
{
  v46 = *MEMORY[0x1E69E9840];
  v3 = [a2 firstObject];
  if (!v3)
  {
    v24 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      v31 = *(a1 + 32);
      *buf = 138543362;
      v45 = v31;
      _os_log_error_impl(&dword_1BD026000, v24, OS_LOG_TYPE_ERROR, "PKLinkedApplication: Error looking up items %{public}@ in store.", buf, 0xCu);
    }

    goto LABEL_10;
  }

  if ([*(a1 + 40) isCanceled])
  {
LABEL_10:
    (*(*(a1 + 56) + 16))();
    goto LABEL_16;
  }

  [*(a1 + 48) scale];
  v5 = v4;
  [*(a1 + 48) size];
  v7 = floor(v5 * floor(v6));
  v9 = floor(v5 * floor(v8));
  v10 = [v3 artwork];
  v42[0] = *MEMORY[0x1E698B2F8];
  v11 = [MEMORY[0x1E696AD98] numberWithDouble:v7];
  v12 = [v11 stringValue];
  v43[0] = v12;
  v42[1] = *MEMORY[0x1E698B2F0];
  v13 = [MEMORY[0x1E696AD98] numberWithDouble:v9];
  v14 = [v13 stringValue];
  v15 = *MEMORY[0x1E698B2E8];
  v16 = *MEMORY[0x1E698B2D8];
  v43[1] = v14;
  v43[2] = v16;
  v17 = *MEMORY[0x1E698B2E0];
  v42[2] = v15;
  v42[3] = v17;
  v43[3] = *MEMORY[0x1E698B2D0];
  v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v43 forKeys:v42 count:4];
  v19 = [v10 makeURLWithSubstitutions:v18];

  if (v19)
  {
    if (([v19 isFileURL] & 1) != 0 || (objc_msgSend(v19, "scheme"), v20 = objc_claimAutoreleasedReturnValue(), v21 = objc_msgSend(v20, "isEqualToString:", @"data"), v20, v21))
    {
      v22 = [MEMORY[0x1E695DEF0] dataWithContentsOfURL:v19 options:0 error:0];
      v23 = *(a1 + 48);
      v39[0] = MEMORY[0x1E69E9820];
      v39[1] = 3221225472;
      v39[2] = __LookupStoreApplications_block_invoke_390;
      v39[3] = &unk_1E80144C0;
      v40 = v3;
      v41 = *(a1 + 56);
      ImageFromData(v22, v23, v39);
    }

    else
    {
      v27 = [MEMORY[0x1E696AF78] sharedSession];
      v34[0] = MEMORY[0x1E69E9820];
      v34[1] = 3221225472;
      v34[2] = __LookupStoreApplications_block_invoke_393;
      v34[3] = &unk_1E80144E8;
      v35 = *(a1 + 40);
      v36 = *(a1 + 48);
      v37 = v3;
      v38 = *(a1 + 56);
      v28 = [v27 dataTaskWithURL:v19 completionHandler:v34];

      [v28 resume];
      v29 = *(a1 + 40);
      v32[0] = MEMORY[0x1E69E9820];
      v32[1] = 3221225472;
      v32[2] = __LookupStoreApplications_block_invoke_395;
      v32[3] = &unk_1E8010970;
      v33 = v28;
      v30 = v28;
      [v29 addCancelAction:v32];
    }
  }

  else
  {
    v25 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      v26 = [v3 appStoreIdentifier];
      *buf = 138412290;
      v45 = v26;
      _os_log_impl(&dword_1BD026000, v25, OS_LOG_TYPE_DEFAULT, "PKLinkedApplication: Unable to find app icon URL for %@", buf, 0xCu);
    }

    (*(*(a1 + 56) + 16))();
  }

LABEL_16:
}

void ImageFromData(void *a1, void *a2, void *a3)
{
  v19[1] = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = a2;
  v7 = a3;
  if (v7)
  {
    v8 = PKCreateCGImage(v5);
    if (v8)
    {
      v9 = v8;
      v10 = objc_alloc(MEMORY[0x1E69A8988]);
      [v6 scale];
      v11 = [v10 initWithCGImage:v9 scale:?];
      v12 = objc_alloc(MEMORY[0x1E69A8A00]);
      v19[0] = v11;
      v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:1];
      v14 = [v12 initWithImages:v13];

      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = __ImageFromData_block_invoke;
      v15[3] = &unk_1E8014538;
      v16 = v6;
      v18 = v9;
      v17 = v7;
      [v14 getCGImageForImageDescriptor:v16 completion:v15];
    }

    else
    {
      (*(v7 + 2))(v7, 0);
    }
  }
}

void __LookupStoreApplications_block_invoke_390(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    [*(a1 + 32) setIconImage:v3];
  }

  else
  {
    v4 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = [*(a1 + 32) appStoreIdentifier];
      v6 = 138412290;
      v7 = v5;
      _os_log_impl(&dword_1BD026000, v4, OS_LOG_TYPE_DEFAULT, "PKLinkedApplication: Failed to create app image from data for %@", &v6, 0xCu);
    }

    [*(a1 + 32) setIconImage:0];
  }

  (*(*(a1 + 40) + 16))();
}

void __LookupStoreApplications_block_invoke_393(uint64_t a1, void *a2, void *a3, void *a4)
{
  v21 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = v9;
  if (!v7 || v9 || ([*(a1 + 32) isCanceled] & 1) != 0)
  {
    v11 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = [*(a1 + 48) appStoreIdentifier];
      *buf = 138412546;
      v18 = v12;
      v19 = 2112;
      v20 = v10;
      _os_log_impl(&dword_1BD026000, v11, OS_LOG_TYPE_DEFAULT, "PKLinkedApplication: Failed to download app icon for %@ with error: %@", buf, 0x16u);
    }

    (*(*(a1 + 56) + 16))();
  }

  else
  {
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __LookupStoreApplications_block_invoke_2;
    v14[3] = &unk_1E80144C0;
    v13 = *(a1 + 40);
    v15 = *(a1 + 48);
    v16 = *(a1 + 56);
    ImageFromData(v7, v13, v14);
  }
}

uint64_t __LookupStoreApplications_block_invoke_2(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) setIconImage:a2];
  v3 = *(*(a1 + 40) + 16);

  return v3();
}

void __ImageFromData_block_invoke(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) scale];
  v5 = v4;
  v6 = objc_alloc(MEMORY[0x1E69DCAB8]);
  if (a2)
  {
    v7 = a2;
  }

  else
  {
    v7 = *(a1 + 48);
  }

  v8 = [v6 initWithCGImage:v7 scale:0 orientation:v5];
  CFRelease(*(a1 + 48));
  (*(*(a1 + 40) + 16))();
}

void sub_1BDB4CADC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDB4DA1C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1BDB4F968(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDB57AAC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDB5A778(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

Class initFKBankConnectImageProvider()
{
  if (qword_1EBD68310 != -1)
  {
    dispatch_once(&qword_1EBD68310, &__block_literal_global_60);
  }

  result = objc_getClass("FKBankConnectImageProvider");
  qword_1EBD68308 = result;
  getFKBankConnectImageProviderClass[0] = FKBankConnectImageProviderFunction;
  return result;
}

void *__LoadFinanceKitUI_block_invoke()
{
  result = dlopen("/System/Library/PrivateFrameworks/FinanceKitUI.framework/FinanceKitUI", 2);
  LoadFinanceKitUI_frameworkLibrary = result;
  return result;
}

void sub_1BDB5C128(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDB5ED54(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 96));
  _Unwind_Resume(a1);
}

Class initCNAvatarView_1()
{
  if (qword_1EBD68320 != -1)
  {
    dispatch_once(&qword_1EBD68320, &__block_literal_global_241);
  }

  result = objc_getClass("CNAvatarView");
  _MergedGlobals_1_4 = result;
  _MergedGlobals_617 = CNAvatarViewFunction_1;
  return result;
}

Class initCNAvatarCardController_1()
{
  if (qword_1EBD68320 != -1)
  {
    dispatch_once(&qword_1EBD68320, &__block_literal_global_241);
  }

  result = objc_getClass("CNAvatarCardController");
  qword_1EBD68328 = result;
  off_1EE98A650 = CNAvatarCardControllerFunction_1;
  return result;
}

Class initCNContactViewController()
{
  if (qword_1EBD68320 != -1)
  {
    dispatch_once(&qword_1EBD68320, &__block_literal_global_241);
  }

  result = objc_getClass("CNContactViewController");
  qword_1EBD68330 = result;
  off_1EE98A658 = CNContactViewControllerFunction;
  return result;
}

void sub_1BDB6187C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDB631AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, char a40)
{
  _Block_object_dispose(&a35, 8);
  _Block_object_dispose(&a40, 8);
  _Unwind_Resume(a1);
}

uint64_t PKUIGetMinScreenType()
{
  if (qword_1EBD6AC20 != -1)
  {
    dispatch_once(&qword_1EBD6AC20, &__block_literal_global_370);
  }

  return qword_1EBD6AC10;
}

void PKUIFrontCameraReferencePosition(void *a1, id *a2)
{
  v3 = a1;
  if (v3)
  {
    v4 = v3;
    v5 = [v3 fixedCoordinateSpace];
    if (a2)
    {
      objc_storeStrong(a2, v5);
    }

    PKFrontCameraNormalizedReferencePosition();
    [v5 bounds];
  }

  else
  {
    __break(1u);
  }
}

double PKUIFrontCameraCurrentPosition(void *a1, id *a2)
{
  v12 = 0;
  v3 = a1;
  PKUIFrontCameraReferencePosition(v3, &v12);
  v5 = v4;
  v7 = v6;
  v8 = [v3 coordinateSpace];

  if (a2)
  {
    objc_storeStrong(a2, v8);
  }

  [v8 convertPoint:v12 fromCoordinateSpace:{v5, v7}];
  v10 = v9;

  return v10;
}

id PKUIColorFromP3ColorData(void *a1)
{
  v1 = a1;
  if (([v1 length] & 0xFFFFFFFFFFFFFFF8) == 0x20 && ((v2 = objc_msgSend(v1, "bytes"), v3 = *v2, *v2 >= 0.0) ? (v4 = v3 <= 1.0) : (v4 = 0), v4))
  {
    v5 = 0;
    v7 = v2[1];
    if (v7 >= 0.0 && v7 <= 1.0)
    {
      v5 = 0;
      v9 = v2[2];
      if (v9 >= 0.0 && v9 <= 1.0)
      {
        v5 = 0;
        v11 = v2[3];
        if (v11 >= 0.0 && v11 <= 1.0)
        {
          v5 = [MEMORY[0x1E69DC888] colorWithDisplayP3Red:v3 green:? blue:? alpha:?];
        }
      }
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

void PKUIEndTrackingPresentation()
{
  if (PresentationTrackingCounter)
  {
    --PresentationTrackingCounter;
  }

  else
  {
    v4 = v0;
    v5 = v1;
    v2 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      *v3 = 0;
      _os_log_error_impl(&dword_1BD026000, v2, OS_LOG_TYPE_ERROR, "INVARIANT VIOLATION: attempting to stop tracking a non-existent presentation.", v3, 2u);
    }
  }
}

BOOL PKUIStoreDemoGatewayWithView(void *a1)
{
  v1 = [a1 pkui_viewControllerFromResponderChain];
  v2 = PKUIStoreDemoGatewayWithViewController(v1);

  return v2;
}

BOOL PKUIStoreDemoGatewayWithViewController(void *a1)
{
  v1 = a1;
  v2 = PKUIStoreDemoGatewayViewController();
  if (v2)
  {
    [v1 presentViewController:v2 animated:1 completion:0];
  }

  return v2 == 0;
}

id PKUIStoreDemoGatewayViewController()
{
  if (PKStoreDemoModeEnabled())
  {
    v0 = MEMORY[0x1E69DC650];
    v1 = PKLocalizedString(&cfstr_GenericDemoMod.isa);
    v2 = [v0 alertControllerWithTitle:v1 message:0 preferredStyle:1];

    v3 = MEMORY[0x1E69DC648];
    v4 = PKLocalizedString(&cfstr_GenericDemoMod_0.isa);
    v5 = [v3 actionWithTitle:v4 style:1 handler:0];
    [v2 addAction:v5];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t PKFloatCeilToPixel(__n128 a1, __n128 a2)
{
  v2 = a1.n128_u64[0];
  if (qword_1EBD6ABF8 != -1)
  {
    dispatch_once(&qword_1EBD6ABF8, &__block_literal_global_297);
  }

  a2.n128_u64[0] = qword_1EBD6ABF0;
  a1.n128_u64[0] = v2;

  return MEMORY[0x1EEE24990](a1, a2);
}

uint64_t PKUserInterfaceIdiom()
{
  if (qword_1EBD6ABE0 != -1)
  {
    dispatch_once(&qword_1EBD6ABE0, &__block_literal_global_50);
  }

  return qword_1EBD6ABD8;
}

double PKViewSetAlphaAnimated(void *a1, void *a2, double a3)
{
  v4 = 0.0;
  _PKViewSetAlphaAnimated(a1, a2, &v4, a3, 0.0);
  return v4;
}

void _PKViewSetAlphaAnimated(void *a1, void *a2, double *a3, double a4, double a5)
{
  v9 = a1;
  v10 = a2;
  v21 = 0;
  v11 = [MEMORY[0x1E69B92B0] sharedDefaultFactory];
  [v9 pkui_setAlpha:v11 withAnimationFactory:&v21 animation:0 removePriorAnimation:a4];

  v12 = v21;
  if (v21)
  {
    if (a3)
    {
      [v21 duration];
      *a3 = v13 + a5;
      v12 = v21;
    }

    [v12 setBeginTime:a5];
    if (v10)
    {
      v14 = v21;
      v16 = MEMORY[0x1E69E9820];
      v17 = 3221225472;
      v18 = ___PKViewSetAlphaAnimated_block_invoke;
      v19 = &unk_1E8010AD8;
      v20 = v10;
      [v14 pkui_setCompletionHandler:&v16];
    }

    v15 = [v9 layer];
    [v15 removeAnimationForKey:@"opacity"];
    [v15 addAnimation:v21 forKey:@"opacity"];
  }

  else
  {
    if (a3)
    {
      *a3 = 0.0;
    }

    if (v10)
    {
      (*(v10 + 2))(v10, 1);
    }
  }
}

double PKViewSetAlphaAnimated(void *a1, void *a2, double a3, double a4)
{
  v5 = 0.0;
  _PKViewSetAlphaAnimated(a1, a2, &v5, a3, a4);
  return v5;
}

void sub_1BDB68844(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t PKUIKeyboardIsHardwareKeyboardActive()
{
  result = [MEMORY[0x1E69DCBB8] isInHardwareKeyboardMode];
  if (result)
  {
    v1 = [MEMORY[0x1E69DCBB8] activeKeyboard];
    v2 = [v1 isMinimized];

    return v2;
  }

  return result;
}

id PKAttributedStringByAddingLinkToRange(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = a4;
  v8 = MEMORY[0x1E696AD40];
  v9 = a1;
  v10 = [[v8 alloc] initWithString:v9];

  v11 = *MEMORY[0x1E69DB670];
  if (v7)
  {
    [v10 addAttribute:*MEMORY[0x1E69DB670] value:v7 range:{a2, a3}];
  }

  else
  {
    v12 = [MEMORY[0x1E695DFF8] URLWithString:&stru_1F3BD7330];
    [v10 addAttribute:v11 value:v12 range:{a2, a3}];
  }

  return v10;
}

id PKAttributedStringByAddingLinkToSubstring(void *a1, void *a2, void *a3)
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = a2;
  v7 = a3;
  v8 = [v5 rangeOfString:v6];
  if (v8 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v10 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 138412546;
      v15 = v6;
      v16 = 2112;
      v17 = v5;
      _os_log_impl(&dword_1BD026000, v10, OS_LOG_TYPE_DEFAULT, "Couldn't add link to string - no occurrences found of '%@' within '%@'.", &v14, 0x16u);
    }

    v11 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v5];
  }

  else
  {
    v11 = PKAttributedStringByAddingLinkToRange(v5, v8, v9, v7);
  }

  v12 = v11;

  return v12;
}

id PKAttributedStringByParsingEmphasisInString(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = a3;
  if (v5)
  {
    v8 = objc_alloc_init(MEMORY[0x1E696AD40]);
    v9 = [v6 fontDescriptor];
    v10 = [v9 fontDescriptorWithSymbolicTraits:2];
    v44 = v9;
    v11 = [v9 fontDescriptorWithSymbolicTraits:1];
    v12 = MEMORY[0x1E69DB878];
    [v6 pointSize];
    v43 = v10;
    v13 = [v12 fontWithDescriptor:v10 size:?];
    v14 = MEMORY[0x1E69DB878];
    [v6 pointSize];
    v42 = v11;
    v15 = [v14 fontWithDescriptor:v11 size:?];
    v16 = MEMORY[0x1E695E0F8];
    if (v7)
    {
      v16 = v7;
    }

    v17 = v16;

    v40 = v17;
    v18 = [objc_alloc(MEMORY[0x1E695DF90]) initWithDictionary:v17];
    v19 = [v18 mutableCopy];
    v20 = [v18 mutableCopy];
    v21 = [v18 mutableCopy];
    v22 = *MEMORY[0x1E69DB648];
    [v18 setValue:v6 forKey:*MEMORY[0x1E69DB648]];
    v39 = v15;
    [v19 setValue:v15 forKey:v22];
    v41 = v13;
    [v20 setValue:v13 forKey:v22];
    [v21 setValue:&unk_1F3CC6EA8 forKey:*MEMORY[0x1E69DB6B8]];
    [v21 setValue:v6 forKey:v22];
    v59 = 0;
    v60 = &v59;
    v61 = 0x2020000000;
    v62 = 0;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __PKAttributedStringByParsingEmphasisInString_block_invoke;
    aBlock[3] = &unk_1E8014CB8;
    v58 = &v59;
    v45 = v5;
    v23 = v5;
    v55 = v23;
    v37 = v18;
    v56 = v37;
    v24 = v8;
    v57 = v24;
    v25 = _Block_copy(aBlock);
    v26 = [objc_alloc(MEMORY[0x1E696AE70]) initWithPattern:@"(\\*|\\_|\\~~)+([^\\*\\_\\~~]*)(\\*|\\_|\\~~)+" options:1 error:0];
    v27 = [v23 length];
    v46[0] = MEMORY[0x1E69E9820];
    v46[1] = 3221225472;
    v46[2] = __PKAttributedStringByParsingEmphasisInString_block_invoke_2;
    v46[3] = &unk_1E8014CE0;
    v28 = v25;
    v52 = v28;
    v53 = &v59;
    v29 = v23;
    v47 = v29;
    v30 = v21;
    v48 = v30;
    v31 = v19;
    v49 = v31;
    v32 = v20;
    v50 = v32;
    v33 = v24;
    v51 = v33;
    [v26 enumerateMatchesInString:v29 options:0 range:0 usingBlock:{v27, v46}];
    v34 = v60[3];
    if (v34 != [v29 length])
    {
      (*(v28 + 2))(v28, [v29 length]);
    }

    v35 = [v33 copy];

    _Block_object_dispose(&v59, 8);
    v7 = v40;
    v5 = v45;
  }

  else
  {
    v35 = 0;
  }

  return v35;
}

void __PKAttributedStringByParsingEmphasisInString_block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = *(*(*(a1 + 56) + 8) + 24);
  v5 = [*(a1 + 32) substringWithRange:{v3, a2 - v3}];
  v4 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v5 attributes:*(a1 + 40)];
  [*(a1 + 48) appendAttributedString:v4];
}

void __PKAttributedStringByParsingEmphasisInString_block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 72);
  v4 = a2;
  (*(v3 + 16))(v3, [v4 range]);
  v5 = [v4 range];
  [v4 range];
  *(*(*(a1 + 80) + 8) + 24) = v6 + v5;
  v7 = *(a1 + 32);
  v8 = [v4 range];
  v10 = v9;

  v11 = [v7 substringWithRange:{v8, v10}];
  LODWORD(v4) = [v11 characterAtIndex:0];
  v12 = [v11 characterAtIndex:1];
  if (v4 == 126 && v12 == 126)
  {
    v13 = -4;
    v14 = 2;
    v15 = 40;
  }

  else if (v12 == 95 || v12 == 42)
  {
    v13 = -4;
    v14 = 2;
    v15 = 56;
  }

  else
  {
    v13 = -2;
    v14 = 1;
    v15 = 48;
  }

  v16 = [v11 substringWithRange:{v14, objc_msgSend(v11, "length") + v13}];
  v17 = objc_alloc(MEMORY[0x1E696AAB0]);
  v18 = [*(a1 + v15) copy];
  v19 = [v17 initWithString:v16 attributes:v18];

  [*(a1 + 64) appendAttributedString:v19];
}

id PKDeviceSpecificLocalizedStringKeyForKey(void *a1, int a2)
{
  if (a2)
  {
    [a1 stringByAppendingString:@"_WATCH"];
  }

  else
  {
    [MEMORY[0x1E69DC938] modelSpecificLocalizedStringKeyForKey:a1];
  }
  v2 = ;

  return v2;
}

void __PKUserInterfaceIdiom_block_invoke()
{
  v0 = [MEMORY[0x1E69DC938] currentDevice];
  qword_1EBD6ABD8 = [v0 userInterfaceIdiom];
}

id PKUIFeatureNotImplementedAlertViewController()
{
  v0 = MEMORY[0x1E69DC650];
  v1 = PKLocalizedString(&cfstr_GenericFeature.isa);
  v2 = [v0 alertControllerWithTitle:v1 message:0 preferredStyle:1];

  v3 = MEMORY[0x1E69DC648];
  v4 = PKLocalizedString(&cfstr_GenericFeature_0.isa);
  v5 = [v3 actionWithTitle:v4 style:0 handler:0];
  [v2 addAction:v5];

  return v2;
}

id PKUIKeyWindow()
{
  v34 = *MEMORY[0x1E69E9840];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v0 = 0x1E69DC000uLL;
  v1 = [MEMORY[0x1E69DC668] sharedApplication];
  v2 = [v1 connectedScenes];

  v3 = [v2 countByEnumeratingWithState:&v28 objects:v33 count:16];
  if (!v3)
  {

LABEL_25:
    v19 = [*(v0 + 1640) sharedApplication];
    v20 = [v19 delegate];

    if (v20 && (objc_opt_respondsToSelector() & 1) != 0)
    {
      v18 = [v20 window];
    }

    else
    {
      v18 = 0;
    }

    goto LABEL_30;
  }

  v4 = v3;
  v22 = v2;
  v23 = 0;
  v5 = *v29;
  v6 = 0x1E69DD000uLL;
  do
  {
    for (i = 0; i != v4; ++i)
    {
      if (*v29 != v5)
      {
        objc_enumerationMutation(v2);
      }

      v8 = *(*(&v28 + 1) + 8 * i);
      if (![v8 activationState])
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v9 = v8;
          v24 = 0u;
          v25 = 0u;
          v26 = 0u;
          v27 = 0u;
          v10 = [v9 windows];
          v11 = [v10 countByEnumeratingWithState:&v24 objects:v32 count:16];
          if (v11)
          {
            v12 = v11;
            v13 = v6;
            v14 = *v25;
            while (2)
            {
              for (j = 0; j != v12; ++j)
              {
                if (*v25 != v14)
                {
                  objc_enumerationMutation(v10);
                }

                v16 = *(*(&v24 + 1) + 8 * j);
                if ([v16 isKeyWindow])
                {
                  v17 = v16;

                  v23 = v17;
                  goto LABEL_18;
                }
              }

              v12 = [v10 countByEnumeratingWithState:&v24 objects:v32 count:16];
              if (v12)
              {
                continue;
              }

              break;
            }

LABEL_18:
            v6 = v13;
            v2 = v22;
          }
        }
      }
    }

    v4 = [v2 countByEnumeratingWithState:&v28 objects:v33 count:16];
  }

  while (v4);

  v0 = 0x1E69DC000;
  v18 = v23;
  if (!v23)
  {
    goto LABEL_25;
  }

LABEL_30:

  return v18;
}

BOOL PKIsSmallDevice()
{
  if (qword_1EBD6AC20 != -1)
  {
    dispatch_once(&qword_1EBD6AC20, &__block_literal_global_370);
  }

  return qword_1EBD6AC18 == 0;
}

double PKTableViewCellTextInset()
{
  if (qword_1EBD6AC20 != -1)
  {
    dispatch_once(&qword_1EBD6AC20, &__block_literal_global_370);
  }

  result = 15.0;
  if (qword_1EBD6AC18 >= 5)
  {
    v1 = PKUserInterfaceIdiomSupportsLargeLayouts();
    result = 20.0;
    if (v1)
    {
      return 15.0;
    }
  }

  return result;
}

double PKTableViewSideInset()
{
  v0 = PKUserInterfaceIdiomSupportsLargeLayouts();
  result = 20.0;
  if (v0)
  {
    return 28.0;
  }

  return result;
}

uint64_t PKRectRoundToPixel(__n128 a1, __n128 a2, __n128 a3, __n128 a4, __n128 a5)
{
  v5 = a4.n128_u64[0];
  v6 = a3.n128_u64[0];
  v7 = a2.n128_u64[0];
  v8 = a1.n128_u64[0];
  if (qword_1EBD6ABF8 != -1)
  {
    dispatch_once(&qword_1EBD6ABF8, &__block_literal_global_297);
  }

  a5.n128_u64[0] = qword_1EBD6ABF0;
  a1.n128_u64[0] = v8;
  a2.n128_u64[0] = v7;
  a3.n128_u64[0] = v6;
  a4.n128_u64[0] = v5;

  return MEMORY[0x1EEE25340](a1, a2, a3, a4, a5);
}

uint64_t PKSizeRoundToPixel()
{
  if (qword_1EBD6ABF8 != -1)
  {
    dispatch_once(&qword_1EBD6ABF8, &__block_literal_global_297);
  }

  return PKSizeRoundToPixelWithScale();
}

uint64_t PKSizeCeilToPixel(__n128 a1, __n128 a2, __n128 a3)
{
  v3 = a2.n128_u64[0];
  v4 = a1.n128_u64[0];
  if (qword_1EBD6ABF8 != -1)
  {
    dispatch_once(&qword_1EBD6ABF8, &__block_literal_global_297);
  }

  a3.n128_u64[0] = qword_1EBD6ABF0;
  a1.n128_u64[0] = v4;
  a2.n128_u64[0] = v3;

  return MEMORY[0x1EEE25790](a1, a2, a3);
}

uint64_t PKSizeFloorToPixel(__n128 a1, __n128 a2, __n128 a3)
{
  v3 = a2.n128_u64[0];
  v4 = a1.n128_u64[0];
  if (qword_1EBD6ABF8 != -1)
  {
    dispatch_once(&qword_1EBD6ABF8, &__block_literal_global_297);
  }

  a3.n128_u64[0] = qword_1EBD6ABF0;
  a1.n128_u64[0] = v4;
  a2.n128_u64[0] = v3;

  return MEMORY[0x1EEE25798](a1, a2, a3);
}

uint64_t PKPointRoundToPixel(__n128 a1, __n128 a2, __n128 a3)
{
  v3 = a2.n128_u64[0];
  v4 = a1.n128_u64[0];
  if (qword_1EBD6ABF8 != -1)
  {
    dispatch_once(&qword_1EBD6ABF8, &__block_literal_global_297);
  }

  a3.n128_u64[0] = qword_1EBD6ABF0;
  a1.n128_u64[0] = v4;
  a2.n128_u64[0] = v3;

  return MEMORY[0x1EEE252B8](a1, a2, a3);
}

uint64_t PKFloatFloorToPixel(__n128 a1, __n128 a2)
{
  v2 = a1.n128_u64[0];
  if (qword_1EBD6ABF8 != -1)
  {
    dispatch_once(&qword_1EBD6ABF8, &__block_literal_global_297);
  }

  a2.n128_u64[0] = qword_1EBD6ABF0;
  a1.n128_u64[0] = v2;

  return MEMORY[0x1EEE24998](a1, a2);
}

id PKUIImageNamed(void *a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (v1)
  {
    v2 = MEMORY[0x1E69DCAB8];
    v3 = PKPassKitUIBundle();
    v4 = [v2 imageNamed:v1 inBundle:v3];

    if (v4)
    {
      goto LABEL_7;
    }

    v5 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v7 = 136315394;
      v8 = "PKUIImageNamed";
      v9 = 2114;
      v10 = v1;
      _os_log_error_impl(&dword_1BD026000, v5, OS_LOG_TYPE_ERROR, "%s: Failed to find image named '%{public}@'", &v7, 0x16u);
    }
  }

  v4 = 0;
LABEL_7:

  return v4;
}

id PKUIDynamicImageNamed(void *a1, void *a2)
{
  v3 = a2;
  v4 = PKUIImageNamed(a1);
  v5 = PKUIImageNamed(v3);

  v6 = PKUIDynamicImage(v4, v5);

  return v6;
}

id PKUIDynamicImage(void *a1, void *a2)
{
  v23[2] = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (v3 && v4)
  {
    v6 = objc_alloc_init(MEMORY[0x1E69DCAC0]);
    v7 = MEMORY[0x1E69DD1B8];
    [v3 scale];
    v8 = [v7 traitCollectionWithDisplayScale:?];
    v9 = MEMORY[0x1E69DD1B8];
    v23[0] = v8;
    v10 = [MEMORY[0x1E69DD1B8] traitCollectionWithUserInterfaceStyle:0];
    v23[1] = v10;
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:2];
    v12 = [v9 traitCollectionWithTraitsFromCollections:v11];

    [v6 registerImage:v3 withTraitCollection:v12];
    v13 = MEMORY[0x1E69DD1B8];
    v22[0] = v8;
    v14 = [MEMORY[0x1E69DD1B8] traitCollectionWithUserInterfaceStyle:2];
    v22[1] = v14;
    v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:2];
    v16 = [v13 traitCollectionWithTraitsFromCollections:v15];

    [v6 registerImage:v5 withTraitCollection:v16];
    v17 = objc_alloc_init(MEMORY[0x1E69DD1B8]);
    v18 = [v17 imageConfiguration];
    v19 = [v6 imageWithConfiguration:v18];
  }

  else
  {
    if (v3)
    {
      v20 = v3;
    }

    else
    {
      v20 = v4;
    }

    v19 = v20;
  }

  return v19;
}

id PKDOverlayWhiteColor(int a1)
{
  if (a1)
  {
    [MEMORY[0x1E69DC888] whiteColor];
  }

  else
  {
    [MEMORY[0x1E69DC888] colorWithRed:0.792156863 green:0.792156863 blue:0.792156863 alpha:0.72];
  }
  v1 = ;

  return v1;
}

id PKUIApplePayLogo(void *a1, CGFloat a2, CGFloat a3, double a4)
{
  v7 = a1;
  v8 = [MEMORY[0x1E69DC888] whiteColor];
  v9 = [v7 isEqual:v8];

  if (v9)
  {
    v10 = 0;
    v11 = @"CashButtonLogoWhite";
  }

  else
  {
    v12 = [MEMORY[0x1E69DC888] blackColor];
    v13 = [v7 isEqual:v12];

    if (v13)
    {
      v10 = 0;
    }

    else
    {
      v10 = v7;
    }

    v11 = @"CashButtonLogoBlack";
  }

  v14 = PKPassKitBundle();
  v15 = [v14 URLForResource:v11 withExtension:@"pdf"];

  if (a4 == 0.0)
  {
    PKScreenScale();
    a4 = v16;
  }

  v17 = PKUIImageFromPDF(v15, a2, a3, a4);
  v18 = v17;
  if (v10)
  {
    v19 = [v17 pkui_imageOverlaidWithColor:v10];

    v18 = v19;
  }

  return v18;
}

id PKUIPeerPaymentTopUpIconImage(double a1)
{
  v36[3] = *MEMORY[0x1E69E9840];
  if (qword_1EBD6ABF8 != -1)
  {
    dispatch_once(&qword_1EBD6ABF8, &__block_literal_global_297);
  }

  v2 = *&qword_1EBD6ABF0;
  v3 = *MEMORY[0x1E695EFF8];
  v4 = *(MEMORY[0x1E695EFF8] + 8);
  v5 = [MEMORY[0x1E69DB878] pk_peerPaymentChiseledCashFontOfSize:a1 + -20.0];
  v6 = *MEMORY[0x1E69DB648];
  v36[0] = v5;
  v7 = *MEMORY[0x1E69DB600];
  v35[0] = v6;
  v35[1] = v7;
  v8 = [MEMORY[0x1E69DC888] clearColor];
  v36[1] = v8;
  v35[2] = *MEMORY[0x1E69DB650];
  v9 = [MEMORY[0x1E69DC888] whiteColor];
  v36[2] = v9;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v36 forKeys:v35 count:3];

  [@"$" sizeWithAttributes:v10];
  PKSizeAlignedInRect();
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v19 = objc_alloc_init(MEMORY[0x1E69DCA80]);
  [v19 setOpaque:0];
  [v19 setScale:v2];
  v20 = [objc_alloc(MEMORY[0x1E69DCA78]) initWithSize:v19 format:{a1, a1}];
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __PKUIPeerPaymentTopUpIconImage_block_invoke;
  v24[3] = &unk_1E8014D08;
  v27 = v3;
  v28 = v4;
  v29 = a1;
  v30 = a1;
  v31 = v12;
  v32 = v14;
  v33 = v16;
  v34 = v18;
  v25 = @"$";
  v26 = v10;
  v21 = v10;
  v22 = [v20 imageWithActions:v24];

  return v22;
}

uint64_t __PKUIPeerPaymentTopUpIconImage_block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 CGContext];
  v5 = [MEMORY[0x1E69DC888] blackColor];
  CGContextSetFillColorWithColor(v4, [v5 CGColor]);

  [v3 fillRect:{*(a1 + 48), *(a1 + 56), *(a1 + 64), *(a1 + 72)}];
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v8 = *(a1 + 80);
  v9 = *(a1 + 88);
  v10 = *(a1 + 96);
  v11 = *(a1 + 104);

  return [v6 drawInRect:v7 withAttributes:{v8, v9, v10, v11}];
}

id PKUIInfoButtonImage(void *a1)
{
  v1 = a1;
  v2 = MEMORY[0x1E69DCAB8];
  if (_UISolariumFeatureFlagEnabled())
  {
    v3 = @"ellipsis";
  }

  else
  {
    v3 = @"ellipsis.circle";
  }

  v4 = [v2 systemImageNamed:v3];
  v5 = v4;
  if (v1)
  {
    v6 = [v4 imageWithSymbolConfiguration:v1];
  }

  else
  {
    v6 = v4;
  }

  v7 = v6;

  return v7;
}

id PKUIInfoButtonImageWithDefaultConfiguration()
{
  v0 = [MEMORY[0x1E69DCAD8] configurationWithScale:3];
  v1 = PKUIInfoButtonImage(v0);

  return v1;
}

id PKUIBigInfoButtonImageWithDefaultConfiguration()
{
  v0 = MEMORY[0x1E69DCAB8];
  if (_UISolariumFeatureFlagEnabled())
  {
    v1 = @"info";
  }

  else
  {
    v1 = @"info.circle";
  }

  v2 = [v0 systemImageNamed:v1];
  v3 = [MEMORY[0x1E69DCAD8] configurationWithScale:3];
  v4 = [v2 imageWithSymbolConfiguration:v3];

  return v4;
}

id PKUIChevronImage()
{
  v0 = [MEMORY[0x1E69DCAD8] unspecifiedConfiguration];
  v1 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"chevron.forward"];
  v2 = [v1 imageWithSymbolConfiguration:v0];

  return v2;
}

id PKUISmallChevronImage()
{
  v0 = [MEMORY[0x1E69DCAD8] configurationWithTextStyle:*MEMORY[0x1E69DDCF8] scale:1];
  v1 = [MEMORY[0x1E69DCAD8] configurationWithWeight:6];
  v2 = [v0 configurationByApplyingConfiguration:v1];

  v3 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"chevron.forward"];
  v4 = [v3 imageWithSymbolConfiguration:v2];

  return v4;
}

id PKUISmallExclamationMarkImage()
{
  v0 = [MEMORY[0x1E69DCAD8] configurationWithWeight:5];
  v1 = [MEMORY[0x1E69DCAD8] configurationWithScale:1];
  v2 = [v0 configurationByApplyingConfiguration:v1];

  v3 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"exclamationmark.circle"];
  v4 = [v3 imageWithSymbolConfiguration:v2];

  return v4;
}

id PKUICellAccessoryCheckmarkConfiguration(void *a1)
{
  v1 = _PKFontForDesign(a1, *MEMORY[0x1E69DB8C8], *MEMORY[0x1E69DDCF8], 2, 0, 0);
  v2 = [MEMORY[0x1E69DCAD8] configurationWithFont:v1 scale:2];

  return v2;
}

id PKFontForDefaultDesign(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v4 = _PKFontForDesign(a1, *MEMORY[0x1E69DB8C8], a2, a3, a4, 0);

  return v4;
}

{
  v7 = MEMORY[0x1E69DD1B8];
  v8 = a1;
  v9 = _PKImplicitContentSizeCategoryWithMaximum(a2);
  v10 = [v7 traitCollectionWithPreferredContentSizeCategory:v9];

  v11 = _PKFontForDesign(v10, *MEMORY[0x1E69DB8C8], v8, a3, a4, 0);

  return v11;
}

id PKUIImageWithBackgroundAndCornerRadius(void *a1, void *a2, double a3, double a4, double a5)
{
  v9 = a1;
  v10 = a2;
  v11 = *MEMORY[0x1E695EFF8];
  v12 = *(MEMORY[0x1E695EFF8] + 8);
  v13 = objc_alloc(MEMORY[0x1E69DCA78]);
  v14 = [MEMORY[0x1E69DCA80] preferredFormat];
  v15 = [v13 initWithBounds:v14 format:{v11, v12, a3, a4}];

  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __PKUIImageWithBackgroundAndCornerRadius_block_invoke;
  v20[3] = &unk_1E8014D30;
  v23 = a5;
  v24 = v11;
  v25 = v12;
  v26 = a3;
  v27 = a4;
  v21 = v10;
  v22 = v9;
  v16 = v9;
  v17 = v10;
  v18 = [v15 imageWithActions:v20];

  return v18;
}

uint64_t __PKUIImageWithBackgroundAndCornerRadius_block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 CGContext];
  if (*(a1 + 48) > 0.0)
  {
    v5 = [MEMORY[0x1E69DC728] bezierPathWithRoundedRect:*(a1 + 56) cornerRadius:{*(a1 + 64), *(a1 + 72), *(a1 + 80)}];
    [v5 addClip];
  }

  CGContextSetFillColorWithColor(v4, [*(a1 + 32) CGColor]);
  [v3 fillRect:{*(a1 + 56), *(a1 + 64), *(a1 + 72), *(a1 + 80)}];

  [*(a1 + 40) size];
  PKRectCenteredIntegralRect();
  v6 = *(a1 + 40);

  return [v6 drawInRect:?];
}

PKContinuousButton *PKCreateLargeSolidButton()
{
  v2[0] = 0x402C000000000000;
  v2[1] = 1;
  v3 = vdupq_n_s64(2uLL);
  v4 = 2;
  v0 = [[PKContinuousButton alloc] initWithConfiguration:v2];

  return v0;
}

PKContinuousButton *PKCreateLargeSolidPillButton()
{
  if (_UISolariumFeatureFlagEnabled())
  {
    v0 = _PKCreateLargeSolidPillButton();
  }

  else
  {
    v2 = 0;
    v3 = vdupq_n_s64(2uLL);
    v4 = v3;
    v0 = [[PKContinuousButton alloc] initWithConfiguration:&v2];
  }

  return v0;
}

void *_PKCreateLargeSolidPillButton()
{
  v0 = [MEMORY[0x1E69DC740] filledButtonConfiguration];
  [v0 setCornerStyle:4];
  v1 = [PKLegacyButtonInterfaceButton buttonWithConfiguration:v0 primaryAction:0];
  v2 = [v1 tintColor];
  if (v2)
  {
    [v1 updateBackgroundColorWithColor:v2];
  }

  else
  {
    v3 = [MEMORY[0x1E69DC888] systemBlueColor];
    [v1 updateBackgroundColorWithColor:v3];
  }

  return v1;
}

PKContinuousButton *PKCreateLargeBlurredPillButton()
{
  if (_UISolariumFeatureFlagEnabled())
  {
    v0 = _PKCreateLargeSolidPillButton();
    [(UIView *)v0 pkui_applyGlassBackground];
  }

  else
  {
    v2 = 0;
    v3 = xmmword_1BE114BA0;
    v4 = vdupq_n_s64(2uLL);
    v0 = [[PKContinuousButton alloc] initWithConfiguration:&v2];
  }

  return v0;
}

id PKCreateLargeSecondaryPillButton()
{
  v0 = [MEMORY[0x1E69DC740] pkui_createSecondaryButtonConfiguration];
  v1 = [PKLegacyButtonInterfaceButton buttonWithConfiguration:v0 primaryAction:0];
  if (_UISolariumFeatureFlagEnabled())
  {
    [v1 pkui_applyGlassBackground];
  }

  return v1;
}

void PKUIPerformWithEffectiveTraitCollection(void *a1, void *a2)
{
  v5 = a1;
  v3 = a2;
  if (v3)
  {
    v4 = [MEMORY[0x1E69DD1B8] currentTraitCollection];
    if (v5)
    {
      [MEMORY[0x1E69DD1B8] setCurrentTraitCollection:?];
      v3[2](v3);
      [MEMORY[0x1E69DD1B8] setCurrentTraitCollection:v4];
    }

    else
    {
      v3[2](v3);
    }
  }
}

id PKUIGetAppIconForApplicationRecord(void *a1)
{
  v1 = [a1 URL];
  if (v1)
  {
    PKScreenScale();
    v3 = v2;
    v4 = [MEMORY[0x1E69A8A30] imageDescriptorNamed:*MEMORY[0x1E69A8AA0]];
    [v4 setScale:v3];
    v5 = [objc_alloc(MEMORY[0x1E69A8A00]) initWithURL:v1];
    v6 = [v5 prepareImageForDescriptor:v4];
    v7 = CGImageRetain([v6 CGImage]);
    if (v7)
    {
      v8 = v7;
      v9 = [objc_alloc(MEMORY[0x1E69DCAB8]) initWithCGImage:v7 scale:0 orientation:v3];
      CGImageRelease(v8);
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

id PKUIGetWalletAppIcon()
{
  v0 = PKAppIconBundleIdentifier();
  v1 = [MEMORY[0x1E69A8A30] imageDescriptorNamed:*MEMORY[0x1E69A8AA0]];
  v2 = _PKUIGetAppIconForBundleIdentifierAndDescriptor(v0, v1);

  return v2;
}

id PKUIGetWalletAppIconWithDescriptor(void *a1)
{
  v1 = a1;
  v2 = PKAppIconBundleIdentifier();
  v3 = _PKUIGetAppIconForBundleIdentifierAndDescriptor(v2, v1);

  return v3;
}

id _PKUIGetAppIconForBundleIdentifierAndDescriptor(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  PKScreenScale();
  v6 = v5;
  [v3 setScale:?];
  v7 = [objc_alloc(MEMORY[0x1E69A8A00]) initWithBundleIdentifier:v4];

  v8 = [v7 prepareImageForDescriptor:v3];

  v9 = CGImageRetain([v8 CGImage]);
  if (v9)
  {
    v10 = v9;
    v11 = [objc_alloc(MEMORY[0x1E69DCAB8]) initWithCGImage:v9 scale:0 orientation:v6];
    CGImageRelease(v10);
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

id PKUIGetWalletAppIconWithSize(double a1, double a2)
{
  v4 = PKAppIconBundleIdentifier();
  v5 = objc_alloc(MEMORY[0x1E69A8A30]);
  PKScreenScale();
  v7 = [v5 initWithSize:a1 scale:{a2, v6}];
  v8 = _PKUIGetAppIconForBundleIdentifierAndDescriptor(v4, v7);

  return v8;
}

CGFloat WLRectByApplyingContentModeToSizeInRect(uint64_t a1, NSAlignmentOptions a2, CGFloat a3, CGFloat a4, double a5, CGFloat a6, double a7, double a8)
{
  v11 = MEMORY[0x1E695EFD0];
  v12 = *MEMORY[0x1E695EFD0];
  v13 = *(MEMORY[0x1E695EFD0] + 24);
  v19 = *(MEMORY[0x1E695EFD0] + 32);
  v20 = v13;
  v18 = *(MEMORY[0x1E695EFD0] + 40);
  if (a1 > 3)
  {
    if (a1 > 0xC)
    {
      goto LABEL_23;
    }

    if (((1 << a1) & 0x70) != 0)
    {
      a5 = a5 + a7 * 0.5 - a3 * 0.5;
    }

    else if (((1 << a1) & 0xA80) == 0)
    {
      if (((1 << a1) & 0x1500) == 0)
      {
        goto LABEL_23;
      }

      a5 = a5 + a7 - a3;
    }

    v14 = &v19;
LABEL_15:
    *v14 = a5;
    if (((1 << a1) & 0x190) != 0)
    {
      a6 = a6 + a8 * 0.5 - a4 * 0.5;
    }

    else if (((1 << a1) & 0x620) == 0)
    {
      if (((1 << a1) & 0x1840) == 0)
      {
        goto LABEL_23;
      }

      a6 = a6 + a8 - a4;
    }

    v15 = &v18;
    goto LABEL_22;
  }

  if (a1)
  {
    if (a1 == 1)
    {
      v13 = a8 / a4;
      if (a7 / a3 < a8 / a4)
      {
        v13 = a7 / a3;
      }
    }

    else
    {
      if (a1 != 2)
      {
        goto LABEL_23;
      }

      v13 = a8 / a4;
      if (a7 / a3 > a8 / a4)
      {
        v13 = a7 / a3;
      }
    }

    v19 = a5 + (a7 - a3 * v13) * 0.5;
    v20 = v13;
    a5 = a6 + (a8 - a4 * v13) * 0.5;
    v14 = &v18;
    v12 = v13;
    goto LABEL_15;
  }

  v18 = a6;
  v19 = a5;
  if (a7 != a3)
  {
    v12 = a7 / a3;
  }

  if (a8 != a4)
  {
    v15 = &v20;
    a6 = a8 / a4;
LABEL_22:
    *v15 = a6;
    v13 = v20;
  }

LABEL_23:
  v17.a = v12;
  *&v17.b = *(v11 + 8);
  v17.d = v13;
  v17.tx = v19;
  v17.ty = v18;
  v21.origin.x = 0.0;
  v21.origin.y = 0.0;
  v21.size.width = a3;
  v21.size.height = a4;
  v22 = CGRectApplyAffineTransform(v21, &v17);
  if (a2)
  {
    *&v22.origin.x = NSIntegralRectWithOptions(v22, a2);
  }

  return v22.origin.x;
}

id PKDefaultSystemFontWithPreferredSizeForTextStyleAndWeight(uint64_t a1, double a2)
{
  v3 = [MEMORY[0x1E69DB880] preferredFontDescriptorWithTextStyle:a1];
  [v3 pointSize];
  v5 = _PKSystemFontOfSizeAndWeightForDesign(*MEMORY[0x1E69658B8], @"ss04", v4, a2);

  return v5;
}

id PKRoundedSystemFontOfSizeAndWeight(double a1, double a2)
{
  v2 = _PKSystemFontOfSizeAndWeightForDesign(*MEMORY[0x1E69658C8], @"cv09", a1, a2);

  return v2;
}

id PKFontMatchingCriteria(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v7 = a1;
  v8 = a3;
  if ((a4 & 0x10) == 0)
  {
    v9 = *MEMORY[0x1E69DB8C8];
LABEL_4:
    v10 = 0;
    goto LABEL_6;
  }

  v9 = *MEMORY[0x1E69DB8D8];
  if ((a2 & 2) == 0)
  {
    goto LABEL_4;
  }

  v10 = [MEMORY[0x1E696AD98] numberWithDouble:*MEMORY[0x1E69DB958]];
LABEL_6:
  v11 = MEMORY[0x1E69DD1B8];
  v12 = _PKImplicitContentSizeCategoryWithMaximum(v8);
  v13 = [v11 traitCollectionWithPreferredContentSizeCategory:v12];

  v14 = _PKFontForDesign(v13, v9, v7, a2, a4, v10);

  return v14;
}

uint64_t _PKFontForDesign(void *a1, void *a2, void *a3, uint64_t a4, uint64_t a5, void *a6)
{
  v59[2] = *MEMORY[0x1E69E9840];
  v11 = a1;
  v12 = a2;
  v13 = a3;
  v14 = a6;
  context = objc_autoreleasePoolPush();
  if (v12)
  {
    v15 = [v12 isEqualToString:*MEMORY[0x1E69DB8D8]];
  }

  else
  {
    v15 = 0;
  }

  v16 = [MEMORY[0x1E69DB880] preferredFontDescriptorWithTextStyle:v13 compatibleWithTraitCollection:v11];
  v17 = v16;
  if (v12)
  {
    v18 = [v16 fontDescriptorWithDesign:v12];
    v19 = v18;
    if (v18)
    {
      v20 = v18;
    }

    else
    {
      v20 = v17;
    }

    v21 = v20;

    v17 = v21;
  }

  if (a4)
  {
    v22 = [v17 fontDescriptorWithSymbolicTraits:a4 mask:a4];
    v23 = v22;
    if (v22)
    {
      v24 = v22;
    }

    else
    {
      v24 = v17;
    }

    v25 = v24;

    v17 = v25;
  }

  v26 = v15 ^ 1;
  if (a5)
  {
    v26 = 0;
  }

  if (v26)
  {
    v37 = 0;
    goto LABEL_32;
  }

  v27 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if ((a5 & 4) != 0)
  {
    v28 = *MEMORY[0x1E69DB900];
    v58[0] = *MEMORY[0x1E69DB908];
    v58[1] = v28;
    v59[0] = &unk_1F3CC6EC0;
    v59[1] = &unk_1F3CC6ED8;
    v29 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v59 forKeys:v58 count:2];
    [v27 addObject:v29];
  }

  if ((a5 & 2) != 0)
  {
    v30 = *MEMORY[0x1E69DB900];
    v56[0] = *MEMORY[0x1E69DB908];
    v56[1] = v30;
    v57[0] = &unk_1F3CC6EF0;
    v57[1] = &unk_1F3CC6F08;
    v31 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v57 forKeys:v56 count:2];
    [v27 addObject:v31];
  }

  if (a5)
  {
    v32 = *MEMORY[0x1E69DB900];
    v54[0] = *MEMORY[0x1E69DB908];
    v54[1] = v32;
    v55[0] = &unk_1F3CC6F20;
    v55[1] = &unk_1F3CC6F08;
    v33 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v55 forKeys:v54 count:2];
    [v27 addObject:v33];
  }

  if ((a5 & 8) == 0)
  {
    if ((a5 & 0x20) == 0)
    {
      goto LABEL_25;
    }

LABEL_40:
    v45 = *MEMORY[0x1E69DB900];
    v50[0] = *MEMORY[0x1E69DB908];
    v50[1] = v45;
    v51[0] = &unk_1F3CC6F68;
    v51[1] = &unk_1F3CC6F50;
    v46 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v51 forKeys:v50 count:2];
    [v27 addObject:v46];

    if (!v15)
    {
      goto LABEL_27;
    }

    goto LABEL_26;
  }

  v43 = *MEMORY[0x1E69DB900];
  v52[0] = *MEMORY[0x1E69DB908];
  v52[1] = v43;
  v53[0] = &unk_1F3CC6F38;
  v53[1] = &unk_1F3CC6F50;
  v44 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v53 forKeys:v52 count:2];
  [v27 addObject:v44];

  if ((a5 & 0x20) != 0)
  {
    goto LABEL_40;
  }

LABEL_25:
  if (v15)
  {
LABEL_26:
    v34 = *MEMORY[0x1E6965818];
    v48[0] = *MEMORY[0x1E6965810];
    v48[1] = v34;
    v49[0] = @"cv09";
    v49[1] = MEMORY[0x1E695E118];
    v35 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v49 forKeys:v48 count:2];
    [v27 addObject:v35];
  }

LABEL_27:
  if ([v27 count])
  {
    v36 = v27;
  }

  else
  {
    v36 = 0;
  }

  v37 = v36;

LABEL_32:
  if (v14 | v37)
  {
    v38 = objc_alloc_init(MEMORY[0x1E695DF90]);
    if (v14)
    {
      v39 = objc_alloc_init(MEMORY[0x1E695DF90]);
      [v39 setObject:v14 forKeyedSubscript:*MEMORY[0x1E69DB990]];
      [v38 setObject:v39 forKeyedSubscript:*MEMORY[0x1E69DB8F0]];
    }

    if (v37)
    {
      [v38 setObject:v37 forKeyedSubscript:*MEMORY[0x1E69DB8B0]];
    }

    v40 = [v17 fontDescriptorByAddingAttributes:v38];

    v17 = v40;
  }

  v41 = [MEMORY[0x1E69DB878] fontWithDescriptor:v17 size:0.0];

  objc_autoreleasePoolPop(context);
  return v41;
}

id PKFontForDefaultDesign(NSString *a1, NSString *a2)
{
  v3 = MEMORY[0x1E69DD1B8];
  v4 = a1;
  v5 = _PKImplicitContentSizeCategoryWithMaximum(a2);
  v6 = [v3 traitCollectionWithPreferredContentSizeCategory:v5];

  v7 = _PKFontForDesign(v6, *MEMORY[0x1E69DB8C8], v4, 0, 0, 0);

  return v7;
}

id PKFontForDefaultDesign(UITraitCollection *a1, NSString *a2)
{
  v2 = _PKFontForDesign(a1, *MEMORY[0x1E69DB8C8], a2, 0, 0, 0);

  return v2;
}

id PKFontForDefaultDesign(NSString *a1, NSString *a2, double a3)
{
  v5 = MEMORY[0x1E69DD1B8];
  v6 = a1;
  v7 = _PKImplicitContentSizeCategoryWithMaximum(a2);
  v8 = [v5 traitCollectionWithPreferredContentSizeCategory:v7];

  v9 = PKFontForDefaultDesign(v8, v6, a3);

  return v9;
}

id PKFontForDefaultDesign(UITraitCollection *a1, NSString *a2, double a3)
{
  v5 = *MEMORY[0x1E69DB8C8];
  v6 = MEMORY[0x1E696AD98];
  v7 = a2;
  v8 = a1;
  v9 = [v6 numberWithDouble:a3];
  v10 = _PKFontForDesign(v8, v5, v7, 0, 0, v9);

  return v10;
}

id PKFontForDefaultDesign(void *a1, void *a2, uint64_t a3, uint64_t a4, double a5)
{
  v9 = MEMORY[0x1E69DD1B8];
  v10 = a1;
  v11 = _PKImplicitContentSizeCategoryWithMaximum(a2);
  v12 = [v9 traitCollectionWithPreferredContentSizeCategory:v11];

  v13 = PKFontForDefaultDesign(v12, v10, a3, a4, a5);

  return v13;
}

{
  v9 = *MEMORY[0x1E69DB8C8];
  v10 = MEMORY[0x1E696AD98];
  v11 = a2;
  v12 = a1;
  v13 = [v10 numberWithDouble:a5];
  v14 = _PKFontForDesign(v12, v9, v11, a3, a4, v13);

  return v14;
}

id PKFontForDesign(NSString *a1, NSString *a2, NSString *a3)
{
  v5 = MEMORY[0x1E69DD1B8];
  v6 = a2;
  v7 = a1;
  v8 = _PKImplicitContentSizeCategoryWithMaximum(a3);
  v9 = [v5 traitCollectionWithPreferredContentSizeCategory:v8];

  v10 = _PKFontForDesign(v9, v7, v6, 0, 0, 0);

  return v10;
}

id PKFontForDesign(UITraitCollection *a1, NSString *a2, NSString *a3)
{
  v3 = _PKFontForDesign(a1, a2, a3, 0, 0, 0);

  return v3;
}

id PKFontForDesign(NSString *a1, NSString *a2, NSString *a3, double a4)
{
  v7 = MEMORY[0x1E69DD1B8];
  v8 = a2;
  v9 = a1;
  v10 = _PKImplicitContentSizeCategoryWithMaximum(a3);
  v11 = [v7 traitCollectionWithPreferredContentSizeCategory:v10];

  v12 = PKFontForDesign(v11, v9, v8, a4);

  return v12;
}

id PKFontForDesign(UITraitCollection *a1, NSString *a2, NSString *a3, double a4)
{
  v7 = MEMORY[0x1E696AD98];
  v8 = a3;
  v9 = a2;
  v10 = a1;
  v11 = [v7 numberWithDouble:a4];
  v12 = _PKFontForDesign(v10, v9, v8, 0, 0, v11);

  return v12;
}

id PKFontForDesign(void *a1, void *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v9 = MEMORY[0x1E69DD1B8];
  v10 = a2;
  v11 = a1;
  v12 = _PKImplicitContentSizeCategoryWithMaximum(a3);
  v13 = [v9 traitCollectionWithPreferredContentSizeCategory:v12];

  v14 = _PKFontForDesign(v13, v11, v10, a4, a5, 0);

  return v14;
}

{
  v5 = _PKFontForDesign(a1, a2, a3, a4, a5, 0);

  return v5;
}

id PKFontForDesign(void *a1, void *a2, void *a3, uint64_t a4, uint64_t a5, double a6)
{
  v11 = MEMORY[0x1E69DD1B8];
  v12 = a2;
  v13 = a1;
  v14 = _PKImplicitContentSizeCategoryWithMaximum(a3);
  v15 = [v11 traitCollectionWithPreferredContentSizeCategory:v14];

  v16 = PKFontForDesign(v15, v13, v12, a4, a5, a6);

  return v16;
}

{
  v11 = MEMORY[0x1E696AD98];
  v12 = a3;
  v13 = a2;
  v14 = a1;
  v15 = [v11 numberWithDouble:a6];
  v16 = _PKFontForDesign(v14, v13, v12, a4, a5, v15);

  return v16;
}

double PKScaledValueForValueWithMaximumContentSizeCategory(void *a1, double a2)
{
  v3 = _PKImplicitContentSizeCategoryWithMaximum(a1);
  v4 = MEMORY[0x1E69DB878];
  v5 = *MEMORY[0x1E69DDCF8];
  v6 = [MEMORY[0x1E69DD1B8] traitCollectionWithPreferredContentSizeCategory:v3];
  v7 = [v4 preferredFontForTextStyle:v5 compatibleWithTraitCollection:v6];

  [v7 _scaledValueForValue:a2];
  v9 = v8;

  return v9;
}

void *_PKImplicitContentSizeCategoryWithMaximum(void *a1)
{
  v1 = a1;
  v2 = [MEMORY[0x1E69DCEB0] mainScreen];
  v3 = [v2 traitCollection];
  v4 = [v3 preferredContentSizeCategory];

  if (v1 && ([v1 isEqualToString:*MEMORY[0x1E69DDC90]] & 1) == 0 && UIContentSizeCategoryCompareToCategory(v4, v1) == NSOrderedDescending)
  {
    v5 = v1;

    v4 = v5;
  }

  return v4;
}

double PKScaledValueForValueFromContentSizeCategory(uint64_t a1, void *a2, double a3)
{
  v5 = MEMORY[0x1E69DB878];
  v6 = *MEMORY[0x1E69DDCF8];
  v7 = MEMORY[0x1E69DD1B8];
  v8 = a2;
  v9 = [v7 traitCollectionWithPreferredContentSizeCategory:a1];
  v10 = [v5 preferredFontForTextStyle:v6 compatibleWithTraitCollection:v9];

  v11 = PKFontForDefaultDesign(v6, v8);

  [v11 _bodyLeading];
  v13 = v12 * a3;
  [v10 _bodyLeading];
  v15 = v13 / v14;

  return v15;
}

double PKPointSizeForFontStyle(uint64_t a1)
{
  v1 = [MEMORY[0x1E69DB880] preferredFontDescriptorWithTextStyle:a1];
  [v1 pointSize];
  v3 = v2;

  return v3;
}

void PKCommonCachedImageFromURL(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (v3)
  {
    v6 = [MEMORY[0x1E69B8A08] sharedImageAssetDownloader];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __PKCommonCachedImageFromURL_block_invoke;
    v7[3] = &unk_1E8014D80;
    v8 = v3;
    v9 = v5;
    [v6 downloadFromUrl:v8 completionHandler:v7];
  }

  else if (v4)
  {
    (*(v4 + 2))(v4, 0, 0);
  }
}

void __PKCommonCachedImageFromURL_block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __PKCommonCachedImageFromURL_block_invoke_2;
  block[3] = &unk_1E8014D58;
  v15 = v8;
  v16 = *(a1 + 32);
  v10 = *(a1 + 40);
  v18 = v9;
  v19 = v10;
  v17 = v7;
  v11 = v9;
  v12 = v7;
  v13 = v8;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __PKCommonCachedImageFromURL_block_invoke_2(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
LABEL_4:
    v3 = *(a1 + 48);
    if (v3)
    {
      v4 = MEMORY[0x1E69DCAB8];
      if (qword_1EBD6ABF8 != -1)
      {
        dispatch_once(&qword_1EBD6ABF8, &__block_literal_global_297);
      }

      v5 = [v4 imageWithData:v3 scale:*&qword_1EBD6ABF0];
      if (v5)
      {
        goto LABEL_15;
      }

      v6 = PKLogFacilityTypeGetObject();
    }

    else
    {
      v6 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v7 = *(a1 + 40);
        v8 = *(a1 + 56);
        v14 = 138412546;
        v15 = v7;
        v16 = 2112;
        v17 = v8;
        _os_log_impl(&dword_1BD026000, v6, OS_LOG_TYPE_DEFAULT, "Failed to download card image from %@ due to %@", &v14, 0x16u);
      }
    }

    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(a1 + 40);
      v14 = 138412290;
      v15 = v9;
      _os_log_impl(&dword_1BD026000, v6, OS_LOG_TYPE_DEFAULT, "Could not parse card image from %@", &v14, 0xCu);
    }

    v5 = 0;
LABEL_15:
    v10 = *(a1 + 64);
    if (v10)
    {
      (*(v10 + 16))(v10, 1, v5);
    }

    goto LABEL_22;
  }

  v2 = *(a1 + 32);
  if ([v2 statusCode] == 200)
  {

    goto LABEL_4;
  }

  v11 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = *(a1 + 40);
    v14 = 138412546;
    v15 = v12;
    v16 = 1024;
    LODWORD(v17) = [v2 statusCode];
    _os_log_impl(&dword_1BD026000, v11, OS_LOG_TYPE_DEFAULT, "Could not download card image from %@ http status %d", &v14, 0x12u);
  }

  v13 = *(a1 + 64);
  if (v13)
  {
    (*(v13 + 16))(v13, 1, 0);
  }

  v5 = 0;
LABEL_22:
}

void PKAccessibilityIDDefaultCellSet(void *a1)
{
  v1 = a1;
  v2 = [v1 textLabel];
  [v2 setAccessibilityIdentifier:*MEMORY[0x1E69B9D20]];

  v3 = [v1 detailTextLabel];

  [v3 setAccessibilityIdentifier:*MEMORY[0x1E69B96F8]];
}

void PKAccessibilityIDCellSet(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  PKAccessibilityIDDefaultCellSet(v4);
  [v4 setAccessibilityIdentifier:v3];
}

void PKAccessibilityIDAlertSet(void *a1, void *a2)
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  if (v3)
  {
    v5 = [v3 view];
    [v5 setAccessibilityIdentifier:v4];

    v6 = [v3 actions];
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v16;
      v10 = *MEMORY[0x1E69B9AE0];
      v11 = *MEMORY[0x1E69B9708];
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v16 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v13 = *(*(&v15 + 1) + 8 * i);
          if ([v13 style] == 1)
          {
            v14 = v11;
          }

          else
          {
            v14 = v10;
          }

          [v13 setAccessibilityIdentifier:v14];
        }

        v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v8);
    }
  }
}

uint64_t PKSpendingSummaryCategorizationTypeForURLPathComponent(void *a1)
{
  v1 = a1;
  v2 = *MEMORY[0x1E69BC398];
  v3 = v1;
  v4 = v3;
  if (v2 == v3)
  {
    goto LABEL_15;
  }

  if (v3 && v2)
  {
    v5 = [v3 isEqualToString:v2];

    if (v5)
    {
      goto LABEL_16;
    }
  }

  else
  {
  }

  v6 = *MEMORY[0x1E69BC3A0];
  v3 = v4;
  v7 = v3;
  if (v6 == v3)
  {

    goto LABEL_14;
  }

  if (!v4 || !v6)
  {
LABEL_15:

LABEL_16:
    v9 = 0;
    goto LABEL_17;
  }

  v8 = [v3 isEqualToString:v6];

  if (!v8)
  {
    goto LABEL_16;
  }

LABEL_14:
  v9 = 1;
LABEL_17:

  return v9;
}

void sub_1BDB6E004(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, id a43)
{
  objc_destroyWeak(&a43);
  objc_destroyWeak((v43 - 168));
  objc_destroyWeak((v43 - 160));
  _Unwind_Resume(a1);
}

void sub_1BDB6E660(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

BOOL PKStringIsBlank(void *a1)
{
  v1 = MEMORY[0x1E696AB08];
  v2 = a1;
  v3 = [v1 whitespaceCharacterSet];
  v4 = [v2 stringByTrimmingCharactersInSet:v3];

  if (v4)
  {
    v5 = [v4 length] == 0;
  }

  else
  {
    v5 = 1;
  }

  return v5;
}

void navigateToURL(void *a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [v1 absoluteString];
    v4 = 138412290;
    v5 = v3;
    _os_log_impl(&dword_1BD026000, v2, OS_LOG_TYPE_DEFAULT, "Navigating to URL: %@", &v4, 0xCu);
  }

  PKOpenURL();
}

id PKOpenURLModallyHyperlinkAction(void *a1, void *a2)
{
  objc_initWeak(&location, a2);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __PKOpenURLModallyHyperlinkAction_block_invoke;
  aBlock[3] = &unk_1E8014E68;
  v6[1] = a1;
  objc_copyWeak(v6, &location);
  v3 = _Block_copy(aBlock);
  objc_destroyWeak(v6);
  objc_destroyWeak(&location);

  return v3;
}

void __PKOpenURLModallyHyperlinkAction_block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [v3 absoluteString];
    v9 = 138412290;
    v10 = v5;
    _os_log_impl(&dword_1BD026000, v4, OS_LOG_TYPE_DEFAULT, "Opening URL modally: %@", &v9, 0xCu);
  }

  v6 = [[PKRemoteDocumentationViewController alloc] initWithContext:*(a1 + 40) URL:v3];
  v7 = [[PKNavigationController alloc] initWithRootViewController:v6];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained presentModalViewController:v7 withPaymentSetupContext:*(a1 + 40)];
}

id PKOpenOnboardingHyperlinkAction(void *a1)
{
  v1 = a1;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __PKOpenOnboardingHyperlinkAction_block_invoke;
  aBlock[3] = &unk_1E8014E90;
  v6 = v1;
  v2 = v1;
  v3 = _Block_copy(aBlock);

  return v3;
}

void __PKOpenOnboardingHyperlinkAction_block_invoke(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = onboardingIdentifiersFromURL(v3);
  if ([v4 count])
  {
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v5 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 138412290;
      v7 = v3;
      _os_log_impl(&dword_1BD026000, v5, OS_LOG_TYPE_DEFAULT, "Couldn't present onboarding for link %@, no onboarding identifiers found.", &v6, 0xCu);
    }
  }
}

id onboardingIdentifiersFromURL(void *a1)
{
  v1 = a1;
  v2 = [v1 scheme];
  v3 = [v2 isEqualToString:@"onboarding"];

  if (v3)
  {
    v4 = [v1 resourceSpecifier];
    v5 = [v4 componentsSeparatedByString:@"+"];
  }

  else
  {
    v5 = MEMORY[0x1E695E0F0];
  }

  return v5;
}

id PKGenericOnboardingPresenter(id val, void *a2)
{
  objc_initWeak(&location, val);
  v3 = a2;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __PKGenericOnboardingPresenter_block_invoke;
  aBlock[3] = &unk_1E8011850;
  objc_copyWeak(&v9, &location);
  v8 = v3;
  v4 = v3;
  v5 = _Block_copy(aBlock);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);

  return v5;
}

void __PKGenericOnboardingPresenter_block_invoke(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 138412290;
    v16 = v3;
    _os_log_impl(&dword_1BD026000, v4, OS_LOG_TYPE_DEFAULT, "Presenting onboarding for identifiers: %@", &v15, 0xCu);
  }

  v5 = v3;
  v6 = [v5 count];
  v7 = MEMORY[0x1E69B7D58];
  if (v6 == 1)
  {
    v8 = [v5 firstObject];

    v9 = [v7 presenterForPrivacySplashWithIdentifier:v8];
  }

  else
  {
    v9 = [MEMORY[0x1E69B7D58] presenterForPrivacyUnifiedAboutWithIdentifiers:v5];
    v8 = v5;
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [v9 setPresentingViewController:WeakRetained];

  v11 = objc_loadWeakRetained((a1 + 40));
  v12 = [v11 pkui_userInterfaceIdiomSupportsLargeLayouts];

  if (v12)
  {
    [v9 setModalPresentationStyle:2];
  }

  if (*(a1 + 32))
  {
    v13 = [v9 splashController];
    v14 = [v13 view];
    [v14 setTintColor:*(a1 + 32)];
  }

  [v9 present];
}

id PKGenericHyperlinkAction(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __PKGenericHyperlinkAction_block_invoke;
  v9[3] = &unk_1E8014EB8;
  v10 = v3;
  v11 = v4;
  v5 = v4;
  v6 = v3;
  v7 = _Block_copy(v9);

  return v7;
}

void __PKGenericHyperlinkAction_block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = onboardingIdentifiersFromURL(v5);
  if ([v3 count])
  {
    v4 = *(*(a1 + 32) + 16);
LABEL_5:
    v4();
    goto LABEL_6;
  }

  if (PKIsURLHttpScheme())
  {
    v4 = *(*(a1 + 40) + 16);
    goto LABEL_5;
  }

  navigateToURL(v5);
LABEL_6:
}

void sub_1BDB7472C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDB74E24(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v3 - 56));
  _Unwind_Resume(a1);
}

void sub_1BDB75E54(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, id location)
{
  objc_destroyWeak((v38 + 56));
  objc_destroyWeak((v39 + 40));
  objc_destroyWeak(&location);
  _Block_object_dispose((v40 - 224), 8);
  _Block_object_dispose((v40 - 176), 8);
  _Block_object_dispose((v40 - 128), 8);
  _Unwind_Resume(a1);
}

Class initBYFlowSkipController()
{
  if (qword_1EBDAA800 != -1)
  {
    dispatch_once(&qword_1EBDAA800, &__block_literal_global_54);
  }

  result = objc_getClass("BYFlowSkipController");
  qword_1EBDAA7F0 = result;
  _MergedGlobals_3_7[0] = BYFlowSkipControllerFunction;
  return result;
}

void *__LoadSetupAssistant_block_invoke()
{
  result = dlopen("/System/Library/PrivateFrameworks/SetupAssistant.framework/SetupAssistant", 2);
  qword_1EBDAA7F8 = result;
  return result;
}

id initBYFlowSkipIdentifierApplePay()
{
  if (qword_1EBDAA800 != -1)
  {
    dispatch_once(&qword_1EBDAA800, &__block_literal_global_54);
  }

  v0 = dlsym(qword_1EBDAA7F8, "BYFlowSkipIdentifierApplePay");
  objc_storeStrong(&_MergedGlobals_4, *v0);
  off_1EE9A1C78[0] = BYFlowSkipIdentifierApplePayFunction;
  v1 = _MergedGlobals_4;

  return v1;
}

void sub_1BDB794F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDB7AEA4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id ButtonWithTitle(void *a1, void *a2)
{
  v3 = MEMORY[0x1E69DC740];
  v4 = MEMORY[0x1E69DB878];
  v5 = *MEMORY[0x1E69DDCF8];
  v6 = a2;
  v7 = a1;
  v8 = [v4 preferredFontForTextStyle:v5];
  v9 = [v3 pkui_plainConfigurationWithTitle:v7 font:v8];

  v10 = [MEMORY[0x1E69DC738] buttonWithConfiguration:v9 primaryAction:v6];

  [v10 sizeToFit];

  return v10;
}

void sub_1BDB7B974(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{
  _Block_object_dispose(&a22, 8);
  _Block_object_dispose(&a26, 8);
  _Unwind_Resume(a1);
}

id CreateSanitizedZonesList(void *a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = v1;
  v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v11 + 1) + 8 * i);
        if ([v8 count])
        {
          [v2 addObject:v8];
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  v9 = [v2 copy];

  return v9;
}

char *CreatePolygonForPoints(void *a1)
{
  v1 = a1;
  v2 = [v1 count];
  v3 = malloc_type_calloc(v2, 0x40uLL, 0x1000040FA0F61DDuLL);
  v4 = [v1 objectAtIndexedSubscript:0];
  [v4 CGPointValue];
  v6 = v5;
  v8 = v7;
  v9 = (v5 + 180.0) * 10000.0 / 360.0;
  v10 = tan(v7 * 3.14159265 / 180.0 * 0.5 + 0.785398163);
  v11 = log(v10) * 10000.0 / -6.28318531 + 2500.0;

  v26 = v8;
  v27 = v6;
  v24 = v11;
  v25 = v9;
  if (v2 >= 2)
  {
    v12 = (v3 + 32);
    v13 = 1;
    v15 = v11;
    v14 = v9;
    v16 = v8;
    v17 = v6;
    do
    {
      v18 = [v1 objectAtIndexedSubscript:v13];
      [v18 CGPointValue];
      v6 = v19;
      v8 = v20;
      v9 = (v19 + 180.0) * 10000.0 / 360.0;
      v21 = tan(v20 * 3.14159265 / 180.0 * 0.5 + 0.785398163);
      v11 = log(v21) * 10000.0 / -6.28318531 + 2500.0;

      *(v12 - 4) = v16;
      *(v12 - 3) = v17;
      *(v12 - 2) = v14;
      *(v12 - 1) = v15;
      ++v13;
      *v12 = v8;
      v12[1] = v6;
      v12[2] = v9;
      v12[3] = v11;
      v12 += 8;
      v15 = v11;
      v14 = v9;
      v17 = v6;
      v16 = v8;
    }

    while (v2 != v13);
  }

  v22 = &v3[64 * v2];
  *(v22 - 8) = v8;
  *(v22 - 7) = v6;
  *(v22 - 6) = v9;
  *(v22 - 5) = v11;
  *(v22 - 4) = v26;
  *(v22 - 3) = v27;
  *(v22 - 2) = v25;
  *(v22 - 1) = v24;

  return v3;
}

uint64_t PolygonContainsNormalizedPoint(uint64_t a1, unint64_t a2, double a3, double a4)
{
  if (a2 >= 2)
  {
    v4 = 0;
    v5 = (a1 + 56);
    do
    {
      v6 = *(v5 - 4);
      if (v6 > a4 == *v5 <= a4 && a3 < *(v5 - 5) + (a4 - v6) * (*(v5 - 1) - *(v5 - 5)) / (*v5 - v6))
      {
        v4 ^= 1u;
      }

      v5 += 8;
      --a2;
    }

    while (a2);
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

long double HaversineDistanceBetweenPoints(double a1, double a2, double a3, double a4)
{
  v4 = a1 * 3.14159265 / 180.0;
  v5 = a3 * 3.14159265 / 180.0;
  v6 = a2 * 3.14159265 / 180.0;
  v7 = a4 * 3.14159265 / 180.0;
  v8 = sin((v5 - v4) * 0.5);
  v9 = v8 * v8;
  v10 = 1.0 - v8 * v8;
  v11 = sin((v4 + v5) * 0.5);
  v12 = v10 - v11 * v11;
  v13 = sin((v7 - v6) * 0.5);
  return asin(sqrt(v9 + v12 * (v13 * v13))) * 12742.0;
}

double BearingBetweenPoints(double a1, double a2, double a3, double a4)
{
  v4 = a1 * 3.14159265 / 180.0;
  v5 = a3 * 3.14159265 / 180.0;
  v6 = __sincos_stret(a4 * 3.14159265 / 180.0 - a2 * 3.14159265 / 180.0);
  v7 = __sincos_stret(v5);
  v8 = __sincos_stret(v4);
  v9 = atan2(v7.__cosval * v6.__sinval, -(v8.__sinval * v7.__cosval) * v6.__cosval + v8.__cosval * v7.__sinval) * 180.0 / 3.14159265 + 360.0;

  return fmod(v9, 360.0);
}

void sub_1BDB7D9F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

Class initBFFPasscodeView()
{
  if (qword_1EBDAA818 != -1)
  {
    dispatch_once(&qword_1EBDAA818, &__block_literal_global_55);
  }

  result = objc_getClass("BFFPasscodeView");
  _MergedGlobals_4_0 = result;
  getBFFPasscodeViewClass[0] = BFFPasscodeViewFunction;
  return result;
}

void *__LoadSetupAssistantUI_block_invoke()
{
  result = dlopen("/System/Library/PrivateFrameworks/SetupAssistantUI.framework/SetupAssistantUI", 2);
  LoadSetupAssistantUI_frameworkLibrary = result;
  return result;
}

Class initBFFSimplePasscodeInputView()
{
  if (qword_1EBDAA818 != -1)
  {
    dispatch_once(&qword_1EBDAA818, &__block_literal_global_55);
  }

  result = objc_getClass("BFFSimplePasscodeInputView");
  qword_1EBDAA820 = result;
  _MergedGlobals_3_8[0] = BFFSimplePasscodeInputViewFunction;
  return result;
}

Class initBFFComplexPasscodeInputView()
{
  if (qword_1EBDAA818 != -1)
  {
    dispatch_once(&qword_1EBDAA818, &__block_literal_global_55);
  }

  result = objc_getClass("BFFComplexPasscodeInputView");
  qword_1EBDAA828 = result;
  off_1EE9A1C90[0] = BFFComplexPasscodeInputViewFunction;
  return result;
}

void sub_1BDB81124(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

id PKRemoteShareSecureElementPassViewControllerExportedInterface()
{
  v0 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F3DAF700];
  v1 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
  [v0 setClasses:v1 forSelector:sel_setPass_environment_isFromPeopleScreen_completion_ argumentIndex:0 ofReply:0];

  return v0;
}

void sub_1BDB81F94(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_1BDB83240(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak(&a14);
  objc_destroyWeak(&a19);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDB87CC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1BDB88544(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDB888BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDB88C3C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 + 48));
  objc_destroyWeak((v3 - 72));
  _Unwind_Resume(a1);
}

void sub_1BDB89BB8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDB89D34(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDB8A3B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDB8DAD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak((v14 + 40));
  _Block_object_dispose(va, 8);
  objc_destroyWeak((v16 - 88));
  _Unwind_Resume(a1);
}

void sub_1BDB91304(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1BDB92684(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v11 - 64), 8);
  _Unwind_Resume(a1);
}

void sub_1BDB928F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v15 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_1BDB93F38(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, id location)
{
  objc_destroyWeak((v26 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDB94724(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void __FlattenContentRows_block_invoke(uint64_t a1, void *a2)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __FlattenContentRows_block_invoke_2;
  v3[3] = &unk_1E8015910;
  v4 = *(a1 + 32);
  [a2 enumerateObjectsUsingBlock:v3];
}

void sub_1BDB974DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDB97D94(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDB992B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDB9B710(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1BDB9C1DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

CGAffineTransform *_TransformForLayoutLocation(CGAffineTransform *retstr, int a2, int a3, int a4, int a5, int a6, int a7, int a8, CGFloat a9, CGFloat a10, double a11, double a12, double a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  *&retstr->c = 0u;
  *&retstr->tx = 0u;
  *&retstr->a = 0u;
  if (a12 == 0.0)
  {

    return CGAffineTransformMakeTranslation(retstr, a9, a10);
  }

  else
  {
    v21 = (a9 + a11 * -0.5) / a12 + a13;
    *&v33.origin.x = a14;
    *&v33.origin.y = a15;
    *&v33.size.width = a16;
    v29 = a10;
    *&v33.size.height = a17;
    MidX = CGRectGetMidX(v33);
    v23 = __sincos_stret(a13);
    *&v34.origin.x = a14;
    *&v34.origin.y = a15;
    *&v34.size.width = a16;
    *&v34.size.height = a17;
    v24 = v29 + CGRectGetMinY(v34) - a12 * v23.__cosval;
    v25 = __sincos_stret(v21);
    CGAffineTransformMakeTranslation(retstr, MidX - a12 * v23.__sinval + a12 * v25.__sinval, v24 + a12 * v25.__cosval);
    v26 = *&retstr->c;
    *&v30.a = *&retstr->a;
    *&v30.c = v26;
    *&v30.tx = *&retstr->tx;
    result = CGAffineTransformRotate(&v31, &v30, -v21);
    v28 = *&v31.c;
    *&retstr->a = *&v31.a;
    *&retstr->c = v28;
    *&retstr->tx = *&v31.tx;
  }

  return result;
}

void sub_1BDB9FD18(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDBA4CA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, id a59, id location, char a61, uint64_t a62, uint64_t a63)
{
  objc_destroyWeak((v71 + 64));
  objc_destroyWeak((v70 + 72));
  objc_destroyWeak((v69 + 64));
  objc_destroyWeak(&a59);
  objc_destroyWeak(&location);
  _Block_object_dispose(&a61, 8);
  _Block_object_dispose(&a65, 8);
  _Block_object_dispose(&a69, 8);
  _Block_object_dispose(&STACK[0x200], 8);
  _Block_object_dispose(&STACK[0x220], 8);
  _Block_object_dispose(&STACK[0x250], 8);
  _Unwind_Resume(a1);
}

void sub_1BDBA5844(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, id a30, uint64_t a31, char a32)
{
  objc_destroyWeak(&a18);
  objc_destroyWeak(&a30);
  _Block_object_dispose((v32 - 160), 8);
  _Block_object_dispose(&a32, 8);
  _Unwind_Resume(a1);
}

void *__Block_byref_object_copy__101(uint64_t a1, uint64_t a2)
{
  result = _Block_copy(*(a2 + 40));
  *(a1 + 40) = result;
  return result;
}

void _PKAddDateToElements(void *a1, void *a2, void *a3, void *a4)
{
  v50 = a2;
  v7 = a3;
  v8 = a4;
  v9 = [a1 objectForKey:v7];
  v10 = objc_alloc_init(MEMORY[0x1E696AB78]);
  v11 = objc_alloc(MEMORY[0x1E695DEE8]);
  v12 = [v11 initWithCalendarIdentifier:*MEMORY[0x1E695D850]];
  v13 = [MEMORY[0x1E695DFE8] timeZoneWithName:@"UTC"];
  [v10 setCalendar:v12];
  [v10 setTimeZone:v13];
  v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"M/d/yyyy"];
  [v10 setDateFormat:v14];

  v15 = [v9 dictionaryValue];

  if (v15)
  {
    v16 = [v9 dictionaryValue];
    v17 = [v16 valueForKey:v7];

    v18 = objc_alloc_init(MEMORY[0x1E696AB78]);
    [v18 setDateFormat:@"yyyy-MM-dd"];
    v19 = [v18 dateFromString:v17];
    if (v19)
    {
      v20 = [v10 stringFromDate:v19];
    }

    else
    {
      v20 = 0;
    }
  }

  else
  {
    v21 = [v9 dateValue];

    if (v21)
    {
      v22 = [v9 dateValue];
      v20 = [v10 stringFromDate:v22];

      goto LABEL_9;
    }

    v27 = [v9 birthDateValue];

    if (!v27)
    {
      v42 = [v9 stringValue];

      v23 = v50;
      if (v42)
      {
        v43 = [v9 stringValue];
        v44 = PKDateFromString();
        if (v44)
        {
          v20 = [v10 stringFromDate:v44];
        }

        else
        {
          v20 = 0;
        }

        if (v20)
        {
          goto LABEL_10;
        }
      }

      goto LABEL_11;
    }

    v17 = [v9 birthDateValue];
    v28 = [v17 date];
    v29 = v28;
    if (v28)
    {
      v46 = v28;
      v30 = [v17 year];
      v31 = @"yyyy/";
      if (v30 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v31 = @"0000/";
      }

      v49 = v31;
      v32 = [v17 month];
      v33 = @"MM/";
      if (v32 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v33 = @"00/";
      }

      v47 = v17;
      v48 = v33;
      v34 = @"00";
      if (v32 != 0x7FFFFFFFFFFFFFFFLL && [v47 day] != 0x7FFFFFFFFFFFFFFFLL)
      {
        v34 = @"dd";
      }

      v35 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%@%@", v49, v48, v34];
      v36 = objc_alloc_init(MEMORY[0x1E696AB78]);
      v17 = v47;
      v37 = [v47 calendar];
      v38 = v37;
      if (v37)
      {
        v39 = v37;
      }

      else
      {
        v39 = v12;
      }

      [v36 setCalendar:v39];

      v40 = [v47 timeZone];

      if (v40)
      {
        v41 = [v47 timeZone];
        [v36 setTimeZone:v41];
      }

      [v36 setDateFormat:v35];
      v29 = v46;
      [v36 stringFromDate:v46];
      v20 = v45 = v35;
    }

    else
    {
      v20 = @"--";
    }
  }

LABEL_9:
  v23 = v50;
  if (v20)
  {
LABEL_10:
    v24 = [PKIdentityDocumentDataElement alloc];
    v25 = PKLocalizedIdentityString(v8);
    v26 = [(PKIdentityDocumentDataElement *)v24 initWithLocalizedLabel:v25 text:v20 isCopyable:1];

    [v23 addObject:v26];
  }

LABEL_11:
}

id SexDisplayableValueFromInteger(uint64_t a1)
{
  switch(a1)
  {
    case 1:
      v2 = @"DRIVER_LICENSE_SEX_MALE";
LABEL_7:
      v3 = PKLocalizedIdentityString(&v2->isa);

      return v3;
    case 9:
      v2 = @"DRIVER_LICENSE_SEX_NOTSPECIFIED";
      goto LABEL_7;
    case 2:
      v2 = @"DRIVER_LICENSE_SEX_FEMALE";
      goto LABEL_7;
  }

  v3 = 0;

  return v3;
}

void _PKAddStringToElements(void *a1, void *a2, uint64_t a3, void *a4)
{
  v15 = a2;
  v7 = a4;
  v8 = [a1 objectForKey:a3];
  v9 = [v8 stringValue];
  v10 = [v9 pk_zString];

  if ([v10 length])
  {
    v11 = [PKIdentityDocumentDataElement alloc];
    v12 = PKLocalizedIdentityString(v7);
    v13 = [v10 pk_uppercaseFirstStringForPreferredLocale];
    v14 = [(PKIdentityDocumentDataElement *)v11 initWithLocalizedLabel:v12 text:v13 isCopyable:1];

    [v15 addObject:v14];
  }
}

void sub_1BDBAAA44(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDBAB78C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDBAC9D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void __PKMapItemByParsingAddressInString_block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v9 = v5;
  if (a3)
  {
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    if ([v5 count])
    {
      v6 = [v9 objectAtIndexedSubscript:0];
      v7 = [objc_alloc(MEMORY[0x1E696F340]) initWithPlacemark:v6];
      v8 = [objc_alloc(MEMORY[0x1E696F270]) initWithPlacemark:v7];
    }

    else
    {
      v8 = 0;
    }

    (*(*(a1 + 32) + 16))();
  }
}

void sub_1BDBAE868(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDBB1D80(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDBB2420(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

double PKOBKBulletListInteritemPadding()
{
  v0 = PKUserInterfaceIdiomSupportsLargeLayouts();
  result = 16.0;
  if (v0)
  {
    return 19.0;
  }

  return result;
}

void PKSetupViewConstantsBodyViewPadding()
{
  if (_os_feature_enabled_impl())
  {
    if (_UISolariumFeatureFlagEnabled())
    {
      v0 = PKOBKBodyFont();
      [v0 lineHeight];
    }
  }
}

uint64_t PKNaturalUIEnabled()
{
  result = _os_feature_enabled_impl();
  if (result)
  {

    return _UISolariumFeatureFlagEnabled();
  }

  return result;
}

id PKOBKBodyFont()
{
  if (_UISolariumFeatureFlagEnabled())
  {
    PKFontForDefaultDesign(*MEMORY[0x1E69DDDC0], *MEMORY[0x1E69DDC30]);
  }

  else
  {
    [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDCF8]];
  }
  v0 = ;

  return v0;
}

void PKSetupViewConstantsBodyButtonPadding()
{
  if (_os_feature_enabled_impl())
  {
    if (_UISolariumFeatureFlagEnabled())
    {
      v0 = PKOBKBodyFont();
      [v0 lineHeight];
    }
  }
}

double PKSetupViewConstantsViewMargin()
{
  v0 = PKUIGetMinScreenWidthType();
  if (v0)
  {
    v1 = v0;
    v2 = _os_feature_enabled_impl();
    if (v1 > 8)
    {
      if (v2)
      {
        if (_UISolariumFeatureFlagEnabled())
        {
          return 88.0;
        }

        else
        {
          return 44.0;
        }
      }

      else
      {
        return 44.0;
      }
    }

    else
    {
      v3 = 24.0;
      if (v2)
      {
        if (_UISolariumFeatureFlagEnabled())
        {
          return 38.0;
        }

        else
        {
          return 24.0;
        }
      }
    }
  }

  else
  {
    v3 = 16.0;
    if (_os_feature_enabled_impl())
    {
      _UISolariumFeatureFlagEnabled();
    }
  }

  return v3;
}

double PKSetupListViewConstantsViewMargin()
{
  v0 = PKUIGetMinScreenWidthType();
  if (v0)
  {
    v1 = v0;
    v2 = _os_feature_enabled_impl();
    if (v1 > 8)
    {
      if (!v2)
      {
        return 44.0;
      }

      v4 = (_UISolariumFeatureFlagEnabled() & 1) == 0;
      v5 = 44.0;
      v6 = 88.0;
    }

    else
    {
      v3 = 24.0;
      if (!v2)
      {
        return v3;
      }

      v4 = (_UISolariumFeatureFlagEnabled() & 1) == 0;
      v5 = 24.0;
      v6 = 23.0;
    }

    if (v4)
    {
      return v5;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v3 = 16.0;
    if (_os_feature_enabled_impl())
    {
      _UISolariumFeatureFlagEnabled();
    }
  }

  return v3;
}

uint64_t PKOBKTextAlignment()
{
  if (!_os_feature_enabled_impl())
  {
    return 1;
  }

  if (_UISolariumFeatureFlagEnabled())
  {
    return 4;
  }

  return 1;
}

id PKOBKHeaderTitleFont()
{
  v0 = _UISolariumFeatureFlagEnabled();
  v1 = MEMORY[0x1E69DDD58];
  if (v0)
  {
    v1 = MEMORY[0x1E69DDDC0];
  }

  v2 = PKFontForDefaultDesign(*v1, *MEMORY[0x1E69DDC30], 2, 0);

  return v2;
}

id PKOBKHeaderSubtitleFont()
{
  v0 = _UISolariumFeatureFlagEnabled();
  v1 = MEMORY[0x1E69DDCF8];
  if (v0)
  {
    v1 = MEMORY[0x1E69DDDC0];
  }

  v2 = PKFontForDefaultDesign(*v1, *MEMORY[0x1E69DDC30]);

  return v2;
}

id PKOBKHeaderSubtitleTextColor()
{
  if (_UISolariumFeatureFlagEnabled())
  {
    [MEMORY[0x1E69DC888] secondaryLabelColor];
  }

  else
  {
    [MEMORY[0x1E69DC888] labelColor];
  }
  v0 = ;

  return v0;
}

id PKOBKListHeaderFont()
{
  v0 = _UISolariumFeatureFlagEnabled();
  v1 = MEMORY[0x1E69DDDC8];
  v2 = v0 == 0;
  if (!v0)
  {
    v1 = MEMORY[0x1E69DDDC0];
  }

  v3 = *v1;
  v4 = MEMORY[0x1E69DDC60];
  if (v2)
  {
    v4 = MEMORY[0x1E69DDC58];
  }

  v5 = PKFontForDefaultDesign(v3, *v4, 2, 0);

  return v5;
}

id PKOBKListHeaderTextColor()
{
  if (_UISolariumFeatureFlagEnabled())
  {
    [MEMORY[0x1E69DC888] secondaryLabelColor];
  }

  else
  {
    [MEMORY[0x1E69DC888] labelColor];
  }
  v0 = ;

  return v0;
}

id PKOBKBodyTextColor()
{
  if (_UISolariumFeatureFlagEnabled())
  {
    [MEMORY[0x1E69DC888] secondaryLabelColor];
  }

  else
  {
    [MEMORY[0x1E69DC888] labelColor];
  }
  v0 = ;

  return v0;
}

id PKOBKBulletTitleFont(int a1)
{
  if (a1)
  {
    PKFontForDefaultDesign(*MEMORY[0x1E69DDCF8], *MEMORY[0x1E69DDC20], *MEMORY[0x1E69DB958]);
  }

  else
  {
    [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDCF8]];
  }
  v1 = ;

  return v1;
}

double PKOBKHeaderTitleSubtitleVerticalPadding()
{
  v0 = _UISolariumFeatureFlagEnabled();
  result = 8.0;
  if (v0)
  {
    return 0.0;
  }

  return result;
}

double PKOBKHeaderTitleTopPadding(int a1)
{
  result = 70.0;
  if (!a1)
  {
    return 20.0;
  }

  return result;
}

double PKOBKHeaderContentBottomPadding()
{
  v0 = PKUIGetMinScreenWidthType();
  result = 30.0;
  if (!v0)
  {
    return 20.0;
  }

  return result;
}

double PKOBKCardHeaderViewSize(uint64_t a1)
{
  v2 = PKUIGetMinScreenWidthType();
  switch(a1)
  {
    case 3:
      return dbl_1BE1148A0[v2 == 0];
    case 2:
      return dbl_1BE1148D0[v2 == 0];
    case 1:
      return 130.0;
  }

  return 90.0;
}

double PKSetupViewConstantsListSectionInset(double a1)
{
  if (_os_feature_enabled_impl() && (_UISolariumFeatureFlagEnabled() & 1) != 0)
  {
    PKSetupListViewConstantsViewMargin();
  }

  return a1;
}

double PKSetupViewConstantsListSectionHeaderInset()
{
  PKSetupViewConstantsViewMargin();
  PKSetupListViewConstantsViewMargin();
  return 10.0;
}

double PKOBKListLeadingIconSize()
{
  v0 = _UISolariumFeatureFlagEnabled();
  result = 32.0;
  if (!v0)
  {
    return 28.0;
  }

  return result;
}

double PKOBKListLeadingCardIconSize()
{
  v0 = _UISolariumFeatureFlagEnabled();
  result = 53.0;
  if (v0)
  {
    return 40.0;
  }

  return result;
}

double PKOBKListSubtitleCellHorizontalPadding()
{
  v0 = _UISolariumFeatureFlagEnabled();
  result = 16.0;
  if (v0)
  {
    return 13.0;
  }

  return result;
}

double PKOBKListSubtitleCellVerticalPadding()
{
  v0 = _UISolariumFeatureFlagEnabled();
  result = 16.0;
  if (v0)
  {
    return 15.0;
  }

  return result;
}

double PKOBKListSubtitleCellCornerRadius()
{
  v0 = _UISolariumFeatureFlagEnabled();
  result = 10.0;
  if (v0)
  {
    return 26.0;
  }

  return result;
}

double PKOBKListSubtitleCellImageToTextPadding()
{
  v0 = _UISolariumFeatureFlagEnabled();
  result = 16.0;
  if (v0)
  {
    return 13.0;
  }

  return result;
}

id PKOBKListSubtitleCellTitleFont()
{
  v0 = _UISolariumFeatureFlagEnabled();
  v1 = *MEMORY[0x1E69DDCF8];
  v2 = *MEMORY[0x1E69DDC38];
  if (v0)
  {
    PKFontForDefaultDesign(v1, v2, *MEMORY[0x1E69DB980]);
  }

  else
  {
    PKFontForDefaultDesign(v1, v2);
  }
  v3 = ;

  return v3;
}

id PKOBKListSubtitleCellSubtitleFont(int a1)
{
  if (a1)
  {
    PKFontForDefaultDesign(*MEMORY[0x1E69DDD28], *MEMORY[0x1E69DDC38], 0x8000, 0, *MEMORY[0x1E69DB978]);
  }

  else
  {
    PKFontForDefaultDesign(*MEMORY[0x1E69DDD78], *MEMORY[0x1E69DDC90]);
  }
  v1 = ;

  return v1;
}

double PKOBKListInlineCellHorizontalPadding()
{
  v0 = _UISolariumFeatureFlagEnabled();
  result = 16.0;
  if (v0)
  {
    return 15.0;
  }

  return result;
}

double PKOBKListInlineCellVerticalPadding()
{
  v0 = _UISolariumFeatureFlagEnabled();
  result = 16.0;
  if (v0)
  {
    return 1.0;
  }

  return result;
}

double PKOBKListInlineCellCornerRadius()
{
  v0 = _UISolariumFeatureFlagEnabled();
  result = 10.0;
  if (v0)
  {
    return 26.0;
  }

  return result;
}

double PKOBKListInlineCellImageToTextPadding()
{
  v0 = _UISolariumFeatureFlagEnabled();
  result = 16.0;
  if (v0)
  {
    return 15.0;
  }

  return result;
}

id PKOBKListInlineCellTitleFont()
{
  v0 = _UISolariumFeatureFlagEnabled();
  v1 = *MEMORY[0x1E69DDCF8];
  v2 = *MEMORY[0x1E69DDC38];
  if (v0)
  {
    PKFontForDefaultDesign(v1, v2, *MEMORY[0x1E69DB980]);
  }

  else
  {
    PKFontForDefaultDesign(v1, v2);
  }
  v3 = ;

  return v3;
}

id PKOBKListInlineCellSubtitleFont()
{
  if (_UISolariumFeatureFlagEnabled())
  {
    PKFontForDefaultDesign(*MEMORY[0x1E69DDCF8], *MEMORY[0x1E69DDC38], *MEMORY[0x1E69DB978]);
  }

  else
  {
    PKFontForDefaultDesign(*MEMORY[0x1E69DDD78], *MEMORY[0x1E69DDC90]);
  }
  v0 = ;

  return v0;
}

id PKOBKListTextFieldCellLabelFont()
{
  v0 = _UISolariumFeatureFlagEnabled();
  v1 = *MEMORY[0x1E69DDCF8];
  if (v0)
  {
    PKFontForDefaultDesign(v1, *MEMORY[0x1E69DDC38], *MEMORY[0x1E69DB980]);
  }

  else
  {
    PKFontForDefaultDesign(v1, *MEMORY[0x1E69DDC50], 2, 0);
  }
  v2 = ;

  return v2;
}

id PKOBKListTextFieldCellTextFieldFont()
{
  v0 = _UISolariumFeatureFlagEnabled();
  v1 = *MEMORY[0x1E69DDCF8];
  if (v0)
  {
    PKFontForDefaultDesign(v1, *MEMORY[0x1E69DDC38], *MEMORY[0x1E69DB980]);
  }

  else
  {
    PKFontForDefaultDesign(v1, *MEMORY[0x1E69DDC50]);
  }
  v2 = ;

  return v2;
}

double PKOBKDockPrivacyToButtonPadding()
{
  v0 = _UISolariumFeatureFlagEnabled();
  result = 30.0;
  if (v0)
  {
    return 20.0;
  }

  return result;
}

double PKOBKDockInterButtonVerticalPadding()
{
  v0 = _UISolariumFeatureFlagEnabled();
  result = 5.0;
  if (v0)
  {
    return 10.0;
  }

  return result;
}

double PKOBKDockBottomPadding()
{
  v0 = _UISolariumFeatureFlagEnabled();
  result = 38.0;
  if (!v0)
  {
    return 0.0;
  }

  return result;
}

id PKOBKDockPrimaryButtonFont()
{
  v0 = _UISolariumFeatureFlagEnabled();
  v1 = *MEMORY[0x1E69DDC38];
  if (v0)
  {
    PKFontForDefaultDesign(*MEMORY[0x1E69DDCF8], v1, *MEMORY[0x1E69DB980]);
  }

  else
  {
    PKFontForDefaultDesign(*MEMORY[0x1E69DDD40], v1);
  }
  v2 = ;

  return v2;
}

double PKOBKDockButtonMinHeight()
{
  if (!_os_feature_enabled_impl())
  {
    return 50.0;
  }

  v0 = _UISolariumFeatureFlagEnabled();
  result = 50.0;
  if (v0)
  {
    return 52.0;
  }

  return result;
}

double PKOBKDockButtonMaxWidth()
{
  v0 = PKIsPad();
  result = 1.79769313e308;
  if (v0)
  {
    return 326.0;
  }

  return result;
}

id PKOBKLearnMoreButton(void *a1, void *a2, void *a3)
{
  v5 = *MEMORY[0x1E69DDCF8];
  v6 = *MEMORY[0x1E69DDC38];
  v7 = a3;
  v8 = a2;
  v9 = a1;
  v10 = PKFontForDefaultDesign(v5, v6);
  v11 = [MEMORY[0x1E69DC740] pkui_plainConfigurationWithTitle:v8 font:v10];

  v12 = [MEMORY[0x1E69DCAB8] systemImageNamed:v9];

  [v11 setImage:v12];
  [v11 setImagePadding:6.0];
  [v11 setContentInsets:{*MEMORY[0x1E69DC5C0], *(MEMORY[0x1E69DC5C0] + 8), *(MEMORY[0x1E69DC5C0] + 16), *(MEMORY[0x1E69DC5C0] + 24)}];
  v13 = [MEMORY[0x1E69DC888] linkColor];
  [v11 setBaseForegroundColor:v13];

  [v10 pointSize];
  v15 = [MEMORY[0x1E69DCAD8] configurationWithPointSize:v14 * 0.8];
  [v11 setPreferredSymbolConfigurationForImage:v15];
  v16 = [MEMORY[0x1E69DC738] buttonWithConfiguration:v11 primaryAction:v7];

  [v16 setConfigurationUpdateHandler:&__block_literal_global_70];

  return v16;
}

void __PKOBKLearnMoreButton_block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 setExclusiveTouch:1];
  v2 = [v3 titleLabel];
  [v2 setTextAlignment:PKOBKTextAlignment()];

  [v3 setContentHorizontalAlignment:1];
}

__CFString *PKSecurityCapabilitiesErrorToString(uint64_t a1)
{
  if (a1 <= 2)
  {
    if (!a1)
    {
      return @"none";
    }

    if (a1 == 2)
    {
      return @"failed";
    }

    return @"unknown";
  }

  if (a1 > 4)
  {
    if (a1 == 5)
    {
      return @"manateeUnavailable";
    }

    if (a1 == 128)
    {
      return @"ManateeT&Cs";
    }

    return @"unknown";
  }

  if (a1 == 3)
  {
    return @"cancelOrSkipped";
  }

  else
  {
    return @"notEligible";
  }
}

void sub_1BDBB41B8(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 176), 8);
  _Block_object_dispose((v1 - 240), 8);
  _Unwind_Resume(a1);
}

id PKSecurityCapabilitiesRequirementToString(unint64_t a1)
{
  v2 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if (a1)
  {
    v3 = 1;
    v4 = 1;
    do
    {
      if ((v4 & a1) != 0)
      {
        if (v4 > 15)
        {
          if (v4 > 63)
          {
            if (v4 == 64)
            {
              v5 = @"Passcode";
              goto LABEL_22;
            }

            if (v4 == 128)
            {
              v5 = @"ManateeT&Cs";
              goto LABEL_22;
            }
          }

          else
          {
            if (v4 == 16)
            {
              v5 = @"ManateeTLKs";
              goto LABEL_22;
            }

            if (v4 == 32)
            {
              v5 = @"ManateeSetup";
              goto LABEL_22;
            }
          }
        }

        else if (v4 > 3)
        {
          if (v4 == 4)
          {
            v5 = @"HSA2";
            goto LABEL_22;
          }

          if (v4 == 8)
          {
            v5 = @"Manatee";
            goto LABEL_22;
          }
        }

        else
        {
          v5 = @"None";
          if (!v4)
          {
            goto LABEL_22;
          }

          if (v4 == 2)
          {
            v5 = @"Password";
LABEL_22:
            [v2 addObject:v5];
          }
        }
      }

      v4 = 1 << v3++;
    }

    while (v4 <= a1);
  }

  v6 = [v2 description];

  return v6;
}

void sub_1BDBB69C4(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 176), 8);
  _Block_object_dispose((v1 - 144), 8);
  _Unwind_Resume(a1);
}

Class initFKOrderDetailsViewControllerProvider()
{
  if (qword_1EBD6AC40 != -1)
  {
    dispatch_once(&qword_1EBD6AC40, &__block_literal_global_71);
  }

  result = objc_getClass("FKOrderDetailsViewControllerProvider");
  _MergedGlobals_593 = result;
  getFKOrderDetailsViewControllerProviderClass[0] = FKOrderDetailsViewControllerProviderFunction;
  return result;
}

void *__LoadFinanceKitUI_block_invoke_0()
{
  result = dlopen("/System/Library/PrivateFrameworks/FinanceKitUI.framework/FinanceKitUI", 2);
  LoadFinanceKitUI_frameworkLibrary_0 = result;
  return result;
}

void PKIdentityPassDetailsHandleBiometricError(void *a1, void *a2, void *a3)
{
  v24 = a1;
  v5 = a2;
  v6 = a3;
  v7 = [v6 domain];
  v8 = v7;
  if (v7 == @"PKIdentityDocumentDetailsErrorDomain")
  {
  }

  else
  {
    if (!v7 || !@"PKIdentityDocumentDetailsErrorDomain")
    {

      goto LABEL_24;
    }

    v9 = [(__CFString *)v7 isEqualToString:@"PKIdentityDocumentDetailsErrorDomain"];

    if (!v9)
    {
      goto LABEL_24;
    }
  }

  IsAvailable = PKPearlIsAvailable();
  v11 = [v6 code];
  if (v11 == 2)
  {
    v20 = 0;
LABEL_25:
    v21 = PKLocalizedIdentityString(&cfstr_DriverLicenseG.isa);
    v22 = PKLocalizedIdentityString(&cfstr_DriverLicenseG_0.isa);
    v19 = PKDisplayableErrorCustom();

    if (!v20)
    {
      goto LABEL_29;
    }

    goto LABEL_26;
  }

  if (v11 != 1)
  {
    goto LABEL_24;
  }

  v12 = IsAvailable ? @"IDENTITY_FACEID_ERROR_TITLE" : @"IDENTITY_TOUCHID_ERROR_TITLE";
  v13 = PKLocalizedIdentityString(&v12->isa);
  v14 = [v24 identityType];
  if (v14 > 5)
  {
    v18 = 0;
  }

  else
  {
    v15 = @"IDCARD_TOUCHID_ERROR_MESSAGE";
    if (IsAvailable)
    {
      v15 = @"IDCARD_FACEID_ERROR_MESSAGE";
    }

    v16 = @"DRIVER_LICENSE_FACEID_ERROR_MESSAGE";
    if (!IsAvailable)
    {
      v16 = @"DRIVER_LICENSE_TOUCHID_ERROR_MESSAGE";
    }

    v17 = (((1 << v14) & 0x39) != 0 ? v15 : v16);
    v18 = PKLocalizedIdentityString(v17);
  }

  v19 = PKDisplayableErrorCustom();

  if (!v19)
  {
LABEL_24:
    v20 = 1;
    goto LABEL_25;
  }

LABEL_26:
  v23 = PKAlertForDisplayableErrorWithHandlers(v19, 0, 0, 0);
  if (v23)
  {
    [v5 presentViewController:v23 animated:1 completion:0];
  }

LABEL_29:
}

void sub_1BDBB843C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

id PKDefaultTopUpIconForTransaction()
{
  v0 = PKCurrencyCodeForTransitTransactionIcon();
  v1 = PKIconForTopUpWithCurrency();

  return v1;
}

void sub_1BDBB8ED4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id location)
{
  objc_destroyWeak(&a16);
  objc_destroyWeak(&a21);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id _ReportableActionOnButtonPressedForMessageWithAction(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (v4)
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = ___ReportableActionOnButtonPressedForMessageWithAction_block_invoke;
    v8[3] = &unk_1E8012268;
    v10 = v4;
    v9 = v3;
    v6 = _Block_copy(v8);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

void sub_1BDBBB044(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void _ReportAnalyticsEventForMessage(void *a1, void *a2)
{
  v12 = a1;
  v3 = a2;
  if (v12 && v3)
  {
    v4 = [v3 analyticsReporterSubject];
    if ([v3 canReportToAnalytics] && v4)
    {
      v5 = [v3 analyticsIdentifier];
      v6 = v5;
      if (v5)
      {
        v7 = v5;
      }

      else
      {
        v7 = [v3 identifier];
      }

      v8 = v7;

      v9 = [v12 mutableCopy];
      [v9 setObject:*MEMORY[0x1E69BAC10] forKey:*MEMORY[0x1E69BABE8]];
      [v9 safelySetObject:v8 forKey:*MEMORY[0x1E69BA588]];
      v10 = MEMORY[0x1E69B8540];
      v11 = [v9 copy];
      [v10 subject:v4 sendEvent:v11];
    }
  }
}

Class initCNAvatarView_2()
{
  if (qword_1EBDAA840 != -1)
  {
    dispatch_once(&qword_1EBDAA840, &__block_literal_global_625);
  }

  result = objc_getClass("CNAvatarView");
  _MergedGlobals_9 = result;
  getCNAvatarViewClass[0] = CNAvatarViewFunction_2;
  return result;
}

void sub_1BDBC0030(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 88));
  _Unwind_Resume(a1);
}

void sub_1BDBC03CC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_1BDBC0760(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDBC0C60(_Unwind_Exception *a1)
{
  objc_destroyWeak((v3 + 64));
  objc_destroyWeak((v2 + 72));
  objc_destroyWeak((v1 + 56));
  _Block_object_dispose((v4 - 248), 8);
  _Block_object_dispose((v4 - 200), 8);
  _Block_object_dispose((v4 - 152), 8);
  objc_destroyWeak((v4 - 104));
  _Unwind_Resume(a1);
}

void sub_1BDBC1C88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, id a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, char a53)
{
  objc_destroyWeak((v53 + 56));
  objc_destroyWeak((v55 + 96));
  objc_destroyWeak((v54 + 56));
  objc_destroyWeak(&a46);
  _Block_object_dispose(&a53, 8);
  _Block_object_dispose((v56 - 256), 8);
  _Block_object_dispose((v56 - 208), 8);
  _Block_object_dispose((v56 - 160), 8);
  objc_destroyWeak((v56 - 112));
  _Unwind_Resume(a1);
}

void PKPromptUserAboutConflicts(void *a1, int a2, void *a3, void *a4, void *a5)
{
  v69 = *MEMORY[0x1E69E9840];
  v9 = a1;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if (v12)
  {
    v13 = [v9 count];
    if (!v13 && (a2 & 1) == 0)
    {
      v12[2](v12, 1);
      goto LABEL_72;
    }

    v59 = v11;
    if (a2)
    {
      if (!v13)
      {
        v30 = PKLocalizedPaymentString(&cfstr_ExpressPayment_1.isa);
LABEL_62:
        v41 = v30;
        goto LABEL_71;
      }

      if (v13 == 1)
      {
        v14 = [v9 anyObject];
        v15 = [v14 localizedDescription];
        PKLocalizedPaymentString(&cfstr_ExpressPayment_2.isa, &stru_1F3BD5BF0.isa, v15);
        v41 = LABEL_41:;

LABEL_71:
        v44 = [v10 localizedDescription];
        v45 = PKLocalizedPaymentString(&cfstr_ExpressPayment_7.isa, &stru_1F3BD5BF0.isa, v44);

        v46 = [MEMORY[0x1E69DC650] alertControllerWithTitle:v45 message:v41 preferredStyle:1];
        v47 = MEMORY[0x1E69DC648];
        v48 = PKLocalizedString(&cfstr_CancelButtonTi.isa);
        v62[0] = MEMORY[0x1E69E9820];
        v62[1] = 3221225472;
        v62[2] = __PKPromptUserAboutConflicts_block_invoke;
        v62[3] = &unk_1E8011248;
        v49 = v12;
        v63 = v49;
        v50 = [v47 actionWithTitle:v48 style:1 handler:v62];
        [v46 addAction:v50];

        v51 = MEMORY[0x1E69DC648];
        v52 = PKLocalizedString(&cfstr_OkButtonTitle.isa);
        v60[0] = MEMORY[0x1E69E9820];
        v60[1] = 3221225472;
        v60[2] = __PKPromptUserAboutConflicts_block_invoke_2;
        v60[3] = &unk_1E8011248;
        v61 = v49;
        v53 = [v51 actionWithTitle:v52 style:0 handler:v60];
        [v46 addAction:v53];

        v11 = v59;
        [v59 presentViewController:v46 animated:1 completion:0];

        goto LABEL_72;
      }

      v54 = v13;
      v31 = @"EXPRESS_PAYMENT_CARDS_GYMKIT_MANY_CONFLICTS";
      goto LABEL_21;
    }

    if (v13 == 1)
    {
      v14 = [v9 anyObject];
      v16 = [v14 isAccessPass];
      v17 = [v14 supportedRadioTechnologies];
      if (v16)
      {
        v18 = v17;
        v19 = [v14 localizedDescription];
        v15 = v19;
        if ((v18 & 2) != 0)
        {
          PKLocalizedPaymentString(&cfstr_PassiveEntryOn.isa, &stru_1F3BD5BF0.isa, v19);
        }

        else
        {
          PKLocalizedPaymentString(&cfstr_ExpressOneConf.isa, &stru_1F3BD5BF0.isa, v19);
        }
      }

      else
      {
        v15 = [v14 localizedDescription];
        PKLocalizedPaymentString(&cfstr_ExpressPayment_4.isa, &stru_1F3BD5BF0.isa, v15);
      }

      goto LABEL_41;
    }

    if (v13 > 2)
    {
      v58 = v10;
      v66 = 0u;
      v67 = 0u;
      v64 = 0u;
      v65 = 0u;
      v32 = v9;
      v33 = [v32 countByEnumeratingWithState:&v64 objects:v68 count:16];
      if (v33)
      {
        v34 = v33;
        v35 = 0;
        v36 = 0;
        v37 = 0;
        v38 = *v65;
        do
        {
          for (i = 0; i != v34; ++i)
          {
            if (*v65 != v38)
            {
              objc_enumerationMutation(v32);
            }

            v40 = *(*(&v64 + 1) + 8 * i);
            if ([v40 isAccessPass])
            {
              if (([v40 supportedRadioTechnologies] & 2) != 0)
              {
                ++v36;
              }

              else
              {
                ++v35;
              }
            }

            else
            {
              ++v37;
            }
          }

          v34 = [v32 countByEnumeratingWithState:&v64 objects:v68 count:16];
        }

        while (v34);
      }

      else
      {
        v35 = 0;
        v36 = 0;
        v37 = 0;
      }

      if (v37 && v35 && v36)
      {
        v41 = PKLocalizedString(&cfstr_PassiveEntryEx.isa, &cfstr_LuLuLu.isa, v36, v35, v37);
        v10 = v58;
        goto LABEL_71;
      }

      v10 = v58;
      if (v35 && v36)
      {
        v55 = v36;
        v56 = v35;
        v42 = @"PASSIVE_ENTRY_EXPRESS_CONFLICTS";
      }

      else if (v36 && v37)
      {
        v55 = v36;
        v56 = v37;
        v42 = @"PASSIVE_ENTRY_EXPRESS_PAYMENT_CONFLICTS";
      }

      else
      {
        if (!v35 || !v37)
        {
          if (v36)
          {
            v54 = v36;
            v31 = @"PASSIVE_ENTRY_MANY_CONFLICTS";
          }

          else if (v35)
          {
            v54 = v35;
            v31 = @"EXPRESS_MANY_CONFLICTS";
          }

          else
          {
            v54 = v37;
            v31 = @"EXPRESS_PAYMENT_CARDS_MANY_CONFLICTS";
          }

LABEL_21:
          PKLocalizedString(&v31->isa, &cfstr_Lu.isa, v54);
          v30 = LABEL_61:;
          goto LABEL_62;
        }

        v55 = v35;
        v56 = v37;
        v42 = @"EXPRESS_MODE_EXPRESS_PAYMENT_CONFLICTS";
      }

      PKLocalizedString(&v42->isa, &cfstr_LuLu.isa, v55, v56);
      goto LABEL_61;
    }

    v20 = [v9 allObjects];
    v21 = [v20 objectAtIndexedSubscript:0];
    v57 = v20;
    v22 = [v20 objectAtIndexedSubscript:1];
    v23 = [v21 isAccessPass];
    v24 = [v22 isAccessPass];
    v25 = [v21 supportedRadioTechnologies];
    v26 = [v22 supportedRadioTechnologies];
    v27 = v26;
    if (v23 && v24)
    {
      if ((v25 & 2) != 0 && (v26 & 2) != 0)
      {
        v28 = [v21 localizedDescription];
        v29 = [v22 localizedDescription];
        PKLocalizedPaymentString(&cfstr_PassiveEntryTw.isa, &stru_1F3BD6370.isa, v28, v29);
      }

      else if (((v25 | v26) & 2) != 0)
      {
        if ((v25 & 2) != 0)
        {
          v28 = [v21 localizedDescription];
          v43 = v22;
        }

        else
        {
          v28 = [v22 localizedDescription];
          v43 = v21;
        }

        v29 = [v43 localizedDescription];
        PKLocalizedPaymentString(&cfstr_MixedPassiveEn.isa, &stru_1F3BD6370.isa, v28, v29);
      }

      else
      {
        v28 = [v21 localizedDescription];
        v29 = [v22 localizedDescription];
        PKLocalizedPaymentString(&cfstr_ExpressTwoConf.isa, &stru_1F3BD6370.isa, v28, v29);
      }

      goto LABEL_70;
    }

    if (((v23 | v24) & 1) == 0)
    {
      v28 = [v21 localizedDescription];
      v29 = [v22 localizedDescription];
      PKLocalizedPaymentString(&cfstr_ExpressPayment_5.isa, &stru_1F3BD6370.isa, v28, v29);
      goto LABEL_70;
    }

    if (v23)
    {
      v28 = [v21 localizedDescription];
      v29 = [v22 localizedDescription];
      if ((v25 & 2) != 0)
      {
LABEL_39:
        PKLocalizedPaymentString(&cfstr_MixedPassiveEn_0.isa, &stru_1F3BD6370.isa, v28, v29);
        v41 = LABEL_70:;

        goto LABEL_71;
      }
    }

    else
    {
      v28 = [v22 localizedDescription];
      v29 = [v21 localizedDescription];
      if ((v27 & 2) != 0)
      {
        goto LABEL_39;
      }
    }

    PKLocalizedPaymentString(&cfstr_MixedExpressPa.isa, &stru_1F3BD6370.isa, v28, v29);
    goto LABEL_70;
  }

LABEL_72:
}

void sub_1BDBC3558(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDBC417C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDBC5210(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v19 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDBC59F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, char a38)
{
  _Block_object_dispose(&a38, 8);
  _Block_object_dispose((v38 - 184), 8);
  _Block_object_dispose((v38 - 136), 8);
  _Unwind_Resume(a1);
}

void __dispatch_async_ar_block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  (*(*(a1 + 32) + 16))();

  objc_autoreleasePoolPop(v2);
}

void sub_1BDBCC0DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDBD320C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDBD44A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, id location)
{
  objc_destroyWeak((v23 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDBD4C8C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDBD8204(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1BDBD8914(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDBD9160(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDBDAF4C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 72));
  _Unwind_Resume(a1);
}

void sub_1BDBDBBC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  objc_destroyWeak((v30 + 48));
  objc_destroyWeak((v29 + 56));
  _Block_object_dispose(&a29, 8);
  objc_destroyWeak((v31 - 128));
  _Unwind_Resume(a1);
}

void sub_1BDBDC104(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 56));
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v3 - 72));
  _Unwind_Resume(a1);
}

void sub_1BDBDC800(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, char a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, char a49)
{
  objc_destroyWeak((v49 + 72));
  objc_destroyWeak(&location);
  _Block_object_dispose(&a43, 8);
  _Block_object_dispose(&a49, 8);
  _Block_object_dispose((v50 - 240), 8);
  _Unwind_Resume(a1);
}

void sub_1BDBDCD74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, id a27, char a28)
{
  objc_destroyWeak((v28 + 48));
  objc_destroyWeak(&a27);
  _Block_object_dispose(&a28, 8);
  _Unwind_Resume(a1);
}

void sub_1BDBDDD58(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1BDBDE0C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  _Block_object_dispose(&a31, 8);
  _Block_object_dispose((v31 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_1BDBDEBE4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDBDECF0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

uint64_t initNRWatchOSVersionForRemoteDevice(void *a1)
{
  v1 = qword_1EBDAA858;
  v2 = a1;
  if (v1 != -1)
  {
    dispatch_once(&qword_1EBDAA858, &__block_literal_global_1436);
  }

  softLinkNRWatchOSVersionForRemoteDevice[0] = dlsym(_MergedGlobals_9_0, "NRWatchOSVersionForRemoteDevice");
  v3 = (softLinkNRWatchOSVersionForRemoteDevice[0])(v2);

  return v3;
}

void *__LoadNanoRegistry_block_invoke()
{
  result = dlopen("/System/Library/PrivateFrameworks/NanoRegistry.framework/NanoRegistry", 2);
  _MergedGlobals_9_0 = result;
  return result;
}

Class initFKOrderTrackingSettingsViewControllerProvider()
{
  if (qword_1EBDAA868 != -1)
  {
    dispatch_once(&qword_1EBDAA868, &__block_literal_global_1440);
  }

  result = objc_getClass("FKOrderTrackingSettingsViewControllerProvider");
  qword_1EBDAA860 = result;
  getFKOrderTrackingSettingsViewControllerProviderClass[0] = FKOrderTrackingSettingsViewControllerProviderFunction;
  return result;
}

void *__LoadFinanceKitUI_block_invoke_1()
{
  result = dlopen("/System/Library/PrivateFrameworks/FinanceKitUI.framework/FinanceKitUI", 2);
  LoadFinanceKitUI_frameworkLibrary_1 = result;
  return result;
}

Class initFKBankConnectInstitutionConsentManagementViewControllerProvider()
{
  if (qword_1EBDAA868 != -1)
  {
    dispatch_once(&qword_1EBDAA868, &__block_literal_global_1440);
  }

  result = objc_getClass("FKBankConnectInstitutionConsentManagementViewControllerProvider");
  qword_1EBDAA870 = result;
  _MergedGlobals_618 = FKBankConnectInstitutionConsentManagementViewControllerProviderFunction;
  return result;
}

Class initFKBankConnectAccountConsentManagementViewControllerProvider()
{
  if (qword_1EBDAA868 != -1)
  {
    dispatch_once(&qword_1EBDAA868, &__block_literal_global_1440);
  }

  result = objc_getClass("FKBankConnectAccountConsentManagementViewControllerProvider");
  qword_1EBDAA878 = result;
  off_1EE98A668 = FKBankConnectAccountConsentManagementViewControllerProviderFunction;
  return result;
}

id PKRemoteAddPaymentPassViewControllerExportedInterface()
{
  v0 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F3D45408];
  v1 = MEMORY[0x1E695DFD8];
  v2 = objc_opt_class();
  v3 = [v1 setWithObjects:{v2, objc_opt_class(), 0}];
  [v0 setClasses:v3 forSelector:sel_generateRequestWithCertificateChain_nonce_nonceSignature_completionHandler_ argumentIndex:0 ofReply:0];

  v4 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
  [v0 setClasses:v4 forSelector:sel_generateRequestWithCertificateChain_nonce_nonceSignature_completionHandler_ argumentIndex:0 ofReply:1];

  v5 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
  [v0 setClasses:v5 forSelector:sel_didFinishWithPass_error_ argumentIndex:0 ofReply:0];

  v6 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
  [v0 setClasses:v6 forSelector:sel_didFinishWithPass_error_ argumentIndex:1 ofReply:0];

  return v0;
}

id PKServiceAddPaymentPassViewControllerExportedInterface()
{
  v0 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F3D5E910];
  v1 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
  [v0 setClasses:v1 forSelector:sel_setConfiguration_completionHandler_ argumentIndex:0 ofReply:0];

  return v0;
}

void sub_1BDBE079C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDBE09EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDBE2140(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id location)
{
  objc_destroyWeak((v22 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDBE3E00(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 64));
  _Unwind_Resume(a1);
}

void sub_1BDBE4850(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location, char a18)
{
  objc_destroyWeak((v18 + 48));
  objc_destroyWeak(&location);
  _Block_object_dispose(&a18, 8);
  _Unwind_Resume(a1);
}

void sub_1BDBE5C60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1BDBE794C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDBE7D74(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDBE81A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDBE8630(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDBEBF4C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  _Block_object_dispose((v2 - 104), 8);
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_1BDBED188(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v19 + 72));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDBED7A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDBEE2FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1BDBEEB30(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

Class initNPKCompanionAgentConnection_0()
{
  if (qword_1EBD6AC50 != -1)
  {
    dispatch_once(&qword_1EBD6AC50, &__block_literal_global_77);
  }

  result = objc_getClass("NPKCompanionAgentConnection");
  _MergedGlobals_594 = result;
  getNPKCompanionAgentConnectionClass_0[0] = NPKCompanionAgentConnectionFunction_0;
  return result;
}

void *__LoadNanoPassKit_block_invoke_1()
{
  result = dlopen("/System/Library/PrivateFrameworks/NanoPassKit.framework/NanoPassKit", 2);
  LoadNanoPassKit_frameworkLibrary_1 = result;
  return result;
}

Class initMFMailComposeViewController()
{
  if (qword_1EBD6AC60 != -1)
  {
    dispatch_once(&qword_1EBD6AC60, &__block_literal_global_243);
  }

  result = objc_getClass("MFMailComposeViewController");
  qword_1EBD6AC58 = result;
  getMFMailComposeViewControllerClass[0] = MFMailComposeViewControllerFunction;
  return result;
}

void *__LoadMessageUI_block_invoke()
{
  result = dlopen("/System/Library/Frameworks/MessageUI.framework/MessageUI", 2);
  LoadMessageUI_frameworkLibrary = result;
  return result;
}

void sub_1BDBF5244(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location, char a19)
{
  objc_destroyWeak((v19 + 64));
  objc_destroyWeak(&location);
  _Block_object_dispose(&a19, 8);
  _Block_object_dispose((v20 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_1BDBF73B8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1BDBF7B7C(_Unwind_Exception *a1)
{
  objc_destroyWeak(v1);
  objc_destroyWeak((v2 - 104));
  _Unwind_Resume(a1);
}

uint64_t PKPaymentCardIneligibleReasonForEligibilityStatus(unint64_t a1)
{
  if (a1 > 6)
  {
    return 0;
  }

  else
  {
    return qword_1BE115110[a1];
  }
}

uint64_t LightBorderColor()
{
  v0 = [MEMORY[0x1E69DD1B8] traitCollectionWithTraits:&__block_literal_global_141];
  v1 = [MEMORY[0x1E69DC888] systemGray5Color];
  v2 = v1;
  if (v0)
  {
    v3 = [v1 resolvedColorWithTraitCollection:v0];

    v2 = v3;
  }

  v4 = [v2 colorWithAlphaComponent:0.6];

  return v4;
}

uint64_t DarkBorderColor()
{
  v0 = [MEMORY[0x1E69DD1B8] traitCollectionWithTraits:&__block_literal_global_143];
  v1 = [MEMORY[0x1E69DC888] systemGray5Color];
  v2 = v1;
  if (v0)
  {
    v3 = [v1 resolvedColorWithTraitCollection:v0];

    v2 = v3;
  }

  v4 = [v2 colorWithAlphaComponent:0.15];

  return v4;
}

void sub_1BDBFA6F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va1, a8);
  va_start(va, a8);
  v9 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_1BDBFB0C4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1BDBFB648(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDBFB864(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDBFFB50(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 - 120));
  objc_destroyWeak((v1 - 112));
  _Unwind_Resume(a1);
}

void sub_1BDC02130(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_1BDC06040(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDC080F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, id location)
{
  objc_destroyWeak((v23 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDC0851C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDC08A4C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDC08E44(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak((v19 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDC092A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDC09F6C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDC0A2FC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 72));
  objc_destroyWeak((v1 + 64));
  objc_destroyWeak((v3 - 104));
  _Unwind_Resume(a1);
}

void ContentViewVisibilityAnimations(void *a1, void *a2, void *a3, void *a4)
{
  if (!UIAccessibilityIsReduceTransparencyEnabled())
  {
    if (a1)
    {
      v8 = [MEMORY[0x1E69B92B0] springAnimationWithKeyPath:@"filters.gaussianBlur.inputRadius"];
      [v8 setMass:2.0];
      [v8 setStiffness:300.0];
      [v8 setDamping:50.0];
      [v8 pkui_updateForAdditiveAnimationFromScalar:0.0 toScalar:4.5];
      v9 = v8;
      *a1 = v8;
    }

    if (a2)
    {
      v10 = [MEMORY[0x1E69B92B0] springAnimationWithKeyPath:@"filters.gaussianBlur.inputRadius"];
      [v10 setMass:2.0];
      [v10 setStiffness:300.0];
      [v10 setDamping:50.0];
      [v10 pkui_updateForAdditiveAnimationFromScalar:4.5 toScalar:0.0];
      v11 = v10;
      *a2 = v10;
    }

    if (a3)
    {
      v12 = [MEMORY[0x1E69B92B0] springAnimationWithKeyPath:@"opacity"];
      [v12 setMass:2.0];
      [v12 setStiffness:300.0];
      [v12 setDamping:50.0];
      [v12 pkui_updateForAdditiveAnimationFromScalar:0.0 toScalar:1.0];
      v13 = v12;
      *a3 = v12;
    }

    if (a4)
    {
      v15 = [MEMORY[0x1E69B92B0] springAnimationWithKeyPath:@"opacity"];
      [v15 setMass:2.0];
      [v15 setStiffness:300.0];
      [v15 setDamping:50.0];
      [v15 pkui_updateForAdditiveAnimationFromScalar:1.0 toScalar:0.0];
      v14 = v15;
      *a4 = v15;
    }
  }
}

void sub_1BDC10914(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id location)
{
  objc_destroyWeak((v25 + 32));
  objc_destroyWeak((v26 + 32));
  objc_destroyWeak((v24 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDC11A4C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDC12A4C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDC15618(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t SpringSetResponse(uint64_t result, double a2)
{
  if (result)
  {
    v2 = 6.28318531 / a2 * (6.28318531 / a2);
    v3 = *result;
    v4 = *(result + 8);
    v5 = v2 * *result;
    if (v4 != v5)
    {
      *(result + 8) = v5;
      *(result + 48) = 1;
      v4 = v5;
    }

    v6 = sqrt(v3 * v4);
    v7 = v6 + v6;
    if (*(result + 16) != v7)
    {
      *(result + 16) = v7;
      *(result + 48) = 1;
    }
  }

  return result;
}

void SpringStatesUpdate(uint64_t a1, uint64_t a2, double a3)
{
  if (!a1 || !a2)
  {
    return;
  }

  if (*(a1 + 48) != 1)
  {
    v6 = *(a1 + 24);
    v12 = *(a1 + 32);
    v11 = exp(-(v6 * a3));
    v8 = v6 > v12;
    v9 = -v6;
    if (v6 < v12)
    {
      v10 = *(a1 + 40);
      goto LABEL_8;
    }

    if (v6 > v12)
    {
      v19 = *(a1 + 40);
      goto LABEL_13;
    }

LABEL_15:
    v17 = 0;
    v8 = 0;
    v16 = 0.0;
    v18 = 0.0;
    sinval = 0.0;
    cosval = 0.0;
    v19 = 0.0;
    goto LABEL_16;
  }

  v6 = *(a1 + 16) * 0.5;
  v7 = sqrt(*(a1 + 8));
  *(a1 + 24) = v6;
  *(a1 + 32) = v7;
  v8 = v6 > v7;
  if (v6 < v7)
  {
    v9 = -v6;
    v10 = sqrt(v7 * v7 - v6 * v6);
    *(a1 + 40) = v10;
    *(a1 + 48) = 0;
    v11 = exp(-(v6 * a3));
LABEL_8:
    v14 = __sincos_stret(v10 * a3);
    cosval = v14.__cosval;
    sinval = v14.__sinval;
    v16 = 0.0;
    v17 = 1;
    v18 = 0.0;
    v19 = 0.0;
    goto LABEL_17;
  }

  if (v6 <= v7)
  {
    *(a1 + 48) = 0;
    v9 = -v6;
    v11 = exp(-(v6 * a3));
    goto LABEL_15;
  }

  v19 = sqrt(v6 * v6 - v7 * v7);
  *(a1 + 40) = v19;
  *(a1 + 48) = 0;
  v9 = -v6;
  v11 = exp(-(v6 * a3));
LABEL_13:
  v18 = cosh(v19 * a3);
  v16 = sinh(v19 * a3);
  v17 = 0;
  sinval = 0.0;
  v8 = 1;
  cosval = 0.0;
LABEL_16:
  v10 = 0.0;
LABEL_17:
  if (*(a2 + 40) == 1)
  {
    v20 = *a2;
    v21 = *(a2 + 8) - *a2;
    v22 = *(a2 + 24);
    v23 = *(a2 + 16) + v6 * v21;
    v24 = v16 * (v23 / v19) + v21 * v18;
    v25 = v19 * (v18 * (v23 / v19)) + v16 * v21 * v19;
    v26 = v21 + v23 * a3;
    if (v8)
    {
      v26 = v24;
    }

    else
    {
      v25 = *(a2 + 16) + v6 * v21;
    }

    v27 = v23 / v10;
    v28 = sinval * v27 + v21 * cosval;
    v29 = v10 * (cosval * v27) + -(sinval * v21) * v10;
    if (v17)
    {
      v30 = v28;
    }

    else
    {
      v30 = v26;
    }

    if (v17)
    {
      v25 = v29;
    }

    v31 = v11 * v9 * v30 + v11 * v25;
    v32 = v20 + v11 * v30;
    *(a2 + 8) = v32;
    *(a2 + 16) = v31;
    if (vabdd_f64(v32, v20) <= v22 && fabs(v31) <= *(a2 + 32))
    {
      *(a2 + 40) = 0;
      *(a2 + 8) = v20;
      *(a2 + 16) = 0;
    }
  }
}

void sub_1BDC1EA2C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1BDC1ED28(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDC1F99C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, id location)
{
  objc_destroyWeak((v25 + 32));
  objc_destroyWeak(&a24);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDC22044(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, char a49)
{
  _Block_object_dispose(&a33, 8);
  _Block_object_dispose(&a49, 8);
  _Block_object_dispose(&a25, 8);
  _Block_object_dispose(&a29, 8);
  _Unwind_Resume(a1);
}

void sub_1BDC227DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, char a49)
{
  _Block_object_dispose(&a41, 8);
  _Block_object_dispose((v49 - 192), 8);
  _Block_object_dispose(&a49, 8);
  _Block_object_dispose((v49 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_1BDC237D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1BDC242D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1BDC2577C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  _Block_object_dispose(&a65, 8);
  _Block_object_dispose(&a71, 8);
  _Unwind_Resume(a1);
}

void sub_1BDC25D94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1BDC26134(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1BDC2ACE8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDC2BEDC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDC2E28C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDC2E444(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDC2F68C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose((v27 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_1BDC330F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v19 + 32));
  objc_destroyWeak(&a18);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDC33FD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __WLCIContext_block_invoke()
{
  v0 = PKColorSpaceStandardRGB();
  v1 = objc_alloc(MEMORY[0x1E695DF20]);
  v4 = [v1 initWithObjectsAndKeys:{v0, *MEMORY[0x1E695F838], 0}];
  v2 = [MEMORY[0x1E695F620] contextWithOptions:v4];
  v3 = _MergedGlobals_595;
  _MergedGlobals_595 = v2;
}

void sub_1BDC354DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDC360FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, id a26)
{
  objc_destroyWeak(&a26);
  objc_destroyWeak((v26 - 112));
  _Unwind_Resume(a1);
}

void sub_1BDC36388(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

Class initNPKCompanionAgentConnection_1()
{
  if (qword_1EBDAA8D0 != -1)
  {
    dispatch_once(&qword_1EBDAA8D0, &__block_literal_global_95);
  }

  result = objc_getClass("NPKCompanionAgentConnection");
  _MergedGlobals_3 = result;
  getNPKCompanionAgentConnectionClass_1[0] = NPKCompanionAgentConnectionFunction_1;
  return result;
}

void *__LoadNanoPassKit_block_invoke_2()
{
  result = dlopen("/System/Library/PrivateFrameworks/NanoPassKit.framework/NanoPassKit", 2);
  LoadNanoPassKit_frameworkLibrary_2 = result;
  return result;
}

void PKAppearanceApplyToContainer(void *a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (v3)
  {
    [v4 pk_applyAppearance:v3];
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v6 = [v5 pk_childrenForAppearance];
    v7 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v12;
      do
      {
        v10 = 0;
        do
        {
          if (*v12 != v9)
          {
            objc_enumerationMutation(v6);
          }

          PKAppearanceApplyToContainer(v3, *(*(&v11 + 1) + 8 * v10++));
        }

        while (v8 != v10);
        v8 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v8);
    }
  }
}

uint64_t PKAppearanceApplyToContainerSkippingChildren(uint64_t result, void *a2)
{
  if (result)
  {
    return [a2 pk_applyAppearance:result];
  }

  return result;
}

id PKAttributedStringSetAttributeForKey(void *a1, uint64_t a2, void *a3)
{
  v5 = a1;
  v6 = a3;
  v7 = v5;
  v8 = v7;
  v9 = v7;
  if (a2)
  {
    v9 = v7;
    if (v6)
    {
      v9 = v7;
      if ([v7 length])
      {
        v10 = [v8 mutableCopy];
        [v10 addAttribute:*MEMORY[0x1E69DB650] value:v6 range:{0, objc_msgSend(v8, "length")}];
        v9 = [v10 copy];
      }
    }
  }

  return v9;
}

id PKPointImageWithColor(void *a1)
{
  v1 = a1;
  v5.width = 1.0;
  v5.height = 1.0;
  UIGraphicsBeginImageContext(v5);
  [v1 set];

  v6.origin.x = 0.0;
  v6.origin.y = 0.0;
  v6.size.width = 1.0;
  v6.size.height = 1.0;
  UIRectFill(v6);
  v2 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();

  return v2;
}

void sub_1BDC38FC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1BDC396C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class initNPKCompanionAgentConnection_2()
{
  if (qword_1EBD6AC80 != -1)
  {
    dispatch_once(&qword_1EBD6AC80, &__block_literal_global_96);
  }

  result = objc_getClass("NPKCompanionAgentConnection");
  _MergedGlobals_596 = result;
  getNPKCompanionAgentConnectionClass_2[0] = NPKCompanionAgentConnectionFunction_2;
  return result;
}

void *__LoadNanoPassKit_block_invoke_3()
{
  result = dlopen("/System/Library/PrivateFrameworks/NanoPassKit.framework/NanoPassKit", 2);
  LoadNanoPassKit_frameworkLibrary_3 = result;
  return result;
}

void sub_1BDC39EE8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id PKPrivacyBundleIdentifiersForContext(__int16 a1)
{
  v2 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v3 = v2;
  if (a1)
  {
    [v2 addObject:@"com.apple.onboarding.applepay"];
    if ((a1 & 2) == 0)
    {
LABEL_3:
      if ((a1 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_15;
    }
  }

  else if ((a1 & 2) == 0)
  {
    goto LABEL_3;
  }

  [v3 addObject:@"com.apple.onboarding.applepaycash"];
  if ((a1 & 4) == 0)
  {
LABEL_4:
    if ((a1 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_16;
  }

LABEL_15:
  [v3 addObject:@"com.apple.onboarding.applecard"];
  if ((a1 & 8) == 0)
  {
LABEL_5:
    if ((a1 & 0x80) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_17;
  }

LABEL_16:
  [v3 addObject:@"com.apple.onboarding.wallet"];
  if ((a1 & 0x80) == 0)
  {
LABEL_6:
    if ((a1 & 0x40) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_18;
  }

LABEL_17:
  [v3 addObject:@"com.apple.onboarding.savings"];
  if ((a1 & 0x40) == 0)
  {
LABEL_7:
    if ((a1 & 0x100) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_19;
  }

LABEL_18:
  [v3 addObject:@"com.apple.onboarding.identity"];
  if ((a1 & 0x100) == 0)
  {
LABEL_8:
    if ((a1 & 0x200) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

LABEL_19:
  [v3 addObject:@"com.apple.onboarding.mapsrap"];
  if ((a1 & 0x200) != 0)
  {
LABEL_9:
    [v3 addObject:@"com.apple.onboarding.improveapplepay"];
  }

LABEL_10:

  return v3;
}

void sub_1BDC3FA88(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDC40054(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDC40B54(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 128));
  _Unwind_Resume(a1);
}

void sub_1BDC423D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDC425C0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1BDC42794(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1BDC42968(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1BDC42B3C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1BDC42D10(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1BDC42ED0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDC43254(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 72));
  _Unwind_Resume(a1);
}

void sub_1BDC435AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDC437F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDC439D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDC43BC8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDC43ED0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDC441B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDC443D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDC446A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDC44868(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDC44A1C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDC44CBC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDC44F58(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDC45108(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDC45330(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDC4558C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDC457CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDC459F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDC45C3C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDC45DE4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDC45F8C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDC46134(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDC462C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDC47020(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 224), 8);
  _Block_object_dispose((v1 - 176), 8);
  _Block_object_dispose((v1 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_1BDC47348(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

__CFString *PKNumberPadKeyButtonValueToString(void *a1, uint64_t a2)
{
  v3 = a1;
  if (a2 == 12)
  {
    v4 = @"None";
    goto LABEL_9;
  }

  if (a2 == 11)
  {
    v5 = [MEMORY[0x1E695DF58] currentLocale];
    v6 = [v5 decimalSeparator];
LABEL_8:
    v4 = v6;

    goto LABEL_9;
  }

  if (a2 != 10)
  {
    v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a2];
    v6 = [v3 stringFromNumber:v5];
    goto LABEL_8;
  }

  v4 = @"Delete";
LABEL_9:

  return v4;
}

void sub_1BDC4AF50(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

Class initNPKCompanionAgentConnection_3()
{
  if (qword_1EBDAA8F0 != -1)
  {
    dispatch_once(&qword_1EBDAA8F0, &__block_literal_global_101);
  }

  result = objc_getClass("NPKCompanionAgentConnection");
  _MergedGlobals_3_0 = result;
  getNPKCompanionAgentConnectionClass_3[0] = NPKCompanionAgentConnectionFunction_3;
  return result;
}

void *__LoadNanoPassKit_block_invoke_4()
{
  result = dlopen("/System/Library/PrivateFrameworks/NanoPassKit.framework/NanoPassKit", 2);
  LoadNanoPassKit_frameworkLibrary_4 = result;
  return result;
}

double PKTransactionCategoryImageSizeForTraitCollection(void *a1)
{
  v1 = [a1 preferredContentSizeCategory];
  v2 = PKMultiplierForContentSizeCategory(v1);

  return v2 * 18.0;
}

double PKMultiplierForContentSizeCategory(void *a1)
{
  v1 = a1;
  v2 = 0.9;
  if (([v1 isEqualToString:*MEMORY[0x1E69DDC68]] & 1) == 0 && (objc_msgSend(v1, "isEqualToString:", *MEMORY[0x1E69DDC88]) & 1) == 0)
  {
    v2 = 1.0;
    if (([v1 isEqualToString:*MEMORY[0x1E69DDC78]] & 1) == 0)
    {
      v2 = 1.1;
      if (([v1 isEqualToString:*MEMORY[0x1E69DDC70]] & 1) == 0 && (objc_msgSend(v1, "isEqualToString:", *MEMORY[0x1E69DDC60]) & 1) == 0)
      {
        v2 = 1.2;
        if (([v1 isEqualToString:*MEMORY[0x1E69DDC58]] & 1) == 0 && (objc_msgSend(v1, "isEqualToString:", *MEMORY[0x1E69DDC50]) & 1) == 0)
        {
          v2 = 1.4;
          if (([v1 isEqualToString:*MEMORY[0x1E69DDC40]] & 1) == 0 && (objc_msgSend(v1, "isEqualToString:", *MEMORY[0x1E69DDC38]) & 1) == 0)
          {
            v2 = 1.6;
            if (([v1 isEqualToString:*MEMORY[0x1E69DDC30]] & 1) == 0 && (objc_msgSend(v1, "isEqualToString:", *MEMORY[0x1E69DDC28]) & 1) == 0)
            {
              if ([v1 isEqualToString:*MEMORY[0x1E69DDC20]])
              {
                v2 = 1.8;
              }

              else
              {
                v2 = 1.0;
              }
            }
          }
        }
      }
    }
  }

  return v2;
}

Class initCNAvatarView_3()
{
  if (qword_1EBD68238 != -1)
  {
    dispatch_once(&qword_1EBD68238, &__block_literal_global_159);
  }

  result = objc_getClass("CNAvatarView");
  _MergedGlobals_5_0 = result;
  getCNAvatarViewClass_0[0] = CNAvatarViewFunction_3;
  return result;
}

void sub_1BDC56DE0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDC570E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDC58C5C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, id location)
{
  objc_destroyWeak((v23 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDC59C18(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1BDC5A31C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_1BDC5AD44(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDC5E660(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id TransactionIdentifierFromItems(void *a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = v1;
  v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = [*(*(&v12 + 1) + 8 * i) transaction];
        v9 = [v8 identifier];

        [v2 addObject:v9];
      }

      v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }

  v10 = [v2 copy];

  return v10;
}

void sub_1BDC624D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDC62E2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, char a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, char a51)
{
  _Block_object_dispose(&a45, 8);
  _Block_object_dispose(&a51, 8);
  _Unwind_Resume(a1);
}

void sub_1BDC64098(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, char a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, char a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, char a54)
{
  _Block_object_dispose(&a42, 8);
  _Block_object_dispose(&a48, 8);
  _Block_object_dispose(&a54, 8);
  _Unwind_Resume(a1);
}

void sub_1BDC64A3C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_1BDC64E28(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDC655B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDC65CD8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

Class initFHSearchSuggestionController()
{
  if (qword_1EBDAA920 != -1)
  {
    dispatch_once(&qword_1EBDAA920, &__block_literal_global_949);
  }

  result = objc_getClass("FHSearchSuggestionController");
  qword_1EBDAA918 = result;
  getFHSearchSuggestionControllerClass[0] = FHSearchSuggestionControllerFunction;
  return result;
}

void *__LoadFinHealth_block_invoke()
{
  result = dlopen("/System/Library/PrivateFrameworks/FinHealth.framework/FinHealth", 2);
  LoadFinHealth_frameworkLibrary = result;
  return result;
}

id initFHInstrumentationRecordKeyTagType()
{
  if (qword_1EBDAA930 != -1)
  {
    dispatch_once(&qword_1EBDAA930, &__block_literal_global_953);
  }

  v0 = dlsym(qword_1EBDAA928, "FHInstrumentationRecordKeyTagType");
  objc_storeStrong(&qword_1EBDAA908, *v0);
  _MergedGlobals_5_6 = FHInstrumentationRecordKeyTagTypeFunction;
  v1 = qword_1EBDAA908;

  return v1;
}

void *__LoadFinHealthCore_block_invoke()
{
  result = dlopen("/System/Library/PrivateFrameworks/FinHealthCore.framework/FinHealthCore", 2);
  qword_1EBDAA928 = result;
  return result;
}

id initFHInstrumentationRecordKeyPassType()
{
  if (qword_1EBDAA930 != -1)
  {
    dispatch_once(&qword_1EBDAA930, &__block_literal_global_953);
  }

  v0 = dlsym(qword_1EBDAA928, "FHInstrumentationRecordKeyPassType");
  objc_storeStrong(&qword_1EBDAA910, *v0);
  off_1EE989758 = FHInstrumentationRecordKeyPassTypeFunction;
  v1 = qword_1EBDAA910;

  return v1;
}

id initFHInstrumentationRecordKeySource()
{
  if (qword_1EBDAA930 != -1)
  {
    dispatch_once(&qword_1EBDAA930, &__block_literal_global_953);
  }

  v0 = dlsym(qword_1EBDAA928, "FHInstrumentationRecordKeySource");
  objc_storeStrong(&_MergedGlobals_6_0, *v0);
  off_1EE989760 = FHInstrumentationRecordKeySourceFunction;
  v1 = _MergedGlobals_6_0;

  return v1;
}

void sub_1BDC66ED0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, id a29)
{
  objc_destroyWeak(&a24);
  objc_destroyWeak(&a29);
  objc_destroyWeak((v29 - 120));
  objc_destroyWeak((v29 - 112));
  _Unwind_Resume(a1);
}

void sub_1BDC68338(_Unwind_Exception *a1)
{
  objc_destroyWeak(v1);
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

Class initNPKCompanionAgentConnection_4()
{
  if (qword_1EBDAA950 != -1)
  {
    dispatch_once(&qword_1EBDAA950, &__block_literal_global_108);
  }

  result = objc_getClass("NPKCompanionAgentConnection");
  qword_1EBDAA948 = result;
  _MergedGlobals_1_14 = NPKCompanionAgentConnectionFunction_4;
  return result;
}

void *__LoadNanoPassKit_block_invoke_5()
{
  result = dlopen("/System/Library/PrivateFrameworks/NanoPassKit.framework/NanoPassKit", 2);
  LoadNanoPassKit_frameworkLibrary_5 = result;
  return result;
}

Class initBYFlowSkipController_0()
{
  if (qword_1EBDAA968 != -1)
  {
    dispatch_once(&qword_1EBDAA968, &__block_literal_global_181);
  }

  result = objc_getClass("BYFlowSkipController");
  qword_1EBDAA958 = result;
  off_1EE989780 = BYFlowSkipControllerFunction_0;
  return result;
}

void *__LoadSetupAssistant_block_invoke_0()
{
  result = dlopen("/System/Library/PrivateFrameworks/SetupAssistant.framework/SetupAssistant", 2);
  qword_1EBDAA960 = result;
  return result;
}

id initBYFlowSkipIdentifierApplePay_0()
{
  if (qword_1EBDAA968 != -1)
  {
    dispatch_once(&qword_1EBDAA968, &__block_literal_global_181);
  }

  v0 = dlsym(qword_1EBDAA960, "BYFlowSkipIdentifierApplePay");
  objc_storeStrong(&_MergedGlobals_2, *v0);
  off_1EE989788 = BYFlowSkipIdentifierApplePayFunction_0;
  v1 = _MergedGlobals_2;

  return v1;
}

void sub_1BDC6BE54(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDC6C07C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDC6C48C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v20 + 64));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDC6C800(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 56));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_1BDC6D2E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDC6F48C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_1BDC6FBA4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id PKRemoteAddSecureElementPassViewControllerExportedInterface()
{
  v0 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F3D5F4D8];
  v1 = MEMORY[0x1E695DFD8];
  v2 = objc_opt_class();
  v3 = [v1 setWithObjects:{v2, objc_opt_class(), 0}];
  [v0 setClasses:v3 forSelector:sel_didFinishWithPasses_error_ argumentIndex:0 ofReply:0];

  v4 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
  [v0 setClasses:v4 forSelector:sel_didFinishWithPasses_error_ argumentIndex:1 ofReply:0];

  return v0;
}

id PKServiceAddSecureElementPassViewControllerExportedInterface()
{
  v0 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F3D53280];
  v1 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
  [v0 setClasses:v1 forSelector:sel_setConfiguration_completionHandler_ argumentIndex:0 ofReply:0];

  return v0;
}

void sub_1BDC70E64(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDC71230(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 80));
  _Unwind_Resume(a1);
}

void sub_1BDC74FB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  objc_destroyWeak(va);
  objc_destroyWeak((v15 - 104));
  _Unwind_Resume(a1);
}

void sub_1BDC78A90(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 144));
  _Unwind_Resume(a1);
}

void sub_1BDC79400(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, char a46)
{
  objc_destroyWeak((v46 + 48));
  _Block_object_dispose(&a46, 8);
  _Block_object_dispose((v47 - 192), 8);
  _Block_object_dispose((v47 - 144), 8);
  objc_destroyWeak((v47 - 112));
  _Unwind_Resume(a1);
}

void sub_1BDC7A00C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 56));
  objc_destroyWeak((v1 + 48));
  _Unwind_Resume(a1);
}

void sub_1BDC7A1B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDC7A498(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 56));
  objc_destroyWeak((v1 + 48));
  _Unwind_Resume(a1);
}

void sub_1BDC7BBF0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 64));
  _Unwind_Resume(a1);
}

void sub_1BDC7C32C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDC7C51C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1BDC7D80C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 64));
  _Unwind_Resume(a1);
}

void sub_1BDC7E4B4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 48));
  _Unwind_Resume(a1);
}

void sub_1BDC82BE4(_Unwind_Exception *a1)
{
  objc_destroyWeak(v1);
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1BDC85EB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{
  objc_destroyWeak((v27 + 56));
  _Block_object_dispose(&a26, 8);
  objc_destroyWeak((v26 + 56));
  _Block_object_dispose((v28 - 184), 8);
  objc_destroyWeak((v28 - 152));
  _Block_object_dispose((v28 - 144), 8);
  _Unwind_Resume(a1);
}

void sub_1BDC893B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDC8963C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

Class initQLItem_0()
{
  if (qword_1EBD68350 != -1)
  {
    dispatch_once(&qword_1EBD68350, &__block_literal_global_117);
  }

  result = objc_getClass("QLItem");
  _MergedGlobals_1_6 = result;
  _MergedGlobals_619 = QLItemFunction_0;
  return result;
}

void *__LoadQuickLook_block_invoke_0()
{
  result = dlopen("/System/Library/Frameworks/QuickLook.framework/QuickLook", 2);
  LoadQuickLook_frameworkLibrary_0 = result;
  return result;
}

Class initQLPreviewController_0()
{
  if (qword_1EBD68350 != -1)
  {
    dispatch_once(&qword_1EBD68350, &__block_literal_global_117);
  }

  result = objc_getClass("QLPreviewController");
  qword_1EBD68358 = result;
  off_1EE98A678 = QLPreviewControllerFunction_0;
  return result;
}

void sub_1BDC8C8EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDC8CAC0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDC8CE88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1BDC8D788(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDC90E94(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDC919A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41, uint64_t a42, uint64_t a43, uint64_t a44, id location)
{
  objc_destroyWeak(&a28);
  _Block_object_dispose(&a29, 8);
  _Block_object_dispose(&a35, 8);
  _Block_object_dispose(&a41, 8);
  objc_destroyWeak(&location);
  _Block_object_dispose((v45 - 136), 8);
  _Unwind_Resume(a1);
}

void sub_1BDC9275C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id location, char a25)
{
  objc_destroyWeak((v25 + 48));
  _Block_object_dispose(&a25, 8);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id PKIPEAuthorizationRemoteViewControllerExportedInterface()
{
  os_unfair_lock_lock(&_MergedGlobals_3_1);
  WeakRetained = objc_loadWeakRetained(&qword_1EBDAA980);
  if (!WeakRetained)
  {
    v1 = objc_autoreleasePoolPush();
    WeakRetained = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F3D62030];
    objc_storeWeak(&qword_1EBDAA980, WeakRetained);
    objc_autoreleasePoolPop(v1);
  }

  os_unfair_lock_unlock(&_MergedGlobals_3_1);

  return WeakRetained;
}

void sub_1BDC9410C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1BDC94D88(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDC95F68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1BDC96214(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1BDC99F40(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 64));
  objc_destroyWeak((v2 - 120));
  _Unwind_Resume(a1);
}

Class initCNAvatarView_4()
{
  if (qword_1EBDAA990 != -1)
  {
    dispatch_once(&qword_1EBDAA990, &__block_literal_global_317);
  }

  result = objc_getClass("CNAvatarView");
  _MergedGlobals_9_1 = result;
  _MergedGlobals_621 = CNAvatarViewFunction_4;
  return result;
}

Class initCNAvatarCardController_2()
{
  if (qword_1EBDAA990 != -1)
  {
    dispatch_once(&qword_1EBDAA990, &__block_literal_global_317);
  }

  result = objc_getClass("CNAvatarCardController");
  qword_1EBDAA998 = result;
  off_1EE98A6A0 = CNAvatarCardControllerFunction_2;
  return result;
}

Class initFKBankConnectProvisioningFlowManager()
{
  if (qword_1EBD6ACA0 != -1)
  {
    dispatch_once(&qword_1EBD6ACA0, &__block_literal_global_122);
  }

  result = objc_getClass("FKBankConnectProvisioningFlowManager");
  _MergedGlobals_598 = result;
  getFKBankConnectProvisioningFlowManagerClass[0] = FKBankConnectProvisioningFlowManagerFunction;
  return result;
}

void *__LoadFinanceKitUI_block_invoke_2()
{
  result = dlopen("/System/Library/PrivateFrameworks/FinanceKitUI.framework/FinanceKitUI", 2);
  LoadFinanceKitUI_frameworkLibrary_2 = result;
  return result;
}

id PKColorForRewardsTier(uint64_t a1)
{
  if (a1 > 2)
  {
    if (a1 == 3)
    {
      v1 = @"00C8F6";
      goto LABEL_11;
    }

    if (a1 == 4)
    {
      v1 = @"B889FF";
      goto LABEL_11;
    }

LABEL_8:
    v2 = [MEMORY[0x1E69DC888] systemFillColor];
    goto LABEL_12;
  }

  if (a1 == 1)
  {
    v1 = @"FFBA00";
    goto LABEL_11;
  }

  if (a1 != 2)
  {
    goto LABEL_8;
  }

  v1 = @"47BF39";
LABEL_11:
  v2 = [MEMORY[0x1E69DC888] pkui_colorWithHexString:v1];
LABEL_12:

  return v2;
}

void sub_1BDC9FD6C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDCA05E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDCA35E4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 144));
  _Unwind_Resume(a1);
}

void sub_1BDCA3B58(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v19 + 64));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDCA426C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1BDCA53B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDCA6250(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDCA650C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDCA6DA4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 56));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_1BDCA70C0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 + 48));
  objc_destroyWeak((v3 - 72));
  _Unwind_Resume(a1);
}

void sub_1BDCAA4F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t PKAccountUserFamilyRowPriorityFromRow(void *a1)
{
  v1 = a1;
  v2 = [v1 accountUser];

  if (v2)
  {
    v3 = [v1 accountUser];

    v4 = [v3 accessLevel];
    if (v4 < 3)
    {
      return qword_1BE1158A0[v4];
    }
  }

  else
  {
    v6 = [v1 invitation];

    if (v6)
    {
      return 4;
    }
  }

  return 0x7FFFFFFFFFFFFFFFLL;
}

void sub_1BDCAE2AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id PKServiceFlightShareComposeViewControllerExportedInterface()
{
  v0 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F3E3D428];
  v1 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
  [v0 setClasses:v1 forSelector:sel_setInvitation_completion_ argumentIndex:0 ofReply:0];

  return v0;
}

void sub_1BDCB0778(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDCB1298(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

id PKFeatureApplicationHeaderImageWithImage(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1 != 2)
  {
    v5 = 0;
    goto LABEL_5;
  }

  if (!v3)
  {
    v7 = PKPassKitUIBundle();
    v8 = [v7 URLForResource:@"AppleCardIcon" withExtension:@"pdf"];
    v9 = PKUIScreenScale();
    v5 = PKUIImageFromPDF(v8, 90.0, 90.0, v9);

    if (v5)
    {
      goto LABEL_7;
    }

LABEL_5:
    v6 = 0;
    goto LABEL_8;
  }

  v5 = v3;
LABEL_7:
  v14 = *MEMORY[0x1E695EFF8];
  v10 = [objc_alloc(MEMORY[0x1E69DCA78]) initWithSize:{90.0, 90.0}];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __PKFeatureApplicationHeaderImageWithImage_block_invoke;
  v12[3] = &unk_1E8014C20;
  v15 = vdupq_n_s64(0x4056800000000000uLL);
  v5 = v5;
  v13 = v5;
  v6 = [v10 imageWithActions:v12];

LABEL_8:

  return v6;
}

uint64_t __PKFeatureApplicationHeaderImageWithImage_block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E69DC728] bezierPathWithRoundedRect:*(a1 + 40) cornerRadius:{*(a1 + 48), *(a1 + 56), *(a1 + 64), 20.0}];
  [v2 addClip];

  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  v6 = *(a1 + 56);
  v7 = *(a1 + 64);

  return [v3 drawInRect:{v4, v5, v6, v7}];
}

void sub_1BDCB4560(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 176), 8);
  _Block_object_dispose((v1 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_1BDCB5920(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 64));
  _Block_object_dispose((v2 - 216), 8);
  objc_destroyWeak((v2 - 168));
  _Block_object_dispose((v2 - 160), 8);
  _Unwind_Resume(a1);
}

void sub_1BDCB80F4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 64));
  _Block_object_dispose((v2 - 200), 8);
  objc_destroyWeak((v2 - 152));
  _Block_object_dispose((v2 - 144), 8);
  _Unwind_Resume(a1);
}

void sub_1BDCB9088(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1BDCBB33C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 64));
  _Unwind_Resume(a1);
}

void sub_1BDCBE5C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDCC0588(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDCC1100(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 32));
  _Unwind_Resume(a1);
}

void sub_1BDCC3800(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDCC43B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDCC6DA4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDCC83D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, id a41)
{
  objc_destroyWeak((v42 + 56));
  objc_destroyWeak((v41 + 48));
  _Block_object_dispose(&a28, 8);
  objc_destroyWeak(&a41);
  objc_destroyWeak((v43 - 128));
  _Unwind_Resume(a1);
}

id PKFlightTileIssuerActionForTypeInDescriptor(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1 <= 3)
  {
    if (a1 > 1)
    {
      if (a1 == 2)
      {
        [v3 orderFoodURL];
      }

      else
      {
        [v3 entertainmentURL];
      }
    }

    else if (a1)
    {
      [v3 purchaseWifiURL];
    }

    else
    {
      [v3 managementURL];
    }

    v5 = LABEL_10:;
LABEL_16:
    v6 = v5;
    v7 = __PKFlightTileIssuerActionForTypeInDescriptor_block_invoke(v5);
LABEL_17:
    v8 = v7;
    goto LABEL_18;
  }

  if (a1 <= 5)
  {
    if (a1 == 4)
    {
      [v3 transitProviderPhoneNumberURL];
    }

    else
    {
      [v3 transitProviderEmailURL];
    }

    goto LABEL_10;
  }

  if (a1 == 6)
  {
    v5 = [v3 transitProviderWebsiteURL];
    goto LABEL_16;
  }

  v6 = [v3 businessChatIdentifier];
  if ([v6 length])
  {
    v7 = [objc_alloc(MEMORY[0x1E69B8D10]) _initWithBusinessChatIdentifier:v6];
    goto LABEL_17;
  }

  v8 = 0;
LABEL_18:

  return v8;
}

id __PKFlightTileIssuerActionForTypeInDescriptor_block_invoke(void *a1)
{
  if (a1)
  {
    v1 = MEMORY[0x1E69B8D10];
    v2 = a1;
    v3 = [[v1 alloc] _initWithExternalURL:v2 title:0];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

void sub_1BDCCAF6C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDCCB2CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDCCC018(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id location)
{
  objc_destroyWeak((v22 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDCCC294(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1BDCCE1F4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

Class initCNAvatarView_5()
{
  if (qword_1EBDAA9B8 != -1)
  {
    dispatch_once(&qword_1EBDAA9B8, &__block_literal_global_132);
  }

  result = objc_getClass("CNAvatarView");
  _MergedGlobals_8 = result;
  _MergedGlobals_7_1[0] = CNAvatarViewFunction_5;
  return result;
}

Class initCNAvatarCardController_3()
{
  if (qword_1EBDAA9B8 != -1)
  {
    dispatch_once(&qword_1EBDAA9B8, &__block_literal_global_132);
  }

  result = objc_getClass("CNAvatarCardController");
  qword_1EBDAA9C0 = result;
  off_1EE9A1D00[0] = CNAvatarCardControllerFunction_3;
  return result;
}

void sub_1BDCD5C54(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

Class initCKTranscriptPluginBalloonView()
{
  if (qword_1EBDAA9D8 != -1)
  {
    dispatch_once(&qword_1EBDAA9D8, &__block_literal_global_135);
  }

  result = objc_getClass("CKTranscriptPluginBalloonView");
  _MergedGlobals_4_1 = result;
  _MergedGlobals_3_9[0] = CKTranscriptPluginBalloonViewFunction;
  return result;
}

void *__LoadChatKit_block_invoke()
{
  result = dlopen("/System/Library/PrivateFrameworks/ChatKit.framework/ChatKit", 2);
  LoadChatKit_frameworkLibrary = result;
  return result;
}

Class initCKUIBehavior()
{
  if (qword_1EBDAA9D8 != -1)
  {
    dispatch_once(&qword_1EBDAA9D8, &__block_literal_global_135);
  }

  result = objc_getClass("CKUIBehavior");
  qword_1EBDAA9E0 = result;
  off_1EE9A1D10[0] = CKUIBehaviorFunction;
  return result;
}

void sub_1BDCD82D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, id location)
{
  objc_destroyWeak((v41 + 48));
  objc_destroyWeak(&location);
  _Block_object_dispose((v42 - 248), 8);
  _Block_object_dispose((v42 - 200), 8);
  _Block_object_dispose((v42 - 152), 8);
  _Unwind_Resume(a1);
}

void sub_1BDCD96E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, char a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, char a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  _Block_object_dispose(&a38, 8);
  _Block_object_dispose(&a52, 8);
  _Block_object_dispose(&a64, 8);
  _Block_object_dispose(&STACK[0x218], 8);
  _Block_object_dispose((v64 - 160), 8);
  _Unwind_Resume(a1);
}

Class initFAProfilePictureStore()
{
  if (qword_1EBD6ACC0 != -1)
  {
    dispatch_once(&qword_1EBD6ACC0, &__block_literal_global_313);
  }

  result = objc_getClass("FAProfilePictureStore");
  _MergedGlobals_600 = result;
  getFAProfilePictureStoreClass[0] = FAProfilePictureStoreFunction;
  return result;
}

void *__LoadFamilyCircleUI_block_invoke()
{
  result = dlopen("/System/Library/PrivateFrameworks/FamilyCircleUI.framework/FamilyCircleUI", 2);
  LoadFamilyCircleUI_frameworkLibrary = result;
  return result;
}

void sub_1BDCDE180(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 144));
  _Unwind_Resume(a1);
}

void sub_1BDCDFD00(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDCE0700(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDCE1FA4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDCEB250(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, id a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, id a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, id a48)
{
  objc_destroyWeak((v48 + 56));
  objc_destroyWeak(&a30);
  objc_destroyWeak(&a39);
  objc_destroyWeak(&a48);
  objc_destroyWeak((v49 - 176));
  _Block_object_dispose((v49 - 168), 8);
  _Block_object_dispose((v49 - 136), 8);
  _Unwind_Resume(a1);
}

void sub_1BDCEC7E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDCECD9C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id location)
{
  objc_destroyWeak((v22 + 40));
  objc_destroyWeak((v23 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDCED140(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v3 - 72));
  _Unwind_Resume(a1);
}

void sub_1BDCEE50C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, id a29)
{
  objc_destroyWeak((v29 + 72));
  objc_destroyWeak(&a29);
  objc_destroyWeak((v30 - 120));
  _Unwind_Resume(a1);
}

Class initQLItem_1()
{
  if (qword_1EBDAAA00 != -1)
  {
    dispatch_once(&qword_1EBDAAA00, &__block_literal_global_140);
  }

  result = objc_getClass("QLItem");
  _MergedGlobals_2_0 = result;
  _MergedGlobals_1_15 = QLItemFunction_1;
  return result;
}

void *__LoadQuickLook_block_invoke_1()
{
  result = dlopen("/System/Library/Frameworks/QuickLook.framework/QuickLook", 2);
  LoadQuickLook_frameworkLibrary_1 = result;
  return result;
}

Class initQLPreviewController_1()
{
  if (qword_1EBDAAA00 != -1)
  {
    dispatch_once(&qword_1EBDAAA00, &__block_literal_global_140);
  }

  result = objc_getClass("QLPreviewController");
  qword_1EBDAAA08 = result;
  off_1EE989798 = QLPreviewControllerFunction_1;
  return result;
}

void sub_1BDCF1330(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1BDCF1934(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id RadialGradientLayer()
{
  v0 = objc_alloc_init(MEMORY[0x1E6979380]);
  [v0 setType:*MEMORY[0x1E6979DB0]];
  [v0 setLocations:&unk_1F3CC84B0];
  [v0 setStartPoint:{0.5, 0.5}];
  [v0 setEndPoint:{1.0, 1.0}];
  v1 = [MEMORY[0x1E69DC888] blackColor];
  v2 = objc_alloc_init(MEMORY[0x1E695DF70]);
  [v2 addObject:{objc_msgSend(v1, "CGColor")}];
  [v2 addObject:{objc_msgSend(v1, "CGColor")}];
  v3 = [v1 colorWithAlphaComponent:0.0];
  [v2 addObject:{objc_msgSend(v3, "CGColor")}];

  [v0 setColors:v2];

  return v0;
}

void sub_1BDCF3CFC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDCF4194(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDCF43F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDCF4784(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

Class initCNAvatarView_6()
{
  if (qword_1EBDAAA18 != -1)
  {
    dispatch_once(&qword_1EBDAAA18, &__block_literal_global_141);
  }

  result = objc_getClass("CNAvatarView");
  _MergedGlobals_3_2 = result;
  getCNAvatarViewClass_1[0] = CNAvatarViewFunction_6;
  return result;
}

void sub_1BDCF59D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v7 - 48), 8);
  _Unwind_Resume(a1);
}

void sub_1BDCF5BB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1BDCF5D80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1BDCF6410(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1BDCF6964(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDCF86E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1BDCF8C34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_1BDCF8F44(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDCF92FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  _Block_object_dispose(&a31, 8);
  _Block_object_dispose((v31 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_1BDCF99C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t PKDefaultContentSizeForPresentationStyle()
{
  v0 = [MEMORY[0x1E69DCEB0] mainScreen];
  [v0 bounds];

  return PKSizeRoundToPixel();
}

id PKCircularDismissBarButtonItem(void *a1, uint64_t a2)
{
  v3 = MEMORY[0x1E69DC708];
  v4 = a1;
  v5 = [v3 alloc];
  v6 = PKUIImageNamed(@"CircularDelete");
  v7 = [v5 initWithImage:v6 style:2 target:v4 action:a2];

  v8 = [MEMORY[0x1E69DC888] lightGrayColor];
  [v7 setTintColor:v8];

  return v7;
}

void sub_1BDCFB670(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location, id a18)
{
  objc_destroyWeak((v18 + 48));
  objc_destroyWeak((v18 + 40));
  objc_destroyWeak(&location);
  objc_destroyWeak(&a18);
  _Unwind_Resume(a1);
}

void sub_1BDCFD2D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDCFDC88(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDD050E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void PKPresentPhysicalCardActivationProxCard(void *a1)
{
  v2 = a1;
  if ([v2 length])
  {
    v1 = [MEMORY[0x1E696ABB0] defaultCenter];
    [v1 postNotificationName:@"com.apple.stockholm.wallet.tag" object:v2];
  }
}

void sub_1BDD0966C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, id a39)
{
  objc_destroyWeak((v39 + 56));
  objc_destroyWeak((v40 + 48));
  _Block_object_dispose(&a26, 8);
  objc_destroyWeak(&a39);
  objc_destroyWeak((v41 - 112));
  _Unwind_Resume(a1);
}

void sub_1BDD0A91C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1BDD0C6A4(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 256), 8);
  _Block_object_dispose((v1 - 192), 8);
  _Unwind_Resume(a1);
}

void sub_1BDD11244(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDD11910(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1BDD12AA0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDD1378C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 + 48));
  objc_destroyWeak((v3 - 72));
  _Unwind_Resume(a1);
}

id PKSharedCacheGetCustomOptions()
{
  v0 = PKSharedCacheGetArrayForKey();
  v1 = [v0 pk_arrayByApplyingBlock:&__block_literal_global_327];

  return v1;
}

void sub_1BDD15210(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDD155D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id __PKSharedCacheGetCustomOptions_block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E696AB90];
  v3 = a2;
  v4 = [[v2 alloc] initWithString:v3];

  return v4;
}

void PKSharedCacheSetCustomOptions(void *a1)
{
  v1 = [a1 pk_arrayByApplyingBlock:&__block_literal_global_330];
  PKSharedCacheSetObjectForKey();
}

void sub_1BDD161C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1BDD164BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak((v22 + 32));
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDD17F24(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDD18FDC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDD1D5C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDD1FC40(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDD20A2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, id a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, id a34)
{
  objc_destroyWeak(&a27);
  objc_destroyWeak(&a34);
  _Block_object_dispose((v34 - 160), 8);
  objc_destroyWeak((v34 - 112));
  _Unwind_Resume(a1);
}

void sub_1BDD21694(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 56));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

Class initMKWalletMerchantLookupRequest()
{
  if (qword_1EBD6ACD0 != -1)
  {
    dispatch_once(&qword_1EBD6ACD0, &__block_literal_global_146_0);
  }

  result = objc_getClass("MKWalletMerchantLookupRequest");
  _MergedGlobals_601 = result;
  getMKWalletMerchantLookupRequestClass = MKWalletMerchantLookupRequestFunction;
  return result;
}

void *__LoadMapKit_block_invoke()
{
  result = dlopen("/System/Library/Frameworks/MapKit.framework/MapKit", 2);
  LoadMapKit_frameworkLibrary = result;
  return result;
}

void sub_1BDD23610(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id location)
{
  objc_destroyWeak((v23 + 40));
  objc_destroyWeak((v22 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDD25814(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v20 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDD262AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location, id a16)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  objc_destroyWeak(&a16);
  _Unwind_Resume(a1);
}

void sub_1BDD288D4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

uint64_t PKPaymentPassActionPerformOpenAppClip(void *a1)
{
  v1 = [a1 appClipURL];
  v2 = [objc_alloc(MEMORY[0x1E6994680]) initWithURL:v1];
  [v2 setShouldReturnErrorOnUserCancellation:1];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __PKPaymentPassActionPerformOpenAppClip_block_invoke;
  v5[3] = &unk_1E8013D38;
  v6 = v1;
  v3 = v1;
  [v2 requestClipWithCompletion:v5];

  return 1;
}

void __PKPaymentPassActionPerformOpenAppClip_block_invoke(uint64_t a1, char a2)
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __PKPaymentPassActionPerformOpenAppClip_block_invoke_2;
  v2[3] = &unk_1E8013F80;
  v4 = a2;
  v3 = *(a1 + 32);
  dispatch_async(MEMORY[0x1E69E96A0], v2);
}

void __PKPaymentPassActionPerformOpenAppClip_block_invoke_2(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 40);
  v3 = PKLogFacilityTypeGetObject();
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
  if (v2 == 1)
  {
    if (v4)
    {
      v5 = *(a1 + 32);
      v8 = 138412290;
      v9 = v5;
      v6 = "Starting app clip for %@";
LABEL_6:
      _os_log_impl(&dword_1BD026000, v3, OS_LOG_TYPE_DEFAULT, v6, &v8, 0xCu);
    }
  }

  else if (v4)
  {
    v7 = *(a1 + 32);
    v8 = 138412290;
    v9 = v7;
    v6 = "Failed to open app clip action as %@ ";
    goto LABEL_6;
  }
}

uint64_t PKPaymentPassActionPerformOpenExternalURL(void *a1, void *a2)
{
  v10[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [a1 externalURL];
  if (v4)
  {
    if ([MEMORY[0x1E696F4A8] canHandleURL:v4])
    {
      [MEMORY[0x1E696F270] _openDefaultNavigationWithURL:v4 fromScene:0 completionHandler:0];
      v5 = 1;
    }

    else
    {
      v6 = objc_alloc_init(MEMORY[0x1E69636B8]);
      [v6 setSensitive:0];
      v9 = *MEMORY[0x1E699F970];
      v10[0] = MEMORY[0x1E695E118];
      v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:&v9 count:1];
      [v6 setFrontBoardOptions:v7];

      if ((PKRunningInViewService() & 1) != 0 || PKRunningInLockScreenPlugin())
      {
        if (v3)
        {
          PKPostOpenApplicationNotification(v3, v4, v6);
          v5 = 1;
        }

        else
        {
          v5 = 0;
        }
      }

      else
      {
        v5 = PKOpenApplication(v4, v6);
      }
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

void PKPaymentPassActionPerformExternalActionContent(void *a1, void *a2, void *a3, void *a4)
{
  v44 = *MEMORY[0x1E69E9840];
  v7 = a1;
  v8 = a2;
  v9 = a3;
  v10 = a4;
  if (v8)
  {
    v11 = [v8 displayName];
    v12 = v11;
    if (v11)
    {
      v13 = v11;
    }

    else
    {
      v13 = [v7 organizationName];
    }

    v15 = v13;

    v16 = [v8 url];
    v17 = [v8 type];
    if (v17 == 10)
    {
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = __PKPaymentPassActionPerformExternalActionContent_block_invoke_38;
      aBlock[3] = &unk_1E8010DD0;
      v33 = v15;
      v22 = v10;
      v34 = v22;
      v23 = _Block_copy(aBlock);
      v24 = [objc_alloc(MEMORY[0x1E6994678]) initWithURL:v16];
      v28[0] = MEMORY[0x1E69E9820];
      v28[1] = 3221225472;
      v28[2] = __PKPaymentPassActionPerformExternalActionContent_block_invoke_3;
      v28[3] = &unk_1E801C918;
      v29 = v16;
      v30 = v22;
      v31 = v23;
      v25 = v23;
      [v24 requestMetadataWithCompletion:v28];
    }

    else if (v17 == 12)
    {
      v18 = [v7 storeIdentifiers];
      v19 = [[PKLinkedApplication alloc] initWithStoreIDs:v18 defaultLaunchURL:v16];
      v35[0] = MEMORY[0x1E69E9820];
      v35[1] = 3221225472;
      v35[2] = __PKPaymentPassActionPerformExternalActionContent_block_invoke_2;
      v35[3] = &unk_1E801C8A0;
      v36 = v19;
      v37 = v18;
      v38 = v16;
      v40 = &__block_literal_global_154;
      v41 = v10;
      v39 = v15;
      v20 = v18;
      v21 = v19;
      [(PKLinkedApplication *)v21 reloadApplicationStateIfNecessaryWithCompletion:v35];
    }

    else
    {
      v26 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        v27 = PKPaymentPassActionTypeToString();
        *buf = 138412290;
        v43 = v27;
        _os_log_impl(&dword_1BD026000, v26, OS_LOG_TYPE_DEFAULT, "Unsupported %@ for ExternalActionContent.", buf, 0xCu);
      }

      if (v10)
      {
        (*(v10 + 2))(v10, 0, 0);
      }
    }
  }

  else
  {
    v14 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1BD026000, v14, OS_LOG_TYPE_DEFAULT, "No pass action externalActionContent", buf, 2u);
    }

    if (v10)
    {
      (*(v10 + 2))(v10, 0, 0);
    }
  }
}

void __PKPaymentPassActionPerformExternalActionContent_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v4 = a3;
  if (v5 && [v4 isInstalled])
  {
    PKOpenURL();
  }

  else
  {
    [v4 openApplication:0 withLaunchOptions:1];
  }
}

void __PKPaymentPassActionPerformExternalActionContent_block_invoke_2(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
  if ([*(a1 + 32) state] == 1 && objc_msgSend(*(a1 + 32), "canOpenApplication"))
  {
    v2 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = *(a1 + 40);
      v4 = *(a1 + 48);
      *buf = 138412546;
      v16 = v3;
      v17 = 2112;
      v18 = v4;
      _os_log_impl(&dword_1BD026000, v2, OS_LOG_TYPE_DEFAULT, "Open app for storeIdentifiers %@ and url %@", buf, 0x16u);
    }

    (*(*(a1 + 64) + 16))();
    v5 = *(a1 + 72);
    if (v5)
    {
      (*(v5 + 16))(v5, 1, 0);
    }
  }

  else
  {
    v6 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 40);
      v8 = *(a1 + 48);
      *buf = 138412546;
      v16 = v7;
      v17 = 2112;
      v18 = v8;
      _os_log_impl(&dword_1BD026000, v6, OS_LOG_TYPE_DEFAULT, "Failed to open App: invalid app state for store identifiers %@ and url %@", buf, 0x16u);
    }

    v9 = PKLocalizedPaymentString(&cfstr_ActionMessageA.isa, &stru_1F3BD5BF0.isa, *(a1 + 56));
    v10 = [MEMORY[0x1E69DC650] alertControllerWithTitle:v9 message:0 preferredStyle:1];
    v11 = MEMORY[0x1E69DC648];
    v12 = PKLocalizedPaymentString(&cfstr_PassActionUnav.isa);
    v13 = [v11 actionWithTitle:v12 style:0 handler:0];

    [v10 addAction:v13];
    v14 = *(a1 + 72);
    if (v14)
    {
      (*(v14 + 16))(v14, 0, v10);
    }
  }
}

void __PKPaymentPassActionPerformExternalActionContent_block_invoke_38(uint64_t a1)
{
  v2 = PKLocalizedPaymentString(&cfstr_ActionMessageA.isa, &stru_1F3BD5BF0.isa, *(a1 + 32));
  v3 = [MEMORY[0x1E69DC650] alertControllerWithTitle:v2 message:0 preferredStyle:1];
  v4 = MEMORY[0x1E69DC648];
  v5 = PKLocalizedPaymentString(&cfstr_PassActionUnav.isa);
  v6 = [v4 actionWithTitle:v5 style:0 handler:0];

  [v3 addAction:v6];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __PKPaymentPassActionPerformExternalActionContent_block_invoke_2_39;
  block[3] = &unk_1E8010E20;
  v7 = *(a1 + 40);
  v10 = v3;
  v11 = v7;
  v8 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

uint64_t __PKPaymentPassActionPerformExternalActionContent_block_invoke_2_39(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, 0, *(a1 + 32));
  }

  return result;
}

void __PKPaymentPassActionPerformExternalActionContent_block_invoke_3(id *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __PKPaymentPassActionPerformExternalActionContent_block_invoke_4;
  block[3] = &unk_1E801C8F0;
  v10 = v6;
  v11 = v5;
  v12 = a1[4];
  v13 = a1[5];
  v14 = a1[6];
  v7 = v5;
  v8 = v6;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __PKPaymentPassActionPerformExternalActionContent_block_invoke_4(uint64_t a1)
{
  if (*(a1 + 32) || !*(a1 + 40))
  {
    v2 = *(*(a1 + 64) + 16);

    v2();
  }

  else
  {
    v3 = [objc_alloc(MEMORY[0x1E6994680]) initWithURL:*(a1 + 48)];
    [v3 setShouldReturnErrorOnUserCancellation:1];
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __PKPaymentPassActionPerformExternalActionContent_block_invoke_5;
    v4[3] = &unk_1E801C8C8;
    v5 = *(a1 + 48);
    v6 = *(a1 + 56);
    v7 = *(a1 + 64);
    [v3 requestClipWithCompletion:v4];
  }
}

void __PKPaymentPassActionPerformExternalActionContent_block_invoke_5(void *a1, int a2, void *a3)
{
  v13 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = a1[4];
    v9 = 138412546;
    v10 = v7;
    v11 = 2112;
    v12 = v5;
    _os_log_impl(&dword_1BD026000, v6, OS_LOG_TYPE_DEFAULT, "Open app clip for url %@, error %@", &v9, 0x16u);
  }

  if (a2)
  {
    v8 = a1[5];
    if (v8)
    {
      (*(v8 + 16))(v8, 1, 0);
    }
  }

  else
  {
    (*(a1[6] + 16))();
  }
}

void sub_1BDD2CACC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDD2D394(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDD2E718(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 48));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 72));
  _Unwind_Resume(a1);
}

void sub_1BDD3169C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  objc_destroyWeak((v9 + 40));
  _Unwind_Resume(a1);
}

void sub_1BDD32178(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, id location)
{
  objc_destroyWeak((v45 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDD33FD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, id a28)
{
  objc_destroyWeak(&a28);
  objc_destroyWeak((v28 - 96));
  _Unwind_Resume(a1);
}

void sub_1BDD343C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDD3460C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDD3610C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1BDD37DE8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDD386B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDD39F1C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void Main_T2PVFXW_graph_22B85551_0BBD_4CB5_AF88_B15A884FE52F(double a1, uint64_t a2, uint64_t a3, int a4, float *a5, _DWORD *a6, float *a7)
{
  v7 = *(&a1 + 1) / *&a1;
  if (fabsf(*&a1) <= 0.00000011921)
  {
    v7 = 0.0;
  }

  *&a1 = *&a1 / *(&a1 + 1);
  if (fabsf(*(&a1 + 1)) <= 0.00000011921)
  {
    *&a1 = 0.0;
  }

  v8 = 1.0;
  *a5 = v7;
  if (!a4)
  {
    v8 = 0.0;
  }

  *a6 = LODWORD(a1);
  *a7 = v8;
}

uint64_t __vfx_script_T2PVFXW_graph_22B85551_0BBD_4CB5_AF88_B15A884FE52F()
{
  result = vfx_script_get_arguments_buffer();
  v1 = *(result + 40);
  v2 = *(result + 48);
  v3 = **(result + 16);
  v4 = **(result + 24);
  v5 = *(&v3 + 1) / *&v3;
  if (fabsf(*&v3) <= 0.00000011921)
  {
    v5 = 0.0;
  }

  *&v3 = *&v3 / *(&v3 + 1);
  if (fabsf(*(&v3 + 1)) <= 0.00000011921)
  {
    *&v3 = 0.0;
  }

  v6 = 1.0;
  **(result + 32) = v5;
  if (!v4)
  {
    v6 = 0.0;
  }

  *v1 = v3;
  *v2 = v6;
  return result;
}

float Main_T2PVFXW_graph_E9B98FFD_4BD1_457E_BED8_DCA7C2732010(const void *a1, unsigned int a2, float a3, float *a4)
{
  result = (fminf(fmaxf(a3, 0.0), 1.0) * -5.0) + 6.0;
  *a4 = result;
  return result;
}

float __vfx_script_T2PVFXW_graph_E9B98FFD_4BD1_457E_BED8_DCA7C2732010()
{
  arguments_buffer = vfx_script_get_arguments_buffer();
  result = (fminf(fmaxf(**(arguments_buffer + 16), 0.0), 1.0) * -5.0) + 6.0;
  **(arguments_buffer + 24) = result;
  return result;
}

float32x2_t Spawn_T2PVFXW_graph_3EA99E49_888F_4E57_BEF1_E0391FBDDA3A(float32x2_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  result = vmul_lane_f32(a1, a1, 1);
  *a4 = result.f32[0];
  a4[1] = result.f32[0];
  return result;
}

float32x2_t __vfx_script_T2PVFXW_graph_3EA99E49_888F_4E57_BEF1_E0391FBDDA3A()
{
  arguments_buffer = vfx_script_get_arguments_buffer();
  v1 = *(arguments_buffer + 24);
  result = vmul_lane_f32(**(arguments_buffer + 16), **(arguments_buffer + 16), 1);
  *v1 = result.f32[0];
  v1[1] = result.f32[0];
  return result;
}

__n128 Init_T2PVFXW_graph_3BAE4FE4_40BA_4099_800E_15B23C7FB311(__n128 a1, float32x2_t a2, uint64_t a3, uint64_t a4, __n128 *a5, int8x16_t *a6)
{
  v6 = *a5;
  a1.n128_f32[0] = a1.n128_f32[0] / a1.n128_f32[1];
  if (fabsf(a1.n128_f32[1]) <= 0.00000011921)
  {
    a1.n128_f32[0] = 0.0;
  }

  *v7.i8 = vand_s8(vcvt_u32_f32(vmaxnm_f32(a2, 0)), vceq_f32(a2, a2));
  v7.i64[1] = vextq_s8(*a6, *a6, 8uLL).u64[0];
  *a6 = v7;
  a1.n128_u32[1] = v6.n128_u32[1];
  a1.n128_u32[2] = v6.n128_u32[2];
  *a5 = a1;
  result.n128_u64[0] = a1.n128_u64[0];
  result.n128_u32[2] = a1.n128_u32[2];
  return result;
}

__n128 __vfx_script_T2PVFXW_graph_3BAE4FE4_40BA_4099_800E_15B23C7FB311()
{
  arguments_buffer = vfx_script_get_arguments_buffer();
  v1 = *(arguments_buffer + 32);
  v2 = *(arguments_buffer + 40);
  v3 = *v1;
  LODWORD(v4) = HIDWORD(**(arguments_buffer + 16));
  *&v5 = COERCE_FLOAT(**(arguments_buffer + 16)) / v4;
  if (fabsf(v4) <= 0.00000011921)
  {
    *&v5 = 0.0;
  }

  *v6.i8 = vand_s8(vcvt_u32_f32(vmaxnm_f32(**(arguments_buffer + 24), 0)), vceq_f32(**(arguments_buffer + 24), **(arguments_buffer + 24)));
  v6.i64[1] = vextq_s8(*v2, *v2, 8uLL).u64[0];
  *v2 = v6;
  DWORD1(v5) = DWORD1(v3);
  DWORD2(v5) = DWORD2(v3);
  *v1 = v5;
  result.n128_u64[0] = v5;
  result.n128_u32[2] = DWORD2(v5);
  return result;
}

float Main_T2PVFXW_graph_B7DBBEE9_CD58_41CF_B60F_5A43A9252C48(float32x4_t a1, float32x4_t a2, float32x4_t a3, float32x4_t a4, float a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, float32x2_t *a10, float *a11, double a12, double a13, double a14, float a15, float a16)
{
  v17 = vmlaq_n_f32(vaddq_f32(a2, vmlaq_f32(a4, 0, a3)), a1, a5).u64[0];
  __asm { FMOV            V0.2S, #10.0 }

  v23 = vmul_f32(v17, _D0);
  vfx_script_texture_sample1d_curve();
  v25 = v24;
  vfx_script_texture_sample1d_curve();
  result = (v25 - v26) * a16;
  *a11 = result;
  *a10 = v23;
  return result;
}

float __vfx_script_T2PVFXW_graph_B7DBBEE9_CD58_41CF_B60F_5A43A9252C48()
{
  arguments_buffer = vfx_script_get_arguments_buffer();
  v1 = *(arguments_buffer + 88);
  v2 = *(arguments_buffer + 96);
  v3 = **(arguments_buffer + 80);
  __asm { FMOV            V0.2S, #10.0 }

  v9 = vmul_f32(*&vmlaq_n_f32(vaddq_f32(*(*(arguments_buffer + 16) + 16), vmlaq_f32(*(*(arguments_buffer + 16) + 48), 0, *(*(arguments_buffer + 16) + 32))), **(arguments_buffer + 16), **(arguments_buffer + 24)), _D0);
  vfx_script_texture_sample1d_curve();
  v11 = v10;
  vfx_script_texture_sample1d_curve();
  result = v3 * (v11 - v12);
  *v2 = result;
  *v1 = v9;
  return result;
}

float Main_T2PVFXW_graph_C5011254_2C14_4D6C_ACC8_FCADDF7D2858(const void *a1, unsigned int a2, float a3, float *a4)
{
  result = (fminf(fmaxf(a3, 0.0), 1.0) * -5.0) + 6.0;
  *a4 = result;
  return result;
}

float __vfx_script_T2PVFXW_graph_C5011254_2C14_4D6C_ACC8_FCADDF7D2858()
{
  arguments_buffer = vfx_script_get_arguments_buffer();
  result = (fminf(fmaxf(**(arguments_buffer + 16), 0.0), 1.0) * -5.0) + 6.0;
  **(arguments_buffer + 24) = result;
  return result;
}

float32x2_t Spawn_T2PVFXW_graph_2ECE170C_0F0E_49A8_8E95_E628EDEED11E(float32x2_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  result = vmul_lane_f32(a1, a1, 1);
  *a4 = result.f32[0];
  a4[1] = result.f32[0];
  return result;
}

float32x2_t __vfx_script_T2PVFXW_graph_2ECE170C_0F0E_49A8_8E95_E628EDEED11E()
{
  arguments_buffer = vfx_script_get_arguments_buffer();
  v1 = *(arguments_buffer + 24);
  result = vmul_lane_f32(**(arguments_buffer + 16), **(arguments_buffer + 16), 1);
  *v1 = result.f32[0];
  v1[1] = result.f32[0];
  return result;
}

__n128 Init_T2PVFXW_graph_C62C0CAD_9364_41B5_9872_7F96D4CEC455(__n128 a1, float32x2_t a2, uint64_t a3, uint64_t a4, __n128 *a5, int8x16_t *a6)
{
  v6 = *a5;
  a1.n128_f32[0] = a1.n128_f32[0] / a1.n128_f32[1];
  if (fabsf(a1.n128_f32[1]) <= 0.00000011921)
  {
    a1.n128_f32[0] = 0.0;
  }

  *v7.i8 = vand_s8(vcvt_u32_f32(vmaxnm_f32(a2, 0)), vceq_f32(a2, a2));
  v7.i64[1] = vextq_s8(*a6, *a6, 8uLL).u64[0];
  *a6 = v7;
  a1.n128_u32[1] = v6.n128_u32[1];
  a1.n128_u32[2] = v6.n128_u32[2];
  *a5 = a1;
  result.n128_u64[0] = a1.n128_u64[0];
  result.n128_u32[2] = a1.n128_u32[2];
  return result;
}

__n128 __vfx_script_T2PVFXW_graph_C62C0CAD_9364_41B5_9872_7F96D4CEC455()
{
  arguments_buffer = vfx_script_get_arguments_buffer();
  v1 = *(arguments_buffer + 32);
  v2 = *(arguments_buffer + 40);
  v3 = *v1;
  LODWORD(v4) = HIDWORD(**(arguments_buffer + 16));
  *&v5 = COERCE_FLOAT(**(arguments_buffer + 16)) / v4;
  if (fabsf(v4) <= 0.00000011921)
  {
    *&v5 = 0.0;
  }

  *v6.i8 = vand_s8(vcvt_u32_f32(vmaxnm_f32(**(arguments_buffer + 24), 0)), vceq_f32(**(arguments_buffer + 24), **(arguments_buffer + 24)));
  v6.i64[1] = vextq_s8(*v2, *v2, 8uLL).u64[0];
  *v2 = v6;
  DWORD1(v5) = DWORD1(v3);
  DWORD2(v5) = DWORD2(v3);
  *v1 = v5;
  result.n128_u64[0] = v5;
  result.n128_u32[2] = DWORD2(v5);
  return result;
}

__n128 Main_T2PVFXW_graph_A4BE83C2_0980_49BA_9997_C804AF8E4EF6(double a1, float a2, double a3, float a4, float a5, float a6, float a7, double a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, int a16, float a17, __int128 *a18, float32x4_t *a19, int32x4_t *a20, float *a21, float *a22)
{
  v60 = *a18;
  vfx_script_texture_sample1d_curve();
  v56 = v26 + 0.0;
  vfx_script_texture_sample1d_curve();
  v28 = v27 + 0.0;
  vfx_script_texture_sample1d_curve();
  v30 = (v29 * 0.11) + 0.0;
  vfx_script_texture_sample1d_curve();
  v32 = (v31 * 1.3) + 0.0;
  v33 = vdiv_f32(vdup_lane_s32(*&a8, 1), *&a8).u32[0];
  if (fabsf(*&a8) > 0.00000011921)
  {
    v34 = *&v33;
  }

  else
  {
    v34 = 0.0;
  }

  v35 = a7 + a7;
  xa = COERCE_UNSIGNED_INT(((v30 + v32) * a6) * 0.5);
  v54 = _simd_cos_f4(xa);
  v36 = _simd_sin_f4(xa);
  v37 = vextq_s8(v54, v54, 4uLL);
  v38 = vmulq_f32(vzip1q_s32(vrev64q_s32(v54), v54), vextq_s8(vzip1q_s32(v37, v36), v37, 8uLL));
  v39 = vzip2q_s32(vzip1q_s32(v54, v36), v36);
  v39.f32[3] = -v36.f32[0];
  v40 = vextq_s8(v36, v36, 8uLL);
  v41 = vtrn1q_s32(v36, vextq_s8(v54, v54, 8uLL));
  v36.i32[3] = v36.i32[1];
  v42 = vtrn1q_s32(v40, v54);
  v42.f32[1] = -v54.f32[0];
  v43 = vmlaq_f32(vrev64q_s32(vmulq_f32(vmulq_f32(v36, v39), v42)), v41, v38);
  v55 = v43;
  v59 = (v56 + v28) * a5;
  v43.f32[0] = (1.0 - a17) * (v35 * v34);
  v57 = *v43.f32;
  vfx_script_clock_delta_time();
  v45 = v44 + a4;
  if (a15)
  {
    v46 = v45;
  }

  else
  {
    v46 = 0.0;
  }

  vfx_script_clock_delta_time();
  v48 = v47 + a2;
  if (!a16)
  {
    v48 = 0.0;
  }

  *a19 = v55;
  *a20 = vdupq_lane_s32(v57, 0);
  *a21 = v46;
  *a22 = v48;
  v49 = v60;
  *(&v49 + 2) = v59;
  *a18 = v49;
  result.n128_u64[0] = v49;
  result.n128_u32[2] = DWORD2(v49);
  return result;
}

__n128 __vfx_script_T2PVFXW_graph_A4BE83C2_0980_49BA_9997_C804AF8E4EF6()
{
  arguments_buffer = vfx_script_get_arguments_buffer();
  v1 = *(arguments_buffer + 136);
  v2 = *(arguments_buffer + 144);
  v46 = *(arguments_buffer + 152);
  v3 = *(arguments_buffer + 160);
  v4 = *(arguments_buffer + 168);
  v5 = **(arguments_buffer + 32);
  v6 = **(arguments_buffer + 56);
  v43 = **(arguments_buffer + 64);
  v7 = **(arguments_buffer + 88);
  LODWORD(v37) = **(arguments_buffer + 96);
  x = **(arguments_buffer + 104);
  v41 = **(arguments_buffer + 112);
  v8 = **(arguments_buffer + 120);
  v9 = **(arguments_buffer + 128);
  v45 = *v1;
  vfx_script_texture_sample1d_curve();
  v40 = v10 + 0.0;
  vfx_script_texture_sample1d_curve();
  v12 = v11 + 0.0;
  vfx_script_texture_sample1d_curve();
  v14 = (v13 * 0.11) + 0.0;
  vfx_script_texture_sample1d_curve();
  v16 = (v15 * 1.3) + 0.0;
  v17 = vdiv_f32(vdup_lane_s32(x, 1), x).u32[0];
  if (fabsf(x.f32[0]) > 0.00000011921)
  {
    v18 = *&v17;
  }

  else
  {
    v18 = 0.0;
  }

  v19 = v37 + v37;
  xa = COERCE_UNSIGNED_INT((v7 * (v14 + v16)) * 0.5);
  v38 = _simd_cos_f4(xa);
  v20 = _simd_sin_f4(xa);
  v21 = vextq_s8(v38, v38, 4uLL);
  v22 = vmulq_f32(vzip1q_s32(vrev64q_s32(v38), v38), vextq_s8(vzip1q_s32(v21, v20), v21, 8uLL));
  v23 = vzip2q_s32(vzip1q_s32(v38, v20), v20);
  v23.f32[3] = -v20.f32[0];
  v24 = vextq_s8(v20, v20, 8uLL);
  v25 = vtrn1q_s32(v20, vextq_s8(v38, v38, 8uLL));
  v20.i32[3] = v20.i32[1];
  v26 = vtrn1q_s32(v24, v38);
  v26.f32[1] = -v38.f32[0];
  v27 = vmlaq_f32(vrev64q_s32(vmulq_f32(vmulq_f32(v20, v23), v26)), v25, v22);
  v39 = v27;
  v44 = v43 * (v40 + v12);
  v27.f32[0] = (1.0 - v41) * (v19 * v18);
  v42 = *v27.f32;
  vfx_script_clock_delta_time();
  v29 = v6 + v28;
  if (v8)
  {
    v30 = v29;
  }

  else
  {
    v30 = 0.0;
  }

  vfx_script_clock_delta_time();
  v32 = v5 + v31;
  if (!v9)
  {
    v32 = 0.0;
  }

  *v2 = v39;
  *v46 = vdupq_lane_s32(v42, 0);
  *v3 = v30;
  *v4 = v32;
  v33 = v45;
  *(&v33 + 2) = v44;
  *v1 = v33;
  result.n128_u64[0] = v33;
  result.n128_u32[2] = DWORD2(v33);
  return result;
}

void sub_1BDD3C41C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDD3D0A0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 88));
  objc_destroyWeak((v2 - 112));
  _Unwind_Resume(a1);
}

void sub_1BDD3D67C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak(v21);
  objc_destroyWeak(&location);
  _Block_object_dispose((v22 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_1BDD3E2F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, id location)
{
  objc_destroyWeak((v30 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t PKPeerPaymentBubbleViewStateForPeerPaymentStatus(uint64_t a1)
{
  if ((a1 + 1) > 8)
  {
    return 0;
  }

  else
  {
    return qword_1BE115DA0[a1 + 1];
  }
}

void sub_1BDD452D0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 72));
  _Unwind_Resume(a1);
}

void sub_1BDD487C4(_Unwind_Exception *a1)
{
  objc_destroyWeak(v1);
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_1BDD495C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak(&a14);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDD4A2E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

Class initCKTranscriptPluginBalloonView_0()
{
  if (qword_1EBD68388 != -1)
  {
    dispatch_once(&qword_1EBD68388, &__block_literal_global_160);
  }

  result = objc_getClass("CKTranscriptPluginBalloonView");
  _MergedGlobals_1_8 = result;
  getCKTranscriptPluginBalloonViewClass = CKTranscriptPluginBalloonViewFunction_0;
  return result;
}

void *__LoadChatKit_block_invoke_0()
{
  result = dlopen("/System/Library/PrivateFrameworks/ChatKit.framework/ChatKit", 2);
  LoadChatKit_frameworkLibrary_0 = result;
  return result;
}

Class initCKUIBehavior_0()
{
  if (qword_1EBD68388 != -1)
  {
    dispatch_once(&qword_1EBD68388, &__block_literal_global_160);
  }

  result = objc_getClass("CKUIBehavior");
  qword_1EBD68390 = result;
  getCKUIBehaviorClass = CKUIBehaviorFunction_0;
  return result;
}

void sub_1BDD4DA88(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDD4DE0C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 56));
  objc_destroyWeak((v2 - 72));
  _Unwind_Resume(a1);
}

void sub_1BDD4E5F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDD4F2E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location, char a19)
{
  objc_destroyWeak((v19 + 56));
  objc_destroyWeak(&location);
  _Block_object_dispose(&a19, 8);
  _Unwind_Resume(a1);
}

void sub_1BDD51604(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak((v17 - 112));
  _Unwind_Resume(a1);
}

void sub_1BDD51E0C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDD55FF4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDD56EE4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDD59514(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39)
{
  _Block_object_dispose(&a39, 8);
  _Block_object_dispose((v39 - 192), 8);
  _Block_object_dispose((v39 - 144), 8);
  _Unwind_Resume(a1);
}

void sub_1BDD59EE0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 72));
  _Unwind_Resume(a1);
}

void sub_1BDD5C6F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{
  _Block_object_dispose(&a26, 8);
  _Block_object_dispose((v26 - 120), 8);
  _Unwind_Resume(a1);
}

void sub_1BDD5D1E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v19 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDD5D3D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDD5DFD8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v3 + 56));
  objc_destroyWeak((v2 + 48));
  objc_destroyWeak((v1 + 40));
  _Block_object_dispose((v4 - 136), 8);
  objc_destroyWeak((v4 - 104));
  _Unwind_Resume(a1);
}

void sub_1BDD600CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v19 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDD608A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDD61B28(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDD61ED8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

BOOL LocationIsValid(void *a1)
{
  if (!a1)
  {
    return 0;
  }

  v1 = a1;
  v2 = [v1 timestamp];
  v3 = [MEMORY[0x1E695DF00] now];
  [v3 timeIntervalSinceDate:v2];
  v5 = v4;

  [v1 horizontalAccuracy];
  v7 = v6;

  v8 = v7 < 3000.0;
  if (v5 >= 60.0)
  {
    v8 = 0;
  }

  v9 = v7 > 0.0 && v8;

  return v9;
}

void sub_1BDD62738(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 80));
  objc_destroyWeak((v2 - 248));
  _Unwind_Resume(a1);
}

void sub_1BDD63B44(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1BDD6403C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, char a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, char a55)
{
  objc_destroyWeak((v55 + 72));
  _Block_object_dispose(&a49, 8);
  _Block_object_dispose(&a55, 8);
  _Unwind_Resume(a1);
}

void sub_1BDD64EBC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, id location)
{
  objc_destroyWeak((v44 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDD68768(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDD69FE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1BDD6C210(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id location)
{
  objc_destroyWeak((v23 + 32));
  objc_destroyWeak((v22 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDD6C524(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDD6CA0C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1BDD6CE90(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDD726CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDD72B04(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 40));
  _Unwind_Resume(a1);
}

Class initFACircleContext()
{
  if (qword_1EBDAAA58 != -1)
  {
    dispatch_once(&qword_1EBDAAA58, &__block_literal_global_451);
  }

  result = objc_getClass("FACircleContext");
  qword_1EBDAAA48 = result;
  _MergedGlobals_7_2 = FACircleContextFunction;
  return result;
}

void *__LoadFamilyCircleUI_block_invoke_0()
{
  result = dlopen("/System/Library/PrivateFrameworks/FamilyCircleUI.framework/FamilyCircleUI", 2);
  qword_1EBDAAA50 = result;
  return result;
}

id initFACircleEventTypeInitiate()
{
  if (qword_1EBDAAA58 != -1)
  {
    dispatch_once(&qword_1EBDAAA58, &__block_literal_global_451);
  }

  v0 = dlsym(qword_1EBDAAA50, "FACircleEventTypeInitiate");
  objc_storeStrong(&_MergedGlobals_8_0, *v0);
  off_1EE9A1DE8 = FACircleEventTypeInitiateFunction;
  v1 = _MergedGlobals_8_0;

  return v1;
}

Class initFACircleStateController()
{
  if (qword_1EBDAAA58 != -1)
  {
    dispatch_once(&qword_1EBDAAA58, &__block_literal_global_451);
  }

  result = objc_getClass("FACircleStateController");
  qword_1EBDAAA60 = result;
  off_1EE9A1DF0 = FACircleStateControllerFunction;
  return result;
}

Class initCNAvatarView_7()
{
  if (qword_1EBDAAA70 != -1)
  {
    dispatch_once(&qword_1EBDAAA70, &__block_literal_global_170);
  }

  result = objc_getClass("CNAvatarView");
  _MergedGlobals_2_1 = result;
  _MergedGlobals_1_16 = CNAvatarViewFunction_7;
  return result;
}

Class initCNAvatarCardController_4()
{
  if (qword_1EBDAAA70 != -1)
  {
    dispatch_once(&qword_1EBDAAA70, &__block_literal_global_170);
  }

  result = objc_getClass("CNAvatarCardController");
  qword_1EBDAAA78 = result;
  off_1EE9897A8 = CNAvatarCardControllerFunction_4;
  return result;
}

Class initCNContactViewController_0()
{
  if (qword_1EBDAAA70 != -1)
  {
    dispatch_once(&qword_1EBDAAA70, &__block_literal_global_170);
  }

  result = objc_getClass("CNContactViewController");
  qword_1EBDAAA80 = result;
  off_1EE9897B0 = CNContactViewControllerFunction_0;
  return result;
}

void sub_1BDD7C83C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDD7CE68(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDD7E9D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDD7F3AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDD81488(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 160));
  _Unwind_Resume(a1);
}

void sub_1BDD82E0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1BDD83F8C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 136));
  _Unwind_Resume(a1);
}

void sub_1BDD8559C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 160));
  _Unwind_Resume(a1);
}

void sub_1BDD85E30(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDD86874(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1BDD86DCC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1BDD87154(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1BDD87C8C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDD88B80(_Unwind_Exception *a1)
{
  objc_destroyWeak(v1);
  objc_destroyWeak((v2 - 112));
  _Unwind_Resume(a1);
}

void sub_1BDD8978C(_Unwind_Exception *a1)
{
  objc_destroyWeak(v1);
  objc_destroyWeak((v2 - 64));
  _Unwind_Resume(a1);
}

void sub_1BDD8A0D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v20 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDD8A6E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v20 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDD8AF18(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, id location)
{
  objc_destroyWeak((v26 + 48));
  objc_destroyWeak((v27 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDD8B324(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDD8BE74(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_1BDD8C684(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1BDD8CAC0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDD8CE68(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 + 48));
  objc_destroyWeak((v3 - 72));
  _Unwind_Resume(a1);
}

void sub_1BDD8D5AC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1BDD8DB00(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDD8F6E8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak(&STACK[0x288]);
  _Block_object_dispose(&STACK[0x320], 8);
  _Block_object_dispose(&STACK[0x350], 8);
  _Block_object_dispose(&STACK[0x380], 8);
  _Block_object_dispose(&STACK[0x3B0], 8);
  _Block_object_dispose(&STACK[0x3E0], 8);
  _Block_object_dispose(&STACK[0x558], 8);
  _Block_object_dispose(&STACK[0x630], 8);
  _Block_object_dispose(&STACK[0x660], 8);
  _Block_object_dispose(&STACK[0x690], 8);
  _Block_object_dispose(&STACK[0x6C0], 8);
  _Block_object_dispose(&STACK[0x6F0], 8);
  _Block_object_dispose(&STACK[0x720], 8);
  _Block_object_dispose(&STACK[0x750], 8);
  _Block_object_dispose(&STACK[0x780], 8);
  _Block_object_dispose(&STACK[0x7B0], 8);
  _Block_object_dispose(&STACK[0x7E0], 8);
  _Block_object_dispose(&STACK[0x810], 8);
  _Block_object_dispose(&STACK[0x840], 8);
  _Block_object_dispose(&STACK[0x870], 8);
  _Block_object_dispose(&STACK[0x8A0], 8);
  _Block_object_dispose(&STACK[0x8D0], 8);
  _Block_object_dispose(&STACK[0x900], 8);
  _Block_object_dispose((v2 - 256), 8);
  _Block_object_dispose((v2 - 176), 8);
  _Unwind_Resume(a1);
}

void sub_1BDD90B64(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 72));
  _Unwind_Resume(a1);
}

void sub_1BDD9274C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_1BDD92D58(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDD931A0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_1BDD938DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, id a34)
{
  objc_destroyWeak((v34 + 48));
  objc_destroyWeak(&a34);
  _Unwind_Resume(a1);
}

void sub_1BDD93EA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose((v27 - 144), 8);
  _Unwind_Resume(a1);
}

void sub_1BDD96788(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDD96A74(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDD96CE8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  _Unwind_Resume(a1);
}

void sub_1BDD97690(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, id location)
{
  objc_destroyWeak((v38 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDD97D60(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDD98238(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21)
{
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak(&location);
  _Block_object_dispose(&a21, 8);
  _Unwind_Resume(a1);
}

void sub_1BDD98528(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDD98F9C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_1BDD999D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, id location)
{
  objc_destroyWeak((v35 + 64));
  objc_destroyWeak((v36 + 56));
  objc_destroyWeak(&a34);
  objc_destroyWeak(&location);
  _Block_object_dispose((v37 - 200), 8);
  _Block_object_dispose((v37 - 152), 8);
  _Unwind_Resume(a1);
}

void sub_1BDD9A5C0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 56));
  objc_destroyWeak((v1 + 40));
  _Unwind_Resume(a1);
}

void sub_1BDD9A8B0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_1BDD9ACD0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  objc_destroyWeak((v15 + 32));
  _Unwind_Resume(a1);
}

void sub_1BDD9B4D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, id *location)
{
  objc_destroyWeak(v11);
  objc_destroyWeak(location);
  objc_destroyWeak((v12 - 112));
  _Unwind_Resume(a1);
}

void sub_1BDD9D37C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 256));
  _Unwind_Resume(a1);
}

void sub_1BDD9E2D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDD9EA58(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, id location)
{
  objc_destroyWeak(&a37);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDD9EDC4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 56));
  objc_destroyWeak((v1 + 40));
  _Unwind_Resume(a1);
}

void sub_1BDD9F608(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDD9FD7C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak((v19 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDDA0264(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_1BDDA0D9C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, id location)
{
  objc_destroyWeak((v36 + 48));
  objc_destroyWeak((v37 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDDA148C(_Unwind_Exception *a1)
{
  objc_destroyWeak(v1);
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1BDDA18AC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 56));
  _Unwind_Resume(a1);
}

void sub_1BDDA30B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, id location, char a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, char a43)
{
  objc_destroyWeak((v44 + 48));
  objc_destroyWeak((v43 + 40));
  objc_destroyWeak(&location);
  _Block_object_dispose(&a37, 8);
  _Block_object_dispose(&a43, 8);
  _Unwind_Resume(a1);
}

void sub_1BDDA4074(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDDA43E4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 56));
  _Unwind_Resume(a1);
}

void sub_1BDDA4918(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak((v19 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDDA4D48(_Unwind_Exception *a1)
{
  objc_destroyWeak((v3 + 48));
  objc_destroyWeak((v2 + 40));
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v4 - 88));
  _Unwind_Resume(a1);
}

void sub_1BDDA506C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 56));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 88));
  _Unwind_Resume(a1);
}

void sub_1BDDA6180(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id location)
{
  objc_destroyWeak((v25 + 48));
  objc_destroyWeak((v24 + 32));
  objc_destroyWeak(&location);
  _Block_object_dispose((v26 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_1BDDA65A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDDA6AD4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDDA70DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDDA74BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, id a28)
{
  objc_destroyWeak((v28 + 48));
  objc_destroyWeak(&a28);
  objc_destroyWeak((v29 - 112));
  _Unwind_Resume(a1);
}

void sub_1BDDA783C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDDA8754(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, id location)
{
  objc_destroyWeak((v40 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDDA8B24(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDDA8DA0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 56));
  _Unwind_Resume(a1);
}

void sub_1BDDA9A60(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 32));
  _Unwind_Resume(a1);
}

void sub_1BDDAA3B0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1BDDAAB00(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, id location)
{
  objc_destroyWeak((v38 + 56));
  objc_destroyWeak(&location);
  _Block_object_dispose((v39 - 224), 8);
  _Block_object_dispose((v39 - 176), 8);
  _Block_object_dispose((v39 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_1BDDABA28(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 56));
  _Unwind_Resume(a1);
}

void sub_1BDDAC020(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 48));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1BDDACD7C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 48));
  objc_destroyWeak((v1 + 32));
  _Unwind_Resume(a1);
}

void sub_1BDDAE3A4(_Unwind_Exception *a1)
{
  objc_destroyWeak(v1);
  objc_destroyWeak((v2 - 72));
  _Unwind_Resume(a1);
}

void sub_1BDDAE8AC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 72));
  _Unwind_Resume(a1);
}

void sub_1BDDAF4B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak((v20 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDDB0FE0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDDB1494(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  objc_destroyWeak((v8 + 48));
  _Block_object_dispose(va, 8);
  objc_destroyWeak((v9 - 40));
  _Unwind_Resume(a1);
}

void sub_1BDDB224C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, id location)
{
  objc_destroyWeak((v60 + 40));
  objc_destroyWeak((v61 + 80));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDDB27E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDDB3018(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 - 192));
  objc_destroyWeak((v1 - 184));
  _Unwind_Resume(a1);
}

void sub_1BDDB3B2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30)
{
  _Block_object_dispose(&a30, 8);
  objc_destroyWeak((v30 - 256));
  _Unwind_Resume(a1);
}

void sub_1BDDB4494(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, id a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, id a50)
{
  objc_destroyWeak((v50 + 72));
  objc_destroyWeak(&a44);
  objc_destroyWeak(&a50);
  _Unwind_Resume(a1);
}

void sub_1BDDB4CFC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id location, char a23)
{
  objc_destroyWeak((v24 + 40));
  objc_destroyWeak((v23 + 48));
  objc_destroyWeak(&location);
  _Block_object_dispose(&a23, 8);
  _Unwind_Resume(a1);
}

Class initFHSearchSuggestionController_0()
{
  if (qword_1EBDAAAC8 != -1)
  {
    dispatch_once(&qword_1EBDAAAC8, &__block_literal_global_3201);
  }

  result = objc_getClass("FHSearchSuggestionController");
  qword_1EBDAAAC0 = result;
  getFHSearchSuggestionControllerClass_0 = FHSearchSuggestionControllerFunction_0;
  return result;
}

void *__LoadFinHealth_block_invoke_0()
{
  result = dlopen("/System/Library/PrivateFrameworks/FinHealth.framework/FinHealth", 2);
  LoadFinHealth_frameworkLibrary_0 = result;
  return result;
}

Class initFKBankConnectImageProvider_0()
{
  if (qword_1EBDAAAD8 != -1)
  {
    dispatch_once(&qword_1EBDAAAD8, &__block_literal_global_3205);
  }

  result = objc_getClass("FKBankConnectImageProvider");
  qword_1EBDAAAD0 = result;
  getFKBankConnectImageProviderClass_0 = FKBankConnectImageProviderFunction_0;
  return result;
}

void *__LoadFinanceKitUI_block_invoke_3()
{
  result = dlopen("/System/Library/PrivateFrameworks/FinanceKitUI.framework/FinanceKitUI", 2);
  LoadFinanceKitUI_frameworkLibrary_3 = result;
  return result;
}

Class initCNAvatarView_8()
{
  if (qword_1EBDAAAE8 != -1)
  {
    dispatch_once(&qword_1EBDAAAE8, &__block_literal_global_3260);
  }

  result = objc_getClass("CNAvatarView");
  qword_1EBDAAAE0 = result;
  _MergedGlobals_622 = CNAvatarViewFunction_8;
  return result;
}

Class initCNAvatarCardController_5()
{
  if (qword_1EBDAAAE8 != -1)
  {
    dispatch_once(&qword_1EBDAAAE8, &__block_literal_global_3260);
  }

  result = objc_getClass("CNAvatarCardController");
  qword_1EBDAAAF0 = result;
  off_1EE98A6B0 = CNAvatarCardControllerFunction_5;
  return result;
}

Class initCNContactViewController_1()
{
  if (qword_1EBDAAAE8 != -1)
  {
    dispatch_once(&qword_1EBDAAAE8, &__block_literal_global_3260);
  }

  result = objc_getClass("CNContactViewController");
  qword_1EBDAAAF8 = result;
  off_1EE98A6B8 = CNContactViewControllerFunction_1;
  return result;
}

id initFHInstrumentationRecordKeyTagType_0()
{
  if (qword_1EBDAAB08 != -1)
  {
    dispatch_once(&qword_1EBDAAB08, &__block_literal_global_3266);
  }

  v0 = dlsym(qword_1EBDAAB00, "FHInstrumentationRecordKeyTagType");
  objc_storeStrong(&qword_1EBDAAAA8, *v0);
  off_1EE98A6C0 = FHInstrumentationRecordKeyTagTypeFunction_0;
  v1 = qword_1EBDAAAA8;

  return v1;
}

void *__LoadFinHealthCore_block_invoke_0()
{
  result = dlopen("/System/Library/PrivateFrameworks/FinHealthCore.framework/FinHealthCore", 2);
  qword_1EBDAAB00 = result;
  return result;
}

id initFHInstrumentationRecordKeyPassType_0()
{
  if (qword_1EBDAAB08 != -1)
  {
    dispatch_once(&qword_1EBDAAB08, &__block_literal_global_3266);
  }

  v0 = dlsym(qword_1EBDAAB00, "FHInstrumentationRecordKeyPassType");
  objc_storeStrong(&qword_1EBDAAAB0, *v0);
  off_1EE98A6C8 = FHInstrumentationRecordKeyPassTypeFunction_0;
  v1 = qword_1EBDAAAB0;

  return v1;
}

id initFHInstrumentationRecordKeySource_0()
{
  if (qword_1EBDAAB08 != -1)
  {
    dispatch_once(&qword_1EBDAAB08, &__block_literal_global_3266);
  }

  v0 = dlsym(qword_1EBDAAB00, "FHInstrumentationRecordKeySource");
  objc_storeStrong(&_MergedGlobals_18, *v0);
  off_1EE98A6D0 = FHInstrumentationRecordKeySourceFunction_0;
  v1 = _MergedGlobals_18;

  return v1;
}

id initFHInstrumentationRecordKeyHeuristicId()
{
  if (qword_1EBDAAB08 != -1)
  {
    dispatch_once(&qword_1EBDAAB08, &__block_literal_global_3266);
  }

  v0 = dlsym(qword_1EBDAAB00, "FHInstrumentationRecordKeyHeuristicId");
  objc_storeStrong(&qword_1EBDAAAB8, *v0);
  off_1EE98A6D8 = FHInstrumentationRecordKeyHeuristicIdFunction;
  v1 = qword_1EBDAAAB8;

  return v1;
}

Class initCNComposeRecipient()
{
  if (qword_1EBDAAB18 != -1)
  {
    dispatch_once(&qword_1EBDAAB18, &__block_literal_global_3273);
  }

  result = objc_getClass("CNComposeRecipient");
  qword_1EBDAAB10 = result;
  getCNComposeRecipientClass = CNComposeRecipientFunction;
  return result;
}

void *__LoadContactsAutocompleteUI_block_invoke()
{
  result = dlopen("/System/Library/Frameworks/ContactsAutocompleteUI.framework/ContactsAutocompleteUI", 2);
  LoadContactsAutocompleteUI_frameworkLibrary = result;
  return result;
}

void sub_1BDDB6A8C(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 224), 8);
  _Block_object_dispose((v1 - 176), 8);
  _Block_object_dispose((v1 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_1BDDB7A4C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDDB8964(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDDB8C40(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_1BDDB91B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDDB94D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDDB9D64(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDDBA578(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDDBAE30(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDDBBD84(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDDBBF38(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1BDDBC0E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDDBC2AC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

id _SnapshotCacheQueue()
{
  if (qword_1EBD6AD30 != -1)
  {
    dispatch_once(&qword_1EBD6AD30, &__block_literal_global_121_0);
  }

  v1 = qword_1EBD6AD28;

  return v1;
}

id _SnapshotCompletionsByCacheKey()
{
  if (qword_1EBD6AD20 != -1)
  {
    dispatch_once(&qword_1EBD6AD20, &__block_literal_global_119_0);
  }

  v1 = qword_1EBD6AD18;

  return v1;
}

id _CacheKey(void *a1, void *a2, uint64_t a3, CGFloat a4, CGFloat a5)
{
  v9 = MEMORY[0x1E696AEC0];
  v10 = a1;
  v11 = [a2 hexEncoding];
  v12 = [v9 stringWithFormat:@"%@:%@:%tx", v10, v11, a3];

  if (a4 != *MEMORY[0x1E695F060] || a5 != *(MEMORY[0x1E695F060] + 8))
  {
    v18.width = a4;
    v18.height = a5;
    v14 = NSStringFromCGSize(v18);
    v15 = [v12 stringByAppendingFormat:@"-%@", v14];

    v12 = v15;
  }

  return v12;
}

id _SnapshotCache()
{
  if (qword_1EBD6AD10 != -1)
  {
    dispatch_once(&qword_1EBD6AD10, &__block_literal_global_116);
  }

  v1 = qword_1EBD6AD08;

  return v1;
}

void sub_1BDDC2734(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1BDDC2F04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1BDDC40A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDDC4400(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDDC473C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 + 48));
  objc_destroyWeak((v3 - 72));
  _Unwind_Resume(a1);
}

void sub_1BDDC54E8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 + 48));
  objc_destroyWeak((v3 - 88));
  _Unwind_Resume(a1);
}

void sub_1BDDC5B2C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDDC6078(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDDC6490(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDDC68C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDDC70C4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_1BDDC7B2C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 72));
  _Unwind_Resume(a1);
}

void sub_1BDDC7C9C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 40));
  objc_destroyWeak((v1 + 40));
  _Unwind_Resume(a1);
}

void sub_1BDDC86A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, char a40)
{
  _Block_object_dispose(&a35, 8);
  _Block_object_dispose(&a40, 8);
  _Unwind_Resume(a1);
}

void sub_1BDDC9338(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 72));
  _Unwind_Resume(a1);
}

void sub_1BDDCA644(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDDCAA30(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, id location)
{
  objc_destroyWeak((v23 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDDCBA24(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t ___groupForSectionIdentifier_block_invoke_0(uint64_t a1, void *a2)
{
  v3 = [a2 metadata];
  v4 = [v3 identifier];

  v5 = *(a1 + 32);
  v6 = v4;
  v7 = v5;
  v8 = v7;
  if (v6 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = 0;
    if (v6 && v7)
    {
      v9 = [v6 isEqualToString:v7];
    }
  }

  return v9;
}

void sub_1BDDCD2FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, id location)
{
  objc_destroyWeak(&a25);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDDCD634(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDDCF488(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __PKEditPassesResizedPlaceholderImage_block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 CGContext];
  CGContextScaleCTM(v3, *(a1 + 40), *(a1 + 40));
  CGContextSetInterpolationQuality(v3, kCGInterpolationHigh);
  v4 = *(a1 + 32);
  v5 = *MEMORY[0x1E695EFF8];
  v6 = *(MEMORY[0x1E695EFF8] + 8);
  v7 = *(a1 + 48);
  v8 = *(a1 + 56);

  return [v4 drawInRect:v3 inContext:{v5, v6, v7, v8}];
}

uint64_t __PKEditPassesResizedPlaceholderImage_block_invoke_2(double *a1, void *a2)
{
  CGContextSetInterpolationQuality([a2 CGContext], kCGInterpolationHigh);
  v3 = *(a1 + 4);
  v4 = *MEMORY[0x1E695EFF8];
  v5 = *(MEMORY[0x1E695EFF8] + 8);
  v6 = a1[5];
  v7 = a1[6];

  return [v3 drawInRect:{v4, v5, v6, v7}];
}

void sub_1BDDD22FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDDD2E00(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDDD365C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1BDDD39CC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1BDDD4DCC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_1BDDD5578(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDDD5D7C(_Unwind_Exception *a1)
{
  objc_destroyWeak(v1);
  objc_destroyWeak((v2 + 48));
  objc_destroyWeak((v3 - 120));
  _Block_object_dispose((v3 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_1BDDD7160(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDDD7544(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1BDDD85C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDDD8E34(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDDD92DC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1BDDD9D74(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void *PKAlertCreateAccesibilityIntentUnavailable(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = v4;
  v6 = 0;
  if (v3 && v4)
  {
    v7 = _AXSAccessibilitySecureIntentProvider();
    v8 = MEMORY[0x1E69DC648];
    v9 = PKLocalizedPearlString(&cfstr_AccessibilityP_1.isa);
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = ___Z42PKAlertCreateAccesibilityIntentUnavailableU13block_pointerFvvEU13block_pointerFvP5NSURLE_block_invoke;
    v25[3] = &unk_1E8011248;
    v26 = v3;
    v10 = [v8 actionWithTitle:v9 style:0 handler:v25];

    if (v7 == 2)
    {
      v11 = @"prefs:root=ACCESSIBILITY&path=ScannerSwitchTitle";
    }

    else
    {
      v11 = @"prefs:root=ACCESSIBILITY&path=TOUCH_REACHABILITY_TITLE/AIR_TOUCH_TITLE";
    }

    if (v7 == 2)
    {
      v12 = @"ACCESSIBILITY_PUSH_BUTTON_UNAVAILABLE_SWITCH_CONTROL_TITLE";
    }

    else
    {
      v12 = @"ACCESSIBILITY_PUSH_BUTTON_UNAVAILABLE_ASSISTIVE_TOUCH_TITLE";
    }

    if (v7 == 2)
    {
      v13 = @"ACCESSIBILITY_PUSH_BUTTON_UNAVAILABLE_SWITCH_CONTROL_MESSAGE";
    }

    else
    {
      v13 = @"ACCESSIBILITY_PUSH_BUTTON_UNAVAILABLE_ASSISTIVE_TOUCH_MESSAGE";
    }

    v14 = [MEMORY[0x1E695DFF8] URLWithString:v11];
    v15 = MEMORY[0x1E69DC648];
    v16 = PKLocalizedPearlString(&cfstr_AccessibilityP_2.isa);
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = ___Z42PKAlertCreateAccesibilityIntentUnavailableU13block_pointerFvvEU13block_pointerFvP5NSURLE_block_invoke_2;
    v22[3] = &unk_1E80164A8;
    v23 = v14;
    v24 = v5;
    v17 = v14;
    v18 = [v15 actionWithTitle:v16 style:0 handler:v22];

    v19 = PKLocalizedPearlString(&v12->isa);
    v20 = PKLocalizedPearlString(&v13->isa);
    v6 = [MEMORY[0x1E69DC650] alertControllerWithTitle:v19 message:v20 preferredStyle:1];
    [v6 addAction:v10];
    [v6 addAction:v18];
    [v6 setPreferredAction:v18];
  }

  return v6;
}

id PKCreateAlertControllerForPeerPaymentIdentityVerificationNotSupported(void *a1)
{
  v1 = a1;
  v2 = MEMORY[0x1E69DC650];
  v3 = PKLocalizedPeerPaymentString(&cfstr_IdentityVerifi_5.isa);
  v4 = PKLocalizedPeerPaymentString(&cfstr_IdentityVerifi_49.isa);
  v5 = [v2 alertControllerWithTitle:v3 message:v4 preferredStyle:1];

  v6 = MEMORY[0x1E69DC648];
  v7 = PKLocalizedString(&cfstr_OkButtonTitle.isa);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __PKCreateAlertControllerForPeerPaymentIdentityVerificationNotSupported_block_invoke;
  v11[3] = &unk_1E8011248;
  v12 = v1;
  v8 = v1;
  v9 = [v6 actionWithTitle:v7 style:0 handler:v11];

  [v5 addAction:v9];

  return v5;
}

uint64_t __PKCreateAlertControllerForPeerPaymentIdentityVerificationNotSupported_block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void *PKCreateAlertControllerForNFCRadioDisabled()
{
  v0 = PKLocalizedString(&cfstr_NfcRadioDisabl.isa);
  v1 = PKLocalizedString(&cfstr_NfcRadioDisabl_0.isa);
  v2 = [MEMORY[0x1E69DC650] alertControllerWithTitle:v0 message:v1 preferredStyle:1];
  v3 = PKLocalizedString(&cfstr_NfcRadioDisabl_1.isa);
  v4 = [MEMORY[0x1E69DC648] actionWithTitle:v3 style:1 handler:0];
  [v2 addAction:v4];
  v5 = PKLocalizedString(&cfstr_NfcRadioDisabl_2.isa);
  v6 = [MEMORY[0x1E69DC648] actionWithTitle:v5 style:0 handler:&__block_literal_global_183];
  [v2 addAction:v6];
  [v2 setPreferredAction:v6];

  return v2;
}

void __PKCreateAlertControllerForNFCRadioDisabled_block_invoke()
{
  v4[1] = *MEMORY[0x1E69E9840];
  v0 = [MEMORY[0x1E695DFF8] URLWithString:@"prefs:root=General&path=NFC_LINK"];
  v1 = objc_alloc_init(MEMORY[0x1E69636B8]);
  [v1 setSensitive:1];
  v3 = *MEMORY[0x1E699F970];
  v4[0] = MEMORY[0x1E695E118];
  v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v4 forKeys:&v3 count:1];
  [v1 setFrontBoardOptions:v2];

  PKOpenApplication(v0, v1);
}

void *PKCreateAlertControllerForWalletUninstalled(void *a1)
{
  v1 = a1;
  v2 = MEMORY[0x1E69DC650];
  v3 = PKLocalizedDeletableString(&cfstr_WalletUninstal.isa);
  v4 = PKLocalizedDeletableString(&cfstr_WalletUninstal_0.isa);
  v5 = [v2 alertControllerWithTitle:v3 message:v4 preferredStyle:1];

  v6 = MEMORY[0x1E69DC648];
  v7 = PKLocalizedDeletableString(&cfstr_WalletUninstal_1.isa);
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __PKCreateAlertControllerForWalletUninstalled_block_invoke;
  v20[3] = &unk_1E8011248;
  v8 = v1;
  v21 = v8;
  v9 = [v6 actionWithTitle:v7 style:1 handler:v20];

  [v5 addAction:v9];
  v10 = MEMORY[0x1E69DC648];
  v11 = PKLocalizedDeletableString(&cfstr_WalletUninstal_2.isa);
  v15 = MEMORY[0x1E69E9820];
  v16 = 3221225472;
  v17 = __PKCreateAlertControllerForWalletUninstalled_block_invoke_2;
  v18 = &unk_1E8011248;
  v19 = v8;
  v12 = v8;
  v13 = [v10 actionWithTitle:v11 style:0 handler:&v15];

  [v5 addAction:{v13, v15, v16, v17, v18}];
  [v5 setPreferredAction:v13];

  return v5;
}

uint64_t __PKCreateAlertControllerForWalletUninstalled_block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

uint64_t __PKCreateAlertControllerForWalletUninstalled_block_invoke_2(uint64_t a1)
{
  PKOpenInstallWallet();
  result = *(a1 + 32);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

void *PKCreateAlertCardBenefitPayLaterEnablement()
{
  v0 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *v12 = 0;
    _os_log_impl(&dword_1BD026000, v0, OS_LOG_TYPE_DEFAULT, "The user wants to hide card benefit pay later in settings. Showing alert To turn it on", v12, 2u);
  }

  v1 = MEMORY[0x1E69DC650];
  v2 = PKLocalizedPaymentOffersString(&cfstr_TurnOnCardBene.isa);
  v3 = PKLocalizedPaymentOffersString(&cfstr_TurnOnCardBene_0.isa);
  v4 = [v1 alertControllerWithTitle:v2 message:v3 preferredStyle:1];

  v5 = MEMORY[0x1E69DC648];
  v6 = PKLocalizedPaymentOffersString(&cfstr_TurnOnCardBene_1.isa);
  v7 = [v5 actionWithTitle:v6 style:0 handler:&__block_literal_global_88];

  v8 = MEMORY[0x1E69DC648];
  v9 = PKLocalizedPaymentOffersString(&cfstr_TurnOnCardBene_2.isa);
  v10 = [v8 actionWithTitle:v9 style:1 handler:0];

  [v4 addAction:v7];
  [v4 addAction:v10];
  [v4 setPreferredAction:v7];

  return v4;
}

void __PKCreateAlertCardBenefitPayLaterEnablement_block_invoke()
{
  v1 = [MEMORY[0x1E695DFF8] URLWithString:@"prefs:root=PASSBOOK&path=applePayDefaults"];
  v0 = [MEMORY[0x1E6963608] defaultWorkspace];
  [v0 openSensitiveURL:v1 withOptions:0];
}

void *PKCreateAlertControllerForTransactionServiceDisabledConfirmation(void *a1)
{
  v1 = a1;
  v2 = MEMORY[0x1E69DC650];
  v3 = PKLocalizedPaymentOffersString(&cfstr_PaymentOfferDi.isa);
  v4 = [v2 alertControllerWithTitle:v3 message:0 preferredStyle:1];

  v5 = MEMORY[0x1E69DC648];
  v6 = PKLocalizedString(&cfstr_Cancel.isa);
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __PKCreateAlertControllerForTransactionServiceDisabledConfirmation_block_invoke;
  v19[3] = &unk_1E8011248;
  v7 = v1;
  v20 = v7;
  v8 = [v5 actionWithTitle:v6 style:1 handler:v19];

  [v4 addAction:v8];
  v9 = MEMORY[0x1E69DC648];
  v10 = PKLocalizedPaymentOffersString(&cfstr_PaymentOfferDi_0.isa);
  v14 = MEMORY[0x1E69E9820];
  v15 = 3221225472;
  v16 = __PKCreateAlertControllerForTransactionServiceDisabledConfirmation_block_invoke_2;
  v17 = &unk_1E8011248;
  v18 = v7;
  v11 = v7;
  v12 = [v9 actionWithTitle:v10 style:0 handler:&v14];

  [v4 addAction:{v12, v14, v15, v16, v17}];
  [v4 setPreferredAction:v12];

  return v4;
}

void *PKCreateAlertControllerForWatchWalletUninstalled(void *a1)
{
  v1 = a1;
  v2 = MEMORY[0x1E69DC650];
  v3 = PKLocalizedDeletableString(&cfstr_WatchWalletUni.isa);
  v4 = PKLocalizedDeletableString(&cfstr_WatchWalletUni_0.isa);
  v5 = [v2 alertControllerWithTitle:v3 message:v4 preferredStyle:1];

  v6 = MEMORY[0x1E69DC648];
  v7 = PKLocalizedDeletableString(&cfstr_WalletUninstal_1.isa);
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __PKCreateAlertControllerForWatchWalletUninstalled_block_invoke;
  v20[3] = &unk_1E8011248;
  v8 = v1;
  v21 = v8;
  v9 = [v6 actionWithTitle:v7 style:1 handler:v20];

  [v5 addAction:v9];
  v10 = MEMORY[0x1E69DC648];
  v11 = PKLocalizedDeletableString(&cfstr_WatchWalletUni_1.isa);
  v15 = MEMORY[0x1E69E9820];
  v16 = 3221225472;
  v17 = __PKCreateAlertControllerForWatchWalletUninstalled_block_invoke_2;
  v18 = &unk_1E8011248;
  v19 = v8;
  v12 = v8;
  v13 = [v10 actionWithTitle:v11 style:0 handler:&v15];

  [v5 addAction:{v13, v15, v16, v17, v18}];
  [v5 setPreferredAction:v13];

  return v5;
}

uint64_t __PKCreateAlertControllerForWatchWalletUninstalled_block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0, 0);
  }

  return result;
}

id PKCreateAlertControllerForAppleAccountTopUpUnavailable(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = MEMORY[0x1E69DC650];
  v6 = PKLocalizedFeatureString();
  v7 = PKLocalizedFeatureString();
  v8 = [v5 alertControllerWithTitle:v6 message:v7 preferredStyle:1];

  if (v3)
  {
    v9 = MEMORY[0x1E69DC648];
    v10 = PKLocalizedFeatureString();
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __PKCreateAlertControllerForAppleAccountTopUpUnavailable_block_invoke;
    v19[3] = &unk_1E8017AC8;
    v20 = v3;
    v21 = v4;
    v11 = [v9 actionWithTitle:v10 style:0 handler:v19];
  }

  else
  {
    v11 = 0;
  }

  v12 = MEMORY[0x1E69DC648];
  v13 = PKLocalizedFeatureString();
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __PKCreateAlertControllerForAppleAccountTopUpUnavailable_block_invoke_2;
  v17[3] = &unk_1E8011248;
  v18 = v4;
  v14 = v4;
  v15 = [v12 actionWithTitle:v13 style:1 handler:v17];

  if (v11)
  {
    [v8 addAction:v11];
  }

  [v8 addAction:v15];
  [v8 setPreferredAction:v15];

  return v8;
}

uint64_t __PKCreateAlertControllerForAppleAccountTopUpUnavailable_block_invoke(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();
  result = *(a1 + 40);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

uint64_t __PKCreateAlertControllerForAppleAccountTopUpUnavailable_block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

uint64_t PKPaymentAuthorizationControllerForcedInterfaceOrientation()
{
  if (PKUserInterfaceIdiomSupportsLargeLayouts())
  {
    return 0;
  }

  else
  {
    return PKLandscapePaymentSheetEnabled() ^ 1;
  }
}

uint64_t PKPaymentAuthorizationControllerShouldPreventRotation()
{
  result = PKUserInterfaceIdiomSupportsLargeLayouts();
  if (result)
  {
    if (PKUserIntentIsAvailable())
    {
      return 0;
    }

    else
    {
      return PKLandscapePaymentSheetEnabled() ^ 1;
    }
  }

  return result;
}

uint64_t MerchantCategoryOrderIndex(uint64_t a1)
{
  if ((a1 - 1) > 6)
  {
    return -1;
  }

  else
  {
    return qword_1BE116188[a1 - 1];
  }
}

id PKRemoteSubcredentialMessageComposeViewControllerExportedInterface()
{
  v0 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F3D950B0];
  v1 = objc_alloc_init(MEMORY[0x1E695DFD8]);
  [v0 setClasses:v1 forSelector:sel_messageComposeViewControllerDidFinishWithResult_ argumentIndex:0 ofReply:0];

  return v0;
}

id PKServiceSubcredentialMessageComposeViewControllerExportedInterface()
{
  v0 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F3E3D548];
  v1 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
  [v0 setClasses:v1 forSelector:sel_setSharingRequest_completionHandler_ argumentIndex:0 ofReply:0];

  return v0;
}

void sub_1BDDDD9B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDDDE60C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 72));
  _Unwind_Resume(a1);
}

void sub_1BDDDEAD0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 56));
  objc_destroyWeak((v1 + 56));
  _Unwind_Resume(a1);
}

void sub_1BDDE0470(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDDE16A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1BDDE3BA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  _Block_object_dispose(&a31, 8);
  _Block_object_dispose((v31 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_1BDDE4800(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id PKAddSEPassDisplayableError(void *a1, uint64_t a2, uint64_t a3, char *a4)
{
  v7 = a1;
  v31[0] = MEMORY[0x1E69E9820];
  v31[1] = 3221225472;
  v31[2] = ___PKAddSEPassDisplayableError_block_invoke;
  v31[3] = &__block_descriptor_48_e34___NSString_24__0__NSString_8B16B20l;
  v31[4] = a2;
  v31[5] = a3;
  v8 = _Block_copy(v31);
  v9 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v10 = [v7 code];
  v11 = [v7 domain];
  v12 = *MEMORY[0x1E69BB840];
  v13 = v11;
  v14 = v13;
  if (v13 == v12)
  {
  }

  else
  {
    if (!v13 || !v12)
    {

      goto LABEL_9;
    }

    v15 = [v13 isEqualToString:v12];

    if (!v15)
    {
LABEL_9:
      v18 = *MEMORY[0x1E696A978];
      v19 = v14;
      v20 = v19;
      if (v19 == v18)
      {
      }

      else
      {
        if (!v14 || !v18)
        {

LABEL_17:
          v17 = 0;
          v16 = 0;
          goto LABEL_18;
        }

        v21 = [v19 isEqualToString:v18];

        if (!v21)
        {
          goto LABEL_17;
        }
      }

      v16 = v8[2](v8, @"SHAREABLE_CREDENTIAL_ERROR_UNABLE_TO_ADD_TITLE", 1, 1);
      v17 = v8[2](v8, @"SHAREABLE_CREDENTIAL_ERROR_TIME_OUT_MESSAGE", 0, 0);
      v22 = 0;
      goto LABEL_19;
    }
  }

  v16 = PKTitleForDisplayableError();
  v17 = MEMORY[0x1BFB42D10](v7);
LABEL_18:
  v22 = 1;
LABEL_19:
  v23 = *MEMORY[0x1E69B9E70];
  v24 = v14;
  v25 = v24;
  if (v24 == v23)
  {

    goto LABEL_25;
  }

  if (!v24 || !v23)
  {

    goto LABEL_40;
  }

  v26 = [v24 isEqualToString:v23];

  if (v26)
  {
LABEL_25:
    if (v10 <= 2)
    {
      switch(v10)
      {
        case 0:
          goto LABEL_38;
        case 1:
          v22 = 0;
          goto LABEL_40;
        case 2:
          v27 = v8[2](v8, @"SHAREABLE_CREDENTIAL_ERROR_UNABLE_TO_ADD_TITLE", 1, 1);

          v8[2](v8, @"SHAREABLE_CREDENTIAL_ERROR_TIME_OUT_MESSAGE", 0, 0);
          goto LABEL_37;
      }
    }

    else
    {
      if (v10 <= 4)
      {
        if (v10 != 3)
        {
          v27 = v8[2](v8, @"SHAREABLE_CREDENTIAL_ERROR_CANNOT_ADD_TITLE", 1, 1);

          v8[2](v8, @"SHAREABLE_CREDENTIAL_ERROR_USUPPORTED_DEVICE_MESSAGE", 1, 1);
          v28 = LABEL_37:;

          v17 = v28;
LABEL_39:
          v16 = v27;
          goto LABEL_40;
        }

LABEL_38:
        v27 = v8[2](v8, @"SHAREABLE_CREDENTIAL_ERROR_GENERIC_MESSAGE", 1, 1);

        goto LABEL_39;
      }

      if (v10 == 5)
      {
        goto LABEL_38;
      }

      if (v10 == 6)
      {
        v27 = v8[2](v8, @"SHAREABLE_CREDENTIAL_ERROR_UNSUPPORTED_OS_VERSION_TITLE", 0, 0);

        v8[2](v8, @"SHAREABLE_CREDENTIAL_ERROR_UNSUPPORTED_OS_VERSION_MESSAGE_IPHONE", 0, 0);
        goto LABEL_37;
      }
    }

    if (!v16 && !v17 && v10 == 1000)
    {
      v16 = v8[2](v8, @"SHAREABLE_CREDENTIAL_ERROR_CANNOT_ADD_TITLE", 1, 1);
      v17 = v8[2](v8, @"SHAREABLE_CREDENTIAL_ERROR_HSA2_MESSAGE", 0, 0);
    }
  }

LABEL_40:
  if (a4)
  {
    *a4 = v22;
  }

  if (v16)
  {
    [v9 setObject:0 forKeyedSubscript:*MEMORY[0x1E696A278]];
    [v9 setObject:v7 forKeyedSubscript:*MEMORY[0x1E696AA08]];
    v29 = PKDisplayableErrorCustom();
  }

  else
  {
    v29 = 0;
  }

  return v29;
}

id PKAddSEPassGenericDisplayableError(uint64_t a1, uint64_t a2)
{
  v2 = _LocalizedString(@"SHAREABLE_CREDENTIAL_ERROR_GENERIC_MESSAGE", 1, a1, 1, a2);
  v3 = PKDisplayableErrorCustom();

  return v3;
}

id _LocalizedString(void *a1, int a2, uint64_t a3, int a4, uint64_t a5)
{
  v9 = a1;
  if (a2)
  {
    v10 = @"_SINGULAR";
    if (!a3)
    {
      v10 = @"_PLURAL";
    }

    v11 = v10;
    if (!a4)
    {
LABEL_12:
      v13 = 0;
      v12 = 1;
      if (!v11)
      {
        goto LABEL_14;
      }

      goto LABEL_13;
    }
  }

  else
  {
    v11 = 0;
    if (!a4)
    {
      goto LABEL_12;
    }
  }

  if ((a5 - 3) < 4)
  {
LABEL_8:
    v12 = 0;
    v13 = @"_KEY";
    if (!v11)
    {
      goto LABEL_14;
    }

LABEL_13:
    v14 = [v9 stringByAppendingString:v11];

    v9 = v14;
    goto LABEL_14;
  }

  if (a5 != 2)
  {
    if (a5 != 1)
    {
      goto LABEL_12;
    }

    goto LABEL_8;
  }

  v12 = 0;
  v13 = @"_BADGE";
  if (v11)
  {
    goto LABEL_13;
  }

LABEL_14:
  if ((v12 & 1) == 0)
  {
    v15 = [v9 stringByAppendingString:v13];

    v9 = v15;
  }

  v16 = PKLocalizedShareableCredentialString(v9);

  return v16;
}

id PKAddSEPassSanitizedError(void *a1)
{
  v1 = a1;
  v2 = [v1 domain];
  v3 = *MEMORY[0x1E69B9E70];
  v4 = v2;
  v5 = v4;
  if (v4 == v3)
  {

    goto LABEL_7;
  }

  if (v4 && v3)
  {
    v6 = [v4 isEqualToString:v3];

    if (!v6)
    {
      goto LABEL_9;
    }

LABEL_7:
    v7 = ([v1 code] - 1) < 6;
    goto LABEL_10;
  }

LABEL_9:
  v7 = 0;
LABEL_10:
  v8 = [MEMORY[0x1E696ABC0] errorWithDomain:v3 code:v7 userInfo:0];

  return v8;
}

void sub_1BDDE5A1C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDDE5D30(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDDE7354(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 32));
  _Unwind_Resume(a1);
}

void __dispatch_async_ar_block_invoke_0(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  (*(*(a1 + 32) + 16))();

  objc_autoreleasePoolPop(v2);
}

void sub_1BDDEC1C0(_Unwind_Exception *a1)
{
  objc_destroyWeak(v1);
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

Class initCNAvatarView_9()
{
  if (qword_1EBDAAB38 != -1)
  {
    dispatch_once(&qword_1EBDAAB38, &__block_literal_global_64);
  }

  result = objc_getClass("CNAvatarView");
  _MergedGlobals_3_5 = result;
  getCNAvatarViewClass_2 = CNAvatarViewFunction_9;
  return result;
}

void sub_1BDDF1454(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 72));
  _Unwind_Resume(a1);
}

void sub_1BDDF1DC4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, id location)
{
  objc_destroyWeak((v23 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDDF26C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, id location)
{
  objc_destroyWeak((v23 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDDF3130(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 + 40));
  objc_destroyWeak((v3 - 72));
  _Unwind_Resume(a1);
}

void sub_1BDDF3F34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  objc_destroyWeak((v13 + 48));
  objc_destroyWeak((v14 - 80));
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1BDDF4DE0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, char a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, id location, char a50)
{
  objc_destroyWeak(&a48);
  objc_destroyWeak(&location);
  _Block_object_dispose(&a50, 8);
  _Block_object_dispose((v50 - 160), 8);
  _Unwind_Resume(a1);
}

void sub_1BDDF54E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

Class initASWebAuthenticationSession()
{
  if (qword_1EBD6AD40 != -1)
  {
    dispatch_once(&qword_1EBD6AD40, &__block_literal_global_190);
  }

  result = objc_getClass("ASWebAuthenticationSession");
  _MergedGlobals_605 = result;
  getASWebAuthenticationSessionClass = ASWebAuthenticationSessionFunction;
  return result;
}

void *__LoadAuthenticationServices_block_invoke()
{
  result = dlopen("/System/Library/Frameworks/AuthenticationServices.framework/AuthenticationServices", 2);
  LoadAuthenticationServices_frameworkLibrary = result;
  return result;
}

id createPassField(uint64_t a1, void *a2, void *a3)
{
  v5 = MEMORY[0x1E69B8A50];
  v6 = a3;
  v7 = a2;
  v8 = objc_alloc_init(v5);
  [v8 setType:a1];
  [v8 setKey:v7];

  [v8 setUnformattedValue:v6];
  return v8;
}

void sub_1BDDFAF88(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 72));
  _Unwind_Resume(a1);
}

void sub_1BDDFB2C4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1BDDFD218(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_1BDDFD5E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDE00298(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDE004E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDE00DD0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDE0144C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void __PKPaymentRequestAnalyticsDescription_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v5 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [*(a1 + 32) setObject:v5 forKeyedSubscript:v6];
    }
  }
}

void __dispatch_async_ar_block_invoke_1(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  (*(*(a1 + 32) + 16))();

  objc_autoreleasePoolPop(v2);
}

void sub_1BDE02AFC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDE08E8C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDE0AB10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  objc_destroyWeak((v9 + 40));
  _Unwind_Resume(a1);
}

void sub_1BDE0B360(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 144));
  _Unwind_Resume(a1);
}

void sub_1BDE0BFF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  __destructor_8_S_s0_s8_s24(va);
  _Unwind_Resume(a1);
}

PKDashboardItemsState *NewStateFromData(void *a1)
{
  v27[1] = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = [[PKTransactionHistoryHeaderItem alloc] initWithType:2];
  v3 = objc_alloc_init(MEMORY[0x1E69B8EB0]);
  [v3 setType:14];
  if (v1)
  {
    v4 = v1[1];
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;
  v6 = [v5 integerValue];
  if (v1)
  {
    v7 = v1[2];
  }

  else
  {
    v7 = 0;
  }

  v8 = [v7 integerValue];

  [v3 setTransactionCount:v8 + v6];
  v9 = PKLocalizedPaymentString(&cfstr_PaymentTransac.isa);
  [(PKTransactionHistoryHeaderItem *)v2 setTitle:v9];

  [(PKTransactionHistoryHeaderItem *)v2 setTransactionGroup:v3];
  v10 = [PKDashboardItemsSection alloc];
  v27[0] = v2;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v27 count:1];
  v12 = [(PKDashboardItemsSection *)v10 initWithIdentifier:@"header" items:v11];

  if (v1)
  {
    v13 = v1[3];
  }

  else
  {
    v13 = 0;
  }

  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __NewStateFromData_block_invoke;
  v24[3] = &unk_1E8020008;
  v25 = v1;
  v14 = v1;
  v15 = [v13 pk_createArrayBySafelyApplyingBlock:v24];
  v16 = v15;
  v17 = MEMORY[0x1E695E0F0];
  if (v15)
  {
    v17 = v15;
  }

  v18 = v17;

  v19 = [[PKDashboardItemsSection alloc] initWithIdentifier:@"transactions" items:v18];
  v20 = [PKDashboardItemsState alloc];
  v26[0] = v12;
  v26[1] = v19;
  v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:2];
  v22 = [(PKDashboardItemsState *)v20 initWithSections:v21];

  return v22;
}

void __copy_assignment_8_8_S_s0_s8_t16w1_s24(uint64_t a1, uint64_t a2)
{
  objc_storeStrong(a1, *a2);
  objc_storeStrong((a1 + 8), *(a2 + 8));
  *(a1 + 16) = *(a2 + 16);
  v4 = *(a2 + 24);

  objc_storeStrong((a1 + 24), v4);
}

void __destructor_8_S_s0_s8_s24(uint64_t a1)
{
  v2 = *(a1 + 24);
}

void sub_1BDE0D1D0(_Unwind_Exception *a1)
{
  _Block_object_dispose(&STACK[0x318], 8);
  _Block_object_dispose(&STACK[0x348], 8);
  _Block_object_dispose(&STACK[0x378], 8);
  _Block_object_dispose(&STACK[0x3A8], 8);
  _Block_object_dispose(&STACK[0x3D8], 8);
  _Block_object_dispose(&STACK[0x408], 8);
  __destructor_8_S_s0_s8_s24(&STACK[0x438]);
  _Block_object_dispose(&STACK[0x458], 8);
  __destructor_8_S_s0_s8_s24(&STACK[0x488]);
  _Block_object_dispose(&STACK[0x4A8], 8);
  _Block_object_dispose(&STACK[0x4D8], 8);
  _Block_object_dispose(&STACK[0x508], 8);
  _Block_object_dispose(&STACK[0x538], 8);
  _Block_object_dispose(&STACK[0x568], 8);
  _Block_object_dispose((v1 - 248), 8);
  _Block_object_dispose((v1 - 200), 8);
  _Block_object_dispose((v1 - 152), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__95(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 48);
  *(a2 + 48) = 0;
  *(result + 48) = v2;
  v3 = *(a2 + 56);
  *(a2 + 56) = 0;
  *(result + 56) = v3;
  *(result + 64) = *(a2 + 64);
  v4 = *(a2 + 72);
  *(a2 + 72) = 0;
  *(result + 72) = v4;
  return result;
}

id __copy_constructor_8_8_S_s0_s8_t16w1_s24(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  result = *(a2 + 24);
  *(a1 + 24) = result;
  return result;
}

PKDashboardPaymentTransactionItem *__NewStateFromData_block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  if (v4)
  {
    v4 = v4[6];
  }

  v5 = v4;
  v6 = [v3 transactionSourceIdentifier];
  v7 = [v5 objectForKey:v6];

  if (v7)
  {
    goto LABEL_4;
  }

  v15 = *(a1 + 32);
  if (v15)
  {
    v15 = v15[7];
  }

  v16 = v15;
  v17 = [v3 identifier];
  v18 = [v16 objectForKey:v17];

  if (!v18)
  {
    v7 = 0;
LABEL_15:
    v14 = 0;
    goto LABEL_16;
  }

  v19 = *(a1 + 32);
  if (v19)
  {
    v20 = *(v19 + 64);
  }

  else
  {
    v20 = 0;
  }

  v7 = [v20 objectForKey:v18];

  if (!v7)
  {
    goto LABEL_15;
  }

LABEL_4:
  v8 = [objc_alloc(MEMORY[0x1E69B92F8]) initWithPaymentPass:v7];
  v9 = [objc_alloc(MEMORY[0x1E69B9300]) initWithTransactionSource:v8];
  v10 = *(a1 + 32);
  if (v10)
  {
    v10 = v10[9];
  }

  v11 = v10;
  v12 = [v3 identifier];
  v13 = [v11 objectForKey:v12];

  v14 = [[PKDashboardPaymentTransactionItem alloc] initWithTransactionSourceCollection:v9 familyCollection:0 transaction:v3 account:0 accountUserCollection:0 bankConnectInstitution:v13];
  [(PKDashboardPaymentTransactionItem *)v14 setShouldDisplayTransactionSource:1];

LABEL_16:

  return v14;
}

void sub_1BDE0FB60(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDE0FCDC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDE0FE58(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDE12550(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDE13288(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 56));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_1BDE135B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

Class initCNContactPickerViewController()
{
  if (qword_1EBD68248 != -1)
  {
    dispatch_once(&qword_1EBD68248, &__block_literal_global_194);
  }

  result = objc_getClass("CNContactPickerViewController");
  _MergedGlobals_5_1 = result;
  getCNContactPickerViewControllerClass = CNContactPickerViewControllerFunction;
  return result;
}

void sub_1BDE1947C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDE197B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDE1AF8C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDE1B3C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

__CFString *PKPeerPaymentAssociatedAccountActivationStateToString(unint64_t a1)
{
  if (a1 > 9)
  {
    return @"unknown";
  }

  else
  {
    return off_1E80202B8[a1];
  }
}

id PKDiscoveryCardViewDismissImage()
{
  v9[2] = *MEMORY[0x1E69E9840];
  v0 = [MEMORY[0x1E69DCAD8] configurationWithPointSize:22.0];
  v1 = MEMORY[0x1E69DCAD8];
  v2 = [MEMORY[0x1E69DC888] secondaryLabelColor];
  v9[0] = v2;
  v3 = [MEMORY[0x1E69DC888] quaternarySystemFillColor];
  v9[1] = v3;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:2];
  v5 = [v1 configurationWithPaletteColors:v4];
  v6 = [v0 configurationByApplyingConfiguration:v5];

  v7 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"xmark.circle.fill" withConfiguration:v6];

  return v7;
}

void PKFetchImageForDiscoveryMedia(void *a1, double a2, double a3, uint64_t a4, void *a5)
{
  v8 = a1;
  v9 = a5;
  if (v9)
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __PKFetchImageForDiscoveryMedia_block_invoke;
    aBlock[3] = &__block_descriptor_48_e26___UIImage_16__0__UIImage_8l;
    *&aBlock[4] = a2;
    *&aBlock[5] = a3;
    v10 = _Block_copy(aBlock);
    v11 = [v8 type];
    if (v11 == 1)
    {
      v25 = PKUIScreenScale();
      v12 = [v8 imageDataFromCacheWithScale:?];
      if (v12)
      {
        v26 = [MEMORY[0x1E69DCAB8] imageWithData:v12];
        v13 = v10[2](v10, v26);

        v9[2](v9, v13, 1);
      }

      else
      {
        v28[0] = MEMORY[0x1E69E9820];
        v28[1] = 3221225472;
        v28[2] = __PKFetchImageForDiscoveryMedia_block_invoke_25;
        v28[3] = &unk_1E8020378;
        v29 = v9;
        v30 = v10;
        [v8 downloadImageDataWithScale:1 shouldWriteData:v28 completion:v25];

        v13 = v29;
      }

      goto LABEL_18;
    }

    if (v11 != 3)
    {
      v9[2](v9, 0, 1);
LABEL_20:

      goto LABEL_21;
    }

    v12 = [v8 bundleImageName];
    if (![v12 length])
    {
      v27 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1BD026000, v27, OS_LOG_TYPE_DEFAULT, "Media type was bundle asset but no bundle image name was provided", buf, 2u);
      }

      v9[2](v9, 0, 1);
      goto LABEL_19;
    }

    v13 = [v8 bundle];
    v14 = [v12 pathExtension];
    v15 = [v14 isEqualToString:@"pdf"];

    if (v15)
    {
      v16 = [v12 stringByDeletingPathExtension];
      v17 = [v13 URLForResource:v16 withExtension:@"pdf"];
      [v8 width];
      v19 = v18;
      [v8 height];
      v21 = v20;
      v22 = PKUIScreenScale();
      v23 = PKUIImageFromPDF(v17, v19, v21, v22);

      if (v23)
      {
LABEL_7:
        v24 = v10[2](v10, v23);

LABEL_17:
        v9[2](v9, v24, 1);

LABEL_18:
LABEL_19:

        goto LABEL_20;
      }
    }

    else
    {
      v23 = [MEMORY[0x1E69DCAB8] imageNamed:v12 inBundle:v13];
      if (v23)
      {
        goto LABEL_7;
      }
    }

    v24 = 0;
    goto LABEL_17;
  }

LABEL_21:
}

id __PKFetchImageForDiscoveryMedia_block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  v5 = *(a1 + 40);
  if (*(a1 + 32) != *MEMORY[0x1E695F060] || v5 != *(MEMORY[0x1E695F060] + 8))
  {
    [v3 size];
    [v4 size];
    PKFloatRoundToPixel();
    v8 = v7;
    PKFloatRoundToPixel();
    v10 = v9;
    v11 = [objc_alloc(MEMORY[0x1E69DCA78]) initWithSize:{v9, v8}];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __PKFetchImageForDiscoveryMedia_block_invoke_2;
    v14[3] = &unk_1E801EEA0;
    v15 = v4;
    v16 = v10;
    v17 = v8;
    v12 = v4;
    v4 = [v11 imageWithActions:v14];
  }

  return v4;
}

void __PKFetchImageForDiscoveryMedia_block_invoke_25(uint64_t a1, void *a2, char a3)
{
  v5 = a2;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __PKFetchImageForDiscoveryMedia_block_invoke_2_26;
  v7[3] = &unk_1E801A390;
  v8 = v5;
  v9 = *(a1 + 32);
  v11 = a3;
  v10 = *(a1 + 40);
  v6 = v5;
  dispatch_async(MEMORY[0x1E69E96A0], v7);
}

void __PKFetchImageForDiscoveryMedia_block_invoke_2_26(void *a1)
{
  if (a1[4])
  {
    v2 = [MEMORY[0x1E69DCAB8] imageWithData:?];
    v4 = (*(a1[6] + 16))();

    (*(a1[5] + 16))();
  }

  else
  {
    v3 = *(a1[5] + 16);

    v3();
  }
}

uint64_t PKDiscoveryBlurEffectStyleFromCardStyle(uint64_t a1)
{
  v1 = 17;
  if (a1 == 2)
  {
    v1 = 18;
  }

  if (a1 == 3)
  {
    return 19;
  }

  else
  {
    return v1;
  }
}

void sub_1BDE27088(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, id location)
{
  objc_destroyWeak((v25 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDE2892C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void PKSearchAutoCompletionTextAndImageFromSuggestion(void *a1, void *a2, int a3, void *a4, void *a5)
{
  v76 = a4;
  v9 = a5;
  v10 = [v76 tokenType];
  v11 = 0;
  if (v10 > 5)
  {
    if (v10 > 8)
    {
      if (v10 == 9)
      {
        v13 = v76;
        v31 = [v13 merchant];
        v32 = v31;
        if (a3 && v31)
        {
          PKUIScreenScale();
          v33 = PKMapsIconForMerchant();
        }

        else
        {
          v33 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"magnifyingglass"];
        }

        v11 = v33;
        v12 = [v13 displayName];
        goto LABEL_124;
      }

      if (v10 == 10)
      {
        v40 = MEMORY[0x1E69DCAB8];
        v13 = v76;
        v11 = [v40 systemImageNamed:@"magnifyingglass"];
        v12 = [v13 typeName];
        goto LABEL_149;
      }

      v12 = 0;
      if (v10 != 11)
      {
        goto LABEL_155;
      }

      v12 = [v76 searchHistory];
      v22 = MEMORY[0x1E69DCAB8];
      v23 = @"clock.arrow.circlepath";
      goto LABEL_73;
    }

    if (v10 == 6)
    {
      v27 = [v76 subType];
      if (v27 == 1)
      {
        v28 = @"TRANSACTION_DETAILS_AMOUNT_LINE_ITEM_TOTAL_SENT";
      }

      else
      {
        if (v27 != 2)
        {
LABEL_51:
          v12 = 0;
          goto LABEL_72;
        }

        v28 = @"TRANSACTION_DETAILS_AMOUNT_LINE_ITEM_TOTAL_RECEIVED";
      }

      v39 = PKLocalizedPeerPaymentString(&v28->isa);
      goto LABEL_71;
    }

    if (v10 == 7)
    {
      v37 = [v76 rewardsValue];
      v72 = PKFormattedStringMinimalFractionDigitsFromNumber();
      v12 = PKLocalizedFeatureString();

LABEL_72:
      v22 = MEMORY[0x1E69DCAB8];
      v23 = @"magnifyingglass";
LABEL_73:
      v48 = [v22 systemImageNamed:{v23, v72}];
      goto LABEL_74;
    }

    v13 = [v76 tag];
    v19 = [v13 type];
    v12 = 0;
    if (v19 > 0x13)
    {
      goto LABEL_115;
    }

    if (((1 << v19) & 0xC0FFE) != 0)
    {
      v20 = PKPaymentTransactionTagTypeToLocalizedString();
    }

    else
    {
      if (((1 << v19) & 0x3F000) == 0)
      {
        goto LABEL_115;
      }

      v20 = [v13 localizedTitle];
    }

LABEL_114:
    v12 = v20;
    goto LABEL_115;
  }

  if (v10 > 2)
  {
    if (v10 != 3)
    {
      if (v10 != 4)
      {
        v21 = [v76 transactionSource];
        if (v21 == 5 || v21 == 6)
        {
          v12 = PKLocalizedFeatureString();
        }

        else
        {
          v12 = 0;
        }

        v48 = [MEMORY[0x1E69DCAB8] _systemImageNamed:@"applecard.fill"];
LABEL_74:
        v11 = v48;
        if (a1)
        {
          goto LABEL_150;
        }

        goto LABEL_152;
      }

      v38 = [v76 transactionStatus];
      if (v38 <= 7 && ((0xE5u >> v38) & 1) != 0)
      {
        v39 = PKLocalizedPaymentString(&off_1E80203E0[v38]->isa);
LABEL_71:
        v12 = v39;
        goto LABEL_72;
      }

      goto LABEL_51;
    }

    v13 = v76;
    v29 = [v13 transactionType];
    v12 = 0;
    if (v29 <= 6)
    {
      if (v29 > 3)
      {
        if (v29 != 4)
        {
          if (v29 == 5)
          {
            v11 = [MEMORY[0x1E69DCAB8] _systemImageNamed:@"applepaycash"];
            v30 = @"TRANSACTION_TYPE_WITHDRAWAL_GENERIC";
          }

          else
          {
            v11 = [MEMORY[0x1E69DCAB8] _systemImageNamed:@"applepaycash"];
            v30 = @"TRANSACTION_TYPE_TOP_UP";
          }

          goto LABEL_139;
        }

        v52 = @"SEARCH_TRANSACTION_TYPE_FEES";
        goto LABEL_113;
      }

      if (v29)
      {
        if (v29 != 1)
        {
          goto LABEL_115;
        }

        v46 = @"PAYMENT_TRANSACTION_REFUND";
      }

      else
      {
        v46 = @"PAYMENT_TRANSACTION_PURCHASE";
      }

      goto LABEL_109;
    }

    if (v29 <= 9)
    {
      if (v29 == 7)
      {
        v11 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"pencil"];
        v30 = @"TRANSACTION_TYPE_ADJUSTMENT";
LABEL_139:
        v69 = PKLocalizedPaymentString(&v30->isa);
LABEL_140:
        v12 = v69;
        if (v11)
        {
          goto LABEL_149;
        }

        goto LABEL_115;
      }

      if (v29 != 9)
      {
        goto LABEL_115;
      }

      v52 = @"SEARCH_TRANSACTION_TYPE_REWARDS";
    }

    else
    {
      if (v29 != 10)
      {
        if (v29 != 11)
        {
          if (v29 != 13)
          {
            goto LABEL_115;
          }

          v46 = @"TRANSACTION_TYPE_INSTALLMENT_PAYMENT";
LABEL_109:
          v20 = PKLocalizedPaymentString(&v46->isa);
          goto LABEL_114;
        }

        v11 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"percent"];
        v67 = [v13 creditDebitIndicator];
        if (v67 == 2)
        {
          v68 = @"BANK_CONNECT_INTEREST_CHARGED_TRANSACTION_CELL_PRIMARY_STRING";
        }

        else
        {
          if (v67 != 1)
          {
LABEL_138:
            v30 = @"TRANSACTION_TYPE_INTEREST_CHARGE";
            goto LABEL_139;
          }

          v68 = @"BANK_CONNECT_INTEREST_EARNED_TRANSACTION_CELL_PRIMARY_STRING";
        }

        v69 = PKLocalizedBankConnectString(&v68->isa);
        if (v69)
        {
          goto LABEL_140;
        }

        goto LABEL_138;
      }

      v52 = @"SEARCH_TAG_PAYMENTS";
    }

LABEL_113:
    v20 = PKLocalizedString(&v52->isa);
    goto LABEL_114;
  }

  if (v10)
  {
    if (v10 != 1)
    {
      v12 = 0;
      if (v10 != 2)
      {
        goto LABEL_155;
      }

      v13 = v76;
      v14 = [v13 type];
      v12 = 0;
      if (v14 <= 1)
      {
        if (!v14)
        {
          v15 = [v13 startDate];
          v16 = [v13 endDate];
          v53 = PKDateRangeStringFromDateToDate();
LABEL_127:
          v12 = v53;
LABEL_145:

          goto LABEL_146;
        }

        if (v14 == 1)
        {
          v15 = [v13 startDate];
          v16 = [MEMORY[0x1E695DF00] date];
          v17 = PKDateRangeNumberOfIntervalsForUnit();
          if (v17 == 1)
          {
            v18 = @"SEARCH_YESTERDAY";
            goto LABEL_126;
          }

          if (!v17)
          {
            v18 = @"SEARCH_TODAY";
LABEL_126:
            v53 = PKLocalizedString(&v18->isa);
            goto LABEL_127;
          }

          if ((v17 - 2) <= 4)
          {
            v53 = PKFullWeekdayStringFromDate();
            goto LABEL_127;
          }

          v41 = [v13 startDate];
          v42 = [v13 endDate];
          v12 = PKDateRangeStringFromDateToDate();
LABEL_132:

          goto LABEL_145;
        }

LABEL_146:
        v25 = MEMORY[0x1E69DCAB8];
        v26 = @"calendar";
        goto LABEL_147;
      }

      if (v14 != 2)
      {
        if (v14 != 3)
        {
          goto LABEL_146;
        }

        v15 = [v13 startDate];
        v16 = [MEMORY[0x1E695DF00] date];
        v41 = [MEMORY[0x1E695DEE8] currentCalendar];
        v42 = [v41 components:6 fromDate:v16];
        v43 = PKStartOfLastYear();
        v44 = [v41 components:6 fromDate:v43];

        if ([v41 date:v15 matchesComponents:v42])
        {
          v45 = @"SEARCH_THIS_YEAR";
        }

        else
        {
          if (![v41 date:v15 matchesComponents:v44])
          {
            v75 = [v13 startDate];
            v12 = PKYearStringFromDate();

            goto LABEL_131;
          }

          v45 = @"SEARCH_LAST_YEAR";
        }

        v12 = PKLocalizedString(&v45->isa);
LABEL_131:

        goto LABEL_132;
      }

      v54 = [v13 startDate];
      v55 = [MEMORY[0x1E695DF00] date];
      v56 = [MEMORY[0x1E695DEE8] currentCalendar];
      v57 = [v56 components:14 fromDate:v55];
      v73 = v55;
      v58 = PKStartOfLastMonth();
      v59 = [v56 components:14 fromDate:v58];

      v74 = v57;
      if ([v56 date:v54 matchesComponents:v57])
      {
        v12 = PKLocalizedString(&cfstr_SearchThisMont.isa);
        v15 = v54;
      }

      else
      {
        v15 = v54;
        if (![v56 date:v54 matchesComponents:v59])
        {
          v16 = v73;
          if (a3)
          {
            PKShortMonthAndYearStringFromDate();
          }

          else
          {
            PKMonthAndYearStringFromDate();
          }
          v12 = ;
          goto LABEL_144;
        }

        v12 = PKLocalizedString(&cfstr_SearchLastMont.isa);
      }

      v16 = v73;
LABEL_144:

      goto LABEL_145;
    }

    v13 = v76;
    v34 = [v13 comparison];
    if (v34 == 1)
    {
      v35 = @"SEARCH_AMOUNT_BELOW";
      v36 = @"SEARCH_AMOUNT_BELOW_TOKEN";
    }

    else
    {
      if (v34)
      {
        if (v34 == -1)
        {
          v35 = @"SEARCH_AMOUNT_ABOVE";
          v36 = @"SEARCH_AMOUNT_ABOVE_TOKEN";
          goto LABEL_82;
        }

        v12 = 0;
        if (a3)
        {
          goto LABEL_88;
        }

LABEL_115:
        v25 = MEMORY[0x1E69DCAB8];
        v26 = @"magnifyingglass";
LABEL_147:
        v66 = [v25 systemImageNamed:v26];
        goto LABEL_148;
      }

      v35 = @"SEARCH_AMOUNT_EQUAL";
      v36 = @"SEARCH_AMOUNT_EQUAL_TOKEN";
    }

LABEL_82:
    if (a3)
    {
      p_isa = &v36->isa;
    }

    else
    {
      p_isa = &v35->isa;
    }

    v50 = [v13 amount];
    v51 = [v50 formattedStringValue];
    v12 = PKLocalizedString(p_isa, &stru_1F3BD5BF0.isa, v51);

    if ((a3 & 1) == 0)
    {
      goto LABEL_115;
    }

LABEL_88:
    v11 = 0;
    goto LABEL_149;
  }

  v13 = [v76 group];
  v24 = [v13 type];
  v11 = 0;
  if (v24 > 11)
  {
    if (v24 == 12)
    {
      v60 = [v13 handles];
      v32 = [v60 anyObject];

      v61 = MEMORY[0x1E69B8F30];
      v62 = [v9 contactForHandle:v32];
      v12 = [v61 displayNameForCounterpartHandle:v32 contact:v62];

      v63 = MEMORY[0x1E69DCAB8];
      v64 = @"person.crop.circle";
    }

    else
    {
      if (v24 != 13)
      {
        v12 = 0;
        if (v24 != 16)
        {
          goto LABEL_149;
        }

        v12 = [v13 userDisplayName];
        v25 = MEMORY[0x1E69DCAB8];
        v26 = @"person.crop.circle";
        goto LABEL_147;
      }

      v65 = [v13 regions];
      v32 = [v65 firstObject];

      v12 = [v32 localizedName];
      v63 = MEMORY[0x1E69DCAB8];
      v64 = @"mappin.and.ellipse";
    }

    goto LABEL_122;
  }

  if (v24)
  {
    v12 = 0;
    if (v24 != 1)
    {
      goto LABEL_149;
    }

    v32 = [v13 merchant];
    v12 = [v32 displayName];
    if (!a3)
    {
      v63 = MEMORY[0x1E69DCAB8];
      v64 = @"magnifyingglass";
LABEL_122:
      v47 = [v63 systemImageNamed:v64];
      goto LABEL_123;
    }

    PKUIScreenScale();
    v47 = PKMapsIconForMerchant();
LABEL_123:
    v11 = v47;
LABEL_124:

    goto LABEL_149;
  }

  [v13 merchantCategory];
  v12 = PKLocalizedStringFromMerchantCategory();
  PKUIScreenScale();
  if (!a3)
  {
    v32 = PKMapsIconForMerchantCategory();
    v47 = [v32 imageWithRenderingMode:2];
    goto LABEL_123;
  }

  v66 = PKMapsIconForMerchantCategory();
LABEL_148:
  v11 = v66;
LABEL_149:

  if (a1)
  {
LABEL_150:
    if (v12)
    {
      v70 = v12;
      *a1 = v12;
    }
  }

LABEL_152:
  if (a2 && v11)
  {
    v71 = v11;
    *a2 = v11;
  }

LABEL_155:
}

void sub_1BDE2A88C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDE2B654(_Unwind_Exception *a1)
{
  objc_destroyWeak((v5 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v4 + 32));
  objc_destroyWeak((v3 + 32));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v6 - 136));
  objc_destroyWeak((v6 - 128));
  _Unwind_Resume(a1);
}

void sub_1BDE2C238(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDE2C688(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_1BDE2D118(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDE2D45C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  objc_destroyWeak((v27 + 72));
  objc_destroyWeak(&location);
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose((v28 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_1BDE2E474(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDE2F378(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  objc_destroyWeak((v15 + 40));
  _Unwind_Resume(a1);
}

void sub_1BDE30548(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDE30B10(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDE319B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDE32100(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDE3261C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDE369C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDE37CAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  objc_destroyWeak(va);
  objc_destroyWeak((v17 - 88));
  _Unwind_Resume(a1);
}

void sub_1BDE37FFC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDE38DAC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

Class initCNContactViewController_2()
{
  if (qword_1EBDAAB68 != -1)
  {
    dispatch_once(&qword_1EBDAAB68, &__block_literal_global_202);
  }

  result = objc_getClass("CNContactViewController");
  _MergedGlobals_7_0 = result;
  getCNContactViewControllerClass = CNContactViewControllerFunction_2;
  return result;
}

void sub_1BDE3BA70(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id location)
{
  objc_destroyWeak((v22 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDE3C4A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

Class initNPKCompanionAgentConnection_5()
{
  if (qword_1EBD6AD60 != -1)
  {
    dispatch_once(&qword_1EBD6AD60, &__block_literal_global_204);
  }

  result = objc_getClass("NPKCompanionAgentConnection");
  _MergedGlobals_607 = result;
  getNPKCompanionAgentConnectionClass_4 = NPKCompanionAgentConnectionFunction_5;
  return result;
}

void *__LoadNanoPassKit_block_invoke_6()
{
  result = dlopen("/System/Library/PrivateFrameworks/NanoPassKit.framework/NanoPassKit", 2);
  LoadNanoPassKit_frameworkLibrary_6 = result;
  return result;
}

void sub_1BDE3EF18(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v20 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDE400E8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 56));
  objc_destroyWeak((v2 - 96));
  _Unwind_Resume(a1);
}

void sub_1BDE40B40(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDE40E04(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDE41284(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, id a31)
{
  objc_destroyWeak((v31 + 64));
  objc_destroyWeak(&a31);
  objc_destroyWeak((v32 - 136));
  _Unwind_Resume(a1);
}

void sub_1BDE41CA4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 96));
  _Unwind_Resume(a1);
}

void sub_1BDE42564(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak((v22 + 32));
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDE449FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDE44FE8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_1BDE4586C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDE460B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDE465F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDE47CCC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak(&a15);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDE48D80(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDE498FC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 128));
  _Unwind_Resume(a1);
}

void sub_1BDE4ABB4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDE4E260(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDE4E878(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDE4F594(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDE500DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDE50480(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDE50E90(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void PKPaymentPassDetailApplyViewStyleAppearance(uint64_t a1, void *a2)
{
  v4 = a2;
  if (a1 == 2 || PKPaymentSetupForceBridgeAppearance())
  {
    v3 = PKBridgeAppearanceGetAppearanceSpecifier();
    PKAppearanceApplyToContainer(v3, v4);
  }
}

void sub_1BDE51E18(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDE52D74(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

Class initCNAvatarView_10()
{
  if (qword_1EBDAAB80 != -1)
  {
    dispatch_once(&qword_1EBDAAB80, &__block_literal_global_244);
  }

  result = objc_getClass("CNAvatarView");
  _MergedGlobals_8_1 = result;
  _MergedGlobals_7_3 = CNAvatarViewFunction_10;
  return result;
}

Class initCNAvatarCardController_6()
{
  if (qword_1EBDAAB80 != -1)
  {
    dispatch_once(&qword_1EBDAAB80, &__block_literal_global_244);
  }

  result = objc_getClass("CNAvatarCardController");
  qword_1EBDAAB88 = result;
  off_1EE9A1E40 = CNAvatarCardControllerFunction_6;
  return result;
}

Class initCNContactViewController_3()
{
  if (qword_1EBDAAB80 != -1)
  {
    dispatch_once(&qword_1EBDAAB80, &__block_literal_global_244);
  }

  result = objc_getClass("CNContactViewController");
  qword_1EBDAAB90 = result;
  off_1EE9A1E48 = CNContactViewControllerFunction_3;
  return result;
}

void sub_1BDE53E10(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDE53F38(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1BDE54360(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_1BDE5477C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v4 + 32));
  objc_destroyWeak((v3 + 32));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v5 - 88));
  _Unwind_Resume(a1);
}

void sub_1BDE54FA4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

Class initQLItem_2()
{
  if (qword_1EBDAABA8 != -1)
  {
    dispatch_once(&qword_1EBDAABA8, &__block_literal_global_207);
  }

  result = objc_getClass("QLItem");
  _MergedGlobals_6_1 = result;
  _MergedGlobals_5_7 = QLItemFunction_2;
  return result;
}

void *__LoadQuickLook_block_invoke_2()
{
  result = dlopen("/System/Library/Frameworks/QuickLook.framework/QuickLook", 2);
  LoadQuickLook_frameworkLibrary_2 = result;
  return result;
}

Class initQLPreviewController_2()
{
  if (qword_1EBDAABA8 != -1)
  {
    dispatch_once(&qword_1EBDAABA8, &__block_literal_global_207);
  }

  result = objc_getClass("QLPreviewController");
  qword_1EBDAABB0 = result;
  off_1EE989770 = QLPreviewControllerFunction_2;
  return result;
}

void sub_1BDE59508(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1BDE5A600(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDE5B484(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDE5C7B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDE5CA88(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDE5D264(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 80));
  _Unwind_Resume(a1);
}

void sub_1BDE5D4E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDE5D68C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDE5DCDC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id location)
{
  objc_destroyWeak((v22 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDE5F114(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id TitleFormattedString(void *a1, void *a2, uint64_t a3, void *a4)
{
  v7 = a1;
  v8 = MEMORY[0x1E69DB7C8];
  v9 = a2;
  v10 = objc_alloc_init(v8);
  [v10 setAlignment:a3];
  if (v7)
  {
    [v10 setLineSpacing:0.0];
    [v10 setParagraphSpacing:0.0];
    [v10 setLineHeightMultiple:1.0];
  }

  v11 = objc_alloc_init(MEMORY[0x1E69DB7D8]);
  [v11 setShadowOffset:{*MEMORY[0x1E695F060], *(MEMORY[0x1E695F060] + 8)}];
  [v11 setShadowColor:0];
  [v11 setShadowBlurRadius:0.0];
  v12 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v13 = [MEMORY[0x1E69DC888] clearColor];
  [v12 setObject:v13 forKeyedSubscript:*MEMORY[0x1E69DB600]];

  v14 = [MEMORY[0x1E69DC888] whiteColor];
  [v12 setObject:v14 forKeyedSubscript:*MEMORY[0x1E69DB650]];

  [v12 setObject:v11 forKeyedSubscript:*MEMORY[0x1E69DB6A8]];
  [v12 setObject:v10 forKeyedSubscript:*MEMORY[0x1E69DB688]];
  v15 = objc_alloc_init(MEMORY[0x1E696AD40]);
  v36 = v7;
  if (v7)
  {
    v16 = v7;
    v17 = [MEMORY[0x1E69DB878] systemFontOfSize:9.0];
    [v17 ascender];
    [v17 capHeight];
    PKFloatRoundToPixel();
    v19 = v18;
    v20 = *MEMORY[0x1E69DB648];
    [v12 setObject:v17 forKeyedSubscript:*MEMORY[0x1E69DB648]];
    v21 = v9;
    v22 = objc_alloc(MEMORY[0x1E696AAB0]);
    v23 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@\n", v16, v36];
    v24 = [v22 initWithString:v23 attributes:v12];

    [v15 appendAttributedString:v24];
    v9 = v21;

    v25 = [MEMORY[0x1E69DB878] systemFontOfSize:11.0 weight:*MEMORY[0x1E69DB978]];
  }

  else
  {
    v25 = [MEMORY[0x1E69DB878] systemFontOfSize:20.0 weight:*MEMORY[0x1E69DB980]];
    [v25 ascender];
    [v25 capHeight];
    PKFloatRoundToPixel();
    v19 = v26;
    v20 = *MEMORY[0x1E69DB648];
  }

  [v25 descender];
  v28.n128_f64[0] = fabs(v27);
  PKFloatFloorToPixel(v28, v29);
  v31 = v30;
  [v12 setObject:v25 forKeyedSubscript:v20];
  v32 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v9 attributes:v12];

  [v15 appendAttributedString:v32];
  if (a4)
  {
    v33 = *(MEMORY[0x1E69DDCE0] + 8);
    v34 = *(MEMORY[0x1E69DDCE0] + 24);
    *a4 = v19;
    a4[1] = v33;
    a4[2] = v31;
    a4[3] = v34;
  }

  return v15;
}

void sub_1BDE62C84(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

Class initBKDeviceManager()
{
  if (qword_1EBD683A0 != -1)
  {
    dispatch_once(&qword_1EBD683A0, &__block_literal_global_95);
  }

  result = objc_getClass("BKDeviceManager");
  _MergedGlobals_1_9 = result;
  _MergedGlobals_623 = BKDeviceManagerFunction;
  return result;
}

void *__LoadBiometricKit_block_invoke()
{
  result = dlopen("/System/Library/PrivateFrameworks/BiometricKit.framework/BiometricKit", 2);
  LoadBiometricKit_frameworkLibrary = result;
  return result;
}

Class initBKDevice()
{
  if (qword_1EBD683A0 != -1)
  {
    dispatch_once(&qword_1EBD683A0, &__block_literal_global_95);
  }

  result = objc_getClass("BKDevice");
  qword_1EBD683A8 = result;
  off_1EE98A6E8 = BKDeviceFunction;
  return result;
}

void sub_1BDE63118(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDE638DC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 120));
  _Unwind_Resume(a1);
}

void sub_1BDE640FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id location)
{
  objc_destroyWeak((v24 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDE64E50(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 64));
  objc_destroyWeak((v2 - 112));
  _Unwind_Resume(a1);
}

void sub_1BDE664E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id location)
{
  objc_destroyWeak((v24 + 64));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDE72F0C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, id location)
{
  objc_destroyWeak((v27 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDE735DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id location)
{
  objc_destroyWeak((v22 + 40));
  objc_destroyWeak((v23 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDE73EFC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDE749A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

Class initCNContactInlineActionsViewController()
{
  if (qword_1EBD68258 != -1)
  {
    dispatch_once(&qword_1EBD68258, &__block_literal_global_211);
  }

  result = objc_getClass("CNContactInlineActionsViewController");
  _MergedGlobals_5_2 = result;
  getCNContactInlineActionsViewControllerClass = CNContactInlineActionsViewControllerFunction;
  return result;
}

void sub_1BDE7AA58(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, id location, char a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, char a56)
{
  objc_destroyWeak((v56 + 48));
  objc_destroyWeak(&location);
  _Block_object_dispose(&a50, 8);
  _Block_object_dispose(&a56, 8);
  _Block_object_dispose((v57 - 216), 8);
  _Block_object_dispose((v57 - 168), 8);
  _Unwind_Resume(a1);
}

void sub_1BDE7AF20(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDE7C3D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDE7C724(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDE7D91C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, id location)
{
  objc_destroyWeak((v30 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDE7E97C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDE81568(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, id location, char a37)
{
  objc_destroyWeak(&location);
  _Block_object_dispose(&a37, 8);
  _Unwind_Resume(a1);
}

uint64_t PKPaymentTransactionSupportsIssueType(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (+[PKBusinessChatController deviceSupportsBusinessChat])
  {
    v7 = [v6 businessChatIdentifier];
    v8 = v7 != 0;
  }

  else
  {
    v8 = 0;
  }

  v9 = 0;
  if (a1 > 2)
  {
    if ((a1 - 3) >= 2)
    {
      if (a1 == 5)
      {
        v10 = [v5 accountIdentifier];
        v9 = (v10 != 0) & v8;
        goto LABEL_21;
      }

      goto LABEL_22;
    }

    v10 = [v5 accountIdentifier];
    if (v10 == 0 || !v8)
    {
      goto LABEL_20;
    }

    v11 = [v5 payments];
    v9 = [v11 count] != 0;
LABEL_18:

    goto LABEL_21;
  }

  switch(a1)
  {
    case 0:
      v10 = [v5 accountIdentifier];
      if (v10 == 0 || !v8 || [v5 transactionStatus] == 2)
      {
        goto LABEL_20;
      }

LABEL_17:
      v11 = [v5 payments];
      v9 = [v11 count] == 0;
      goto LABEL_18;
    case 1:
      v10 = [v5 accountIdentifier];
      if (v10 == 0 || !v8)
      {
        goto LABEL_20;
      }

      goto LABEL_17;
    case 2:
      v10 = [v5 merchant];
      if ([v10 isValid])
      {
        v9 = [v5 transactionType] != 15;
LABEL_21:

        break;
      }

LABEL_20:
      v9 = 0;
      goto LABEL_21;
  }

LABEL_22:

  return v9;
}

void sub_1BDE875F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id initMSPWalletRAPAuthenticatedFeedbackTicket(void *a1, uint64_t a2)
{
  v3 = qword_1EBDAABC8;
  v4 = a1;
  if (v3 != -1)
  {
    dispatch_once(&qword_1EBDAABC8, &__block_literal_global_213);
  }

  _MergedGlobals_19_0 = dlsym(_MergedGlobals_20, "MSPWalletRAPAuthenticatedFeedbackTicket");
  v5 = (_MergedGlobals_19_0)(v4, a2);

  return v5;
}

void *__LoadMapsSupport_block_invoke()
{
  result = dlopen("/System/Library/PrivateFrameworks/MapsSupport.framework/MapsSupport", 2);
  _MergedGlobals_20 = result;
  return result;
}

Class initMSPWalletRAPReport()
{
  if (qword_1EBDAABC8 != -1)
  {
    dispatch_once(&qword_1EBDAABC8, &__block_literal_global_213);
  }

  result = objc_getClass("MSPWalletRAPReport");
  qword_1EBDAABD0 = result;
  off_1EE9A1E60 = MSPWalletRAPReportFunction;
  return result;
}

Class initMSPWalletBankTransactionInformation()
{
  if (qword_1EBDAABC8 != -1)
  {
    dispatch_once(&qword_1EBDAABC8, &__block_literal_global_213);
  }

  result = objc_getClass("MSPWalletBankTransactionInformation");
  qword_1EBDAABD8 = result;
  off_1EE9A1E68 = MSPWalletBankTransactionInformationFunction;
  return result;
}

Class initGEOPDMerchantInformation()
{
  if (qword_1EBDAABC8 != -1)
  {
    dispatch_once(&qword_1EBDAABC8, &__block_literal_global_213);
  }

  result = objc_getClass("GEOPDMerchantInformation");
  qword_1EBDAABE0 = result;
  off_1EE9A1E70 = GEOPDMerchantInformationFunction;
  return result;
}

uint64_t RequiredExpressApplicationsForAutomaticAuthorization(void *a1, void *a2, void *a3, void *a4)
{
  v53 = *MEMORY[0x1E69E9840];
  v7 = a1;
  v8 = a2;
  v42 = a3;
  v9 = a4;
  if (!v7)
  {
    v11 = 0;
    goto LABEL_47;
  }

  v10 = [v7 deviceContactlessPaymentApplications];
  if (![v10 count] || (objc_msgSend(v8, "isFieldDetect") & 1) != 0)
  {
    v11 = 0;
    goto LABEL_46;
  }

  v36 = v8;
  v37 = [v7 contactlessActivationGroupingType];
  v38 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v35 = v10;
  v12 = v10;
  v13 = [v12 countByEnumeratingWithState:&v47 objects:v52 count:16];
  if (!v13)
  {
    v16 = 0;
    goto LABEL_45;
  }

  v14 = v13;
  v15 = 0;
  v16 = 0;
  v17 = *v48;
  v40 = v9;
  v41 = v7;
  v39 = v12;
  while (2)
  {
    v18 = 0;
    do
    {
      if (*v48 != v17)
      {
        objc_enumerationMutation(v12);
      }

      v19 = *(*(&v47 + 1) + 8 * v18);
      if ([v19 supportsExpressForAutomaticSelectionCriteriaPassingTest:{&__block_literal_global_1179, v35}] && (!v9 || objc_msgSend(v9, "paymentApplicationSupportsAutomaticAuthorization:", v19)))
      {
        if ((v15 & 1) == 0)
        {
          v20 = [v7 uniqueID];
          v21 = [v42 expressPassConfigurationWithPassUniqueIdentifier:v20];

          v16 = v21;
        }

        if (!v16 || ![v16 isNFCExpressEnabled])
        {
          goto LABEL_31;
        }

        v45 = 0u;
        v46 = 0u;
        v43 = 0u;
        v44 = 0u;
        v22 = [v16 passInformation];
        v23 = [v22 criteriaForApplication:v19];

        v24 = [v23 countByEnumeratingWithState:&v43 objects:v51 count:16];
        if (v24)
        {
          v25 = v24;
          v26 = *v44;
LABEL_20:
          v27 = 0;
          while (1)
          {
            if (*v44 != v26)
            {
              objc_enumerationMutation(v23);
            }

            v28 = *(*(&v43 + 1) + 8 * v27);
            if ([v28 supportsExpress])
            {
              if ([v28 supportsInSessionExpress])
              {
                break;
              }
            }

            if (v25 == ++v27)
            {
              v25 = [v23 countByEnumeratingWithState:&v43 objects:v51 count:16];
              if (v25)
              {
                goto LABEL_20;
              }

              goto LABEL_27;
            }
          }

          v29 = [v19 isAuxiliary];
          if ((v37 - 1) < 2)
          {
            v30 = v29;
            v31 = [v38 firstObject];
            v32 = v31;
            v9 = v40;
            v7 = v41;
            if (v31 && v30 & 1 | (([v31 isAuxiliary] & 1) == 0))
            {

LABEL_36:
              v15 = 1;
              goto LABEL_37;
            }

            [v38 removeAllObjects];
            [v38 addObject:v19];

            if (v30)
            {
              goto LABEL_36;
            }

            v12 = v39;
            goto LABEL_45;
          }

          v9 = v40;
          v7 = v41;
          if (v37 != 3)
          {
            v12 = v39;
            if (!v37)
            {
              goto LABEL_45;
            }

LABEL_31:
            v15 = 1;
            goto LABEL_38;
          }

          [v38 addObject:v19];
          v15 = 1;
          v12 = v39;
        }

        else
        {
LABEL_27:

          v15 = 1;
          v9 = v40;
          v7 = v41;
LABEL_37:
          v12 = v39;
        }
      }

LABEL_38:
      ++v18;
    }

    while (v18 != v14);
    v33 = [v12 countByEnumeratingWithState:&v47 objects:v52 count:16];
    v14 = v33;
    if (v33)
    {
      continue;
    }

    break;
  }

LABEL_45:

  v11 = [v38 copy];
  v10 = v35;
  v8 = v36;
LABEL_46:

LABEL_47:
  return v11;
}

void InvalidateSession_0(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (v3)
  {
    if (v4)
    {
      dispatch_suspend(v4);
    }

    v6 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INTERACTIVE, 0);
    v7 = dispatch_queue_attr_make_with_autorelease_frequency(v6, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);

    v8 = dispatch_queue_create("com.apple.passkit.invalidation", v7);
    v16 = 0;
    v17 = &v16;
    v18 = 0x2020000000;
    v19 = *MEMORY[0x1E69DDBE8];
    v9 = [MEMORY[0x1E69DC668] sharedApplication];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __InvalidateSession_block_invoke_0;
    v15[3] = &unk_1E8011A18;
    v15[4] = &v16;
    v10 = [v9 beginBackgroundTaskWithExpirationHandler:v15];
    v17[3] = v10;

    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __InvalidateSession_block_invoke_2_0;
    v11[3] = &unk_1E8021F48;
    v13 = v5;
    v14 = &v16;
    v12 = v3;
    dispatch_async(v8, v11);

    _Block_object_dispose(&v16, 8);
  }
}

void sub_1BDE8B79C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1BDE8CA6C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDE8D118(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDE8F364(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 + 56));
  _Unwind_Resume(a1);
}

void sub_1BDE90714(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 64));
  objc_destroyWeak((v2 + 48));
  objc_destroyWeak((v3 - 112));
  _Unwind_Resume(a1);
}

void sub_1BDE93D6C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, id location)
{
  objc_destroyWeak((v27 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDE95B8C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 - 168));
  _Block_object_dispose((v1 - 160), 8);
  _Block_object_dispose((v1 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_1BDE96814(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1BDE96CA8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDE97368(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, char a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, char a52)
{
  objc_destroyWeak((v52 + 48));
  _Block_object_dispose(&a46, 8);
  _Block_object_dispose(&a52, 8);
  _Block_object_dispose((v53 - 232), 8);
  _Block_object_dispose((v53 - 176), 8);
  objc_destroyWeak((v53 - 184));
  _Unwind_Resume(a1);
}

void sub_1BDE99128(_Unwind_Exception *a1)
{
  objc_destroyWeak(v1);
  objc_destroyWeak((v2 - 72));
  _Unwind_Resume(a1);
}

void sub_1BDE99A98(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v19 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDE9C66C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 72));
  _Unwind_Resume(a1);
}

void sub_1BDE9C980(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDE9E210(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1BDE9E60C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_1BDE9ED10(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_1BDE9F2CC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1BDE9FAD4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDE9FFF8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDEA0D28(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDEA1030(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id location)
{
  objc_destroyWeak((v23 + 40));
  objc_destroyWeak((v22 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDEA1480(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v3 - 112));
  _Unwind_Resume(a1);
}

void sub_1BDEA1C1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, id a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, id a28)
{
  objc_destroyWeak((v28 + 40));
  objc_destroyWeak(&a23);
  objc_destroyWeak(&a28);
  objc_destroyWeak((v29 - 112));
  _Unwind_Resume(a1);
}

void sub_1BDEA3D08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, id a33)
{
  objc_destroyWeak(&a33);
  objc_destroyWeak(v33);
  _Unwind_Resume(a1);
}

void sub_1BDEA4CF0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDEA4E98(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDEA5510(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v3 + 32));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v4 - 152));
  _Unwind_Resume(a1);
}

void sub_1BDEA5E24(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 64));
  _Block_object_dispose((v2 - 144), 8);
  objc_destroyWeak((v2 - 112));
  _Unwind_Resume(a1);
}

void sub_1BDEA6894(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  objc_destroyWeak((v13 + 80));
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1BDEA6B48(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 56));
  objc_destroyWeak((v2 + 32));
  _Unwind_Resume(a1);
}

void sub_1BDEA7838(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 112));
  _Unwind_Resume(a1);
}

void __InvalidateSession_block_invoke_0(uint64_t a1)
{
  v1 = *MEMORY[0x1E69DDBE8];
  if (*(*(*(a1 + 32) + 8) + 24) != *MEMORY[0x1E69DDBE8])
  {
    v3 = [MEMORY[0x1E69DC668] sharedApplication];
    [v3 endBackgroundTask:*(*(*(a1 + 32) + 8) + 24)];

    *(*(*(a1 + 32) + 8) + 24) = v1;
  }
}

void __InvalidateSession_block_invoke_2_0(void *a1)
{
  v2 = a1[4];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __InvalidateSession_block_invoke_3_0;
  v4[3] = &unk_1E8011A18;
  v4[4] = a1[6];
  [v2 invalidateSessionWithCompletion:v4];
  v3 = a1[5];
  if (v3)
  {
    dispatch_resume(v3);
  }
}

void __InvalidateSession_block_invoke_3_0(uint64_t a1)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __InvalidateSession_block_invoke_4;
  block[3] = &unk_1E8011A18;
  block[4] = *(a1 + 32);
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __InvalidateSession_block_invoke_4(uint64_t a1)
{
  v1 = *MEMORY[0x1E69DDBE8];
  if (*(*(*(a1 + 32) + 8) + 24) != *MEMORY[0x1E69DDBE8])
  {
    v3 = [MEMORY[0x1E69DC668] sharedApplication];
    [v3 endBackgroundTask:*(*(*(a1 + 32) + 8) + 24)];

    *(*(*(a1 + 32) + 8) + 24) = v1;
  }
}

void sub_1BDEA9DE0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDEACB90(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 48));
  _Unwind_Resume(a1);
}

void sub_1BDEB3038(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDEB3F9C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id PKAlertForDisplayableErrorWithHandlers(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a1;
  v8 = a2;
  v9 = a3;
  v10 = a4;
  if (!v7)
  {
    v12 = 0;
    goto LABEL_24;
  }

  v11 = PKTitleForDisplayableError();
  v37 = MEMORY[0x1BFB42D10](v7);
  v38 = v11;
  v12 = [MEMORY[0x1E69DC650] alertControllerWithTitle:v11 message:? preferredStyle:?];
  v13 = [v12 view];
  [v13 setAccessibilityIdentifier:*MEMORY[0x1E69B9778]];

  v14 = [v7 localizedRecoveryOptions];
  v15 = [v14 firstObject];

  v16 = [v7 userInfo];
  v17 = [v16 objectForKeyedSubscript:*MEMORY[0x1E69BB898]];

  if (v15)
  {
    v18 = v17 == 0;
  }

  else
  {
    v18 = 1;
  }

  v19 = !v18;
  v20 = [v7 userInfo];
  v21 = [v20 objectForKeyedSubscript:*MEMORY[0x1E69BB848]];

  v22 = 0x1E69DC000uLL;
  v39 = v10;
  v36 = v17;
  if (v19 == 1)
  {
    v35 = v9;
    v23 = MEMORY[0x1E69DC648];
    v45[0] = MEMORY[0x1E69E9820];
    v45[1] = 3221225472;
    v45[2] = __PKAlertForDisplayableErrorWithHandlers_block_invoke;
    v45[3] = &unk_1E8016480;
    v24 = &v46;
    v46 = v7;
    v47 = v17;
    v48 = v10;
    v25 = v15;
    v26 = [v23 actionWithTitle:v15 style:0 handler:v45];

    v27 = v47;
  }

  else
  {
    v25 = v15;
    if (!v8)
    {
      v26 = 0;
      goto LABEL_21;
    }

    v35 = v9;
    v28 = MEMORY[0x1E69DC648];
    v27 = PKLocalizedPaymentString(&cfstr_CouldNotAddCar_1.isa);
    v43[0] = MEMORY[0x1E69E9820];
    v43[1] = 3221225472;
    v43[2] = __PKAlertForDisplayableErrorWithHandlers_block_invoke_2;
    v43[3] = &unk_1E8011248;
    v24 = &v44;
    v44 = v8;
    v26 = [v28 actionWithTitle:v27 style:0 handler:v43];
  }

  if (v26)
  {
    [v26 setAccessibilityIdentifier:*MEMORY[0x1E69B9AE0]];
    [v12 addAction:v26];
    if (v21)
    {
      [v12 setPreferredAction:v26];
    }
  }

  v9 = v35;
  v22 = 0x1E69DC000;
  if (v19)
  {
    v29 = @"CANCEL";
LABEL_22:
    v30 = PKLocalizedString(&v29->isa);
    goto LABEL_23;
  }

  if (!v8)
  {
LABEL_21:
    v29 = @"OK_BUTTON_TITLE";
    goto LABEL_22;
  }

  v30 = PKLocalizedPaymentString(&cfstr_TryAgainButton.isa);
LABEL_23:
  v31 = v30;
  v32 = *(v22 + 1608);
  v40[0] = MEMORY[0x1E69E9820];
  v40[1] = 3221225472;
  v40[2] = __PKAlertForDisplayableErrorWithHandlers_block_invoke_3;
  v40[3] = &unk_1E8016458;
  v41 = v7;
  v42 = v9;
  v33 = [v32 actionWithTitle:v31 style:1 handler:v40];
  [v33 setAccessibilityIdentifier:*MEMORY[0x1E69B9708]];
  [v12 addAction:v33];

  v10 = v39;
LABEL_24:

  return v12;
}

uint64_t __PKAlertForDisplayableErrorWithHandlers_block_invoke(uint64_t a1)
{
  v25[3] = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) domain];
  v3 = [v2 isEqualToString:*MEMORY[0x1E69BB840]];

  if (!v3)
  {
    goto LABEL_7;
  }

  if ([*(a1 + 32) code] == 6)
  {
    v4 = MEMORY[0x1E69B8540];
    v5 = *MEMORY[0x1E69BB6E8];
    v25[0] = *MEMORY[0x1E69BB6E0];
    v25[1] = v5;
    v25[2] = *MEMORY[0x1E69BB728];
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v25 count:3];
    v7 = *MEMORY[0x1E69BA6F0];
    v8 = *MEMORY[0x1E69BABE8];
    v23[0] = *MEMORY[0x1E69BA680];
    v23[1] = v8;
    v9 = *MEMORY[0x1E69BB458];
    v24[0] = v7;
    v24[1] = v9;
    v23[2] = *MEMORY[0x1E69BA440];
    v24[2] = *MEMORY[0x1E69BAB18];
    v10 = MEMORY[0x1E695DF20];
    v11 = v24;
    v12 = v23;
  }

  else
  {
    if ([*(a1 + 32) code] != 9)
    {
      goto LABEL_7;
    }

    v4 = MEMORY[0x1E69B8540];
    v13 = *MEMORY[0x1E69BB6E8];
    v22[0] = *MEMORY[0x1E69BB6E0];
    v22[1] = v13;
    v22[2] = *MEMORY[0x1E69BB728];
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:3];
    v14 = *MEMORY[0x1E69BA6F0];
    v15 = *MEMORY[0x1E69BABE8];
    v20[0] = *MEMORY[0x1E69BA680];
    v20[1] = v15;
    v16 = *MEMORY[0x1E69BB590];
    v21[0] = v14;
    v21[1] = v16;
    v20[2] = *MEMORY[0x1E69BA440];
    v21[2] = *MEMORY[0x1E69BAB18];
    v10 = MEMORY[0x1E695DF20];
    v11 = v21;
    v12 = v20;
  }

  v17 = [v10 dictionaryWithObjects:v11 forKeys:v12 count:3];
  [v4 subjects:v6 sendEvent:v17];

LABEL_7:
  v18 = [MEMORY[0x1E6963608] defaultWorkspace];
  [v18 openSensitiveURL:*(a1 + 40) withOptions:0];

  result = *(a1 + 48);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

uint64_t __PKAlertForDisplayableErrorWithHandlers_block_invoke_3(uint64_t a1)
{
  v24[3] = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) domain];
  v3 = [v2 isEqualToString:*MEMORY[0x1E69BB840]];

  if (!v3)
  {
    goto LABEL_7;
  }

  if ([*(a1 + 32) code] == 6)
  {
    v4 = MEMORY[0x1E69B8540];
    v5 = *MEMORY[0x1E69BB6E8];
    v24[0] = *MEMORY[0x1E69BB6E0];
    v24[1] = v5;
    v24[2] = *MEMORY[0x1E69BB728];
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:3];
    v7 = *MEMORY[0x1E69BA6F0];
    v8 = *MEMORY[0x1E69BABE8];
    v22[0] = *MEMORY[0x1E69BA680];
    v22[1] = v8;
    v9 = *MEMORY[0x1E69BB458];
    v23[0] = v7;
    v23[1] = v9;
    v22[2] = *MEMORY[0x1E69BA440];
    v23[2] = *MEMORY[0x1E69BA468];
    v10 = MEMORY[0x1E695DF20];
    v11 = v23;
    v12 = v22;
  }

  else
  {
    if ([*(a1 + 32) code] != 9)
    {
      goto LABEL_7;
    }

    v4 = MEMORY[0x1E69B8540];
    v13 = *MEMORY[0x1E69BB6E8];
    v21[0] = *MEMORY[0x1E69BB6E0];
    v21[1] = v13;
    v21[2] = *MEMORY[0x1E69BB728];
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:3];
    v14 = *MEMORY[0x1E69BA6F0];
    v15 = *MEMORY[0x1E69BABE8];
    v19[0] = *MEMORY[0x1E69BA680];
    v19[1] = v15;
    v16 = *MEMORY[0x1E69BB590];
    v20[0] = v14;
    v20[1] = v16;
    v19[2] = *MEMORY[0x1E69BA440];
    v20[2] = *MEMORY[0x1E69BA468];
    v10 = MEMORY[0x1E695DF20];
    v11 = v20;
    v12 = v19;
  }

  v17 = [v10 dictionaryWithObjects:v11 forKeys:v12 count:3];
  [v4 subjects:v6 sendEvent:v17];

LABEL_7:
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

id PKAttributedStringCreateProvisioningBulletedParagraph(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if (v3)
  {
    v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v24 = PKFontForDefaultDesign(*MEMORY[0x1E69DDCF8], v4);
    [v5 setObject:? forKey:?];
    v6 = PKOBKBodyTextColor();
    v26 = *MEMORY[0x1E69DB650];
    [v5 setObject:v6 forKey:?];

    v7 = objc_alloc_init(MEMORY[0x1E69DB7C8]);
    [v7 setLineBreakMode:0];
    [v7 setFirstLineHeadIndent:0.0];
    v8 = *MEMORY[0x1E69DB688];
    v23 = v7;
    [v5 setObject:v7 forKey:*MEMORY[0x1E69DB688]];
    v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ ", @"•"];
    v10 = objc_alloc_init(MEMORY[0x1E69DB7C8]);
    v22 = v9;
    [v9 sizeWithAttributes:v5];
    [v10 setHeadIndent:?];
    [v10 setLineBreakMode:0];
    v25 = v5;
    v11 = [objc_alloc(MEMORY[0x1E696AD40]) initWithString:v3 attributes:v5];
    v12 = [v11 length];
    if (v12)
    {
      v13 = v12;
      v14 = 0;
      do
      {
        v15 = [v3 rangeOfString:@"•" options:0 range:{v14, v13 - v14}];
        if (v15 == 0x7FFFFFFFFFFFFFFFLL)
        {
          break;
        }

        v17 = v15;
        v18 = v16;
        v19 = [MEMORY[0x1E69DC888] lightGrayColor];
        [v11 addAttribute:v26 value:v19 range:{v17, v18}];

        [v11 addAttribute:v8 value:v10 range:{v17, v18}];
        v14 = v17 + v18;
      }

      while (v17 + v18 < v13);
    }

    v20 = [v11 copy];
  }

  else
  {
    v20 = 0;
  }

  return v20;
}

uint64_t CacheKeyIsFinalForMerchant(void *a1, void *a2, char a3)
{
  v5 = a1;
  v6 = [a2 logoImageURL];
  v7 = [v6 absoluteString];

  if (!v7 || (a3 & 1) != 0)
  {
    goto LABEL_8;
  }

  v8 = v5;
  v9 = v7;
  v10 = v9;
  if (v9 == v8)
  {

LABEL_8:
    v8 = 1;
    goto LABEL_9;
  }

  if (!v8)
  {

    goto LABEL_9;
  }

  v11 = [v8 isEqualToString:v9];

  if (v11)
  {
    goto LABEL_8;
  }

  v8 = 0;
LABEL_9:

  return v8;
}

Class initBCSBusinessQueryService()
{
  if (qword_1EBD6AD80 != -1)
  {
    dispatch_once(&qword_1EBD6AD80, &__block_literal_global_216);
  }

  result = objc_getClass("BCSBusinessQueryService");
  _MergedGlobals_609 = result;
  getBCSBusinessQueryServiceClass = BCSBusinessQueryServiceFunction;
  return result;
}

void *__LoadBusinessChatService_block_invoke()
{
  result = dlopen("/System/Library/Frameworks/BusinessChatService.framework/BusinessChatService", 2);
  LoadBusinessChatService_frameworkLibrary = result;
  return result;
}

void sub_1BDEB86E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&a19);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDEB91C0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_1BDEBC514(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a15, 8);
  _Block_object_dispose(&a27, 8);
  _Unwind_Resume(a1);
}

Class initMFMailComposeViewController_0()
{
  if (qword_1EBD6AD90 != -1)
  {
    dispatch_once(&qword_1EBD6AD90, &__block_literal_global_219);
  }

  result = objc_getClass("MFMailComposeViewController");
  _MergedGlobals_610 = result;
  getMFMailComposeViewControllerClass_0 = MFMailComposeViewControllerFunction_0;
  return result;
}

void *__LoadMessageUI_block_invoke_0()
{
  result = dlopen("/System/Library/Frameworks/MessageUI.framework/MessageUI", 2);
  LoadMessageUI_frameworkLibrary_0 = result;
  return result;
}

uint64_t PKAuthorizationViewCellLabelLargeFont()
{
  v0 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:@"UICTFontTextStyleShortFootnote"];
  [v0 pointSize];
  v2 = v1;

  v3 = MEMORY[0x1E69DB878];

  return [v3 systemFontOfSize:v2 * 1.53846154];
}

id PKConstrainedAuthorizationViewCellLabelSmallFont(void *a1, int a2)
{
  if (a2)
  {
    v2 = 2;
  }

  else
  {
    v2 = 0;
  }

  return PKFontForDefaultDesign(@"UICTFontTextStyleShortFootnote", a1, v2, 0);
}

id PKConstrainedAuthorizationViewCellLabelLargeFont(void *a1, int a2)
{
  if (a2)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  v4 = PKFontForDefaultDesign(@"UICTFontTextStyleShortFootnote", a1, v3, 0);
  [v4 pointSize];
  v6 = v5;

  v7 = v6 * 1.53846154;
  if (a2)
  {
    [MEMORY[0x1E69DB878] boldSystemFontOfSize:v7];
  }

  else
  {
    [MEMORY[0x1E69DB878] systemFontOfSize:v7];
  }
  v8 = ;

  return v8;
}

void sub_1BDEC3B6C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDEC4178(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_1BDEC4374(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDEC524C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_1BDEC60DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDEC6A40(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v3 - 72));
  _Unwind_Resume(a1);
}

void sub_1BDEC6E10(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 40));
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v3 - 72));
  _Unwind_Resume(a1);
}

void sub_1BDEC7188(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDEC7618(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, id location)
{
  objc_destroyWeak((v23 + 32));
  objc_destroyWeak((v24 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDEC7DC4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 + 56));
  objc_destroyWeak((v3 - 72));
  _Unwind_Resume(a1);
}

void sub_1BDEC8944(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDEC8B7C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

Class initFKBankConnectTermsAndConditionsViewControllerProvider()
{
  if (qword_1EBD6ADA0 != -1)
  {
    dispatch_once(&qword_1EBD6ADA0, &__block_literal_global_336);
  }

  result = objc_getClass("FKBankConnectTermsAndConditionsViewControllerProvider");
  _MergedGlobals_611 = result;
  getFKBankConnectTermsAndConditionsViewControllerProviderClass = FKBankConnectTermsAndConditionsViewControllerProviderFunction;
  return result;
}

void *__LoadFinanceKitUI_block_invoke_4()
{
  result = dlopen("/System/Library/PrivateFrameworks/FinanceKitUI.framework/FinanceKitUI", 2);
  LoadFinanceKitUI_frameworkLibrary_4 = result;
  return result;
}

Class initFKBankConnectReviewAccountConnectionFlowViewControllerProvider()
{
  if (qword_1EBD6ADA0 != -1)
  {
    dispatch_once(&qword_1EBD6ADA0, &__block_literal_global_336);
  }

  result = objc_getClass("FKBankConnectReviewAccountConnectionFlowViewControllerProvider");
  qword_1EBD6ADA8 = result;
  getFKBankConnectReviewAccountConnectionFlowViewControllerProviderClass = FKBankConnectReviewAccountConnectionFlowViewControllerProviderFunction;
  return result;
}

Class initFKBankConnectAuthorizationViewControllerProvider()
{
  if (qword_1EBD6ADA0 != -1)
  {
    dispatch_once(&qword_1EBD6ADA0, &__block_literal_global_336);
  }

  result = objc_getClass("FKBankConnectAuthorizationViewControllerProvider");
  qword_1EBD6ADB0 = result;
  getFKBankConnectAuthorizationViewControllerProviderClass = FKBankConnectAuthorizationViewControllerProviderFunction;
  return result;
}

void sub_1BDECA500(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDECA6A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDECC72C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 72));
  _Unwind_Resume(a1);
}

void sub_1BDECCC7C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1BDECD018(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  objc_destroyWeak((v11 + 32));
  _Unwind_Resume(a1);
}

void sub_1BDECD5AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDED036C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, char a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, char a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, char a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, id location)
{
  objc_destroyWeak((v60 + 48));
  objc_destroyWeak(&a44);
  objc_destroyWeak(&a52);
  _Block_object_dispose(&a53, 8);
  objc_destroyWeak(&location);
  _Block_object_dispose((v61 - 176), 8);
  _Unwind_Resume(a1);
}

void sub_1BDED197C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDED1B28(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 56));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_1BDED1E4C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_1BDED3264(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDED4960(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDED4D14(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDED533C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 48));
  _Unwind_Resume(a1);
}

void sub_1BDED68AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDED6A14(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDED6BB8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDED6EF4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDED7FB8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 72));
  _Unwind_Resume(a1);
}

void sub_1BDED82A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDED8F90(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDEDB1AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDEDB5A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDEDBAAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33)
{
  objc_destroyWeak((v34 + 56));
  objc_destroyWeak((v33 + 64));
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose(&a33, 8);
  _Block_object_dispose((v35 - 160), 8);
  objc_destroyWeak((v35 - 112));
  _Unwind_Resume(a1);
}

void sub_1BDEDE984(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDEDEE68(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 136));
  _Unwind_Resume(a1);
}

void sub_1BDEE09F4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v3 - 128));
  _Unwind_Resume(a1);
}

void sub_1BDEE550C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDEE5FDC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 104));
  _Unwind_Resume(a1);
}

void sub_1BDEE6A70(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 72));
  _Block_object_dispose((v2 - 128), 8);
  _Unwind_Resume(a1);
}

double PKPassFooterContentViewHorizontalContentInset()
{
  v0 = PKUIGetMinScreenWidthType();
  result = 4.0;
  if (!v0)
  {
    return 20.0;
  }

  return result;
}

void sub_1BDEE8614(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDEE98A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak(&a15);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id PKISO18013DataReleaseRequestFromSTSRequest(void *a1, void *a2)
{
  v76 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v54 = a2;
  v4 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v69 = 0u;
  v70 = 0u;
  v71 = 0u;
  v72 = 0u;
  obj = [v3 elementsByNamespace];
  v58 = [obj countByEnumeratingWithState:&v69 objects:v75 count:16];
  if (v58)
  {
    v56 = *v70;
    v57 = v3;
    do
    {
      v5 = 0;
      do
      {
        if (*v70 != v56)
        {
          objc_enumerationMutation(obj);
        }

        v59 = v5;
        v6 = *(*(&v69 + 1) + 8 * v5);
        v65 = 0u;
        v66 = 0u;
        v67 = 0u;
        v68 = 0u;
        v7 = [v3 elementsByNamespace];
        v8 = [v7 objectForKey:v6];

        v9 = [v8 countByEnumeratingWithState:&v65 objects:v74 count:16];
        if (v9)
        {
          v10 = v9;
          v11 = *v66;
          do
          {
            for (i = 0; i != v10; ++i)
            {
              if (*v66 != v11)
              {
                objc_enumerationMutation(v8);
              }

              v13 = *(*(&v65 + 1) + 8 * i);
              v14 = objc_alloc_init(MEMORY[0x1E69B92E8]);
              v15 = [v13 name];
              [v14 setIdentifier:v15];

              [v14 setElementNamespace:v6];
              v16 = [v13 retention];
              if ((v16 - 1) < 3)
              {
                v17 = (v16 - 1) + 1;
              }

              else
              {
                v17 = 0;
              }

              [v14 setRetentionIntent:v17];
              [v4 addObject:v14];
            }

            v10 = [v8 countByEnumeratingWithState:&v65 objects:v74 count:16];
          }

          while (v10);
        }

        v5 = v59 + 1;
        v3 = v57;
      }

      while (v59 + 1 != v58);
      v58 = [obj countByEnumeratingWithState:&v69 objects:v75 count:16];
    }

    while (v58);
  }

  v18 = [v4 copy];
  v19 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v20 = [v3 docType];

  if (v20)
  {
    v21 = [PKISO180135RecognizedElements alloc];
    v22 = v3;
    v23 = [v3 docType];
    v24 = [(PKISO180135RecognizedElements *)v21 initWithDocumentType:v23 documentElements:v18];

    v63 = 0u;
    v64 = 0u;
    v61 = 0u;
    v62 = 0u;
    v60 = v18;
    v25 = v18;
    v26 = [v25 countByEnumeratingWithState:&v61 objects:v73 count:16];
    if (v26)
    {
      v27 = v26;
      v28 = *v62;
      do
      {
        for (j = 0; j != v27; ++j)
        {
          if (*v62 != v28)
          {
            objc_enumerationMutation(v25);
          }

          v30 = *(*(&v61 + 1) + 8 * j);
          v31 = [(PKISO180135RecognizedElements *)v24 dataElements];
          v32 = [v31 containsObject:v30];

          if (v32)
          {
            [v19 addObject:v30];
          }
        }

        v27 = [v25 countByEnumeratingWithState:&v61 objects:v73 count:16];
      }

      while (v27);
    }

    if ([v19 count])
    {
      v33 = objc_alloc_init(MEMORY[0x1E69B8920]);
      v34 = objc_alloc(MEMORY[0x1E69B92E0]);
      v3 = v22;
      v35 = [v22 docType];
      v36 = [v34 initWithDocumentType:v35];

      v37 = [v19 copy];
      [v36 setElements:v37];

      v38 = v54;
      v39 = [v54 privacyPolicyURL];
      [v36 setPrivacyPolicyURL:v39];

      v40 = [v54 certificateData];
      [v36 setCertificateData:v40];

      [v33 setReleasedData:v36];
      v41 = [v54 identifier];
      [v33 setRpIdentifier:v41];

      v42 = [v54 organization];
      [v33 setOrganizationName:v42];

      v43 = [v54 organizationUnit];
      [v33 setOrganizationUnit:v43];

      v44 = [v54 iconData];
      [v33 setIconData:v44];

      v45 = [v54 iconURL];
      [v33 setIconURL:v45];

      v46 = [v54 merchantCategoryCode];
      [v33 setIndustryCode:v46];

      v47 = [v3 authenticationACL];
      [v33 setAuthenticationACL:v47];

      v48 = [v54 readerAnalyticsData];
      [v33 setTrustedRelyingParty:{objc_msgSend(v48, "isTrusted")}];

      v49 = [v54 readerAnalyticsData];
      v50 = [v49 untrustedIdentifier];
      [v33 setAnalyticsIdentifier:v50];

      v51 = [v54 readerAnalyticsData];
      v52 = [v51 untrustedOrganization];
      [v33 setAnalyticsOrganizationName:v52];
    }

    else
    {
      v33 = 0;
      v3 = v22;
      v38 = v54;
    }

    v18 = v60;
  }

  else
  {
    v33 = 0;
    v38 = v54;
  }

  return v33;
}

uint64_t CreateAtrributedString(void *a1, void *a2)
{
  v10[1] = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  if ([v3 length])
  {
    v5 = objc_alloc(MEMORY[0x1E696AAB0]);
    v9 = *MEMORY[0x1E69DB648];
    v10[0] = v4;
    v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:&v9 count:1];
    v7 = [v5 initWithString:v3 attributes:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

void sub_1BDEEBB14(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id CreateLabel_0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_alloc_init(MEMORY[0x1E69DCC10]);
  [v4 setNumberOfLines:a1];
  v5 = [MEMORY[0x1E69DC888] clearColor];
  [v4 setBackgroundColor:v5];

  if (v3)
  {
    [v4 setTextColor:v3];
  }

  else
  {
    v6 = [MEMORY[0x1E69DC888] labelColor];
    [v4 setTextColor:v6];
  }

  return v4;
}

void sub_1BDEED458(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, char a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, char a62, uint64_t a63)
{
  _Block_object_dispose(&a54, 8);
  _Block_object_dispose(&a62, 8);
  _Block_object_dispose(&a70, 8);
  _Unwind_Resume(a1);
}

void sub_1BDEF1B10(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 88));
  _Unwind_Resume(a1);
}

void sub_1BDEF40D8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1BDEF45A4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v3 + 40));
  objc_destroyWeak((v2 + 40));
  objc_destroyWeak((v1 + 48));
  _Block_object_dispose((v4 - 136), 8);
  objc_destroyWeak((v4 - 88));
  _Unwind_Resume(a1);
}

void sub_1BDEF4D44(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDEF6E44(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak(&STACK[0x350]);
  _Unwind_Resume(a1);
}

void sub_1BDEF7734(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

Class initCNAvatarView_11()
{
  if (qword_1EBDAAC10 != -1)
  {
    dispatch_once(&qword_1EBDAAC10, &__block_literal_global_702);
  }

  result = objc_getClass("CNAvatarView");
  _MergedGlobals_4_2 = result;
  _MergedGlobals_3_10 = CNAvatarViewFunction_11;
  return result;
}

Class initCNAvatarCardController_7()
{
  if (qword_1EBDAAC10 != -1)
  {
    dispatch_once(&qword_1EBDAAC10, &__block_literal_global_702);
  }

  result = objc_getClass("CNAvatarCardController");
  qword_1EBDAAC18 = result;
  off_1EE9A1EA8 = CNAvatarCardControllerFunction_7;
  return result;
}

Class initCNContactViewController_4()
{
  if (qword_1EBDAAC10 != -1)
  {
    dispatch_once(&qword_1EBDAAC10, &__block_literal_global_702);
  }

  result = objc_getClass("CNContactViewController");
  qword_1EBDAAC20 = result;
  off_1EE9A1EB0 = CNContactViewControllerFunction_4;
  return result;
}

void sub_1BDEF92A0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1BDEF97DC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1BDEFD0D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id location)
{
  objc_destroyWeak((v26 + 32));
  objc_destroyWeak((v25 + 32));
  objc_destroyWeak((v24 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDEFD44C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDEFDE70(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDEFF69C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDEFFA44(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v21 + 40));
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDEFFF38(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDF000A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDF002A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDF00B18(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v19 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDF01064(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDF02640(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1BDF028B4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_1BDF03188(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDF0624C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDF06B70(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDF06EF4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

Class initNPKCompanionAgentConnection_6()
{
  if (qword_1EBD6ADC0 != -1)
  {
    dispatch_once(&qword_1EBD6ADC0, &__block_literal_global_96_1);
  }

  result = objc_getClass("NPKCompanionAgentConnection");
  _MergedGlobals_612 = result;
  getNPKCompanionAgentConnectionClass_5 = NPKCompanionAgentConnectionFunction_6;
  return result;
}

void *__LoadNanoPassKit_block_invoke_7()
{
  result = dlopen("/System/Library/PrivateFrameworks/NanoPassKit.framework/NanoPassKit", 2);
  LoadNanoPassKit_frameworkLibrary_7 = result;
  return result;
}

void sub_1BDF07F68(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDF08E8C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v3 + 48));
  objc_destroyWeak((v2 + 48));
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v4 - 104));
  _Unwind_Resume(a1);
}

void sub_1BDF0C6B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t PKPaymentProgressStateBaseBiometricState()
{
  if (PKPearlIsAvailable())
  {
    return 3;
  }

  else
  {
    return 0;
  }
}

uint64_t PKPaymentProgressStateBaseStateForAuthenticatorEvaluationState(uint64_t a1, uint64_t a2, unsigned __int8 a3, char a4)
{
  v5 = 13;
  if (a1 > 2)
  {
    if (a1 == 3)
    {
      v5 = 3;
    }

    if (a1 == 4)
    {
      v5 = 4;
    }

    if (a1 == 5)
    {
      v5 = 11;
    }
  }

  else if (a1)
  {
    if (a1 == 1)
    {
      IsAvailable = PKPearlIsAvailable();
      v5 = 5;
      if (!IsAvailable)
      {
        v5 = 0;
      }
    }

    else if (a1 == 2)
    {
      v5 = 2;
    }
  }

  else
  {
    v5 = PKPearlIsAvailable() && (a4 & 1) != 0 || a2 == 1;
  }

  if ((a3 & (v5 == 0)) != 0)
  {
    return 4;
  }

  else
  {
    return v5;
  }
}

void sub_1BDF0DE88(_Unwind_Exception *a1)
{
  objc_destroyWeak(&STACK[0x2D0]);
  _Block_object_dispose(&STACK[0x2E8], 8);
  objc_destroyWeak(&STACK[0x308]);
  _Unwind_Resume(a1);
}

id PKPaymentAuthorizationFooterViewFontForAuthorizationLayoutStyle(void *a1)
{
  if (a1 == 1)
  {
    a1 = PKFontForDefaultDesign(*MEMORY[0x1E69DDD80], *MEMORY[0x1E69DDC38]);
  }

  else if (!a1)
  {
    a1 = PKConstrainedAuthorizationViewBodyFont(*MEMORY[0x1E69DDC38]);
  }

  return a1;
}

void sub_1BDF10710(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDF132B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDF1393C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDF151F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id PKSegmentedBarCreateBarImage(void *a1, void *a2, int a3, char a4, double a5, double a6)
{
  v11 = a1;
  v12 = a2;
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = __Block_byref_object_copy__62;
  v28 = __Block_byref_object_dispose__62;
  v29 = 0;
  v13 = objc_autoreleasePoolPush();
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __PKSegmentedBarCreateBarImage_block_invoke;
  v17[3] = &unk_1E8023490;
  v14 = v11;
  v22 = a3;
  v20 = a5;
  v21 = a6;
  v23 = a4;
  v18 = v14;
  v19 = &v24;
  PKUIPerformWithEffectiveTraitCollection(v12, v17);

  objc_autoreleasePoolPop(v13);
  v15 = v25[5];
  _Block_object_dispose(&v24, 8);

  return v15;
}

void sub_1BDF17F54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __PKSegmentedBarCreateBarImage_block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) numberOfSegments];
  if (v2)
  {
    v3 = v2;
    v4 = PKUIPixelLength();
    v5 = *(a1 + 64);
    if (v5)
    {
      v6 = *(a1 + 48);
    }

    else
    {
      v6 = v4;
    }

    if (v5)
    {
      v7 = v4;
    }

    else
    {
      v7 = *(a1 + 48);
    }

    v8 = PKUIScreenScale();
    v9 = v8 > 0.0;
    v10 = v8 != 1.0;
    v11 = v9 && v10;
    v12 = ceil(v8 * v7);
    v13 = ceil(v8 * v6);
    if (!v9 || !v10)
    {
      v12 = v7;
      v13 = v6;
    }

    v14 = v12;
    v15 = v13;
    v16 = [MEMORY[0x1E69B86D8] create16FloatExtendedWithSize:v12 configuration:{v13, 65794}];
    if (v16)
    {
      v17 = v16;
      if (v11)
      {
        v47[0] = MEMORY[0x1E69E9820];
        v47[1] = 3221225472;
        v47[2] = __PKSegmentedBarCreateBarImage_block_invoke_2;
        v47[3] = &__block_descriptor_40_e20_v16__0__CGContext__8l;
        *&v47[4] = v8;
        [v16 accessContext:v47];
      }

      [*(a1 + 32) totalValue];
      v19 = v18;
      v20 = *(a1 + 56);
      if (v20 <= 0.0)
      {
        v20 = *(a1 + 48);
      }

      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = __PKSegmentedBarCreateBarImage_block_invoke_3;
      aBlock[3] = &unk_1E80233B0;
      v44 = *(a1 + 32);
      v21 = *(a1 + 48);
      v45 = v19;
      v46 = v21;
      v22 = _Block_copy(aBlock);
      v36[0] = MEMORY[0x1E69E9820];
      v36[1] = 3221225472;
      v36[2] = __PKSegmentedBarCreateBarImage_block_invoke_4;
      v36[3] = &unk_1E80233D8;
      v39 = v3;
      v23 = v22;
      v38 = v23;
      v37 = *(a1 + 32);
      v42 = *(a1 + 64);
      v24 = *(a1 + 48);
      v40 = v4;
      v41 = v24;
      [v17 accessContext:v36];
      if (*(a1 + 68) == 1)
      {
        v25 = [MEMORY[0x1E69B86D8] create16FloatExtendedWithSize:v14 configuration:{v15, 65794}];
        v26 = v25;
        if (v25)
        {
          v31[0] = MEMORY[0x1E69E9820];
          v31[1] = 3221225472;
          v31[2] = __PKSegmentedBarCreateBarImage_block_invoke_5;
          v31[3] = &unk_1E8023420;
          v27 = v25;
          v32 = v27;
          v33 = v8;
          v34 = v20;
          v35 = *(a1 + 64);
          [v17 accessData:v31];
          v28 = v27;

          v17 = v28;
        }
      }

      v29 = [MEMORY[0x1E69B86E0] create8Uint];
      [v29 setColorSpace:PKColorSpaceStandardRGB() withPolicy:&__block_literal_global_237];
      [v29 convertContext:v17];
      v30[0] = MEMORY[0x1E69E9820];
      v30[1] = 3221225472;
      v30[2] = __PKSegmentedBarCreateBarImage_block_invoke_8;
      v30[3] = &unk_1E8023468;
      v30[4] = *(a1 + 40);
      *&v30[5] = v8;
      [v17 accessContext:v30];
    }
  }
}

uint64_t __PKSegmentedBarCreateBarImage_block_invoke_2(uint64_t a1, CGContextRef c)
{
  CGContextScaleCTM(c, *(a1 + 32), *(a1 + 32));
  CGContextGetCTM(&v4, c);
  return CGContextSetBaseCTM();
}

double __PKSegmentedBarCreateBarImage_block_invoke_3(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) valueForSegmentAtIndex:a2];
  if (v2 <= 0.0)
  {
    return 0.0;
  }

  PKFloatRoundToPixel();
  return result;
}

void __PKSegmentedBarCreateBarImage_block_invoke_4(uint64_t a1, CGContext *a2)
{
  if (*(a1 + 48))
  {
    v4 = 0;
    v5 = 0;
    v6 = 0.0;
    do
    {
      v7 = (*(*(a1 + 40) + 16))();
      if (v7 <= 0.0)
      {
        if ((v4 & 1) == 0)
        {
          v15 = [*(a1 + 32) colorForSegmentAtIndex:v5];
          CGContextSetFillColorWithColor(a2, [v15 CGColor]);
        }
      }

      else
      {
        v8 = v7;
        v9 = [*(a1 + 32) colorForSegmentAtIndex:v5];
        CGContextSetFillColorWithColor(a2, [v9 CGColor]);

        v10 = *(a1 + 72);
        if (v10)
        {
          v11 = 0.0;
        }

        else
        {
          v11 = v6;
        }

        if (v10)
        {
          v12 = v6;
        }

        else
        {
          v12 = 0.0;
        }

        v13 = *(a1 + 56);
        if (v10)
        {
          v14 = *(a1 + 56);
        }

        else
        {
          v14 = v8;
        }

        if (v10)
        {
          v13 = v8;
        }

        CGContextFillRect(a2, *&v11);
        v6 = v6 + v8;
      }

      ++v5;
      v4 = 1;
    }

    while (v5 < *(a1 + 48));
  }

  else
  {
    v6 = 0.0;
  }

  v16 = *(a1 + 64);
  if (v6 < v16)
  {
    v17 = *(a1 + 72);
    v18 = 0.0;
    if (v17)
    {
      v19 = 0.0;
    }

    else
    {
      v19 = v6;
    }

    if (v17)
    {
      v18 = v6;
    }

    v20 = v16 - v6;
    if (v17)
    {
      v21 = *(a1 + 56);
    }

    else
    {
      v21 = v16 - v6;
    }

    if (!v17)
    {
      v20 = *(a1 + 56);
    }

    CGContextFillRect(a2, *(&v18 - 1));
  }
}

uint64_t __PKSegmentedBarCreateBarImage_block_invoke_5(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __PKSegmentedBarCreateBarImage_block_invoke_6;
  v5[3] = &__block_descriptor_60_e79_v24__0r__vImage_CGImageFormat_II__CGColorSpace_II_di_8r__vImage_Buffer__vQQQ_16l;
  v6 = *(a1 + 40);
  v8 = *(a1 + 56);
  v7 = a3;
  return [v3 accessData:v5];
}

vImage_Error __PKSegmentedBarCreateBarImage_block_invoke_6(uint64_t a1, uint64_t a2, const vImage_Buffer *a3)
{
  v56 = *MEMORY[0x1E69E9840];
  v5 = fmin(fabs(*(a1 + 32) * 0.05 * *(a1 + 40)), 1000.0);
  v6 = 2 * fmax(ceilf(v5 * 3.0), 1.0);
  v7 = *(a1 + 56);
  v9 = MEMORY[0x1EEE9AC00](a1, a2);
  v12 = (v42.i32 - v11);
  if (v6)
  {
    *v10.i32 = v8;
    v13 = vdupq_n_s64(v6);
    v45 = vdupq_lane_s32(v10, 0);
    v44 = vdupq_lane_s64(COERCE__INT64(((*&v9 * *&v9) + (*&v9 * *&v9))), 0);
    v14 = (v6 & 0xFFFFFFFFFFFFFFFCLL) + 4;
    v15 = xmmword_1BE114BA0;
    v16 = xmmword_1BE0CB9B0;
    v17 = v12 + 2;
    v18 = 0.0;
    v43 = vnegq_f64(0);
    v42 = vdupq_n_s64(4uLL);
    v46 = v13;
    do
    {
      v19 = vcgeq_u64(v13, v16);
      v51 = v19;
      v52 = v16;
      v20 = vmovn_s64(v19);
      *v19.i8 = vuzp1_s16(v20, *v19.i8);
      v49 = v19;
      v53 = v15;
      v21 = vsubq_f32(vcvt_hight_f32_f64(vcvt_f32_f64(vcvtq_f64_u64(v16)), vcvtq_f64_u64(v15)), v45);
      v22 = vmulq_f32(v21, vnegq_f32(v21));
      v54 = vdivq_f64(vcvtq_f64_f32(*v22.f32), v44);
      v50 = vdivq_f64(vcvt_hight_f64_f32(v22), v44);
      *&v23 = exp(v50.f64[1]);
      v48 = v23;
      v24.f64[0] = exp(v50.f64[0]);
      v50 = v24;
      *&v25 = exp(v54.f64[1]);
      v47 = v25;
      *v26.i64 = exp(v54.f64[0]);
      v26.i64[1] = v47;
      if (v49.i8[0])
      {
        v27 = *v26.i64;
        *(v17 - 2) = v27;
      }

      if (vuzp1_s16(v20, *&v26).i8[2])
      {
        v28 = *&v26.i64[1];
        *(v17 - 1) = v28;
      }

      v29.i64[0] = *&v50.f64[0];
      v29.i64[1] = v48;
      v13 = v46;
      v30 = v53;
      v31 = vcgeq_u64(v46, v53);
      if (vuzp1_s16(*&v26, vmovn_s64(v31)).i32[1])
      {
        v32 = v50.f64[0];
        *v17 = v32;
        v33 = *&v29.i64[1];
        v17[1] = v33;
      }

      v34 = vbslq_s8(v31, v29, v43);
      v35 = vbslq_s8(v51, v26, v43);
      v18 = v18 + *v35.i64 + *&v35.i64[1] + *v34.i64 + *&v34.i64[1];
      v15 = vaddq_s64(v30, v42);
      v16 = vaddq_s64(v52, v42);
      v17 += 4;
      v14 -= 4;
    }

    while (v14);
    v36 = v6 + 1;
    v37 = v12;
    do
    {
      v38 = *v37 / v18;
      *v37++ = v38;
      --v36;
    }

    while (v36);
  }

  else
  {
    *v12 = 1.0;
  }

  *backgroundColor = 0;
  if (v7)
  {
    v39 = v6 | 1;
  }

  else
  {
    v39 = 1;
  }

  if (v7)
  {
    v40 = 1;
  }

  else
  {
    v40 = v6 | 1;
  }

  return vImageConvolve_ARGB16F(*(a1 + 48), a3, 0, 0, 0, v12, v39, v40, backgroundColor, 0x1018u);
}

void __PKSegmentedBarCreateBarImage_block_invoke_8(uint64_t a1, CGContextRef context)
{
  Image = CGBitmapContextCreateImage(context);
  if (Image)
  {
    v4 = Image;
    v5 = [MEMORY[0x1E69DCAB8] imageWithCGImage:Image scale:0 orientation:*(a1 + 40)];
    v6 = *(*(a1 + 32) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;

    CFRelease(v4);
    v8 = [*(*(*(a1 + 32) + 8) + 40) resizableImageWithCapInsets:1 resizingMode:{*MEMORY[0x1E69DDCE0], *(MEMORY[0x1E69DDCE0] + 8), *(MEMORY[0x1E69DDCE0] + 16), *(MEMORY[0x1E69DDCE0] + 24)}];
    v9 = *(*(a1 + 32) + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = v8;
  }
}

void sub_1BDF1E2F4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 88));
  _Unwind_Resume(a1);
}

void sub_1BDF20BF8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, id location)
{
  objc_destroyWeak(&a35);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDF21104(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1BDF22870(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDF23B00(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, id location)
{
  objc_destroyWeak((v23 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDF260BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, id location)
{
  objc_destroyWeak((v23 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

BOOL BarButtonItemsEqual(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = [v3 count];
  if (v5 == [v4 count])
  {
    v6 = [v4 count];
    if (v6)
    {
      v7 = 0;
      v8 = v6 - 1;
      do
      {
        v9 = [v3 objectAtIndexedSubscript:v7];
        v10 = [v4 objectAtIndexedSubscript:v7];

        v11 = v9 == v10;
        v12 = v9 == v10;
        if (!v11)
        {
          break;
        }

        v11 = v8 == v7++;
      }

      while (!v11);
    }

    else
    {
      v12 = 1;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

void sub_1BDF27814(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_1BDF29D14(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 40));
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v3 - 104));
  _Unwind_Resume(a1);
}

void sub_1BDF2AA90(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41, uint64_t a42, uint64_t a43, uint64_t a44, id location)
{
  objc_destroyWeak(&a28);
  _Block_object_dispose(&a29, 8);
  _Block_object_dispose(&a35, 8);
  _Block_object_dispose(&a41, 8);
  objc_destroyWeak(&location);
  _Block_object_dispose((v45 - 136), 8);
  _Unwind_Resume(a1);
}

void sub_1BDF2BCA4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak((v21 + 80));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDF2C1A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak((v21 + 80));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDF2C6B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak((v21 + 80));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDF2CDB8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDF2D0C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDF2D528(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v19 + 72));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDF2D890(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDF2E62C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_1BDF2EB20(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDF2EC0C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1BDF2EECC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1BDF2F784(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v19 + 64));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDF2F8D0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1BDF2FE70(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v19 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDF2FF8C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 56));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_1BDF301D8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 64));
  _Block_object_dispose((v2 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_1BDF30A48(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 56));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1BDF310CC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1BDF31B90(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 48));
  objc_destroyWeak((v1 + 40));
  _Unwind_Resume(a1);
}

void sub_1BDF32394(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDF32A2C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDF33510(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v19 + 64));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDF33DEC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 64));
  _Unwind_Resume(a1);
}

void sub_1BDF341E8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 64));
  _Unwind_Resume(a1);
}

void sub_1BDF347DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void __destructor_8_s0_s8_S_s16(uint64_t a1)
{
  v2 = *(a1 + 16);
}

void __destructor_8_s0_s8_S_s16_s24_s32_s40(uint64_t a1)
{
  __destructor_8_s0_s8_S_s16(a1 + 16);
  v2 = *(a1 + 40);
}

Class initBKDeviceManager_0()
{
  if (qword_1EBDAAC58 != -1)
  {
    dispatch_once(&qword_1EBDAAC58, &__block_literal_global_847);
  }

  result = objc_getClass("BKDeviceManager");
  _MergedGlobals_56 = result;
  _MergedGlobals_55 = BKDeviceManagerFunction_0;
  return result;
}

void *__LoadBiometricKit_block_invoke_0()
{
  result = dlopen("/System/Library/PrivateFrameworks/BiometricKit.framework/BiometricKit", 2);
  LoadBiometricKit_frameworkLibrary_0 = result;
  return result;
}

Class initBKDevice_0()
{
  if (qword_1EBDAAC58 != -1)
  {
    dispatch_once(&qword_1EBDAAC58, &__block_literal_global_847);
  }

  result = objc_getClass("BKDevice");
  qword_1EBDAAC60 = result;
  off_1EE9A1ED0 = BKDeviceFunction_0;
  return result;
}

Class initHUScheduleAccessViewController()
{
  if (qword_1EBDAAC70 != -1)
  {
    dispatch_once(&qword_1EBDAAC70, &__block_literal_global_873);
  }

  result = objc_getClass("HUScheduleAccessViewController");
  qword_1EBDAAC68 = result;
  getHUScheduleAccessViewControllerClass = HUScheduleAccessViewControllerFunction;
  return result;
}

void *__LoadHomeUICommon_block_invoke()
{
  result = dlopen("/System/Library/PrivateFrameworks/HomeUICommon.framework/HomeUICommon", 2);
  LoadHomeUICommon_frameworkLibrary = result;
  return result;
}

void sub_1BDF392FC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 88));
  _Unwind_Resume(a1);
}

void sub_1BDF3AE0C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_1BDF3C3A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1BDF3CB04(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak(&a17);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDF3CC5C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDF3D7CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDF410DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void InvalidateAssertion(void *a1)
{
  v1 = a1;
  v2 = [PKGetClassNFHardwareManager() sharedHardwareManagerWithNoUI];
  [v2 releaseAssertion:v1 completion:0];
}

void sub_1BDF46320(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_1BDF46638(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1BDF47BF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1BDF48A68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1BDF49B38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, id a35)
{
  objc_destroyWeak(&a35);
  objc_destroyWeak((v35 - 192));
  _Unwind_Resume(a1);
}

void sub_1BDF4A3C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDF4AE8C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDF504CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, id location)
{
  objc_destroyWeak((v34 + 32));
  objc_destroyWeak((v35 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDF51628(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, id a31)
{
  objc_destroyWeak((v31 + 32));
  objc_destroyWeak(&a31);
  objc_destroyWeak((v32 - 176));
  _Unwind_Resume(a1);
}

void sub_1BDF55BB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1BDF5DF48(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v3 - 104));
  _Unwind_Resume(a1);
}

void sub_1BDF60594(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDF61884(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDF62278(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 96));
  _Unwind_Resume(a1);
}

void sub_1BDF627F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDF62D5C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDF64FBC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDF65E3C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDF66430(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDF66E60(_Unwind_Exception *a1)
{
  objc_destroyWeak(v1);
  objc_destroyWeak((v2 - 88));
  _Unwind_Resume(a1);
}

void sub_1BDF67D84(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, id location, char a45)
{
  objc_destroyWeak((v46 + 72));
  objc_destroyWeak((v45 + 40));
  objc_destroyWeak(&location);
  _Block_object_dispose(&a45, 8);
  _Block_object_dispose((v47 - 224), 8);
  _Block_object_dispose((v47 - 176), 8);
  _Block_object_dispose((v47 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_1BDF68CC0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDF69488(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDF6987C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDF69E30(_Unwind_Exception *a1)
{
  objc_destroyWeak(v1);
  _Block_object_dispose((v2 - 176), 8);
  _Block_object_dispose((v2 - 216), 8);
  objc_destroyWeak((v2 - 184));
  _Unwind_Resume(a1);
}

void sub_1BDF6AB84(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 64));
  objc_destroyWeak((v2 - 128));
  _Unwind_Resume(a1);
}

void sub_1BDF6AF1C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDF6B45C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 72));
  _Unwind_Resume(a1);
}

void sub_1BDF6B6EC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1BDF6B98C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_1BDF6BB6C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1BDF6BD34(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDF6BF2C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDF6C0DC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1BDF6C2A0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1BDF6C560(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 56));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_1BDF6C7D4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 64));
  objc_destroyWeak((v2 - 72));
  _Unwind_Resume(a1);
}

void sub_1BDF6CAF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32)
{
  _Block_object_dispose(&a32, 8);
  _Block_object_dispose((v32 - 152), 8);
  _Unwind_Resume(a1);
}

void sub_1BDF6DEC0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 56));
  objc_destroyWeak((v2 + 48));
  objc_destroyWeak((v3 - 112));
  _Unwind_Resume(a1);
}

void sub_1BDF6E7C0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1BDF6E980(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1BDF6EB40(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1BDF6F8A0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 64));
  objc_destroyWeak((v2 - 72));
  _Unwind_Resume(a1);
}

void sub_1BDF720E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1BDF72248(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 56));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_1BDF73878(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  objc_destroyWeak((v28 + 48));
  objc_destroyWeak((v27 + 64));
  _Block_object_dispose(&a27, 8);
  objc_destroyWeak((v29 - 128));
  _Unwind_Resume(a1);
}

void sub_1BDF7425C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v19 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDF7467C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1BDF74BE8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 128));
  _Unwind_Resume(a1);
}

void sub_1BDF768FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDF77F9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  objc_destroyWeak(va);
  objc_destroyWeak((v16 - 112));
  _Unwind_Resume(a1);
}

void sub_1BDF79128(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_1BDF796EC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 88));
  _Unwind_Resume(a1);
}

void sub_1BDF7A15C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDF7A4FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

Class initFKOrderManagementViewControllerProvider()
{
  if (qword_1EBDAAC98 != -1)
  {
    dispatch_once(&qword_1EBDAAC98, &__block_literal_global_1162);
  }

  result = objc_getClass("FKOrderManagementViewControllerProvider");
  _MergedGlobals_86 = result;
  getFKOrderManagementViewControllerProviderClass = FKOrderManagementViewControllerProviderFunction;
  return result;
}

void *__LoadFinanceKitUI_block_invoke_5()
{
  result = dlopen("/System/Library/PrivateFrameworks/FinanceKitUI.framework/FinanceKitUI", 2);
  LoadFinanceKitUI_frameworkLibrary_5 = result;
  return result;
}

Class initFKBankConnectAuthorizationViewControllerProvider_0()
{
  if (qword_1EBDAAC98 != -1)
  {
    dispatch_once(&qword_1EBDAAC98, &__block_literal_global_1162);
  }

  result = objc_getClass("FKBankConnectAuthorizationViewControllerProvider");
  qword_1EBDAACA0 = result;
  getFKBankConnectAuthorizationViewControllerProviderClass_0 = FKBankConnectAuthorizationViewControllerProviderFunction_0;
  return result;
}

Class initFKBankConnectBackgroundRefreshConfirmationViewControllerProvider()
{
  if (qword_1EBDAAC98 != -1)
  {
    dispatch_once(&qword_1EBDAAC98, &__block_literal_global_1162);
  }

  result = objc_getClass("FKBankConnectBackgroundRefreshConfirmationViewControllerProvider");
  qword_1EBDAACA8 = result;
  getFKBankConnectBackgroundRefreshConfirmationViewControllerProviderClass = FKBankConnectBackgroundRefreshConfirmationViewControllerProviderFunction;
  return result;
}

void SanitizeNavigationController(void *a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v39 = *MEMORY[0x1E69E9840];
  val = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v9 transitionCoordinator];
  if (!v11)
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    if (isKindOfClass)
    {
      v13 = v9;
    }

    else
    {
      v13 = 0;
    }

    v23 = v13;
    if ((isKindOfClass & 1) == 0)
    {
      goto LABEL_37;
    }

    if ((a1 & 8) != 0)
    {
      v15 = [v9 viewControllers];
      v29 = 0u;
      v30 = 0u;
      v27 = 0u;
      v28 = 0u;
      v14 = 0;
      v16 = [v15 countByEnumeratingWithState:&v27 objects:v38 count:16];
      if (v16)
      {
        v17 = *v28;
        do
        {
          for (i = 0; i != v16; ++i)
          {
            if (*v28 != v17)
            {
              objc_enumerationMutation(v15);
            }

            v19 = *(*(&v27 + 1) + 8 * i);
            if ([v19 pkui_disablesAutomaticDismissalUponEnteringBackground])
            {
              v20 = v19;

              v14 = v20;
            }
          }

          v16 = [v15 countByEnumeratingWithState:&v27 objects:v38 count:16];
        }

        while (v16);
      }
    }

    else
    {
      v14 = 0;
    }

    v21 = [v23 VCsState];
    if (v21 == 1)
    {
      [v23 popToPassGroupsVCAnimated:a2];
LABEL_35:
      v11 = 0;
      goto LABEL_36;
    }

    if (v21 == 3)
    {
      if ((a1 & 4) != 0)
      {
        if (v14)
        {
          v22 = [v23 popToViewController:v14 animated:a2];
        }

        else
        {
          [v23 popToDashboardPassGroupVCAnimated:a2];
        }

LABEL_30:
        if (a2)
        {
          v11 = [v23 transitionCoordinator];
          if (v11)
          {
            v25[0] = MEMORY[0x1E69E9820];
            v25[1] = 3221225472;
            v25[2] = __SanitizeNavigationController_block_invoke_3;
            v25[3] = &unk_1E8015D28;
            v26 = v10;
            [v11 animateAlongsideTransition:0 completion:v25];

LABEL_36:
LABEL_37:

            goto LABEL_38;
          }
        }

        goto LABEL_33;
      }
    }

    else if (v21 != 2 || (a1 & 4) != 0)
    {
LABEL_33:
      if (v10)
      {
        v10[2](v10);
      }

      goto LABEL_35;
    }

    [v23 popToPassGroupsVCAnimated:a2];
    goto LABEL_30;
  }

  objc_initWeak(&location, val);
  objc_initWeak(&from, v9);
  v31[0] = MEMORY[0x1E69E9820];
  v31[1] = 3221225472;
  v31[2] = __SanitizeNavigationController_block_invoke;
  v31[3] = &unk_1E80251F0;
  objc_copyWeak(&v33, &location);
  objc_copyWeak(v34, &from);
  v34[1] = a1;
  v35 = a2;
  v32 = v10;
  [v11 animateAlongsideTransition:0 completion:v31];

  objc_destroyWeak(v34);
  objc_destroyWeak(&v33);
  objc_destroyWeak(&from);
  objc_destroyWeak(&location);
LABEL_38:
}

void sub_1BDF7C118(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, id location, id a36)
{
  objc_destroyWeak((v36 + 48));
  objc_destroyWeak((v36 + 40));
  objc_destroyWeak(&location);
  objc_destroyWeak(&a36);
  _Unwind_Resume(a1);
}

void __SanitizePresentedVC_block_invoke(uint64_t a1)
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __SanitizePresentedVC_block_invoke_2;
  v2[3] = &unk_1E80231E0;
  objc_copyWeak(v4, (a1 + 40));
  v4[1] = *(a1 + 48);
  v5 = *(a1 + 56);
  v3 = *(a1 + 32);
  dispatch_async(MEMORY[0x1E69E96A0], v2);

  objc_destroyWeak(v4);
}

void __SanitizePresentedVC_block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v5 = WeakRetained;
    v3 = [WeakRetained navigationController];
    v4 = [v3 presentedViewController];
    if (!v4)
    {
      if (!v3)
      {
        __break(1u);
        return;
      }

      SanitizeNavigationController(*(a1 + 48), *(a1 + 56), v5, v3, *(a1 + 32));
    }

    WeakRetained = v5;
  }
}

void __SanitizePresentedVC_block_invoke_3(uint64_t a1)
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __SanitizePresentedVC_block_invoke_4;
  v2[3] = &unk_1E80231E0;
  objc_copyWeak(v4, (a1 + 40));
  v4[1] = *(a1 + 48);
  v5 = *(a1 + 56);
  v3 = *(a1 + 32);
  dispatch_async(MEMORY[0x1E69E96A0], v2);

  objc_destroyWeak(v4);
}

void __SanitizePresentedVC_block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v5 = WeakRetained;
    v3 = [WeakRetained navigationController];
    v4 = [v3 presentedViewController];
    if (!v4)
    {
      if (!v3)
      {
        __break(1u);
        return;
      }

      SanitizeNavigationController(*(a1 + 48), *(a1 + 56), v5, v3, *(a1 + 32));
    }

    WeakRetained = v5;
  }
}

void __SanitizeNavigationController_block_invoke(uint64_t a1)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __SanitizeNavigationController_block_invoke_2;
  block[3] = &unk_1E80251C8;
  objc_copyWeak(&v4, (a1 + 40));
  objc_copyWeak(v5, (a1 + 48));
  v5[1] = *(a1 + 56);
  v6 = *(a1 + 64);
  v3 = *(a1 + 32);
  dispatch_async(MEMORY[0x1E69E96A0], block);

  objc_destroyWeak(v5);
  objc_destroyWeak(&v4);
}

void __SanitizeNavigationController_block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v5 = WeakRetained;
    v3 = objc_loadWeakRetained((a1 + 48));
    v4 = v3;
    if (v3)
    {
      [v3 presentedViewController];

      [v4 transitionCoordinator];
      SanitizeNavigationController(*(a1 + 56), *(a1 + 64), v5, v4, *(a1 + 32));
    }

    WeakRetained = v5;
  }
}

void __SanitizeNavigationController_block_invoke_3(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __SanitizeNavigationController_block_invoke_4;
    block[3] = &unk_1E8010B50;
    v3 = v1;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

void sub_1BDF7D784(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 48));
  objc_destroyWeak((v2 + 40));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 64));
  objc_destroyWeak((v3 - 56));
  _Unwind_Resume(a1);
}

void sub_1BDF80684(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1BDF80FF4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_1BDF81DD4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, id location, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  objc_destroyWeak((v30 + 40));
  objc_destroyWeak((v29 + 40));
  objc_destroyWeak(&location);
  _Block_object_dispose(&a29, 8);
  _Unwind_Resume(a1);
}

void sub_1BDF85754(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 72));
  _Unwind_Resume(a1);
}

void *__Block_byref_object_copy__24(uint64_t a1, uint64_t a2)
{
  result = _Block_copy(*(a2 + 40));
  *(a1 + 40) = result;
  return result;
}

void sub_1BDF85D04(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 72));
  _Unwind_Resume(a1);
}

void sub_1BDF8618C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 88));
  _Unwind_Resume(a1);
}

void sub_1BDF87618(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 88));
  _Unwind_Resume(a1);
}

void sub_1BDF88124(_Unwind_Exception *a1)
{
  objc_destroyWeak(v1);
  _Block_object_dispose((v2 - 144), 8);
  objc_destroyWeak((v2 - 96));
  _Unwind_Resume(a1);
}

void sub_1BDF88610(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void _AccessSuppressionSetForMutation(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (_MergedGlobals_1_11 != -1)
  {
    dispatch_once(&_MergedGlobals_1_11, &__block_literal_global_244);
    if (!v2)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  if (v1)
  {
LABEL_3:
    v3 = qword_1EBD683D0;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = ___AccessSuppressionSetForMutation_block_invoke_2;
    block[3] = &unk_1E8010B50;
    v5 = v2;
    dispatch_async(v3, block);
  }

LABEL_4:
}

void sub_1BDF8BE4C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak(&STACK[0x210]);
  _Unwind_Resume(a1);
}

void sub_1BDF8C408(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDF8CC30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  objc_destroyWeak(va);
  objc_destroyWeak((v11 - 40));
  _Unwind_Resume(a1);
}

Class initNPKCompanionAgentConnection_7()
{
  if (qword_1EBD68268 != -1)
  {
    dispatch_once(&qword_1EBD68268, &__block_literal_global_245);
  }

  result = objc_getClass("NPKCompanionAgentConnection");
  _MergedGlobals_5_3 = result;
  getNPKCompanionAgentConnectionClass_6 = NPKCompanionAgentConnectionFunction_7;
  return result;
}

void *__LoadNanoPassKit_block_invoke_8()
{
  result = dlopen("/System/Library/PrivateFrameworks/NanoPassKit.framework/NanoPassKit", 2);
  LoadNanoPassKit_frameworkLibrary_8 = result;
  return result;
}

void sub_1BDF9425C(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 160), 8);
  _Block_object_dispose((v1 - 128), 8);
  _Unwind_Resume(a1);
}

Class initNPKCompanionAgentConnection_8()
{
  if (qword_1EBDAACC8 != -1)
  {
    dispatch_once(&qword_1EBDAACC8, &__block_literal_global_247);
  }

  result = objc_getClass("NPKCompanionAgentConnection");
  _MergedGlobals_3_6 = result;
  getNPKCompanionAgentConnectionClass_7 = NPKCompanionAgentConnectionFunction_8;
  return result;
}

void *__LoadNanoPassKit_block_invoke_9()
{
  result = dlopen("/System/Library/PrivateFrameworks/NanoPassKit.framework/NanoPassKit", 2);
  LoadNanoPassKit_frameworkLibrary_9 = result;
  return result;
}

void sub_1BDF957D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

Class initCNAvatarView_12()
{
  if (qword_1EBD683E8 != -1)
  {
    dispatch_once(&qword_1EBD683E8, &__block_literal_global_249);
  }

  result = objc_getClass("CNAvatarView");
  _MergedGlobals_1_12 = result;
  getCNAvatarViewClass_3 = CNAvatarViewFunction_12;
  return result;
}

void sub_1BDF9A104(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1BDF9D8F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  objc_destroyWeak((v8 + 40));
  _Block_object_dispose(va, 8);
  objc_destroyWeak((v9 - 56));
  _Unwind_Resume(a1);
}

void sub_1BDF9DE2C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDF9FAE8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, id location)
{
  objc_destroyWeak((v30 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDFA296C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_1BDFA3174(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id location)
{
  objc_destroyWeak((v22 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDFA431C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 40));
  objc_destroyWeak((v1 + 32));
  _Unwind_Resume(a1);
}

void sub_1BDFA4850(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1BDFA52B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, id location)
{
  objc_destroyWeak((v26 + 40));
  objc_destroyWeak((v27 + 56));
  _Block_object_dispose(&a22, 8);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDFA5D40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  _Block_object_dispose(&a31, 8);
  _Block_object_dispose((v31 - 176), 8);
  objc_destroyWeak((v31 - 128));
  _Unwind_Resume(a1);
}

void sub_1BDFA9244(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a23, 8);
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose((v27 - 192), 8);
  _Unwind_Resume(a1);
}

__CFString *PKPassDetailSectionTypeToString(unint64_t a1)
{
  if (a1 > 0x30)
  {
    return 0;
  }

  else
  {
    return off_1E8026680[a1];
  }
}

uint64_t PKPassDetailSectionTypeFromString(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1 == @"LinkedApplication" || v1 && (v3 = [(__CFString *)v1 isEqualToString:@"LinkedApplication"], v2, v2, (v3 & 1) != 0))
  {
    v4 = 0;
  }

  else
  {
    v5 = v2;
    if (v5 == @"PeerPaymentAccountAction" || (v6 = v5, v2) && (v7 = [(__CFString *)v5 isEqualToString:@"PeerPaymentAccountAction"], v6, v6, (v7 & 1) != 0))
    {
      v4 = 1;
    }

    else
    {
      v8 = v6;
      if (v8 == @"AccessPersonInfo" || (v9 = v8, v2) && (v10 = [(__CFString *)v8 isEqualToString:@"AccessPersonInfo"], v9, v9, (v10 & 1) != 0))
      {
        v4 = 2;
      }

      else
      {
        v11 = v9;
        if (v11 == @"AccessCardHolderPicture" || (v12 = v11, v2) && (v13 = [(__CFString *)v11 isEqualToString:@"AccessCardHolderPicture"], v12, v12, (v13 & 1) != 0))
        {
          v4 = 3;
        }

        else
        {
          v14 = v12;
          if (v14 == @"IdentityDocumentDetails" || (v15 = v14, v2) && (v16 = [(__CFString *)v14 isEqualToString:@"IdentityDocumentDetails"], v15, v15, (v16 & 1) != 0))
          {
            v4 = 4;
          }

          else
          {
            v17 = v15;
            if (v17 == @"IdentityReplaceBiometric" || (v18 = v17, v2) && (v19 = [(__CFString *)v17 isEqualToString:@"IdentityReplaceBiometric"], v18, v18, (v19 & 1) != 0))
            {
              v4 = 5;
            }

            else
            {
              v20 = v18;
              if (v20 == @"Barcode" || (v21 = v20, v2) && (v22 = [(__CFString *)v20 isEqualToString:@"Barcode"], v21, v21, (v22 & 1) != 0))
              {
                v4 = 6;
              }

              else
              {
                v23 = v21;
                if (v23 == @"AutomaticPresentation" || (v24 = v23, v2) && (v25 = [(__CFString *)v23 isEqualToString:@"AutomaticPresentation"], v24, v24, (v25 & 1) != 0))
                {
                  v4 = 7;
                }

                else
                {
                  v26 = v24;
                  if (v26 == @"ManufacturerInfo" || (v27 = v26, v2) && (v28 = [(__CFString *)v26 isEqualToString:@"ManufacturerInfo"], v27, v27, (v28 & 1) != 0))
                  {
                    v4 = 8;
                  }

                  else
                  {
                    v29 = v27;
                    if (v29 == @"ServicingWalletLink" || (v30 = v29, v2) && (v31 = [(__CFString *)v29 isEqualToString:@"ServicingWalletLink"], v30, v30, (v31 & 1) != 0))
                    {
                      v4 = 9;
                    }

                    else
                    {
                      v32 = v30;
                      if (v32 == @"AccountUsers" || (v33 = v32, v2) && (v34 = [(__CFString *)v32 isEqualToString:@"AccountUsers"], v33, v33, (v34 & 1) != 0))
                      {
                        v4 = 10;
                      }

                      else
                      {
                        v35 = v33;
                        if (v35 == @"InstallmentPlans" || (v36 = v35, v2) && (v37 = [(__CFString *)v35 isEqualToString:@"InstallmentPlans"], v36, v36, (v37 & 1) != 0))
                        {
                          v4 = 11;
                        }

                        else
                        {
                          v38 = v36;
                          if (v38 == @"AccountServiceCardNumbers" || (v39 = v38, v2) && (v40 = [(__CFString *)v38 isEqualToString:@"AccountServiceCardNumbers"], v39, v39, (v40 & 1) != 0))
                          {
                            v4 = 12;
                          }

                          else
                          {
                            v41 = v39;
                            if (v41 == @"AccountServiceCreditDetails" || (v42 = v41, v2) && (v43 = [(__CFString *)v41 isEqualToString:@"AccountServiceCreditDetails"], v42, v42, (v43 & 1) != 0))
                            {
                              v4 = 13;
                            }

                            else
                            {
                              v44 = v42;
                              if (v44 == @"AccountServiceBankAccounts" || (v45 = v44, v2) && (v46 = [(__CFString *)v44 isEqualToString:@"AccountServiceBankAccounts"], v45, v45, (v46 & 1) != 0))
                              {
                                v4 = 14;
                              }

                              else
                              {
                                v47 = v45;
                                if (v47 == @"AccountServiceMerchantTokens" || (v48 = v47, v2) && (v49 = [(__CFString *)v47 isEqualToString:@"AccountServiceMerchantTokens"], v48, v48, (v49 & 1) != 0))
                                {
                                  v4 = 15;
                                }

                                else
                                {
                                  v50 = v48;
                                  if (v50 == @"AccountServiceProductBenefits" || (v51 = v50, v2) && (v52 = [(__CFString *)v50 isEqualToString:@"AccountServiceProductBenefits"], v51, v51, (v52 & 1) != 0))
                                  {
                                    v4 = 16;
                                  }

                                  else
                                  {
                                    v53 = v51;
                                    if (v53 == @"AccountServiceMakeDefault" || (v54 = v53, v2) && (v55 = [(__CFString *)v53 isEqualToString:@"AccountServiceMakeDefault"], v54, v54, (v55 & 1) != 0))
                                    {
                                      v4 = 17;
                                    }

                                    else
                                    {
                                      v56 = v54;
                                      if (v56 == @"AccountServiceRewardsDetails" || (v57 = v56, v2) && (v58 = [(__CFString *)v56 isEqualToString:@"AccountServiceRewardsDetails"], v57, v57, (v58 & 1) != 0))
                                      {
                                        v4 = 18;
                                      }

                                      else
                                      {
                                        v59 = v57;
                                        if (v59 == @"AccountServicePhysicalCard" || (v60 = v59, v2) && (v61 = [(__CFString *)v59 isEqualToString:@"AccountServicePhysicalCard"], v60, v60, (v61 & 1) != 0))
                                        {
                                          v4 = 19;
                                        }

                                        else
                                        {
                                          v62 = v60;
                                          if (v62 == @"TransactionMessagesSwitch" || (v63 = v62, v2) && (v64 = [(__CFString *)v62 isEqualToString:@"TransactionMessagesSwitch"], v63, v63, (v64 & 1) != 0))
                                          {
                                            v4 = 20;
                                          }

                                          else
                                          {
                                            v65 = v63;
                                            if (v65 == @"TransitTickets" || (v66 = v65, v2) && (v67 = [(__CFString *)v65 isEqualToString:@"TransitTickets"], v66, v66, (v67 & 1) != 0))
                                            {
                                              v4 = 21;
                                            }

                                            else
                                            {
                                              v68 = v66;
                                              if (v68 == @"PeerPaymentBalance" || (v69 = v68, v2) && (v70 = [(__CFString *)v68 isEqualToString:@"PeerPaymentBalance"], v69, v69, (v70 & 1) != 0))
                                              {
                                                v4 = 22;
                                              }

                                              else
                                              {
                                                v71 = v69;
                                                if (v71 == @"PeerPaymentMoneyActions" || (v72 = v71, v2) && (v73 = [(__CFString *)v71 isEqualToString:@"PeerPaymentMoneyActions"], v72, v72, (v73 & 1) != 0))
                                                {
                                                  v4 = 23;
                                                }

                                                else
                                                {
                                                  v74 = v72;
                                                  if (v74 == @"PeerPaymentAutomaticallyAcceptPaymentsPreference" || (v75 = v74, v2) && (v76 = [(__CFString *)v74 isEqualToString:@"PeerPaymentAutomaticallyAcceptPaymentsPreference"], v75, v75, (v76 & 1) != 0))
                                                  {
                                                    v4 = 24;
                                                  }

                                                  else
                                                  {
                                                    v77 = v75;
                                                    if (v77 == @"PeerPaymentBankAccounts" || (v78 = v77, v2) && (v79 = [(__CFString *)v77 isEqualToString:@"PeerPaymentBankAccounts"], v78, v78, (v79 & 1) != 0))
                                                    {
                                                      v4 = 25;
                                                    }

                                                    else
                                                    {
                                                      v80 = v78;
                                                      if (v80 == @"PaymentApplications" || (v81 = v80, v2) && (v82 = [(__CFString *)v80 isEqualToString:@"PaymentApplications"], v81, v81, (v82 & 1) != 0))
                                                      {
                                                        v4 = 26;
                                                      }

                                                      else
                                                      {
                                                        v83 = v81;
                                                        if (v83 == @"PassState" || (v84 = v83, v2) && (v85 = [(__CFString *)v83 isEqualToString:@"PassState"], v84, v84, (v85 & 1) != 0))
                                                        {
                                                          v4 = 27;
                                                        }

                                                        else
                                                        {
                                                          v86 = v84;
                                                          if (v86 == @"BalancesAndCommutePlans" || (v87 = v86, v2) && (v88 = [(__CFString *)v86 isEqualToString:@"BalancesAndCommutePlans"], v87, v87, (v88 & 1) != 0))
                                                          {
                                                            v4 = 28;
                                                          }

                                                          else
                                                          {
                                                            v89 = v87;
                                                            if (v89 == @"ContactBank" || (v90 = v89, v2) && (v91 = [(__CFString *)v89 isEqualToString:@"ContactBank"], v90, v90, (v91 & 1) != 0))
                                                            {
                                                              v4 = 29;
                                                            }

                                                            else
                                                            {
                                                              v92 = v90;
                                                              if (v92 == @"PeerPaymentMerchantTokens" || (v93 = v92, v2) && (v94 = [(__CFString *)v92 isEqualToString:@"PeerPaymentMerchantTokens"], v93, v93, (v94 & 1) != 0))
                                                              {
                                                                v4 = 30;
                                                              }

                                                              else
                                                              {
                                                                v95 = v93;
                                                                if (v95 == @"CardInfo" || (v96 = v95, v2) && (v97 = [(__CFString *)v95 isEqualToString:@"CardInfo"], v96, v96, (v97 & 1) != 0))
                                                                {
                                                                  v4 = 31;
                                                                }

                                                                else
                                                                {
                                                                  v98 = v96;
                                                                  if (v98 == @"DPANInfo" || (v99 = v98, v2) && (v100 = [(__CFString *)v98 isEqualToString:@"DPANInfo"], v99, v99, (v100 & 1) != 0))
                                                                  {
                                                                    v4 = 32;
                                                                  }

                                                                  else
                                                                  {
                                                                    v101 = v99;
                                                                    if (v101 == @"MerchantTokens" || (v102 = v101, v2) && (v103 = [(__CFString *)v101 isEqualToString:@"MerchantTokens"], v102, v102, (v103 & 1) != 0))
                                                                    {
                                                                      v4 = 33;
                                                                    }

                                                                    else
                                                                    {
                                                                      v104 = v102;
                                                                      if (v104 == @"FamilySharing" || (v105 = v104, v2) && (v106 = [(__CFString *)v104 isEqualToString:@"FamilySharing"], v105, v105, (v106 & 1) != 0))
                                                                      {
                                                                        v4 = 34;
                                                                      }

                                                                      else
                                                                      {
                                                                        v107 = v105;
                                                                        if (v107 == @"TransactionTransactionsSwitch" || (v108 = v107, v2) && (v109 = [(__CFString *)v107 isEqualToString:@"TransactionTransactionsSwitch"], v108, v108, (v109 & 1) != 0))
                                                                        {
                                                                          v4 = 35;
                                                                        }

                                                                        else
                                                                        {
                                                                          v110 = v108;
                                                                          if (v110 == @"TransactionsUnavailable" || (v111 = v110, v2) && (v112 = [(__CFString *)v110 isEqualToString:@"TransactionsUnavailable"], v111, v111, (v112 & 1) != 0))
                                                                          {
                                                                            v4 = 36;
                                                                          }

                                                                          else
                                                                          {
                                                                            v113 = v111;
                                                                            if (v113 == @"Transactions" || (v114 = v113, v2) && (v115 = [(__CFString *)v113 isEqualToString:@"Transactions"], v114, v114, (v115 & 1) != 0))
                                                                            {
                                                                              v4 = 37;
                                                                            }

                                                                            else
                                                                            {
                                                                              v116 = v114;
                                                                              if (v116 == @"TransactionsByYear" || (v117 = v116, v2) && (v118 = [(__CFString *)v116 isEqualToString:@"TransactionsByYear"], v117, v117, (v118 & 1) != 0))
                                                                              {
                                                                                v4 = 38;
                                                                              }

                                                                              else
                                                                              {
                                                                                v119 = v117;
                                                                                if (v119 == @"PassesInGroup" || (v120 = v119, v2) && (v121 = [(__CFString *)v119 isEqualToString:@"PassesInGroup"], v120, v120, (v121 & 1) != 0))
                                                                                {
                                                                                  v4 = 39;
                                                                                }

                                                                                else
                                                                                {
                                                                                  v122 = v120;
                                                                                  if (v122 == @"BillingAddress" || (v123 = v122, v2) && (v124 = [(__CFString *)v122 isEqualToString:@"BillingAddress"], v123, v123, (v124 & 1) != 0))
                                                                                  {
                                                                                    v4 = 40;
                                                                                  }

                                                                                  else
                                                                                  {
                                                                                    v125 = v123;
                                                                                    if (v125 == @"AccountServiceNetworkBenefits" || (v126 = v125, v2) && (v127 = [(__CFString *)v125 isEqualToString:@"AccountServiceNetworkBenefits"], v126, v126, (v127 & 1) != 0))
                                                                                    {
                                                                                      v4 = 41;
                                                                                    }

                                                                                    else
                                                                                    {
                                                                                      v128 = v126;
                                                                                      if (v128 == @"PeerPaymentManualIdentityVerification" || (v129 = v128, v2) && (v130 = [(__CFString *)v128 isEqualToString:@"PeerPaymentManualIdentityVerification"], v129, v129, (v130 & 1) != 0))
                                                                                      {
                                                                                        v4 = 46;
                                                                                      }

                                                                                      else
                                                                                      {
                                                                                        v131 = v129;
                                                                                        if (v131 == @"PeerPaymentParticipantGraduation" || (v132 = v131, v2) && (v133 = [(__CFString *)v131 isEqualToString:@"PeerPaymentParticipantGraduation"], v132, v132, (v133 & 1) != 0))
                                                                                        {
                                                                                          v4 = 42;
                                                                                        }

                                                                                        else
                                                                                        {
                                                                                          v134 = v132;
                                                                                          if (v134 == @"PeerPaymentStatement" || (v135 = v134, v2) && (v136 = [(__CFString *)v134 isEqualToString:@"PeerPaymentStatement"], v135, v135, (v136 & 1) != 0))
                                                                                          {
                                                                                            v4 = 43;
                                                                                          }

                                                                                          else
                                                                                          {
                                                                                            v137 = v135;
                                                                                            if (v137 == @"VerifySSN" || (v138 = v137, v2) && (v139 = [(__CFString *)v137 isEqualToString:@"VerifySSN"], v138, v138, (v139 & 1) != 0))
                                                                                            {
                                                                                              v4 = 44;
                                                                                            }

                                                                                            else
                                                                                            {
                                                                                              v140 = v138;
                                                                                              if (v140 == @"PrivacyTermsInfo" || (v141 = v140, v2) && (v142 = [(__CFString *)v140 isEqualToString:@"PrivacyTermsInfo"], v141, v141, (v142 & 1) != 0))
                                                                                              {
                                                                                                v4 = 45;
                                                                                              }

                                                                                              else
                                                                                              {
                                                                                                v143 = v141;
                                                                                                if (v143 == @"AccountUserStopSharing" || (v144 = v143, v2) && (v145 = [(__CFString *)v143 isEqualToString:@"AccountUserStopSharing"], v144, v144, (v145 & 1) != 0))
                                                                                                {
                                                                                                  v4 = 47;
                                                                                                }

                                                                                                else
                                                                                                {
                                                                                                  v146 = v144;
                                                                                                  if (v146 == @"PassOperations" || v2 && (v147 = v146, v148 = [(__CFString *)v146 isEqualToString:@"PassOperations"], v147, v147, (v148 & 1) != 0))
                                                                                                  {
                                                                                                    v4 = 48;
                                                                                                  }

                                                                                                  else
                                                                                                  {
                                                                                                    v4 = 49;
                                                                                                  }
                                                                                                }
                                                                                              }
                                                                                            }
                                                                                          }
                                                                                        }
                                                                                      }
                                                                                    }
                                                                                  }
                                                                                }
                                                                              }
                                                                            }
                                                                          }
                                                                        }
                                                                      }
                                                                    }
                                                                  }
                                                                }
                                                              }
                                                            }
                                                          }
                                                        }
                                                      }
                                                    }
                                                  }
                                                }
                                              }
                                            }
                                          }
                                        }
                                      }
                                    }
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return v4;
}

void sub_1BDFAC2D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, id location)
{
  objc_destroyWeak((v39 + 32));
  objc_destroyWeak(&location);
  objc_destroyWeak(&STACK[0x258]);
  _Unwind_Resume(a1);
}

uint64_t PKPaymentSetupContextForViewStyle(uint64_t a1)
{
  v1 = 3;
  if (a1 != 1)
  {
    v1 = 0;
  }

  if (a1 == 2)
  {
    return 4;
  }

  else
  {
    return v1;
  }
}

void sub_1BDFAC860(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  objc_destroyWeak((v11 + 32));
  _Unwind_Resume(a1);
}

void sub_1BDFAE530(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, id location)
{
  objc_destroyWeak((v30 + 40));
  objc_destroyWeak(&location);
  _Block_object_dispose((v31 - 192), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__339(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

__CFString *sectionIdentifierForInsertAfter(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if ([v3 isEqualToString:@"Bottom"])
  {
    v5 = @"AccountUserStopSharing";
  }

  else if ([v3 isEqualToString:@"PersonInfo"])
  {
    v5 = @"AccessPersonInfo";
  }

  else
  {
    v5 = @"Barcode";
    if (([v3 isEqualToString:@"Barcode"] & 1) == 0)
    {
      if ([v3 isEqualToString:@"PhysicalCard"])
      {
        v5 = @"AccountServicePhysicalCard";
      }

      else
      {
        v5 = @"CardInfo";
        if (([v3 isEqualToString:@"CardInfo"] & 1) == 0)
        {
          v5 = @"PassesInGroup";
          if (([v3 isEqualToString:@"PassesInGroup"] & 1) == 0)
          {
            v5 = @"BillingAddress";
            if (([v3 isEqualToString:@"BillingAddress"] & 1) == 0)
            {
              if ([v4 containsObject:v3])
              {
                v5 = v3;
              }

              else
              {
                v5 = @"LinkedApplication";
              }
            }
          }
        }
      }
    }
  }

  return v5;
}

void sub_1BDFAF744(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 224), 8);
  _Block_object_dispose((v1 - 176), 8);
  _Block_object_dispose((v1 - 128), 8);
  _Unwind_Resume(a1);
}

void *PKSegmentStringToSegment(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:*MEMORY[0x1E69BC3C8]])
  {
    v2 = &unk_1F3CC7FE8;
  }

  else if ([v1 isEqualToString:*MEMORY[0x1E69BC3D0]])
  {
    v2 = &unk_1F3CC8000;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id PKSegmentToSegmentString(void *a1)
{
  v1 = [a1 unsignedIntegerValue];
  if (!v1)
  {
    v2 = MEMORY[0x1E69BC3C8];
    goto LABEL_5;
  }

  if (v1 == 1)
  {
    v2 = MEMORY[0x1E69BC3D0];
LABEL_5:
    v3 = *v2;
    goto LABEL_7;
  }

  v3 = 0;
LABEL_7:

  return v3;
}

void sub_1BDFB05EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDFB11DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDFB15C0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1BDFB3720(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDFB47F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDFB51BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDFB6D84(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v20 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDFBC00C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  _Block_object_dispose(&a31, 8);
  _Block_object_dispose((v31 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_1BDFBC624(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1BDFBE300(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, id a26)
{
  objc_destroyWeak(&a26);
  objc_destroyWeak((v26 - 128));
  _Unwind_Resume(a1);
}

void sub_1BDFBEE84(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDFC20F8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1BDFC24F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  objc_destroyWeak(va);
  objc_destroyWeak((v15 - 104));
  _Unwind_Resume(a1);
}

void sub_1BDFC368C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDFC68C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak((v20 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDFC7A08(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDFC7FBC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDFC8404(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1BDFC9C60(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDFC9E88(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_1BDFCA144(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 32));
  _Unwind_Resume(a1);
}

void sub_1BDFCA618(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_1BDFCA7BC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_1BDFCACE8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1BDFCB02C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1BDFCB344(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_1BDFCB444(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_1BDFCB680(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_1BDFCB9E4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_1BDFCBDAC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_1BDFCBF78(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_1BDFCC11C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1BDFCC3BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1BDFCC69C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1BDFCC7B0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_1BDFCCA7C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1BDFCCC6C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_1BDFCDD70(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDFCE6FC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 72));
  _Unwind_Resume(a1);
}

void sub_1BDFD0924(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDFD163C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDFD3898(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDFD3EC8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDFD4044(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDFD4938(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDFD4B3C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDFD54E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak((v20 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDFD6734(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 64));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDFD70C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, id a45, char a46, uint64_t a47, uint64_t a48, uint64_t a49, char a50)
{
  objc_destroyWeak(&a45);
  _Block_object_dispose(&a46, 8);
  _Block_object_dispose(&a50, 8);
  objc_destroyWeak((v50 - 248));
  _Unwind_Resume(a1);
}

void sub_1BDFD7BA0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDFD9744(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 56));
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v3 - 88));
  _Unwind_Resume(a1);
}

void sub_1BDFD9F08(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1BDFDA660(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

Class initCNAvatarView_13()
{
  if (qword_1EBDAACE8 != -1)
  {
    dispatch_once(&qword_1EBDAACE8, &__block_literal_global_2777);
  }

  result = objc_getClass("CNAvatarView");
  _MergedGlobals_28 = result;
  _MergedGlobals_27 = CNAvatarViewFunction_13;
  return result;
}

Class initCNAvatarCardController_8()
{
  if (qword_1EBDAACE8 != -1)
  {
    dispatch_once(&qword_1EBDAACE8, &__block_literal_global_2777);
  }

  result = objc_getClass("CNAvatarCardController");
  qword_1EBDAACF0 = result;
  off_1EE9A1F20 = CNAvatarCardControllerFunction_8;
  return result;
}

Class initCNContactViewController_5()
{
  if (qword_1EBDAACE8 != -1)
  {
    dispatch_once(&qword_1EBDAACE8, &__block_literal_global_2777);
  }

  result = objc_getClass("CNContactViewController");
  qword_1EBDAACF8 = result;
  off_1EE9A1F28 = CNContactViewControllerFunction_5;
  return result;
}

Class initNPKCompanionAgentConnection_9()
{
  if (qword_1EBDAAD08 != -1)
  {
    dispatch_once(&qword_1EBDAAD08, &__block_literal_global_2783);
  }

  result = objc_getClass("NPKCompanionAgentConnection");
  qword_1EBDAAD00 = result;
  getNPKCompanionAgentConnectionClass_8 = NPKCompanionAgentConnectionFunction_9;
  return result;
}

void *__LoadNanoPassKit_block_invoke_10()
{
  result = dlopen("/System/Library/PrivateFrameworks/NanoPassKit.framework/NanoPassKit", 2);
  LoadNanoPassKit_frameworkLibrary_10 = result;
  return result;
}

Class initFKBankConnectAuthorizationViewControllerProvider_1()
{
  if (qword_1EBDAAD18 != -1)
  {
    dispatch_once(&qword_1EBDAAD18, &__block_literal_global_2787);
  }

  result = objc_getClass("FKBankConnectAuthorizationViewControllerProvider");
  qword_1EBDAAD10 = result;
  getFKBankConnectAuthorizationViewControllerProviderClass_1 = FKBankConnectAuthorizationViewControllerProviderFunction_1;
  return result;
}

void *__LoadFinanceKitUI_block_invoke_6()
{
  result = dlopen("/System/Library/PrivateFrameworks/FinanceKitUI.framework/FinanceKitUI", 2);
  LoadFinanceKitUI_frameworkLibrary_6 = result;
  return result;
}

void sub_1BDFDD6E0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 + 72));
  _Unwind_Resume(a1);
}

void InvalidateSession(PKContactlessInterfaceSession *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = ___ZL17InvalidateSessionP29PKContactlessInterfaceSession_block_invoke_0;
    v3[3] = &unk_1E8012370;
    v4 = v1;
    PeformBackgroundTask(v3);
  }
}

void sub_1BDFDE698(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(va);
  objc_destroyWeak((v15 - 104));
  _Unwind_Resume(a1);
}

void sub_1BDFDEA24(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v3 - 88));
  _Unwind_Resume(a1);
}

void sub_1BDFDED94(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 56));
  objc_destroyWeak((v3 - 88));
  _Unwind_Resume(a1);
}

void sub_1BDFDF4B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void *CreateOpacityAnimation(double a1, double a2)
{
  v4 = [MEMORY[0x1E6979318] animationWithKeyPath:@"opacity"];
  [v4 setBeginTimeMode:*MEMORY[0x1E69795C0]];
  [v4 setAdditive:1];
  v5 = [MEMORY[0x1E69793D0] functionWithName:*MEMORY[0x1E6979EB8]];
  [v4 setTimingFunction:v5];

  [v4 setDuration:0.25];
  [v4 pkui_updateForAdditiveAnimationFromScalar:a1 toScalar:a2];
  return v4;
}

void sub_1BDFE0BE4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id location)
{
  objc_destroyWeak((v22 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void PeformBackgroundTask(void *a1)
{
  v1 = a1;
  if (v1)
  {
    v2 = v1;
    v7 = 0;
    v8 = &v7;
    v9 = 0x2020000000;
    v10 = 0;
    v3 = [MEMORY[0x1E69DC668] sharedApplication];
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __PeformBackgroundTask_block_invoke_0;
    v6[3] = &unk_1E8011A18;
    v6[4] = &v7;
    v4 = [v3 beginBackgroundTaskWithExpirationHandler:v6];
    v8[3] = v4;

    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __PeformBackgroundTask_block_invoke_2_0;
    v5[3] = &unk_1E8011A18;
    v5[4] = &v7;
    (v2)[2](v2, v5);
    _Block_object_dispose(&v7, 8);
  }

  else
  {
    __break(1u);
  }
}

void sub_1BDFE1138(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void ___ZL17InvalidateSessionP29PKContactlessInterfaceSession_block_invoke_0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = ___ZL17InvalidateSessionP29PKContactlessInterfaceSession_block_invoke_2_0;
  v6[3] = &unk_1E8010B50;
  v7 = v3;
  v5 = v3;
  [v4 invalidateSessionWithCompletion:v6];
}

void ___ZL17InvalidateSessionP29PKContactlessInterfaceSession_block_invoke_2_0(uint64_t a1)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = ___ZL17InvalidateSessionP29PKContactlessInterfaceSession_block_invoke_3;
  block[3] = &unk_1E8010B50;
  v2 = *(a1 + 32);
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __PeformBackgroundTask_block_invoke_0(uint64_t a1)
{
  v1 = *MEMORY[0x1E69DDBE8];
  if (*(*(*(a1 + 32) + 8) + 24) != *MEMORY[0x1E69DDBE8])
  {
    v3 = [MEMORY[0x1E69DC668] sharedApplication];
    [v3 endBackgroundTask:*(*(*(a1 + 32) + 8) + 24)];

    *(*(*(a1 + 32) + 8) + 24) = v1;
  }
}

void __PeformBackgroundTask_block_invoke_2_0(uint64_t a1)
{
  v1 = *MEMORY[0x1E69DDBE8];
  if (*(*(*(a1 + 32) + 8) + 24) != *MEMORY[0x1E69DDBE8])
  {
    v3 = [MEMORY[0x1E69DC668] sharedApplication];
    [v3 endBackgroundTask:*(*(*(a1 + 32) + 8) + 24)];

    *(*(*(a1 + 32) + 8) + 24) = v1;
  }
}

void ___ZL17InvalidateSessionP22PKPaymentSessionHandle_block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INTERACTIVE, 0);
  v5 = dispatch_queue_attr_make_with_autorelease_frequency(v4, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);

  v6 = dispatch_queue_create("com.apple.passkit.invalidation", v5);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = ___ZL17InvalidateSessionP22PKPaymentSessionHandle_block_invoke_2;
  v8[3] = &unk_1E8010DD0;
  v9 = *(a1 + 32);
  v10 = v3;
  v7 = v3;
  dispatch_async(v6, v8);
}

void ___ZL17InvalidateSessionP22PKPaymentSessionHandle_block_invoke_2(uint64_t a1)
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = ___ZL17InvalidateSessionP22PKPaymentSessionHandle_block_invoke_3;
  v2[3] = &unk_1E8010B50;
  v1 = *(a1 + 32);
  v3 = *(a1 + 40);
  [v1 invalidateSessionWithCompletion:v2];
}

void ___ZL17InvalidateSessionP22PKPaymentSessionHandle_block_invoke_3(uint64_t a1)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = ___ZL17InvalidateSessionP22PKPaymentSessionHandle_block_invoke_4;
  block[3] = &unk_1E8010B50;
  v2 = *(a1 + 32);
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void sub_1BDFE1794(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDFE2820(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_1BDFE2CA4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1BDFE4CD4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 64));
  _Unwind_Resume(a1);
}

void sub_1BDFE5410(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDFE562C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDFE8470(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1BDFEA4A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDFEBF00(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

Class initCNContactPickerViewController_0()
{
  if (qword_1EBD68278 != -1)
  {
    dispatch_once(&qword_1EBD68278, &__block_literal_global_237);
  }

  result = objc_getClass("CNContactPickerViewController");
  _MergedGlobals_5_4 = result;
  getCNContactPickerViewControllerClass_0 = CNContactPickerViewControllerFunction_0;
  return result;
}

void sub_1BDFF0DF4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDFF1164(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDFF1C14(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&a19);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDFF2F30(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 56));
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v3 - 112));
  _Unwind_Resume(a1);
}

void sub_1BDFF372C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDFF3C58(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDFF4494(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDFF4EF4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v3 + 48));
  objc_destroyWeak((v2 + 48));
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v4 - 136));
  _Block_object_dispose((v4 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_1BDFF78F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BDFFD138(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 64));
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v3 - 112));
  _Unwind_Resume(a1);
}

void sub_1BDFFE7C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

NSObject *PKPeerPaymentExistingiMessageChatForRecipientAddress(void *a1)
{
  v19[1] = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (_PKPeerPaymentConnectToIMDaemonController_onceToken != -1)
  {
    dispatch_once(&_PKPeerPaymentConnectToIMDaemonController_onceToken, &__block_literal_global_158);
  }

  if ([v1 length])
  {
    v19[0] = v1;
    v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:1];
    v3 = CKMakeHandlesFromRecipients();
    v4 = [v3 firstObject];

    if (!v4)
    {
      v6 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v15 = 138412290;
        v16 = v1;
        _os_log_impl(&dword_1BD026000, v6, OS_LOG_TYPE_DEFAULT, "IMHandle could not be created for handle: %@", &v15, 0xCu);
      }

      v13 = 0;
      goto LABEL_23;
    }

    v5 = [MEMORY[0x1E69A5AF8] sharedRegistry];
    v6 = [v5 existingChatWithHandle:v4 allowAlternativeService:0];

    if (v6)
    {
      v7 = [MEMORY[0x1E69A5C90] iMessageService];
      [v6 _targetToService:v7 newComposition:0 supportsEncryption:1];

      v8 = [v6 account];
      v9 = [v8 service];

      v10 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v11 = [v9 name];
        v15 = 138412546;
        v16 = v1;
        v17 = 2112;
        v18 = v11;
        _os_log_impl(&dword_1BD026000, v10, OS_LOG_TYPE_DEFAULT, "Chat with recipient handle %@ is of type %@", &v15, 0x16u);
      }

      v12 = [MEMORY[0x1E69A5CA0] iMessageService];

      if (v9 == v12)
      {
        v13 = v6;
        goto LABEL_22;
      }

      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v15 = 138412290;
        v16 = v6;
        _os_log_impl(&dword_1BD026000, v10, OS_LOG_TYPE_DEFAULT, "Existing chat %@ is not an iMessage chat, ignoring.", &v15, 0xCu);
      }
    }

    else
    {
      v9 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v15 = 138412290;
        v16 = v1;
        _os_log_impl(&dword_1BD026000, v9, OS_LOG_TYPE_DEFAULT, "Could not find existing chat for handle: %@", &v15, 0xCu);
      }
    }

    v13 = 0;
LABEL_22:

LABEL_23:
    goto LABEL_24;
  }

  v4 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v15) = 0;
    _os_log_impl(&dword_1BD026000, v4, OS_LOG_TYPE_DEFAULT, "Could not find existing iMessage chat for nil recipient handle.", &v15, 2u);
  }

  v13 = 0;
LABEL_24:

  return v13;
}

void *PKPeerPaymentSenderAddressFromIMAccount(void *a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = [v1 displayName];
  v3 = [v1 strippedLogin];
  v4 = [v1 aliases];
  v5 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138413058;
    v10 = v2;
    v11 = 2112;
    v12 = v3;
    v13 = 2112;
    v14 = v1;
    v15 = 2112;
    v16 = v4;
    _os_log_impl(&dword_1BD026000, v5, OS_LOG_TYPE_DEFAULT, "Using displayName, %@, strippedLogin, %@, sending account %@ as sender address. Ignoring aliases %@.", &v9, 0x2Au);
  }

  if (v2)
  {
    v6 = v2;
  }

  else
  {
    v6 = v3;
  }

  v7 = v6;

  return v6;
}

id PKPeerPaymentSenderAddressForRecipientAddress(void *a1)
{
  v15[1] = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (_PKPeerPaymentConnectToIMDaemonController_onceToken != -1)
  {
    dispatch_once(&_PKPeerPaymentConnectToIMDaemonController_onceToken, &__block_literal_global_158);
  }

  if ([MEMORY[0x1E69A5CA0] iMessageEnabled])
  {
    v2 = PKPeerPaymentSenderAddressForExistingChatWithRecipientAddress(v1);
    if (v2)
    {
      v3 = v2;
      v4 = v3;
      goto LABEL_24;
    }

    if ([v1 length])
    {
      v15[0] = v1;
      v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:1];
    }

    else
    {
      v5 = MEMORY[0x1E695E0F0];
    }

    v6 = [MEMORY[0x1E69A5C90] iMessageService];
    v7 = IMPreferredSendingAccountForAddressesWantsGroupWithFallbackService();

    if (v7)
    {
      if ([v7 canSendMessages])
      {
        v4 = PKPeerPaymentSenderAddressFromIMAccount(v7);
LABEL_23:

        v3 = 0;
        goto LABEL_24;
      }

      v8 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v13 = 138412290;
        v14 = v7;
        v9 = "Preferred sending iMessage account %@ cannot be used to send messages.";
        v10 = v8;
        v11 = 12;
        goto LABEL_19;
      }
    }

    else
    {
      v8 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v13) = 0;
        v9 = "User does not have an preferred sending account on the iMessage service.";
        v10 = v8;
        v11 = 2;
LABEL_19:
        _os_log_impl(&dword_1BD026000, v10, OS_LOG_TYPE_DEFAULT, v9, &v13, v11);
      }
    }

    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v13) = 0;
      _os_log_impl(&dword_1BD026000, v8, OS_LOG_TYPE_DEFAULT, "Could not determine sender address, returning nil", &v13, 2u);
    }

    v4 = 0;
    goto LABEL_23;
  }

  v3 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v13) = 0;
    _os_log_impl(&dword_1BD026000, v3, OS_LOG_TYPE_DEFAULT, "iMessage service is not enabled, returning nil senderAddress.", &v13, 2u);
  }

  v4 = 0;
LABEL_24:

  return v4;
}

id PKPeerPaymentSenderAddressForExistingChatWithRecipientAddress(void *a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = PKPeerPaymentExistingiMessageChatForRecipientAddress(v1);
  v3 = PKLogFacilityTypeGetObject();
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
  if (v2)
  {
    if (v4)
    {
      v12 = 138412546;
      v13 = v2;
      v14 = 2112;
      v15 = v1;
      _os_log_impl(&dword_1BD026000, v3, OS_LOG_TYPE_DEFAULT, "Found existing chat %@ with recipient %@", &v12, 0x16u);
    }

    v5 = [v2 account];
    if ([v5 canSendMessages])
    {
      v6 = [v2 lastAddressedHandleID];
      v7 = [v5 strippedLogin];
      v8 = [v5 aliases];
      if ([v6 length])
      {
        if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
        {
          v12 = 138412802;
          v13 = v6;
          v14 = 2112;
          v15 = v8;
          v16 = 2112;
          v17 = v7;
          _os_log_impl(&dword_1BD026000, v3, OS_LOG_TYPE_DEFAULT, "Using lastAddressedSenderID %@ as sender addresss. Ignoring aliases: %@, strippedLogin: %@", &v12, 0x20u);
        }

        v9 = v6;
      }

      else
      {
        v9 = PKPeerPaymentSenderAddressFromIMAccount(v5);
      }

      v10 = v9;
    }

    else
    {
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
      {
        v12 = 138412290;
        v13 = v5;
        _os_log_impl(&dword_1BD026000, v3, OS_LOG_TYPE_DEFAULT, "iMessage account of existing chat, %@, cannot be used to send messages.", &v12, 0xCu);
      }

      v10 = 0;
    }
  }

  else
  {
    if (v4)
    {
      LOWORD(v12) = 0;
      _os_log_impl(&dword_1BD026000, v3, OS_LOG_TYPE_DEFAULT, "Could not find sender address from existing iMessage chat, falling back to preferred sending account.", &v12, 2u);
    }

    v10 = 0;
    v5 = v3;
  }

  return v10;
}

uint64_t PKPeerPaymentSendMessageWithRecipientAddress(void *a1, void *a2)
{
  v47 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v5 = [v3 underlyingMessage];
  v6 = [v3 memo];
  v7 = [MEMORY[0x1E6993C60] compositionWithMSMessage:v5 appExtensionIdentifier:*MEMORY[0x1E69BC338]];
  if ([v6 length])
  {
    v8 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v6];
    v9 = [v7 compositionByAppendingText:v8];

    v7 = v9;
  }

  v10 = PKLogFacilityTypeGetObject();
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
  if (v7)
  {
    if (v11)
    {
      *buf = 138412546;
      v44 = v7;
      v45 = 2112;
      v46 = v4;
      _os_log_impl(&dword_1BD026000, v10, OS_LOG_TYPE_DEFAULT, "Sending composition %@ to recipient %@", buf, 0x16u);
    }

    if (_PKPeerPaymentConnectToIMDaemonController_onceToken != -1)
    {
      dispatch_once(&_PKPeerPaymentConnectToIMDaemonController_onceToken, &__block_literal_global_158);
    }

    v42 = v4;
    v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v42 count:1];
    v13 = CKMakeHandlesFromRecipients();
    v14 = [v13 firstObject];

    v15 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
    if (v14)
    {
      v36 = v4;
      if (v15)
      {
        *buf = 138412290;
        v44 = v14;
        _os_log_impl(&dword_1BD026000, v10, OS_LOG_TYPE_DEFAULT, "Resolved recipient IMHandle: %@", buf, 0xCu);
      }

      v16 = [MEMORY[0x1E69A5AF8] sharedRegistry];
      v17 = [v16 chatWithHandle:v14];

      [v17 join];
      v18 = [objc_alloc(MEMORY[0x1E6993C68]) initWithChat:v17];
      [v18 refreshServiceForSending];
      v19 = [v18 messagesFromComposition:v7];
      v20 = [v19 count];
      v21 = v20 != 0;
      v34 = v19;
      v35 = v14;
      if (v20)
      {
        v30 = v17;
        v31 = v7;
        v32 = v6;
        v33 = v5;
        v22 = [MEMORY[0x1E69A5C90] iMessageService];
        v37 = 0u;
        v38 = 0u;
        v39 = 0u;
        v40 = 0u;
        v23 = v19;
        v24 = [v23 countByEnumeratingWithState:&v37 objects:v41 count:16];
        if (v24)
        {
          v25 = v24;
          v26 = *v38;
          do
          {
            for (i = 0; i != v25; ++i)
            {
              if (*v38 != v26)
              {
                objc_enumerationMutation(v23);
              }

              v28 = *(*(&v37 + 1) + 8 * i);
              if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412290;
                v44 = v28;
                _os_log_impl(&dword_1BD026000, v10, OS_LOG_TYPE_DEFAULT, "Sending IMMessage: %@", buf, 0xCu);
              }

              [v18 sendMessage:v28 onService:v22 newComposition:0];
            }

            v25 = [v23 countByEnumeratingWithState:&v37 objects:v41 count:16];
          }

          while (v25);
        }

        v5 = v33;
        v4 = v36;
        v7 = v31;
        v6 = v32;
        v21 = v21;
        v17 = v30;
      }

      else
      {
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412546;
          v44 = v7;
          v45 = 2112;
          v46 = v18;
          _os_log_impl(&dword_1BD026000, v10, OS_LOG_TYPE_DEFAULT, "Could not create IMMessages with composition: %@ conversation %@", buf, 0x16u);
        }

        v22 = v10;
        v4 = v36;
      }

      v10 = v17;
      v14 = v35;
    }

    else
    {
      if (v15)
      {
        *buf = 138412290;
        v44 = v4;
        _os_log_impl(&dword_1BD026000, v10, OS_LOG_TYPE_DEFAULT, "Could not resolve IMHandle for recipient %@", buf, 0xCu);
      }

      v21 = 0;
    }
  }

  else
  {
    if (v11)
    {
      *buf = 138412290;
      v44 = v3;
      _os_log_impl(&dword_1BD026000, v10, OS_LOG_TYPE_DEFAULT, "Could not construct composition for peer payment message: %@", buf, 0xCu);
    }

    v21 = 0;
    v14 = v10;
  }

  return v21;
}

uint64_t PKPeerPaymentRecipientIsMe(void *a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (_PKPeerPaymentConnectToIMDaemonController_onceToken != -1)
  {
    dispatch_once(&_PKPeerPaymentConnectToIMDaemonController_onceToken, &__block_literal_global_158);
  }

  if ([v1 length])
  {
    v2 = [MEMORY[0x1E69A5A80] sharedInstance];
    v3 = [MEMORY[0x1E69A5C90] iMessageService];
    v4 = [v2 activeAccountsForService:v3];

    if ([v4 count])
    {
      v5 = PKIDSSanitizedAddress();
      v11 = 0u;
      v12 = 0u;
      v13 = 0u;
      v14 = 0u;
      v6 = v4;
      v7 = [v6 countByEnumeratingWithState:&v11 objects:v16 count:16];
      if (v7)
      {
        v8 = *v12;
        while (2)
        {
          for (i = 0; i != v7; ++i)
          {
            if (*v12 != v8)
            {
              objc_enumerationMutation(v6);
            }

            if ([*(*(&v11 + 1) + 8 * i) hasAlias:{v5, v11}])
            {
              v7 = 1;
              goto LABEL_16;
            }
          }

          v7 = [v6 countByEnumeratingWithState:&v11 objects:v16 count:16];
          if (v7)
          {
            continue;
          }

          break;
        }
      }

LABEL_16:
    }

    else
    {
      v5 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1BD026000, v5, OS_LOG_TYPE_DEFAULT, "iMessage service could not locate any active accounts", buf, 2u);
      }

      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

id PKPeerPaymentNormalizedMergedPinningIdentifiersForRecipientAddress(void *a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (_PKPeerPaymentConnectToIMDaemonController_onceToken != -1)
  {
    dispatch_once(&_PKPeerPaymentConnectToIMDaemonController_onceToken, &__block_literal_global_158);
  }

  if ([MEMORY[0x1E69A5CA0] iMessageEnabled])
  {
    v2 = PKPeerPaymentExistingiMessageChatForRecipientAddress(v1);
    if (v2)
    {
      v3 = objc_alloc_init(MEMORY[0x1E695DFA8]);
      v4 = [v2 mergedPinningIdentifiers];
      v12 = 0u;
      v13 = 0u;
      v14 = 0u;
      v15 = 0u;
      v5 = [v4 countByEnumeratingWithState:&v12 objects:v17 count:16];
      if (v5)
      {
        v6 = v5;
        v7 = *v13;
        do
        {
          for (i = 0; i != v6; ++i)
          {
            if (*v13 != v7)
            {
              objc_enumerationMutation(v4);
            }

            v9 = PKIDSNormalizedAddress();
            [v3 addObject:v9];
          }

          v6 = [v4 countByEnumeratingWithState:&v12 objects:v17 count:16];
        }

        while (v6);
      }

      v10 = [v3 copy];
    }

    else
    {
      v3 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1BD026000, v3, OS_LOG_TYPE_DEFAULT, "Could not find existing iMessage chat.", buf, 2u);
      }

      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1BD026000, v3, OS_LOG_TYPE_DEFAULT, "Could not determine persistent ID, returning nil", buf, 2u);
      }

      v10 = 0;
    }
  }

  else
  {
    v2 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1BD026000, v2, OS_LOG_TYPE_DEFAULT, "iMessage service is not enabled, returning nil normalizedMergedPinningIdentifiers.", buf, 2u);
    }

    v10 = 0;
  }

  return v10;
}

void PKPeerPaymentMessagesChatNameAndImageDataForGroupIdentifier(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (v4)
  {
    if (!v3)
    {
      (*(v4 + 2))(v4, 0, 0);
    }

    v6 = dispatch_get_global_queue(2, 0);
    v7 = v3;
    v8 = v5;
    IMSPIQueryChatWithGroupID();
  }
}

void __PKPeerPaymentMessagesChatNameAndImageDataForGroupIdentifier_block_invoke(uint64_t a1, void *a2)
{
  v44[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [v3 displayName];
  if (*(a1 + 48) == *MEMORY[0x1E695F060] && *(a1 + 56) == *(MEMORY[0x1E695F060] + 8))
  {
    v9 = 0;
  }

  else
  {
    v44[0] = *(a1 + 32);
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v44 count:1];
    v7 = IMSPIGetGroupPhotosForChatsWithGroupIDs();
    v8 = [v7 allValues];
    v9 = [v8 firstObject];

    if (!v9)
    {
      v33 = a1;
      v34 = v4;
      v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v11 = objc_alloc(MEMORY[0x1E69B8740]);
      v12 = objc_alloc_init(MEMORY[0x1E695CE18]);
      v43 = *MEMORY[0x1E695C278];
      v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v43 count:1];
      v14 = [v11 initWithContactStore:v12 keysToFetch:v13];

      v38 = 0u;
      v39 = 0u;
      v36 = 0u;
      v37 = 0u;
      v35 = v3;
      v15 = [v3 handles];
      v16 = [v15 countByEnumeratingWithState:&v36 objects:v42 count:16];
      if (v16)
      {
        v17 = v16;
        v18 = *v37;
        do
        {
          for (i = 0; i != v17; ++i)
          {
            if (*v37 != v18)
            {
              objc_enumerationMutation(v15);
            }

            v20 = [*(*(&v36 + 1) + 8 * i) address];
            v21 = [v14 contactForHandle:v20];
            v22 = v21;
            if (v21)
            {
              v23 = v21;
            }

            else
            {
              v23 = objc_alloc_init(MEMORY[0x1E695CD58]);
            }

            v24 = v23;

            [v10 addObject:v24];
          }

          v17 = [v15 countByEnumeratingWithState:&v36 objects:v42 count:16];
        }

        while (v17);
      }

      if ([v10 count])
      {
        v25 = [MEMORY[0x1E69DC668] sharedApplication];
        v26 = [v25 userInterfaceLayoutDirection] == 1;

        v27 = objc_alloc(MEMORY[0x1E695D098]);
        v28 = [MEMORY[0x1E695D0A8] defaultSettings];
        v29 = [v27 initWithSettings:v28];

        a1 = v33;
        v30 = [MEMORY[0x1E695D0B0] scopeWithPointSize:v26 scale:0 rightToLeft:*(v33 + 48) style:{*(v33 + 56), PKUIScreenScale()}];
        v31 = [v29 avatarImageForContacts:v10 scope:v30];

        v9 = UIImagePNGRepresentation(v31);
      }

      else
      {
        v29 = PKLogFacilityTypeGetObject();
        a1 = v33;
        if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
        {
          v32 = *(v33 + 32);
          *buf = 138412290;
          v41 = v32;
          _os_log_error_impl(&dword_1BD026000, v29, OS_LOG_TYPE_ERROR, "No contacts found for chat with group identifier %@. Unable to fetch group image data.", buf, 0xCu);
        }

        v9 = 0;
      }

      v4 = v34;
      v3 = v35;
    }
  }

  (*(*(a1 + 40) + 16))();
}

id PKPeerPaymentMessageColorFromSemanticColor(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = PKPassKitUIBundle();
  v3 = a1 - 14;
  if ((a1 - 14) > 9 || ((0x37Bu >> v3) & 1) == 0 || ([MEMORY[0x1E69DC888] colorNamed:off_1E8027258[v3] inBundle:v2 compatibleWithTraitCollection:0], (v4 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v5 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 134217984;
      v11 = a1;
      _os_log_impl(&dword_1BD026000, v5, OS_LOG_TYPE_DEFAULT, "Unknown semantic color %ld, falling back to grey", &v10, 0xCu);
    }

    v6 = [MEMORY[0x1E69DC888] colorNamed:@"pastelGray" inBundle:v2 compatibleWithTraitCollection:0];
    v7 = v6;
    if (v6)
    {
      v8 = v6;
    }

    else
    {
      v8 = [MEMORY[0x1E69DC888] systemGrayColor];
    }

    v4 = v8;
  }

  return v4;
}

id PKPeerPaymentRecurringPaymentMemoImage(void *a1, double a2, double a3)
{
  v5 = a1;
  v6 = [v5 emoji];
  if ([v6 length])
  {
    v7 = PKPeerPaymentMessageColorFromSemanticColor([v5 color]);
    v8 = *MEMORY[0x1E695EFF8];
    v9 = *(MEMORY[0x1E695EFF8] + 8);
    v10 = objc_alloc(MEMORY[0x1E69DCA78]);
    v11 = [MEMORY[0x1E69DCA80] preferredFormat];
    v12 = [v10 initWithBounds:v11 format:{v8, v9, a2, a3}];

    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __PKPeerPaymentRecurringPaymentMemoImage_block_invoke;
    v16[3] = &unk_1E80271F0;
    v17 = v7;
    v19 = v8;
    v20 = v9;
    v21 = a2;
    v22 = a3;
    v18 = v6;
    v23 = a2;
    v24 = a3;
    v13 = v7;
    v14 = [v12 imageWithActions:v16];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

void __PKPeerPaymentRecurringPaymentMemoImage_block_invoke(uint64_t a1, void *a2)
{
  v16[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  CGContextSetFillColorWithColor([v3 CGContext], objc_msgSend(*(a1 + 32), "CGColor"));
  [v3 fillRect:{*(a1 + 48), *(a1 + 56), *(a1 + 64), *(a1 + 72)}];

  PKRectCenteredIntegralRect();
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = *(a1 + 40);
  v15 = *MEMORY[0x1E69DB648];
  v13 = [MEMORY[0x1E69DB878] systemFontOfSize:*(a1 + 80) * 0.5];
  v16[0] = v13;
  v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:&v15 count:1];
  [v12 drawInRect:v14 withAttributes:{v5, v7, v9, v11}];
}

id PKPeerPaymentRecurringPaymentMemoSuggestions()
{
  v23 = *MEMORY[0x1E69E9840];
  v0 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v1 = PKPeerPaymentRecurringPaymentRecentMemoIcons();
  [v0 addObjectsFromArray:v1];

  v2 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v3 = v0;
  v4 = [v3 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v19;
    do
    {
      v7 = 0;
      do
      {
        if (*v19 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v18 + 1) + 8 * v7);
        v9 = [v8 emoji];
        v10 = [v8 color];

        v11 = [v9 stringByAppendingFormat:@"-%li", v10];

        [v2 setObject:v8 forKey:v11];
        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v5);
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __PKPeerPaymentRecurringPaymentMemoSuggestions_block_invoke_2;
  aBlock[3] = &unk_1E8027218;
  v12 = v3;
  v17 = v12;
  v13 = _Block_copy(aBlock);
  v13[2](v13, @"🚌", 20);
  v13[2](v13, @"🛍️", 18);
  v13[2](v13, @"🚗", 18);
  v13[2](v13, @"💰", 17);
  v13[2](v13, @"🍔", 22);
  v13[2](v13, @"🧘🏽", 15);
  v13[2](v13, @"🏠", 14);
  v13[2](v13, @"✈️", 14);
  v13[2](v13, @"🧹", 19);
  v13[2](v13, @"🎓", 19);
  v13[2](v13, @"📚", 23);
  v14 = v12;

  return v12;
}

void __PKPeerPaymentRecurringPaymentMemoSuggestions_block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = MEMORY[0x1E69B8FE0];
  v6 = a2;
  v7 = objc_alloc_init(v5);
  [v7 setEmoji:v6];

  [v7 setColor:a3];
  [*(a1 + 32) removeObject:v7];
  [*(a1 + 32) addObject:v7];
}

void *PKComposeRecipientFromContact(void *a1)
{
  v1 = a1;
  v2 = [v1 phoneNumbers];
  v3 = [v1 emailAddresses];
  v4 = [v3 pk_firstObjectPassingTest:&__block_literal_global_153_0];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 value];
    goto LABEL_3;
  }

  if ([v2 count])
  {
    v8 = [v2 firstObject];
    v9 = [v8 value];
    v6 = [v9 stringValue];

    v7 = 1;
    if (v6)
    {
      goto LABEL_7;
    }

LABEL_11:
    v10 = 0;
    goto LABEL_12;
  }

  if (![v3 count])
  {
    v6 = 0;
    goto LABEL_11;
  }

  v11 = [v3 firstObject];
  v6 = [v11 value];

LABEL_3:
  v7 = 0;
  if (!v6)
  {
    goto LABEL_11;
  }

LABEL_7:
  v10 = [objc_alloc(MEMORY[0x1E6996408]) initWithContact:v1 address:v6 kind:v7];
LABEL_12:
  v12 = v10;

  return v10;
}

uint64_t __PKComposeRecipientFromContact_block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 label];
  v3 = [v2 isEqualToString:*MEMORY[0x1E695CB58]];

  return v3;
}

id PKPeerPaymentTotalAmountReceivedForPendingRequest(void *a1)
{
  v24 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = [v1 receivedTransactions];
  if (![v2 count])
  {
    v16 = [v1 currencyAmount];
    v3 = [v16 currency];

    if (v3)
    {
      v17 = [MEMORY[0x1E696AB90] zero];
      v6 = PKCurrencyAmountMake();

      goto LABEL_19;
    }

    goto LABEL_18;
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v3 = v2;
  v4 = [v3 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (!v4)
  {
LABEL_18:
    v6 = 0;
    goto LABEL_19;
  }

  v5 = v4;
  v6 = 0;
  v7 = *v20;
  do
  {
    for (i = 0; i != v5; ++i)
    {
      if (*v20 != v7)
      {
        objc_enumerationMutation(v3);
      }

      v9 = *(*(&v19 + 1) + 8 * i);
      v10 = [v9 transactionStatus];
      v11 = v10;
      if (v6)
      {
        if (v10 != 1)
        {
          continue;
        }

        v12 = [v9 currencyAmount];
        v13 = [v6 currencyAmountByAddingCurrencyAmount:v12];
      }

      else
      {
        v14 = [v9 currencyAmount];
        v6 = v14;
        if (v11 == 1)
        {
          continue;
        }

        v12 = [v14 currency];

        v6 = [MEMORY[0x1E696AB90] zero];
        v13 = PKCurrencyAmountMake();
      }

      v15 = v13;

      v6 = v15;
    }

    v5 = [v3 countByEnumeratingWithState:&v19 objects:v23 count:16];
  }

  while (v5);
LABEL_19:

  return v6;
}

void sub_1BE007F9C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BE00D744(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 144));
  _Unwind_Resume(a1);
}

void sub_1BE00F690(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BE00FBA4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v3 + 32));
  objc_destroyWeak((v2 + 40));
  objc_destroyWeak((v1 + 48));
  _Block_object_dispose((v4 - 136), 8);
  objc_destroyWeak((v4 - 88));
  _Unwind_Resume(a1);
}

void sub_1BE012574(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BE012D1C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 72));
  _Unwind_Resume(a1);
}

void sub_1BE013C34(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_1BE014814(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 56));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_1BE014FA4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BE015300(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BE0156B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BE015998(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BE0165CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v20 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BE017A48(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BE018078(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, id location, char a26)
{
  objc_destroyWeak((v26 + 40));
  objc_destroyWeak((v27 + 56));
  objc_destroyWeak(&location);
  _Block_object_dispose(&a26, 8);
  _Unwind_Resume(a1);
}

void sub_1BE018550(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BE018A3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, id a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, id a33)
{
  objc_destroyWeak((v33 + 40));
  objc_destroyWeak(&a26);
  objc_destroyWeak(&a33);
  objc_destroyWeak((v34 - 128));
  objc_destroyWeak((v34 - 112));
  _Unwind_Resume(a1);
}

void sub_1BE018F44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  objc_destroyWeak(va);
  _Unwind_Resume(a1);
}

void sub_1BE019BB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, id a36)
{
  objc_destroyWeak((v36 + 40));
  objc_destroyWeak(&a36);
  objc_destroyWeak((v37 - 112));
  _Unwind_Resume(a1);
}

void sub_1BE01B378(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 72));
  _Unwind_Resume(a1);
}

void sub_1BE01C28C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BE01C830(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v19 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BE01E950(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 136));
  _Unwind_Resume(a1);
}

void sub_1BE0221C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BE022960(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

Class initFKInsightsFetchController()
{
  if (qword_1EBDAAD38 != -1)
  {
    dispatch_once(&qword_1EBDAAD38, &__block_literal_global_1736);
  }

  result = objc_getClass("FKInsightsFetchController");
  _MergedGlobals_19 = result;
  getFKInsightsFetchControllerClass = FKInsightsFetchControllerFunction;
  return result;
}

void *__LoadFinanceKitUI_block_invoke_7()
{
  result = dlopen("/System/Library/PrivateFrameworks/FinanceKitUI.framework/FinanceKitUI", 2);
  LoadFinanceKitUI_frameworkLibrary_7 = result;
  return result;
}

Class initFKOrderDetailsViewControllerProvider_0()
{
  if (qword_1EBDAAD38 != -1)
  {
    dispatch_once(&qword_1EBDAAD38, &__block_literal_global_1736);
  }

  result = objc_getClass("FKOrderDetailsViewControllerProvider");
  qword_1EBDAAD40 = result;
  getFKOrderDetailsViewControllerProviderClass_0 = FKOrderDetailsViewControllerProviderFunction_0;
  return result;
}

Class initFKApplePayOrderFetchController()
{
  if (qword_1EBDAAD38 != -1)
  {
    dispatch_once(&qword_1EBDAAD38, &__block_literal_global_1736);
  }

  result = objc_getClass("FKApplePayOrderFetchController");
  qword_1EBDAAD48 = result;
  getFKApplePayOrderFetchControllerClass = FKApplePayOrderFetchControllerFunction;
  return result;
}

void sub_1BE02473C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, id a30)
{
  objc_destroyWeak(&a30);
  objc_destroyWeak((v30 - 112));
  _Unwind_Resume(a1);
}

void sub_1BE02511C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BE026330(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 144));
  _Unwind_Resume(a1);
}

Class initCNAvatarView_14()
{
  if (qword_1EBD683F8 != -1)
  {
    dispatch_once(&qword_1EBD683F8, &__block_literal_global_265);
  }

  result = objc_getClass("CNAvatarView");
  _MergedGlobals_1_13 = result;
  _MergedGlobals_624 = CNAvatarViewFunction_14;
  return result;
}

Class initCNAvatarCardController_9()
{
  if (qword_1EBD683F8 != -1)
  {
    dispatch_once(&qword_1EBD683F8, &__block_literal_global_265);
  }

  result = objc_getClass("CNAvatarCardController");
  qword_1EBD68400 = result;
  off_1EE98A6F8 = CNAvatarCardControllerFunction_9;
  return result;
}

void sub_1BE028258(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1BE02EF68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1BE02F64C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 112));
  _Unwind_Resume(a1);
}

void sub_1BE02FBDC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 88));
  _Unwind_Resume(a1);
}

void sub_1BE030588(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 72));
  _Unwind_Resume(a1);
}

void sub_1BE030C60(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id location)
{
  objc_destroyWeak((v24 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

__CFString *FBCStateToString(__CFString *result)
{
  if (result < 6)
  {
    return off_1E8027A10[result];
  }

  __break(1u);
  return result;
}

void FBCStateFromString(void *a1, _BYTE *a2)
{
  v3 = a1;
  v26 = v3;
  if (v3 == @"Empty" || v3 && (v4 = [(__CFString *)v3 isEqualToString:@"Empty"], v26, v4))
  {
    if (a2)
    {
      *a2 = 0;
    }

    v5 = v26;
LABEL_12:

    v9 = v26;
LABEL_13:

    v10 = v26;
LABEL_14:

    v11 = v26;
LABEL_15:

    v12 = v26;
LABEL_16:

    v13 = v26;
    goto LABEL_17;
  }

  v6 = v26;
  if (v6 == @"Idle" || (v7 = v6, v26) && (v8 = [(__CFString *)v6 isEqualToString:@"Idle"], v7, v8))
  {
    if (a2)
    {
      *a2 = 1;
    }

    goto LABEL_12;
  }

  v14 = v7;
  if (v14 == @"Acquiring" || (v15 = v14, v26) && (v16 = [(__CFString *)v14 isEqualToString:@"Acquiring"], v15, v16))
  {
    if (a2)
    {
      *a2 = 2;
    }

    goto LABEL_13;
  }

  v17 = v15;
  if (v17 == @"Verifying" || (v18 = v17, v26) && (v19 = [(__CFString *)v17 isEqualToString:@"Verifying"], v18, v19))
  {
    if (a2)
    {
      *a2 = 3;
    }

    goto LABEL_14;
  }

  v20 = v18;
  if (v20 == @"Processing" || (v21 = v20, v26) && (v22 = [(__CFString *)v20 isEqualToString:@"Processing"], v21, v22))
  {
    if (a2)
    {
      *a2 = 4;
    }

    goto LABEL_15;
  }

  v23 = v21;
  if (v23 == @"Matched" || (v24 = v23, v26) && (v25 = [(__CFString *)v23 isEqualToString:@"Matched"], v24, v25))
  {
    if (a2)
    {
      *a2 = 5;
    }

    goto LABEL_16;
  }

  v13 = v26;
  if (a2)
  {
    __break(1u);
    return;
  }

LABEL_17:
}

void FBCStateEnumerate(void *a1)
{
  v2 = a1;
  if (v2)
  {
    v1 = objc_autoreleasePoolPush();
    v2[2](v2, 0);
    v2[2](v2, 1);
    v2[2](v2, 2);
    v2[2](v2, 3);
    v2[2](v2, 4);
    v2[2](v2, 5);
    objc_autoreleasePoolPop(v1);
  }

  else
  {
    __break(1u);
  }
}

void FBCStateEnumerateTransitions(char a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __FBCStateEnumerateTransitions_block_invoke;
    v5[3] = &unk_1E80279F0;
    v7 = a1;
    v6 = v3;
    v4 = v3;
    FBCStateEnumerate(v5);
  }

  else
  {
    __break(1u);
  }
}

void __FBCStateTransitions_block_invoke(uint64_t a1, uint64_t a2)
{
  if (*(*(*(a1 + 56) + 8) + 40))
  {
    return;
  }

  v13 = [MEMORY[0x1E696AD98] numberWithChar:a2];
  v4 = [*(a1 + 32) containsObject:v13];
  v5 = v13;
  if ((v4 & 1) == 0)
  {
    [*(a1 + 32) addObject:v13];
    v6 = *(a1 + 40);
    if (!v6)
    {
LABEL_35:
      v12 = 0;
      goto LABEL_27;
    }

    v7 = *(v6 + 8);
    if (v7 == a2)
    {
      goto LABEL_34;
    }

    if (*(v6 + 8) <= 2u)
    {
      if (!*(v6 + 8))
      {
LABEL_22:
        if (a2 >= 2)
        {
          goto LABEL_34;
        }

LABEL_26:
        v8 = [FBCStateTransitionNode alloc];
        v9 = *(v6 + 16);
        v10 = [MEMORY[0x1E696AD98] numberWithChar:a2];
        v11 = [v9 arrayByAddingObject:v10];
        v12 = [(FBCStateTransitionNode *)v8 _initWithState:a2 transitions:v11];

LABEL_27:
        if (*(a1 + 64) == a2)
        {
          objc_storeStrong((*(*(a1 + 56) + 8) + 40), v12);
        }

        else
        {
          [*(a1 + 48) addObject:v12];
        }

        v5 = v13;
        goto LABEL_31;
      }

      if (v7 == 1)
      {
        if (a2 < 3)
        {
          goto LABEL_26;
        }

        goto LABEL_18;
      }

      v7 = a2 - 1;
      if ((a2 - 1) < 4)
      {
        goto LABEL_26;
      }

      if (!a2)
      {
LABEL_34:
        __break(1u);
        goto LABEL_35;
      }

      __break(1u);
    }

    switch(v7)
    {
      case 3:
        if (a2 > 5 || ((1 << a2) & 0x2A) == 0)
        {
          goto LABEL_34;
        }

        goto LABEL_26;
      case 4:
        goto LABEL_19;
      case 5:
        if (a2 < 2 || a2 == 5)
        {
          goto LABEL_26;
        }

LABEL_18:
        __break(1u);
LABEL_19:
        if ((a2 - 4) < 2 || a2 == 1)
        {
          goto LABEL_26;
        }

        __break(1u);
        goto LABEL_22;
    }

    goto LABEL_34;
  }

LABEL_31:
}

uint64_t __FBCStateEnumerateTransitions_block_invoke(uint64_t result, unsigned int a2)
{
  v2 = *(result + 40);
  if (v2 > 2)
  {
    if (v2 == 3)
    {
      if (a2 > 5)
      {
        goto LABEL_28;
      }

      v3 = 1 << a2;
      v4 = 21;
    }

    else
    {
      if (v2 != 4)
      {
        if (v2 != 5 || a2 > 5)
        {
          goto LABEL_28;
        }

        if (((1 << a2) & 0x1C) != 0)
        {
          return result;
        }

        return (*(*(result + 32) + 16))();
      }

      if (a2 > 5)
      {
        goto LABEL_28;
      }

      v3 = 1 << a2;
      v4 = 13;
    }

    if ((v3 & v4) != 0)
    {
      return result;
    }

    return (*(*(result + 32) + 16))();
  }

  if (!*(result + 40))
  {
    if (a2 - 2 < 4)
    {
      return result;
    }

    if (a2 >= 2)
    {
      goto LABEL_28;
    }

    return (*(*(result + 32) + 16))();
  }

  if (v2 == 1)
  {
    if (a2 < 3)
    {
      return (*(*(result + 32) + 16))();
    }

    if (a2 - 3 < 3)
    {
      return result;
    }

LABEL_28:
    __break(1u);
    return result;
  }

  if (v2 != 2)
  {
    goto LABEL_28;
  }

  if (a2 - 1 < 4)
  {
    return (*(*(result + 32) + 16))();
  }

  if (a2 && a2 != 5)
  {
    goto LABEL_28;
  }

  return result;
}

void sub_1BE033690(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 72));
  _Unwind_Resume(a1);
}

void sub_1BE036B84(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 80));
  _Unwind_Resume(a1);
}

id PKPeerPaymentSetupOperationDescriptionForOperations(unint64_t a1)
{
  v2 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if (a1)
  {
    v3 = 1;
    v4 = 1;
    do
    {
      if ((v4 & a1) != 0)
      {
        if (v4 > 15)
        {
          if (v4 <= 63)
          {
            if (v4 == 16)
            {
              v5 = @"CloudStoreSetup";
              goto LABEL_27;
            }

            if (v4 == 32)
            {
              v5 = @"ProvisionPass";
              goto LABEL_27;
            }
          }

          else
          {
            switch(v4)
            {
              case 64:
                v5 = @"CIP";
                goto LABEL_27;
              case 128:
                v5 = @"AddAssociatedAccount";
                goto LABEL_27;
              case 256:
                v5 = @"NameConfirmation";
                goto LABEL_27;
            }
          }
        }

        else
        {
          if (v4 <= 1)
          {
            if (v4)
            {
              v5 = @"Terms";
              if (v4 != 1)
              {
                goto LABEL_28;
              }
            }

            else
            {
              v5 = @"None";
            }

            goto LABEL_27;
          }

          switch(v4)
          {
            case 2:
              v5 = @"ManateeCapable";
              goto LABEL_27;
            case 4:
              v5 = @"EnsurePassCount";
              goto LABEL_27;
            case 8:
              v5 = @"ManateeMissingTLKs";
LABEL_27:
              [v2 addObject:v5];
              break;
          }
        }
      }

LABEL_28:
      v4 = 1 << v3++;
    }

    while (v4 <= a1);
  }

  v6 = [v2 description];

  return v6;
}

void sub_1BE0399FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

Class initNPKCompanionAgentConnection_10()
{
  if (qword_1EBD6ADD0[0] != -1)
  {
    dispatch_once(qword_1EBD6ADD0, &__block_literal_global_415_0);
  }

  result = objc_getClass("NPKCompanionAgentConnection");
  _MergedGlobals_613 = result;
  getNPKCompanionAgentConnectionClass_9 = NPKCompanionAgentConnectionFunction_10;
  return result;
}

void *__LoadNanoPassKit_block_invoke_11()
{
  result = dlopen("/System/Library/PrivateFrameworks/NanoPassKit.framework/NanoPassKit", 2);
  LoadNanoPassKit_frameworkLibrary_11 = result;
  return result;
}

void sub_1BE0421CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak(&a15);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BE0428D4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 96));
  _Unwind_Resume(a1);
}

void sub_1BE04359C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id ApplySymbolToBackgroundImage(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if (v3 && ([v3 size], v5 != 0.0))
  {
    [v3 size];
    v6 = 0;
    if (v4 && v8 != 0.0)
    {
      v9 = *MEMORY[0x1E695EFF8];
      v10 = *(MEMORY[0x1E695EFF8] + 8);
      [v4 size];
      v12 = v11;
      v14 = v13;
      v15 = objc_alloc(MEMORY[0x1E69DCA78]);
      v16 = [MEMORY[0x1E69DCA80] preferredFormat];
      v17 = [v15 initWithBounds:v16 format:{v9, v10, v12, v14}];

      [v3 size];
      v19 = v18;
      [v4 size];
      v21 = v19 / v20;
      [v3 size];
      v23 = v22;
      [v4 size];
      v25 = fmax(v21, v23 / v24);
      if (v25 <= 0.7)
      {
        v26 = 1.0;
      }

      else
      {
        v26 = 0.7 / v25;
      }

      v27[0] = MEMORY[0x1E69E9820];
      v27[1] = 3221225472;
      v27[2] = __ApplySymbolToBackgroundImage_block_invoke;
      v27[3] = &unk_1E8014D30;
      v28 = v4;
      v30 = v9;
      v31 = v10;
      v32 = v12;
      v33 = v14;
      v29 = v3;
      v34 = v26;
      v6 = [v17 imageWithActions:v27];
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

id ImageOfSizeAndColor(void *a1, double a2, double a3)
{
  v5 = a1;
  v6 = *MEMORY[0x1E695EFF8];
  v7 = *(MEMORY[0x1E695EFF8] + 8);
  v8 = objc_alloc(MEMORY[0x1E69DCA78]);
  v9 = [MEMORY[0x1E69DCA80] preferredFormat];
  v10 = [v8 initWithBounds:v9 format:{v6, v7, a2, a3}];

  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __ImageOfSizeAndColor_block_invoke;
  v14[3] = &unk_1E8014C20;
  v15 = v5;
  v16 = v6;
  v17 = v7;
  v18 = a2;
  v19 = a3;
  v11 = v5;
  v12 = [v10 imageWithActions:v14];

  return v12;
}

uint64_t __ApplySymbolToBackgroundImage_block_invoke(uint64_t a1)
{
  [*(a1 + 32) drawInRect:{*(a1 + 48), *(a1 + 56), *(a1 + 64), *(a1 + 72)}];
  [*(a1 + 40) size];
  [*(a1 + 40) size];
  PKRectCenteredIntegralRect();
  v2 = *(a1 + 40);

  return [v2 drawInRect:?];
}

void __ImageOfSizeAndColor_block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  CGContextSetFillColorWithColor([v3 CGContext], objc_msgSend(*(a1 + 32), "CGColor"));
  [v3 fillRect:{*(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 64)}];
}

CGRect CGRectApplyAffineTransform(CGRect rect, CGAffineTransform *t)
{
  MEMORY[0x1EEDBAD98](t, rect.origin, *&rect.origin.y, rect.size, *&rect.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

CGRect CGRectInset(CGRect rect, CGFloat dx, CGFloat dy)
{
  MEMORY[0x1EEDBAE30](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height, dx, dy);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

CGRect CGRectIntersection(CGRect r1, CGRect r2)
{
  MEMORY[0x1EEDBAE40](r1.origin, *&r1.origin.y, r1.size, *&r1.size.height, r2.origin, *&r2.origin.y, r2.size, *&r2.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

CGRect CGRectOffset(CGRect rect, CGFloat dx, CGFloat dy)
{
  MEMORY[0x1EEDBAE78](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height, dx, dy);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

CGRect CGRectStandardize(CGRect rect)
{
  MEMORY[0x1EEDBAE80](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height);
  result.size.height = v4;
  result.size.width = v3;
  result.origin.y = v2;
  result.origin.x = v1;
  return result;
}

CGRect CGRectUnion(CGRect r1, CGRect r2)
{
  MEMORY[0x1EEDBAE88](r1.origin, *&r1.origin.y, r1.size, *&r1.size.height, r2.origin, *&r2.origin.y, r2.size, *&r2.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

CLLocationCoordinate2D CLLocationCoordinate2DMake(CLLocationDegrees latitude, CLLocationDegrees longitude)
{
  MEMORY[0x1EEDE89C8](latitude, longitude);
  result.longitude = v3;
  result.latitude = v2;
  return result;
}

CGRect CTFontGetBoundingRectsForGlyphs(CTFontRef font, CTFontOrientation orientation, const CGGlyph *glyphs, CGRect *boundingRects, CFIndex count)
{
  MEMORY[0x1EEDBEF98](font, *&orientation, glyphs, boundingRects, count);
  result.size.height = v8;
  result.size.width = v7;
  result.origin.y = v6;
  result.origin.x = v5;
  return result;
}

CGSize CTFramesetterSuggestFrameSizeWithConstraints(CTFramesetterRef framesetter, CFRange stringRange, CFDictionaryRef frameAttributes, CGSize constraints, CFRange *fitRange)
{
  MEMORY[0x1EEDBF1F0](framesetter, stringRange.location, stringRange.length, frameAttributes, fitRange, constraints, *&constraints.height);
  result.height = v6;
  result.width = v5;
  return result;
}

CGRect CTLineGetImageBounds(CTLineRef line, CGContextRef context)
{
  MEMORY[0x1EEDBF300](line, context);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

CFRange CTLineGetStringRange(CTLineRef line)
{
  v1 = MEMORY[0x1EEDBF340](line);
  result.length = v2;
  result.location = v1;
  return result;
}

MKCoordinateRegion MKCoordinateRegionMakeWithDistance(CLLocationCoordinate2D centerCoordinate, CLLocationDistance latitudinalMeters, CLLocationDistance longitudinalMeters)
{
  MEMORY[0x1EEDCCB60](centerCoordinate, *&centerCoordinate.longitude, latitudinalMeters, longitudinalMeters);
  result.span.longitudeDelta = v6;
  result.span.latitudeDelta = v5;
  result.center.longitude = v4;
  result.center.latitude = v3;
  return result;
}

MKMapPoint MKMapPointForCoordinate(CLLocationCoordinate2D coordinate)
{
  MEMORY[0x1EEDCCB88](coordinate, *&coordinate.longitude);
  result.y = v2;
  result.x = v1;
  return result;
}

NSRect NSIntegralRectWithOptions(NSRect aRect, NSAlignmentOptions opts)
{
  MEMORY[0x1EEDC6FD8](opts, aRect.origin, *&aRect.origin.y, aRect.size, *&aRect.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

NSRange NSIntersectionRange(NSRange range1, NSRange range2)
{
  v2 = MEMORY[0x1EEDC6FE0](range1.location, range1.length, range2.location, range2.length);
  result.length = v3;
  result.location = v2;
  return result;
}

uint64_t PKPassbookIsCurrentlyDeletedByUser()
{
  return MEMORY[0x1EEE24ED0]();
}

{
  return MEMORY[0x1EEE25B80]();
}

uint64_t PKLocalizedFeatureString()
{
  return MEMORY[0x1EEE25A10]();
}

{
  return MEMORY[0x1EEE25A18]();
}

uint64_t PKLocalizedApplyFeatureString()
{
  return MEMORY[0x1EEE25B10]();
}

{
  return MEMORY[0x1EEE25B18]();
}

uint64_t PKDynamicLocalizedFeatureString()
{
  return MEMORY[0x1EEE25B40]();
}

{
  return MEMORY[0x1EEE25B48]();
}

uint64_t PKLocalizedFeatureStringWithDefaultValue()
{
  return MEMORY[0x1EEE25BE0]();
}

{
  return MEMORY[0x1EEE25BE8]();
}

__double2 __sincos_stret(double a1)
{
  MEMORY[0x1EEE73570](a1);
  result.__cosval = v2;
  result.__sinval = v1;
  return result;
}

__float2 __sincosf_stret(float a1)
{
  MEMORY[0x1EEE73578](a1);
  result.__cosval = v2;
  result.__sinval = v1;
  return result;
}