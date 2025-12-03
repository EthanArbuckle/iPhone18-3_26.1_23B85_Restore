@interface QLUTIManager
+ (BOOL)contentType:(id)type conformsToContentTypeInArray:(id)array;
+ (BOOL)contentTypeIsIWorkType:(id)type;
+ (BOOL)contentTypeIsInternallyClaimed:(id)claimed;
+ (BOOL)externalGeneratorPreferredForType:(id)type;
+ (id)_preferredParentUTIof:(id)iof fromParents:(id)parents;
+ (id)_recursiveValueInDictionary:(id)dictionary forType:(id)type alreadySeenUTIs:(id)is matchedValueToTypeBlock:(id)block validationBlock:(id)validationBlock;
+ (id)_searchParentTypesFor:(id)for fromDictionary:(id)dictionary alreadySeenUTIs:(id)is matchedValueToTypeBlock:(id)block validationBlock:(id)validationBlock;
+ (id)_selectParentUTIForUTI:(id)i fromParentUTIs:(id)is dictionary:(id)dictionary alreadySeenUTIs:(id)tIs matchedValueToTypeBlock:(id)block validationBlock:(id)validationBlock;
+ (id)claimedAVTypes;
+ (id)claimedCSVTypes;
+ (id)claimedCalendarTypes;
+ (id)claimedContactTypes;
+ (id)claimedImageTypes;
+ (id)claimedLivePhotoTypes;
+ (id)claimedOfficeTypes;
+ (id)claimedPDFTypes;
+ (id)claimedTextTypes;
+ (id)claimedWebViewTypes;
+ (id)claimediWorkTypes;
+ (id)findAndStoreValueInTypeKeyedDictionary:(id)dictionary forType:(id)type withDescription:(id)description withQueue:(id)queue validationBlock:(id)block;
+ (id)iWorkTypes;
+ (id)internallyClaimedTypes;
+ (id)screentimeiWorkBundleForUTI:(id)i;
+ (id)textGeneratorSupportedTypes;
+ (id)typesForWhichExternalGeneratorsArePreferred;
@end

@implementation QLUTIManager

+ (id)iWorkTypes
{
  if (iWorkTypes_once != -1)
  {
    +[QLUTIManager iWorkTypes];
  }

  v3 = iWorkTypes_iWorkTypes;

  return v3;
}

+ (id)internallyClaimedTypes
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __38__QLUTIManager_internallyClaimedTypes__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (internallyClaimedTypes_onceToken != -1)
  {
    dispatch_once(&internallyClaimedTypes_onceToken, block);
  }

  v2 = internallyClaimedTypes__internallyClaimedTypes;

  return v2;
}

+ (id)findAndStoreValueInTypeKeyedDictionary:(id)dictionary forType:(id)type withDescription:(id)description withQueue:(id)queue validationBlock:(id)block
{
  dictionaryCopy = dictionary;
  typeCopy = type;
  descriptionCopy = description;
  queueCopy = queue;
  blockCopy = block;
  v16 = 0;
  v29 = 0;
  v30 = &v29;
  v31 = 0x3032000000;
  v32 = __Block_byref_object_copy__1;
  v33 = __Block_byref_object_dispose__1;
  v34 = 0;
  if (dictionaryCopy && typeCopy)
  {
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __105__QLUTIManager_findAndStoreValueInTypeKeyedDictionary_forType_withDescription_withQueue_validationBlock___block_invoke;
    v23[3] = &unk_279ADB440;
    v28 = &v29;
    v24 = dictionaryCopy;
    v25 = typeCopy;
    v26 = descriptionCopy;
    v27 = blockCopy;
    v17 = MEMORY[0x2667062A0](v23);
    v18 = v17;
    if (queueCopy)
    {
      v21[0] = MEMORY[0x277D85DD0];
      v21[1] = 3221225472;
      v21[2] = __105__QLUTIManager_findAndStoreValueInTypeKeyedDictionary_forType_withDescription_withQueue_validationBlock___block_invoke_3;
      v21[3] = &unk_279ADB468;
      v22 = v17;
      dispatch_sync(queueCopy, v21);
    }

    else
    {
      v17[2](v17);
    }

    v16 = v30[5];
  }

  v19 = v16;
  _Block_object_dispose(&v29, 8);

  return v19;
}

