@interface ABSFavoritesSyncObject
+ (id)shaFile;
- (ABSFavoritesSyncObject)init;
- (id)createProtobufWithOptions:(id)a3;
- (id)description;
- (int)contactPropertyKeyToProperty:(id)a3;
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

  v3 = [v20[5] entries];
  v4 = [v3 count] == 0;

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
    v5 = [v20[5] entries];
    v6 = 0;
    v7 = [v5 countByEnumeratingWithState:&v14 objects:v25 count:16];
    if (v7)
    {
      v8 = *v15;
      do
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v15 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v6 ^= [*(*(&v14 + 1) + 8 * i) hash];
        }

        v7 = [v5 countByEnumeratingWithState:&v14 objects:v25 count:16];
      }

      while (v7);
    }

    v10 = [NSString stringWithFormat:@"%lx", v6];
  }

  _Block_object_dispose(&v19, 8);

  return v10;
}

- (int)contactPropertyKeyToProperty:(id)a3
{
  v11[0] = CNContactPhoneNumbersKey;
  v3 = a3;
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

  v9 = [v8 objectForKey:v3];

  LODWORD(v3) = [v9 integerValue];
  return v3;
}

- (id)createProtobufWithOptions:(id)a3
{
  v46 = a3;
  v4 = [[ABSPBSyncObject alloc] initWithMemo:@"Favorites"];
  v49 = dispatch_semaphore_create(0);
  v5 = objc_alloc_init(ABSPBFavoritesSyncObject);
  [(ABSPBSyncObject *)v4 setFavoritesSyncObject:v5];

  v6 = [NSMutableArray alloc];
  v50 = self;
  v7 = [(CNFavorites *)self->_favorites entries];
  v8 = [v6 initWithCapacity:{objc_msgSend(v7, "count")}];
  v9 = [(ABSPBSyncObject *)v4 favoritesSyncObject];
  [v9 setEntrys:v8];

  v62 = 0u;
  v63 = 0u;
  v60 = 0u;
  v61 = 0u;
  obj = [(CNFavorites *)self->_favorites entries];
  v10 = [obj countByEnumeratingWithState:&v60 objects:v64 count:16];
  if (v10)
  {
    v11 = 0;
    v48 = *v61;
    do
    {
      v12 = 0;
      v13 = v11;
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
        v18 = [v14 contactProperty];
        v19 = [v18 key];
        v20 = [CNFavoritesEntry mapCNContactPropertyKeyToABProperty:v19];

        [(ABSPBFavoritesEntry *)v17 setEntryType:v20];
        v21 = [v14 contactProperty];
        v22 = [v21 key];
        [(ABSPBFavoritesEntry *)v17 setProperty:[(ABSFavoritesSyncObject *)v50 contactPropertyKeyToProperty:v22]];

        v23 = [v14 value];
        [(ABSPBFavoritesEntry *)v17 setValue:v23];

        v24 = [v14 name];
        [(ABSPBFavoritesEntry *)v17 setName:v24];

        v25 = [v14 actionType];
        [(ABSPBFavoritesEntry *)v17 setActionType:v25];

        v26 = [v14 bundleIdentifier];
        [(ABSPBFavoritesEntry *)v17 setBundleIdentifier:v26];

        v27 = [v14 contactProperty];
        v28 = [v27 contact];
        v11 = [v28 identifier];

        v29 = [v14 contactProperty];
        v30 = [v29 key];
        [(ABSPBFavoritesEntry *)v17 setPropertyKey:v30];

        v31 = [v14 contactProperty];
        v32 = [v31 label];
        [(ABSPBFavoritesEntry *)v17 setLabel:v32];

        if (v11)
        {
          [(ABSPBFavoritesEntry *)v17 setGuid:v11];
        }

        else
        {
          v33 = +[NSUUID UUID];
          v34 = [v33 UUIDString];
          [(ABSPBFavoritesEntry *)v17 setGuid:v34];
        }

        v35 = [v14 dictionaryRepresentation];
        v36 = [NSMutableArray alloc];
        v37 = [v35 allKeys];
        v38 = [v36 initWithArray:v37];
        [(ABSPBFavoritesEntry *)v17 setDictionaryKeys:v38];

        v39 = [NSMutableArray alloc];
        v40 = [v35 allValues];
        v41 = [v39 initWithArray:v40];
        [(ABSPBFavoritesEntry *)v17 setDictionaryValues:v41];

        v42 = [(ABSPBSyncObject *)v4 favoritesSyncObject];
        v43 = [v42 entrys];
        [v43 addObject:v17];

        _Block_object_dispose(&v54, 8);
        v12 = v12 + 1;
        v13 = v11;
      }

      while (v10 != v12);
      v10 = [obj countByEnumeratingWithState:&v60 objects:v64 count:16];
    }

    while (v10);
  }

  v44 = [(ABSPBSyncObject *)v4 data];

  return v44;
}

- (id)description
{
  v3 = [NSMutableString stringWithString:@"<FavoritesSyncObject ["];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = [(CNFavorites *)self->_favorites entries];
  v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
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
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v13 + 1) + 8 * i) contactProperty];
        v10 = [v9 contact];
        v11 = [v10 identifier];
        [v3 appendFormat:@"%@, ", v11];
      }

      v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  [v3 appendString:@"-]>"];

  return v3;
}

@end