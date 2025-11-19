@interface ABSContactsSyncManager
- (id)addressingGrammarsFromContactWrapper:(id)a3;
- (id)reality;
- (void)_addContactFromContactWrapper_LOCKED:(id)a3 toContainerWithIdentifier:(id)a4;
- (void)_applyPronounsToContact:(id)a3 contactWrapper:(id)a4;
- (void)_applySensitiveContentConfigurationIfPossible:(id)a3 wrapper:(id)a4;
- (void)_applyWallpaperArchiveToContactIfPossible:(id)a3 wrapper:(id)a4;
- (void)_applyWatchWallpaperToContactIfPossible:(id)a3 wrapper:(id)a4;
- (void)_bindLinks:(id)a3 contact:(id)a4 guid:(id)a5 store:(id)a6;
- (void)_deleteContactForGUID_LOCKED:(id)a3;
- (void)_modifyContactFromContactWrapper_LOCKED:(id)a3 toContact:(id)a4;
- (void)_processSpecialRulesFieldsForContact:(id)a3 wrapper:(id)a4;
- (void)addBatch:(id)a3 forSession:(id)a4;
- (void)addOrUpdateContactIn:(id)a3 forSession:(id)a4;
- (void)addOrUpdateLMAIn:(id)a3 forSession:(id)a4;
- (void)clearShadowMarks;
- (void)deleteShadow;
- (void)deleteUnmarked;
- (void)remove:(id)a3;
@end

@implementation ABSContactsSyncManager

- (id)reality
{
  v2 = self;
  objc_sync_enter(v2);
  if (!v2->_reality)
  {
    v3 = objc_alloc_init(ABSContactsReality);
    reality = v2->_reality;
    v2->_reality = v3;
  }

  objc_sync_exit(v2);

  v5 = v2->_reality;

  return v5;
}

- (void)_bindLinks:(id)a3 contact:(id)a4 guid:(id)a5 store:(id)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  if (v11 && [v11 length])
  {
    v13 = [[ABSContactsLinkCluster alloc] initWithPBStuff:v9 contact:v10];
    v14 = +[ABSContactsReclusterizer sharedInstance];
    [v14 stashCluster:v13 forGuid:v11];
  }

  else if (os_log_type_enabled(*(qword_100071D00 + 8), OS_LOG_TYPE_ERROR))
  {
    sub_10003A9D8();
  }
}

- (void)_applyWatchWallpaperToContactIfPossible:(id)a3 wrapper:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = *(qword_100071D00 + 8);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Checking SNAP shared preference before applying avatar and poster", v9, 2u);
  }

  if ([v6 hasWallpaperDataRepresentation])
  {
    v8 = [v6 wallpaperImageData];
    [v5 setWatchWallpaperImageData:v8];
  }
}

- (void)_applyWallpaperArchiveToContactIfPossible:(id)a3 wrapper:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v6 wallpaperDataRepresentation];

  if (v7)
  {
    v8 = [CNWallpaper alloc];
    v9 = [v6 wallpaperDataRepresentation];
    v10 = [v8 initWithDataRepresentation:v9];
    [v5 setWallpaper:v10];

    v11 = *(qword_100071D00 + 8);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 136315138;
      v14 = "[ABSContactsSyncManager _applyWallpaperArchiveToContactIfPossible:wrapper:]";
      v12 = "%s: applying wallpaperDataRepresentation";
LABEL_6:
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, v12, &v13, 0xCu);
    }
  }

  else
  {
    v11 = *(qword_100071D00 + 8);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 136315138;
      v14 = "[ABSContactsSyncManager _applyWallpaperArchiveToContactIfPossible:wrapper:]";
      v12 = "%s: No wallpaperDataRepresentation, guessing this contact wasn't TTM shared?";
      goto LABEL_6;
    }
  }
}

- (void)_applySensitiveContentConfigurationIfPossible:(id)a3 wrapper:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [CNSensitiveContentConfiguration alloc];
  v8 = [v6 sensitiveContentConfiguration];
  v9 = [v7 initWithDataRepresentation:v8];

  v10 = [v6 sensitiveContentConfiguration];

  if (!v10 || v9)
  {
    [v5 setSensitiveContentConfiguration:v9];
  }

  else if (os_log_type_enabled(*(qword_100071D00 + 8), OS_LOG_TYPE_ERROR))
  {
    sub_10003AA14();
  }
}

- (void)_addContactFromContactWrapper_LOCKED:(id)a3 toContainerWithIdentifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = *(qword_100071D00 + 8);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "_addContactFromContactWrapper_LOCKED:container:", buf, 2u);
  }

  v9 = +[ABSContactsInterface sharedInstance];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_10001E1FC;
  v14[3] = &unk_10005D440;
  v15 = v6;
  v16 = self;
  v17 = v7;
  v10 = v7;
  v11 = v6;
  [v9 mutateAssert:v14];

  v12 = +[ABSContactsShadow instance];
  v13 = [v11 guid];
  [v12 insert:v13];
}

- (id)addressingGrammarsFromContactWrapper:(id)a3
{
  v3 = a3;
  v11[0] = objc_opt_class();
  v11[1] = objc_opt_class();
  v4 = [NSArray arrayWithObjects:v11 count:2];
  v5 = [NSSet setWithArray:v4];
  v6 = [v3 encryptedPronounData];

  v10 = 0;
  v7 = [NSKeyedUnarchiver unarchivedArrayOfObjectsOfClasses:v5 fromData:v6 error:&v10];
  v8 = v10;

  if (v8 && os_log_type_enabled(*(qword_100071D00 + 8), OS_LOG_TYPE_ERROR))
  {
    sub_10003ABA8();
  }

  return v7;
}

