@interface ABSContactsSyncObject
+ (void)clearMeCardSet;
- (ABSContactsSyncObject)initWithLMASyncData:(id)data;
- (ABSContactsSyncObject)initWithReality:(id)reality person:(id)person isMe:(BOOL)me;
- (id)_pBcontainerAttributesForContainer:(id)container;
- (id)createProtobufWithOptions:(id)options;
- (id)description;
- (id)lmaCounterpartAppBundleIDForBundleID:(id)d;
- (id)objectIdentifier;
- (void)_attachContainerAttributesToWrapper:(id)wrapper contact:(id)contact store:(id)store;
- (void)_attachInnerContactDataToWrapper:(id)wrapper contact:(id)contact options:(id)options;
- (void)_attachMiscToWrapper:(id)wrapper contact:(id)contact;
@end

@implementation ABSContactsSyncObject

- (ABSContactsSyncObject)initWithReality:(id)reality person:(id)person isMe:(BOOL)me
{
  meCopy = me;
  realityCopy = reality;
  personCopy = person;
  v32.receiver = self;
  v32.super_class = ABSContactsSyncObject;
  v10 = [(ABSContactsSyncObject *)&v32 init];
  if (v10)
  {
    if (!personCopy)
    {
      sub_10003AD94();
    }

    if (!realityCopy)
    {
      sub_10003ADF0();
    }

    identifier = [personCopy identifier];
    v12 = [identifier copy];
    guid = v10->_guid;
    v10->_guid = v12;

    if (![(NSString *)v10->_guid length])
    {
      sub_10003AE4C();
    }

    if (meCopy)
    {
      [qword_100071C68 addObject:v10->_guid];
    }

    v26 = 0;
    v27 = &v26;
    v28 = 0x3032000000;
    v29 = sub_10002189C;
    v30 = sub_1000218AC;
    v31 = 0;
    v14 = +[ABSContactsInterface sharedInstance];
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_1000218B4;
    v22[3] = &unk_10005D5F0;
    v25 = &v26;
    v15 = realityCopy;
    v23 = v15;
    v16 = personCopy;
    v24 = v16;
    [v14 accessSync:v22];

    v17 = [v27[5] copy];
    accountID = v10->_accountID;
    v10->_accountID = v17;

    v19 = *(qword_100071D00 + 8);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v20 = v10->_accountID;
      *buf = 134218754;
      v34 = v15;
      v35 = 2048;
      v36 = v16;
      v37 = 1024;
      v38 = meCopy;
      v39 = 2114;
      v40 = v20;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "initWithReality:%p person:%p isMe:%d accountId:%{public}@", buf, 0x26u);
    }

    _Block_object_dispose(&v26, 8);
  }

  return v10;
}

- (ABSContactsSyncObject)initWithLMASyncData:(id)data
{
  dataCopy = data;
  v11.receiver = self;
  v11.super_class = ABSContactsSyncObject;
  v5 = [(ABSContactsSyncObject *)&v11 init];
  v6 = v5;
  if (v5)
  {
    [(ABSContactsSyncObject *)v5 setLmaSyncData:dataCopy];
    v7 = objc_opt_new();
    v8 = [v7 description];
    guid = v6->_guid;
    v6->_guid = v8;
  }

  return v6;
}

+ (void)clearMeCardSet
{
  qword_100071C68 = [[NSMutableSet alloc] initWithCapacity:4];

  _objc_release_x1();
}

- (id)objectIdentifier
{
  guid = [(ABSContactsSyncObject *)self guid];
  if (!guid)
  {
    sub_10003AEA8();
  }

  return guid;
}

- (void)_attachInnerContactDataToWrapper:(id)wrapper contact:(id)contact options:(id)options
{
  wrapperCopy = wrapper;
  contactCopy = contact;
  optionsCopy = options;
  v10 = [optionsCopy objectForKeyedSubscript:off_100071990];
  v11 = [v10 isEqualToString:off_1000719A0];

  if (v11)
  {
    cNFSSerialize = [contactCopy CNFSSerialize];
    [wrapperCopy setFastEncodingData:cNFSSerialize];
  }

  else
  {
    v13 = [optionsCopy objectForKeyedSubscript:off_100071990];
    v14 = [v13 isEqualToString:off_1000719B0];

    if (v14)
    {
      cNFSSerialize = [ABSPBContact toPBContact:contactCopy];
      [wrapperCopy setPb:cNFSSerialize];
    }

    else
    {
      v18 = contactCopy;
      v15 = [NSArray arrayWithObjects:&v18 count:1];
      v17 = 0;
      cNFSSerialize = [CNContactVCardSerialization dataWithContacts:v15 error:&v17];
      v16 = v17;

      [wrapperCopy setVcardData:cNFSSerialize];
    }
  }
}