void __105__QLUTIManager_findAndStoreValueInTypeKeyedDictionary_forType_withDescription_withQueue_validationBlock___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __105__QLUTIManager_findAndStoreValueInTypeKeyedDictionary_forType_withDescription_withQueue_validationBlock___block_invoke_2;
  v7[3] = &unk_279ADB418;
  v8 = *(a1 + 48);
  v9 = *(a1 + 32);
  v4 = [QLUTIManager _recursiveValueInDictionary:v2 forType:v3 alreadySeenUTIs:0 matchedValueToTypeBlock:v7 validationBlock:*(a1 + 56)];
  v5 = *(*(a1 + 64) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;
}

id __105__QLUTIManager_findAndStoreValueInTypeKeyedDictionary_forType_withDescription_withQueue_validationBlock___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = v5;
  v8 = _qlsLogHandle;
  if (v7)
  {
    if (!_qlsLogHandle)
    {
      QLSInitLogging();
      v8 = _qlsLogHandle;
    }

    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = *(a1 + 32);
      v14 = 138412802;
      v15 = v7;
      v16 = 2112;
      v17 = v9;
      v18 = 2112;
      v19 = v6;
      _os_log_impl(&dword_2615AE000, v8, OS_LOG_TYPE_INFO, "Getting %@ for '%@' from UTI '%@' #UTI", &v14, 0x20u);
    }

    [*(a1 + 40) setObject:v7 forKeyedSubscript:v6];
  }

  else
  {
    if (!_qlsLogHandle)
    {
      QLSInitLogging();
      v8 = _qlsLogHandle;
    }

    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v10 = *(a1 + 32);
      v14 = 138412546;
      v15 = v10;
      v16 = 2112;
      v17 = v6;
      _os_log_impl(&dword_2615AE000, v8, OS_LOG_TYPE_INFO, "Caching NSNULL as %@ for '%@' #UTI", &v14, 0x16u);
    }

    v11 = [MEMORY[0x277CBEB68] null];
    [*(a1 + 40) setObject:v11 forKeyedSubscript:v6];
  }

  objc_opt_class();
  v12 = v7;
  if (objc_opt_isKindOfClass())
  {

    v12 = 0;
  }

  return v12;
}

+ (id)_searchParentTypesFor:(id)for fromDictionary:(id)dictionary alreadySeenUTIs:(id)is matchedValueToTypeBlock:(id)block validationBlock:(id)validationBlock
{
  forCopy = for;
  dictionaryCopy = dictionary;
  isCopy = is;
  blockCopy = block;
  validationBlockCopy = validationBlock;
  lowercaseString = [forCopy lowercaseString];
  if ([lowercaseString hasPrefix:@"dyn."])
  {
    v18 = _UTTypeCopyPedigreeSet();
    v19 = [v18 mutableCopy];
    [v19 removeObject:lowercaseString];
    allObjects = [v19 allObjects];

    if (allObjects)
    {
LABEL_3:
      v21 = [self _selectParentUTIForUTI:forCopy fromParentUTIs:allObjects dictionary:dictionaryCopy alreadySeenUTIs:isCopy matchedValueToTypeBlock:blockCopy validationBlock:validationBlockCopy];
      goto LABEL_6;
    }
  }

  else
  {
    allObjects = UTTypeCopyParentIdentifiers();
    if (allObjects)
    {
      goto LABEL_3;
    }
  }

  v21 = 0;
LABEL_6:

  return v21;
}

