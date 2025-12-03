@interface SPApplicationIndexer
+ (id)attributeSetForApp;
+ (id)sharedIndexer;
- (SPApplicationIndexer)init;
- (id)_updateItem:(id)item forIdentifier:(id)identifier withLaunchCounts:(id)counts requiresLocalizationInfo:(BOOL)info;
- (void)_updateAppMetadata:(id)metadata appsRequiringLocalization:(id)localization activity:(id)activity completion:(id)completion;
- (void)addDefaultBundleInformationForURL:(id)l attrSet:(id)set altNames:(id)names namesOnly:(BOOL)only withApp:(id)app enName:(id)name;
- (void)dealloc;
- (void)updateApplicationInformationForExistingItems:(id)items reimportItems:(id)reimportItems newItems:(id)newItems countItems:(id)countItems updateCountItems:(id)updateCountItems clean:(BOOL)clean activity:(id)activity completion:(id)self0;
- (void)updateApplicationMetadata:(id)metadata appsRequiringLocalization:(id)localization activity:(id)activity completion:(id)completion;
- (void)updateApplications:(id)applications appBundleArray:(id)array clean:(BOOL)clean activity:(id)activity;
- (void)updateShortcuts:(id)shortcuts;
@end

@implementation SPApplicationIndexer

+ (id)sharedIndexer
{
  if (qword_1000A8360 != -1)
  {
    sub_100062618();
  }

  v3 = qword_1000A8348;

  return v3;
}

+ (id)attributeSetForApp
{
  if (qword_1000A8388 != -1)
  {
    sub_10006262C();
  }

  v2 = [CSSearchableItemAttributeSet alloc];
  v3 = [v2 initWithItemContentType:SPUTIAppType];
  v4 = v3;
  if (qword_1000A8380)
  {
    [v3 setKind:?];
  }

  return v4;
}

- (SPApplicationIndexer)init
{
  v10.receiver = self;
  v10.super_class = SPApplicationIndexer;
  v2 = [(SPApplicationIndexer *)&v10 init];
  v3 = v2;
  if (v2)
  {
    v4 = qword_1000A8368;
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_10001E188;
    handler[3] = &unk_100092B10;
    v5 = v2;
    v9 = v5;
    notify_register_dispatch("com.apple.searchd.applications.changed", &v3->_changedToken, v4, handler);
    v7 = v5;
    SPSetAppUpdateBlock();
  }

  return v3;
}

- (void)dealloc
{
  notify_cancel(self->_changedToken);
  v3.receiver = self;
  v3.super_class = SPApplicationIndexer;
  [(SPApplicationIndexer *)&v3 dealloc];
}

- (void)addDefaultBundleInformationForURL:(id)l attrSet:(id)set altNames:(id)names namesOnly:(BOOL)only withApp:(id)app enName:(id)name
{
  lCopy = l;
  setCopy = set;
  namesCopy = names;
  appCopy = app;
  nameCopy = name;
  v102 = lCopy;
  bundle = _CFBundleCreateUnique();
  if (!bundle)
  {
    goto LABEL_160;
  }

  if (nameCopy && ![nameCopy length])
  {

    nameCopy = 0;
  }

  v104 = nameCopy;
  if (only)
  {
    v16 = 0;
    goto LABEL_47;
  }

  v17 = CFBundleCopyBundleLocalizations(bundle);
  v18 = [(__CFArray *)v17 count];
  if (v18)
  {
    v19 = [NSMutableArray arrayWithCapacity:v18];
    v151 = 0u;
    v152 = 0u;
    v149 = 0u;
    v150 = 0u;
    v20 = v17;
    v21 = [(__CFArray *)v20 countByEnumeratingWithState:&v149 objects:v160 count:16];
    if (v21)
    {
      v22 = *v150;
      do
      {
        for (i = 0; i != v21; i = i + 1)
        {
          if (*v150 != v22)
          {
            objc_enumerationMutation(v20);
          }

          v24 = *(*(&v149 + 1) + 8 * i);
          CanonicalLanguageIdentifierFromString = CFLocaleCreateCanonicalLanguageIdentifierFromString(kCFAllocatorDefault, v24);
          if (!CanonicalLanguageIdentifierFromString)
          {
            CanonicalLanguageIdentifierFromString = v24;
          }

          [v19 addObject:CanonicalLanguageIdentifierFromString];
        }

        v21 = [(__CFArray *)v20 countByEnumeratingWithState:&v149 objects:v160 count:16];
      }

      while (v21);
    }

    if ([v19 count])
    {
      [setCopy setLanguages:v19];
    }

    if (v104)
    {
      goto LABEL_40;
    }

    v143 = 0;
    v144 = &v143;
    v145 = 0x3032000000;
    v146 = sub_10001F2F0;
    v147 = sub_10001F300;
    v148 = 0;
    v137 = 0;
    v138 = &v137;
    v139 = 0x3032000000;
    v140 = sub_10001F2F0;
    v141 = sub_10001F300;
    v142 = 0;
    path = [v102 path];
    v132[0] = _NSConcreteStackBlock;
    v132[1] = 3221225472;
    v133 = sub_10001F308;
    v134 = &unk_100092B88;
    v135 = &v137;
    v136 = &v143;
    v27 = v132;
    v28 = path;
    fileSystemRepresentation = [path fileSystemRepresentation];
    v30 = fileSystemRepresentation;
    if (fileSystemRepresentation)
    {
      memset(&v153, 0, sizeof(v153));
      if (stat(fileSystemRepresentation, &v153) != -1 && (v153.st_mode & 0xF000) == 0x4000)
      {
        bzero(buf, 0x400uLL);
        v31 = strlen(v30);
        __strcpy_chk();
        if (buf[v31 - 1] != 47)
        {
          *&buf[v31++] = 47;
        }

        v133(v27, buf, v31);
      }
    }

    Mutable = CFSetCreateMutable(kCFAllocatorDefault, 2, &kCFTypeSetCallBacks);
    v33 = Mutable;
    if (!Mutable)
    {
      goto LABEL_37;
    }

    v34 = _kCFBundleDisplayNameKey;
    CFSetAddValue(Mutable, _kCFBundleDisplayNameKey);
    CFSetAddValue(v33, kCFBundleNameKey);
    FilteredLocalizedInfoPlist = _CFBundleCreateFilteredLocalizedInfoPlist();
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && [FilteredLocalizedInfoPlist count])
    {
      v36 = [FilteredLocalizedInfoPlist objectForKeyedSubscript:v34];
      if (v36)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          goto LABEL_36;
        }

        v37 = SPLogForSPLogCategoryDefault();
        if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
        {
          logb = v37;
          v92 = [objc_opt_class() description];
          path2 = [v102 path];
          *buf = 138413314;
          v162 = v34;
          v163 = 2112;
          v164 = v92;
          v165 = 2112;
          v166 = v36;
          v167 = 2112;
          v168 = path2;
          v169 = 2112;
          v170 = @"en";
          v94 = path2;
          _os_log_error_impl(&_mh_execute_header, logb, OS_LOG_TYPE_ERROR, "%@ invalid type %@ %@ %@ %@", buf, 0x34u);

          v37 = logb;
        }
      }

      if (!v138[5])
      {
        v36 = [FilteredLocalizedInfoPlist objectForKeyedSubscript:kCFBundleNameKey];
        if (!v36 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
        {
LABEL_36:
          CFRelease(v33);

          v38 = v36;
          if (v36)
          {
LABEL_39:
            v104 = v38;

            _Block_object_dispose(&v137, 8);
            _Block_object_dispose(&v143, 8);

LABEL_40:
            goto LABEL_41;
          }

LABEL_37:
          v38 = v138[5];
          v36 = 0;
          if (!v38)
          {
            v38 = v144[5];
          }

          goto LABEL_39;
        }

        v91 = SPLogForSPLogCategoryDefault();
        if (os_log_type_enabled(v91, OS_LOG_TYPE_ERROR))
        {
          v95 = [objc_opt_class() description];
          path3 = [v102 path];
          *buf = 138413314;
          v162 = kCFBundleNameKey;
          v163 = 2112;
          v164 = v95;
          v165 = 2112;
          v166 = v36;
          v167 = 2112;
          v168 = path3;
          v169 = 2112;
          v170 = @"en";
          v97 = path3;
          _os_log_error_impl(&_mh_execute_header, v91, OS_LOG_TYPE_ERROR, "%@ invalid type %@ %@ %@ %@", buf, 0x34u);
        }
      }
    }

    v36 = 0;
    goto LABEL_36;
  }

LABEL_41:
  v39 = MDItemKeywords;
  v40 = CFBundleGetValueForInfoDictionaryKey(bundle, MDItemKeywords);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v41 = v40;
    v40 = [v41 componentsJoinedByString:{@", "}];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v16 = v40;
    [setCopy setAttribute:v16 forKey:v39];
  }

  else
  {
    v16 = 0;
  }

LABEL_47:
  displayName = [setCopy displayName];
  if ([displayName length] || !v104)
  {
    v44 = displayName;
    if (!displayName)
    {
      v99 = 0;
      goto LABEL_54;
    }
  }

  else
  {
    v43 = v104;

    v44 = v43;
  }

  v99 = v44;
  v45 = _MDStringCopyAbbreviations();
  if ([v45 count])
  {
    [namesCopy addObjectsFromArray:v45];
  }

