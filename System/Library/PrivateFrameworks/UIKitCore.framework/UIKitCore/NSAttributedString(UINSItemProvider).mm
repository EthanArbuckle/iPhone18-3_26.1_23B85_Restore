@interface NSAttributedString(UINSItemProvider)
+ (id)_objectWithItemProviderFileURL:()UINSItemProvider typeIdentifier:isInPlace:error:;
+ (id)_objectWithRTFDAtURL:()UINSItemProvider userInfo:error:;
+ (id)_uikit_readableTypeIdentifiersForItemProviderConsideringLinkage:()UINSItemProvider;
+ (id)writableTypeIdentifiersForItemProvider;
+ (uint64_t)_preferredRepresentationForItemProviderReadableTypeIdentifier:()UINSItemProvider;
+ (uint64_t)_preferredRepresentationForItemProviderWritableTypeIdentifier:()UINSItemProvider;
+ (void)_objectWithItemProviderData:()UINSItemProvider typeIdentifier:userInfo:error:;
- (id)initWithItemProviderData:()UINSItemProvider typeIdentifier:error:;
- (uint64_t)_loadFileRepresentationOfTypeIdentifier:()UINSItemProvider forItemProviderCompletionHandler:;
- (uint64_t)_preferredRepresentationForItemProviderWritableTypeIdentifier:()UINSItemProvider;
- (uint64_t)loadDataWithTypeIdentifier:()UINSItemProvider forItemProviderCompletionHandler:;
@end

@implementation NSAttributedString(UINSItemProvider)

+ (id)_uikit_readableTypeIdentifiersForItemProviderConsideringLinkage:()UINSItemProvider
{
  v20[8] = *MEMORY[0x1E69E9840];
  v20[0] = @"com.apple.uikit.attributedstring";
  identifier = [*MEMORY[0x1E6982F98] identifier];
  v20[1] = identifier;
  identifier2 = [*MEMORY[0x1E6982DC0] identifier];
  v20[2] = identifier2;
  identifier3 = [*MEMORY[0x1E6982F90] identifier];
  v20[3] = identifier3;
  v6 = *MEMORY[0x1E6983098];
  identifier4 = [*MEMORY[0x1E6983098] identifier];
  v20[4] = identifier4;
  v8 = *MEMORY[0x1E6982E18];
  identifier5 = [*MEMORY[0x1E6982E18] identifier];
  v20[5] = identifier5;
  identifier6 = [*MEMORY[0x1E6983060] identifier];
  v20[6] = identifier6;
  identifier7 = [*MEMORY[0x1E6982F40] identifier];
  v20[7] = identifier7;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:8];

  if (a3 && (dyld_program_sdk_at_least() & 1) == 0)
  {
    v13 = [v12 mutableCopy];
    identifier8 = [v6 identifier];
    v19[0] = identifier8;
    identifier9 = [v8 identifier];
    v19[1] = identifier9;
    v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:2];
    [v13 removeObjectsInArray:v16];

    v12 = v13;
  }

  return v12;
}

+ (uint64_t)_preferredRepresentationForItemProviderReadableTypeIdentifier:()UINSItemProvider
{
  v3 = *MEMORY[0x1E6982F98];
  v4 = a3;
  identifier = [v3 identifier];
  v6 = [v4 isEqualToString:identifier];

  return v6;
}

+ (id)_objectWithRTFDAtURL:()UINSItemProvider userInfo:error:
{
  v16[1] = *MEMORY[0x1E69E9840];
  v8 = a4;
  v9 = a3;
  v10 = [self alloc];
  v15 = *off_1E70EC8F0;
  v16[0] = *off_1E70EC998;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:&v15 count:1];
  v12 = __mergedOptionDictionaries(v11, v8);

  v13 = [v10 initWithURL:v9 options:v12 documentAttributes:0 error:a5];

  return v13;
}