- (void)_attachMiscToWrapper:(id)wrapper contact:(id)contact
{
  wrapperCopy = wrapper;
  contactCopy = contact;
  identifier = [contactCopy identifier];
  [wrapperCopy setGuid:identifier];

  v9 = qword_100071C68;
  identifier2 = [contactCopy identifier];
  [wrapperCopy setIsMe:{objc_msgSend(v9, "containsObject:", identifier2)}];

  v11 = [contactCopy valueForKey:CNContactModificationDateKey];
  [v11 timeIntervalSince1970];
  [wrapperCopy setModDate:?];
  v12 = *(qword_100071D00 + 8);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = v12;
    thumbnailImageData = [contactCopy thumbnailImageData];
    *buf = 134217984;
    v35 = [thumbnailImageData length];
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Sending thumbnail of size: %lu", buf, 0xCu);
  }

  thumbnailImageData2 = [contactCopy thumbnailImageData];
  [wrapperCopy setThumbnail:thumbnailImageData2];

  v16 = *(qword_100071D00 + 8);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v17 = v16;
    accountID = [(ABSContactsSyncObject *)self accountID];
    *buf = 138543362;
    v35 = accountID;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "createProtobufWithOptions:Setting accountExternalIdentifier:%{public}@", buf, 0xCu);
  }

  accountID2 = [(ABSContactsSyncObject *)self accountID];
  [wrapperCopy setAccountExternalIdentifier:accountID2];

  [wrapperCopy setSharedPhotoDisplayPreference:{objc_msgSend(contactCopy, "sharedPhotoDisplayPreference")}];
  if ([wrapperCopy containsCustomPoster])
  {
    watchWallpaperImageData = [contactCopy watchWallpaperImageData];
    [wrapperCopy setWallpaperImageData:watchWallpaperImageData];

    v21 = *(qword_100071D00 + 8);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      v22 = v21;
      wallpaperImageData = [wrapperCopy wallpaperImageData];
      *buf = 134217984;
      v35 = wallpaperImageData;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Sending poster: %p", buf, 0xCu);
    }
  }

  else
  {
    v24 = *(qword_100071D00 + 8);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "Not sending poster", buf, 2u);
    }
  }

  if ([wrapperCopy isMe])
  {
    wallpaper = [contactCopy wallpaper];
    dataRepresentation = [wallpaper dataRepresentation];
    [wrapperCopy setWallpaperDataRepresentation:dataRepresentation];
  }

  addressingGrammarsEncrypted = [contactCopy addressingGrammarsEncrypted];
  v33 = 0;
  v28 = [NSKeyedArchiver archivedDataWithRootObject:addressingGrammarsEncrypted requiringSecureCoding:1 error:&v33];
  v29 = v33;

  if (v29)
  {
    if (os_log_type_enabled(*(qword_100071D00 + 8), OS_LOG_TYPE_ERROR))
    {
      sub_10003AF14();
    }
  }

  else
  {
    [wrapperCopy setEncryptedPronounData:v28];
  }

  sensitiveContentConfiguration = [contactCopy sensitiveContentConfiguration];
  dataRepresentation2 = [sensitiveContentConfiguration dataRepresentation];

  if (dataRepresentation2)
  {
    [wrapperCopy setSensitiveContentConfiguration:dataRepresentation2];
  }

  else
  {
    sensitiveContentConfiguration2 = [contactCopy sensitiveContentConfiguration];

    if (sensitiveContentConfiguration2 && os_log_type_enabled(*(qword_100071D00 + 8), OS_LOG_TYPE_ERROR))
    {
      sub_10003AF88();
    }
  }
}

- (void)_attachContainerAttributesToWrapper:(id)wrapper contact:(id)contact store:(id)store
{
  wrapperCopy = wrapper;
  storeCopy = store;
  contactCopy = contact;
  v11 = objc_opt_class();
  identifier = [contactCopy identifier];

  v13 = [v11 containerForContactIdentifier:identifier store:storeCopy];

  v14 = [(ABSContactsSyncObject *)self _pBcontainerAttributesForContainer:v13];
  [wrapperCopy setContainerAttributes:v14];

  v15 = *(qword_100071D00 + 8);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = v15;
    identifier2 = [v13 identifier];
    containerAttributes = [wrapperCopy containerAttributes];
    v19 = 138543618;
    v20 = identifier2;
    v21 = 2112;
    v22 = containerAttributes;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Setting container %{public}@ attributes: %@", &v19, 0x16u);
  }
}