LABEL_54:
  longDisplayName = [appCopy longDisplayName];
  v131 = 0;
  v47 = [v102 getResourceValue:&v131 forKey:NSURLParentDirectoryURLKey error:0];
  v48 = v131;
  v98 = v48;
  if (v47)
  {
    v49 = [NSURL URLWithString:@"iTunesMetadata.plist" relativeToURL:v48];
    if (v49)
    {
      v105 = [NSDictionary dictionaryWithContentsOfURL:v49];
    }

    else
    {
      v105 = 0;
    }
  }

  else
  {
    v105 = 0;
  }

  if ([longDisplayName length] || !v105)
  {
    v51 = longDisplayName;
  }

  else
  {
    v50 = [v105 objectForKeyedSubscript:@"itemName"];

    v51 = v50;
  }

  v100 = v51;
  if ([v51 length])
  {
    [namesCopy addObject:v100];
    longDisplayName2 = [appCopy longDisplayName];
    [setCopy setTitle:longDisplayName2];
  }

  if (v104)
  {
    [namesCopy addObject:v104];
  }

  if (v105)
  {
    log = [v105 objectForKeyedSubscript:@"nameTranscriptions"];
    if (log)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [log allKeys];
        v129 = 0u;
        v130 = 0u;
        v127 = 0u;
        v53 = v128 = 0u;
        v54 = [v53 countByEnumeratingWithState:&v127 objects:v159 count:16];
        if (v54)
        {
          v55 = *v128;
          do
          {
            for (j = 0; j != v54; j = j + 1)
            {
              if (*v128 != v55)
              {
                objc_enumerationMutation(v53);
              }

              v57 = [log objectForKey:*(*(&v127 + 1) + 8 * j)];
              v125 = 0u;
              v126 = 0u;
              v123 = 0u;
              v124 = 0u;
              v58 = v57;
              v59 = [v58 countByEnumeratingWithState:&v123 objects:v158 count:16];
              if (v59)
              {
                v60 = *v124;
                do
                {
                  for (k = 0; k != v59; k = k + 1)
                  {
                    if (*v124 != v60)
                    {
                      objc_enumerationMutation(v58);
                    }

                    [namesCopy addObject:*(*(&v123 + 1) + 8 * k)];
                  }

                  v59 = [v58 countByEnumeratingWithState:&v123 objects:v158 count:16];
                }

                while (v59);
              }
            }

            v54 = [v53 countByEnumeratingWithState:&v127 objects:v159 count:16];
          }

          while (v54);
        }
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v121 = 0u;
          v122 = 0u;
          v119 = 0u;
          v120 = 0u;
          v62 = log;
          v63 = [v62 countByEnumeratingWithState:&v119 objects:v157 count:16];
          if (v63)
          {
            v64 = *v120;
            do
            {
              for (m = 0; m != v63; m = m + 1)
              {
                if (*v120 != v64)
                {
                  objc_enumerationMutation(v62);
                }

                v66 = *(*(&v119 + 1) + 8 * m);
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  [namesCopy addObject:v66];
                }
              }

              v63 = [v62 countByEnumeratingWithState:&v119 objects:v157 count:16];
            }

            while (v63);
          }
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [namesCopy addObject:log];
          }
        }
      }
    }
  }

  loga = CFBundleGetValueForInfoDictionaryKey(bundle, @"CFBundleAlternateNames");
  if (!loga)
  {
    loga = CFBundleGetValueForInfoDictionaryKey(bundle, @"kMDItemAlternateNames");
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v115 = 0u;
    v116 = 0u;
    v117 = 0u;
    v118 = 0u;
    v67 = loga;
    v68 = [v67 countByEnumeratingWithState:&v115 objects:v156 count:16];
    if (v68)
    {
      v69 = *v116;
      do
      {
        for (n = 0; n != v68; n = n + 1)
        {
          if (*v116 != v69)
          {
            objc_enumerationMutation(v67);
          }

          v71 = *(*(&v115 + 1) + 8 * n);

          objc_opt_class();
          v16 = v71;
          if (objc_opt_isKindOfClass())
          {
            v72 = CFBundleGetValueForInfoDictionaryKey(bundle, v71);
            v73 = v72;
            if (v72 && [v72 length])
            {
              [namesCopy addObject:v73];
            }

            else if ([(__CFString *)v71 length])
            {
              [namesCopy addObject:v71];
            }
          }
        }

        v68 = [v67 countByEnumeratingWithState:&v115 objects:v156 count:16];
      }

      while (v68);
    }

    v16 = 0;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v74 = loga;

      if ([v74 length])
      {
        [namesCopy addObject:v74];
      }

      v67 = 0;
      v16 = v74;
    }

    else
    {
      v67 = 0;
    }
  }

  v101 = CFBundleGetValueForInfoDictionaryKey(bundle, @"INAlternativeAppNames");
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v75 = v101;

    v113 = 0u;
    v114 = 0u;
    v111 = 0u;
    v112 = 0u;
    v67 = v75;
    v76 = [v67 countByEnumeratingWithState:&v111 objects:v155 count:16];
    if (v76)
    {
      v77 = *v112;
      do
      {
        for (ii = 0; ii != v76; ii = ii + 1)
        {
          if (*v112 != v77)
          {
            objc_enumerationMutation(v67);
          }

          v79 = *(*(&v111 + 1) + 8 * ii);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v80 = [v79 objectForKeyedSubscript:@"INAlternativeAppName"];
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v81 = CFBundleGetValueForInfoDictionaryKey(bundle, v80);
              if (v81)
              {
                [namesCopy addObject:v81];
              }

              else
              {
                [namesCopy addObject:v80];
              }
            }
          }
        }

        v76 = [v67 countByEnumeratingWithState:&v111 objects:v155 count:16];
      }

      while (v76);
    }
  }

  v82 = CFBundleGetValueForInfoDictionaryKey(bundle, @"CFBundleSpokenName");
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v83 = v82;

    [namesCopy addObjectsFromArray:v83];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v84 = v82;

      [namesCopy addObject:v84];
      v83 = v67;
      v16 = v84;
    }

    else
    {
      v83 = v67;
    }
  }

  v85 = CFBundleGetValueForInfoDictionaryKey(bundle, @"SBMatchingApplicationGenres");
  v86 = v85;
  if (v105 && !v85)
  {
    v86 = [v105 objectForKeyedSubscript:@"genre"];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v87 = v86;
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v88 = 0;
      goto LABEL_154;
    }

    v154 = v86;
    v87 = [NSArray arrayWithObjects:&v154 count:1];
  }

  v88 = v87;
LABEL_154:

  if ([v88 count])
  {
    v89 = _MDBundleUtilsCopyLocalizedApplicationCategories();
    if (v89)
    {
      [setCopy setAttribute:v89 forKey:@"kMDItemAppStoreCategory"];
    }

    else
    {
      v90 = [v88 componentsJoinedByString:{@", "}];
      [setCopy setAttribute:v90 forKey:@"kMDItemAppStoreCategory"];
    }
  }

  CFRelease(bundle);

  nameCopy = v104;
LABEL_160:
}

