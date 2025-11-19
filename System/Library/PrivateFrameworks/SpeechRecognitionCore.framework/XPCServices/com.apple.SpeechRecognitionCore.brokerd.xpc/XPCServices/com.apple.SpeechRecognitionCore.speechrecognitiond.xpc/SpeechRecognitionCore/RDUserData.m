@interface RDUserData
+ (void)fetchUserDataWithLanguage:(id)a3 keepGoing:(id)a4 completion:(id)a5;
- (BOOL)isEqual:(id)a3;
- (RDUserData)initWithCoder:(id)a3;
- (id)_initWithLanguage:(id)a3;
- (id)debugDescription;
- (id)description;
- (void)_fetchContactsWithKeepGoing:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation RDUserData

- (id)_initWithLanguage:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = RDUserData;
  v5 = [(RDUserData *)&v10 init];
  if (v5)
  {
    v6 = [v4 copy];
    language = v5->_language;
    v5->_language = v6;

    contactsWords = v5->_contactsWords;
    v5->_contactsWords = &__NSArray0__struct;
  }

  return v5;
}

- (void)_fetchContactsWithKeepGoing:(id)a3
{
  v4 = a3;
  v50 = 0;
  v51 = &v50;
  v52 = 0x2020000000;
  v53 = 0;
  v46 = 0;
  v47 = &v46;
  v48 = 0x2020000000;
  v49 = 0;
  v5 = objc_alloc_init(NSMutableArray);
  v6 = objc_alloc_init(CNContactStore);
  [v6 requestAccessForEntityType:0 completionHandler:&stru_1000FF160];
  v58[0] = CNContactGivenNameKey;
  v58[1] = CNContactMiddleNameKey;
  v58[2] = CNContactFamilyNameKey;
  v58[3] = CNContactNicknameKey;
  v7 = [NSArray arrayWithObjects:v58 count:4];
  v8 = [[CNContactFetchRequest alloc] initWithKeysToFetch:v7];
  v26 = self;
  v45 = 0;
  v40[0] = _NSConcreteStackBlock;
  v40[1] = 3221225472;
  v40[2] = sub_10003A698;
  v40[3] = &unk_1000FF188;
  v9 = v4;
  v42 = v9;
  v43 = &v46;
  v10 = v5;
  v41 = v10;
  v44 = &v50;
  v11 = [v6 enumerateContactsWithFetchRequest:v8 error:&v45 usingBlock:v40];
  v12 = v45;
  v36 = 0;
  v37 = &v36;
  v38 = 0x2020000000;
  v39 = 0;
  v32 = 0;
  v33 = &v32;
  v34 = 0x2020000000;
  v35 = 0;
  v27[0] = _NSConcreteStackBlock;
  v27[1] = 3221225472;
  v27[2] = sub_10003A8A8;
  v27[3] = &unk_1000FF1B0;
  v29 = &v46;
  v30 = &v36;
  v13 = v10;
  v28 = v13;
  v31 = &v32;
  [_INVocabulary enumerateVocabularyUsingBlock:v27];
  if (v11)
  {
    v14 = RXOSLog();
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_7;
    }

    v15 = v51[3];
    v16 = v47[3];
    *buf = 134218240;
    v55 = v15;
    v56 = 2048;
    v57 = v16;
    v17 = "Found %lu and added %lu contact(s) for offline recognition";
    v18 = v14;
    v19 = OS_LOG_TYPE_DEFAULT;
    v20 = 22;
  }

  else
  {
    v14 = RXOSLog();
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_7;
    }

    *buf = 138412290;
    v55 = v12;
    v17 = "Could not get contacts for offline recognition: %@";
    v18 = v14;
    v19 = OS_LOG_TYPE_ERROR;
    v20 = 12;
  }

  _os_log_impl(&_mh_execute_header, v18, v19, v17, buf, v20);
LABEL_7:

  v21 = RXOSLog();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    v22 = v37[3];
    v23 = v33[3];
    *buf = 134218240;
    v55 = v22;
    v56 = 2048;
    v57 = v23;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Found %lu and added %lu contact(s) from INVocabulary for offline recognition", buf, 0x16u);
  }

  v24 = [v13 copy];
  contactsWords = v26->_contactsWords;
  v26->_contactsWords = v24;

  _Block_object_dispose(&v32, 8);
  _Block_object_dispose(&v36, 8);

  _Block_object_dispose(&v46, 8);
  _Block_object_dispose(&v50, 8);
}

