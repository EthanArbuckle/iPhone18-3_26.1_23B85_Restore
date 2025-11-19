@interface ABSContactsSyncObject
+ (void)clearMeCardSet;
- (ABSContactsSyncObject)initWithLMASyncData:(id)a3;
- (ABSContactsSyncObject)initWithReality:(id)a3 person:(id)a4 isMe:(BOOL)a5;
- (id)_pBcontainerAttributesForContainer:(id)a3;
- (id)createProtobufWithOptions:(id)a3;
- (id)description;
- (id)lmaCounterpartAppBundleIDForBundleID:(id)a3;
- (id)objectIdentifier;
- (void)_attachContainerAttributesToWrapper:(id)a3 contact:(id)a4 store:(id)a5;
- (void)_attachInnerContactDataToWrapper:(id)a3 contact:(id)a4 options:(id)a5;
- (void)_attachMiscToWrapper:(id)a3 contact:(id)a4;
@end

@implementation ABSContactsSyncObject

- (ABSContactsSyncObject)initWithReality:(id)a3 person:(id)a4 isMe:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v9 = a4;
  v32.receiver = self;
  v32.super_class = ABSContactsSyncObject;
  v10 = [(ABSContactsSyncObject *)&v32 init];
  if (v10)
  {
    if (!v9)
    {
      sub_10003AD94();
    }

    if (!v8)
    {
      sub_10003ADF0();
    }

    v11 = [v9 identifier];
    v12 = [v11 copy];
    guid = v10->_guid;
    v10->_guid = v12;

    if (![(NSString *)v10->_guid length])
    {
      sub_10003AE4C();
    }

    if (v5)
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
    v15 = v8;
    v23 = v15;
    v16 = v9;
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
      v38 = v5;
      v39 = 2114;
      v40 = v20;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "initWithReality:%p person:%p isMe:%d accountId:%{public}@", buf, 0x26u);
    }

    _Block_object_dispose(&v26, 8);
  }

  return v10;
}

- (ABSContactsSyncObject)initWithLMASyncData:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = ABSContactsSyncObject;
  v5 = [(ABSContactsSyncObject *)&v11 init];
  v6 = v5;
  if (v5)
  {
    [(ABSContactsSyncObject *)v5 setLmaSyncData:v4];
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
  v2 = [(ABSContactsSyncObject *)self guid];
  if (!v2)
  {
    sub_10003AEA8();
  }

  return v2;
}

- (void)_attachInnerContactDataToWrapper:(id)a3 contact:(id)a4 options:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [v9 objectForKeyedSubscript:off_100071990];
  v11 = [v10 isEqualToString:off_1000719A0];

  if (v11)
  {
    v12 = [v8 CNFSSerialize];
    [v7 setFastEncodingData:v12];
  }

  else
  {
    v13 = [v9 objectForKeyedSubscript:off_100071990];
    v14 = [v13 isEqualToString:off_1000719B0];

    if (v14)
    {
      v12 = [ABSPBContact toPBContact:v8];
      [v7 setPb:v12];
    }

    else
    {
      v18 = v8;
      v15 = [NSArray arrayWithObjects:&v18 count:1];
      v17 = 0;
      v12 = [CNContactVCardSerialization dataWithContacts:v15 error:&v17];
      v16 = v17;

      [v7 setVcardData:v12];
    }
  }
}

