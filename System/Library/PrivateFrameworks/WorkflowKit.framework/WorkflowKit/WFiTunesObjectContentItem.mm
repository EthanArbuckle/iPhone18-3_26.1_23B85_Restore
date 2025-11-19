@interface WFiTunesObjectContentItem
+ (BOOL)parseiTunesURL:(id)a3 itemIdentifier:(id *)a4 countryCode:(id *)a5;
+ (BOOL)supportedTypeMustBeDeterminedByInstance:(id)a3;
+ (BOOL)urlItem_canCoerceFromURL:(id)a3;
+ (id)contentCategories;
+ (id)localizedPluralTypeDescriptionWithContext:(id)a3;
+ (id)localizedTypeDescriptionWithContext:(id)a3;
+ (id)outputTypes;
+ (id)propertyBuilders;
+ (id)urlItem_outputClasses;
+ (id)urlItem_sharingItemClassesByBundleIdentifier;
+ (void)urlItem_generateObjectRepresentations:(id)a3 fromURL:(id)a4 forClass:(Class)a5;
+ (void)urlItem_generateObjectRepresentations:(id)a3 fromiTunesURL:(id)a4 forClass:(Class)a5;
- (BOOL)canGenerateRepresentationForType:(id)a3;
- (WFiTunesObject)object;
- (id)generateObjectRepresentationForClass:(Class)a3 options:(id)a4 error:(id *)a5;
- (id)possibleArtworkURLs;
- (void)generateFileRepresentation:(id)a3 options:(id)a4 forType:(id)a5;
- (void)getArtworkDataWithURLs:(id)a3 completionHandler:(id)a4;
- (void)getArtworkForSize:(CGSize)a3 completionHandler:(id)a4;
- (void)getPreferredArtworkURL:(id)a3;
@end

@implementation WFiTunesObjectContentItem

- (BOOL)canGenerateRepresentationForType:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x1E69E0AF8] typeWithUTType:*MEMORY[0x1E6982E30]];
  v6 = [v4 conformsToType:v5];

  if (v6)
  {
    v7 = [(WFiTunesObjectContentItem *)self object];
    v8 = [v7 artworkURLs];
    isKindOfClass = [v8 count] != 0;
  }

  else
  {
    v10 = v4;
    if (v10)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v11 = v10;
      }

      else
      {
        v11 = 0;
      }
    }

    else
    {
      v11 = 0;
    }

    v12 = v11;

    v13 = [v12 string];

    LODWORD(v12) = [v13 isEqualToString:@"MPMediaItem"];
    if (!v12)
    {
      v15.receiver = self;
      v15.super_class = WFiTunesObjectContentItem;
      isKindOfClass = [(WFiTunesObjectContentItem *)&v15 canGenerateRepresentationForType:v10];
      goto LABEL_12;
    }

    v7 = [(WFiTunesObjectContentItem *)self object];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
  }

LABEL_12:
  return isKindOfClass & 1;
}

