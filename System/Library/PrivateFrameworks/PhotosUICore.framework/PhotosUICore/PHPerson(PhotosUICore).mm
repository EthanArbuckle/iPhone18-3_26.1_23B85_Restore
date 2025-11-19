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
    v5 = [a1 photoLibrary];
    v6 = [v5 px_standardLibrarySpecificFetchOptions];

    [v6 setFetchLimit:2];
    [v6 setShouldPrefetchCount:1];
    v7 = [MEMORY[0x1E6978630] fetchAssetsForPerson:a1 options:v6];
    v4 = [v7 count] > 1;
  }

  else
  {
    return !a3 && [a1 faceCount] > 1;
  }

  return v4;
}

- (BOOL)px_isSameDetectionTypeAsPerson:()PhotosUICore
{
  v4 = a3;
  v5 = [a1 detectionType];
  v6 = 0;
  if (v5 <= 4 && ((1 << v5) & 0x1A) != 0)
  {
    v6 = v5 == [v4 detectionType];
  }

  return v6;
}

- (id)px_navigationURL
{
  v1 = MEMORY[0x1E696AEC0];
  v2 = [a1 localIdentifier];
  v3 = [v1 stringWithFormat:@"photos://people?identifier=%@", v2];

  v4 = [MEMORY[0x1E695DFF8] URLWithString:v3];

  return v4;
}

- (id)px_nameComponents
{
  v1 = [a1 contactMatchingDictionary];
  v2 = [v1 objectForKeyedSubscript:@"first-name"];
  v3 = [v1 objectForKeyedSubscript:@"last-name"];
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
  v4 = [a1 px_nameComponents];
  if (v4)
  {
    v5 = [MEMORY[0x1E696ADF8] localizedStringFromPersonNameComponents:v4 style:a3 options:0];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (__CFString)px_longStyleLocalizedName
{
  v2 = [a1 _px_localizedNameWithStyle:3];
  if (![(__CFString *)v2 length])
  {
    v3 = [a1 name];

    if ([(__CFString *)v3 length])
    {
      v2 = v3;
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
  v1 = a1;
  objc_sync_enter(v1);
  v2 = objc_getAssociatedObject(v1, &PersonLocalizedNameKey);
  if (!v2)
  {
    v2 = [v1 _px_localizedNameWithStyle:1];
    if ([v2 length])
    {
LABEL_9:
      objc_setAssociatedObject(v1, &PersonLocalizedNameKey, v2, 0x301);
      goto LABEL_10;
    }

    v3 = [v1 displayName];
    v4 = [v3 length];

    if (v4)
    {
      v5 = [v1 displayName];
    }

    else
    {
      v6 = [v1 name];
      v7 = [v6 length];

      if (!v7)
      {
        v8 = &stru_1F1741150;
        goto LABEL_8;
      }

      v5 = [v1 name];
    }

    v8 = v5;
LABEL_8:

    v2 = v8;
    goto LABEL_9;
  }

LABEL_10:
  objc_sync_exit(v1);

  return v2;
}

+ (id)px_localizedNameFromContact:()PhotosUICore
{
  v3 = MEMORY[0x1E696ADF0];
  v4 = a3;
  v5 = objc_alloc_init(v3);
  v6 = [v4 givenName];
  [v5 setGivenName:v6];

  v7 = [v4 familyName];

  [v5 setFamilyName:v7];
  v8 = [MEMORY[0x1E696ADF8] localizedStringFromPersonNameComponents:v5 style:1 options:0];

  return v8;
}

@end