- (void)_applyPronounsToContact:(id)a3 contactWrapper:(id)a4
{
  v6 = a3;
  v7 = [(ABSContactsSyncManager *)self addressingGrammarsFromContactWrapper:a4];
  [v6 setAddressingGrammarsEncrypted:v7];
}

- (void)_processSpecialRulesFieldsForContact:(id)a3 wrapper:(id)a4
{
  v6 = a4;
  v7 = a3;
  [(ABSContactsSyncManager *)self _applyWatchWallpaperToContactIfPossible:v7 wrapper:v6];
  [(ABSContactsSyncManager *)self _applyWallpaperArchiveToContactIfPossible:v7 wrapper:v6];
  [(ABSContactsSyncManager *)self _applySensitiveContentConfigurationIfPossible:v7 wrapper:v6];
  [(ABSContactsSyncManager *)self _applyPronounsToContact:v7 contactWrapper:v6];
}

- (void)_modifyContactFromContactWrapper_LOCKED:(id)a3 toContact:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = *(qword_100071D00 + 8);
  if (!v7)
  {
    if (os_log_type_enabled(*(qword_100071D00 + 8), OS_LOG_TYPE_ERROR))
    {
      sub_10003ABE4();
    }

    v15 = [NSError errorWithDomain:@"ModifyWithNoToContact" code:-1 userInfo:0];
    objc_exception_throw(v15);
  }

  v9 = v7;
  if (os_log_type_enabled(*(qword_100071D00 + 8), OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "_modifyContactFromContactWrapper_LOCKED:toContact:", buf, 2u);
  }

  v10 = +[ABSContactsInterface sharedInstance];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_10001ED00;
  v16[3] = &unk_10005D440;
  v17 = v6;
  v18 = v9;
  v19 = self;
  v11 = v9;
  v12 = v6;
  [v10 mutateAssert:v16];

  v13 = +[ABSContactsShadow instance];
  v14 = [v11 identifier];
  [v13 insert:v14];
}

- (void)addBatch:(id)a3 forSession:(id)a4
{
  v6 = a3;
  v7 = a4;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v8 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v18;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v18 != v10)
        {
          objc_enumerationMutation(v6);
        }

        v12 = *(*(&v17 + 1) + 8 * i);
        v13 = [v12 pbObject];
        v14 = [v13 contactWrapper];

        if ([v14 hasGuid])
        {
          [(ABSContactsSyncManager *)self addOrUpdateContactIn:v12 forSession:v7];
        }

        else
        {
          v15 = [v12 pbObject];
          v16 = [v15 hasLmaSyncData];

          if (v16)
          {
            [(ABSContactsSyncManager *)self addOrUpdateLMAIn:v12 forSession:v7];
          }
        }
      }

      v9 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v9);
  }
}

- (void)addOrUpdateLMAIn:(id)a3 forSession:(id)a4
{
  v4 = *(qword_100071D00 + 8);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Shouldn't save LMA info on iOS, aborting....", v5, 2u);
  }
}

- (void)addOrUpdateContactIn:(id)a3 forSession:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 pbObject];
  v9 = [v8 contactWrapper];

  v10 = [v9 guid];
  if (v10)
  {
    v18[0] = 0;
    v18[1] = v18;
    v18[2] = 0x3032000000;
    v18[3] = sub_10001F4C4;
    v18[4] = sub_10001F4D4;
    v19 = 0;
    v11 = +[ABSContactsInterface sharedInstance];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_10001F4DC;
    v12[3] = &unk_10005D468;
    v13 = v9;
    v17 = v18;
    v14 = v10;
    v15 = self;
    v16 = v7;
    [v11 accessSync:v12];

    _Block_object_dispose(v18, 8);
  }

  else if (os_log_type_enabled(*(qword_100071D00 + 8), OS_LOG_TYPE_ERROR))
  {
    sub_10003AC5C();
  }
}

- (void)_deleteContactForGUID_LOCKED:(id)a3
{
  v3 = a3;
  v4 = +[ABSContactsInterface sharedInstance];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10001F8D4;
  v7[3] = &unk_10005D168;
  v8 = v3;
  v5 = v3;
  [v4 mutateAssert:v7];

  v6 = +[ABSContactsShadow instance];
  [v6 remove:v5];
}

- (void)remove:(id)a3
{
  v4 = [a3 pbObject];
  v5 = [v4 deleteWrapper];

  v6 = +[ABSContactsInterface sharedInstance];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10001FC24;
  v8[3] = &unk_10005D4B8;
  v8[4] = self;
  v9 = v5;
  v7 = v5;
  [v6 accessSync:v8];
}

- (void)deleteShadow
{
  v2 = +[ABSContactsShadow instance];
  [v2 purge];
}

- (void)clearShadowMarks
{
  v2 = +[ABSContactsShadow instance];
  [v2 purge];
}

- (void)deleteUnmarked
{
  v2 = +[ABSContactsInterface sharedInstance];
  [v2 mutateSync:&stru_10005D4F8];
}

@end