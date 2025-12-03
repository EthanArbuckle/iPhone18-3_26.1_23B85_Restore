@interface PNPersonPromoterEvaluation
+ (BOOL)createDirectoryIfNotExitAtURL:(id)l;
+ (BOOL)exportPhotoLibrary:(id)library toURL:(id)l forPeople:(id)people error:(id *)error;
+ (BOOL)exportPhotoLibrary:(id)library toURL:(id)l forPeopleType:(unint64_t)type error:(id *)error;
+ (id)_peopleClustersDictionaryForPeople:(id)people withPhotoLibrary:(id)library;
+ (id)openPhotoLibraryAtURL:(id)l;
+ (void)peopleClusteringWithParameter:(id)parameter photoLibrary:(id)library directoryURL:(id)l delegate:(id)delegate;
@end

@implementation PNPersonPromoterEvaluation

+ (BOOL)exportPhotoLibrary:(id)library toURL:(id)l forPeople:(id)people error:(id *)error
{
  libraryCopy = library;
  lCopy = l;
  peopleCopy = people;
  v13 = objc_alloc_init(MEMORY[0x1E696AC08]);
  uRLByDeletingLastPathComponent = [lCopy URLByDeletingLastPathComponent];
  path = [uRLByDeletingLastPathComponent path];
  v16 = [v13 fileExistsAtPath:path];

  if (v16)
  {
    v17 = 0;
  }

  else
  {
    v25 = 0;
    [v13 createDirectoryAtURL:uRLByDeletingLastPathComponent withIntermediateDirectories:1 attributes:0 error:&v25];
    v17 = v25;
  }

  v18 = [objc_alloc(MEMORY[0x1E695DFC0]) initWithURL:lCopy append:0];
  v19 = v18;
  if (v17 || !v18)
  {
    if (error)
    {
      v23 = v17;
      v22 = 0;
      *error = v17;
    }

    else
    {
      v22 = 0;
    }
  }

  else
  {
    [v18 open];
    v20 = [self _peopleClustersDictionaryForPeople:peopleCopy withPhotoLibrary:libraryCopy];
    v21 = [MEMORY[0x1E696AE40] writePropertyList:v20 toStream:v19 format:100 options:0 error:error];
    v22 = v21 != 0;
    [v19 close];
    if (!v21)
    {
      [v13 removeItemAtURL:lCopy error:0];
    }
  }

  return v22;
}