- (id)_pBcontainerAttributesForContainer:(id)container
{
  containerCopy = container;
  v4 = objc_alloc_init(ABSPBContainerAttributes);
  -[ABSPBContainerAttributes setGuardianRestricted:](v4, "setGuardianRestricted:", [containerCopy isGuardianRestricted]);
  name = [containerCopy name];
  [(ABSPBContainerAttributes *)v4 setName:name];

  type = [containerCopy type];
  [(ABSPBContainerAttributes *)v4 setType:type];

  return v4;
}

- (id)lmaCounterpartAppBundleIDForBundleID:(id)d
{
  dCopy = d;
  v11 = 0;
  v4 = [[LSApplicationRecord alloc] initWithBundleIdentifier:dCopy allowPlaceholder:0 error:&v11];
  v5 = v11;
  counterpartIdentifiers = [v4 counterpartIdentifiers];
  firstObject = [counterpartIdentifiers firstObject];

  if (v5 && os_log_type_enabled(*(qword_100071D00 + 8), OS_LOG_TYPE_ERROR))
  {
    sub_10003AFC4();
  }

  if (firstObject)
  {
    v8 = firstObject;
  }

  else
  {
    v8 = dCopy;
  }

  v9 = v8;

  return v8;
}

- (id)createProtobufWithOptions:(id)options
{
  optionsCopy = options;
  v105 = 0;
  v106 = &v105;
  v107 = 0x3032000000;
  v108 = sub_10002189C;
  v109 = sub_1000218AC;
  v110 = 0;
  v85 = [[ABSPBSyncObject alloc] initWithMemo:@"Contact"];
  lmaSyncData = [(ABSContactsSyncObject *)self lmaSyncData];
  v4 = lmaSyncData == 0;

  if (!v4)
  {
    v5 = *(qword_100071D00 + 8);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Enqueueing sync data", buf, 2u);
    }

    v86 = objc_alloc_init(ABSPBLimitedAccessSyncData);
    v6 = objc_opt_new();
    v103 = 0u;
    v104 = 0u;
    v101 = 0u;
    v102 = 0u;
    lmaSyncData2 = [(ABSContactsSyncObject *)self lmaSyncData];
    syncEvents = [lmaSyncData2 syncEvents];

    v9 = [syncEvents countByEnumeratingWithState:&v101 objects:v117 count:16];
    if (v9)
    {
      v10 = *v102;
      do
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v102 != v10)
          {
            objc_enumerationMutation(syncEvents);
          }

          v12 = *(*(&v101 + 1) + 8 * i);
          v13 = objc_alloc_init(ABSPBLimitedAccessObject);
          bundleID = [v12 bundleID];
          v15 = [(ABSContactsSyncObject *)self lmaCounterpartAppBundleIDForBundleID:bundleID];
          [(ABSPBLimitedAccessObject *)v13 setBundleID:v15];

          contactID = [v12 contactID];
          [(ABSPBLimitedAccessObject *)v13 setContactID:contactID];

          -[ABSPBLimitedAccessObject setSequenceNumber:](v13, "setSequenceNumber:", [v12 sequenceNumber]);
          -[ABSPBLimitedAccessObject setIsActive:](v13, "setIsActive:", [v12 isActive]);
          [v6 addObject:v13];
        }

        v9 = [syncEvents countByEnumeratingWithState:&v101 objects:v117 count:16];
      }

      while (v9);
    }

    [(ABSPBLimitedAccessSyncData *)v86 setSyncEvents:v6];
    lmaSyncData3 = [(ABSContactsSyncObject *)self lmaSyncData];
    -[ABSPBLimitedAccessSyncData setCurrentSequenceNumber:](v86, "setCurrentSequenceNumber:", [lmaSyncData3 currentSequenceNumber]);

    lmaSyncData4 = [(ABSContactsSyncObject *)self lmaSyncData];
    -[ABSPBLimitedAccessSyncData setFullSyncRequired:](v86, "setFullSyncRequired:", [lmaSyncData4 fullSyncRequired]);

    [(ABSPBSyncObject *)v85 setLmaSyncData:v86];
    v84 = 0;
    v19 = 0;
    goto LABEL_49;
  }

  v20 = objc_alloc_init(ABSPBContactWrapper);
  [(ABSPBSyncObject *)v85 setContactWrapper:v20];
  v21 = objc_alloc_init(CNContactStore);
  v87 = v20;
  v82 = sub_1000191A8();
  v22 = [[CNContactFetchRequest alloc] initWithKeysToFetch:v82];
  guid = [(ABSContactsSyncObject *)self guid];
  v116 = guid;
  v24 = [NSArray arrayWithObjects:&v116 count:1];
  v25 = [CNContact predicateForContactsWithIdentifiers:v24];
  [v22 setPredicate:v25];

  [v22 setUnifyResults:1];
  v97[0] = _NSConcreteStackBlock;
  v97[1] = 3221225472;
  v97[2] = sub_100023060;
  v97[3] = &unk_10005D3D0;
  v81 = v21;
  v98 = v81;
  v80 = v22;
  v99 = v80;
  v100 = &v105;
  v84 = sub_100004D58(v97);
  if (v84)
  {
    if (os_log_type_enabled(*(qword_100071D00 + 8), OS_LOG_TYPE_ERROR))
    {
      sub_10003B038();
    }

LABEL_47:
    v51 = 0;
    v19 = 0;
    goto LABEL_48;
  }

  linkedContacts = [v106[5] linkedContacts];
  v27 = [linkedContacts count] == 0;

  if (v27)
  {
    v36 = v106[5];
  }

  else
  {
    v95 = 0u;
    v96 = 0u;
    v93 = 0u;
    v94 = 0u;
    linkedContacts2 = [v106[5] linkedContacts];
    v29 = [linkedContacts2 countByEnumeratingWithState:&v93 objects:v115 count:16];
    if (v29)
    {
      v30 = *v94;
      while (2)
      {
        for (j = 0; j != v29; j = j + 1)
        {
          if (*v94 != v30)
          {
            objc_enumerationMutation(linkedContacts2);
          }

          v32 = *(*(&v93 + 1) + 8 * j);
          identifier = [v32 identifier];
          guid2 = [(ABSContactsSyncObject *)self guid];
          v35 = [identifier isEqualToString:guid2];

          if (v35)
          {
            v36 = v32;
            goto LABEL_26;
          }
        }

        v29 = [linkedContacts2 countByEnumeratingWithState:&v93 objects:v115 count:16];
        if (v29)
        {
          continue;
        }

        break;
      }
    }

    v36 = 0;
LABEL_26:
  }

  if (!v36)
  {
    v52 = *(qword_100071D00 + 8);
    if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
    {
      guid3 = [(ABSContactsSyncObject *)self guid];
      sub_10003B0E8(guid3, buf, v52);
    }

    goto LABEL_47;
  }

  [(ABSContactsSyncObject *)self _attachInnerContactDataToWrapper:v87 contact:v36 options:optionsCopy];
  [(ABSContactsSyncObject *)self _attachMiscToWrapper:v87 contact:v36];
  identifier2 = [v36 identifier];
  if (!identifier2 || ([v36 identifier], v38 = objc_claimAutoreleasedReturnValue(), v19 = v36, v39 = objc_msgSend(v38, "length") == 0, v38, identifier2, v39))
  {
    v19 = v36;
    if (os_log_type_enabled(*(qword_100071D00 + 8), OS_LOG_TYPE_ERROR))
    {
      sub_10003B0AC();
    }

    v51 = 0;
  }

  else
  {
    identifier3 = [v106[5] identifier];
    [(ABSPBContactWrapper *)v87 setLinkGuid:identifier3];

    [v106[5] linkedContacts];
    v91 = 0u;
    v92 = 0u;
    v89 = 0u;
    v41 = v90 = 0u;
    v42 = [v41 countByEnumeratingWithState:&v89 objects:v113 count:16];
    if (v42)
    {
      v43 = *v90;
      do
      {
        for (k = 0; k != v42; k = k + 1)
        {
          if (*v90 != v43)
          {
            objc_enumerationMutation(v41);
          }

          v45 = *(*(&v89 + 1) + 8 * k);
          identifier4 = [v45 identifier];
          identifier5 = [v19 identifier];
          v48 = [identifier4 isEqualToString:identifier5];

          if ((v48 & 1) == 0)
          {
            v49 = objc_alloc_init(ABSPBLinkTo);
            -[ABSPBLinkTo setIsImage:](v49, "setIsImage:", [v45 isPreferredForImage]);
            -[ABSPBLinkTo setIsName:](v49, "setIsName:", [v45 isPreferredForName]);
            identifier6 = [v45 identifier];
            [(ABSPBLinkTo *)v49 setToGuid:identifier6];

            [(ABSPBContactWrapper *)v87 addLinkTo:v49];
          }
        }

        v42 = [v41 countByEnumeratingWithState:&v89 objects:v113 count:16];
      }

      while (v42);
    }

    [(ABSContactsSyncObject *)self _attachContainerAttributesToWrapper:v87 contact:v19 store:v81];
    [(ABSPBContactWrapper *)v87 clearGroupNames];

    v51 = 1;
  }