- (id)generateObjectRepresentationForClass:(Class)a3 options:(id)a4 error:(id *)a5
{
  v8 = a4;
  if (objc_opt_class() == a3)
  {
    v24 = [(WFiTunesObjectContentItem *)self object];
    v25 = [v24 viewURL];

    if (v25)
    {
      v26 = MEMORY[0x1E6996EC8];
      v27 = [(WFiTunesObjectContentItem *)self name];
      v23 = [v26 object:v25 named:v27];
    }

    else
    {
      v23 = 0;
    }

LABEL_30:

    goto LABEL_31;
  }

  v9 = NSStringFromClass(a3);
  v10 = [@"MPMediaItem" isEqualToString:v9];

  if (!v10)
  {
    if (objc_opt_class() != a3)
    {
      v46.receiver = self;
      v46.super_class = WFiTunesObjectContentItem;
      v23 = [(WFiTunesObjectContentItem *)&v46 generateObjectRepresentationForClass:a3 options:v8 error:a5];
      goto LABEL_31;
    }

    v25 = [(WFiTunesObjectContentItem *)self object];
    if ((objc_opt_respondsToSelector() & 1) != 0 && ([v25 artistName], (v28 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v29 = v28;
      v30 = MEMORY[0x1E696AEC0];
      v31 = WFLocalizedString(@"%1$@ by %2$@");
      v32 = [v25 name];
      v33 = [v30 localizedStringWithFormat:v31, v32, v29];
    }

    else
    {
      v33 = [v25 name];
    }

    v34 = [v33 length];
    v35 = [v25 viewURL];
    v36 = v35;
    if (v34)
    {
      if (v35)
      {
        v37 = MEMORY[0x1E696AEC0];
        v38 = WFLocalizedString(@"%1$@ (%2$@)");
        v39 = [v25 viewURL];
        v40 = [v39 absoluteString];
        v41 = [v37 localizedStringWithFormat:v38, v33, v40];

LABEL_26:
        if ([v41 length])
        {
          v43 = MEMORY[0x1E6996EC8];
          v44 = [(WFiTunesObjectContentItem *)self name];
          v23 = [v43 object:v41 named:v44];
        }

        else
        {
          v23 = 0;
        }

        goto LABEL_30;
      }

      v42 = v33;
    }

    else
    {
      v42 = [v35 absoluteString];
    }

    v41 = v42;
    goto LABEL_26;
  }

  v52 = 0;
  v53 = &v52;
  v54 = 0x2050000000;
  v11 = getMPMediaPropertyPredicateClass_softClass_37192;
  v55 = getMPMediaPropertyPredicateClass_softClass_37192;
  if (!getMPMediaPropertyPredicateClass_softClass_37192)
  {
    v47 = MEMORY[0x1E69E9820];
    v48 = 3221225472;
    v49 = __getMPMediaPropertyPredicateClass_block_invoke_37193;
    v50 = &unk_1E837FAC0;
    v51 = &v52;
    __getMPMediaPropertyPredicateClass_block_invoke_37193(&v47);
    v11 = v53[3];
  }

  v12 = v11;
  _Block_object_dispose(&v52, 8);
  v13 = [(WFiTunesObjectContentItem *)self object];
  v14 = [v13 identifier];
  v15 = [v11 predicateWithValue:v14 forProperty:@"storeItemAdamID"];

  v52 = 0;
  v53 = &v52;
  v54 = 0x2050000000;
  v16 = getMPMediaQueryClass_softClass_37195;
  v55 = getMPMediaQueryClass_softClass_37195;
  if (!getMPMediaQueryClass_softClass_37195)
  {
    v47 = MEMORY[0x1E69E9820];
    v48 = 3221225472;
    v49 = __getMPMediaQueryClass_block_invoke_37196;
    v50 = &unk_1E837FAC0;
    v51 = &v52;
    __getMPMediaQueryClass_block_invoke_37196(&v47);
    v16 = v53[3];
  }

  v17 = v16;
  _Block_object_dispose(&v52, 8);
  v18 = [v16 alloc];
  v19 = [MEMORY[0x1E695DFD8] setWithObject:v15];
  v20 = [v18 initWithFilterPredicates:v19];

  v21 = [v20 items];
  v22 = [v21 firstObject];

  if (v22)
  {
    v23 = [MEMORY[0x1E6996EC8] object:v22];
  }

  else
  {
    v23 = 0;
  }

LABEL_31:

  return v23;
}

- (void)generateFileRepresentation:(id)a3 options:(id)a4 forType:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([v10 conformsToUTType:*MEMORY[0x1E6982E30]])
  {
    v11 = [(WFiTunesObjectContentItem *)self object];
    v12 = [v11 artworkURLs];
    v13 = [v12 count];

    if (v13)
    {
      v20[0] = 0;
      v20[1] = v20;
      v20[2] = 0x3032000000;
      v20[3] = __Block_byref_object_copy__37235;
      v20[4] = __Block_byref_object_dispose__37236;
      v21 = 0;
      v14 = [(WFiTunesObjectContentItem *)self possibleArtworkURLs];
      v19[0] = MEMORY[0x1E69E9820];
      v19[1] = 3221225472;
      v19[2] = __72__WFiTunesObjectContentItem_generateFileRepresentation_options_forType___block_invoke;
      v19[3] = &unk_1E8378FF8;
      v19[4] = self;
      v19[5] = v20;
      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3221225472;
      v16[2] = __72__WFiTunesObjectContentItem_generateFileRepresentation_options_forType___block_invoke_3;
      v16[3] = &unk_1E8379020;
      v17 = v8;
      v18 = v20;
      [v14 if_enumerateAsynchronouslyInSequence:v19 completionHandler:v16];

      _Block_object_dispose(v20, 8);
    }

    else
    {
      (*(v8 + 2))(v8, 0, 0);
    }
  }

  else
  {
    v15.receiver = self;
    v15.super_class = WFiTunesObjectContentItem;
    [(WFiTunesObjectContentItem *)&v15 generateFileRepresentation:v8 options:v9 forType:v10];
  }
}

void __72__WFiTunesObjectContentItem_generateFileRepresentation_options_forType___block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4, uint64_t a5)
{
  v8 = a2;
  v9 = a4;
  v10 = [MEMORY[0x1E696AF78] wf_sharedSession];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __72__WFiTunesObjectContentItem_generateFileRepresentation_options_forType___block_invoke_2;
  v16[3] = &unk_1E8378FD0;
  v12 = *(a1 + 32);
  v11 = *(a1 + 40);
  v19 = v9;
  v20 = v11;
  v17 = v8;
  v18 = v12;
  v21 = a5;
  v13 = v8;
  v14 = v9;
  v15 = [v10 downloadTaskWithURL:v13 completionHandler:v16];
  [v15 resume];
}

