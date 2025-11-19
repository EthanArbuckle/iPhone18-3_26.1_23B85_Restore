@interface PRSPosterCollection
+ (BOOL)validatePoster:(id)a3;
+ (id)postersAtProviderURL:(id)a3 type:(int64_t)a4 fileManager:(id)a5 error:(id *)a6;
+ (id)postersAtURL:(id)a3 error:(id *)a4;
@end

@implementation PRSPosterCollection

+ (id)postersAtURL:(id)a3 error:(id *)a4
{
  v33 = *MEMORY[0x1E69E9840];
  v6 = a3;
  if ([v6 checkResourceIsReachableAndReturnError:a4])
  {
    v16 = v6;
    v18 = [MEMORY[0x1E696AC08] defaultManager];
    [a1 specificType];
    v17 = objc_opt_new();
    v26 = 0;
    v27 = &v26;
    v28 = 0x3032000000;
    v29 = __Block_byref_object_copy_;
    v30 = __Block_byref_object_dispose_;
    v31 = 0;
    v7 = [v18 contentsOfDirectoryAtURL:v6 includingPropertiesForKeys:0 options:5 error:0];
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
          v20 = v18;
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
      if (a4)
      {
        *a4 = v12;
      }
    }

    else
    {
LABEL_14:
      v13 = [[a1 alloc] initWithSet:v17];
    }

    _Block_object_dispose(&v26, 8);
    v6 = v16;
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

+ (id)postersAtProviderURL:(id)a3 type:(int64_t)a4 fileManager:(id)a5 error:(id *)a6
{
  v73 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a5;
  if (a4)
  {
    v47 = [v8 lastPathComponent];
    v46 = [v8 URLByDeletingLastPathComponent];
    v45 = objc_opt_new();
    v10 = 0x1E695D000uLL;
    v43 = v8;
    v50 = a4;
    [MEMORY[0x1E695DFF8] pf_posterPathTypeURLForProviderURL:v8 type:a4];
    v66 = 0u;
    v67 = 0u;
    v68 = 0u;
    v42 = v69 = 0u;
    obj = [v9 contentsOfDirectoryAtURL:? includingPropertiesForKeys:? options:? error:?];
    v51 = [obj countByEnumeratingWithState:&v66 objects:v72 count:16];
    if (v51)
    {
      v44 = a4 - 1;
      v49 = *v67;
      v55 = v9;
      do
      {
        for (i = 0; i != v51; ++i)
        {
          if (*v67 != v49)
          {
            objc_enumerationMutation(obj);
          }

          v12 = *(*(&v66 + 1) + 8 * i);
          v13 = [v12 lastPathComponent];
          v57 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:v13];
          if (v57)
          {
            v54 = v13;
            v14 = [*(v10 + 4088) pf_posterPathVersionsURLForIdentifierURL:v12];
            v15 = objc_opt_new();
            v62 = 0u;
            v63 = 0u;
            v64 = 0u;
            v65 = 0u;
            v56 = v14;
            v16 = [v9 contentsOfDirectoryAtURL:v14 includingPropertiesForKeys:0 options:5 error:0];
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

                  v21 = [*(*(&v62 + 1) + 8 * j) lastPathComponent];
                  v22 = [v21 integerValue];
                  if (v22 != 0x7FFFFFFFFFFFFFFFLL)
                  {
                    [v15 addIndex:v22];
                  }
                }

                v18 = [v16 countByEnumeratingWithState:&v62 objects:v71 count:16];
              }

              while (v18);
            }

            v23 = [v15 lastIndex];
            [v15 removeAllIndexes];
            v53 = [*(v10 + 4088) pf_posterPathInstanceURLForVersionsURL:v56 version:v23];
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

                  v30 = [*(*(&v58 + 1) + 8 * k) lastPathComponent];
                  v31 = [v30 integerValue];
                  if (v31 != 0x7FFFFFFFFFFFFFFFLL)
                  {
                    [v15 addIndex:v31];
                  }
                }

                v27 = [v25 countByEnumeratingWithState:&v58 objects:v70 count:16];
              }

              while (v27);
            }

            if ([v15 lastIndex] == 0x7FFFFFFFFFFFFFFFLL)
            {
              v32 = 0;
            }

            else
            {
              v32 = [v15 lastIndex];
            }

            v10 = 0x1E695D000uLL;
            v33 = [MEMORY[0x1E695DFF8] pf_roleIdentifierURLForType:v50 identifierURL:v12];
            v34 = [MEMORY[0x1E696AEC0] stringWithContentsOfURL:v33 encoding:4 error:0];
            v9 = v55;
            if (v34)
            {
              v35 = [MEMORY[0x1E695DFF8] pf_descriptorIdentifierURLForType:v50 identifierURL:v12];
              v36 = [MEMORY[0x1E696AEC0] stringWithContentsOfURL:v35 encoding:4 error:0];
              v37 = [objc_alloc(MEMORY[0x1E69C51E0]) _initWithProvider:v47 type:v50 role:v34 posterUUID:v57 version:v23 supplement:v32 descriptorIdentifier:v36];
              v38 = [MEMORY[0x1E69C51E8] pathWithContainerURL:v46 identity:v37];
              if (v50 <= 4)
              {
                v39 = [objc_alloc(*off_1E818CCF0[v44]) _initWithPath:v38];
                [v45 addObject:v39];
              }

              v10 = 0x1E695D000;
              v9 = v55;
            }

            v13 = v54;
          }
        }

        v51 = [obj countByEnumeratingWithState:&v66 objects:v72 count:16];
      }

      while (v51);
    }

    v8 = v43;
  }

  else
  {
    v45 = [MEMORY[0x1E695DFD8] set];
  }

  v40 = *MEMORY[0x1E69E9840];

  return v45;
}

+ (BOOL)validatePoster:(id)a3
{
  v4 = a3;
  v10.receiver = a1;
  v10.super_class = &OBJC_METACLASS___PRSPosterCollection;
  if (objc_msgSendSuper2(&v10, sel_validatePoster_, v4))
  {
    if ([objc_opt_class() specificType])
    {
      v5 = [v4 _path];
      if ([v5 isServerPosterPath])
      {
        v6 = [v5 identity];
        v7 = [v6 type];
        v8 = v7 == [objc_opt_class() specificType];
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