- (id)_updateItem:(id)item forIdentifier:(id)identifier withLaunchCounts:(id)counts requiresLocalizationInfo:(BOOL)info
{
  infoCopy = info;
  itemCopy = item;
  identifierCopy = identifier;
  countsCopy = counts;
  group = dispatch_group_create();
  v11 = qos_class_self();
  v12 = dispatch_queue_attr_make_with_qos_class(0, v11, 0);
  v135 = dispatch_queue_create("clip queue", v12);

  v138 = itemCopy;
  v140 = countsCopy;
  if (!infoCopy)
  {
    cf = 0;
    v143 = 0;
    v16 = 0;
    v18 = 0;
    if (![countsCopy count])
    {
      goto LABEL_173;
    }

LABEL_166:
    cf = +[SPApplicationIndexer attributeSetForApp];
    goto LABEL_167;
  }

  if ([itemCopy isAppClip])
  {
    v13 = +[SPApplicationIndexer attributeSetForApp];
    dispatch_group_enter(group);
    v14 = +[CPSWebClipStore sharedStore];
    v177[0] = _NSConcreteStackBlock;
    v177[1] = 3221225472;
    v177[2] = sub_100020D90;
    v177[3] = &unk_100092BB0;
    v178 = itemCopy;
    cf = v13;
    v179 = cf;
    v15 = group;
    v180 = v15;
    v181 = identifierCopy;
    [v14 getAppClipWithIdentifier:v181 receiveOnQueue:v135 completionHandler:v177];

    dispatch_group_wait(v15, 0xFFFFFFFFFFFFFFFFLL);
    v143 = 0;
    v16 = 0;
    v17 = v178;
    goto LABEL_164;
  }

  v19 = [[LSApplicationRecord alloc] initWithBundleIdentifier:identifierCopy allowPlaceholder:1 error:0];
  if (!v19)
  {
    v19 = [[LSApplicationRecord alloc] initWithBundleIdentifierOfSystemPlaceholder:identifierCopy error:0];
  }

  v128 = v19;
  v132 = [v19 URL];
  v136 = +[NSMutableArray array];
  v171 = 0;
  v172 = &v171;
  v173 = 0x3032000000;
  v174 = sub_10001F2F0;
  v175 = sub_10001F300;
  v176 = 0;
  v165 = 0;
  v166 = &v165;
  v167 = 0x3032000000;
  v168 = sub_10001F2F0;
  v169 = sub_10001F300;
  v170 = 0;
  v20 = SPLogForSPLogCategoryDefault();
  v21 = gSPLogInfoAsDefault;
  if (os_log_type_enabled(v20, ((gSPLogInfoAsDefault & 1) == 0)))
  {
    *buf = 138412290;
    v188 = identifierCopy;
    _os_log_impl(&_mh_execute_header, v20, ((v21 & 1) == 0), "processing update %@", buf, 0xCu);
  }

  path = [v132 path];
  v160[0] = _NSConcreteStackBlock;
  v160[1] = 3221225472;
  v161 = sub_100020F5C;
  v162 = &unk_100092B88;
  v163 = &v165;
  v164 = &v171;
  v23 = v160;
  v24 = path;
  fileSystemRepresentation = [path fileSystemRepresentation];
  v26 = fileSystemRepresentation;
  if (fileSystemRepresentation)
  {
    v27 = opendir(fileSystemRepresentation);
    if (v27)
    {
      bzero(buf, 0x400uLL);
      v28 = strlen(v26);
      __strcpy_chk();
      if (buf[v28 - 1] != 47)
      {
        *&buf[v28++] = 47;
      }

      v161(v23, buf, v28);
      buf[v28] = 0;
      closedir(v27);
    }
  }

  Unique = _CFBundleCreateUnique();
  if (Unique)
  {
    Mutable = CFSetCreateMutable(kCFAllocatorDefault, 4, &kCFTypeSetCallBacks);
    v31 = Mutable;
    cfa = Unique;
    if (Mutable)
    {
      v127 = _kCFBundleDisplayNameKey;
      CFSetAddValue(Mutable, _kCFBundleDisplayNameKey);
      CFSetAddValue(v31, kCFBundleNameKey);
      v126 = MDItemKeywords;
      CFSetAddValue(v31, MDItemKeywords);
      CFSetAddValue(v31, @"MDItemKeywords");
      v32 = CFBundleCopyBundleLocalizations(Unique);
      v33 = v32;
      if (v32)
      {
        Count = CFArrayGetCount(v32);
        if (Count >= 1)
        {
          v133 = Count;
          v143 = 0;
          v129 = 0;
          v36 = 0;
          *&v35 = 138413314;
          v125 = v35;
          while (1)
          {
            ValueAtIndex = CFArrayGetValueAtIndex(v33, v36);
            CanonicalLanguageIdentifierFromString = CFLocaleCreateCanonicalLanguageIdentifierFromString(kCFAllocatorDefault, ValueAtIndex);
            if (!CanonicalLanguageIdentifierFromString)
            {
              CanonicalLanguageIdentifierFromString = CFRetain(ValueAtIndex);
            }

            if (CFStringCompare(CanonicalLanguageIdentifierFromString, @"base", 1uLL) == kCFCompareEqualTo)
            {
              CFRelease(CanonicalLanguageIdentifierFromString);
              CanonicalLanguageIdentifierFromString = &stru_100094040;
            }

            if (CFEqual(CanonicalLanguageIdentifierFromString, @"ko-KR"))
            {
              CFRelease(CanonicalLanguageIdentifierFromString);
              CanonicalLanguageIdentifierFromString = @"ko";
            }

            v39 = CanonicalLanguageIdentifierFromString;
            [v136 addObject:v39];
            FilteredLocalizedInfoPlist = _CFBundleCreateFilteredLocalizedInfoPlist();
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0 || ![FilteredLocalizedInfoPlist count])
            {
              goto LABEL_63;
            }

            v41 = [FilteredLocalizedInfoPlist objectForKeyedSubscript:v127];
            if (!v41)
            {
              goto LABEL_37;
            }

            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              break;
            }

            if (([v166[5] isEqualToString:v41] & 1) == 0)
            {
              v42 = v129;
              if (!v129)
              {
                v42 = objc_opt_new();
              }

              goto LABEL_33;
            }

LABEL_39:
            v44 = [FilteredLocalizedInfoPlist objectForKeyedSubscript:{v126, v125}];
            v45 = v44;
            if (v44)
            {
              v46 = v44;
            }

            else
            {
              v46 = [FilteredLocalizedInfoPlist objectForKeyedSubscript:@"MDItemKeywords"];
            }

            v47 = +[NSMutableSet set];
            v48 = [(__CFString *)v39 caseInsensitiveCompare:@"ko"];
            if (v41 && !v48)
            {
              ConsonantsStringForKorean = createConsonantsStringForKorean();
              v50 = ConsonantsStringForKorean;
              if (ConsonantsStringForKorean && [ConsonantsStringForKorean length])
              {
                [v47 addObject:v50];
              }

              v51 = createConsonantsStringForKorean();
              v52 = v51;
              if (v51 && [v51 length])
              {
                [v47 addObject:v52];
              }
            }

            if (v46)
            {
              v53 = +[NSMutableArray array];
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                [v53 addObjectsFromArray:v46];
              }

              else
              {
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v54 = [v46 componentsSeparatedByString:{@", "}];
                  [v53 addObjectsFromArray:v54];
                }
              }

              v158[0] = _NSConcreteStackBlock;
              v158[1] = 3221225472;
              v158[2] = sub_1000212C4;
              v158[3] = &unk_100092BD8;
              v159 = v47;
              [v53 enumerateObjectsUsingBlock:v158];
            }

            allObjects = [v47 allObjects];
            v56 = [allObjects componentsJoinedByString:{@", "}];

            if (!v143)
            {
              v143 = objc_opt_new();
            }

            if (v56 && [v56 length])
            {
              [v143 setObject:v56 forKeyedSubscript:v39];
            }

LABEL_63:
            CFRelease(v39);

            if (v133 == ++v36)
            {
              goto LABEL_78;
            }
          }

          v43 = SPLogForSPLogCategoryDefault();
          if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
          {
            v58 = [objc_opt_class() description];
            path2 = [v132 path];
            *buf = v125;
            v188 = v127;
            v189 = 2112;
            v190 = v58;
            v191 = 2112;
            v192 = v41;
            v193 = 2112;
            v194 = path2;
            v195 = 2112;
            v196 = v39;
            _os_log_error_impl(&_mh_execute_header, v43, OS_LOG_TYPE_ERROR, "%@ invalid type %@ %@ %@ %@", buf, 0x34u);
          }

LABEL_37:
          if (v166[5])
          {
            goto LABEL_38;
          }

          v41 = [FilteredLocalizedInfoPlist objectForKeyedSubscript:kCFBundleNameKey];
          if (!v41)
          {
            goto LABEL_39;
          }

          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            v57 = SPLogForSPLogCategoryDefault();
            if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
            {
              v60 = [objc_opt_class() description];
              path3 = [v132 path];
              *buf = v125;
              v188 = kCFBundleNameKey;
              v189 = 2112;
              v190 = v60;
              v191 = 2112;
              v192 = v41;
              v193 = 2112;
              v194 = path3;
              v195 = 2112;
              v196 = v39;
              _os_log_error_impl(&_mh_execute_header, v57, OS_LOG_TYPE_ERROR, "%@ invalid type %@ %@ %@ %@", buf, 0x34u);
            }

LABEL_38:
            v41 = 0;
            goto LABEL_39;
          }

          if ([v172[5] isEqualToString:v41])
          {
            goto LABEL_39;
          }

          v42 = v129;
          if (!v129)
          {
            v42 = objc_opt_new();
          }

LABEL_33:
          v129 = v42;
          [v42 setObject:v41 forKeyedSubscript:{v39, v125}];
          goto LABEL_39;
        }

        v129 = 0;
        v143 = 0;
