@interface RDUserProfileImpl
- (RDUserProfileImpl)initWithLanguage:(id)a3 assetPath:(id)a4;
- (id)readUserProfileFromCache;
- (void)adaptUserProfileWithUserData:(id)a3;
- (void)addPhraseToUserProfileWithIPAprons:(id)a3 wordTag:(id)a4 phrase:(id)a5 pronsArray:(id)a6;
- (void)addPhraseToUserProfileWithTemplateName:(id)a3 wordTag:(id)a4 phrase:(id)a5;
- (void)addWordsToUserProfileWithTemplateName:(id)a3 wordArrays:(id)a4;
- (void)updateUserProfileWithPersonalData:(BOOL)a3 completion:(id)a4;
- (void)writeOutUserDataToJson;
- (void)writeUserProfileToCache;
@end

@implementation RDUserProfileImpl

- (RDUserProfileImpl)initWithLanguage:(id)a3 assetPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v19.receiver = self;
  v19.super_class = RDUserProfileImpl;
  v8 = [(RDUserProfileImpl *)&v19 init];
  v9 = v8;
  if (v8)
  {
    [(RDUserProfileImpl *)v8 setLanguage:v6];
    [(RDUserProfileImpl *)v9 setAssetPath:v7];
    v10 = [(NSString *)v9->_assetPath stringByAppendingPathComponent:@"mini.json"];
    v11 = [(NSString *)v9->_assetPath stringByAppendingPathComponent:@"ncs"];
    v12 = [v11 stringByAppendingPathComponent:@"en_US_napg.json"];
    v13 = [v11 stringByAppendingPathComponent:@"vocdelta.voc"];
    v14 = [v11 stringByAppendingPathComponent:@"pg.voc"];
    v15 = [v11 stringByAppendingPathComponent:@"mrec.psh"];
    v16 = [[_EARUserProfile alloc] initWithConfiguration:v10 language:v6 overrides:0 sdapiOverrides:v12 emptyVoc:v13 pgVoc:v14 paramsetHolder:v15];
    userProfile = v9->_userProfile;
    v9->_userProfile = v16;
  }

  return v9;
}

- (void)updateUserProfileWithPersonalData:(BOOL)a3 completion:(id)a4
{
  v6 = a4;
  v7 = RXOSLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    language = self->_language;
    *buf = 138412290;
    v21 = language;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Creating profile for %@", buf, 0xCu);
  }

  v9 = objc_autoreleasePoolPush();
  v10 = [(RDUserProfileImpl *)self readUserProfileFromCache];
  v11 = RXOSLog();
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
  if (v10)
  {
    if (v12)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Re-using existing profile data", buf, 2u);
    }

    [(_EARUserProfile *)self->_userProfile readUserProfile:v10];
  }

  else
  {
    if (v12)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "No existing cache found", buf, 2u);
    }
  }

  objc_autoreleasePoolPop(v9);
  objc_initWeak(buf, self);
  v13 = self->_language;
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_10004BEC4;
  v18[3] = &unk_1000FFC10;
  objc_copyWeak(&v19, buf);
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10004BEF8;
  v15[3] = &unk_1000FFC60;
  v17 = a3;
  v15[4] = self;
  v14 = v6;
  v16 = v14;
  [RDUserData fetchUserDataWithLanguage:v13 keepGoing:v18 completion:v15];

  objc_destroyWeak(&v19);
  objc_destroyWeak(buf);
}

- (id)readUserProfileFromCache
{
  v2 = [(NSString *)self->_language copy];
  v18 = 0;
  v3 = sub_10004C874(v2, &v18);
  if (!v3)
  {
    v5 = RXOSLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v20 = v18;
      v8 = "File path for SRC cache not found : %@";
LABEL_12:
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, v8, buf, 0xCu);
    }