+ (id)_peopleClustersDictionaryForPeople:(id)people withPhotoLibrary:(id)library
{
  v89 = *MEMORY[0x1E69E9840];
  peopleCopy = people;
  libraryCopy = library;
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v72 = 0u;
  v73 = 0u;
  v74 = 0u;
  v75 = 0u;
  obj = peopleCopy;
  v54 = [obj countByEnumeratingWithState:&v72 objects:v88 count:16];
  if (v54)
  {
    v52 = *v73;
    do
    {
      v6 = 0;
      do
      {
        if (*v73 != v52)
        {
          objc_enumerationMutation(obj);
        }

        v56 = v6;
        v7 = *(*(&v72 + 1) + 8 * v6);
        context = objc_autoreleasePoolPush();
        v57 = v7;
        v8 = [libraryCopy pn_fetchFacesForPerson:v7];
        v59 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v8, "count")}];
        v68 = 0u;
        v69 = 0u;
        v70 = 0u;
        v71 = 0u;
        v58 = v8;
        v62 = [v58 countByEnumeratingWithState:&v68 objects:v87 count:16];
        if (v62)
        {
          v60 = *v69;
          do
          {
            for (i = 0; i != v62; ++i)
            {
              if (*v69 != v60)
              {
                objc_enumerationMutation(v58);
              }

              v10 = *(*(&v68 + 1) + 8 * i);
              localIdentifier = [v10 localIdentifier];
              v86 = localIdentifier;
              v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v86 count:1];
              v13 = [libraryCopy pn_fetchAssetsForFaceLocalIdentifiers:v12];
              fetchedObjects = [v13 fetchedObjects];
              firstObject = [fetchedObjects firstObject];

              cloudIdentifier = [firstObject cloudIdentifier];
              if ([cloudIdentifier length])
              {
                [firstObject cloudIdentifier];
              }

              else
              {
                [firstObject localIdentifier];
              }
              v17 = ;

              v18 = [MEMORY[0x1E6978630] uuidFromLocalIdentifier:v17];
              if (v17)
              {
                pixelWidth = [firstObject pixelWidth];
                pixelHeight = [firstObject pixelHeight];
                if (pixelWidth <= pixelHeight)
                {
                  v21 = pixelHeight;
                }

                else
                {
                  v21 = pixelWidth;
                }

                v22 = v21;
                v85[0] = v18;
                v84[0] = @"id";
                v84[1] = @"filename";
                filename = [firstObject filename];
                v65 = filename;
                if (filename)
                {
                  v24 = filename;
                }

                else
                {
                  v24 = &stru_1F46CD000;
                }

                v85[1] = v24;
                v84[2] = @"originalFilename";
                originalFilename = [firstObject originalFilename];
                v66 = v18;
                v67 = v17;
                v26 = originalFilename;
                if (originalFilename)
                {
                  v27 = originalFilename;
                }

                else
                {
                  v27 = &stru_1F46CD000;
                }

                v85[2] = v27;
                v84[3] = @"centerX_normalized";
                v28 = MEMORY[0x1E696AD98];
                [v10 centerX];
                v64 = [v28 numberWithDouble:?];
                v85[3] = v64;
                v84[4] = @"centerY_normalized";
                v29 = MEMORY[0x1E696AD98];
                [v10 centerY];
                v63 = [v29 numberWithDouble:?];
                v85[4] = v63;
                v84[5] = @"size_normalized";
                v30 = MEMORY[0x1E696AD98];
                [v10 size];
                v31 = [v30 numberWithDouble:?];
                v85[5] = v31;
                v84[6] = @"centerX";
                v32 = MEMORY[0x1E696AD98];
                [v10 centerX];
                v34 = [v32 numberWithDouble:{v33 * objc_msgSend(firstObject, "pixelWidth")}];
                v85[6] = v34;
                v84[7] = @"centerY";
                v35 = MEMORY[0x1E696AD98];
                [v10 centerY];
                v37 = [v35 numberWithDouble:{v36 * objc_msgSend(firstObject, "pixelHeight")}];
                v85[7] = v37;
                v84[8] = @"size";
                v38 = MEMORY[0x1E696AD98];
                [v10 size];
                v40 = [v38 numberWithDouble:v39 * v22];
                v85[8] = v40;
                v84[9] = @"pixelWidth";
                v41 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(firstObject, "pixelWidth")}];
                v85[9] = v41;
                v84[10] = @"pixelHeight";
                v42 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(firstObject, "pixelHeight")}];
                v85[10] = v42;
                v43 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v85 forKeys:v84 count:11];

                v18 = v66;
                [v59 addObject:v43];

                v17 = v67;
              }

              else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
              {
                localIdentifier2 = [v10 localIdentifier];
                localIdentifier3 = [v57 localIdentifier];
                *buf = 138412802;
                v79 = firstObject;
                v80 = 2112;
                v81 = localIdentifier2;
                v82 = 2112;
                v83 = localIdentifier3;
                _os_log_error_impl(&dword_1C6F5C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "No identifier for asset: %@, face identifier: %@, person identifier: %@", buf, 0x20u);
              }
            }

            v62 = [v58 countByEnumeratingWithState:&v68 objects:v87 count:16];
          }

          while (v62);
        }

        anonymizedName = [v57 anonymizedName];
        if ([anonymizedName length])
        {
          [v57 anonymizedName];
        }

        else
        {
          [v57 localIdentifier];
        }
        v47 = ;

        v76[0] = @"verified";
        v48 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v57, "isVerified")}];
        v76[1] = @"assets";
        v77[0] = v48;
        v77[1] = v59;
        v49 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v77 forKeys:v76 count:2];
        [dictionary setObject:v49 forKeyedSubscript:v47];

        objc_autoreleasePoolPop(context);
        v6 = v56 + 1;
      }

      while (v56 + 1 != v54);
      v54 = [obj countByEnumeratingWithState:&v72 objects:v88 count:16];
    }

    while (v54);
  }

  return dictionary;
}