LABEL_78:
        CFRelease(v33);
        v33 = v129;
      }

      else
      {
        v143 = 0;
      }

      CFRelease(v31);
    }

    else
    {
      v33 = 0;
      v143 = 0;
    }

    CFRelease(cfa);
  }

  else
  {
    v33 = 0;
    v143 = 0;
  }

  cf = +[SPApplicationIndexer attributeSetForApp];
  if ([v138 isWebClip])
  {
    [cf setIsWebClip:&off_100098A68];
  }

  v134 = SSAllLocalizedExtraApplicationKeywords();
  if (v134)
  {
    if (!v143)
    {
      v143 = +[NSMutableDictionary dictionary];
    }

    v130 = v33;
    v156 = 0u;
    v157 = 0u;
    v154 = 0u;
    v155 = 0u;
    v62 = v134;
    v63 = [v62 countByEnumeratingWithState:&v154 objects:v186 count:16];
    if (v63)
    {
      v64 = *v155;
      do
      {
        for (i = 0; i != v63; i = i + 1)
        {
          if (*v155 != v64)
          {
            objc_enumerationMutation(v62);
          }

          v66 = *(*(&v154 + 1) + 8 * i);
          v67 = [v143 objectForKeyedSubscript:v66];
          v68 = [v62 objectForKeyedSubscript:v66];
          v69 = +[NSMutableSet set];
          if (v67 && [v67 length])
          {
            v70 = [v67 componentsSeparatedByString:{@", "}];
            [v69 addObjectsFromArray:v70];
          }

          if (v68 && [v68 length])
          {
            v71 = [v68 componentsSeparatedByString:{@", "}];
            v72 = [NSMutableArray arrayWithArray:v71];

            v152[0] = _NSConcreteStackBlock;
            v152[1] = 3221225472;
            v152[2] = sub_100021374;
            v152[3] = &unk_100092BD8;
            v153 = v69;
            [v72 enumerateObjectsUsingBlock:v152];
          }

          if (v69 && [v69 count])
          {
            allObjects2 = [v69 allObjects];
            v74 = [allObjects2 componentsJoinedByString:{@", "}];
            [v143 setObject:v74 forKeyedSubscript:v66];
          }
        }

        v63 = [v62 countByEnumeratingWithState:&v154 objects:v186 count:16];
      }

      while (v63);
    }

    v33 = v130;
  }

  v75 = [v136 count];
  v76 = v75;
  if (!v75)
  {
    goto LABEL_123;
  }

  if (v75 != 1)
  {
    [v136 sortUsingComparator:&stru_100092C18];
  }

  [cf setLanguages:v136];
  v77 = [(__CFArray *)v33 count];
  v78 = v77;
  if (!v77)
  {
    goto LABEL_123;
  }

  if (v77 == v76)
  {
    goto LABEL_121;
  }

  v79 = v166[5];
  if (v79)
  {
    v80 = v79;
    goto LABEL_111;
  }

  v80 = v172[5];
  v76 = v78;
  if (!v80)
  {
LABEL_121:
    v88 = [[CSLocalizedString alloc] initWithLocalizedStrings:v33];
    [cf setDisplayName:v88];
    if (v76 == 1)
    {
      v16 = 0;
    }

    else
    {
      v89 = [(__CFArray *)v33 objectForKeyedSubscript:@"en"];
      if (v89)
      {
        v16 = +[NSMutableSet set];
        [(SPApplicationIndexer *)self addDefaultBundleInformationForURL:v132 attrSet:cf altNames:v16 namesOnly:1 withApp:v138 enName:v89];
        [v16 addObject:v89];
      }

      else
      {
        v16 = 0;
      }
    }

    goto LABEL_129;
  }

LABEL_111:
  v150 = 0u;
  v151 = 0u;
  v148 = 0u;
  v149 = 0u;
  v81 = v136;
  v82 = [v81 countByEnumeratingWithState:&v148 objects:v185 count:16];
  if (v82)
  {
    v83 = *v149;
    do
    {
      for (j = 0; j != v82; j = j + 1)
      {
        if (*v149 != v83)
        {
          objc_enumerationMutation(v81);
        }

        v85 = *(*(&v148 + 1) + 8 * j);
        v86 = [(__CFArray *)v33 objectForKeyedSubscript:v85];
        v87 = v86 == 0;

        if (v87)
        {
          [(__CFArray *)v33 setObject:v80 forKeyedSubscript:v85];
        }
      }

      v82 = [v81 countByEnumeratingWithState:&v148 objects:v185 count:16];
    }

    while (v82);
  }

  v76 = [(__CFArray *)v33 count];
  if (v76)
  {
    goto LABEL_121;
  }

LABEL_123:
  v16 = 0;
LABEL_129:
  alternateNames = [cf alternateNames];
  v91 = [NSMutableSet setWithArray:alternateNames];

  displayName = [cf displayName];

  if (displayName)
  {
    displayName2 = [cf displayName];
    [v91 addObject:displayName2];
  }

  else if (v166[5] || v172[5])
  {
    [v91 addObject:?];
  }

  v94 = SSBuildExtraApplicationAlternateNames();

  v95 = CFSetCreateMutable(kCFAllocatorDefault, 0, &kCFTypeSetCallBacks);
  if (v94 && [v94 count])
  {
    v146 = 0u;
    v147 = 0u;
    v144 = 0u;
    v145 = 0u;
    v96 = v94;
    v97 = [v96 countByEnumeratingWithState:&v144 objects:v184 count:16];
    if (v97)
    {
      v98 = *v145;
      do
      {
        for (k = 0; k != v97; k = k + 1)
        {
          if (*v145 != v98)
          {
            objc_enumerationMutation(v96);
          }

          v100 = *(*(&v144 + 1) + 8 * k);
          v101 = createConsonantsStringForKorean();
          v102 = v101;
          if (v101)
          {
            if (CFStringGetLength(v101))
            {
              CFSetAddValue(v95, v102);
              v103 = createConsonantsStringForKorean();
              v104 = v103;
              if (v103)
              {
                if (CFStringGetLength(v103))
                {
                  CFSetAddValue(v95, v104);
                }

                CFRelease(v104);
              }
            }

            CFRelease(v102);
          }
        }

        v97 = [v96 countByEnumeratingWithState:&v144 objects:v184 count:16];
      }

      while (v97);
    }
  }

  if (v95)
  {
    if (CFSetGetCount(v95))
    {
      if (!v143)
      {
        v143 = +[NSMutableDictionary dictionary];
      }

      v105 = [NSMutableSet setWithSet:v95];
      v106 = [v143 objectForKeyedSubscript:@"ko"];
      v107 = v106;
      if (v106 && [v106 length])
      {
        v108 = [v107 componentsSeparatedByString:{@", "}];
        [v105 addObjectsFromArray:v108];
      }

      allObjects3 = [v105 allObjects];
      v110 = [allObjects3 componentsJoinedByString:{@", "}];
      [v143 setObject:v110 forKeyedSubscript:@"ko"];
    }

    CFRelease(v95);
  }

  if (v143 && [v143 count])
  {
    v111 = [[CSLocalizedString alloc] initWithLocalizedStrings:v143];
    [cf setAttribute:v111 forKey:MDItemKeywords];
  }

  _Block_object_dispose(&v165, 8);
  _Block_object_dispose(&v171, 8);

  v17 = v128;
LABEL_164:

  v112 = [NSNumber numberWithInteger:qword_1000A8378];
  [cf setAttribute:v112 forKey:off_1000A7DE0];

  if (![v140 count])
  {
    goto LABEL_168;
  }

  if (!cf)
  {
    goto LABEL_166;
  }

LABEL_167:
  v182[0] = MDItemRankingLaunchCountDay;
  v113 = [v140 objectAtIndexedSubscript:0];
  v183[0] = v113;
  v182[1] = MDItemRankingLaunchCountLast7Days;
  v114 = [v140 objectAtIndexedSubscript:1];
  v183[1] = v114;
  v182[2] = MDItemRankingLaunchCountLast30Days;
  v115 = [v140 objectAtIndexedSubscript:2];
  v183[2] = v115;
  v182[3] = MDItemRankingLaunchCountOld;
  v116 = [v140 objectAtIndexedSubscript:3];
  v183[3] = v116;
  v182[4] = MDItemApplicationLastLaunchedDate;
  v117 = [NSDate alloc];
  v118 = [v140 objectAtIndexedSubscript:4];
  [v118 doubleValue];
  v119 = [v117 initWithTimeIntervalSinceReferenceDate:?];
  v183[4] = v119;
  v120 = [NSDictionary dictionaryWithObjects:v183 forKeys:v182 count:5];

  [cf addAttributesFromDictionary:v120];
LABEL_168:
  if (cf)
  {
    v121 = SPLogForSPLogCategoryDefault();
    v122 = gSPLogInfoAsDefault;
    if (os_log_type_enabled(v121, ((gSPLogInfoAsDefault & 1) == 0)))
    {
      *buf = 138412290;
      v188 = identifierCopy;
      _os_log_impl(&_mh_execute_header, v121, ((v122 & 1) == 0), "processed update %@", buf, 0xCu);
    }

    v18 = [[CSSearchableItem alloc] initWithUniqueIdentifier:identifierCopy domainIdentifier:0 attributeSet:cf];
    [v18 setIsUpdate:1];
  }

  else
  {
    cf = 0;
    v18 = 0;
  }

LABEL_173:
  v123 = v18;

  return v18;
}

