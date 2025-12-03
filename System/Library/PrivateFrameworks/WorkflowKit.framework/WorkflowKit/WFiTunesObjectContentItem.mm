@interface WFiTunesObjectContentItem
+ (BOOL)parseiTunesURL:(id)l itemIdentifier:(id *)identifier countryCode:(id *)code;
+ (BOOL)supportedTypeMustBeDeterminedByInstance:(id)instance;
+ (BOOL)urlItem_canCoerceFromURL:(id)l;
+ (id)contentCategories;
+ (id)localizedPluralTypeDescriptionWithContext:(id)context;
+ (id)localizedTypeDescriptionWithContext:(id)context;
+ (id)outputTypes;
+ (id)propertyBuilders;
+ (id)urlItem_outputClasses;
+ (id)urlItem_sharingItemClassesByBundleIdentifier;
+ (void)urlItem_generateObjectRepresentations:(id)representations fromURL:(id)l forClass:(Class)class;
+ (void)urlItem_generateObjectRepresentations:(id)representations fromiTunesURL:(id)l forClass:(Class)class;
- (BOOL)canGenerateRepresentationForType:(id)type;
- (WFiTunesObject)object;
- (id)generateObjectRepresentationForClass:(Class)class options:(id)options error:(id *)error;
- (id)possibleArtworkURLs;
- (void)generateFileRepresentation:(id)representation options:(id)options forType:(id)type;
- (void)getArtworkDataWithURLs:(id)ls completionHandler:(id)handler;
- (void)getArtworkForSize:(CGSize)size completionHandler:(id)handler;
- (void)getPreferredArtworkURL:(id)l;
@end

@implementation WFiTunesObjectContentItem

- (BOOL)canGenerateRepresentationForType:(id)type
{
  typeCopy = type;
  v5 = [MEMORY[0x1E69E0AF8] typeWithUTType:*MEMORY[0x1E6982E30]];
  v6 = [typeCopy conformsToType:v5];

  if (v6)
  {
    object = [(WFiTunesObjectContentItem *)self object];
    artworkURLs = [object artworkURLs];
    isKindOfClass = [artworkURLs count] != 0;
  }

  else
  {
    v10 = typeCopy;
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

    string = [v12 string];

    LODWORD(v12) = [string isEqualToString:@"MPMediaItem"];
    if (!v12)
    {
      v15.receiver = self;
      v15.super_class = WFiTunesObjectContentItem;
      isKindOfClass = [(WFiTunesObjectContentItem *)&v15 canGenerateRepresentationForType:v10];
      goto LABEL_12;
    }

    object = [(WFiTunesObjectContentItem *)self object];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
  }

LABEL_12:
  return isKindOfClass & 1;
}