+ (BOOL)exportPhotoLibrary:(id)library toURL:(id)l forPeopleType:(unint64_t)type error:(id *)error
{
  libraryCopy = library;
  lCopy = l;
  v12 = objc_alloc_init(MEMORY[0x1E696AC08]);
  uRLByDeletingLastPathComponent = [lCopy URLByDeletingLastPathComponent];
  path = [uRLByDeletingLastPathComponent path];
  v15 = [v12 fileExistsAtPath:path];

  if (v15)
  {
    v16 = 0;
  }

  else
  {
    v25 = 0;
    [v12 createDirectoryAtURL:uRLByDeletingLastPathComponent withIntermediateDirectories:1 attributes:0 error:&v25];
    v16 = v25;
  }

  v17 = [objc_alloc(MEMORY[0x1E695DFC0]) initWithURL:lCopy append:0];
  v18 = v17;
  if (v16 || !v17)
  {
    if (error)
    {
      v23 = v16;
      v22 = 0;
      *error = v16;
    }

    else
    {
      v22 = 0;
    }
  }

  else
  {
    [v17 open];
    v19 = [libraryCopy pn_fetchPersonsWithType:type];
    v20 = [self _peopleClustersDictionaryForPeople:v19 withPhotoLibrary:libraryCopy];
    v21 = [MEMORY[0x1E696AE40] writePropertyList:v20 toStream:v18 format:100 options:0 error:error];
    v22 = v21 != 0;
    [v18 close];
    if (!v21)
    {
      [v12 removeItemAtURL:lCopy error:0];
    }
  }

  return v22;
}

+ (BOOL)createDirectoryIfNotExitAtURL:(id)l
{
  v14 = *MEMORY[0x1E69E9840];
  lCopy = l;
  v4 = objc_alloc_init(MEMORY[0x1E696AC08]);
  v11 = 0;
  path = [lCopy path];
  v6 = [v4 fileExistsAtPath:path isDirectory:&v11];

  if (v6)
  {
    v7 = v11;
    if ((v11 & 1) == 0)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_1C6F5C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Error output path exists and it is not a directory", buf, 2u);
        v7 = v11;
      }

      else
      {
        v7 = 0;
      }
    }
  }

  else
  {
    v10 = 0;
    v7 = [v4 createDirectoryAtURL:lCopy withIntermediateDirectories:1 attributes:0 error:&v10];
    v8 = v10;
    if ((v7 & 1) == 0 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v13 = v8;
      _os_log_error_impl(&dword_1C6F5C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Error occured creating output directory: %@", buf, 0xCu);
    }
  }

  return v7 & 1;
}

