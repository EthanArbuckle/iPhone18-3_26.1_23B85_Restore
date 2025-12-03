@interface ABSAccountsManager
+ (BOOL)localContainerEnabled;
+ (id)_ensureAccountExistsWithExternalIdentifier:(id)identifier store:(id)store;
+ (id)_localContainer;
+ (id)primaryiCloudCardDAVAccountIdentifier;
+ (void)setPrimaryiCloudCardDAVAccountIdentifier:(id)identifier;
@end

@implementation ABSAccountsManager

+ (id)_ensureAccountExistsWithExternalIdentifier:(id)identifier store:(id)store
{
  identifierCopy = identifier;
  storeCopy = store;
  v7 = [CNAccount predicateForAccountWithExternalIdentifier:identifierCopy];
  v19 = 0;
  v8 = [storeCopy accountsMatchingPredicate:v7 error:&v19];
  v9 = v19;
  if (v9)
  {
    v10 = v9;
    v11 = *(qword_100071D00 + 8);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_10003B604(identifierCopy, v10, v11);
    }

    v12 = 0;
  }

  else
  {
    firstObject = [v8 firstObject];
    if (firstObject)
    {
      v12 = firstObject;
      v10 = 0;
    }

    else
    {
      v12 = [[CNAccount alloc] initWithExternalIdentifier:identifierCopy];
      v14 = +[CNSaveRequest abs_new];
      [v14 addAccount:v12];
      v15 = *(qword_100071D00 + 8);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543618;
        v21 = identifierCopy;
        v22 = 2112;
        v23 = v12;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Didn't find an account for account external ID [%{public}@]; created one: %@", buf, 0x16u);
      }

      v18 = 0;
      v16 = [storeCopy ABSexecuteSaveRequest:v14 error:&v18];
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
  aa_primaryAppleAccount = [v2 aa_primaryAppleAccount];
  v4 = aa_primaryAppleAccount;
  if (aa_primaryAppleAccount)
  {
    childCardDAVAccountIdentifier = [aa_primaryAppleAccount childCardDAVAccountIdentifier];
    if (!childCardDAVAccountIdentifier && os_log_type_enabled(*(qword_100071D00 + 8), OS_LOG_TYPE_ERROR))
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

    childCardDAVAccountIdentifier = 0;
  }

  return childCardDAVAccountIdentifier;
}

+ (void)setPrimaryiCloudCardDAVAccountIdentifier:(id)identifier
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
    firstObject = [v22[5] firstObject];
  }

  else
  {
    if (os_log_type_enabled(*(qword_100071D00 + 8), OS_LOG_TYPE_ERROR))
    {
      sub_10003B7C0(v19);
    }

    firstObject = 0;
  }

  _Block_object_dispose(&v18, 8);
  _Block_object_dispose(&v21, 8);

  return firstObject;
}

+ (BOOL)localContainerEnabled
{
  _localContainer = [self _localContainer];
  isEnabled = [_localContainer isEnabled];

  return isEnabled;
}

@end