@interface _PSContentFeatures
+ (id)numberOfContentFromPredictionContext:(id)context contentType:(int)type candidates:(id)candidates;
+ (id)preservePrivacySourceBundleID:(id)d;
+ (id)preservePrivacyTopLevelDomain:(id)domain;
+ (id)preservePrivacyUTIMapping:(id)mapping;
+ (id)sourceAppFromPredictionContext:(id)context candidates:(id)candidates;
+ (id)urlTopLevelDomainFromPredictionContext:(id)context candidates:(id)candidates;
+ (id)utiTypesFromPredictionContext:(id)context candidates:(id)candidates;
@end

@implementation _PSContentFeatures

+ (id)preservePrivacyUTIMapping:(id)mapping
{
  mappingCopy = mapping;
  v4 = objc_autoreleasePoolPush();
  v5 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{@"public.file-url", @"public.url", @"public.image", @"public.jpeg, public.heic", @"public.jpeg", @"com.apple.live-photo, public.heic, public.jpeg", @"com.apple.avfoundation.urlasset, com.apple.quicktime-movie", @"public.plain-text", @"public.png", @"public.vcard", @"com.apple.active-webpage, public.url", @"public.url, com.apple.active-webpage", 0}];
  objc_autoreleasePoolPop(v4);
  if ([v5 containsObject:mappingCopy])
  {
    v6 = mappingCopy;
  }

  else
  {
    v6 = @"NotInTopAllowedUTIStrings";
  }

  return v6;
}

+ (id)preservePrivacySourceBundleID:(id)d
{
  dCopy = d;
  v18 = objc_autoreleasePoolPush();
  v16 = objc_alloc(MEMORY[0x1E695DFD8]);
  v3 = +[_PSConstants mobilePhotosBundleId];
  v15 = +[_PSConstants mobileScreenshotsBundleId];
  v4 = +[_PSConstants mobileCameraBundleId];
  v5 = +[_PSConstants twitterBundleId];
  v6 = +[_PSConstants mobileSafariBundleId];
  v7 = +[_PSConstants whatsappBundleId];
  v8 = +[_PSConstants mobileMessagesBundleId];
  v9 = +[_PSConstants mobilePhoneBundleId];
  v10 = +[_PSConstants mobileMailBundleId];
  v11 = +[_PSConstants instagramBundleId];
  v12 = [v16 initWithObjects:{v3, v15, v4, v5, v6, v7, v8, v9, v10, v11, 0}];

  objc_autoreleasePoolPop(v18);
  if ([v12 containsObject:dCopy])
  {
    v13 = dCopy;
  }

  else
  {
    v13 = @"NotInTopAllowedsourceBundleIDStrings";
  }

  return v13;
}

+ (id)preservePrivacyTopLevelDomain:(id)domain
{
  v24 = *MEMORY[0x1E69E9840];
  domainCopy = domain;
  v4 = [domainCopy length];
  v5 = [domainCopy rangeOfString:@"www." options:11 range:{0, v4}];
  if (v5 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = v4;
  }

  else
  {
    v7 = v4 - (v5 + v6);
  }

  if (v5 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = 0;
  }

  else
  {
    v8 = v5 + v6;
  }

  v9 = [domainCopy rangeOfString:@"." options:2 range:{v8, v7}];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v10 = [&unk_1F2D8C1C8 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v10)
  {
    v11 = v10;
    if (v9 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v12 = v7;
    }

    else
    {
      v12 = v9 - v8;
    }

    v13 = *v20;
    v14 = @"NotInTopAllowedTopLevelDomains";
    while (2)
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v20 != v13)
        {
          objc_enumerationMutation(&unk_1F2D8C1C8);
        }

        v16 = *(*(&v19 + 1) + 8 * i);
        if (![domainCopy compare:v16 options:3 range:{v8, v12}])
        {
          v14 = v16;
          goto LABEL_21;
        }
      }

      v11 = [&unk_1F2D8C1C8 countByEnumeratingWithState:&v19 objects:v23 count:16];
      if (v11)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v14 = @"NotInTopAllowedTopLevelDomains";
  }

LABEL_21:

  v17 = *MEMORY[0x1E69E9840];

  return v14;
}

+ (id)utiTypesFromPredictionContext:(id)context candidates:(id)candidates
{
  v33 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  candidatesCopy = candidates;
  v7 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  attachments = [contextCopy attachments];
  v9 = [attachments countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v29;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v29 != v11)
        {
          objc_enumerationMutation(attachments);
        }

        v13 = *(*(&v28 + 1) + 8 * i);
        v14 = [v13 UTI];

        if (v14)
        {
          v15 = [v13 UTI];
          [v7 addObject:v15];
        }
      }

      v10 = [attachments countByEnumeratingWithState:&v28 objects:v32 count:16];
    }

    while (v10);
  }

  if ([v7 count])
  {
    allObjects = [v7 allObjects];
    v17 = [allObjects sortedArrayUsingSelector:sel_compare_];

    v18 = [v17 componentsJoinedByString:{@", "}];
    allObjects2 = [candidatesCopy allObjects];
    v20 = [_PSFeatureDictionary alloc];
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = __63___PSContentFeatures_utiTypesFromPredictionContext_candidates___block_invoke;
    v26[3] = &unk_1E7C24EF8;
    v27 = v18;
    v21 = v18;
    v22 = [allObjects2 _pas_mappedArrayWithTransform:v26];
    v23 = [(_PSFeatureDictionary *)v20 initWithObjects:v22 forKeys:allObjects2];
  }

  else
  {
    v23 = MEMORY[0x1E695E0F8];
  }

  v24 = *MEMORY[0x1E69E9840];

  return v23;
}

