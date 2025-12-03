@interface PRSPosterCollection
+ (BOOL)validatePoster:(id)poster;
+ (id)postersAtProviderURL:(id)l type:(int64_t)type fileManager:(id)manager error:(id *)error;
+ (id)postersAtURL:(id)l error:(id *)error;
@end

@implementation PRSPosterCollection

+ (id)postersAtURL:(id)l error:(id *)error
{
  v33 = *MEMORY[0x1E69E9840];
  lCopy = l;
  if ([lCopy checkResourceIsReachableAndReturnError:error])
  {
    v16 = lCopy;
    defaultManager = [MEMORY[0x1E696AC08] defaultManager];
    [self specificType];
    v17 = objc_opt_new();
    v26 = 0;
    v27 = &v26;
    v28 = 0x3032000000;
    v29 = __Block_byref_object_copy_;
    v30 = __Block_byref_object_dispose_;
    v31 = 0;
    v7 = [defaultManager contentsOfDirectoryAtURL:lCopy includingPropertiesForKeys:0 options:5 error:0];
    if (![v7 count])
    {
      goto LABEL_14;
    }

    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v8 = v7;
    v9 = [v8 countByEnumeratingWithState:&v22 objects:v32 count:16];
    if (v9)
    {
      v10 = *v23;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v23 != v10)
          {
            objc_enumerationMutation(v8);
          }

          v19 = *(*(&v22 + 1) + 8 * i);
          v20 = defaultManager;
          v21 = v17;
          PFServerPosterTypeEnumerate();
        }

        v9 = [v8 countByEnumeratingWithState:&v22 objects:v32 count:16];
      }

      while (v9);
    }

    v12 = v27[5];
    if (v12)
    {
      v13 = 0;
      if (error)
      {
        *error = v12;
      }
    }

    else
    {
LABEL_14:
      v13 = [[self alloc] initWithSet:v17];
    }

    _Block_object_dispose(&v26, 8);
    lCopy = v16;
  }

  else
  {
    v13 = 0;
  }

  v14 = *MEMORY[0x1E69E9840];

  return v13;
}

void __42__PRSPosterCollection_postersAtURL_error___block_invoke(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v5 = *(a1 + 64);
  if (v5)
  {
    v6 = v5 == a2;
  }

  else
  {
    v6 = 1;
  }

  if (v6)
  {
    obj[5] = v3;
    obj[6] = v4;
    v9 = *(a1 + 72);
    v10 = *(a1 + 32);
    v11 = *(a1 + 40);
    v12 = *(*(a1 + 56) + 8);
    obj[0] = 0;
    v13 = [v9 postersAtProviderURL:v10 type:a2 fileManager:v11 error:obj];
    objc_storeStrong((v12 + 40), obj[0]);
    if (*(*(*(a1 + 56) + 8) + 40))
    {
      *a3 = 1;
    }

    else
    {
      [*(a1 + 48) unionSet:v13];
    }
  }
}