- (id)generateObjectRepresentationForClass:(Class)class options:(id)options error:(id *)error
{
  optionsCopy = options;
  if (objc_opt_class() == class)
  {
    object = [(WFiTunesObjectContentItem *)self object];
    viewURL = [object viewURL];

    if (viewURL)
    {
      v26 = MEMORY[0x1E6996EC8];
      name = [(WFiTunesObjectContentItem *)self name];
      v23 = [v26 object:viewURL named:name];
    }

    else
    {
      v23 = 0;
    }

LABEL_30:

    goto LABEL_31;
  }

  v9 = NSStringFromClass(class);
  v10 = [@"MPMediaItem" isEqualToString:v9];

  if (!v10)
  {
    if (objc_opt_class() != class)
    {
      v46.receiver = self;
      v46.super_class = WFiTunesObjectContentItem;
      v23 = [(WFiTunesObjectContentItem *)&v46 generateObjectRepresentationForClass:class options:optionsCopy error:error];
      goto LABEL_31;
    }

    viewURL = [(WFiTunesObjectContentItem *)self object];
    if ((objc_opt_respondsToSelector() & 1) != 0 && ([viewURL artistName], (v28 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v29 = v28;
      v30 = MEMORY[0x1E696AEC0];
      v31 = WFLocalizedString(@"%1$@ by %2$@");
      name2 = [viewURL name];
      name3 = [v30 localizedStringWithFormat:v31, name2, v29];
    }

    else
    {
      name3 = [viewURL name];
    }

    v34 = [name3 length];
    v25ViewURL = [viewURL viewURL];
    v36 = v25ViewURL;
    if (v34)
    {
      if (v25ViewURL)
      {
        v37 = MEMORY[0x1E696AEC0];
        v38 = WFLocalizedString(@"%1$@ (%2$@)");
        v25ViewURL2 = [viewURL viewURL];
        absoluteString = [v25ViewURL2 absoluteString];
        v41 = [v37 localizedStringWithFormat:v38, name3, absoluteString];

LABEL_26:
        if ([v41 length])
        {
          v43 = MEMORY[0x1E6996EC8];
          name4 = [(WFiTunesObjectContentItem *)self name];
          v23 = [v43 object:v41 named:name4];
        }

        else
        {
          v23 = 0;
        }

        goto LABEL_30;
      }

      absoluteString2 = name3;
    }

    else
    {
      absoluteString2 = [v25ViewURL absoluteString];
    }

    v41 = absoluteString2;
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
  object2 = [(WFiTunesObjectContentItem *)self object];
  identifier = [object2 identifier];
  v15 = [v11 predicateWithValue:identifier forProperty:@"storeItemAdamID"];

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

  items = [v20 items];
  firstObject = [items firstObject];

  if (firstObject)
  {
    v23 = [MEMORY[0x1E6996EC8] object:firstObject];
  }

  else
  {
    v23 = 0;
  }

LABEL_31:

  return v23;
}

- (void)generateFileRepresentation:(id)representation options:(id)options forType:(id)type
{
  representationCopy = representation;
  optionsCopy = options;
  typeCopy = type;
  if ([typeCopy conformsToUTType:*MEMORY[0x1E6982E30]])
  {
    object = [(WFiTunesObjectContentItem *)self object];
    artworkURLs = [object artworkURLs];
    v13 = [artworkURLs count];

    if (v13)
    {
      v20[0] = 0;
      v20[1] = v20;
      v20[2] = 0x3032000000;
      v20[3] = __Block_byref_object_copy__37235;
      v20[4] = __Block_byref_object_dispose__37236;
      v21 = 0;
      possibleArtworkURLs = [(WFiTunesObjectContentItem *)self possibleArtworkURLs];
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
      v17 = representationCopy;
      v18 = v20;
      [possibleArtworkURLs if_enumerateAsynchronouslyInSequence:v19 completionHandler:v16];

      _Block_object_dispose(v20, 8);
    }

    else
    {
      (*(representationCopy + 2))(representationCopy, 0, 0);
    }
  }

  else
  {
    v15.receiver = self;
    v15.super_class = WFiTunesObjectContentItem;
    [(WFiTunesObjectContentItem *)&v15 generateFileRepresentation:representationCopy options:optionsCopy forType:typeCopy];
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

- (void)getPreferredArtworkURL:(id)l
{
  lCopy = l;
  possibleArtworkURLs = [(WFiTunesObjectContentItem *)self possibleArtworkURLs];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __52__WFiTunesObjectContentItem_getPreferredArtworkURL___block_invoke;
  v7[3] = &unk_1E8378FA8;
  v8 = lCopy;
  v6 = lCopy;
  [(WFiTunesObjectContentItem *)self getArtworkDataWithURLs:possibleArtworkURLs completionHandler:v7];
}

- (void)getArtworkForSize:(CGSize)size completionHandler:(id)handler
{
  width = size.width;
  v32 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  object = [(WFiTunesObjectContentItem *)self object];
  artworkURLs = [object artworkURLs];

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  allKeys = [artworkURLs allKeys];
  v10 = [allKeys sortedArrayUsingSelector:sel_compare_];

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
      integerValue = [v15 integerValue];
      currentDevice = [MEMORY[0x1E69E0A90] currentDevice];
      [currentDevice screenScale];
      v19 = width * v18;

      if (v19 <= integerValue)
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
      v21 = [artworkURLs objectForKey:v20];
      if (v21)
      {
        v22 = v21;
        v23 = WFPossibleArtworkURLsForArtworkURL(v21);
        v25[0] = MEMORY[0x1E69E9820];
        v25[1] = 3221225472;
        v25[2] = __65__WFiTunesObjectContentItem_getArtworkForSize_completionHandler___block_invoke;
        v25[3] = &unk_1E8378FA8;
        v26 = handlerCopy;
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

  (*(handlerCopy + 2))(handlerCopy, 0, 0);
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

- (void)getArtworkDataWithURLs:(id)ls completionHandler:(id)handler
{
  lsCopy = ls;
  handlerCopy = handler;
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
  v7 = handlerCopy;
  v9 = v7;
  v10 = v18;
  v11 = v14;
  v12 = v16;
  [lsCopy if_enumerateAsynchronouslyInSequence:v13 completionHandler:v8];

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
  object = [(WFiTunesObjectContentItem *)self object];
  artworkURLs = [object artworkURLs];
  allKeys = [artworkURLs allKeys];
  v6 = [allKeys sortedArrayUsingSelector:sel_compare_];
  reverseObjectEnumerator = [v6 reverseObjectEnumerator];
  allObjects = [reverseObjectEnumerator allObjects];

  v9 = objc_opt_new();
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v10 = allObjects;
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
        object2 = [(WFiTunesObjectContentItem *)self object];
        artworkURLs2 = [object2 artworkURLs];
        v18 = [artworkURLs2 objectForKeyedSubscript:v15];

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

+ (id)localizedPluralTypeDescriptionWithContext:(id)context
{
  contextCopy = context;
  v4 = WFLocalizedStringResourceWithKey(@"iTunes Products", @"iTunes Products");
  v5 = [contextCopy localize:v4];

  return v5;
}

+ (id)localizedTypeDescriptionWithContext:(id)context
{
  contextCopy = context;
  v4 = WFLocalizedStringResourceWithKey(@"iTunes Product", @"iTunes Product");
  v5 = [contextCopy localize:v4];

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

+ (BOOL)supportedTypeMustBeDeterminedByInstance:(id)instance
{
  instanceCopy = instance;
  v5 = [MEMORY[0x1E69E0AF8] typeWithUTType:*MEMORY[0x1E6982E30]];
  v6 = [instanceCopy conformsToType:v5];

  if (v6)
  {
    goto LABEL_8;
  }

  v7 = instanceCopy;
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

  string = [v9 string];

  LOBYTE(v9) = [string isEqualToString:@"MPMediaItem"];
  if (v9)
  {
LABEL_8:
    v11 = 1;
  }

  else
  {
    v13.receiver = self;
    v13.super_class = &OBJC_METACLASS___WFiTunesObjectContentItem;
    v11 = objc_msgSendSuper2(&v13, sel_supportedTypeMustBeDeterminedByInstance_, v7);
  }

  return v11;
}

+ (id)propertyBuilders
{
  v17[4] = *MEMORY[0x1E69E9840];
  if (objc_opt_class() == self)
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

+ (void)urlItem_generateObjectRepresentations:(id)representations fromiTunesURL:(id)l forClass:(Class)class
{
  v27[1] = *MEMORY[0x1E69E9840];
  representationsCopy = representations;
  v23 = 0;
  v24 = 0;
  v9 = [self parseiTunesURL:l itemIdentifier:&v24 countryCode:&v23];
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
    classCopy = class;
    v21 = representationsCopy;
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
    (*(representationsCopy + 2))(representationsCopy, 0, v18);
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

+ (void)urlItem_generateObjectRepresentations:(id)representations fromURL:(id)l forClass:(Class)class
{
  representationsCopy = representations;
  lCopy = l;
  host = [lCopy host];
  v11 = [host hasSuffix:@"itunes.apple.com"];

  if (v11)
  {
    [self urlItem_generateObjectRepresentations:representationsCopy fromiTunesURL:lCopy forClass:class];
  }

  else
  {
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __84__WFiTunesObjectContentItem_urlItem_generateObjectRepresentations_fromURL_forClass___block_invoke;
    v12[3] = &unk_1E8378E98;
    selfCopy = self;
    v13 = representationsCopy;
    classCopy = class;
    [WFURLExpander expandURL:lCopy completionHandler:v12];

    lCopy = v13;
  }
}

+ (BOOL)urlItem_canCoerceFromURL:(id)l
{
  lCopy = l;
  host = [lCopy host];
  if ([host isEqualToString:@"appsto.re"] & 1) != 0 || (objc_msgSend(host, "isEqualToString:", @"itun.es"))
  {
    v6 = 1;
  }

  else if (([host hasSuffix:@"itunes.apple.com"] & 1) != 0 || (objc_msgSend(host, "hasSuffix:", @"music.apple.com") & 1) != 0 || (objc_msgSend(host, "hasSuffix:", @"books.apple.com") & 1) != 0 || (objc_msgSend(host, "hasSuffix:", @"podcasts.apple.com") & 1) != 0 || objc_msgSend(host, "hasSuffix:", @"apps.apple.com"))
  {
    v6 = [self parseiTunesURL:lCopy itemIdentifier:0 countryCode:0];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (BOOL)parseiTunesURL:(id)l itemIdentifier:(id *)identifier countryCode:(id *)code
{
  lCopy = l;
  dc_queryDictionary = [lCopy dc_queryDictionary];
  v9 = [dc_queryDictionary objectForKey:@"i"];

  if ([v9 integerValue])
  {
    v10 = v9;
  }

  else
  {
    lastPathComponent = [lCopy lastPathComponent];
    if ([lastPathComponent hasPrefix:@"id"])
    {
      v12 = [lastPathComponent substringFromIndex:2];
    }

    else
    {
      v12 = lastPathComponent;
    }

    v10 = v12;
  }

  integerValue = [v10 integerValue];
  if (integerValue)
  {
    pathComponents = [lCopy pathComponents];
    if ([pathComponents count] < 2)
    {
      v16 = 0;
    }

    else
    {
      pathComponents2 = [lCopy pathComponents];
      v16 = [pathComponents2 objectAtIndex:1];
    }

    if ([v16 length] != 2)
    {

      v16 = 0;
    }

    if (identifier)
    {
      v17 = v10;
      *identifier = v10;
    }

    if (code)
    {
      v18 = v16;
      *code = v16;
    }
  }

  return integerValue != 0;
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