- (void)_updateAppMetadata:(id)metadata appsRequiringLocalization:(id)localization activity:(id)activity completion:(id)completion
{
  metadataCopy = metadata;
  localizationCopy = localization;
  activityCopy = activity;
  completionCopy = completion;
  v65 = SPFastApplicationsGet();
  if (qword_1000A8398 != -1)
  {
    sub_100062640();
  }

  if ([metadataCopy count] || objc_msgSend(localizationCopy, "count"))
  {
    v13 = metadataCopy;
    allKeys = [metadataCopy allKeys];
    v15 = [allKeys arrayByAddingObjectsFromArray:localizationCopy];

    v16 = [v15 count];
    v17 = v16 >> 6;
    if ((v16 & 0x3F) != 0)
    {
      ++v17;
    }

    v59 = v17;
    if (v17)
    {
      v18 = 0;
      v58 = SPApplicationBundleIdGeneralApplication;
      v19 = &ADClientAddValueForScalarKey_ptr;
      v61 = v15;
      v62 = completionCopy;
      v57 = v16;
      do
      {
        v60 = v18;
        if (v16 - (v18 << 6) >= 0x40)
        {
          v20 = 64;
        }

        else
        {
          v20 = v16 - (v18 << 6);
        }

        v21 = [v15 subarrayWithRange:{v18 << 6, v20}];
        v64 = [v19[431] arrayWithCapacity:{objc_msgSend(v21, "count")}];
        v63 = [v19[431] arrayWithCapacity:{objc_msgSend(v21, "count")}];
        if (!self->_pendingUpdates)
        {
          v22 = +[NSMutableSet set];
          pendingUpdates = self->_pendingUpdates;
          self->_pendingUpdates = v22;
        }

        v77 = 0u;
        v78 = 0u;
        v75 = 0u;
        v76 = 0u;
        v24 = v21;
        v25 = [v24 countByEnumeratingWithState:&v75 objects:v79 count:16];
        if (v25)
        {
          v26 = v25;
          v27 = *v76;
          while (2)
          {
            for (i = 0; i != v26; i = i + 1)
            {
              if (*v76 != v27)
              {
                objc_enumerationMutation(v24);
              }

              v29 = *(*(&v75 + 1) + 8 * i);
              if (activityCopy && xpc_activity_should_defer(activityCopy))
              {
                v53 = SPLogForSPLogCategoryDefault();
                if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138412290;
                  v81 = v29;
                  _os_log_impl(&_mh_execute_header, v53, OS_LOG_TYPE_DEFAULT, "*warn* Deferring activity to update application metadata for %@ and more", buf, 0xCu);
                }

                xpc_activity_set_state(activityCopy, 3);
                completionCopy = v62;
                v62[2](v62);

                v15 = v61;
                goto LABEL_49;
              }

              if (([(NSMutableSet *)self->_pendingUpdates containsObject:v29]& 1) == 0)
              {
                [(NSMutableSet *)self->_pendingUpdates addObject:v29];
                v30 = [v65 objectForKey:v29];
                v31 = [v13 objectForKey:v29];
                v32 = -[SPApplicationIndexer _updateItem:forIdentifier:withLaunchCounts:requiresLocalizationInfo:](self, "_updateItem:forIdentifier:withLaunchCounts:requiresLocalizationInfo:", v30, v29, v31, [localizationCopy containsObject:v29]);

                if (v32)
                {
                  if ([v30 isAppClip])
                  {
                    v33 = v63;
                  }

                  else
                  {
                    v33 = v64;
                  }

                  [v33 addObject:v32];
                }
              }
            }

            v26 = [v24 countByEnumeratingWithState:&v75 objects:v79 count:16];
            if (v26)
            {
              continue;
            }

            break;
          }
        }

        [v13 removeObjectsForKeys:v24];
        v34 = dispatch_group_create();
        completionCopy = v62;
        if ([v64 count])
        {
          v35 = SPLogForSPLogCategoryDefault();
          v36 = gSPLogInfoAsDefault;
          if (os_log_type_enabled(v35, ((gSPLogInfoAsDefault & 1) == 0)))
          {
            v37 = [v64 count];
            *buf = 67109120;
            LODWORD(v81) = v37;
            _os_log_impl(&_mh_execute_header, v35, ((v36 & 1) == 0), "Updating applications %d updates", buf, 8u);
          }

          dispatch_group_enter(v34);
          v38 = SPLogForSPLogCategoryDefault();
          v39 = gSPLogInfoAsDefault;
          if (os_log_type_enabled(v38, ((gSPLogInfoAsDefault & 1) == 0)))
          {
            *buf = 134217984;
            v81 = v34;
            _os_log_impl(&_mh_execute_header, v38, ((v39 & 1) == 0), "Enter group %p", buf, 0xCu);
          }

          v40 = +[SPCoreSpotlightIndexer sharedInstance];
          v71[0] = _NSConcreteStackBlock;
          v71[1] = 3221225472;
          v71[2] = sub_100021CF8;
          v71[3] = &unk_100092C60;
          v41 = v64;
          v72 = v41;
          selfCopy = self;
          v74 = v34;
          [v40 indexSearchableItems:v41 deleteSearchableItemsWithIdentifiers:0 clientState:0 protectionClass:NSFileProtectionCompleteUntilFirstUserAuthentication forBundleID:v58 options:0 completionHandler:v71];
        }

        v42 = v63;
        v15 = v61;
        if ([v63 count])
        {
          v43 = SPLogForSPLogCategoryDefault();
          v44 = gSPLogInfoAsDefault;
          if (os_log_type_enabled(v43, ((gSPLogInfoAsDefault & 1) == 0)))
          {
            v45 = [v63 count];
            *buf = 67109120;
            LODWORD(v81) = v45;
            _os_log_impl(&_mh_execute_header, v43, ((v44 & 1) == 0), "Updating applications %d updates", buf, 8u);
          }

          dispatch_group_enter(v34);
          v46 = SPLogForSPLogCategoryDefault();
          v47 = gSPLogInfoAsDefault;
          if (os_log_type_enabled(v46, ((gSPLogInfoAsDefault & 1) == 0)))
          {
            *buf = 134217984;
            v81 = v34;
            _os_log_impl(&_mh_execute_header, v46, ((v47 & 1) == 0), "Enter group %p", buf, 0xCu);
          }

          v48 = +[SPCoreSpotlightIndexer sharedInstance];
          v67[0] = _NSConcreteStackBlock;
          v67[1] = 3221225472;
          v67[2] = sub_100021F98;
          v67[3] = &unk_100092C60;
          v42 = v63;
          v49 = v63;
          v68 = v49;
          selfCopy2 = self;
          v70 = v34;
          [v48 indexSearchableItems:v49 deleteSearchableItemsWithIdentifiers:0 clientState:0 protectionClass:NSFileProtectionCompleteUntilFirstUserAuthentication forBundleID:v58 options:0 completionHandler:v67];
        }

        dispatch_group_wait(v34, 0xFFFFFFFFFFFFFFFFLL);

        v18 = v60 + 1;
        v16 = v57;
        v19 = &ADClientAddValueForScalarKey_ptr;
      }

      while (v60 + 1 != v59);
    }

    v50 = SPLogForSPLogCategoryDefault();
    v51 = gSPLogInfoAsDefault;
    if (os_log_type_enabled(v50, ((gSPLogInfoAsDefault & 1) == 0)))
    {
      v52 = objc_retainBlock(completionCopy);
      *buf = 134217984;
      v81 = v52;
      _os_log_impl(&_mh_execute_header, v50, ((v51 & 1) == 0), "2.7 call completion %p", buf, 0xCu);
    }

    completionCopy[2](completionCopy);
LABEL_49:
    metadataCopy = v13;
  }

  else
  {
    v54 = SPLogForSPLogCategoryDefault();
    v55 = gSPLogInfoAsDefault;
    if (os_log_type_enabled(v54, ((gSPLogInfoAsDefault & 1) == 0)))
    {
      v56 = objc_retainBlock(completionCopy);
      *buf = 134217984;
      v81 = v56;
      _os_log_impl(&_mh_execute_header, v54, ((v55 & 1) == 0), "2.8 call completion %p", buf, 0xCu);
    }

    completionCopy[2](completionCopy);
  }
}

- (void)updateApplicationMetadata:(id)metadata appsRequiringLocalization:(id)localization activity:(id)activity completion:(id)completion
{
  metadataCopy = metadata;
  localizationCopy = localization;
  activityCopy = activity;
  completionCopy = completion;
  v15 = localizationCopy;
  v11 = activityCopy;
  v12 = localizationCopy;
  v13 = metadataCopy;
  v14 = completionCopy;
  tracing_dispatch_async();
}

