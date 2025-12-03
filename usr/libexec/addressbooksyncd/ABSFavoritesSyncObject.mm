@interface ABSFavoritesSyncObject
+ (id)shaFile;
- (ABSFavoritesSyncObject)init;
- (id)createProtobufWithOptions:(id)options;
- (id)description;
- (int)contactPropertyKeyToProperty:(id)property;
@end

@implementation ABSFavoritesSyncObject

- (ABSFavoritesSyncObject)init
{
  v8.receiver = self;
  v8.super_class = ABSFavoritesSyncObject;
  v2 = [(ABSFavoritesSyncObject *)&v8 init];
  if (v2)
  {
    v3 = +[ABSFavoritesSyncObject shaFile];
    [(ABSFavoritesSyncObject *)v2 setSha:v3];

    v4 = +[ABSContactsInterface sharedInstance];
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_10002AF74;
    v6[3] = &unk_10005D190;
    v7 = v2;
    [v4 accessSync:v6];
  }

  return v2;
}

+ (id)shaFile
{
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = sub_10002B288;
  v23 = sub_10002B298;
  v24 = 0;
  v2 = +[ABSContactsInterface sharedInstance];
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_10002B2A0;
  v18[3] = &unk_10005D7E0;
  v18[4] = &v19;
  [v2 accessSync:v18];

  entries = [v20[5] entries];
  v4 = [entries count] == 0;

  if (v4)
  {
    v11 = *(qword_100071D00 + 8);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Favorites file is empty.", buf, 2u);
    }

    v10 = @"0";
  }

  else
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    entries2 = [v20[5] entries];
    v6 = 0;
    v7 = [entries2 countByEnumeratingWithState:&v14 objects:v25 count:16];
    if (v7)
    {
      v8 = *v15;
      do
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v15 != v8)
          {
            objc_enumerationMutation(entries2);
          }

          v6 ^= [*(*(&v14 + 1) + 8 * i) hash];
        }

        v7 = [entries2 countByEnumeratingWithState:&v14 objects:v25 count:16];
      }

      while (v7);
    }

    v10 = [NSString stringWithFormat:@"%lx", v6];
  }

  _Block_object_dispose(&v19, 8);

  return v10;
}

- (int)contactPropertyKeyToProperty:(id)property
{
  v11[0] = CNContactPhoneNumbersKey;
  propertyCopy = property;
  v4 = [NSNumber numberWithInt:kABPersonPhoneProperty];
  v12[0] = v4;
  v11[1] = CNContactEmailAddressesKey;
  v5 = [NSNumber numberWithInt:kABPersonEmailProperty];
  v12[1] = v5;
  v11[2] = CNContactInstantMessageAddressesKey;
  v6 = [NSNumber numberWithInt:kABPersonInstantMessageProperty];
  v12[2] = v6;
  v11[3] = CNContactSocialProfilesKey;
  v7 = [NSNumber numberWithInt:kABPersonSocialProfileProperty];
  v12[3] = v7;
  v8 = [NSDictionary dictionaryWithObjects:v12 forKeys:v11 count:4];

  v9 = [v8 objectForKey:propertyCopy];

  LODWORD(propertyCopy) = [v9 integerValue];
  return propertyCopy;
}