+ (void)peopleClusteringWithParameter:(id)parameter photoLibrary:(id)library directoryURL:(id)l delegate:(id)delegate
{
  v74 = *MEMORY[0x1E69E9840];
  parameterCopy = parameter;
  libraryCopy = library;
  lCopy = l;
  selfCopy = self;
  delegateCopy = delegate;
  if ([self createDirectoryIfNotExitAtURL:lCopy])
  {
    v13 = objc_opt_new();
    [v13 setDateFormat:@"yyyyMMdd_HHmmss"];
    date = [MEMORY[0x1E695DF00] date];
    v58 = v13;
    v60 = [v13 stringFromDate:date];

    v15 = objc_autoreleasePoolPush();
    v16 = [[PNPersonClusterManager alloc] initWithPhotoLibrary:libraryCopy];
    v17 = [lCopy URLByAppendingPathComponent:@"Baseline_FaceGroup.plist"];
    v69 = 0;
    v18 = [v17 checkResourceIsReachableAndReturnError:&v69];
    v19 = v69;
    v20 = v19;
    v59 = libraryCopy;
    if (v18)
    {
      v21 = v19;
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v71 = @"Baseline_FaceGroup.plist";
        _os_log_impl(&dword_1C6F5C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Exporting %@...", buf, 0xCu);
      }

      v68 = v20;
      v22 = [selfCopy exportPhotoLibrary:v16 toURL:v17 forPeopleType:0 error:&v68];
      v21 = v68;

      if ((v22 & 1) == 0 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v71 = @"Baseline_FaceGroup.plist";
        _os_log_error_impl(&dword_1C6F5C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Could not export: %@", buf, 0xCu);
      }
    }

    v23 = [lCopy URLByAppendingPathComponent:@"Baseline_verified.plist"];

    v67 = v21;
    v24 = [v23 checkResourceIsReachableAndReturnError:&v67];
    v25 = v67;

    if (v24)
    {
      v26 = v25;
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v71 = @"Baseline_verified.plist";
        _os_log_impl(&dword_1C6F5C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Exporting %@...", buf, 0xCu);
      }

      v66 = v25;
      v27 = [selfCopy exportPhotoLibrary:v16 toURL:v23 forPeopleType:1 error:&v66];
      v26 = v66;

      if ((v27 & 1) == 0 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v71 = @"Baseline_verified.plist";
        _os_log_error_impl(&dword_1C6F5C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Could not export: %@", buf, 0xCu);
      }
    }

    libraryCopy = v59;

    objc_autoreleasePoolPop(v15);
    if ([parameterCopy isValid])
    {
      [parameterCopy startValue];
      v29 = v28;
      [parameterCopy endValue];
      if (v29 <= v30)
      {
        v31 = MEMORY[0x1E69E9C10];
        do
        {
          context = objc_autoreleasePoolPush();
          v32 = objc_alloc_init(PNPersonPromoterProfile);
          v33 = objc_alloc_init(PNPersonDeduperProfile);
          name = [parameterCopy name];
          NSSelectorFromString(name);

          if (objc_opt_respondsToSelector())
          {
            v35 = [MEMORY[0x1E696AD98] numberWithDouble:v29];
            name2 = [parameterCopy name];
            [(PNPersonDeduperProfile *)v33 setValue:v35 forKey:name2];
          }

          v37 = [[PNPersonPromoter alloc] initWithPhotoLibrary:libraryCopy andDelegate:delegateCopy];
          [(PNPersonPromoter *)v37 setPromoterProfile:v32];
          [(PNPersonPromoter *)v37 setDeduperProfile:v33];
          if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
          {
            name3 = [parameterCopy name];
            *buf = 138412546;
            v71 = name3;
            v72 = 2048;
            v73 = v29;
            _os_log_impl(&dword_1C6F5C000, v31, OS_LOG_TYPE_DEFAULT, "Running promoter with %@ = %lf...", buf, 0x16u);
          }

          v39 = [(PNPersonPromoter *)v37 evaluatePersonPromoterWithUpdateBlock:&__block_literal_global_1333];
          personClusterManager = [(PNPersonPromoter *)v37 personClusterManager];
          v41 = MEMORY[0x1E696AEC0];
          v42 = parameterCopy;
          name4 = [parameterCopy name];
          v44 = [v41 stringWithFormat:@"%@_%.2f/Graph_%@_verified.plist", name4, *&v29, v60];

          if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v71 = v44;
            _os_log_impl(&dword_1C6F5C000, v31, OS_LOG_TYPE_DEFAULT, "Exporting %@...", buf, 0xCu);
          }

          v45 = lCopy;
          v46 = [lCopy URLByAppendingPathComponent:v44];
          v65 = 0;
          [selfCopy exportPhotoLibrary:personClusterManager toURL:v46 forPeopleType:1 error:&v65];
          v47 = v65;

          if (v47 && os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412546;
            v71 = v44;
            v72 = 2112;
            v73 = *&v47;
            _os_log_impl(&dword_1C6F5C000, v31, OS_LOG_TYPE_DEFAULT, "Could not save people clusters to %@: %@", buf, 0x16u);
          }

          objc_autoreleasePoolPop(context);
          [v42 incrementValue];
          v29 = v29 + v48;
          [v42 endValue];
          libraryCopy = v59;
          lCopy = v45;
          parameterCopy = v42;
        }

        while (v29 <= v49);
      }
    }

    else
    {
      v50 = objc_autoreleasePoolPush();
      v51 = [[PNPersonPromoter alloc] initWithPhotoLibrary:v59 andDelegate:delegateCopy];
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1C6F5C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Evaluating promoter...", buf, 2u);
      }

      v52 = [(PNPersonPromoter *)v51 evaluatePersonPromoterWithUpdateBlock:&__block_literal_global_246];
      personClusterManager2 = [(PNPersonPromoter *)v51 personClusterManager];
      v54 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Graph_%@_verified.plist", v60];
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v71 = v54;
        _os_log_impl(&dword_1C6F5C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Exporting %@...", buf, 0xCu);
      }

      v55 = lCopy;
      v56 = [lCopy URLByAppendingPathComponent:v54];
      v64 = 0;
      [selfCopy exportPhotoLibrary:personClusterManager2 toURL:v56 forPeople:v52 error:&v64];
      v57 = v64;

      if (v57 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v71 = v54;
        v72 = 2112;
        v73 = *&v57;
        _os_log_error_impl(&dword_1C6F5C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Could not save people clusters to %@: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v50);
      lCopy = v55;
    }
  }
}

+ (id)openPhotoLibraryAtURL:(id)l
{
  v18 = *MEMORY[0x1E69E9840];
  lCopy = l;
  v4 = [objc_alloc(MEMORY[0x1E69789A8]) initWithPhotoLibraryURL:lCopy];
  if ([v4 isSystemPhotoLibrary])
  {
    v15 = 0;
    v5 = [v4 openAndWaitWithUpgrade:0 error:&v15];
    v6 = v15;
    if (v5)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v17 = lCopy;
        v7 = MEMORY[0x1E69E9C10];
        v8 = "Using system library at %@";
LABEL_8:
        _os_log_impl(&dword_1C6F5C000, v7, OS_LOG_TYPE_DEFAULT, v8, buf, 0xCu);
        goto LABEL_9;
      }

      goto LABEL_9;
    }

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v17 = v6;
      v11 = MEMORY[0x1E69E9C10];
      v12 = "Unable to open system photo library: %@";
LABEL_18:
      _os_log_error_impl(&dword_1C6F5C000, v11, OS_LOG_TYPE_ERROR, v12, buf, 0xCu);
    }
  }

  else
  {
    [MEMORY[0x1E69789A8] enableMultiLibraryMode];
    v14 = 0;
    v9 = [v4 openAndWaitWithUpgrade:1 error:&v14];
    v6 = v14;
    if (v9)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v17 = lCopy;
        v7 = MEMORY[0x1E69E9C10];
        v8 = "Using library at %@";
        goto LABEL_8;
      }

LABEL_9:

      v10 = v4;
      goto LABEL_14;
    }

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v17 = v6;
      v11 = MEMORY[0x1E69E9C10];
      v12 = "Failed to open library. Error: %@";
      goto LABEL_18;
    }
  }

  v10 = 0;
LABEL_14:

  return v10;
}

@end