void __72__WFiTunesObjectContentItem_generateFileRepresentation_options_forType___block_invoke_2(uint64_t a1, void *a2, void *a3, void *a4)
{
  v23 = a2;
  v7 = a3;
  v8 = a4;
  if (v23 && ([MEMORY[0x1E696AC90] indexSetWithIndexesInRange:{200, 100}], v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v9, "containsIndex:", objc_msgSend(v7, "statusCode")), v9, (v10 & 1) != 0))
  {
    v11 = MEMORY[0x1E69E0AF8];
    v12 = [v7 MIMEType];
    v13 = [v11 typeFromMIMEType:v12];

    v14 = [v13 typeDescription];

    if (!v14)
    {
      v15 = MEMORY[0x1E69E0AF8];
      v16 = [*(a1 + 32) lastPathComponent];
      v17 = [v15 typeFromFilename:v16];

      v13 = v17;
    }

    v18 = MEMORY[0x1E6996E20];
    v19 = [*(a1 + 40) name];
    v20 = [v18 fileWithURL:v23 options:3 ofType:v13 proposedFilename:v19];
    v21 = *(*(a1 + 56) + 8);
    v22 = *(v21 + 40);
    *(v21 + 40) = v20;

    **(a1 + 64) = 1;
    (*(*(a1 + 48) + 16))();
  }

  else
  {
    (*(*(a1 + 48) + 16))();
  }
}

- (void)getPreferredArtworkURL:(id)a3
{
  v4 = a3;
  v5 = [(WFiTunesObjectContentItem *)self possibleArtworkURLs];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __52__WFiTunesObjectContentItem_getPreferredArtworkURL___block_invoke;
  v7[3] = &unk_1E8378FA8;
  v8 = v4;
  v6 = v4;
  [(WFiTunesObjectContentItem *)self getArtworkDataWithURLs:v5 completionHandler:v7];
}

