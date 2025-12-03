@interface ABSContactsSyncManager
- (id)addressingGrammarsFromContactWrapper:(id)wrapper;
- (id)reality;
- (void)_addContactFromContactWrapper_LOCKED:(id)d toContainerWithIdentifier:(id)identifier;
- (void)_applyPronounsToContact:(id)contact contactWrapper:(id)wrapper;
- (void)_applySensitiveContentConfigurationIfPossible:(id)possible wrapper:(id)wrapper;
- (void)_applyWallpaperArchiveToContactIfPossible:(id)possible wrapper:(id)wrapper;
- (void)_applyWatchWallpaperToContactIfPossible:(id)possible wrapper:(id)wrapper;
- (void)_bindLinks:(id)links contact:(id)contact guid:(id)guid store:(id)store;
- (void)_deleteContactForGUID_LOCKED:(id)d;
- (void)_modifyContactFromContactWrapper_LOCKED:(id)d toContact:(id)contact;
- (void)_processSpecialRulesFieldsForContact:(id)contact wrapper:(id)wrapper;
- (void)addBatch:(id)batch forSession:(id)session;
- (void)addOrUpdateContactIn:(id)in forSession:(id)session;
- (void)addOrUpdateLMAIn:(id)in forSession:(id)session;
- (void)clearShadowMarks;
- (void)deleteShadow;
- (void)deleteUnmarked;
- (void)remove:(id)remove;
@end

@implementation ABSContactsSyncManager

- (id)reality
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (!selfCopy->_reality)
  {
    v3 = objc_alloc_init(ABSContactsReality);
    reality = selfCopy->_reality;
    selfCopy->_reality = v3;
  }

  objc_sync_exit(selfCopy);

  v5 = selfCopy->_reality;

  return v5;
}

- (void)_bindLinks:(id)links contact:(id)contact guid:(id)guid store:(id)store
{
  linksCopy = links;
  contactCopy = contact;
  guidCopy = guid;
  storeCopy = store;
  if (guidCopy && [guidCopy length])
  {
    v13 = [[ABSContactsLinkCluster alloc] initWithPBStuff:linksCopy contact:contactCopy];
    v14 = +[ABSContactsReclusterizer sharedInstance];
    [v14 stashCluster:v13 forGuid:guidCopy];
  }

  else if (os_log_type_enabled(*(qword_100071D00 + 8), OS_LOG_TYPE_ERROR))
  {
    sub_10003A9D8();
  }
}

- (void)_applyWatchWallpaperToContactIfPossible:(id)possible wrapper:(id)wrapper
{
  possibleCopy = possible;
  wrapperCopy = wrapper;
  v7 = *(qword_100071D00 + 8);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Checking SNAP shared preference before applying avatar and poster", v9, 2u);
  }

  if ([wrapperCopy hasWallpaperDataRepresentation])
  {
    wallpaperImageData = [wrapperCopy wallpaperImageData];
    [possibleCopy setWatchWallpaperImageData:wallpaperImageData];
  }
}