- (void)updateApplicationInformationForExistingItems:(id)items reimportItems:(id)reimportItems newItems:(id)newItems countItems:(id)countItems updateCountItems:(id)updateCountItems clean:(BOOL)clean activity:(id)activity completion:(id)self0
{
  itemsCopy = items;
  reimportItemsCopy = reimportItems;
  newItemsCopy = newItems;
  countItemsCopy = countItems;
  updateCountItemsCopy = updateCountItems;
  activityCopy = activity;
  completionCopy = completion;
  if (qword_1000A83A8 != -1)
  {
    sub_100062654();
  }

  v17 = SPFastApplicationsGet();
  if (![v17 count])
  {
    v121 = SPLogForSPLogCategoryDefault();
    v122 = gSPLogInfoAsDefault;
    if (os_log_type_enabled(v121, ((gSPLogInfoAsDefault & 1) == 0)))
    {
      v123 = completionCopy;
      v124 = objc_retainBlock(completionCopy);
      *buf = 134217984;
      *v187 = v124;
      _os_log_impl(&_mh_execute_header, v121, ((v122 & 1) == 0), "2.1 call completion %p", buf, 0xCu);

      completionCopy = v123;
    }

    completionCopy[2](completionCopy);
    goto LABEL_140;
  }

  v133 = completionCopy;
  v146 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v17 count]);
  v18 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v17 count]);
  v147 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [itemsCopy count]);
  v150 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v17 count]);
  v139 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [itemsCopy count]);
  v19 = +[NSLocale currentLocale];
  v155 = [v19 objectForKey:NSLocaleLanguageCode];

  v179 = 0u;
  v180 = 0u;
  v177 = 0u;
  v178 = 0u;
  obj = [v17 allValues];
  v20 = [obj countByEnumeratingWithState:&v177 objects:v188 count:16];
  v151 = itemsCopy;
  v148 = v18;
  v149 = activityCopy;
  v158 = v17;
  cleanCopy2 = clean;
  if (!v20)
  {
    goto LABEL_100;
  }

  v22 = v20;
  v23 = *v178;
  v138 = MDItemRankingLaunchCountDay;
  v137 = MDItemRankingLaunchCountLast7Days;
  v135 = MDItemRankingLaunchCountOld;
  v136 = MDItemRankingLaunchCountLast30Days;
  v134 = MDItemApplicationLastLaunchedDate;
  v142 = MDItemRelatedAppBundleIdentifier;
  v143 = MDItemIsWebClip;
  v152 = *v178;
  do
  {
    v24 = 0;
    v153 = v22;
    do
    {
      if (*v178 != v23)
      {
        objc_enumerationMutation(obj);
      }

      v25 = *(*(&v177 + 1) + 8 * v24);
      v26 = objc_autoreleasePoolPush();
      if (activityCopy && xpc_activity_should_defer(activityCopy))
      {
        v125 = SPLogForSPLogCategoryDefault();
        if (os_log_type_enabled(v125, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          *v187 = v25;
          _os_log_impl(&_mh_execute_header, v125, OS_LOG_TYPE_DEFAULT, "*warn* Deferring activity to update application information for %@ and more", buf, 0xCu);
        }

        xpc_activity_set_state(activityCopy, 3);
        completionCopy = v133;
        v133[2](v133);
        objc_autoreleasePoolPop(v26);
LABEL_137:
        v118 = v146;
        goto LABEL_138;
      }

      displayIdentifier = [v25 displayIdentifier];
      v161 = [itemsCopy objectForKeyedSubscript:displayIdentifier];
      displayName = [v25 displayName];
      if (cleanCopy2 || !v161 || [v161 compare:displayName] || (objc_msgSend(reimportItemsCopy, "containsObject:", displayIdentifier) & 1) != 0 || objc_msgSend(newItemsCopy, "containsObject:", displayIdentifier))
      {
        v159 = v26;
        v28 = [[LSApplicationRecord alloc] initWithBundleIdentifier:displayIdentifier allowPlaceholder:1 error:0];
        if (([v28 isLaunchProhibited] & 1) == 0)
        {
          v157 = [v28 URL];
          v29 = +[SPApplicationIndexer attributeSetForApp];
          [v29 setDisplayName:displayName];
          if (displayName)
          {
            if ([v25 isWebClip] & 1) != 0 || (objc_msgSend(v25, "isAppClip"))
            {
              goto LABEL_24;
            }

            applicationState = [v28 applicationState];
            if ([applicationState isPlaceholder])
            {
              goto LABEL_23;
            }

            applicationState2 = [v28 applicationState];
            if ([applicationState2 isInstalled])
            {

LABEL_23:
LABEL_24:
              v32 = +[SPCorrectionHandler sharedHandler];
              v176 = 0;
              v33 = [v32 getCorrections:displayName forLanguage:v155 version:&v176];
              v34 = v176;

              if (v33)
              {
                [v29 setAttribute:v33 forKey:off_1000A7DC8[0]];
              }

              v35 = +[SPCorrectionHandler sharedHandler];
              v36 = [v35 versionForLanguage:v155];
              v37 = [v34 isEqualToString:v36];

              if (v37)
              {
                [v29 setAttribute:v155 forKey:off_1000A7DD8[0]];
                [v29 setAttribute:v34 forKey:off_1000A7DD0[0]];
              }

              itemsCopy = v151;
              v18 = v148;
LABEL_34:
              v43 = [[LSApplicationRecord alloc] initWithBundleIdentifier:displayIdentifier allowPlaceholder:0 error:0];

              v44 = SPLogForSPLogCategoryDefault();
              v45 = gSPLogInfoAsDefault;
              v46 = os_log_type_enabled(v44, ((gSPLogInfoAsDefault & 1) == 0));
              if (v43)
              {
                if (v46)
                {
                  *buf = 138412290;
                  *v187 = displayIdentifier;
                  _os_log_impl(&_mh_execute_header, v44, ((v45 & 1) == 0), "setting isPlaceholder to NO for %@", buf, 0xCu);
                }

                [v29 setIsPlaceholder:&__kCFBooleanFalse];
              }

              else
              {
                if (v46)
                {
                  applicationState3 = [v28 applicationState];
                  isPlaceholder = [applicationState3 isPlaceholder];
                  *buf = 67109378;
                  *v187 = isPlaceholder;
                  *&v187[4] = 2112;
                  *&v187[6] = displayIdentifier;
                  _os_log_impl(&_mh_execute_header, v44, ((v45 & 1) == 0), "setting isPlaceholder to %d for %@", buf, 0x12u);
                }

                applicationState4 = [v28 applicationState];
                v50 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [applicationState4 isPlaceholder]);
                [v29 setIsPlaceholder:v50];
              }

              registrationDate = [v28 registrationDate];
              [v29 setContentCreationDate:registrationDate];

              [v29 setAttribute:&off_100098A80 forKey:off_1000A7DC0[0]];
              v52 = +[NSMutableSet set];
              iTunesMetadata = [v28 iTunesMetadata];
              artistName = [iTunesMetadata artistName];

              if (artistName || (artistName = @"Apple Inc.", [displayIdentifier hasPrefix:@"com.apple."]))
              {
                [v29 setVendorName:artistName];
              }

              if (v157)
              {
                [(SPApplicationIndexer *)self addDefaultBundleInformationForURL:v157 attrSet:v29 altNames:v52 namesOnly:0 withApp:v25 enName:0];
                displayName2 = [v29 displayName];
                v56 = [displayName2 cStringUsingEncoding:4];

                languages = [v29 languages];
                if ([languages count] > 1)
                {
                  goto LABEL_46;
                }

                if ((*v56 & 0x80000000) == 0)
                {
                  goto LABEL_91;
                }

                v82 = *v56;
                if ((~(v82 >> 4) & 0xC) != 0)
                {
                  goto LABEL_91;
                }

                v83 = byte_100072A0D[v82 >> 4];
                v84 = v82 & byte_100072A08[v83];
                v83 = v83 <= 2 ? 2 : v83;
                v85 = v83 - 1;
                v86 = (v56 + 1);
                do
                {
                  v87 = v84;
                  v88 = *v86++;
                  v84 = v88 & 0x3F | (v84 << 6);
                  --v85;
                }

                while (v85);
                if ((v87 << 6) >> 8 >= 0x11 && ((v87 & 0x3FFFFFC) == 0x44 || ((v87 << 6) - 11904) >> 7 < 0x197 || (v84 - 65376) < 0x50))
                {
LABEL_46:
                }

                else
                {
LABEL_91:
                  HasExtraInformation = SSApplicationHasExtraInformation();

                  if ((HasExtraInformation & 1) == 0)
                  {
LABEL_49:
                    v58 = SSBuildExtraApplicationAlternateNames();

                    if ([v58 count])
                    {
                      allObjects = [v58 allObjects];
                      [v29 setAlternateNames:allObjects];
                    }

                    if (qword_1000A8358)
                    {
                      [v29 setValue:qword_1000A8358 forCustomKey:qword_1000A8350];
                    }

                    if ([countItemsCopy count])
                    {
                      v60 = [countItemsCopy objectForKey:displayIdentifier];

                      if (v60)
                      {
                        v61 = [countItemsCopy objectForKey:displayIdentifier];
                        v62 = objc_opt_new();
                        v63 = [v61 objectAtIndexedSubscript:0];

                        if (v63)
                        {
                          v64 = [v61 objectAtIndexedSubscript:0];
                          [v62 setObject:v64 forKeyedSubscript:v138];
                        }

                        v65 = [v61 objectAtIndexedSubscript:1];

                        if (v65)
                        {
                          v66 = [v61 objectAtIndexedSubscript:1];
                          [v62 setObject:v66 forKeyedSubscript:v137];
                        }

                        v67 = [v61 objectAtIndexedSubscript:2];

                        if (v67)
                        {
                          v68 = [v61 objectAtIndexedSubscript:2];
                          [v62 setObject:v68 forKeyedSubscript:v136];
                        }

                        v69 = [v61 objectAtIndexedSubscript:3];

                        if (v69)
                        {
                          v70 = [v61 objectAtIndexedSubscript:3];
                          [v62 setObject:v70 forKeyedSubscript:v135];
                        }

                        v71 = [v61 objectAtIndexedSubscript:4];

                        if (v71)
                        {
                          v72 = [NSDate alloc];
                          v73 = [v61 objectAtIndexedSubscript:4];
                          [v73 doubleValue];
                          v74 = [v72 initWithTimeIntervalSinceReferenceDate:?];
                          [v62 setObject:v74 forKeyedSubscript:v134];

                          v18 = v148;
                        }

                        [v29 addAttributesFromDictionary:v62];

                        itemsCopy = v151;
                      }
                    }

                    if ([v25 isWebClip])
                    {
                      v184 = v143;
                      v185 = &__kCFBooleanTrue;
                      v75 = [NSDictionary dictionaryWithObjects:&v185 forKeys:&v184 count:1];
                      [v29 addAttributesFromDictionary:v75];
                    }

                    if ([v25 isAppClip])
                    {
                      v182 = v142;
                      appBundleIdentifier = [v25 appBundleIdentifier];
                      v183 = appBundleIdentifier;
                      v77 = [NSDictionary dictionaryWithObjects:&v183 forKeys:&v182 count:1];
                      [v29 addAttributesFromDictionary:v77];
                    }

                    v78 = SPLogForSPLogCategoryDefault();
                    v79 = gSPLogInfoAsDefault;
                    if (os_log_type_enabled(v78, ((gSPLogInfoAsDefault & 1) == 0)))
                    {
                      *buf = 138412290;
                      *v187 = displayIdentifier;
                      _os_log_impl(&_mh_execute_header, v78, ((v79 & 1) == 0), "adding app %@", buf, 0xCu);
                    }

                    v80 = [[CSSearchableItem alloc] initWithUniqueIdentifier:displayIdentifier domainIdentifier:0 attributeSet:v29];
                    if ([v25 isAppClip])
                    {
                      v81 = v150;
                    }

                    else
                    {
                      v81 = v18;
                    }

                    [v81 addObject:v80];

                    activityCopy = v149;
                    goto LABEL_76;
                  }
                }
              }

              else if (![v25 isAppClip])
              {
                goto LABEL_49;
              }

              [v146 addObject:displayIdentifier];
              goto LABEL_49;
            }

            applicationState5 = [v28 applicationState];
            isValid = [applicationState5 isValid];

            activityCopy = v149;
            if (isValid)
            {
              goto LABEL_24;
            }
          }

          applicationState6 = [v28 applicationState];
          isValid2 = [applicationState6 isValid];

          v41 = SPLogForSPLogCategoryDefault();
          v42 = os_log_type_enabled(v41, OS_LOG_TYPE_ERROR);
          if (isValid2)
          {
            if (v42)
            {
              *buf = 138412290;
              *v187 = v28;
              _os_log_error_impl(&_mh_execute_header, v41, OS_LOG_TYPE_ERROR, "missing name for app %@", buf, 0xCu);
            }

            getpid();
            SimulateCrash();
            goto LABEL_34;
          }

          if (v42)
          {
            *buf = 138412290;
            *v187 = v28;
            _os_log_error_impl(&_mh_execute_header, v41, OS_LOG_TYPE_ERROR, "Skipping invalid app %@", buf, 0xCu);
          }

          if ([v25 isAppClip])
          {
            v90 = v139;
          }

          else
          {
            v90 = v147;
          }

          [v90 addObject:displayIdentifier];
LABEL_76:
          cleanCopy2 = clean;

          v23 = v152;
          v22 = v153;
        }

        v26 = v159;
      }

      objc_autoreleasePoolPop(v26);
      v24 = v24 + 1;
      v17 = v158;
    }

    while (v24 != v22);
    v91 = [obj countByEnumeratingWithState:&v177 objects:v188 count:16];
    v22 = v91;
  }

  while (v91);