+ (id)_recursiveValueInDictionary:(id)dictionary forType:(id)type alreadySeenUTIs:(id)is matchedValueToTypeBlock:(id)block validationBlock:(id)validationBlock
{
  v49 = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
  typeCopy = type;
  isCopy = is;
  blockCopy = block;
  validationBlockCopy = validationBlock;
  lowercaseString = [typeCopy lowercaseString];
  if (!isCopy)
  {
    isCopy = objc_opt_new();
  }

  if (![isCopy containsObject:lowercaseString])
  {
    [isCopy addObject:lowercaseString];
    v18 = [(__CFString *)dictionaryCopy objectForKeyedSubscript:lowercaseString];
    if (v18)
    {
      v19 = v18;
      if (validationBlockCopy)
      {
        if (validationBlockCopy[2](validationBlockCopy, v18, lowercaseString))
        {
          v20 = v19;
        }

        else
        {
          v20 = 0;
        }

        v21 = v20;

        v22 = 1;
        v19 = v21;
        if (!blockCopy)
        {
          goto LABEL_19;
        }

        goto LABEL_17;
      }
    }

    else
    {
      v23 = _qlsLogHandle;
      if (!_qlsLogHandle)
      {
        QLSInitLogging();
        v23 = _qlsLogHandle;
      }

      if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
      {
        *buf = 134218242;
        v43 = dictionaryCopy;
        v44 = 2112;
        v45 = lowercaseString;
        _os_log_impl(&dword_2615AE000, v23, OS_LOG_TYPE_INFO, "No exact match found in type dictionary %p for '%@' #UTI", buf, 0x16u);
      }

      v19 = [self _searchParentTypesFor:typeCopy fromDictionary:dictionaryCopy alreadySeenUTIs:isCopy matchedValueToTypeBlock:blockCopy validationBlock:validationBlockCopy];
    }

    v22 = 1;
    if (!blockCopy)
    {
      goto LABEL_19;
    }

    goto LABEL_17;
  }

  v26 = QLSLogHandle();
  v27 = os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG);

  if (v27)
  {
    v28 = UTTypeCopyParentIdentifiers();
    if (v28)
    {
      v40 = 0u;
      v41 = 0u;
      v38 = 0u;
      v39 = 0u;
      v36 = v28;
      obj = v28;
      v29 = [obj countByEnumeratingWithState:&v38 objects:v48 count:16];
      if (v29)
      {
        v30 = v29;
        v31 = *v39;
        while (2)
        {
          for (i = 0; i != v30; ++i)
          {
            if (*v39 != v31)
            {
              objc_enumerationMutation(obj);
            }

            v33 = *(*(&v38 + 1) + 8 * i);
            if (UTTypeConformsTo(v33, lowercaseString))
            {
              v34 = QLSLogHandle();
              if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
              {
                *buf = 138412802;
                v43 = lowercaseString;
                v44 = 2112;
                v45 = v33;
                v46 = 2112;
                v47 = lowercaseString;
                _os_log_impl(&dword_2615AE000, v34, OS_LOG_TYPE_DEBUG, "Infinite UTI tree loop (%@ conforms to %@ which conforms to %@) #UTI", buf, 0x20u);
              }

              goto LABEL_36;
            }
          }

          v30 = [obj countByEnumeratingWithState:&v38 objects:v48 count:16];
          if (v30)
          {
            continue;
          }

          break;
        }
      }

LABEL_36:

      v28 = v36;
    }
  }

  v35 = [MEMORY[0x277CCA9B8] errorWithDomain:@"QLUTIErrorDomain" code:0 userInfo:{0, v36}];

  v19 = 0;
  v22 = v35 == 0;
  if (blockCopy)
  {
LABEL_17:
    if (v22)
    {
      v24 = blockCopy[2](blockCopy, v19, lowercaseString);

      v19 = v24;
    }
  }

LABEL_19:

  return v19;
}

+ (id)_preferredParentUTIof:(id)iof fromParents:(id)parents
{
  v4 = [MEMORY[0x277CE1CB8] typeWithIdentifier:{iof, parents}];
  v5 = *MEMORY[0x277CE1CD0];
  if ([v4 conformsToType:*MEMORY[0x277CE1CD0]])
  {
    identifier = [v5 identifier];
  }

  else
  {
    identifier = 0;
  }

  return identifier;
}

