@interface PHAStorytellingClientRequestUtils
+ (id)_assetCollectionForLocalIdentifier:(id)identifier photoLibrary:(id)library;
+ (id)assetCollectionForLocalIdentifier:(id)identifier options:(id)options photoLibrary:(id)library;
@end

@implementation PHAStorytellingClientRequestUtils

+ (id)_assetCollectionForLocalIdentifier:(id)identifier photoLibrary:(id)library
{
  v12[1] = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  librarySpecificFetchOptions = [library librarySpecificFetchOptions];
  [librarySpecificFetchOptions setIncludeLocalMemories:1];
  [librarySpecificFetchOptions setFetchLimit:1];
  v7 = MEMORY[0x277CD97B8];
  v12[0] = identifierCopy;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:1];
  v9 = [v7 fetchAssetCollectionsWithLocalIdentifiers:v8 options:librarySpecificFetchOptions];

  firstObject = [v9 firstObject];

  return firstObject;
}

+ (id)assetCollectionForLocalIdentifier:(id)identifier options:(id)options photoLibrary:(id)library
{
  identifierCopy = identifier;
  optionsCopy = options;
  libraryCopy = library;
  if (identifierCopy || !optionsCopy)
  {
    if (identifierCopy)
    {
      v15 = [self _assetCollectionForLocalIdentifier:identifierCopy photoLibrary:libraryCopy];
    }

    else
    {
      v15 = 0;
    }
  }

  else
  {
    v11 = [optionsCopy objectForKeyedSubscript:@"PHPhotosGraphOptionAssetIdentifiers"];
    if (v11)
    {
      librarySpecificFetchOptions = [libraryCopy librarySpecificFetchOptions];
      assetPropertySetsForCuration = [MEMORY[0x277D3B658] assetPropertySetsForCuration];
      [librarySpecificFetchOptions setFetchPropertySets:assetPropertySetsForCuration];

      v14 = [MEMORY[0x277CD97A8] fetchAssetsWithLocalIdentifiers:v11 options:librarySpecificFetchOptions];
      v15 = [MEMORY[0x277CD97B8] transientAssetCollectionWithAssetFetchResult:v14 title:0];
    }

    else
    {
      v15 = 0;
    }
  }

  return v15;
}

@end