+ (id)postersAtProviderURL:(id)l type:(int64_t)type fileManager:(id)manager error:(id *)error
{
  v73 = *MEMORY[0x1E69E9840];
  lCopy = l;
  managerCopy = manager;
  if (type)
  {
    lastPathComponent = [lCopy lastPathComponent];
    uRLByDeletingLastPathComponent = [lCopy URLByDeletingLastPathComponent];
    v45 = objc_opt_new();
    v10 = 0x1E695D000uLL;
    v43 = lCopy;
    typeCopy = type;
    [MEMORY[0x1E695DFF8] pf_posterPathTypeURLForProviderURL:lCopy type:type];
    v66 = 0u;
    v67 = 0u;
    v68 = 0u;
    v42 = v69 = 0u;
    obj = [managerCopy contentsOfDirectoryAtURL:? includingPropertiesForKeys:? options:? error:?];
    v51 = [obj countByEnumeratingWithState:&v66 objects:v72 count:16];
    if (v51)
    {
      v44 = type - 1;
      v49 = *v67;
      v55 = managerCopy;
      do
      {
        for (i = 0; i != v51; ++i)
        {
          if (*v67 != v49)
          {
            objc_enumerationMutation(obj);
          }

          v12 = *(*(&v66 + 1) + 8 * i);
          lastPathComponent2 = [v12 lastPathComponent];
          v57 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:lastPathComponent2];
          if (v57)
          {
            v54 = lastPathComponent2;
            v14 = [*(v10 + 4088) pf_posterPathVersionsURLForIdentifierURL:v12];
            v15 = objc_opt_new();
            v62 = 0u;
            v63 = 0u;
            v64 = 0u;
            v65 = 0u;
            v56 = v14;
            v16 = [managerCopy contentsOfDirectoryAtURL:v14 includingPropertiesForKeys:0 options:5 error:0];
            v17 = [v16 countByEnumeratingWithState:&v62 objects:v71 count:16];
            if (v17)
            {
              v18 = v17;
              v19 = *v63;
              do
              {
                for (j = 0; j != v18; ++j)
                {
                  if (*v63 != v19)
                  {
                    objc_enumerationMutation(v16);
                  }

                  lastPathComponent3 = [*(*(&v62 + 1) + 8 * j) lastPathComponent];
                  integerValue = [lastPathComponent3 integerValue];
                  if (integerValue != 0x7FFFFFFFFFFFFFFFLL)
                  {
                    [v15 addIndex:integerValue];
                  }
                }

                v18 = [v16 countByEnumeratingWithState:&v62 objects:v71 count:16];
              }

              while (v18);
            }

            lastIndex = [v15 lastIndex];
            [v15 removeAllIndexes];
            v53 = [*(v10 + 4088) pf_posterPathInstanceURLForVersionsURL:v56 version:lastIndex];
            v24 = [*(v10 + 4088) pf_posterPathSupplementContainerURLForInstanceURL:?];
            v58 = 0u;
            v59 = 0u;
            v60 = 0u;
            v61 = 0u;
            v52 = v24;
            v25 = [v55 contentsOfDirectoryAtURL:? includingPropertiesForKeys:? options:? error:?];
            v26 = [v25 countByEnumeratingWithState:&v58 objects:v70 count:16];
            if (v26)
            {
              v27 = v26;
              v28 = *v59;
              do
              {
                for (k = 0; k != v27; ++k)
                {
                  if (*v59 != v28)
                  {
                    objc_enumerationMutation(v25);
                  }

                  lastPathComponent4 = [*(*(&v58 + 1) + 8 * k) lastPathComponent];
                  integerValue2 = [lastPathComponent4 integerValue];
                  if (integerValue2 != 0x7FFFFFFFFFFFFFFFLL)
                  {
                    [v15 addIndex:integerValue2];
                  }
                }

                v27 = [v25 countByEnumeratingWithState:&v58 objects:v70 count:16];
              }

              while (v27);
            }

            if ([v15 lastIndex] == 0x7FFFFFFFFFFFFFFFLL)
            {
              lastIndex2 = 0;
            }

            else
            {
              lastIndex2 = [v15 lastIndex];
            }

            v10 = 0x1E695D000uLL;
            v33 = [MEMORY[0x1E695DFF8] pf_roleIdentifierURLForType:typeCopy identifierURL:v12];
            v34 = [MEMORY[0x1E696AEC0] stringWithContentsOfURL:v33 encoding:4 error:0];
            managerCopy = v55;
            if (v34)
            {
              v35 = [MEMORY[0x1E695DFF8] pf_descriptorIdentifierURLForType:typeCopy identifierURL:v12];
              v36 = [MEMORY[0x1E696AEC0] stringWithContentsOfURL:v35 encoding:4 error:0];
              v37 = [objc_alloc(MEMORY[0x1E69C51E0]) _initWithProvider:lastPathComponent type:typeCopy role:v34 posterUUID:v57 version:lastIndex supplement:lastIndex2 descriptorIdentifier:v36];
              v38 = [MEMORY[0x1E69C51E8] pathWithContainerURL:uRLByDeletingLastPathComponent identity:v37];
              if (typeCopy <= 4)
              {
                v39 = [objc_alloc(*off_1E818CCF0[v44]) _initWithPath:v38];
                [v45 addObject:v39];
              }

              v10 = 0x1E695D000;
              managerCopy = v55;
            }

            lastPathComponent2 = v54;
          }
        }

        v51 = [obj countByEnumeratingWithState:&v66 objects:v72 count:16];
      }

      while (v51);
    }

    lCopy = v43;
  }

  else
  {
    v45 = [MEMORY[0x1E695DFD8] set];
  }

  v40 = *MEMORY[0x1E69E9840];

  return v45;
}

+ (BOOL)validatePoster:(id)poster
{
  posterCopy = poster;
  v10.receiver = self;
  v10.super_class = &OBJC_METACLASS___PRSPosterCollection;
  if (objc_msgSendSuper2(&v10, sel_validatePoster_, posterCopy))
  {
    if ([objc_opt_class() specificType])
    {
      _path = [posterCopy _path];
      if ([_path isServerPosterPath])
      {
        identity = [_path identity];
        type = [identity type];
        v8 = type == [objc_opt_class() specificType];
      }

      else
      {
        v8 = 0;
      }
    }

    else
    {
      v8 = 1;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end