+ (id)_selectParentUTIForUTI:(id)i fromParentUTIs:(id)is dictionary:(id)dictionary alreadySeenUTIs:(id)tIs matchedValueToTypeBlock:(id)block validationBlock:(id)validationBlock
{
  v39 = *MEMORY[0x277D85DE8];
  iCopy = i;
  isCopy = is;
  dictionaryCopy = dictionary;
  tIsCopy = tIs;
  blockCopy = block;
  validationBlockCopy = validationBlock;
  v33 = iCopy;
  v20 = [self _preferredParentUTIof:iCopy fromParents:isCopy];
  if (!v20 || ([self _recursiveValueInDictionary:dictionaryCopy forType:v20 alreadySeenUTIs:tIsCopy matchedValueToTypeBlock:blockCopy validationBlock:validationBlockCopy], (v21 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    obj = isCopy;
    v22 = [obj countByEnumeratingWithState:&v34 objects:v38 count:16];
    if (v22)
    {
      v23 = v22;
      v24 = *v35;
      v31 = isCopy;
      v30 = v20;
      while (2)
      {
        for (i = 0; i != v23; ++i)
        {
          if (*v35 != v24)
          {
            objc_enumerationMutation(obj);
          }

          v26 = *(*(&v34 + 1) + 8 * i);
          v27 = [self _recursiveValueInDictionary:dictionaryCopy forType:v26 alreadySeenUTIs:tIsCopy matchedValueToTypeBlock:blockCopy validationBlock:validationBlockCopy];
          if (v27)
          {
            v21 = v27;
            if (!validationBlockCopy || (validationBlockCopy[2](validationBlockCopy, v27, v33) & 1) != 0)
            {
              goto LABEL_17;
            }

            v28 = [self _searchParentTypesFor:v26 fromDictionary:dictionaryCopy alreadySeenUTIs:tIsCopy matchedValueToTypeBlock:blockCopy validationBlock:validationBlockCopy];

            if (v28)
            {
              v21 = v28;
LABEL_17:
              v20 = v30;
              isCopy = v31;
              goto LABEL_18;
            }
          }
        }

        v23 = [obj countByEnumeratingWithState:&v34 objects:v38 count:16];
        v21 = 0;
        v20 = v30;
        isCopy = v31;
        if (v23)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      v21 = 0;
    }

LABEL_18:
  }

  return v21;
}

+ (id)claimedLivePhotoTypes
{
  v2 = MEMORY[0x277CBEB98];
  identifier = [*MEMORY[0x277CE1DD0] identifier];
  v4 = [v2 setWithObjects:{identifier, 0}];

  return v4;
}

+ (id)claimedContactTypes
{
  v2 = MEMORY[0x277CBEB98];
  identifier = [*MEMORY[0x277CE1EB8] identifier];
  v4 = [v2 setWithObject:identifier];

  return v4;
}

+ (id)claimedCalendarTypes
{
  v2 = MEMORY[0x277CBEB98];
  identifier = [*MEMORY[0x277CE1D20] identifier];
  v4 = [v2 setWithObject:identifier];

  return v4;
}

+ (id)claimedTextTypes
{
  if (claimedTextTypes_onceToken != -1)
  {
    +[QLUTIManager claimedTextTypes];
  }

  v3 = claimedTextTypes__claimedTextTypes;

  return v3;
}

void __32__QLUTIManager_claimedTextTypes__block_invoke()
{
  v0 = MEMORY[0x277CBEB98];
  v8 = [*MEMORY[0x277CE1E20] identifier];
  v1 = [*MEMORY[0x277CE1E50] identifier];
  v2 = [*MEMORY[0x277CE1E58] identifier];
  v3 = [*MEMORY[0x277CE1D78] identifier];
  v4 = [*MEMORY[0x277CE1EE8] identifier];
  v5 = [*MEMORY[0x277CE1DC8] identifier];
  v6 = [v0 setWithObjects:{v8, v1, v2, v3, v4, v5, 0}];
  v7 = claimedTextTypes__claimedTextTypes;
  claimedTextTypes__claimedTextTypes = v6;
}

+ (id)claimedPDFTypes
{
  v2 = MEMORY[0x277CBEB98];
  identifier = [*MEMORY[0x277CE1E08] identifier];
  v4 = [v2 setWithObjects:{identifier, @"com.apple.localized-pdf-bundle", 0}];

  return v4;
}

+ (id)claimedImageTypes
{
  if (claimedImageTypes_onceToken != -1)
  {
    +[QLUTIManager claimedImageTypes];
  }

  v3 = claimedImageTypes__claimedImageTypes;

  return v3;
}

void __33__QLUTIManager_claimedImageTypes__block_invoke()
{
  v9[12] = *MEMORY[0x277D85DE8];
  v0 = MEMORY[0x277CBEB98];
  v1 = [*MEMORY[0x277CE1E80] identifier];
  v9[0] = v1;
  v2 = [*MEMORY[0x277CE1DC0] identifier];
  v3 = *MEMORY[0x277CC20D0];
  v9[1] = v2;
  v9[2] = v3;
  v4 = [*MEMORY[0x277CE1E10] identifier];
  v9[3] = v4;
  v5 = [*MEMORY[0x277CE1D88] identifier];
  v9[4] = v5;
  v9[5] = @"public.heif";
  v9[6] = @"public.heics";
  v9[7] = @"public.heic";
  v9[8] = @"public.avci";
  v9[9] = @"com.apple.icns";
  v9[10] = @"com.apple.pict";
  v9[11] = @"com.apple.atx";
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:12];
  v7 = [v0 setWithArray:v6];
  v8 = claimedImageTypes__claimedImageTypes;
  claimedImageTypes__claimedImageTypes = v7;
}

+ (id)claimedAVTypes
{
  if (claimedAVTypes_onceToken != -1)
  {
    +[QLUTIManager claimedAVTypes];
  }

  v3 = claimedAVTypes__claimedAVTypes;

  return v3;
}

void __30__QLUTIManager_claimedAVTypes__block_invoke()
{
  v0 = MEMORY[0x277CBEB98];
  v5 = [MEMORY[0x277CE6650] audiovisualTypes];
  v1 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_45];
  v2 = [v5 filteredArrayUsingPredicate:v1];
  v3 = [v0 setWithArray:v2];
  v4 = claimedAVTypes__claimedAVTypes;
  claimedAVTypes__claimedAVTypes = v3;
}

BOOL __30__QLUTIManager_claimedAVTypes__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [*MEMORY[0x277CE1D00] identifier];
  if (UTTypeConformsTo(v2, v3))
  {
    v4 = 1;
  }

  else
  {
    v5 = [*MEMORY[0x277CE1E00] identifier];
    v4 = UTTypeConformsTo(v2, v5) != 0;
  }

  return v4;
}