+ (id)sourceAppFromPredictionContext:(id)context candidates:(id)candidates
{
  contextCopy = context;
  allObjects = [candidates allObjects];
  bundleID = [contextCopy bundleID];

  if (bundleID)
  {
    v8 = [_PSFeatureDictionary alloc];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __64___PSContentFeatures_sourceAppFromPredictionContext_candidates___block_invoke;
    v12[3] = &unk_1E7C24EF8;
    v13 = contextCopy;
    v9 = [allObjects _pas_mappedArrayWithTransform:v12];
    v10 = [(_PSFeatureDictionary *)v8 initWithObjects:v9 forKeys:allObjects];
  }

  else
  {
    v10 = MEMORY[0x1E695E0F8];
  }

  return v10;
}

+ (id)numberOfContentFromPredictionContext:(id)context contentType:(int)type candidates:(id)candidates
{
  v34 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  candidatesCopy = candidates;
  v8 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  attachments = [contextCopy attachments];
  v10 = [attachments countByEnumeratingWithState:&v29 objects:v33 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v30;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v30 != v12)
        {
          objc_enumerationMutation(attachments);
        }

        v14 = *(*(&v29 + 1) + 8 * i);
        switch(type)
        {
          case 3:
            v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%li", objc_msgSend(*(*(&v29 + 1) + 8 * i), "hash")];
            [v8 addObject:v18];
            goto LABEL_15;
          case 1:
            photoSceneDescriptors = [*(*(&v29 + 1) + 8 * i) photoSceneDescriptors];

            if (!photoSceneDescriptors)
            {
              continue;
            }

            photoSceneDescriptors2 = [v14 photoSceneDescriptors];
LABEL_13:
            v18 = photoSceneDescriptors2;
            [v8 addObjectsFromArray:photoSceneDescriptors2];
LABEL_15:

            continue;
          case 0:
            peopleInPhoto = [*(*(&v29 + 1) + 8 * i) peopleInPhoto];

            if (peopleInPhoto)
            {
              photoSceneDescriptors2 = [v14 peopleInPhoto];
              goto LABEL_13;
            }

            break;
        }
      }

      v11 = [attachments countByEnumeratingWithState:&v29 objects:v33 count:16];
    }

    while (v11);
  }

  allObjects = [candidatesCopy allObjects];
  v20 = [_PSFeatureDictionary alloc];
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __82___PSContentFeatures_numberOfContentFromPredictionContext_contentType_candidates___block_invoke;
  v27[3] = &unk_1E7C24EF8;
  v28 = v8;
  v21 = v8;
  v22 = [allObjects _pas_mappedArrayWithTransform:v27];
  v23 = [(_PSFeatureDictionary *)v20 initWithObjects:v22 forKeys:allObjects];

  v24 = *MEMORY[0x1E69E9840];

  return v23;
}

+ (id)urlTopLevelDomainFromPredictionContext:(id)context candidates:(id)candidates
{
  v28 = *MEMORY[0x1E69E9840];
  candidatesCopy = candidates;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  attachments = [context attachments];
  v7 = [attachments countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v24;
    v10 = MEMORY[0x1E695E0F8];
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v24 != v9)
        {
          objc_enumerationMutation(attachments);
        }

        v12 = *(*(&v23 + 1) + 8 * i);
        contentURL = [v12 contentURL];

        if (contentURL)
        {
          contentURL2 = [v12 contentURL];
          host = [contentURL2 host];

          if (host)
          {

            allObjects = [candidatesCopy allObjects];
            v17 = [_PSFeatureDictionary alloc];
            v21[0] = MEMORY[0x1E69E9820];
            v21[1] = 3221225472;
            v21[2] = __72___PSContentFeatures_urlTopLevelDomainFromPredictionContext_candidates___block_invoke;
            v21[3] = &unk_1E7C24EF8;
            v22 = host;
            attachments = host;
            v18 = [allObjects _pas_mappedArrayWithTransform:v21];
            v10 = [(_PSFeatureDictionary *)v17 initWithObjects:v18 forKeys:allObjects];

            goto LABEL_13;
          }
        }
      }

      v8 = [attachments countByEnumeratingWithState:&v23 objects:v27 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v10 = MEMORY[0x1E695E0F8];
  }

LABEL_13:

  v19 = *MEMORY[0x1E69E9840];

  return v10;
}

@end