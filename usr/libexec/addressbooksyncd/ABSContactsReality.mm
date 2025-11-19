@interface ABSContactsReality
+ (id)containerForContactIdentifier:(id)a3 store:(id)a4;
- (ABSContactsReality)init;
- (id)accountExternalIdentifierForContact:(id)a3 inStore:(id)a4;
- (void)reloadMeIdentifiersForStore:(id)a3;
@end

@implementation ABSContactsReality

- (ABSContactsReality)init
{
  v3.receiver = self;
  v3.super_class = ABSContactsReality;
  return [(ABSContactsReality *)&v3 init];
}

+ (id)containerForContactIdentifier:(id)a3 store:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (!v5)
  {
    v17 = NSInvalidArgumentException;
    v18 = @"contactIdentifier is nil";
    goto LABEL_13;
  }

  v7 = v6;
  v8 = [CNContainer predicateForContainerOfContactWithIdentifier:v5];
  if (!v8)
  {
    v17 = NSInternalInconsistencyException;
    v18 = @"received nil predicate";
LABEL_13:
    v19 = [NSException exceptionWithName:v17 reason:v18 userInfo:0];
    objc_exception_throw(v19);
  }

  v9 = v8;
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = sub_100019748;
  v28 = sub_100019758;
  v29 = 0;
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_100019760;
  v20[3] = &unk_10005D3D0;
  v10 = v7;
  v21 = v10;
  v11 = v9;
  v22 = v11;
  v23 = &v24;
  v12 = sub_100004D58(v20);
  if (v12 || (v14 = v25[5]) == 0)
  {
    v13 = *(qword_100071D00 + 8);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_10003A5E0(v5, v12, v13);
    }

    v14 = v25[5];
  }

  v15 = v14;

  _Block_object_dispose(&v24, 8);

  return v15;
}

- (id)accountExternalIdentifierForContact:(id)a3 inStore:(id)a4
{
  v7 = a3;
  v8 = a4;
  v30 = 0;
  v31 = &v30;
  v32 = 0x3032000000;
  v33 = sub_100019748;
  v34 = sub_100019758;
  v35 = 0;
  if (!v7)
  {
    v23 = +[NSAssertionHandler currentHandler];
    [v23 handleFailureInMethod:a2 object:self file:@"ABSContactsReality.m" lineNumber:69 description:@"Attempt to fetch account external identifier for nil contact"];
  }

  v9 = [v7 identifier];
  v10 = v9 == 0;

  if (v10)
  {
    v24 = +[NSAssertionHandler currentHandler];
    [v24 handleFailureInMethod:a2 object:self file:@"ABSContactsReality.m" lineNumber:70 description:@"CNContact has a nil identifier"];
  }

  if (!v8)
  {
    v25 = +[NSAssertionHandler currentHandler];
    [v25 handleFailureInMethod:a2 object:self file:@"ABSContactsReality.m" lineNumber:71 description:@"Cannot fetch anything from a nil CNContactStore"];
  }

  if (![(ABSContactsReality *)self ignoreContactAccountIDs])
  {
    v11 = objc_opt_class();
    v12 = [v7 identifier];
    v13 = [v11 containerForContactIdentifier:v12 store:v8];

    if (v13)
    {
      v14 = [v13 identifier];
      v15 = [CNAccount predicateForAccountForContainerWithIdentifier:v14];

      v26[0] = _NSConcreteStackBlock;
      v26[1] = 3221225472;
      v26[2] = sub_100019BA4;
      v26[3] = &unk_10005D3D0;
      v27 = v8;
      v16 = v15;
      v28 = v16;
      v29 = &v30;
      v17 = sub_100004D58(v26);
      if (v17 || !v31[5])
      {
        v18 = *(qword_100071D00 + 8);
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          v19 = [v13 identifier];
          sub_10003A668(v19, v17, buf, v18);
        }
      }
    }

    else
    {
      v17 = *(qword_100071D00 + 8);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        v20 = [v7 identifier];
        sub_10003A6D0(v20, buf, v17);
      }
    }
  }

  v21 = [v31[5] externalIdentifierString];
  _Block_object_dispose(&v30, 8);

  return v21;
}

- (void)reloadMeIdentifiersForStore:(id)a3
{
  v4 = a3;
  v31 = CNContactIdentifierKey;
  v5 = [NSArray arrayWithObjects:&v31 count:1];
  v29 = 0;
  v6 = [v4 _ios_meContactWithKeysToFetch:v5 error:&v29];
  v7 = v29;
  if (!v6)
  {
    v8 = *(qword_100071D00 + 8);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "_ios_meContactWithKeysToFetch returned nil", buf, 2u);
    }
  }

  v9 = objc_alloc_init(NSMutableSet);
  v10 = [v6 linkedContacts];
  if (v10)
  {
    v11 = v10;
    v12 = [v6 linkedContacts];
    v13 = [v12 count];

    if (v13)
    {
      v26 = 0u;
      v27 = 0u;
      v24 = 0u;
      v25 = 0u;
      v14 = [v6 linkedContacts];
      v15 = [v14 countByEnumeratingWithState:&v24 objects:v30 count:16];
      if (v15)
      {
        v16 = v15;
        v23 = v7;
        v17 = *v25;
        do
        {
          for (i = 0; i != v16; i = i + 1)
          {
            if (*v25 != v17)
            {
              objc_enumerationMutation(v14);
            }

            v19 = [*(*(&v24 + 1) + 8 * i) identifier];
            [v9 addObject:v19];
          }

          v16 = [v14 countByEnumeratingWithState:&v24 objects:v30 count:16];
        }

        while (v16);
        v7 = v23;
      }

      goto LABEL_16;
    }
  }

  v20 = [v6 identifier];

  if (v20)
  {
    v14 = [v6 identifier];
    [v9 addObject:v14];
LABEL_16:
  }

  v21 = [v9 copy];
  meIdentifiers = self->_meIdentifiers;
  self->_meIdentifiers = v21;
}

@end