@interface RemoveableSoftwareLookupOperation
- (void)run;
@end

@implementation RemoveableSoftwareLookupOperation

- (void)run
{
  v2 = +[NSMutableArray array];
  if (SSIsDaemon())
  {
    v3 = +[LSApplicationWorkspace defaultWorkspace];
    v29[0] = _NSConcreteStackBlock;
    v29[1] = 3221225472;
    v29[2] = sub_100002388;
    v29[3] = &unk_100328CB0;
    v30 = v2;
    [v3 enumerateApplicationsOfType:1 block:v29];
  }

  v24 = +[NSMutableArray array];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  obj = v2;
  v4 = [obj countByEnumeratingWithState:&v25 objects:v31 count:16];
  if (v4)
  {
    v5 = v4;
    v23 = *v26;
    v6 = SSSoftwareLibraryItemPropertyITunesItemIdentifier;
    v7 = SSSoftwareLibraryItemBundleIdentifier;
    v8 = SSSoftwareLibraryItemBundleVersion;
    v9 = SSSoftwareLibraryItemPropertyITunesAccountIdentifier;
    v10 = SSSoftwareLibraryItemPropertyFamilyAccountIdentifier;
    do
    {
      v11 = 0;
      do
      {
        if (*v26 != v23)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v25 + 1) + 8 * v11);
        v13 = objc_alloc_init(SSSoftwareLibraryItem);
        itemID = [v12 itemID];
        [v13 _setValue:itemID forProperty:v6];

        [v13 setBeta:{objc_msgSend(v12, "isBetaApp")}];
        [v13 setPlaceholder:{objc_msgSend(v12, "isPlaceholder")}];
        [v13 setProfileValidated:{objc_msgSend(v12, "profileValidated")}];
        bundleIdentifier = [v12 bundleIdentifier];
        [v13 _setValue:bundleIdentifier forProperty:v7];

        bundleVersion = [v12 bundleVersion];
        [v13 _setValue:bundleVersion forProperty:v8];

        purchaserDSID = [v12 purchaserDSID];
        [v13 _setValue:purchaserDSID forProperty:v9];

        familyID = [v12 familyID];
        [v13 _setValue:familyID forProperty:v10];

        [v24 addObject:v13];
        v11 = v11 + 1;
      }

      while (v5 != v11);
      v5 = [obj countByEnumeratingWithState:&v25 objects:v31 count:16];
    }

    while (v5);
  }

  v19 = [v24 copy];
  softwareLibraryItems = self->_softwareLibraryItems;
  self->_softwareLibraryItems = v19;

  [(RemoveableSoftwareLookupOperation *)self setSuccess:1];
}

@end