- (void)getArtworkForSize:(CGSize)a3 completionHandler:(id)a4
{
  width = a3.width;
  v32 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = [(WFiTunesObjectContentItem *)self object];
  v8 = [v7 artworkURLs];

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v9 = [v8 allKeys];
  v10 = [v9 sortedArrayUsingSelector:sel_compare_];

  v11 = [v10 countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v28;
LABEL_3:
    v14 = 0;
    while (1)
    {
      if (*v28 != v13)
      {
        objc_enumerationMutation(v10);
      }

      v15 = *(*(&v27 + 1) + 8 * v14);
      v16 = [v15 integerValue];
      v17 = [MEMORY[0x1E69E0A90] currentDevice];
      [v17 screenScale];
      v19 = width * v18;

      if (v19 <= v16)
      {
        break;
      }

      if (v12 == ++v14)
      {
        v12 = [v10 countByEnumeratingWithState:&v27 objects:v31 count:16];
        if (v12)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }

    v20 = v15;

    if (v20)
    {
      v21 = [v8 objectForKey:v20];
      if (v21)
      {
        v22 = v21;
        v23 = WFPossibleArtworkURLsForArtworkURL(v21);
        v25[0] = MEMORY[0x1E69E9820];
        v25[1] = 3221225472;
        v25[2] = __65__WFiTunesObjectContentItem_getArtworkForSize_completionHandler___block_invoke;
        v25[3] = &unk_1E8378FA8;
        v26 = v6;
        [(WFiTunesObjectContentItem *)self getArtworkDataWithURLs:v23 completionHandler:v25];

        goto LABEL_14;
      }
    }
  }

  else
  {
LABEL_9:

    v20 = 0;
  }

  (*(v6 + 2))(v6, 0, 0);
LABEL_14:

  v24 = *MEMORY[0x1E69E9840];
}

void __65__WFiTunesObjectContentItem_getArtworkForSize_completionHandler___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v5 = *(a1 + 32);
  if (a3)
  {
    v7 = MEMORY[0x1E69E0B58];
    v8 = a5;
    v10 = [v7 imageWithData:a3 scale:0 allowAnimated:1.0];
    (*(v5 + 16))(v5);
  }

  else
  {
    v9 = *(v5 + 16);
    v10 = a5;
    v9(v5, 0);
  }
}

- (void)getArtworkDataWithURLs:(id)a3 completionHandler:(id)a4
{
  v5 = a3;
  v6 = a4;
  v18[0] = 0;
  v18[1] = v18;
  v18[2] = 0x3032000000;
  v18[3] = __Block_byref_object_copy__37235;
  v18[4] = __Block_byref_object_dispose__37236;
  v19 = 0;
  v16[0] = 0;
  v16[1] = v16;
  v16[2] = 0x3032000000;
  v16[3] = __Block_byref_object_copy__37235;
  v16[4] = __Block_byref_object_dispose__37236;
  v17 = 0;
  v14[0] = 0;
  v14[1] = v14;
  v14[2] = 0x3032000000;
  v14[3] = __Block_byref_object_copy__37235;
  v14[4] = __Block_byref_object_dispose__37236;
  v15 = 0;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __70__WFiTunesObjectContentItem_getArtworkDataWithURLs_completionHandler___block_invoke;
  v13[3] = &unk_1E8378F80;
  v13[4] = v18;
  v13[5] = v16;
  v13[6] = v14;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __70__WFiTunesObjectContentItem_getArtworkDataWithURLs_completionHandler___block_invoke_3;
  v8[3] = &unk_1E8379318;
  v7 = v6;
  v9 = v7;
  v10 = v18;
  v11 = v14;
  v12 = v16;
  [v5 if_enumerateAsynchronouslyInSequence:v13 completionHandler:v8];

  _Block_object_dispose(v14, 8);
  _Block_object_dispose(v16, 8);

  _Block_object_dispose(v18, 8);
}

void __70__WFiTunesObjectContentItem_getArtworkDataWithURLs_completionHandler___block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4, uint64_t a5)
{
  v8 = a2;
  v9 = a4;
  v10 = [MEMORY[0x1E696AF78] wf_sharedSession];
  v14 = MEMORY[0x1E69E9820];
  v15 = 3221225472;
  v16 = __70__WFiTunesObjectContentItem_getArtworkDataWithURLs_completionHandler___block_invoke_2;
  v17 = &unk_1E8378F58;
  v18 = v8;
  v19 = v9;
  v20 = *(a1 + 32);
  v21 = *(a1 + 48);
  v22 = a5;
  v11 = v8;
  v12 = v9;
  v13 = [v10 dataTaskWithURL:v11 completionHandler:&v14];
  [v13 resume];
}