+ (id)claimedOfficeTypes
{
  if (claimedOfficeTypes_onceToken != -1)
  {
    +[QLUTIManager claimedOfficeTypes];
  }

  v3 = claimedOfficeTypes__claimedOfficeTypes;

  return v3;
}

uint64_t __34__QLUTIManager_claimedOfficeTypes__block_invoke()
{
  claimedOfficeTypes__claimedOfficeTypes = [MEMORY[0x277CBEB98] setWithObjects:{@"com.microsoft.powerpoint.ppt", @"com.microsoft.powerpoint.pot", @"com.microsoft.powerpoint.pps", @"org.openxmlformats.presentationml.presentation", @"org.openxmlformats.presentationml.presentation.macroenabled", @"org.openxmlformats.presentationml.template", @"org.openxmlformats.presentationml.template.macroenabled", @"org.openxmlformats.presentationml.slideshow", @"org.openxmlformats.presentationml.slideshow.macroenabled", @"com.microsoft.excel.xls", @"com.microsoft.excel.xlt", @"com.microsoft.excel.xla", @"org.openxmlformats.spreadsheetml.sheet", @"org.openxmlformats.spreadsheetml.sheet.macroenabled", @"org.openxmlformats.spreadsheetml.template", @"org.openxmlformats.spreadsheetml.template.macroenabled", @"com.microsoft.word.doc", @"com.microsoft.word.dot", @"org.openxmlformats.wordprocessingml.document", @"org.openxmlformats.wordprocessingml.document.macroenabled", @"org.openxmlformats.wordprocessingml.template", @"org.openxmlformats.wordprocessingml.template.macroenabled", 0}];

  return MEMORY[0x2821F96F8]();
}