LABEL_13:
    v7 = 0;
    goto LABEL_14;
  }

  v4 = [[NSData alloc] initWithContentsOfFile:v3 options:0 error:&v18];
  if (!v4)
  {
    v5 = RXOSLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v20 = v18;
      v8 = "No SpeechProfile cached for SRC : %@";
      goto LABEL_12;
    }

    goto LABEL_13;
  }

  v5 = v4;
  v6 = [NSPropertyListSerialization propertyListWithData:v4 options:0 format:0 error:&v18];
  if (v6 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

LABEL_14:
  v9 = v18;
  if (!v7)
  {
    v14 = 0;
    goto LABEL_29;
  }

  v10 = [v7 valueForKey:@"language"];
  v11 = [v10 isEqual:v2];

  if ((v11 & 1) == 0)
  {
    v12 = RXOSLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "readUserProfileFromCache: Mismatch in speech profile language in content and filename", buf, 2u);
    }
  }

  v13 = [v7 valueForKey:@"version"];
  if (([v13 isEqual:@"4.0"] & 1) == 0)
  {
    v15 = RXOSLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v20 = v13;
      v21 = 2112;
      v22 = @"4.0";
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "readUserProfileFromCache: Profile version on disk (%@) does not match the expected version (%@)", buf, 0x16u);
    }

    v14 = 0;
    goto LABEL_27;
  }

  v14 = [v7 valueForKey:@"data"];
  if (v14)
  {
    v15 = RXOSLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = [v14 length];
      *buf = 134217984;
      v20 = v16;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Deserialization of user profile done with size=%lu", buf, 0xCu);
    }

LABEL_27:
  }

LABEL_29:

  return v14;
}

- (void)writeUserProfileToCache
{
  v3 = +[NSProcessInfo processInfo];
  [v3 systemUptime];
  v5 = v4;

  v6 = [(NSString *)self->_language copy];
  v28 = 0;
  v7 = sub_10004C874(v6, &v28);
  v8 = v28;
  if (v7)
  {
    v9 = [(RDUserProfileImpl *)self dataProfile];
    v10 = v9;
    if (!v9)
    {
      v11 = RXOSLog();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "Empty data profile", buf, 2u);
      }

      goto LABEL_20;
    }

    v33[0] = @"data";
    v33[1] = @"version";
    v34[0] = v9;
    v34[1] = @"4.0";
    v33[2] = @"language";
    v34[2] = v6;
    v11 = [NSDictionary dictionaryWithObjects:v34 forKeys:v33 count:3];
    v27 = 0;
    v12 = [NSPropertyListSerialization dataWithPropertyList:v11 format:200 options:0 error:&v27];
    v13 = v27;

    v14 = RXOSLog();
    v15 = v14;
    if (!v12)
    {
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v30 = v13;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "Serialization of user profile failed with error=%@", buf, 0xCu);
      }

      goto LABEL_19;
    }

    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v16 = [v12 length];
      *buf = 134217984;
      v30 = v16;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Serialization of user profile done with size=%lu", buf, 0xCu);
    }

    v26 = v13;
    v17 = [v12 writeToFile:v7 options:0x40000000 error:&v26];
    v18 = v26;

    if (v17)
    {
      v19 = +[NSProcessInfo processInfo];
      [v19 systemUptime];
      v21 = v20;

      v15 = RXOSLog();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v30 = v7;
        v31 = 2048;
        v32 = (v21 - v5) * 1000.0;
        v22 = "Persisted user profile to path=%@ in %.2fms";
        v23 = v15;
        v24 = OS_LOG_TYPE_DEFAULT;
        v25 = 22;
LABEL_17:
        _os_log_impl(&_mh_execute_header, v23, v24, v22, buf, v25);
      }
    }

    else
    {
      v15 = RXOSLog();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v30 = v18;
        v22 = "Persisting user profile to disk failed with error=%@";
        v23 = v15;
        v24 = OS_LOG_TYPE_ERROR;
        v25 = 12;
        goto LABEL_17;
      }
    }

    v13 = v18;
LABEL_19:

    v8 = v13;
LABEL_20:

    goto LABEL_21;
  }

  v10 = RXOSLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v30 = v8;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "writeUpdatedUserProfileToCache: Error in getting profile path: %@", buf, 0xCu);
  }

LABEL_21:
}