- (void)_applyWallpaperArchiveToContactIfPossible:(id)possible wrapper:(id)wrapper
{
  possibleCopy = possible;
  wrapperCopy = wrapper;
  wallpaperDataRepresentation = [wrapperCopy wallpaperDataRepresentation];

  if (wallpaperDataRepresentation)
  {
    v8 = [CNWallpaper alloc];
    wallpaperDataRepresentation2 = [wrapperCopy wallpaperDataRepresentation];
    v10 = [v8 initWithDataRepresentation:wallpaperDataRepresentation2];
    [possibleCopy setWallpaper:v10];

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

- (void)_applySensitiveContentConfigurationIfPossible:(id)possible wrapper:(id)wrapper
{
  possibleCopy = possible;
  wrapperCopy = wrapper;
  v7 = [CNSensitiveContentConfiguration alloc];
  sensitiveContentConfiguration = [wrapperCopy sensitiveContentConfiguration];
  v9 = [v7 initWithDataRepresentation:sensitiveContentConfiguration];

  sensitiveContentConfiguration2 = [wrapperCopy sensitiveContentConfiguration];

  if (!sensitiveContentConfiguration2 || v9)
  {
    [possibleCopy setSensitiveContentConfiguration:v9];
  }

  else if (os_log_type_enabled(*(qword_100071D00 + 8), OS_LOG_TYPE_ERROR))
  {
    sub_10003AA14();
  }
}

- (void)_addContactFromContactWrapper_LOCKED:(id)d toContainerWithIdentifier:(id)identifier
{
  dCopy = d;
  identifierCopy = identifier;
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
  v15 = dCopy;
  selfCopy = self;
  v17 = identifierCopy;
  v10 = identifierCopy;
  v11 = dCopy;
  [v9 mutateAssert:v14];

  v12 = +[ABSContactsShadow instance];
  guid = [v11 guid];
  [v12 insert:guid];
}

- (id)addressingGrammarsFromContactWrapper:(id)wrapper
{
  wrapperCopy = wrapper;
  v11[0] = objc_opt_class();
  v11[1] = objc_opt_class();
  v4 = [NSArray arrayWithObjects:v11 count:2];
  v5 = [NSSet setWithArray:v4];
  encryptedPronounData = [wrapperCopy encryptedPronounData];

  v10 = 0;
  v7 = [NSKeyedUnarchiver unarchivedArrayOfObjectsOfClasses:v5 fromData:encryptedPronounData error:&v10];
  v8 = v10;

  if (v8 && os_log_type_enabled(*(qword_100071D00 + 8), OS_LOG_TYPE_ERROR))
  {
    sub_10003ABA8();
  }

  return v7;
}

- (void)_applyPronounsToContact:(id)contact contactWrapper:(id)wrapper
{
  contactCopy = contact;
  v7 = [(ABSContactsSyncManager *)self addressingGrammarsFromContactWrapper:wrapper];
  [contactCopy setAddressingGrammarsEncrypted:v7];
}

- (void)_processSpecialRulesFieldsForContact:(id)contact wrapper:(id)wrapper
{
  wrapperCopy = wrapper;
  contactCopy = contact;
  [(ABSContactsSyncManager *)self _applyWatchWallpaperToContactIfPossible:contactCopy wrapper:wrapperCopy];
  [(ABSContactsSyncManager *)self _applyWallpaperArchiveToContactIfPossible:contactCopy wrapper:wrapperCopy];
  [(ABSContactsSyncManager *)self _applySensitiveContentConfigurationIfPossible:contactCopy wrapper:wrapperCopy];
  [(ABSContactsSyncManager *)self _applyPronounsToContact:contactCopy contactWrapper:wrapperCopy];
}

- (void)_modifyContactFromContactWrapper_LOCKED:(id)d toContact:(id)contact
{
  dCopy = d;
  contactCopy = contact;
  v8 = *(qword_100071D00 + 8);
  if (!contactCopy)
  {
    if (os_log_type_enabled(*(qword_100071D00 + 8), OS_LOG_TYPE_ERROR))
    {
      sub_10003ABE4();
    }

    v15 = [NSError errorWithDomain:@"ModifyWithNoToContact" code:-1 userInfo:0];
    objc_exception_throw(v15);
  }

  v9 = contactCopy;
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
  v17 = dCopy;
  v18 = v9;
  selfCopy = self;
  v11 = v9;
  v12 = dCopy;
  [v10 mutateAssert:v16];

  v13 = +[ABSContactsShadow instance];
  identifier = [v11 identifier];
  [v13 insert:identifier];
}

- (void)addBatch:(id)batch forSession:(id)session
{
  batchCopy = batch;
  sessionCopy = session;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v8 = [batchCopy countByEnumeratingWithState:&v17 objects:v21 count:16];
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
          objc_enumerationMutation(batchCopy);
        }

        v12 = *(*(&v17 + 1) + 8 * i);
        pbObject = [v12 pbObject];
        contactWrapper = [pbObject contactWrapper];

        if ([contactWrapper hasGuid])
        {
          [(ABSContactsSyncManager *)self addOrUpdateContactIn:v12 forSession:sessionCopy];
        }

        else
        {
          pbObject2 = [v12 pbObject];
          hasLmaSyncData = [pbObject2 hasLmaSyncData];

          if (hasLmaSyncData)
          {
            [(ABSContactsSyncManager *)self addOrUpdateLMAIn:v12 forSession:sessionCopy];
          }
        }
      }

      v9 = [batchCopy countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v9);
  }
}

- (void)addOrUpdateLMAIn:(id)in forSession:(id)session
{
  v4 = *(qword_100071D00 + 8);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Shouldn't save LMA info on iOS, aborting....", v5, 2u);
  }
}

- (void)addOrUpdateContactIn:(id)in forSession:(id)session
{
  inCopy = in;
  sessionCopy = session;
  pbObject = [inCopy pbObject];
  contactWrapper = [pbObject contactWrapper];

  guid = [contactWrapper guid];
  if (guid)
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
    v13 = contactWrapper;
    v17 = v18;
    v14 = guid;
    selfCopy = self;
    v16 = sessionCopy;
    [v11 accessSync:v12];

    _Block_object_dispose(v18, 8);
  }

  else if (os_log_type_enabled(*(qword_100071D00 + 8), OS_LOG_TYPE_ERROR))
  {
    sub_10003AC5C();
  }
}

- (void)_deleteContactForGUID_LOCKED:(id)d
{
  dCopy = d;
  v4 = +[ABSContactsInterface sharedInstance];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10001F8D4;
  v7[3] = &unk_10005D168;
  v8 = dCopy;
  v5 = dCopy;
  [v4 mutateAssert:v7];

  v6 = +[ABSContactsShadow instance];
  [v6 remove:v5];
}

- (void)remove:(id)remove
{
  pbObject = [remove pbObject];
  deleteWrapper = [pbObject deleteWrapper];

  v6 = +[ABSContactsInterface sharedInstance];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10001FC24;
  v8[3] = &unk_10005D4B8;
  v8[4] = self;
  v9 = deleteWrapper;
  v7 = deleteWrapper;
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