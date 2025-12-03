@interface PHPerson(PhotosUICore)
+ (id)px_localizedNameFromContact:()PhotosUICore;
- (BOOL)px_fetchCanHaveFacesRejectedWithRigor:()PhotosUICore;
- (BOOL)px_isSameDetectionTypeAsPerson:()PhotosUICore;
- (__CFString)px_longStyleLocalizedName;
- (id)_px_localizedNameWithStyle:()PhotosUICore;
- (id)px_localizedName;
- (id)px_nameComponents;
- (id)px_navigationURL;
@end

@implementation PHPerson(PhotosUICore)

- (BOOL)px_fetchCanHaveFacesRejectedWithRigor:()PhotosUICore
{
  if (a3 == 1)
  {
    photoLibrary = [self photoLibrary];
    px_standardLibrarySpecificFetchOptions = [photoLibrary px_standardLibrarySpecificFetchOptions];

    [px_standardLibrarySpecificFetchOptions setFetchLimit:2];
    [px_standardLibrarySpecificFetchOptions setShouldPrefetchCount:1];
    v7 = [MEMORY[0x1E6978630] fetchAssetsForPerson:self options:px_standardLibrarySpecificFetchOptions];
    v4 = [v7 count] > 1;
  }

  else
  {
    return !a3 && [self faceCount] > 1;
  }

  return v4;
}

- (BOOL)px_isSameDetectionTypeAsPerson:()PhotosUICore
{
  v4 = a3;
  detectionType = [self detectionType];
  v6 = 0;
  if (detectionType <= 4 && ((1 << detectionType) & 0x1A) != 0)
  {
    v6 = detectionType == [v4 detectionType];
  }

  return v6;
}

- (id)px_navigationURL
{
  v1 = MEMORY[0x1E696AEC0];
  localIdentifier = [self localIdentifier];
  v3 = [v1 stringWithFormat:@"photos://people?identifier=%@", localIdentifier];

  v4 = [MEMORY[0x1E695DFF8] URLWithString:v3];

  return v4;
}

- (id)px_nameComponents
{
  contactMatchingDictionary = [self contactMatchingDictionary];
  v2 = [contactMatchingDictionary objectForKeyedSubscript:@"first-name"];
  v3 = [contactMatchingDictionary objectForKeyedSubscript:@"last-name"];
  if ([v2 length] || objc_msgSend(v3, "length"))
  {
    v4 = objc_alloc_init(MEMORY[0x1E696ADF0]);
    [v4 setGivenName:v2];
    [v4 setFamilyName:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)_px_localizedNameWithStyle:()PhotosUICore
{
  px_nameComponents = [self px_nameComponents];
  if (px_nameComponents)
  {
    v5 = [MEMORY[0x1E696ADF8] localizedStringFromPersonNameComponents:px_nameComponents style:a3 options:0];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (__CFString)px_longStyleLocalizedName
{
  v2 = [self _px_localizedNameWithStyle:3];
  if (![(__CFString *)v2 length])
  {
    name = [self name];

    if ([(__CFString *)name length])
    {
      v2 = name;
    }

    else
    {

      v2 = &stru_1F1741150;
    }
  }

  return v2;
}

- (id)px_localizedName
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v2 = objc_getAssociatedObject(selfCopy, &PersonLocalizedNameKey);
  if (!v2)
  {
    v2 = [selfCopy _px_localizedNameWithStyle:1];
    if ([v2 length])
    {
LABEL_9:
      objc_setAssociatedObject(selfCopy, &PersonLocalizedNameKey, v2, 0x301);
      goto LABEL_10;
    }

    displayName = [selfCopy displayName];
    v4 = [displayName length];

    if (v4)
    {
      displayName2 = [selfCopy displayName];
    }

    else
    {
      name = [selfCopy name];
      v7 = [name length];

      if (!v7)
      {
        v8 = &stru_1F1741150;
        goto LABEL_8;
      }

      displayName2 = [selfCopy name];
    }

    v8 = displayName2;
LABEL_8:

    v2 = v8;
    goto LABEL_9;
  }

LABEL_10:
  objc_sync_exit(selfCopy);

  return v2;
}

+ (id)px_localizedNameFromContact:()PhotosUICore
{
  v3 = MEMORY[0x1E696ADF0];
  v4 = a3;
  v5 = objc_alloc_init(v3);
  givenName = [v4 givenName];
  [v5 setGivenName:givenName];

  familyName = [v4 familyName];

  [v5 setFamilyName:familyName];
  v8 = [MEMORY[0x1E696ADF8] localizedStringFromPersonNameComponents:v5 style:1 options:0];

  return v8;
}

@end