+ (void)_objectWithItemProviderData:()UINSItemProvider typeIdentifier:userInfo:error:
{
  v63[2] = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = [MEMORY[0x1E6982C40] _typeWithIdentifier:v11 allowUndeclared:1];
  v14 = [MEMORY[0x1E6982C40] _typeWithIdentifier:@"com.apple.uikit.attributedstring" allowUndeclared:1];
  if (![v13 conformsToType:v14])
  {
    if ([v13 conformsToType:*MEMORY[0x1E6983098]])
    {
      v18 = [self alloc];
      v19 = *off_1E70ECAE8;
      v20 = *off_1E70EC938;
      v62[0] = *off_1E70EC8F0;
      v62[1] = v20;
      v63[0] = v19;
      v63[1] = MEMORY[0x1E695E110];
      v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v63 forKeys:v62 count:2];
      v52 = 0;
      v17 = [v18 _initWithHTMLData:v10 options:v15 documentAttributes:0 error:&v52];
      v21 = v52;
LABEL_8:
      v16 = v21;
      goto LABEL_10;
    }

    if ([v13 conformsToType:*MEMORY[0x1E6982E18]])
    {
      v22 = [self alloc];
      v23 = *off_1E70EC940;
      v24 = *off_1E70EC938;
      v60[0] = *off_1E70EC8F0;
      v60[1] = v24;
      v61[0] = v23;
      v61[1] = MEMORY[0x1E695E110];
      v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v61 forKeys:v60 count:2];
      v51 = 0;
      v17 = [v22 _initWithHTMLData:v10 options:v15 documentAttributes:0 error:&v51];
      v21 = v51;
      goto LABEL_8;
    }

    if ([v13 conformsToType:*MEMORY[0x1E6982DC0]])
    {
      v28 = [objc_alloc(MEMORY[0x1E696AC38]) initWithSerializedRepresentation:v10];
      if (v28)
      {
        v15 = v28;
        v46 = _UITemporaryFolderURL(@"com.apple.uikit.attributedstring");
        filename = [v15 filename];
        v30 = filename;
        if (filename)
        {
          v31 = filename;
        }

        else
        {
          v31 = @"temp.rtfd";
        }

        v45 = [v46 URLByAppendingPathComponent:v31];

        v50 = 0;
        v32 = [v15 writeToURL:v45 options:1 originalContentsURL:0 error:&v50];
        v33 = v50;
        v16 = v33;
        if (v32)
        {
          v49 = v33;
          v17 = [(objc_class *)self _objectWithRTFDAtURL:v45 userInfo:v12 error:&v49];
          v34 = v49;

          v16 = v34;
        }

        else
        {
          v17 = 0;
        }

        defaultManager = [MEMORY[0x1E696AC08] defaultManager];
        [defaultManager removeItemAtURL:v46 error:0];

        goto LABEL_10;
      }
    }

    else
    {
      if ([v13 conformsToType:*MEMORY[0x1E6982F90]])
      {
        v35 = [self alloc];
        v58 = *off_1E70EC8F0;
        v59 = *off_1E70EC9A0;
        v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v59 forKeys:&v58 count:1];
        v36 = __mergedOptionDictionaries(v15, v12);
        v48 = 0;
        v17 = [v35 initWithData:v10 options:v36 documentAttributes:0 error:&v48];
        v16 = v48;

        goto LABEL_10;
      }

      if ([v13 conformsToType:*MEMORY[0x1E6983060]])
      {
        v37 = [self alloc];
        v38 = *off_1E70EC990;
        v39 = *off_1E70EC8E0;
        v56[0] = *off_1E70EC8F0;
        v56[1] = v39;
        v57[0] = v38;
        v57[1] = &unk_1EFE32170;
        v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v57 forKeys:v56 count:2];
        v40 = __mergedOptionDictionaries(v15, v12);
        v47 = 0;
        v17 = [v37 initWithData:v10 options:v40 documentAttributes:0 error:&v47];
        v16 = v47;

        goto LABEL_10;
      }

      if ([v13 conformsToType:*MEMORY[0x1E6982F40]])
      {
        v42 = [self alloc];
        v54 = *off_1E70EC8F0;
        v55 = *off_1E70EC990;
        v43 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v55 forKeys:&v54 count:1];
        v44 = __mergedOptionDictionaries(v43, v12);
        v17 = [v42 initWithData:v10 options:v44 documentAttributes:0 error:0];