- (void)_attachMiscToWrapper:(id)a3 contact:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v7 identifier];
  [v6 setGuid:v8];

  v9 = qword_100071C68;
  v10 = [v7 identifier];
  [v6 setIsMe:{objc_msgSend(v9, "containsObject:", v10)}];

  v11 = [v7 valueForKey:CNContactModificationDateKey];
  [v11 timeIntervalSince1970];
  [v6 setModDate:?];
  v12 = *(qword_100071D00 + 8);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = v12;
    v14 = [v7 thumbnailImageData];
    *buf = 134217984;
    v35 = [v14 length];
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Sending thumbnail of size: %lu", buf, 0xCu);
  }

  v15 = [v7 thumbnailImageData];
  [v6 setThumbnail:v15];

  v16 = *(qword_100071D00 + 8);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v17 = v16;
    v18 = [(ABSContactsSyncObject *)self accountID];
    *buf = 138543362;
    v35 = v18;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "createProtobufWithOptions:Setting accountExternalIdentifier:%{public}@", buf, 0xCu);
  }

  v19 = [(ABSContactsSyncObject *)self accountID];
  [v6 setAccountExternalIdentifier:v19];

  [v6 setSharedPhotoDisplayPreference:{objc_msgSend(v7, "sharedPhotoDisplayPreference")}];
  if ([v6 containsCustomPoster])
  {
    v20 = [v7 watchWallpaperImageData];
    [v6 setWallpaperImageData:v20];

    v21 = *(qword_100071D00 + 8);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      v22 = v21;
      v23 = [v6 wallpaperImageData];
      *buf = 134217984;
      v35 = v23;
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

  if ([v6 isMe])
  {
    v25 = [v7 wallpaper];
    v26 = [v25 dataRepresentation];
    [v6 setWallpaperDataRepresentation:v26];
  }

  v27 = [v7 addressingGrammarsEncrypted];
  v33 = 0;
  v28 = [NSKeyedArchiver archivedDataWithRootObject:v27 requiringSecureCoding:1 error:&v33];
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
    [v6 setEncryptedPronounData:v28];
  }

  v30 = [v7 sensitiveContentConfiguration];
  v31 = [v30 dataRepresentation];

  if (v31)
  {
    [v6 setSensitiveContentConfiguration:v31];
  }

  else
  {
    v32 = [v7 sensitiveContentConfiguration];

    if (v32 && os_log_type_enabled(*(qword_100071D00 + 8), OS_LOG_TYPE_ERROR))
    {
      sub_10003AF88();
    }
  }
}

- (void)_attachContainerAttributesToWrapper:(id)a3 contact:(id)a4 store:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = a4;
  v11 = objc_opt_class();
  v12 = [v10 identifier];

  v13 = [v11 containerForContactIdentifier:v12 store:v9];

  v14 = [(ABSContactsSyncObject *)self _pBcontainerAttributesForContainer:v13];
  [v8 setContainerAttributes:v14];

  v15 = *(qword_100071D00 + 8);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = v15;
    v17 = [v13 identifier];
    v18 = [v8 containerAttributes];
    v19 = 138543618;
    v20 = v17;
    v21 = 2112;
    v22 = v18;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Setting container %{public}@ attributes: %@", &v19, 0x16u);
  }
}

- (id)_pBcontainerAttributesForContainer:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(ABSPBContainerAttributes);
  -[ABSPBContainerAttributes setGuardianRestricted:](v4, "setGuardianRestricted:", [v3 isGuardianRestricted]);
  v5 = [v3 name];
  [(ABSPBContainerAttributes *)v4 setName:v5];

  v6 = [v3 type];
  [(ABSPBContainerAttributes *)v4 setType:v6];

  return v4;
}

- (id)lmaCounterpartAppBundleIDForBundleID:(id)a3
{
  v3 = a3;
  v11 = 0;
  v4 = [[LSApplicationRecord alloc] initWithBundleIdentifier:v3 allowPlaceholder:0 error:&v11];
  v5 = v11;
  v6 = [v4 counterpartIdentifiers];
  v7 = [v6 firstObject];

  if (v5 && os_log_type_enabled(*(qword_100071D00 + 8), OS_LOG_TYPE_ERROR))
  {
    sub_10003AFC4();
  }

  if (v7)
  {
    v8 = v7;
  }

  else
  {
    v8 = v3;
  }

  v9 = v8;

  return v8;
}