+ (id)claimediWorkTypes
{
  if (claimediWorkTypes_onceToken != -1)
  {
    +[QLUTIManager claimediWorkTypes];
  }

  v3 = claimediWorkTypes__claimediWorkTypes;

  return v3;
}

uint64_t __33__QLUTIManager_claimediWorkTypes__block_invoke()
{
  claimediWorkTypes__claimediWorkTypes = [MEMORY[0x277CBEB98] setWithObjects:{@"com.apple.iwork.keynote.key", @"com.apple.iwork.numbers.numbers", @"com.apple.iwork.pages.pages", @"com.apple.iwork.keynote.sffkey", @"com.apple.iwork.numbers.sffnumbers", @"com.apple.iwork.pages.sffpages", @"com.apple.iwork.numbers.template", @"com.apple.iwork.numbers.sfftemplate", @"com.apple.iwork.pages.template", @"com.apple.iwork.pages.sfftemplate", @"com.apple.iwork.keynote.kth", @"com.apple.iwork.keynote.sffkth", 0}];

  return MEMORY[0x2821F96F8]();
}

+ (id)claimedCSVTypes
{
  if (claimedCSVTypes_onceToken != -1)
  {
    +[QLUTIManager claimedCSVTypes];
  }

  v3 = claimedCSVTypes__claimedCSVTypes;

  return v3;
}

uint64_t __31__QLUTIManager_claimedCSVTypes__block_invoke()
{
  claimedCSVTypes__claimedCSVTypes = [MEMORY[0x277CBEB98] setWithObject:@"public.comma-separated-values-text"];

  return MEMORY[0x2821F96F8]();
}

+ (id)claimedWebViewTypes
{
  if (claimedWebViewTypes_onceToken != -1)
  {
    +[QLUTIManager claimedWebViewTypes];
  }

  v3 = claimedWebViewTypes__claimedWebViewTypes;

  return v3;
}

uint64_t __35__QLUTIManager_claimedWebViewTypes__block_invoke()
{
  claimedWebViewTypes__claimedWebViewTypes = [MEMORY[0x277CBEB98] setWithObjects:{@"public.svg-image", @"public.html", @"com.apple.web-internet-location", 0}];

  return MEMORY[0x2821F96F8]();
}

void __38__QLUTIManager_internallyClaimedTypes__block_invoke(uint64_t a1)
{
  v2 = MEMORY[0x277CBEB58];
  v3 = [*(a1 + 32) claimedTextTypes];
  v4 = [v2 setWithSet:v3];

  v5 = [*(a1 + 32) claimedLivePhotoTypes];
  v6 = [v5 allObjects];
  [v4 addObjectsFromArray:v6];

  v7 = [*(a1 + 32) claimedContactTypes];
  v8 = [v7 allObjects];
  [v4 addObjectsFromArray:v8];

  v9 = [*(a1 + 32) claimedCalendarTypes];
  v10 = [v9 allObjects];
  [v4 addObjectsFromArray:v10];

  v11 = [*(a1 + 32) claimedPDFTypes];
  v12 = [v11 allObjects];
  [v4 addObjectsFromArray:v12];

  v13 = [*(a1 + 32) claimedImageTypes];
  v14 = [v13 allObjects];
  [v4 addObjectsFromArray:v14];

  v15 = [*(a1 + 32) claimedAVTypes];
  v16 = [v15 allObjects];
  [v4 addObjectsFromArray:v16];

  v17 = [*(a1 + 32) claimedOfficeTypes];
  v18 = [v17 allObjects];
  [v4 addObjectsFromArray:v18];

  v19 = [*(a1 + 32) claimediWorkTypes];
  v20 = [v19 allObjects];
  [v4 addObjectsFromArray:v20];

  v21 = [*(a1 + 32) claimedCSVTypes];
  v22 = [v21 allObjects];
  [v4 addObjectsFromArray:v22];

  v23 = [*(a1 + 32) claimedWebViewTypes];
  v24 = [v23 allObjects];
  [v4 addObjectsFromArray:v24];

  v25 = internallyClaimedTypes__internallyClaimedTypes;
  internallyClaimedTypes__internallyClaimedTypes = v4;
}