LABEL_31:
        v16 = 0;
        goto LABEL_13;
      }
    }

    v17 = 0;
    goto LABEL_31;
  }

  v53 = 0;
  v15 = [objc_alloc(MEMORY[0x1E696ACD0]) initForReadingFromData:v10 error:&v53];
  v16 = v53;
  if (v15)
  {
    [v15 setRequiresSecureCoding:1];
    [v15 setDecodingFailurePolicy:0];
    v17 = [v15 decodeObjectOfClass:objc_opt_class() forKey:*MEMORY[0x1E696A508]];
    [v15 finishDecoding];
  }

  else
  {
    v17 = 0;
  }

LABEL_10:

  if (a6 && v16)
  {
    v25 = v16;
    *a6 = v16;
  }

LABEL_13:
  v26 = v17;

  return v17;
}

+ (id)_objectWithItemProviderFileURL:()UINSItemProvider typeIdentifier:isInPlace:error:
{
  v10 = a3;
  v11 = a4;
  v32 = 0;
  v33 = &v32;
  v34 = 0x3032000000;
  v35 = __Block_byref_object_copy__149;
  v36 = __Block_byref_object_dispose__149;
  v37 = 0;
  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = __Block_byref_object_copy__149;
  v30 = __Block_byref_object_dispose__149;
  v31 = 0;
  identifier = [*MEMORY[0x1E6982F98] identifier];
  v13 = [v11 isEqualToString:identifier];

  if (v13)
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __102__NSAttributedString_UINSItemProvider___objectWithItemProviderFileURL_typeIdentifier_isInPlace_error___block_invoke;
    aBlock[3] = &unk_1E711A020;
    aBlock[4] = &v26;
    aBlock[5] = &v32;
    aBlock[6] = self;
    v14 = _Block_copy(aBlock);
    v15 = v14;
    if (a5)
    {
      startAccessingSecurityScopedResource = [v10 startAccessingSecurityScopedResource];
      v17 = [objc_alloc(MEMORY[0x1E696ABF8]) initWithFilePresenter:0];
      v18 = v33;
      obj = v33[5];
      v22[0] = MEMORY[0x1E69E9820];
      v22[1] = 3221225472;
      v22[2] = __102__NSAttributedString_UINSItemProvider___objectWithItemProviderFileURL_typeIdentifier_isInPlace_error___block_invoke_2;
      v22[3] = &unk_1E711A048;
      v23 = v15;
      [v17 coordinateReadingItemAtURL:v10 options:1 error:&obj byAccessor:v22];
      objc_storeStrong(v18 + 5, obj);
      if (startAccessingSecurityScopedResource)
      {
        [v10 stopAccessingSecurityScopedResource];
      }
    }

    else
    {
      (*(v14 + 2))(v14, v10);
    }
  }

  if (a6)
  {
    v19 = v33[5];
    if (v19)
    {
      *a6 = v19;
    }
  }

  v20 = v27[5];
  _Block_object_dispose(&v26, 8);

  _Block_object_dispose(&v32, 8);

  return v20;
}

- (id)initWithItemProviderData:()UINSItemProvider typeIdentifier:error:
{
  v8 = a4;
  v9 = a3;
  v10 = [self init];
  v11 = [objc_opt_class() objectWithItemProviderData:v9 typeIdentifier:v8 error:a5];

  v12 = v11;
  return v12;
}

+ (id)writableTypeIdentifiersForItemProvider
{
  v5[4] = *MEMORY[0x1E69E9840];
  v5[0] = @"com.apple.uikit.attributedstring";
  identifier = [*MEMORY[0x1E6982F98] identifier];
  v5[1] = identifier;
  identifier2 = [*MEMORY[0x1E6982DC0] identifier];
  v5[2] = identifier2;
  identifier3 = [*MEMORY[0x1E6983060] identifier];
  v5[3] = identifier3;
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:4];

  return v3;
}