- (id)createProtobufWithOptions:(id)a3
{
  v83 = a3;
  v105 = 0;
  v106 = &v105;
  v107 = 0x3032000000;
  v108 = sub_10002189C;
  v109 = sub_1000218AC;
  v110 = 0;
  v85 = [[ABSPBSyncObject alloc] initWithMemo:@"Contact"];
  v3 = [(ABSContactsSyncObject *)self lmaSyncData];
  v4 = v3 == 0;

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
    v7 = [(ABSContactsSyncObject *)self lmaSyncData];
    v8 = [v7 syncEvents];

    v9 = [v8 countByEnumeratingWithState:&v101 objects:v117 count:16];
    if (v9)
    {
      v10 = *v102;
      do
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v102 != v10)
          {
            objc_enumerationMutation(v8);
          }

          v12 = *(*(&v101 + 1) + 8 * i);
          v13 = objc_alloc_init(ABSPBLimitedAccessObject);
          v14 = [v12 bundleID];
          v15 = [(ABSContactsSyncObject *)self lmaCounterpartAppBundleIDForBundleID:v14];
          [(ABSPBLimitedAccessObject *)v13 setBundleID:v15];

          v16 = [v12 contactID];
          [(ABSPBLimitedAccessObject *)v13 setContactID:v16];

          -[ABSPBLimitedAccessObject setSequenceNumber:](v13, "setSequenceNumber:", [v12 sequenceNumber]);
          -[ABSPBLimitedAccessObject setIsActive:](v13, "setIsActive:", [v12 isActive]);
          [v6 addObject:v13];
        }

        v9 = [v8 countByEnumeratingWithState:&v101 objects:v117 count:16];
      }

      while (v9);
    }

    [(ABSPBLimitedAccessSyncData *)v86 setSyncEvents:v6];
    v17 = [(ABSContactsSyncObject *)self lmaSyncData];
    -[ABSPBLimitedAccessSyncData setCurrentSequenceNumber:](v86, "setCurrentSequenceNumber:", [v17 currentSequenceNumber]);

    v18 = [(ABSContactsSyncObject *)self lmaSyncData];
    -[ABSPBLimitedAccessSyncData setFullSyncRequired:](v86, "setFullSyncRequired:", [v18 fullSyncRequired]);

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
  v23 = [(ABSContactsSyncObject *)self guid];
  v116 = v23;
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

  v26 = [v106[5] linkedContacts];
  v27 = [v26 count] == 0;

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
    v28 = [v106[5] linkedContacts];
    v29 = [v28 countByEnumeratingWithState:&v93 objects:v115 count:16];
    if (v29)
    {
      v30 = *v94;
      while (2)
      {
        for (j = 0; j != v29; j = j + 1)
        {
          if (*v94 != v30)
          {
            objc_enumerationMutation(v28);
          }

          v32 = *(*(&v93 + 1) + 8 * j);
          v33 = [v32 identifier];
          v34 = [(ABSContactsSyncObject *)self guid];
          v35 = [v33 isEqualToString:v34];

          if (v35)
          {
            v36 = v32;
            goto LABEL_26;
          }
        }

        v29 = [v28 countByEnumeratingWithState:&v93 objects:v115 count:16];
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
      v53 = [(ABSContactsSyncObject *)self guid];
      sub_10003B0E8(v53, buf, v52);
    }

    goto LABEL_47;
  }

  [(ABSContactsSyncObject *)self _attachInnerContactDataToWrapper:v87 contact:v36 options:v83];
  [(ABSContactsSyncObject *)self _attachMiscToWrapper:v87 contact:v36];
  v37 = [v36 identifier];
  if (!v37 || ([v36 identifier], v38 = objc_claimAutoreleasedReturnValue(), v19 = v36, v39 = objc_msgSend(v38, "length") == 0, v38, v37, v39))
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
    v40 = [v106[5] identifier];
    [(ABSPBContactWrapper *)v87 setLinkGuid:v40];

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
          v46 = [v45 identifier];
          v47 = [v19 identifier];
          v48 = [v46 isEqualToString:v47];

          if ((v48 & 1) == 0)
          {
            v49 = objc_alloc_init(ABSPBLinkTo);
            -[ABSPBLinkTo setIsImage:](v49, "setIsImage:", [v45 isPreferredForImage]);
            -[ABSPBLinkTo setIsName:](v49, "setIsName:", [v45 isPreferredForName]);
            v50 = [v45 identifier];
            [(ABSPBLinkTo *)v49 setToGuid:v50];

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
    v67 = 0;
    goto LABEL_69;
  }