- (id)createProtobufWithOptions:(id)options
{
  optionsCopy = options;
  v4 = [[ABSPBSyncObject alloc] initWithMemo:@"Favorites"];
  v49 = dispatch_semaphore_create(0);
  v5 = objc_alloc_init(ABSPBFavoritesSyncObject);
  [(ABSPBSyncObject *)v4 setFavoritesSyncObject:v5];

  v6 = [NSMutableArray alloc];
  selfCopy = self;
  entries = [(CNFavorites *)self->_favorites entries];
  v8 = [v6 initWithCapacity:{objc_msgSend(entries, "count")}];
  favoritesSyncObject = [(ABSPBSyncObject *)v4 favoritesSyncObject];
  [favoritesSyncObject setEntrys:v8];

  v62 = 0u;
  v63 = 0u;
  v60 = 0u;
  v61 = 0u;
  obj = [(CNFavorites *)self->_favorites entries];
  v10 = [obj countByEnumeratingWithState:&v60 objects:v64 count:16];
  if (v10)
  {
    identifier = 0;
    v48 = *v61;
    do
    {
      v12 = 0;
      v13 = identifier;
      do
      {
        if (*v61 != v48)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v60 + 1) + 8 * v12);
        v54 = 0;
        v55 = &v54;
        v56 = 0x3032000000;
        v57 = sub_10002B288;
        v58 = sub_10002B298;
        v59 = 0;
        v15 = +[ABSContactsInterface sharedInstance];
        v51[0] = _NSConcreteStackBlock;
        v51[1] = 3221225472;
        v51[2] = sub_10002BAE4;
        v51[3] = &unk_10005D808;
        v51[4] = v14;
        v53 = &v54;
        v16 = v49;
        v52 = v16;
        [v15 accessAsync:v51];

        dispatch_semaphore_wait(v16, 0xFFFFFFFFFFFFFFFFLL);
        v17 = objc_alloc_init(ABSPBFavoritesEntry);
        -[ABSPBFavoritesEntry setAbIdentifier:](v17, "setAbIdentifier:", [v55[5] iOSLegacyIdentifier]);
        contactProperty = [v14 contactProperty];
        v19 = [contactProperty key];
        v20 = [CNFavoritesEntry mapCNContactPropertyKeyToABProperty:v19];

        [(ABSPBFavoritesEntry *)v17 setEntryType:v20];
        contactProperty2 = [v14 contactProperty];
        v22 = [contactProperty2 key];
        [(ABSPBFavoritesEntry *)v17 setProperty:[(ABSFavoritesSyncObject *)selfCopy contactPropertyKeyToProperty:v22]];

        value = [v14 value];
        [(ABSPBFavoritesEntry *)v17 setValue:value];

        name = [v14 name];
        [(ABSPBFavoritesEntry *)v17 setName:name];

        actionType = [v14 actionType];
        [(ABSPBFavoritesEntry *)v17 setActionType:actionType];

        bundleIdentifier = [v14 bundleIdentifier];
        [(ABSPBFavoritesEntry *)v17 setBundleIdentifier:bundleIdentifier];

        contactProperty3 = [v14 contactProperty];
        contact = [contactProperty3 contact];
        identifier = [contact identifier];

        contactProperty4 = [v14 contactProperty];
        v30 = [contactProperty4 key];
        [(ABSPBFavoritesEntry *)v17 setPropertyKey:v30];

        contactProperty5 = [v14 contactProperty];
        label = [contactProperty5 label];
        [(ABSPBFavoritesEntry *)v17 setLabel:label];

        if (identifier)
        {
          [(ABSPBFavoritesEntry *)v17 setGuid:identifier];
        }

        else
        {
          v33 = +[NSUUID UUID];
          uUIDString = [v33 UUIDString];
          [(ABSPBFavoritesEntry *)v17 setGuid:uUIDString];
        }

        dictionaryRepresentation = [v14 dictionaryRepresentation];
        v36 = [NSMutableArray alloc];
        allKeys = [dictionaryRepresentation allKeys];
        v38 = [v36 initWithArray:allKeys];
        [(ABSPBFavoritesEntry *)v17 setDictionaryKeys:v38];

        v39 = [NSMutableArray alloc];
        allValues = [dictionaryRepresentation allValues];
        v41 = [v39 initWithArray:allValues];
        [(ABSPBFavoritesEntry *)v17 setDictionaryValues:v41];

        favoritesSyncObject2 = [(ABSPBSyncObject *)v4 favoritesSyncObject];
        entrys = [favoritesSyncObject2 entrys];
        [entrys addObject:v17];

        _Block_object_dispose(&v54, 8);
        v12 = v12 + 1;
        v13 = identifier;
      }

      while (v10 != v12);
      v10 = [obj countByEnumeratingWithState:&v60 objects:v64 count:16];
    }

    while (v10);
  }

  data = [(ABSPBSyncObject *)v4 data];

  return data;
}

- (id)description
{
  v3 = [NSMutableString stringWithString:@"<FavoritesSyncObject ["];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  entries = [(CNFavorites *)self->_favorites entries];
  v5 = [entries countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(entries);
        }

        contactProperty = [*(*(&v13 + 1) + 8 * i) contactProperty];
        contact = [contactProperty contact];
        identifier = [contact identifier];
        [v3 appendFormat:@"%@, ", identifier];
      }

      v6 = [entries countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  [v3 appendString:@"-]>"];

  return v3;
}

@end