void __70__WFiTunesObjectContentItem_getArtworkDataWithURLs_completionHandler___block_invoke_2(uint64_t a1, void *a2, void *a3, void *a4)
{
  v12 = a2;
  v8 = a3;
  v9 = a4;
  v10 = [MEMORY[0x1E696AC90] indexSetWithIndexesInRange:{200, 100}];
  v11 = [v10 containsIndex:{objc_msgSend(v8, "statusCode")}];

  if (v11)
  {
    **(a1 + 72) = 1;
    objc_storeStrong((*(*(a1 + 48) + 8) + 40), *(a1 + 32));
    objc_storeStrong((*(*(a1 + 56) + 8) + 40), a3);
    objc_storeStrong((*(*(a1 + 64) + 8) + 40), a2);
  }

  (*(*(a1 + 40) + 16))();
}

- (id)possibleArtworkURLs
{
  v27 = *MEMORY[0x1E69E9840];
  v3 = [(WFiTunesObjectContentItem *)self object];
  v4 = [v3 artworkURLs];
  v5 = [v4 allKeys];
  v6 = [v5 sortedArrayUsingSelector:sel_compare_];
  v7 = [v6 reverseObjectEnumerator];
  v8 = [v7 allObjects];

  v9 = objc_opt_new();
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v10 = v8;
  v11 = [v10 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v23;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v23 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v22 + 1) + 8 * i);
        v16 = [(WFiTunesObjectContentItem *)self object];
        v17 = [v16 artworkURLs];
        v18 = [v17 objectForKeyedSubscript:v15];

        if (v18)
        {
          v19 = WFPossibleArtworkURLsForArtworkURL(v18);
          [v9 addObjectsFromArray:v19];
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v12);
  }

  v20 = *MEMORY[0x1E69E9840];

  return v9;
}

- (WFiTunesObject)object
{
  v3 = objc_opt_class();

  return [(WFiTunesObjectContentItem *)self objectForClass:v3];
}

+ (id)localizedPluralTypeDescriptionWithContext:(id)a3
{
  v3 = a3;
  v4 = WFLocalizedStringResourceWithKey(@"iTunes Products", @"iTunes Products");
  v5 = [v3 localize:v4];

  return v5;
}

+ (id)localizedTypeDescriptionWithContext:(id)a3
{
  v3 = a3;
  v4 = WFLocalizedStringResourceWithKey(@"iTunes Product", @"iTunes Product");
  v5 = [v3 localize:v4];

  return v5;
}

+ (id)contentCategories
{
  v5[1] = *MEMORY[0x1E69E9840];
  v5[0] = *MEMORY[0x1E6996FD8];
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:1];
  v3 = *MEMORY[0x1E69E9840];

  return v2;
}

+ (id)outputTypes
{
  v2 = MEMORY[0x1E695DFB8];
  v3 = [MEMORY[0x1E6996ED0] typeWithClass:objc_opt_class()];
  v4 = [MEMORY[0x1E69E0AF8] typeWithUTType:*MEMORY[0x1E6982E30]];
  v5 = [MEMORY[0x1E6996ED0] typeWithClass:objc_opt_class()];
  v6 = [v2 orderedSetWithObjects:{v3, v4, v5, 0}];

  return v6;
}

+ (BOOL)supportedTypeMustBeDeterminedByInstance:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x1E69E0AF8] typeWithUTType:*MEMORY[0x1E6982E30]];
  v6 = [v4 conformsToType:v5];

  if (v6)
  {
    goto LABEL_8;
  }

  v7 = v4;
  if (v7)
  {
    objc_opt_class();
    v8 = (objc_opt_isKindOfClass() & 1) != 0 ? v7 : 0;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;

  v10 = [v9 string];

  LOBYTE(v9) = [v10 isEqualToString:@"MPMediaItem"];
  if (v9)
  {
LABEL_8:
    v11 = 1;
  }

  else
  {
    v13.receiver = a1;
    v13.super_class = &OBJC_METACLASS___WFiTunesObjectContentItem;
    v11 = objc_msgSendSuper2(&v13, sel_supportedTypeMustBeDeterminedByInstance_, v7);
  }

  return v11;
}