LABEL_49:
  v54 = [(ABSPBSyncObject *)v85 data];
  v55 = [v54 length] > 0x500000;

  if (v55)
  {
    v56 = *(qword_100071D00 + 8);
    if (os_log_type_enabled(v56, OS_LOG_TYPE_FAULT))
    {
      v69 = [(ABSPBSyncObject *)v85 data];
      v70 = [v69 length];
      *v111 = 134217984;
      v112 = v70;
      _os_log_fault_impl(&_mh_execute_header, v56, OS_LOG_TYPE_FAULT, "Total size: %lu", v111, 0xCu);
    }

    v57 = *(qword_100071D00 + 8);
    if (os_log_type_enabled(v57, OS_LOG_TYPE_FAULT))
    {
      v71 = [(ABSPBSyncObject *)v85 contactWrapper];
      v72 = [v71 thumbnail];
      v73 = [v72 length];
      *v111 = 134217984;
      v112 = v73;
      _os_log_fault_impl(&_mh_execute_header, v57, OS_LOG_TYPE_FAULT, "Avatar size: %lu", v111, 0xCu);
    }

    v58 = *(qword_100071D00 + 8);
    if (os_log_type_enabled(v58, OS_LOG_TYPE_FAULT))
    {
      v74 = [(ABSPBSyncObject *)v85 contactWrapper];
      v75 = [v74 wallpaperImageData];
      v76 = [v75 length];
      *v111 = 134217984;
      v112 = v76;
      _os_log_fault_impl(&_mh_execute_header, v58, OS_LOG_TYPE_FAULT, "Watch wallpaper size: %lu", v111, 0xCu);
    }

    v59 = *(qword_100071D00 + 8);
    if (os_log_type_enabled(v59, OS_LOG_TYPE_FAULT))
    {
      v77 = [(ABSPBSyncObject *)v85 contactWrapper];
      v78 = [v77 wallpaperDataRepresentation];
      v79 = [v78 length];
      *v111 = 134217984;
      v112 = v79;
      _os_log_fault_impl(&_mh_execute_header, v59, OS_LOG_TYPE_FAULT, "Wallpaper data representation size: %lu", v111, 0xCu);
    }

    if (os_log_type_enabled(*(qword_100071D00 + 8), OS_LOG_TYPE_FAULT))
    {
      sub_10003B140();
    }

    v60 = [(ABSPBSyncObject *)v85 contactWrapper];
    [v60 setWallpaperImageData:0];

    v61 = [(ABSPBSyncObject *)v85 data];
    v62 = [v61 length] > 0x500000;

    if (v62)
    {
      if (os_log_type_enabled(*(qword_100071D00 + 8), OS_LOG_TYPE_FAULT))
      {
        sub_10003B174();
      }

      v63 = [(ABSPBSyncObject *)v85 contactWrapper];
      [v63 setThumbnail:0];
    }

    v64 = [(ABSPBSyncObject *)v85 data];
    v65 = [v64 length] > 0x500000;

    if (v65)
    {
      if (os_log_type_enabled(*(qword_100071D00 + 8), OS_LOG_TYPE_FAULT))
      {
        sub_10003B1A8();
      }

      v66 = [(ABSPBSyncObject *)v85 contactWrapper];
      [v66 setWallpaperDataRepresentation:0];
    }
  }

  v67 = [(ABSPBSyncObject *)v85 data];
LABEL_69:

  _Block_object_dispose(&v105, 8);

  return v67;
}

- (id)description
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [(ABSContactsSyncObject *)self guid];
  v6 = [NSString stringWithFormat:@"<%@:%p, guid=%@>", v4, self, v5];

  return v6;
}

@end