LABEL_48:

  if (!v51)
  {
    data5 = 0;
    goto LABEL_69;
  }

LABEL_49:
  data = [(ABSPBSyncObject *)v85 data];
  v55 = [data length] > 0x500000;

  if (v55)
  {
    v56 = *(qword_100071D00 + 8);
    if (os_log_type_enabled(v56, OS_LOG_TYPE_FAULT))
    {
      data2 = [(ABSPBSyncObject *)v85 data];
      v70 = [data2 length];
      *v111 = 134217984;
      v112 = v70;
      _os_log_fault_impl(&_mh_execute_header, v56, OS_LOG_TYPE_FAULT, "Total size: %lu", v111, 0xCu);
    }

    v57 = *(qword_100071D00 + 8);
    if (os_log_type_enabled(v57, OS_LOG_TYPE_FAULT))
    {
      contactWrapper = [(ABSPBSyncObject *)v85 contactWrapper];
      thumbnail = [contactWrapper thumbnail];
      v73 = [thumbnail length];
      *v111 = 134217984;
      v112 = v73;
      _os_log_fault_impl(&_mh_execute_header, v57, OS_LOG_TYPE_FAULT, "Avatar size: %lu", v111, 0xCu);
    }

    v58 = *(qword_100071D00 + 8);
    if (os_log_type_enabled(v58, OS_LOG_TYPE_FAULT))
    {
      contactWrapper2 = [(ABSPBSyncObject *)v85 contactWrapper];
      wallpaperImageData = [contactWrapper2 wallpaperImageData];
      v76 = [wallpaperImageData length];
      *v111 = 134217984;
      v112 = v76;
      _os_log_fault_impl(&_mh_execute_header, v58, OS_LOG_TYPE_FAULT, "Watch wallpaper size: %lu", v111, 0xCu);
    }

    v59 = *(qword_100071D00 + 8);
    if (os_log_type_enabled(v59, OS_LOG_TYPE_FAULT))
    {
      contactWrapper3 = [(ABSPBSyncObject *)v85 contactWrapper];
      wallpaperDataRepresentation = [contactWrapper3 wallpaperDataRepresentation];
      v79 = [wallpaperDataRepresentation length];
      *v111 = 134217984;
      v112 = v79;
      _os_log_fault_impl(&_mh_execute_header, v59, OS_LOG_TYPE_FAULT, "Wallpaper data representation size: %lu", v111, 0xCu);
    }

    if (os_log_type_enabled(*(qword_100071D00 + 8), OS_LOG_TYPE_FAULT))
    {
      sub_10003B140();
    }

    contactWrapper4 = [(ABSPBSyncObject *)v85 contactWrapper];
    [contactWrapper4 setWallpaperImageData:0];

    data3 = [(ABSPBSyncObject *)v85 data];
    v62 = [data3 length] > 0x500000;

    if (v62)
    {
      if (os_log_type_enabled(*(qword_100071D00 + 8), OS_LOG_TYPE_FAULT))
      {
        sub_10003B174();
      }

      contactWrapper5 = [(ABSPBSyncObject *)v85 contactWrapper];
      [contactWrapper5 setThumbnail:0];
    }

    data4 = [(ABSPBSyncObject *)v85 data];
    v65 = [data4 length] > 0x500000;

    if (v65)
    {
      if (os_log_type_enabled(*(qword_100071D00 + 8), OS_LOG_TYPE_FAULT))
      {
        sub_10003B1A8();
      }

      contactWrapper6 = [(ABSPBSyncObject *)v85 contactWrapper];
      [contactWrapper6 setWallpaperDataRepresentation:0];
    }
  }

  data5 = [(ABSPBSyncObject *)v85 data];
LABEL_69:

  _Block_object_dispose(&v105, 8);

  return data5;
}

- (id)description
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  guid = [(ABSContactsSyncObject *)self guid];
  v6 = [NSString stringWithFormat:@"<%@:%p, guid=%@>", v4, self, guid];

  return v6;
}

@end