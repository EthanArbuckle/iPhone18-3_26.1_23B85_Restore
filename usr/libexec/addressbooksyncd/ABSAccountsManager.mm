@interface ABSAccountsManager
+ (BOOL)localContainerEnabled;
+ (id)_ensureAccountExistsWithExternalIdentifier:(id)a3 store:(id)a4;
+ (id)_localContainer;
+ (id)primaryiCloudCardDAVAccountIdentifier;
+ (void)setPrimaryiCloudCardDAVAccountIdentifier:(id)a3;
@end

@implementation ABSAccountsManager

+ (id)_ensureAccountExistsWithExternalIdentifier:(id)a3 store:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [CNAccount predicateForAccountWithExternalIdentifier:v5];
  v19 = 0;
  v8 = [v6 accountsMatchingPredicate:v7 error:&v19];
  v9 = v19;
  if (v9)
  {
    v10 = v9;
    v11 = *(qword_100071D00 + 8);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_10003B604(v5, v10, v11);
    }

    v12 = 0;
  }

  else
  {
    v13 = [v8 firstObject];
    if (v13)
    {
      v12 = v13;
      v10 = 0;
    }

    else
    {
      v12 = [[CNAccount alloc] initWithExternalIdentifier:v5];
      v14 = +[CNSaveRequest abs_new];
      [v14 addAccount:v12];
      v15 = *(qword_100071D00 + 8);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543618;
        v21 = v5;
        v22 = 2112;
        v23 = v12;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Didn't find an account for account external ID [%{public}@]; created one: %@", buf, 0x16u);
      }

      v18 = 0;
      v16 = [v6 ABSexecuteSaveRequest:v14 error:&v18];
      v10 = v18;
      if ((v16 & 1) == 0 && os_log_type_enabled(*(qword_100071D00 + 8), OS_LOG_TYPE_ERROR))
      {
        sub_10003B68C();
      }
    }
  }

  return v12;
}

+ (id)primaryiCloudCardDAVAccountIdentifier
{
  v2 = +[ACAccountStore defaultStore];
  v3 = [v2 aa_primaryAppleAccount];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 childCardDAVAccountIdentifier];
    if (!v5 && os_log_type_enabled(*(qword_100071D00 + 8), OS_LOG_TYPE_ERROR))
    {
      sub_10003B700();
    }
  }

  else
  {
    if (os_log_type_enabled(*(qword_100071D00 + 8), OS_LOG_TYPE_ERROR))
    {
      sub_10003B740();
    }

    v5 = 0;
  }

  return v5;
}

+ (void)setPrimaryiCloudCardDAVAccountIdentifier:(id)a3
{
  if (os_log_type_enabled(*(qword_100071D00 + 8), OS_LOG_TYPE_ERROR))
  {
    sub_10003B780();
  }
}

+ (id)_localContainer
{
  v2 = objc_alloc_init(CNContactStore);
  v3 = [CNContainer predicateForLocalContainerIncludingDisabled:1];
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = sub_10002F5D0;
  v25 = sub_10002F5E0;
  v26 = 0;
  v18 = 0;
  v19[0] = &v18;
  v19[1] = 0x3032000000;
  v19[2] = sub_10002F5D0;
  v19[3] = sub_10002F5E0;
  v20 = 0;
  v10 = _NSConcreteStackBlock;
  v11 = 3221225472;
  v12 = sub_10002F5E8;
  v13 = &unk_10005D920;
  v16 = &v21;
  v4 = v2;
  v14 = v4;
  v5 = v3;
  v15 = v5;
  v17 = &v18;
  v6 = sub_100004D58(&v10);
  v7 = v22[5];
  if (v7 && [v7 count] == 1)
  {
    v8 = [v22[5] firstObject];
  }

  else
  {
    if (os_log_type_enabled(*(qword_100071D00 + 8), OS_LOG_TYPE_ERROR))
    {
      sub_10003B7C0(v19);
    }

    v8 = 0;
  }

  _Block_object_dispose(&v18, 8);
  _Block_object_dispose(&v21, 8);

  return v8;
}

+ (BOOL)localContainerEnabled
{
  v2 = [a1 _localContainer];
  v3 = [v2 isEnabled];

  return v3;
}

@end