- (void)writeOutUserDataToJson
{
  v3 = [NSString stringWithFormat:@"%@/mini.json", self->_assetPath];
  v4 = [(NSString *)self->_language copy];
  v17 = 0;
  v5 = v4;
  v6 = NSSearchPathForDirectoriesInDomains(NSLibraryDirectory, 1uLL, 1);
  v7 = [v6 firstObject];

  if (v7)
  {
    v8 = [v7 stringByAppendingPathComponent:@"/SpeechRecognitionCore"];
    v9 = +[NSFileManager defaultManager];
    v10 = [v9 createDirectoryAtPath:v8 withIntermediateDirectories:1 attributes:0 error:&v17];

    v11 = 0;
    if (v10)
    {
      v12 = v5;
      if (v8)
      {
        v12 = [v5 stringByReplacingOccurrencesOfString:@"-" withString:@"_"];

        v13 = [v8 stringByAppendingPathComponent:@"SpeechProfileJSON"];
        v14 = [v13 stringByAppendingString:@"_"];
        v11 = [v14 stringByAppendingString:v12];
      }
    }

    else
    {
      v12 = v5;
    }
  }

  else
  {
    [NSError errorWithDomain:NSPOSIXErrorDomain code:2 userInfo:0];
    v17 = v11 = 0;
    v12 = v5;
  }

  v15 = v17;
  if (v11)
  {
    [(_EARUserProfile *)self->_userProfile writeOutUserDataToJson:v11 withConfig:v3];
  }

  else
  {
    v16 = RXOSLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v19 = v15;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "writeOutUserDataToJson: Error in getting json profile path: %@", buf, 0xCu);
    }
  }
}

- (void)addWordsToUserProfileWithTemplateName:(id)a3 wordArrays:(id)a4
{
  v6 = a3;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  obj = a4;
  v7 = [obj countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v18;
    do
    {
      v10 = 0;
      do
      {
        if (*v18 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v17 + 1) + 8 * v10);
        v12 = +[NSMutableArray array];
        v15[0] = _NSConcreteStackBlock;
        v15[1] = 3221225472;
        v15[2] = sub_10004CE08;
        v15[3] = &unk_1000FFC88;
        v16 = v12;
        v13 = v12;
        [v11 enumerateKeysAndObjectsUsingBlock:v15];
        [(_EARUserProfile *)self->_userProfile addWordWithParts:v13 templateName:v6];

        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [obj countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v8);
  }
}

- (void)addPhraseToUserProfileWithTemplateName:(id)a3 wordTag:(id)a4 phrase:(id)a5
{
  v19 = a3;
  v7 = a4;
  v8 = a5;
  v9 = +[NSMutableArray array];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  obj = v8;
  v10 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v22;
    do
    {
      v13 = 0;
      do
      {
        if (*v22 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v21 + 1) + 8 * v13);
        v15 = [_EARWordPart alloc];
        v16 = +[NSSet set];
        v17 = [v15 initWithOrthography:v14 pronunciations:v16 tag:sub_10004CECC(v7)];

        [v9 addObject:v17];
        v13 = v13 + 1;
      }

      while (v11 != v13);
      v11 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v11);
  }

  [(_EARUserProfile *)self->_userProfile addWordWithParts:v9 templateName:v19];
}

- (void)addPhraseToUserProfileWithIPAprons:(id)a3 wordTag:(id)a4 phrase:(id)a5 pronsArray:(id)a6
{
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = a3;
  v14 = +[NSMutableArray array];
  v15 = [_EARWordPart alloc];
  v16 = [NSSet setWithArray:v12];
  v17 = [v15 initWithOrthography:v11 pronunciations:v16 tagName:v10 frequency:1];

  v18 = RXOSLog();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
  {
    v19 = 138413058;
    v20 = v11;
    v21 = 2112;
    v22 = v12;
    v23 = 2112;
    v24 = v10;
    v25 = 2048;
    v26 = 1;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEBUG, "Adding orthography %@ with IPA %@, wordTag: %@, frequency: %lu", &v19, 0x2Au);
  }

  [v14 addObject:v17];
  [(_EARUserProfile *)self->_userProfile addWordWithParts:v14 templateName:v13];
}

- (void)adaptUserProfileWithUserData:(id)a3
{
  v4 = [a3 contactsWords];
  [(RDUserProfileImpl *)self addWordsToUserProfileWithTemplateName:@"\\NT-contact" wordArrays:v4];
}

@end