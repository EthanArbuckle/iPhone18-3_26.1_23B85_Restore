@interface PGGraphIngestFaceAttributeConveniences
+ (id)sampledAssetsWithSingleFaceForPersonLocalIdentifier:(id)identifier photoLibrary:(id)library numberOfYearsBack:(unint64_t)back sampleSize:(unint64_t)size fetchPropertySets:(id)sets;
@end

@implementation PGGraphIngestFaceAttributeConveniences

+ (id)sampledAssetsWithSingleFaceForPersonLocalIdentifier:(id)identifier photoLibrary:(id)library numberOfYearsBack:(unint64_t)back sampleSize:(unint64_t)size fetchPropertySets:(id)sets
{
  v75 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  libraryCopy = library;
  setsCopy = sets;
  if (identifierCopy)
  {
    librarySpecificFetchOptions = [libraryCopy librarySpecificFetchOptions];
    [librarySpecificFetchOptions setFetchLimit:1];
    v16 = MEMORY[0x277CD9938];
    v72 = identifierCopy;
    v17 = [MEMORY[0x277CBEA60] arrayWithObjects:&v72 count:1];
    v18 = [v16 fetchPersonsWithLocalIdentifiers:v17 options:librarySpecificFetchOptions];

    v63 = v18;
    firstObject = [v18 firstObject];
    if (firstObject)
    {
      sizeCopy = size;
      v62 = identifierCopy;
      v19 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:back * -31557600.0];
      v20 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K.@count == 1", @"detectedFaces"];
      v60 = v19;
      v58 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K >= %@", @"dateCreated", v19];
      v59 = v20;
      v71[0] = v20;
      v71[1] = v58;
      v21 = [MEMORY[0x277CBEA60] arrayWithObjects:v71 count:2];
      [libraryCopy librarySpecificFetchOptions];
      v23 = v22 = setsCopy;
      [v23 setFetchLimit:3000];
      [v23 setIncludeGuestAssets:1];
      v24 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"creationDate" ascending:1];
      v70[0] = v24;
      v25 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"uuid" ascending:1];
      v70[1] = v25;
      v26 = [MEMORY[0x277CBEA60] arrayWithObjects:v70 count:2];
      [v23 setSortDescriptors:v26];

      v27 = [MEMORY[0x277CCA920] andPredicateWithSubpredicates:v21];
      [v23 setInternalPredicate:v27];

      if (v22)
      {
        [v23 setFetchPropertySets:v22];
      }

      v61 = v22;
      v28 = firstObject;
      v29 = [MEMORY[0x277CD97A8] fetchAssetsForPerson:firstObject options:v23];
      if ([v29 count] <= sizeCopy)
      {
        v45 = v63;
        v47 = v58;
        v46 = v59;
      }

      else
      {
        v55 = v21;
        v56 = libraryCopy;
        v30 = objc_alloc_init(MEMORY[0x277D3AD70]);
        [v30 setNumberOfClusters:sizeCopy];
        fetchedObjects = [v29 fetchedObjects];
        v54 = v30;
        v32 = [v30 performWithDataset:fetchedObjects progressBlock:0];

        v33 = [MEMORY[0x277CBEB18] arrayWithCapacity:sizeCopy];
        v65 = 0u;
        v66 = 0u;
        v67 = 0u;
        v68 = 0u;
        v34 = v32;
        v35 = [v34 countByEnumeratingWithState:&v65 objects:v69 count:16];
        if (v35)
        {
          v36 = v35;
          v37 = *v66;
          do
          {
            for (i = 0; i != v36; ++i)
            {
              if (*v66 != v37)
              {
                objc_enumerationMutation(v34);
              }

              objects = [*(*(&v65 + 1) + 8 * i) objects];
              firstObject2 = [objects firstObject];

              if (firstObject2)
              {
                [v33 addObject:firstObject2];
              }
            }

            v36 = [v34 countByEnumeratingWithState:&v65 objects:v69 count:16];
          }

          while (v36);
        }

        v41 = objc_alloc(MEMORY[0x277CD98D0]);
        fetchType = [v29 fetchType];
        fetchPropertySets = [v29 fetchPropertySets];
        libraryCopy = v56;
        v44 = [v41 initWithObjects:v33 photoLibrary:v56 fetchType:fetchType fetchPropertySets:fetchPropertySets identifier:0 registerIfNeeded:0];

        v29 = v44;
        v45 = v63;
        v28 = firstObject;
        v47 = v58;
        v46 = v59;
        v21 = v55;
      }

      setsCopy = v61;
      identifierCopy = v62;
      loggingConnection = v60;
    }

    else
    {
      v49 = +[PGLogging sharedLogging];
      loggingConnection = [v49 loggingConnection];

      if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v74 = identifierCopy;
        _os_log_error_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_ERROR, "No person found for local identifier %@", buf, 0xCu);
      }

      v29 = 0;
      v45 = v63;
      v28 = 0;
    }
  }

  else
  {
    v48 = +[PGLogging sharedLogging];
    librarySpecificFetchOptions = [v48 loggingConnection];

    if (os_log_type_enabled(librarySpecificFetchOptions, OS_LOG_TYPE_ERROR))
    {
      v53 = NSStringFromSelector(a2);
      *buf = 138412290;
      v74 = v53;
      _os_log_error_impl(&dword_22F0FC000, librarySpecificFetchOptions, OS_LOG_TYPE_ERROR, "Nil person identifier incorrectly passed into '%@'. Exiting early.", buf, 0xCu);
    }

    v29 = 0;
  }

  v51 = *MEMORY[0x277D85DE8];

  return v29;
}

@end