+ (void)fetchUserDataWithLanguage:(id)a3 keepGoing:(id)a4 completion:(id)a5
{
  v7 = a3;
  v8 = a4;
  v34 = a5;
  v9 = [[RDUserData alloc] _initWithLanguage:v7];
  v10 = dispatch_group_create();
  v11 = objc_opt_class();
  v12 = [NSString stringWithFormat:@"%s.%@", class_getName(v11), v7];
  v13 = dispatch_queue_create([v12 UTF8String], 0);

  v39[0] = _NSConcreteStackBlock;
  v39[1] = 3221225472;
  v39[2] = sub_10003B1F8;
  v39[3] = &unk_1000FF218;
  v14 = v9;
  v40 = v14;
  v15 = v8;
  v41 = v15;
  v16 = v10;
  v17 = v13;
  v18 = v39;
  if (qword_10010E518 != -1)
  {
    sub_1000C935C();
  }

  v54 = 0;
  v55 = &v54;
  v56 = 0x2020000000;
  v57 = 0;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10003B87C;
  block[3] = &unk_1000FF288;
  v52 = @"Contacts";
  v53 = &v54;
  dispatch_sync(qword_10010E520, block);
  if (*(v55 + 24) == 1)
  {
    v19 = RXOSLog();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = @"Contacts";
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "Skipping fetch for  %@ because another fetch is still active", &buf, 0xCu);
    }
  }

  else
  {
    v49[0] = _NSConcreteStackBlock;
    v49[1] = 3221225472;
    v49[2] = sub_10003B8E4;
    v49[3] = &unk_1000FE108;
    v50 = @"Contacts";
    v20 = objc_retainBlock(v49);
    v47[0] = 0;
    v47[1] = v47;
    v47[2] = 0x2020000000;
    v48 = 0;
    v21 = +[NSProcessInfo processInfo];
    [v21 systemUptime];
    v23 = v22;

    v33 = v7;
    v24 = dispatch_time(0, 15000000000);
    v42[0] = _NSConcreteStackBlock;
    v42[1] = 3221225472;
    v42[2] = sub_10003BA3C;
    v42[3] = &unk_1000FF2B0;
    v46 = v47;
    v25 = v20;
    v45 = v25;
    v43 = @"Contacts";
    v26 = v16;
    v44 = v26;
    dispatch_after(v24, v17, v42);
    dispatch_group_enter(v26);
    v27 = dispatch_get_global_queue(0, 0);
    *&buf = _NSConcreteStackBlock;
    *(&buf + 1) = 3221225472;
    v59 = sub_10003BB24;
    v60 = &unk_1000FF328;
    v64 = v18;
    v65 = v25;
    v28 = v17;
    v67 = v23;
    v66 = v47;
    v61 = v28;
    v62 = @"Contacts";
    v63 = v26;
    v29 = v25;
    dispatch_async(v27, &buf);

    v7 = v33;
    _Block_object_dispose(v47, 8);
    v19 = v50;
  }

  _Block_object_dispose(&v54, 8);
  v35[0] = _NSConcreteStackBlock;
  v35[1] = 3221225472;
  v35[2] = sub_10003B258;
  v35[3] = &unk_1000FF240;
  v37 = v34;
  v38 = v15;
  v36 = v14;
  v30 = v14;
  v31 = v15;
  v32 = v34;
  dispatch_group_notify(v16, v17, v35);
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      language = self->_language;
      if (language == v5->_language || [(NSString *)language isEqual:?])
      {
        contactsWords = self->_contactsWords;
        if (contactsWords == v5->_contactsWords)
        {
          v8 = 1;
        }

        else
        {
          v8 = [(NSArray *)contactsWords isEqual:?];
        }
      }

      else
      {
        v8 = 0;
      }
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (id)description
{
  v6.receiver = self;
  v6.super_class = RDUserData;
  v3 = [(RDUserData *)&v6 description];
  v4 = [v3 stringByAppendingFormat:@"language=%@, contactsWords count=%ld", self->_language, -[NSArray count](self->_contactsWords, "count")];

  return v4;
}

- (id)debugDescription
{
  v6.receiver = self;
  v6.super_class = RDUserData;
  v3 = [(RDUserData *)&v6 description];
  v4 = [v3 stringByAppendingFormat:@"language=%@, contactsWords=%@", self->_language, self->_contactsWords];

  return v4;
}

- (RDUserData)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(RDUserData *)self init];
  if (v5)
  {
    v20 = v4;
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_language"];
    language = v5->_language;
    v5->_language = v6;

    v18 = v4;
    v19 = [v18 decodePropertyListForKey:@"_contactsWords"];
    objc_opt_class();
    v8 = v19;
    if (objc_opt_isKindOfClass())
    {
      v28 = 0u;
      v29 = 0u;
      v26 = 0u;
      v27 = 0u;
      v9 = v19;
      v10 = [v9 countByEnumeratingWithState:&v26 objects:v30 count:16];
      if (v10)
      {
        v11 = *v27;
        while (2)
        {
          for (i = 0; i != v10; i = i + 1)
          {
            if (*v27 != v11)
            {
              objc_enumerationMutation(v9);
            }

            v13 = *(*(&v26 + 1) + 8 * i);
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              goto LABEL_14;
            }

            v22 = 0;
            v23 = &v22;
            v24 = 0x2020000000;
            v25 = 0;
            v21[0] = _NSConcreteStackBlock;
            v21[1] = 3221225472;
            v21[2] = sub_10003BE3C;
            v21[3] = &unk_1000FF350;
            v21[4] = &v22;
            [v13 enumerateKeysAndObjectsUsingBlock:v21];
            v14 = *(v23 + 24);
            _Block_object_dispose(&v22, 8);
            if (v14)
            {
LABEL_14:

              v15 = 0;
              goto LABEL_15;
            }
          }

          v10 = [v9 countByEnumeratingWithState:&v26 objects:v30 count:16];
          if (v10)
          {
            continue;
          }

          break;
        }
      }

      v15 = v9;
LABEL_15:
      v8 = v19;
    }

    else
    {
      v15 = 0;
    }

    contactsWords = v5->_contactsWords;
    v5->_contactsWords = v15;

    v4 = v20;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  language = self->_language;
  v5 = a3;
  [v5 encodeObject:language forKey:@"_language"];
  [v5 encodeObject:self->_contactsWords forKey:@"_contactsWords"];
}

@end