+ (id)textGeneratorSupportedTypes
{
  if (textGeneratorSupportedTypes_onceToken != -1)
  {
    +[QLUTIManager textGeneratorSupportedTypes];
  }

  v3 = textGeneratorSupportedTypes__textTypes;

  return v3;
}

void __43__QLUTIManager_textGeneratorSupportedTypes__block_invoke()
{
  v0 = MEMORY[0x277CBEB98];
  v1 = *MEMORY[0x277CE1E20];
  v2 = *MEMORY[0x277CE1E50];
  v3 = *MEMORY[0x277CE1E58];
  v6 = [MEMORY[0x277CE1CB8] typeWithIdentifier:@"org.oasis-open.opendocument.text"];
  v4 = [v0 setWithObjects:{v1, v2, v3, v6, *MEMORY[0x277CE1E38], *MEMORY[0x277CE1EE8], *MEMORY[0x277CE1DC8], 0}];
  v5 = textGeneratorSupportedTypes__textTypes;
  textGeneratorSupportedTypes__textTypes = v4;
}

+ (id)typesForWhichExternalGeneratorsArePreferred
{
  if (typesForWhichExternalGeneratorsArePreferred_onceToken != -1)
  {
    +[QLUTIManager typesForWhichExternalGeneratorsArePreferred];
  }

  v3 = typesForWhichExternalGeneratorsArePreferred__externallyPreferredTypes;

  return v3;
}

void __59__QLUTIManager_typesForWhichExternalGeneratorsArePreferred__block_invoke()
{
  v0 = MEMORY[0x277CBEB98];
  v5 = [*MEMORY[0x277CE1DC8] identifier];
  v1 = [*MEMORY[0x277CE1EE8] identifier];
  v2 = [*MEMORY[0x277CE1E38] identifier];
  v3 = [v0 setWithObjects:{v5, v1, v2, @"com.adobe.illustrator.ai-image", @"org.xiph.flac", 0}];
  v4 = typesForWhichExternalGeneratorsArePreferred__externallyPreferredTypes;
  typesForWhichExternalGeneratorsArePreferred__externallyPreferredTypes = v3;
}

+ (BOOL)externalGeneratorPreferredForType:(id)type
{
  typeCopy = type;
  typesForWhichExternalGeneratorsArePreferred = [self typesForWhichExternalGeneratorsArePreferred];
  identifier = [typeCopy identifier];

  lowercaseString = [identifier lowercaseString];
  v8 = [typesForWhichExternalGeneratorsArePreferred containsObject:lowercaseString];

  return v8;
}