+ (id)propertyBuilders
{
  v17[4] = *MEMORY[0x1E69E9840];
  if (objc_opt_class() == a1)
  {
    v3 = MEMORY[0x1E6996D90];
    v4 = WFLocalizedContentPropertyNameMarker(@"Store ID");
    v5 = [v3 keyPath:@"object.identifier" name:v4 class:objc_opt_class()];
    v17[0] = v5;
    v6 = MEMORY[0x1E6996D90];
    v7 = WFLocalizedContentPropertyNameMarker(@"Store URL");
    v8 = [v6 keyPath:@"object.viewURL" name:v7 class:objc_opt_class()];
    v17[1] = v8;
    v9 = MEMORY[0x1E6996D90];
    v10 = WFLocalizedContentPropertyNameMarker(@"Artwork");
    v11 = [v9 block:&__block_literal_global_37301 name:v10 class:objc_opt_class()];
    v17[2] = v11;
    v12 = MEMORY[0x1E6996D90];
    v13 = WFLocalizedContentPropertyNameMarker(@"Artwork URL");
    v14 = [v12 block:&__block_literal_global_247_37303 name:v13 class:objc_opt_class()];
    v17[3] = v14;
    v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:4];
  }

  else
  {
    v2 = 0;
  }

  v15 = *MEMORY[0x1E69E9840];

  return v2;
}

void __45__WFiTunesObjectContentItem_propertyBuilders__block_invoke_3(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v5 = a4;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __45__WFiTunesObjectContentItem_propertyBuilders__block_invoke_4;
  v7[3] = &unk_1E8378F30;
  v8 = v5;
  v6 = v5;
  [a2 getPreferredArtworkURL:v7];
}

void __45__WFiTunesObjectContentItem_propertyBuilders__block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v5 = a4;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __45__WFiTunesObjectContentItem_propertyBuilders__block_invoke_2;
  v8[3] = &unk_1E8378F08;
  v9 = v5;
  v6 = v5;
  v7 = a2;
  [v7 getObjectRepresentation:v8 forClass:objc_opt_class()];
}

+ (void)urlItem_generateObjectRepresentations:(id)a3 fromiTunesURL:(id)a4 forClass:(Class)a5
{
  v27[1] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v23 = 0;
  v24 = 0;
  v9 = [a1 parseiTunesURL:a4 itemIdentifier:&v24 countryCode:&v23];
  v10 = v24;
  v11 = v23;
  if (v9)
  {
    v12 = objc_opt_new();
    v25 = v10;
    v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v25 count:1];
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __90__WFiTunesObjectContentItem_urlItem_generateObjectRepresentations_fromiTunesURL_forClass___block_invoke;
    v20[3] = &unk_1E8378EC0;
    v22 = a5;
    v21 = v8;
    [v12 lookupMediaWithIdentifiers:v13 countryCode:v11 completion:v20];

    v14 = v21;
  }

  else
  {
    v15 = MEMORY[0x1E696ABC0];
    v16 = *MEMORY[0x1E696A978];
    v26 = *MEMORY[0x1E696A578];
    v14 = WFLocalizedString(@"Invalid iTunes URL");
    v27[0] = v14;
    v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v27 forKeys:&v26 count:1];
    v18 = [v15 errorWithDomain:v16 code:-1000 userInfo:v17];
    (*(v8 + 2))(v8, 0, v18);
  }

  v19 = *MEMORY[0x1E69E9840];
}