+ (uint64_t)_preferredRepresentationForItemProviderWritableTypeIdentifier:()UINSItemProvider
{
  v3 = *MEMORY[0x1E6982F98];
  v4 = a3;
  identifier = [v3 identifier];
  v6 = [v4 isEqualToString:identifier];

  return v6;
}

- (uint64_t)_preferredRepresentationForItemProviderWritableTypeIdentifier:()UINSItemProvider
{
  v3 = a3;
  v4 = [objc_opt_class() _preferredRepresentationForItemProviderWritableTypeIdentifier:v3];

  return v4;
}

- (uint64_t)loadDataWithTypeIdentifier:()UINSItemProvider forItemProviderCompletionHandler:
{
  v28[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if ([v6 isEqualToString:@"com.apple.uikit.attributedstring"])
  {
    v24 = 0;
    v8 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:self requiringSecureCoding:1 error:&v24];
    v9 = v24;
    v7[2](v7, v8, v9);
  }

  else
  {
    identifier = [*MEMORY[0x1E6982DC0] identifier];
    v11 = [v6 isEqualToString:identifier];

    if (v11)
    {
      v12 = [self length];
      v27 = *off_1E70EC8F0;
      v28[0] = *off_1E70EC998;
      v13 = MEMORY[0x1E695DF20];
      v14 = v28;
      v15 = &v27;
      v16 = 1;
    }

    else
    {
      identifier2 = [*MEMORY[0x1E6983060] identifier];
      v18 = [v6 isEqualToString:identifier2];

      if (!v18)
      {
        v7[2](v7, 0, 0);
        goto LABEL_9;
      }

      v12 = [self length];
      v19 = *off_1E70EC990;
      v20 = *off_1E70EC8E0;
      v25[0] = *off_1E70EC8F0;
      v25[1] = v20;
      v26[0] = v19;
      v26[1] = &unk_1EFE32170;
      v13 = MEMORY[0x1E695DF20];
      v14 = v26;
      v15 = v25;
      v16 = 2;
    }

    v21 = [v13 dictionaryWithObjects:v14 forKeys:v15 count:v16];
    v22 = [self dataFromRange:0 documentAttributes:v12 error:{v21, 0}];

    v7[2](v7, v22, 0);
  }

LABEL_9:

  return 0;
}

- (uint64_t)_loadFileRepresentationOfTypeIdentifier:()UINSItemProvider forItemProviderCompletionHandler:
{
  v25[1] = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = *MEMORY[0x1E6982F98];
  v8 = a3;
  identifier = [v7 identifier];
  v10 = [v8 isEqualToString:identifier];

  if (v10)
  {
    v11 = [self length];
    v24 = *off_1E70EC8F0;
    v25[0] = *off_1E70EC998;
    v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v25 forKeys:&v24 count:1];
    v23 = 0;
    v13 = [self fileWrapperFromRange:0 documentAttributes:v11 error:{v12, &v23}];
    v14 = v23;

    if (v13)
    {
      v15 = _UITemporaryFolderURL(@"com.apple.uikit.attributedstring");
      localizedDescription = [v7 localizedDescription];
      v17 = [localizedDescription stringByAppendingPathExtensionForType:v7];
      v18 = [v15 URLByAppendingPathComponent:v17];
      v22 = v14;
      [v13 writeToURL:v18 options:1 originalContentsURL:0 error:&v22];
      v19 = v22;

      if (v18 && !v19)
      {
        (*(v6 + 2))(v6, v18, 0, 0);
        if (!v15)
        {
          goto LABEL_12;
        }

        goto LABEL_11;
      }

      v14 = v19;
    }

    else
    {
      v18 = 0;
      v15 = 0;
    }

    (*(v6 + 2))(v6, 0, 0, v14);

    if (!v15)
    {
LABEL_12:

      goto LABEL_13;
    }

LABEL_11:
    defaultManager = [MEMORY[0x1E696AC08] defaultManager];
    [defaultManager removeItemAtURL:v15 error:0];

    goto LABEL_12;
  }

  (*(v6 + 2))(v6, 0, 0, 0);
LABEL_13:

  return 0;
}

@end