LABEL_100:

  obj = +[SDAppUninstallMonitor applicationsExcludedFromUninstall];
  if (!cleanCopy2)
  {
    v175 = 0u;
    v173 = 0u;
    v174 = 0u;
    v172 = 0u;
    v92 = itemsCopy;
    v93 = [v92 countByEnumeratingWithState:&v172 objects:v181 count:16];
    if (!v93)
    {
      goto LABEL_121;
    }

    v94 = v93;
    v95 = *v173;
    while (1)
    {
      v96 = 0;
      do
      {
        if (*v173 != v95)
        {
          objc_enumerationMutation(v92);
        }

        v97 = *(*(&v172 + 1) + 8 * v96);
        v98 = [v17 objectForKey:v97];

        if (!v98)
        {
          if ([obj containsObject:v97])
          {
            v99 = SPLogForSPLogCategoryDefault();
            v100 = gSPLogInfoAsDefault;
            if (os_log_type_enabled(v99, ((gSPLogInfoAsDefault & 1) == 0)))
            {
              *buf = 138412290;
              *v187 = v97;
              v101 = (v100 & 1) == 0;
              v102 = v99;
              v103 = "Skipped app %@ since it's excluded from uninstall";
              goto LABEL_113;
            }

            goto LABEL_114;
          }

          v104 = [LSBundleRecord bundleRecordWithBundleIdentifier:v97 allowPlaceholder:1 error:0];
          v105 = [v104 URL];

          v99 = SPLogForSPLogCategoryDefault();
          v106 = gSPLogInfoAsDefault;
          v107 = os_log_type_enabled(v99, ((gSPLogInfoAsDefault & 1) == 0));
          if (v105)
          {
            v17 = v158;
            if (v107)
            {
              *buf = 138412290;
              *v187 = v97;
              v101 = (v106 & 1) == 0;
              v102 = v99;
              v103 = "Skipped app %@ since it still has a URL";
LABEL_113:
              _os_log_impl(&_mh_execute_header, v102, v101, v103, buf, 0xCu);
            }

LABEL_114:

            goto LABEL_115;
          }

          v17 = v158;
          if (v107)
          {
            *buf = 138412290;
            *v187 = v97;
            _os_log_impl(&_mh_execute_header, v99, ((v106 & 1) == 0), "deleting app %@", buf, 0xCu);
          }

          [v147 addObject:v97];
        }

LABEL_115:
        v96 = v96 + 1;
      }

      while (v94 != v96);
      v108 = [v92 countByEnumeratingWithState:&v172 objects:v181 count:16];
      v94 = v108;
      if (!v108)
      {
LABEL_121:

        itemsCopy = v151;
        v18 = v148;
        activityCopy = v149;
        break;
      }
    }
  }

  if ([v18 count] || objc_msgSend(v147, "count") || objc_msgSend(v150, "count") || objc_msgSend(v139, "count"))
  {
    v109 = SPLogForSPLogCategoryDefault();
    v110 = gSPLogInfoAsDefault;
    if (os_log_type_enabled(v109, ((gSPLogInfoAsDefault & 1) == 0)))
    {
      v111 = [v18 count];
      v112 = [v147 count];
      *buf = 67109376;
      *v187 = v111;
      *&v187[4] = 1024;
      *&v187[6] = v112;
      _os_log_impl(&_mh_execute_header, v109, ((v110 & 1) == 0), "Indexing applications %d adds %d deletes", buf, 0xEu);
    }

    v113 = SPLogForSPLogCategoryDefault();
    v114 = gSPLogInfoAsDefault;
    if (os_log_type_enabled(v113, ((gSPLogInfoAsDefault & 1) == 0)))
    {
      v115 = objc_retainBlock(v133);
      *buf = 134217984;
      *v187 = v115;
      _os_log_impl(&_mh_execute_header, v113, ((v114 & 1) == 0), "2.4 call indexSearchableItems completion %p", buf, 0xCu);
    }

    v116 = +[SPCoreSpotlightIndexer sharedInstance];
    v163 = SPApplicationBundleIdGeneralApplication;
    v164[0] = _NSConcreteStackBlock;
    v164[1] = 3221225472;
    v164[2] = sub_1000238E8;
    v164[3] = &unk_100092CF8;
    v165 = v150;
    v166 = v139;
    v167 = v146;
    v168 = updateCountItemsCopy;
    v171 = v133;
    selfCopy = self;
    v170 = activityCopy;
    v117 = v147;
    completionCopy = v133;
    [v116 indexSearchableItems:v148 deleteSearchableItemsWithIdentifiers:v147 clientState:0 protectionClass:NSFileProtectionCompleteUntilFirstUserAuthentication forBundleID:v163 options:0 completionHandler:v164];

    v118 = v146;
    v18 = v148;
    v119 = v139;
    v120 = v150;
  }

  else
  {
    completionCopy = v133;
    if (![updateCountItemsCopy count] && !objc_msgSend(v146, "count"))
    {
      v129 = SPLogForSPLogCategoryDefault();
      v130 = gSPLogInfoAsDefault;
      if (os_log_type_enabled(v129, ((gSPLogInfoAsDefault & 1) == 0)))
      {
        v131 = objc_retainBlock(v133);
        *buf = 134217984;
        *v187 = v131;
        _os_log_impl(&_mh_execute_header, v129, ((v130 & 1) == 0), "2.3 call completion %p", buf, 0xCu);

        completionCopy = v133;
      }

      completionCopy[2](completionCopy);
      goto LABEL_137;
    }

    v126 = SPLogForSPLogCategoryDefault();
    v127 = gSPLogInfoAsDefault;
    if (os_log_type_enabled(v126, ((gSPLogInfoAsDefault & 1) == 0)))
    {
      v128 = objc_retainBlock(v133);
      *buf = 134217984;
      *v187 = v128;
      _os_log_impl(&_mh_execute_header, v126, ((v127 & 1) == 0), "2.4 call updateApplicationMetadata completion %p", buf, 0xCu);

      completionCopy = v133;
    }

    v118 = v146;
    [(SPApplicationIndexer *)self updateApplicationMetadata:updateCountItemsCopy appsRequiringLocalization:v146 activity:activityCopy completion:completionCopy];
LABEL_138:
    v117 = v147;
    v120 = v150;
    v119 = v139;
  }

LABEL_140:
}