void __90__WFiTunesObjectContentItem_urlItem_generateObjectRepresentations_fromiTunesURL_forClass___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v12[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [a2 objectsMatchingClass:*(a1 + 40)];
  v7 = [v6 firstObject];

  v8 = *(a1 + 32);
  if (v7)
  {
    v9 = [MEMORY[0x1E6996EC8] object:v7];
    v12[0] = v9;
    v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:1];
    (*(v8 + 16))(v8, v10, v5);
  }

  else
  {
    (*(v8 + 16))(v8, 0, v5);
  }

  v11 = *MEMORY[0x1E69E9840];
}

+ (void)urlItem_generateObjectRepresentations:(id)a3 fromURL:(id)a4 forClass:(Class)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [v9 host];
  v11 = [v10 hasSuffix:@"itunes.apple.com"];

  if (v11)
  {
    [a1 urlItem_generateObjectRepresentations:v8 fromiTunesURL:v9 forClass:a5];
  }

  else
  {
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __84__WFiTunesObjectContentItem_urlItem_generateObjectRepresentations_fromURL_forClass___block_invoke;
    v12[3] = &unk_1E8378E98;
    v14 = a1;
    v13 = v8;
    v15 = a5;
    [WFURLExpander expandURL:v9 completionHandler:v12];

    v9 = v13;
  }
}

+ (BOOL)urlItem_canCoerceFromURL:(id)a3
{
  v4 = a3;
  v5 = [v4 host];
  if ([v5 isEqualToString:@"appsto.re"] & 1) != 0 || (objc_msgSend(v5, "isEqualToString:", @"itun.es"))
  {
    v6 = 1;
  }

  else if (([v5 hasSuffix:@"itunes.apple.com"] & 1) != 0 || (objc_msgSend(v5, "hasSuffix:", @"music.apple.com") & 1) != 0 || (objc_msgSend(v5, "hasSuffix:", @"books.apple.com") & 1) != 0 || (objc_msgSend(v5, "hasSuffix:", @"podcasts.apple.com") & 1) != 0 || objc_msgSend(v5, "hasSuffix:", @"apps.apple.com"))
  {
    v6 = [a1 parseiTunesURL:v4 itemIdentifier:0 countryCode:0];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (BOOL)parseiTunesURL:(id)a3 itemIdentifier:(id *)a4 countryCode:(id *)a5
{
  v7 = a3;
  v8 = [v7 dc_queryDictionary];
  v9 = [v8 objectForKey:@"i"];

  if ([v9 integerValue])
  {
    v10 = v9;
  }

  else
  {
    v11 = [v7 lastPathComponent];
    if ([v11 hasPrefix:@"id"])
    {
      v12 = [v11 substringFromIndex:2];
    }

    else
    {
      v12 = v11;
    }

    v10 = v12;
  }

  v13 = [v10 integerValue];
  if (v13)
  {
    v14 = [v7 pathComponents];
    if ([v14 count] < 2)
    {
      v16 = 0;
    }

    else
    {
      v15 = [v7 pathComponents];
      v16 = [v15 objectAtIndex:1];
    }

    if ([v16 length] != 2)
    {

      v16 = 0;
    }

    if (a4)
    {
      v17 = v10;
      *a4 = v10;
    }

    if (a5)
    {
      v18 = v16;
      *a5 = v16;
    }
  }

  return v13 != 0;
}

+ (id)urlItem_sharingItemClassesByBundleIdentifier
{
  v6[5] = *MEMORY[0x1E69E9840];
  v5[0] = @"com.apple.AppStore";
  v6[0] = objc_opt_class();
  v5[1] = @"com.apple.MobileStore";
  v6[1] = objc_opt_class();
  v5[2] = @"com.apple.iBooks";
  v6[2] = objc_opt_class();
  v5[3] = @"com.apple.podcasts";
  v6[3] = objc_opt_class();
  v5[4] = @"com.apple.Music";
  v6[4] = objc_opt_class();
  v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:v5 count:5];
  v3 = *MEMORY[0x1E69E9840];

  return v2;
}

+ (id)urlItem_outputClasses
{
  v2 = MEMORY[0x1E695DFB8];
  v3 = objc_opt_class();
  return [v2 orderedSetWithObjects:{v3, objc_opt_class(), 0}];
}

@end