+ (id)screentimeiWorkBundleForUTI:(id)i
{
  iCopy = i;
  if (iCopy && (+[QLUTIManager claimediWorkTypes](QLUTIManager, "claimediWorkTypes"), v4 = objc_claimAutoreleasedReturnValue(), v5 = [v4 containsObject:iCopy], v4, v5))
  {
    [iCopy rangeOfString:@"pages" options:1];
    if (v6)
    {
      v7 = @"com.apple.Pages";
    }

    else
    {
      [iCopy rangeOfString:@"numbers" options:1];
      if (v9)
      {
        v7 = @"com.apple.Numbers";
      }

      else
      {
        [iCopy rangeOfString:@"keynote" options:1];
        if (v10)
        {
          v7 = @"com.apple.Keynote";
        }

        else
        {
          v7 = 0;
        }
      }
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

void __26__QLUTIManager_iWorkTypes__block_invoke()
{
  v14[12] = *MEMORY[0x277D85DE8];
  v13 = [MEMORY[0x277CE1CB8] typeWithIdentifier:@"com.apple.iwork.keynote.key"];
  v14[0] = v13;
  v12 = [MEMORY[0x277CE1CB8] typeWithIdentifier:@"com.apple.iwork.numbers.numbers"];
  v14[1] = v12;
  v0 = [MEMORY[0x277CE1CB8] typeWithIdentifier:@"com.apple.iwork.pages.pages"];
  v14[2] = v0;
  v1 = [MEMORY[0x277CE1CB8] typeWithIdentifier:@"com.apple.iwork.keynote.sffkey"];
  v14[3] = v1;
  v2 = [MEMORY[0x277CE1CB8] typeWithIdentifier:@"com.apple.iwork.numbers.sffnumbers"];
  v14[4] = v2;
  v3 = [MEMORY[0x277CE1CB8] typeWithIdentifier:@"com.apple.iwork.pages.sffpages"];
  v14[5] = v3;
  v4 = [MEMORY[0x277CE1CB8] typeWithIdentifier:@"com.apple.iwork.numbers.template"];
  v14[6] = v4;
  v5 = [MEMORY[0x277CE1CB8] typeWithIdentifier:@"com.apple.iwork.numbers.sfftemplate"];
  v14[7] = v5;
  v6 = [MEMORY[0x277CE1CB8] typeWithIdentifier:@"com.apple.iwork.pages.template"];
  v14[8] = v6;
  v7 = [MEMORY[0x277CE1CB8] typeWithIdentifier:@"com.apple.iwork.pages.sfftemplate"];
  v14[9] = v7;
  v8 = [MEMORY[0x277CE1CB8] typeWithIdentifier:@"com.apple.iwork.keynote.kth"];
  v14[10] = v8;
  v9 = [MEMORY[0x277CE1CB8] typeWithIdentifier:@"com.apple.iwork.keynote.sffkth"];
  v14[11] = v9;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:12];
  v11 = iWorkTypes_iWorkTypes;
  iWorkTypes_iWorkTypes = v10;
}

+ (BOOL)contentTypeIsIWorkType:(id)type
{
  typeCopy = type;
  v4 = objc_opt_class();
  iWorkTypes = [objc_opt_class() iWorkTypes];
  LOBYTE(v4) = [v4 contentType:typeCopy conformsToContentTypeInArray:iWorkTypes];

  return v4;
}

+ (BOOL)contentTypeIsInternallyClaimed:(id)claimed
{
  claimedCopy = claimed;
  internallyClaimedTypes = [self internallyClaimedTypes];
  identifier = [claimedCopy identifier];

  LOBYTE(claimedCopy) = [internallyClaimedTypes containsObject:identifier];
  return claimedCopy;
}

+ (BOOL)contentType:(id)type conformsToContentTypeInArray:(id)array
{
  typeCopy = type;
  arrayCopy = array;
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __57__QLUTIManager_contentType_conformsToContentTypeInArray___block_invoke;
  v10[3] = &unk_279ADB4D0;
  v7 = typeCopy;
  v11 = v7;
  v12 = &v13;
  [arrayCopy enumerateObjectsUsingBlock:v10];
  v8 = *(v14 + 24);

  _Block_object_dispose(&v13, 8);
  return v8;
}

uint64_t __57__QLUTIManager_contentType_conformsToContentTypeInArray___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  result = [*(a1 + 32) conformsToType:a2];
  if (result)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
    *a4 = 1;
  }

  return result;
}

@end