- (void)updateShortcuts:(id)shortcuts
{
  shortcutsCopy = shortcuts;
  v30[0] = 0;
  v30[1] = v30;
  v30[2] = 0x3032000000;
  v30[3] = sub_10001F2F0;
  v30[4] = sub_10001F300;
  v31 = objc_opt_new();
  v28[0] = 0;
  v28[1] = v28;
  v28[2] = 0x3032000000;
  v28[3] = sub_10001F2F0;
  v28[4] = sub_10001F300;
  v29 = objc_opt_new();
  v4 = dispatch_group_create();
  v5 = SPLogForSPLogCategoryDefault();
  v6 = gSPLogInfoAsDefault;
  if (os_log_type_enabled(v5, ((gSPLogInfoAsDefault & 1) == 0)))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, ((v6 & 1) == 0), "[TopHitAppShortcuts] updateShortcuts start", buf, 2u);
  }

  v7 = objc_opt_new();
  [v7 setInternal:1];
  [v7 setLowPriority:0];
  v35 = MDItemRelatedAppBundleIdentifier;
  v8 = [NSArray arrayWithObjects:&v35 count:1];
  [v7 setFetchAttributes:v8];

  v34 = NSFileProtectionCompleteUntilFirstUserAuthentication;
  v9 = [NSArray arrayWithObjects:&v34 count:1];
  [v7 setProtectionClasses:v9];

  [v7 setBundleIDs:&off_100098FA0];
  [v7 setAttribute:1];
  v10 = [[CSSearchQuery alloc] initWithQueryString:@"com_apple_shortcuts_runnable_is_app_shortcut_top_hit=1" context:v7];
  if (v10)
  {
    dispatch_group_enter(v4);
    v26[0] = _NSConcreteStackBlock;
    v26[1] = 3221225472;
    v26[2] = sub_10002416C;
    v26[3] = &unk_100092D20;
    v26[4] = v30;
    [v10 setFoundAttributesHandler:v26];
    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = sub_1000241E0;
    v24[3] = &unk_100091E30;
    v25 = v4;
    [v10 setCompletionHandler:v24];
  }

  [v10 start];

  if (v10)
  {
    v11 = objc_opt_new();
    [v11 setInternal:1];
    [v11 setLowPriority:0];
    [v11 setFetchAttributes:&off_100098FB8];
    v33 = NSFileProtectionCompleteUntilFirstUserAuthentication;
    v12 = [NSArray arrayWithObjects:&v33 count:1];
    [v11 setProtectionClasses:v12];

    v32 = SPApplicationBundleIdGeneralApplication;
    v13 = [NSArray arrayWithObjects:&v32 count:1];
    [v11 setBundleIDs:v13];

    v14 = [[CSSearchQuery alloc] initWithQueryString:@"_kMDItemHasTopHitAppShortcuts=1" context:v11];
    if (v14)
    {
      dispatch_group_enter(v4);
      v23[0] = _NSConcreteStackBlock;
      v23[1] = 3221225472;
      v23[2] = sub_10002424C;
      v23[3] = &unk_100091E08;
      v23[4] = v28;
      [v14 setFoundItemsHandler:v23];
      v21[0] = _NSConcreteStackBlock;
      v21[1] = 3221225472;
      v21[2] = sub_100024364;
      v21[3] = &unk_100091E30;
      v22 = v4;
      [v14 setCompletionHandler:v21];
      [v14 start];
    }
  }

  if (shortcutsCopy)
  {
    dispatch_group_enter(shortcutsCopy);
  }

  v15 = qword_1000A8368;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000243D0;
  block[3] = &unk_100092D70;
  v19 = v28;
  v20 = v30;
  v18 = shortcutsCopy;
  v16 = shortcutsCopy;
  dispatch_group_notify(v4, v15, block);

  _Block_object_dispose(v28, 8);
  _Block_object_dispose(v30, 8);
}

- (void)updateApplications:(id)applications appBundleArray:(id)array clean:(BOOL)clean activity:(id)activity
{
  applicationsCopy = applications;
  arrayCopy = array;
  activityCopy = activity;
  v72[0] = 0;
  v72[1] = v72;
  v72[2] = 0x3032000000;
  v72[3] = sub_10001F2F0;
  v72[4] = sub_10001F300;
  v41 = arrayCopy;
  if (arrayCopy)
  {
    v10 = [NSMutableSet setWithArray:arrayCopy];
  }

  else
  {
    v10 = 0;
  }

  v73 = v10;
  v70[0] = 0;
  v70[1] = v70;
  v70[2] = 0x3032000000;
  v70[3] = sub_10001F2F0;
  v70[4] = sub_10001F300;
  v71 = objc_opt_new();
  v68[0] = 0;
  v68[1] = v68;
  v68[2] = 0x3032000000;
  v68[3] = sub_10001F2F0;
  v68[4] = sub_10001F300;
  v69 = objc_opt_new();
  v62 = 0;
  v63 = &v62;
  v64 = 0x3032000000;
  v65 = sub_10001F2F0;
  v66 = sub_10001F300;
  v11 = +[NSLocale currentLocale];
  v67 = [v11 objectForKey:NSLocaleLanguageCode];

  v12 = SSExtraApplicationVersion();
  v13 = SPLogForSPLogCategoryDefault();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    uTF8String = [v63[5] UTF8String];
    *buf = 136315394;
    *&buf[4] = uTF8String;
    *&buf[12] = 2048;
    *&buf[14] = v12;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Updating apps with language %s and extras version %ld", buf, 0x16u);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v78 = sub_10001F2F0;
  v79 = sub_10001F300;
  v80 = +[NSMutableArray array];
  v15 = SPFastApplicationsGetNoBuild();
  v74[0] = _NSConcreteStackBlock;
  v74[1] = 3221225472;
  v74[2] = sub_100002D24;
  v74[3] = &unk_100092E10;
  v74[4] = buf;
  [v15 enumerateKeysAndObjectsUsingBlock:v74];
  v42 = *(*&buf[8] + 40);

  _Block_object_dispose(buf, 8);
  v16 = SPLogForSPLogCategoryDefault();
  v17 = gSPLogInfoAsDefault;
  if (os_log_type_enabled(v16, ((gSPLogInfoAsDefault & 1) == 0)))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v16, ((v17 & 1) == 0), "Checking for existing applications", buf, 2u);
  }

  v18 = objc_opt_new();
  [v18 setInternal:1];
  [v18 setLowPriority:0];
  v76[0] = MDItemUniqueIdentifier;
  v76[1] = MDItemDisplayName;
  v76[2] = off_1000A7DC0[0];
  v76[3] = off_1000A7DB8[0];
  v76[4] = off_1000A7DD0[0];
  v76[5] = off_1000A7DD8[0];
  v76[6] = MDItemRankingLaunchCountDay;
  v76[7] = MDItemRankingLaunchCountLast7Days;
  v76[8] = MDItemRankingLaunchCountLast30Days;
  v76[9] = MDItemRankingLaunchCountOld;
  v76[10] = MDItemApplicationLastLaunchedDate;
  v76[11] = off_1000A7DE0;
  v76[12] = MDItemIsPlaceholder;
  v19 = [NSArray arrayWithObjects:v76 count:13];
  [v18 setFetchAttributes:v19];

  v75 = NSFileProtectionCompleteUntilFirstUserAuthentication;
  v20 = [NSArray arrayWithObjects:&v75 count:1];
  [v18 setProtectionClasses:v20];

  v21 = +[SPApplicationMetadataUpdater sharedInstance];
  appMetadata = [v21 appMetadata];

  v40 = objc_opt_new();
  v23 = objc_opt_new();
  fetchAttributes = [v18 fetchAttributes];
  v25 = [fetchAttributes count];

  v46 = +[SPCoreSpotlightIndexer sharedInstance];
  v26 = SPLogForSPLogCategoryDefault();
  v27 = gSPLogInfoAsDefault;
  if (os_log_type_enabled(v26, ((gSPLogInfoAsDefault & 1) == 0)))
  {
    *buf = 134217984;
    *&buf[4] = applicationsCopy;
    _os_log_impl(&_mh_execute_header, v26, ((v27 & 1) == 0), "2 Enter group %p", buf, 0xCu);
  }

  v28 = v12;
  v29 = applicationsCopy;
  v30 = appMetadata;
  if (v29)
  {
    dispatch_group_enter(v29);
  }

  sPUTIAppType = [NSString stringWithFormat:@"%@=%@", MDItemContentType, SPUTIAppType];
  v32 = v29;
  v47[0] = _NSConcreteStackBlock;
  v47[1] = 3221225472;
  v47[2] = sub_1000253E8;
  v47[3] = &unk_100092DE8;
  v59 = v25;
  v55 = v70;
  v56 = v72;
  v33 = v30;
  v48 = v33;
  v34 = v40;
  v49 = v34;
  v35 = v23;
  v50 = v35;
  v57 = &v62;
  v36 = v42;
  v60 = v28;
  v51 = v36;
  v58 = v68;
  v37 = v29;
  v52 = v37;
  selfCopy = self;
  cleanCopy = clean;
  v38 = activityCopy;
  v54 = v38;
  v39 = [v46 startQuery:sPUTIAppType withContext:v18 handler:v47];

  if (v32)
  {
    [(SPApplicationIndexer *)self updateShortcuts:v37];
    if (!v39)
    {
      dispatch_group_leave(v37);
    }
  }

  _Block_object_dispose(&v62, 8);
  _Block_object_dispose(v68, 8);

  _Block_object_dispose(v70, 8);
  _Block_object_dispose(v72, 8);
}

@end