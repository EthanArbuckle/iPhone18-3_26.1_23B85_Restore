int main(int argc, const char **argv, const char **envp)
{
  v6 = objc_opt_class();
  v3 = [NSArray arrayWithObjects:&v6 count:1];
  v4 = [RMConfigurationSubscriberClient runConfigurationSubscriberClientWithApplicators:v3 publisherClass:objc_opt_class()];

  return v4;
}

void sub_1000012E8(id a1)
{
  qword_100021FF8 = os_log_create("com.apple.remotemanagementd", "accountAdapter");

  _objc_release_x1();
}

void sub_1000017BC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 objectForKeyedSubscript:@"RemoteManagementConfigurationIdentifier"];

  if (v4)
  {
    v5 = [v3 objectForKeyedSubscript:@"RemoteManagementPrimaryAccountIdentifier"];

    v6 = +[RMLog accountAdapter];
    v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG);
    if (v5)
    {
      if (v7)
      {
        sub_100012818(v3);
      }

      [*(a1 + 48) addObject:v3];
    }

    else
    {
      if (v7)
      {
        sub_1000128CC(v3);
      }

      v8 = *(a1 + 32);
      v9 = v3;
      v10 = [v9 objectForKeyedSubscript:@"RemoteManagementSourceIdentifier"];
      v11 = [v9 objectForKeyedSubscript:@"RemoteManagementConfigurationIdentifier"];

      v12 = [NSString stringWithFormat:@"%@-%@", v10, v11];

      [v8 setObject:v9 forKeyedSubscript:v12];
      v13 = *(a1 + 40);
      v14 = [v9 identifier];
      [v13 addObject:v14];
    }
  }
}

void sub_100001D84(uint64_t a1, int a2, void *a3)
{
  v6 = a3;
  if (a2)
  {
    v5 = *(a1 + 32);
    if (v5)
    {
      [*(a1 + 40) _unassignAssetReference:v5 scope:*(a1 + 56) error:0];
    }
  }

  (*(*(a1 + 48) + 16))();
}

void sub_10000234C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100002364(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10000237C(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  [*(a1 + 32) complete];
}

void sub_100002414(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, v9, OS_LOG_TYPE_DEBUG, a4, &a9, 0x16u);
}

void sub_100002478(id a1)
{
  qword_100022008 = os_log_create("com.apple.remotemanagementd", "accountApplicator");

  _objc_release_x1();
}

uint64_t sub_10000301C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100003034(uint64_t a1, void *a2, int a3, void *a4)
{
  v7 = a2;
  v8 = a4;
  if (v8)
  {
    v9 = +[RMLog accountApplicator];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_100012AC4(a1, v8, v9);
    }

    v10 = *(a1 + 40);
    v11 = [*(a1 + 32) declaration];
    v33[0] = _NSConcreteStackBlock;
    v33[1] = 3221225472;
    v33[2] = sub_100003304;
    v33[3] = &unk_10001C690;
    v12 = &v34;
    v34 = *(a1 + 48);
    [v10 configurationFailedToApply:v11 error:v8 completionHandler:v33];
  }

  else
  {
    v13 = *(*(*(a1 + 80) + 8) + 40);
    if (a3 && v13)
    {
      v14 = +[RMLog accountApplicator];
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        sub_100012B88(a1);
      }

      v15 = [*(a1 + 72) adapter];
      v16 = *(a1 + 88);
      v17 = *(*(*(a1 + 80) + 8) + 40);
      v24[0] = _NSConcreteStackBlock;
      v24[1] = 3221225472;
      v24[2] = sub_10000330C;
      v24[3] = &unk_10001C6E0;
      v12 = &v25;
      v25 = 0;
      v26 = *(a1 + 56);
      v18 = *(a1 + 64);
      v19 = *(a1 + 72);
      v27 = v18;
      v28 = v19;
      v29 = *(a1 + 32);
      v30 = v7;
      v31 = *(a1 + 48);
      v32 = *(a1 + 40);
      [v15 removeAccount:v17 scope:v16 completionHandler:v24];
    }

    else
    {
      v20 = *(a1 + 72);
      v21 = *(a1 + 32);
      v22[0] = _NSConcreteStackBlock;
      v22[1] = 3221225472;
      v22[2] = sub_1000034BC;
      v22[3] = &unk_10001C6B8;
      v12 = &v23;
      v23 = *(a1 + 48);
      [v20 _createAccountIfNeededAndApplyProperties:v13 configuration:v21 properties:v7 completionHandler:v22];
    }
  }
}

void sub_10000330C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = +[RMLog accountApplicator];
  v6 = v5;
  if (v4)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_100012BF4(a1);
    }

    v7 = *(a1 + 88);
    v8 = [*(a1 + 64) declaration];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_1000034B4;
    v13[3] = &unk_10001C690;
    v9 = &v14;
    v14 = *(a1 + 80);
    [v7 configurationFailedToApply:v8 error:v3 completionHandler:v13];
  }

  else
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      sub_100012C70(a1);
    }

    v10 = *(a1 + 56);
    v11 = *(a1 + 64);
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_1000034AC;
    v15[3] = &unk_10001C6B8;
    v9 = &v16;
    v12 = *(a1 + 72);
    v16 = *(a1 + 80);
    [v10 _createAccountIfNeededAndApplyProperties:0 configuration:v11 properties:v12 completionHandler:v15];
  }
}

void sub_1000034C4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[RMLog accountApplicator];
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_100012CDC(a1);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    sub_100012D58(a1);
  }

  dispatch_group_leave(*(a1 + 48));
}

void sub_100003A64(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) store];
  v5 = +[RMLog accountApplicator];
  v6 = v5;
  if (v3)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_100012F7C(a1);
    }

    v7 = [*(a1 + 32) declaration];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_100003C24;
    v9[3] = &unk_10001C780;
    v8 = &v10;
    v10 = *(a1 + 48);
    [v4 configurationFailedToApply:v7 error:v3 completionHandler:v9];
  }

  else
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      sub_100013000(a1, v6);
    }

    v7 = [*(a1 + 32) declaration];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_100003C14;
    v11[3] = &unk_10001C780;
    v8 = &v12;
    v12 = *(a1 + 48);
    [v4 configurationSuccessfullyApplied:v7 completionHandler:v11];
  }
}

void sub_100003C70(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 0x16u);
}

void sub_100003CD0(id a1)
{
  qword_100022018 = os_log_create("com.apple.remotemanagementd", "accountStatus");

  _objc_release_x1();
}

void sub_100004218(id a1)
{
  qword_100022028 = os_log_create("com.apple.remotemanagementd", "accountStatusAdapter");

  _objc_release_x1();
}

void sub_1000043C4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 objectForKeyedSubscript:@"RemoteManagementSourceIdentifier"];
  if ([v4 isEqualToString:*(a1 + 32)])
  {
    v5 = +[RMLog accountStatusAdapter];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      sub_10001311C(v3, v5);
    }

    [*(a1 + 40) addObject:v3];
  }
}

void sub_100004630(id a1)
{
  qword_100022038 = os_log_create("com.apple.remotemanagementd", "accountStatusHandler");

  _objc_release_x1();
}

void sub_1000046EC(id a1)
{
  v1 = +[RMModelAccountCalDAVDeclaration registeredIdentifier];
  v10[0] = v1;
  v11[0] = objc_opt_class();
  v2 = +[RMModelAccountCardDAVDeclaration registeredIdentifier];
  v10[1] = v2;
  v11[1] = objc_opt_class();
  v3 = +[RMModelAccountExchangeDeclaration registeredIdentifier];
  v10[2] = v3;
  v11[2] = objc_opt_class();
  v4 = +[RMModelAccountGoogleDeclaration registeredIdentifier];
  v10[3] = v4;
  v11[3] = objc_opt_class();
  v5 = +[RMModelAccountLDAPDeclaration registeredIdentifier];
  v10[4] = v5;
  v11[4] = objc_opt_class();
  v6 = +[RMModelAccountMailDeclaration registeredIdentifier];
  v10[5] = v6;
  v11[5] = objc_opt_class();
  v7 = +[RMModelAccountSubscribedCalendarDeclaration registeredIdentifier];
  v10[6] = v7;
  v11[6] = objc_opt_class();
  v8 = [NSDictionary dictionaryWithObjects:v11 forKeys:v10 count:7];
  v9 = qword_100022048;
  qword_100022048 = v8;
}

void sub_100004A40(id a1)
{
  qword_100022058 = os_log_create("com.apple.remotemanagementd", "accountStatusHandlerCalDAV");

  _objc_release_x1();
}

void sub_100004CB8(id a1)
{
  qword_100022068 = os_log_create("com.apple.remotemanagementd", "accountStatusHandlerCardDAV");

  _objc_release_x1();
}

void sub_100004EB0(id a1)
{
  qword_100022078 = os_log_create("com.apple.remotemanagementd", "accountStatusHandlerExchange");

  _objc_release_x1();
}

void sub_1000051DC(id a1)
{
  qword_100022088 = os_log_create("com.apple.remotemanagementd", "accountStatusHandlerGoogle");

  _objc_release_x1();
}

void sub_100005460(id a1)
{
  qword_100022098 = os_log_create("com.apple.remotemanagementd", "accountStatusHandlerLDAP");

  _objc_release_x1();
}

void sub_10000569C(id a1)
{
  qword_1000220A8 = os_log_create("com.apple.remotemanagementd", "accountStatusHandlerMail");

  _objc_release_x1();
}

void sub_100005B48(id a1)
{
  qword_1000220B8 = os_log_create("com.apple.remotemanagementd", "accountStatusHandlerSubscribedCalendar");

  _objc_release_x1();
}

void sub_100005D68(id a1)
{
  qword_1000220C8 = os_log_create("com.apple.remotemanagementd", "accountTransformer");

  _objc_release_x1();
}

void sub_100005E18(id a1)
{
  v1 = +[RMModelAccountCalDAVDeclaration registeredIdentifier];
  v10[0] = v1;
  v11[0] = objc_opt_class();
  v2 = +[RMModelAccountCardDAVDeclaration registeredIdentifier];
  v10[1] = v2;
  v11[1] = objc_opt_class();
  v3 = +[RMModelAccountExchangeDeclaration registeredIdentifier];
  v10[2] = v3;
  v11[2] = objc_opt_class();
  v4 = +[RMModelAccountGoogleDeclaration registeredIdentifier];
  v10[3] = v4;
  v11[3] = objc_opt_class();
  v5 = +[RMModelAccountLDAPDeclaration registeredIdentifier];
  v10[4] = v5;
  v11[4] = objc_opt_class();
  v6 = +[RMModelAccountMailDeclaration registeredIdentifier];
  v10[5] = v6;
  v11[5] = objc_opt_class();
  v7 = +[RMModelAccountSubscribedCalendarDeclaration registeredIdentifier];
  v10[6] = v7;
  v11[6] = objc_opt_class();
  v8 = [NSDictionary dictionaryWithObjects:v11 forKeys:v10 count:7];
  v9 = qword_1000220D8;
  qword_1000220D8 = v8;
}

void sub_1000065DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000065F4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10000660C(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  v6 = +[RMLog accountTransformer];
  v7 = v6;
  if (a2)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      sub_1000133D0(a1, v7);
    }
  }

  else
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_100013344(a1, v5, v7);
    }

    v8 = *(*(a1 + 48) + 8);
    v9 = v5;
    v7 = *(v8 + 40);
    *(v8 + 40) = v9;
  }

  [*(a1 + 40) complete];
}

void sub_1000068E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100006900(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (![(__CFString *)v5 isEqualToString:@"_remotemanagement_active"])
  {
    if ([(__CFString *)v5 isEqualToString:@"_remotemanagement_accountDescription"])
    {
      [*(a1 + 32) setAccountDescription:v6];
      goto LABEL_12;
    }

    if ([(__CFString *)v5 isEqualToString:@"_remotemanagement_accountDefaultDescription"])
    {
      v7 = *(a1 + 32);
      v8 = @"RemoteManagementDefaultDescription";
LABEL_10:
      v10 = v6;
LABEL_11:
      [v7 setObject:v10 forKeyedSubscript:v8];
      goto LABEL_12;
    }

    if ([(__CFString *)v5 isEqualToString:@"_remotemanagement_authenticationScheme"])
    {
      v7 = *(a1 + 32);
      v9 = &ACAccountPropertyAuthenticationScheme;
    }

    else
    {
      if ([(__CFString *)v5 isEqualToString:@"_remotemanagement_credential"])
      {
        [*(a1 + 32) setCredential:v6];
        goto LABEL_12;
      }

      if (![(__CFString *)v5 isEqualToString:@"_remotemanagement_emailAddress"])
      {
        if ([(__CFString *)v5 isEqualToString:@"_remotemanagement_enabledDataclasses"])
        {
          v11 = [*(a1 + 40) objectForKeyedSubscript:@"_remotemanagement_provisionedDataclasses"];
          v12 = [v11 mutableCopy];

          v39 = 0u;
          v40 = 0u;
          v37 = 0u;
          v38 = 0u;
          v13 = [*(a1 + 40) objectForKeyedSubscript:@"_remotemanagement_enabledDataclasses"];
          v14 = [v13 countByEnumeratingWithState:&v37 objects:v43 count:16];
          if (v14)
          {
            v15 = v14;
            v16 = *v38;
            do
            {
              for (i = 0; i != v15; i = i + 1)
              {
                if (*v38 != v16)
                {
                  objc_enumerationMutation(v13);
                }

                v18 = *(*(&v37 + 1) + 8 * i);
                [*(a1 + 32) setEnabled:1 forDataclass:v18];
                [v12 removeObject:v18];
              }

              v15 = [v13 countByEnumeratingWithState:&v37 objects:v43 count:16];
            }

            while (v15);
          }

          v35 = 0u;
          v36 = 0u;
          v33 = 0u;
          v34 = 0u;
          v19 = v12;
          v20 = [v19 countByEnumeratingWithState:&v33 objects:v42 count:16];
          if (v20)
          {
            v21 = v20;
            v22 = *v34;
            do
            {
              for (j = 0; j != v21; j = j + 1)
              {
                if (*v34 != v22)
                {
                  objc_enumerationMutation(v19);
                }

                [*(a1 + 32) setEnabled:0 forDataclass:*(*(&v33 + 1) + 8 * j)];
              }

              v21 = [v19 countByEnumeratingWithState:&v33 objects:v42 count:16];
            }

            while (v21);
          }
        }

        else
        {
          if ([(__CFString *)v5 isEqualToString:@"_remotemanagement_enableCalendarsUserOverridable"])
          {
            v7 = *(a1 + 32);
            v9 = &kMCAccountEnableCalendarsUserOverridableKey;
            goto LABEL_9;
          }

          if ([(__CFString *)v5 isEqualToString:@"_remotemanagement_enableContactsUserOverridable"])
          {
            v7 = *(a1 + 32);
            v9 = &kMCAccountEnableContactsUserOverridableKey;
            goto LABEL_9;
          }

          if ([(__CFString *)v5 isEqualToString:@"_remotemanagement_enableMailUserOverridable"])
          {
            v7 = *(a1 + 32);
            v9 = &kMCAccountEnableMailUserOverridableKey;
            goto LABEL_9;
          }

          if ([(__CFString *)v5 isEqualToString:@"_remotemanagement_enableNotesUserOverridable"])
          {
            v7 = *(a1 + 32);
            v9 = &kMCAccountEnableNotesUserOverridableKey;
            goto LABEL_9;
          }

          if ([(__CFString *)v5 isEqualToString:@"_remotemanagement_enableRemindersUserOverridable"])
          {
            v7 = *(a1 + 32);
            v9 = &kMCAccountEnableRemindersUserOverridableKey;
            goto LABEL_9;
          }

          if ([(__CFString *)v5 isEqualToString:@"_remotemanagement_fullUserName"])
          {
            v7 = *(a1 + 32);
            v9 = &ACAccountPropertyFullName;
            goto LABEL_9;
          }

          if ([(__CFString *)v5 isEqualToString:@"_remotemanagement_hostname"])
          {
            v7 = *(a1 + 32);
            v9 = &ACAccountPropertyHostname;
            goto LABEL_9;
          }

          if ([(__CFString *)v5 isEqualToString:@"_remotemanagement_imapServerPathPrefixKey"])
          {
            v7 = *(a1 + 32);
            v9 = &ACAccountPropertyServerPath;
            goto LABEL_9;
          }

          if ([(__CFString *)v5 isEqualToString:@"_remotemanagement_managingOwnerIdentifierKey"])
          {
            [*(a1 + 32) setManagingOwnerIdentifier:v6];
            goto LABEL_12;
          }

          if ([(__CFString *)v5 isEqualToString:@"_remotemanagement_managingSourceNameKey"])
          {
            [*(a1 + 32) setManagingSourceName:v6];
            goto LABEL_12;
          }

          if ([(__CFString *)v5 isEqualToString:@"_remotemanagement_isManagedKey"])
          {
            v7 = *(a1 + 32);
            v8 = @"MCAccountIsManaged";
            goto LABEL_10;
          }

          if ([(__CFString *)v5 isEqualToString:@"_remotemanagement_password"])
          {
            v24 = [ACAccountCredential credentialWithPassword:v6];
            [*(a1 + 32) setCredential:v24];

            [*(a1 + 32) setCredentialType:ACCredentialTypePassword];
            goto LABEL_12;
          }

          if ([(__CFString *)v5 isEqualToString:@"_remotemanagement_port"])
          {
            v7 = *(a1 + 32);
            v9 = &ACAccountPropertyPortNumber;
            goto LABEL_9;
          }

          if (![(__CFString *)v5 isEqualToString:@"_remotemanagement_provisionedDataclasses"])
          {
            if ([(__CFString *)v5 isEqualToString:@"_remotemanagement_shouldNeverUseSyncableCredentials"])
            {
              v7 = *(a1 + 32);
              v9 = &ACAccountPropertyShouldNeverUseSyncableCredential;
            }

            else
            {
              if ([(__CFString *)v5 isEqualToString:@"_remotemanagement_username"])
              {
                [*(a1 + 32) setUsername:v6];
                goto LABEL_12;
              }

              if (![(__CFString *)v5 isEqualToString:@"_remotemanagement_usessl"])
              {
                if (([(__CFString *)v5 hasPrefix:@"_remotemanagement_"]& 1) != 0)
                {
                  goto LABEL_12;
                }

                v7 = *(a1 + 32);
                v10 = v6;
                v8 = v5;
                goto LABEL_11;
              }

              v7 = *(a1 + 32);
              v9 = &ACAccountPropertySSLEnabled;
            }

            goto LABEL_9;
          }

          v31 = 0u;
          v32 = 0u;
          v29 = 0u;
          v30 = 0u;
          v19 = [*(a1 + 40) objectForKeyedSubscript:{@"_remotemanagement_provisionedDataclasses", 0}];
          v25 = [v19 countByEnumeratingWithState:&v29 objects:v41 count:16];
          if (v25)
          {
            v26 = v25;
            v27 = *v30;
            do
            {
              for (k = 0; k != v26; k = k + 1)
              {
                if (*v30 != v27)
                {
                  objc_enumerationMutation(v19);
                }

                [*(a1 + 32) setProvisioned:1 forDataclass:*(*(&v29 + 1) + 8 * k)];
              }

              v26 = [v19 countByEnumeratingWithState:&v29 objects:v41 count:16];
            }

            while (v26);
          }
        }

        goto LABEL_12;
      }

      v7 = *(a1 + 32);
      v9 = &ACAccountPropertyIdentityEmailAddress;
    }

LABEL_9:
    v8 = *v9;
    goto LABEL_10;
  }

  [*(a1 + 32) setActive:{objc_msgSend(v6, "BOOLValue")}];
LABEL_12:
}

void sub_100006F40(uint64_t a1)
{
  v2 = +[RMLog accountTransformer];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    sub_10001344C(a1, v2);
  }

  v3 = [*(a1 + 40) saveAccount:*(a1 + 48) accountStore:*(a1 + 56)];
  v4 = *(*(a1 + 64) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

void sub_1000075C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_1000075EC(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v12 = v5;

  v9 = *(*(a1 + 48) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
  v11 = v6;

  [*(a1 + 32) complete];
}

void sub_100007840(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_100007864(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v12 = v5;

  v9 = *(*(a1 + 48) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
  v11 = v6;

  [*(a1 + 32) complete];
}

void sub_100007AC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_100007AE4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v12 = v5;

  v9 = *(*(a1 + 48) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
  v11 = v6;

  [*(a1 + 32) complete];
}

void sub_100007BC8(id a1)
{
  qword_1000220E8 = os_log_create("com.apple.remotemanagementd", "accountTransformerCalDAV");

  _objc_release_x1();
}

void sub_100007D40(uint64_t a1, void *a2)
{
  v3 = [a2 mutableCopy];
  v4 = [*(a1 + 32) declaration];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [v4 payloadAuthenticationCredentialsAssetReference];
    v6 = *(a1 + 32);
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_100007F00;
    v11[3] = &unk_10001CC78;
    v7 = *(a1 + 64);
    v8 = *(a1 + 40);
    v16 = v7;
    v11[4] = v8;
    v12 = v3;
    v13 = *(a1 + 48);
    v14 = v4;
    v15 = *(a1 + 56);
    [RMAssetResolverController resolveUserNameAndPasswordAsset:v6 assetIdentifier:v5 completionHandler:v11];
  }

  else
  {
    v9 = +[RMLog accountTransformerCalDAV];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_1000134DC(v4, v9);
    }

    v10 = *(a1 + 64);
    v5 = +[RMErrorUtilities createInternalError];
    (*(v10 + 16))(v10, 0, 0, v5);
  }
}

void sub_100007F00(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v24 = v5;
  if (a3)
  {
    (*(*(a1 + 72) + 16))();
  }

  else
  {
    v6 = [v5 payloadUserName];
    v7 = [v24 payloadPassword];
    v8 = *(a1 + 32);
    v9 = *(a1 + 40);
    v10 = *(a1 + 48);
    v11 = [*(a1 + 56) payloadVisibleName];
    if (v11)
    {
      [v8 addAccountDescriptionToProperties:v9 account:v10 description:v11];
    }

    else
    {
      v12 = [*(a1 + 56) payloadHostName];
      [v8 addAccountDescriptionToProperties:v9 account:v10 description:v12];
    }

    [*(a1 + 40) setObject:ACAccountTypeIdentifierCalDAV forKeyedSubscript:@"RemoteManagementAccountType"];
    v13 = [*(a1 + 56) payloadHostName];
    [*(a1 + 40) setObject:v13 forKeyedSubscript:@"_remotemanagement_hostname"];

    if (v7)
    {
      [*(a1 + 40) setObject:v7 forKeyedSubscript:@"_remotemanagement_password"];
      [*(a1 + 40) setObject:&__kCFBooleanTrue forKeyedSubscript:@"_remotemanagement_shouldNeverUseSyncableCredentials"];
    }

    v14 = [*(a1 + 56) payloadPort];
    if (v14)
    {
      [*(a1 + 40) setObject:v14 forKeyedSubscript:@"_remotemanagement_port"];
    }

    v15 = [*(a1 + 56) payloadPath];
    if (v15)
    {
      v16 = [NSURL URLWithString:v15];
      if (v16)
      {
        v17 = v16;
        [*(a1 + 40) setObject:v16 forKeyedSubscript:@"_remotemanagement_principalURL"];
      }
    }

    v18 = *(a1 + 64);
    v19 = [*(a1 + 40) objectForKeyedSubscript:@"RemoteManagementAccountType"];
    v20 = [v18 accountTypeWithAccountTypeIdentifier:v19];
    v21 = [v20 supportedDataclasses];
    [*(a1 + 40) setObject:v21 forKeyedSubscript:@"_remotemanagement_provisionedDataclasses"];

    v22 = *(a1 + 48);
    if (v22)
    {
      [v22 enabledDataclasses];
    }

    else
    {
      [*(a1 + 40) objectForKeyedSubscript:@"_remotemanagement_provisionedDataclasses"];
    }
    v23 = ;
    [*(a1 + 40) setObject:v23 forKeyedSubscript:@"_remotemanagement_enabledDataclasses"];

    [*(a1 + 40) setObject:v6 forKeyedSubscript:@"_remotemanagement_username"];
    [*(a1 + 40) setObject:&__kCFBooleanTrue forKeyedSubscript:@"_remotemanagement_usessl"];
    (*(*(a1 + 72) + 16))(*(a1 + 72), *(a1 + 40), [*(a1 + 32) changesRequireRecreation:*(a1 + 48) properties:*(a1 + 40)], 0);
  }
}

void sub_100008474(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10000848C(id *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (![(__CFString *)v5 isEqualToString:@"_remotemanagement_accountDescription"])
  {
    if ([(__CFString *)v5 isEqualToString:@"_remotemanagement_accountDefaultDescription"])
    {
      v7 = a1[5];
      v8 = &RMAccountPropertyKeyDefaultDescription;
LABEL_5:
      v9 = *v8;
LABEL_6:
      v10 = v6;
LABEL_7:
      [v7 setObject:v10 forKeyedSubscript:v9];
      goto LABEL_27;
    }

    if ([(__CFString *)v5 isEqualToString:@"_remotemanagement_enabledDataclasses"])
    {
      v11 = [a1[6] objectForKeyedSubscript:@"_remotemanagement_provisionedDataclasses"];
      v12 = [v11 mutableCopy];

      v39 = 0u;
      v40 = 0u;
      v37 = 0u;
      v38 = 0u;
      v13 = [a1[6] objectForKeyedSubscript:@"_remotemanagement_enabledDataclasses"];
      v14 = [v13 countByEnumeratingWithState:&v37 objects:v43 count:16];
      if (v14)
      {
        v15 = v14;
        v16 = *v38;
        do
        {
          for (i = 0; i != v15; i = i + 1)
          {
            if (*v38 != v16)
            {
              objc_enumerationMutation(v13);
            }

            v18 = *(*(&v37 + 1) + 8 * i);
            [a1[5] setEnabled:1 forDataclass:v18];
            [v12 removeObject:v18];
          }

          v15 = [v13 countByEnumeratingWithState:&v37 objects:v43 count:16];
        }

        while (v15);
      }

      v35 = 0u;
      v36 = 0u;
      v33 = 0u;
      v34 = 0u;
      v19 = v12;
      v20 = [v19 countByEnumeratingWithState:&v33 objects:v42 count:16];
      if (v20)
      {
        v21 = v20;
        v22 = *v34;
        do
        {
          for (j = 0; j != v21; j = j + 1)
          {
            if (*v34 != v22)
            {
              objc_enumerationMutation(v19);
            }

            [a1[5] setEnabled:0 forDataclass:*(*(&v33 + 1) + 8 * j)];
          }

          v21 = [v19 countByEnumeratingWithState:&v33 objects:v42 count:16];
        }

        while (v21);
      }
    }

    else
    {
      if ([(__CFString *)v5 isEqualToString:@"_remotemanagement_hostname"])
      {
        [a1[4] setHost:v6];
        goto LABEL_27;
      }

      if ([(__CFString *)v5 isEqualToString:@"_remotemanagement_isManagedKey"])
      {
        v7 = a1[5];
        v9 = @"MCAccountIsManaged";
        goto LABEL_6;
      }

      if ([(__CFString *)v5 isEqualToString:@"_remotemanagement_managingOwnerIdentifierKey"])
      {
        [a1[5] setManagingOwnerIdentifier:v6];
        goto LABEL_27;
      }

      if ([(__CFString *)v5 isEqualToString:@"_remotemanagement_managingSourceNameKey"])
      {
        [a1[5] setManagingSourceName:v6];
        goto LABEL_27;
      }

      if ([(__CFString *)v5 isEqualToString:@"_remotemanagement_password"])
      {
        [a1[4] setPassword:v6];
        goto LABEL_27;
      }

      if ([(__CFString *)v5 isEqualToString:@"_remotemanagement_port"])
      {
        [a1[4] setPort:{objc_msgSend(v6, "integerValue")}];
        goto LABEL_27;
      }

      if ([(__CFString *)v5 isEqualToString:@"_remotemanagement_principalURL"])
      {
        [a1[4] setPrincipalURL:v6];
        goto LABEL_27;
      }

      if (![(__CFString *)v5 isEqualToString:@"_remotemanagement_provisionedDataclasses"])
      {
        if (![(__CFString *)v5 isEqualToString:@"_remotemanagement_shouldNeverUseSyncableCredentials"])
        {
          if ([(__CFString *)v5 isEqualToString:@"_remotemanagement_username"])
          {
            [a1[4] setUsername:v6];
            goto LABEL_27;
          }

          if ([(__CFString *)v5 isEqualToString:@"_remotemanagement_usessl"])
          {
            [a1[4] setUseSSL:v6 != 0];
            goto LABEL_27;
          }

          if (([(__CFString *)v5 hasPrefix:@"_remotemanagement_"]& 1) != 0)
          {
            goto LABEL_27;
          }

          v28 = ACAccountPropertyPersonaIdentifier;
          if ([(__CFString *)v5 isEqualToString:ACAccountPropertyPersonaIdentifier])
          {
            [a1[4] setAccountProperty:v6 forKey:v28];
            goto LABEL_27;
          }

          v7 = a1[5];
          v10 = v6;
          v9 = v5;
          goto LABEL_7;
        }

        v7 = a1[5];
        v8 = &ACAccountPropertyShouldNeverUseSyncableCredential;
        goto LABEL_5;
      }

      v31 = 0u;
      v32 = 0u;
      v29 = 0u;
      v30 = 0u;
      v19 = [a1[6] objectForKeyedSubscript:{@"_remotemanagement_provisionedDataclasses", 0}];
      v24 = [v19 countByEnumeratingWithState:&v29 objects:v41 count:16];
      if (v24)
      {
        v25 = v24;
        v26 = *v30;
        do
        {
          for (k = 0; k != v25; k = k + 1)
          {
            if (*v30 != v26)
            {
              objc_enumerationMutation(v19);
            }

            [a1[5] setProvisioned:1 forDataclass:*(*(&v29 + 1) + 8 * k)];
          }

          v25 = [v19 countByEnumeratingWithState:&v29 objects:v41 count:16];
        }

        while (v25);
      }
    }

    goto LABEL_27;
  }

  [a1[4] setAccountDescription:v6];
LABEL_27:
}

uint64_t sub_1000089A8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1000089C0(uint64_t a1)
{
  v2 = +[RMLog accountTransformerCalDAV];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    sub_10001344C(a1, v2);
  }

  v3 = [*(a1 + 40) saveAccount:*(a1 + 48) accountStore:*(a1 + 56)];
  v4 = *(*(a1 + 64) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

void sub_100008F1C(id a1)
{
  qword_1000220F8 = os_log_create("com.apple.remotemanagementd", "accountTransformerCardDAV");

  _objc_release_x1();
}

void sub_100009094(uint64_t a1, void *a2)
{
  v3 = [a2 mutableCopy];
  v4 = [*(a1 + 32) declaration];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [v4 payloadAuthenticationCredentialsAssetReference];
    v6 = *(a1 + 32);
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_100009254;
    v11[3] = &unk_10001CC78;
    v7 = *(a1 + 64);
    v8 = *(a1 + 40);
    v16 = v7;
    v11[4] = v8;
    v12 = v3;
    v13 = *(a1 + 48);
    v14 = v4;
    v15 = *(a1 + 56);
    [RMAssetResolverController resolveUserNameAndPasswordAsset:v6 assetIdentifier:v5 completionHandler:v11];
  }

  else
  {
    v9 = +[RMLog accountTransformerCardDAV];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_1000134DC(v4, v9);
    }

    v10 = *(a1 + 64);
    v5 = +[RMErrorUtilities createInternalError];
    (*(v10 + 16))(v10, 0, 0, v5);
  }
}

void sub_100009254(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v24 = v5;
  if (a3)
  {
    (*(*(a1 + 72) + 16))();
  }

  else
  {
    v6 = [v5 payloadUserName];
    v7 = [v24 payloadPassword];
    v8 = *(a1 + 32);
    v9 = *(a1 + 40);
    v10 = *(a1 + 48);
    v11 = [*(a1 + 56) payloadVisibleName];
    if (v11)
    {
      [v8 addAccountDescriptionToProperties:v9 account:v10 description:v11];
    }

    else
    {
      v12 = [*(a1 + 56) payloadHostName];
      [v8 addAccountDescriptionToProperties:v9 account:v10 description:v12];
    }

    [*(a1 + 40) setObject:ACAccountTypeIdentifierCardDAV forKeyedSubscript:@"RemoteManagementAccountType"];
    v13 = [*(a1 + 56) payloadHostName];
    [*(a1 + 40) setObject:v13 forKeyedSubscript:@"_remotemanagement_hostname"];

    if (v7)
    {
      [*(a1 + 40) setObject:v7 forKeyedSubscript:@"_remotemanagement_password"];
      [*(a1 + 40) setObject:&__kCFBooleanTrue forKeyedSubscript:@"_remotemanagement_shouldNeverUseSyncableCredentials"];
    }

    v14 = [*(a1 + 56) payloadPort];
    if (v14)
    {
      [*(a1 + 40) setObject:v14 forKeyedSubscript:@"_remotemanagement_port"];
    }

    v15 = [*(a1 + 56) payloadPath];
    if (v15)
    {
      v16 = [NSURL URLWithString:v15];
      if (v16)
      {
        v17 = v16;
        [*(a1 + 40) setObject:v16 forKeyedSubscript:@"_remotemanagement_principalURL"];
      }
    }

    v18 = *(a1 + 64);
    v19 = [*(a1 + 40) objectForKeyedSubscript:@"RemoteManagementAccountType"];
    v20 = [v18 accountTypeWithAccountTypeIdentifier:v19];
    v21 = [v20 supportedDataclasses];
    [*(a1 + 40) setObject:v21 forKeyedSubscript:@"_remotemanagement_provisionedDataclasses"];

    v22 = *(a1 + 48);
    if (v22)
    {
      [v22 enabledDataclasses];
    }

    else
    {
      [*(a1 + 40) objectForKeyedSubscript:@"_remotemanagement_provisionedDataclasses"];
    }
    v23 = ;
    [*(a1 + 40) setObject:v23 forKeyedSubscript:@"_remotemanagement_enabledDataclasses"];

    [*(a1 + 40) setObject:v6 forKeyedSubscript:@"_remotemanagement_username"];
    [*(a1 + 40) setObject:&__kCFBooleanTrue forKeyedSubscript:@"_remotemanagement_usessl"];
    (*(*(a1 + 72) + 16))(*(a1 + 72), *(a1 + 40), [*(a1 + 32) changesRequireRecreation:*(a1 + 48) properties:*(a1 + 40)], 0);
  }
}

void sub_1000097C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000097E0(id *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (![(__CFString *)v5 isEqualToString:@"_remotemanagement_accountDescription"])
  {
    if ([(__CFString *)v5 isEqualToString:@"_remotemanagement_accountDefaultDescription"])
    {
      v7 = a1[5];
      v8 = &RMAccountPropertyKeyDefaultDescription;
LABEL_5:
      v9 = *v8;
LABEL_6:
      v10 = v6;
LABEL_7:
      [v7 setObject:v10 forKeyedSubscript:v9];
      goto LABEL_27;
    }

    if ([(__CFString *)v5 isEqualToString:@"_remotemanagement_enabledDataclasses"])
    {
      v11 = [a1[6] objectForKeyedSubscript:@"_remotemanagement_provisionedDataclasses"];
      v12 = [v11 mutableCopy];

      v39 = 0u;
      v40 = 0u;
      v37 = 0u;
      v38 = 0u;
      v13 = [a1[6] objectForKeyedSubscript:@"_remotemanagement_enabledDataclasses"];
      v14 = [v13 countByEnumeratingWithState:&v37 objects:v43 count:16];
      if (v14)
      {
        v15 = v14;
        v16 = *v38;
        do
        {
          for (i = 0; i != v15; i = i + 1)
          {
            if (*v38 != v16)
            {
              objc_enumerationMutation(v13);
            }

            v18 = *(*(&v37 + 1) + 8 * i);
            [a1[5] setEnabled:1 forDataclass:v18];
            [v12 removeObject:v18];
          }

          v15 = [v13 countByEnumeratingWithState:&v37 objects:v43 count:16];
        }

        while (v15);
      }

      v35 = 0u;
      v36 = 0u;
      v33 = 0u;
      v34 = 0u;
      v19 = v12;
      v20 = [v19 countByEnumeratingWithState:&v33 objects:v42 count:16];
      if (v20)
      {
        v21 = v20;
        v22 = *v34;
        do
        {
          for (j = 0; j != v21; j = j + 1)
          {
            if (*v34 != v22)
            {
              objc_enumerationMutation(v19);
            }

            [a1[5] setEnabled:0 forDataclass:*(*(&v33 + 1) + 8 * j)];
          }

          v21 = [v19 countByEnumeratingWithState:&v33 objects:v42 count:16];
        }

        while (v21);
      }
    }

    else
    {
      if ([(__CFString *)v5 isEqualToString:@"_remotemanagement_hostname"])
      {
        [a1[4] setHost:v6];
        goto LABEL_27;
      }

      if ([(__CFString *)v5 isEqualToString:@"_remotemanagement_isManagedKey"])
      {
        v7 = a1[5];
        v9 = @"MCAccountIsManaged";
        goto LABEL_6;
      }

      if ([(__CFString *)v5 isEqualToString:@"_remotemanagement_managingOwnerIdentifierKey"])
      {
        [a1[5] setManagingOwnerIdentifier:v6];
        goto LABEL_27;
      }

      if ([(__CFString *)v5 isEqualToString:@"_remotemanagement_managingSourceNameKey"])
      {
        [a1[5] setManagingSourceName:v6];
        goto LABEL_27;
      }

      if ([(__CFString *)v5 isEqualToString:@"_remotemanagement_password"])
      {
        [a1[4] setPassword:v6];
        goto LABEL_27;
      }

      if ([(__CFString *)v5 isEqualToString:@"_remotemanagement_port"])
      {
        [a1[4] setPort:{objc_msgSend(v6, "integerValue")}];
        goto LABEL_27;
      }

      if ([(__CFString *)v5 isEqualToString:@"_remotemanagement_principalURL"])
      {
        [a1[4] setPrincipalURL:v6];
        goto LABEL_27;
      }

      if (![(__CFString *)v5 isEqualToString:@"_remotemanagement_provisionedDataclasses"])
      {
        if (![(__CFString *)v5 isEqualToString:@"_remotemanagement_shouldNeverUseSyncableCredentials"])
        {
          if ([(__CFString *)v5 isEqualToString:@"_remotemanagement_username"])
          {
            [a1[4] setUsername:v6];
            goto LABEL_27;
          }

          if ([(__CFString *)v5 isEqualToString:@"_remotemanagement_usessl"])
          {
            [a1[4] setUseSSL:v6 != 0];
            goto LABEL_27;
          }

          if (([(__CFString *)v5 hasPrefix:@"_remotemanagement_"]& 1) != 0)
          {
            goto LABEL_27;
          }

          v28 = ACAccountPropertyPersonaIdentifier;
          if ([(__CFString *)v5 isEqualToString:ACAccountPropertyPersonaIdentifier])
          {
            [a1[4] setAccountProperty:v6 forKey:v28];
            goto LABEL_27;
          }

          v7 = a1[5];
          v10 = v6;
          v9 = v5;
          goto LABEL_7;
        }

        v7 = a1[5];
        v8 = &ACAccountPropertyShouldNeverUseSyncableCredential;
        goto LABEL_5;
      }

      v31 = 0u;
      v32 = 0u;
      v29 = 0u;
      v30 = 0u;
      v19 = [a1[6] objectForKeyedSubscript:{@"_remotemanagement_provisionedDataclasses", 0}];
      v24 = [v19 countByEnumeratingWithState:&v29 objects:v41 count:16];
      if (v24)
      {
        v25 = v24;
        v26 = *v30;
        do
        {
          for (k = 0; k != v25; k = k + 1)
          {
            if (*v30 != v26)
            {
              objc_enumerationMutation(v19);
            }

            [a1[5] setProvisioned:1 forDataclass:*(*(&v29 + 1) + 8 * k)];
          }

          v25 = [v19 countByEnumeratingWithState:&v29 objects:v41 count:16];
        }

        while (v25);
      }
    }

    goto LABEL_27;
  }

  [a1[4] setAccountDescription:v6];
LABEL_27:
}

uint64_t sub_100009CFC(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100009D14(uint64_t a1)
{
  v2 = +[RMLog accountTransformerCardDAV];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    sub_10001344C(a1, v2);
  }

  v3 = [*(a1 + 40) saveAccount:*(a1 + 48) accountStore:*(a1 + 56)];
  v4 = *(*(a1 + 64) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

void sub_10000A270(id a1)
{
  qword_100022108 = os_log_create("com.apple.remotemanagementd", "accountTransformerExchange");

  _objc_release_x1();
}

void sub_10000A3E8(uint64_t a1, void *a2)
{
  v3 = [a2 mutableCopy];
  v4 = [*(a1 + 32) declaration];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [v4 payloadEnabledProtocolTypes];
    v6 = [v5 containsObject:@"EAS"];

    if (v6)
    {
      v7 = [v4 payloadUserIdentityAssetReference];
      v9 = *(a1 + 32);
      v8 = *(a1 + 40);
      v187 = 0;
      v10 = [v8 resolveUserIdentityAssetReference:v9 assetIdentifier:v7 error:&v187];
      v11 = v187;
      if (v11)
      {
        v12 = v11;
        (*(*(a1 + 64) + 16))();
LABEL_93:

        goto LABEL_94;
      }

      v15 = [v4 payloadAuthenticationCredentialsAssetReference];
      v17 = *(a1 + 32);
      v16 = *(a1 + 40);
      v186 = 0;
      v18 = [v16 resolveUserNameAndPasswordAssetReference:v17 assetIdentifier:v15 error:&v186];
      v19 = v186;
      if (v19)
      {
        v12 = v19;
        (*(*(a1 + 64) + 16))();
LABEL_92:

        goto LABEL_93;
      }

      v20 = [v18 payloadUserName];
      v21 = [v18 payloadPassword];
      v22 = [v4 payloadAuthenticationIdentityAssetReference];
      v24 = *(a1 + 32);
      v23 = *(a1 + 40);
      v185[1] = 0;
      v182 = v22;
      v183 = [v23 resolveKeychainAssetReference:v24 assetIdentifier:? error:?];
      v25 = 0;
      if (v25)
      {
        v12 = v25;
        (*(*(a1 + 64) + 16))();
LABEL_91:

        goto LABEL_92;
      }

      v164 = v15;
      v26 = v18;
      v181 = v21;
      v27 = [v4 payloadSMIME];
      v28 = [v27 payloadSigning];
      v29 = [v28 payloadIdentityAssetReference];

      v31 = *(a1 + 32);
      v30 = *(a1 + 40);
      v185[0] = 0;
      v179 = v29;
      v180 = [v30 resolveKeychainAssetReference:v31 assetIdentifier:v29 error:v185];
      v32 = v185[0];
      if (v32)
      {
        v12 = v32;
        (*(*(a1 + 64) + 16))();
        v21 = v181;
        v18 = v26;
        v15 = v164;
LABEL_90:

        goto LABEL_91;
      }

      v33 = [v4 payloadSMIME];
      v34 = [v33 payloadEncryption];
      v35 = [v34 payloadIdentityAssetReference];

      v36 = v35;
      v38 = *(a1 + 32);
      v37 = *(a1 + 40);
      v184 = 0;
      v163 = [v37 resolveKeychainAssetReference:v38 assetIdentifier:v35 error:&v184];
      v12 = v184;
      if (v12)
      {
        (*(*(a1 + 64) + 16))();
        v18 = v26;
        v15 = v164;
LABEL_89:

        v21 = v181;
        goto LABEL_90;
      }

      v162 = v20;
      v39 = *(a1 + 40);
      v153 = v35;
      v154 = *(a1 + 48);
      v40 = [v4 payloadVisibleName];
      v18 = v26;
      if (v40)
      {
        [v39 addAccountDescriptionToProperties:v3 account:v154 description:v40];
      }

      else
      {
        v41 = [v4 payloadHostName];
        [v39 addAccountDescriptionToProperties:v3 account:v154 description:v41];
      }

      v15 = v164;

      v42 = [v4 payloadHostName];
      v43 = [v42 isEqualToString:@"m.hotmail.com"];
      v44 = &ACAccountTypeIdentifierHotmail;
      if (!v43)
      {
        v44 = &ACAccountTypeIdentifierExchange;
      }

      [v3 setObject:*v44 forKeyedSubscript:@"RemoteManagementAccountType"];

      v45 = [v10 payloadEmailAddress];
      [v3 setObject:v45 forKeyedSubscript:@"_remotemanagement_emailAddress"];

      v46 = *(a1 + 56);
      v165 = [v3 objectForKeyedSubscript:@"RemoteManagementAccountType"];
      v47 = [v46 accountTypeWithAccountTypeIdentifier:v165];
      v48 = [v47 supportedDataclasses];
      [v3 setObject:v48 forKeyedSubscript:@"_remotemanagement_provisionedDataclasses"];

      if (!*(a1 + 48))
      {
        v167 = objc_opt_new();
        v55 = [v4 payloadCalendarServiceActive];
        v56 = [v55 BOOLValue];

        if (v56)
        {
          [v167 addObject:ACAccountDataclassCalendars];
        }

        v57 = [v4 payloadContactsServiceActive];
        v58 = [v57 BOOLValue];

        if (v58)
        {
          [v167 addObject:ACAccountDataclassContacts];
        }

        v59 = [v4 payloadMailServiceActive];
        v60 = [v59 BOOLValue];

        if (v60)
        {
          [v167 addObject:ACAccountDataclassMail];
        }

        v61 = [v4 payloadNotesServiceActive];
        v62 = [v61 BOOLValue];

        if (v62)
        {
          [v167 addObject:ACAccountDataclassNotes];
        }

        v63 = [v4 payloadRemindersServiceActive];
        v64 = [v63 BOOLValue];

        v65 = v167;
        if (v64)
        {
          [v167 addObject:ACAccountDataclassReminders];
        }

LABEL_66:
        [v3 setObject:v65 forKeyedSubscript:@"_remotemanagement_enabledDataclasses"];

        v83 = [v4 payloadLockCalendarService];
        v84 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v83 BOOLValue] ^ 1);
        [v3 setObject:v84 forKeyedSubscript:@"_remotemanagement_enableCalendarsUserOverridable"];

        v85 = [v4 payloadLockContactsService];
        v86 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v85 BOOLValue] ^ 1);
        [v3 setObject:v86 forKeyedSubscript:@"_remotemanagement_enableContactsUserOverridable"];

        v87 = [v4 payloadLockMailService];
        v88 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v87 BOOLValue] ^ 1);
        [v3 setObject:v88 forKeyedSubscript:@"_remotemanagement_enableMailUserOverridable"];

        v89 = [v4 payloadLockNotesService];
        v90 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v89 BOOLValue] ^ 1);
        [v3 setObject:v90 forKeyedSubscript:@"_remotemanagement_enableNotesUserOverridable"];

        v91 = [v4 payloadLockRemindersService];
        v92 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v91 BOOLValue] ^ 1);
        [v3 setObject:v92 forKeyedSubscript:@"_remotemanagement_enableRemindersUserOverridable"];

        [v3 setObject:v162 forKeyedSubscript:@"_remotemanagement_username"];
        if (v181)
        {
          [v3 setObject:&__kCFBooleanTrue forKeyedSubscript:@"_remotemanagement_shouldNeverUseSyncableCredentials"];
        }

        [v3 setObject:v183 forKeyedSubscript:@"_remotemanagement_authenticationIdentity"];
        v93 = [v4 payloadHostName];
        [v3 setObject:v93 forKeyedSubscript:@"_remotemanagement_hostname"];

        [v3 setObject:&__kCFBooleanTrue forKeyedSubscript:@"_remotemanagement_usessl"];
        v94 = [v4 payloadOAuth];
        v95 = [v94 payloadEnabled];
        v168 = [v95 BOOLValue];

        if (v168)
        {
          [v3 setObject:&__kCFBooleanTrue forKeyedSubscript:@"_remotemanagement_exchangeEASOAuthSupportedKey"];
          v96 = [v4 payloadOAuth];
          v97 = [v96 payloadSignInURL];

          v169 = v97;
          if (v97)
          {
            [v3 setObject:v97 forKeyedSubscript:@"_remotemanagement_exchangeEASOAuthURIKey"];
            v98 = objc_opt_new();
            [v98 setScheme:@"https"];
            v99 = [v4 payloadHostName];
            [v98 setHost:v99];

            v100 = [v98 string];
            [v3 setObject:v100 forKeyedSubscript:@"_remotemanagement_exchangeEASOEndPointFQDNKey"];
          }

          v101 = [v4 payloadOAuth];
          v102 = [v101 payloadTokenRequestURL];

          if (v102)
          {
            [v3 setObject:v102 forKeyedSubscript:@"_remotemanagement_exchangeEASOAuthTokenRequestURIKey"];
          }

          v103 = [[ACAccountCredential alloc] initWithOAuth2Token:&stru_10001CEA8 refreshToken:0 expiryDate:0];
          [v3 setObject:v103 forKeyedSubscript:@"_remotemanagement_credential"];
        }

        else
        {
          [v3 setObject:v181 forKeyedSubscript:@"_remotemanagement_password"];
        }

        v104 = [v4 payloadSMIME];
        v105 = [v104 payloadSigning];

        if (v105)
        {
          v170 = [v4 payloadSMIME];
          v106 = [v170 payloadSigning];
          v107 = [v106 payloadEnabled];
          [v3 setObject:v107 forKeyedSubscript:@"_remotemanagement_smimeSigningEnabled"];

          [v3 setObject:v180 forKeyedSubscript:@"_remotemanagement_smimeSigningIdentity"];
          v171 = [v4 payloadSMIME];
          v108 = [v171 payloadSigning];
          v109 = [v108 payloadUserOverrideable];
          [v3 setObject:v109 forKeyedSubscript:@"_remotemanagement_smimeSigningOverrideable"];

          v172 = [v4 payloadSMIME];
          v110 = [v172 payloadSigning];
          v111 = [v110 payloadIdentityUserOverrideable];
          [v3 setObject:v111 forKeyedSubscript:@"_remotemanagement_smimeSigningIdentityOverrideable"];
        }

        v112 = [v4 payloadSMIME];
        v113 = [v112 payloadEncryption];

        if (v113)
        {
          v173 = [v4 payloadSMIME];
          v114 = [v173 payloadEncryption];
          v115 = [v114 payloadEnabled];
          [v3 setObject:v115 forKeyedSubscript:@"_remotemanagement_smimeEncryptionEnabledByDefault"];

          [v3 setObject:v163 forKeyedSubscript:@"_remotemanagement_smimeEncryptionIdentity"];
          v174 = [v4 payloadSMIME];
          v116 = [v174 payloadEncryption];
          v117 = [v116 payloadUserOverrideable];
          [v3 setObject:v117 forKeyedSubscript:@"_remotemanagement_smimeEncryptionOverrideable"];

          v175 = [v4 payloadSMIME];
          v118 = [v175 payloadEncryption];
          v119 = [v118 payloadIdentityUserOverrideable];
          [v3 setObject:v119 forKeyedSubscript:@"_remotemanagement_smimeEncryptionIdentityOverrideable"];

          v176 = [v4 payloadSMIME];
          v120 = [v176 payloadEncryption];
          v121 = [v120 payloadPerMessageSwitchEnabled];
          [v3 setObject:v121 forKeyedSubscript:@"_remotemanagement_smimeEncryptionEncryptionPerMessage"];
        }

        v122 = [v4 payloadOAuth];
        v177 = [v122 payloadEnabled];
        v123 = [v177 BOOLValue];
        if (v123)
        {
          v148 = [v4 payloadOAuth];
          v124 = [v148 payloadSignInURL];
          if (!v124)
          {

            goto LABEL_87;
          }

          v143 = v124;
        }

        v161 = v122;
        v125 = [v4 payloadHostName];

        if (v123)
        {
        }

        if (!v125)
        {
          v188 = NSDebugDescriptionErrorKey;
          v178 = [NSString stringWithFormat:@"HostName key is required unless OAuth is enabled and SignInURL is not set"];
          v189 = v178;
          v126 = [NSDictionary dictionaryWithObjects:&v189 forKeys:&v188 count:1];
          v127 = [NSError errorWithDomain:@"AccountTransformerExchangeErrorDomain" code:0 userInfo:v126];

          (*(*(a1 + 64) + 16))();
LABEL_88:
          v20 = v162;
          v36 = v153;
          goto LABEL_89;
        }

LABEL_87:
        (*(*(a1 + 64) + 16))(*(a1 + 64), v3, [*(a1 + 40) changesRequireRecreation:*(a1 + 48) properties:v3], 0);
        goto LABEL_88;
      }

      if (v162)
      {
        v49 = v181 == 0;
      }

      else
      {
        v49 = 1;
      }

      v50 = v49;
      v166 = v50;
      v155 = objc_opt_new();
      v51 = *(a1 + 48);
      v52 = ACAccountDataclassCalendars;
      v149 = [v4 payloadCalendarServiceActive];
      v130 = [v149 BOOLValue];
      v144 = [v4 payloadLockCalendarService];
      v135 = [v144 BOOLValue];
      v53 = v51;
      v54 = v52;
      v156 = v155;
      if (v135)
      {
        if ((v166 | v130 ^ 1))
        {
LABEL_45:

          v66 = *(a1 + 48);
          v136 = ACAccountDataclassContacts;
          v150 = [v4 payloadContactsServiceActive];
          v128 = [v150 BOOLValue];
          v145 = [v4 payloadLockContactsService];
          v131 = [v145 BOOLValue];
          v67 = v66;
          v68 = v136;
          v157 = v156;
          if (v131)
          {
            if ((v166 | v128 ^ 1))
            {
LABEL_50:

              v69 = *(a1 + 48);
              v137 = ACAccountDataclassMail;
              v151 = [v4 payloadMailServiceActive];
              v129 = [v151 BOOLValue];
              v146 = [v4 payloadLockMailService];
              v132 = [v146 BOOLValue];
              v70 = v69;
              v71 = v137;
              v158 = v157;
              if (v132)
              {
                if ((v166 | v129 ^ 1))
                {
LABEL_55:

                  v72 = *(a1 + 48);
                  v73 = ACAccountDataclassNotes;
                  v152 = [v4 payloadNotesServiceActive];
                  v133 = [v152 BOOLValue];
                  v147 = [v4 payloadLockNotesService];
                  v138 = [v147 BOOLValue];
                  v74 = v72;
                  v75 = v73;
                  v159 = v158;
                  v140 = v74;
                  if (v138)
                  {
                    v76 = v159;
                    if ((v166 | v133 ^ 1))
                    {
LABEL_60:

                      v78 = v76;
                      v79 = *(a1 + 48);
                      v141 = ACAccountDataclassReminders;
                      v160 = [v4 payloadRemindersServiceActive];
                      v134 = [v160 BOOLValue];
                      v148 = [v4 payloadLockRemindersService];
                      v139 = [v148 BOOLValue];
                      v80 = v79;
                      v142 = v141;
                      v65 = v78;
                      v143 = v80;
                      if (v139)
                      {
                        v81 = v142;
                        if ((v166 | v134 ^ 1))
                        {
                          goto LABEL_65;
                        }
                      }

                      else
                      {
                        v82 = v80;
                        v81 = v142;
                        if (![v82 isEnabledForDataclass:v142])
                        {
LABEL_65:

                          goto LABEL_66;
                        }
                      }

                      [v65 addObject:v81];
                      goto LABEL_65;
                    }
                  }

                  else
                  {
                    v77 = [v74 isEnabledForDataclass:v75];
                    v76 = v159;
                    if (!v77)
                    {
                      goto LABEL_60;
                    }
                  }

                  [v76 addObject:v75];
                  goto LABEL_60;
                }
              }

              else if (![v70 isEnabledForDataclass:v71])
              {
                goto LABEL_55;
              }

              [v158 addObject:v71];
              goto LABEL_55;
            }
          }

          else if (![v67 isEnabledForDataclass:v68])
          {
            goto LABEL_50;
          }

          [v157 addObject:v68];
          goto LABEL_50;
        }
      }

      else if (![v53 isEnabledForDataclass:v54])
      {
        goto LABEL_45;
      }

      [v156 addObject:v54];
      goto LABEL_45;
    }

    v13 = +[RMLog accountTransformerExchange];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      sub_10001357C(v13);
    }
  }

  else
  {
    v13 = +[RMLog accountTransformerExchange];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_1000134DC(v4, v13);
    }
  }

  v14 = *(a1 + 64);
  v7 = +[RMErrorUtilities createInternalError];
  (*(v14 + 16))(v14, 0, 0, v7);
LABEL_94:
}

void sub_10000B8E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10000B8F8(id *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (![(__CFString *)v5 isEqualToString:@"_remotemanagement_accountDescription"])
  {
    if ([(__CFString *)v5 isEqualToString:@"_remotemanagement_accountDefaultDescription"])
    {
      v7 = a1[5];
      v8 = &RMAccountPropertyKeyDefaultDescription;
LABEL_5:
      v9 = *v8;
LABEL_6:
      v10 = v6;
LABEL_7:
      [v7 setObject:v10 forKeyedSubscript:v9];
      goto LABEL_14;
    }

    if ([(__CFString *)v5 isEqualToString:@"_remotemanagement_authenticationIdentity"])
    {
      [a1[4] setIdentityCertificatePersistentID:v6 managedByProfile:1];
      goto LABEL_14;
    }

    if ([(__CFString *)v5 isEqualToString:@"_remotemanagement_emailAddress"])
    {
      [a1[4] setEmailAddress:v6];
      goto LABEL_14;
    }

    if ([(__CFString *)v5 isEqualToString:@"_remotemanagement_credential"])
    {
      [a1[5] setCredential:v6];
      goto LABEL_14;
    }

    if ([(__CFString *)v5 isEqualToString:@"_remotemanagement_enableCalendarsUserOverridable"])
    {
      v7 = a1[4];
      v8 = &kMCAccountEnableCalendarsUserOverridableKey;
      goto LABEL_5;
    }

    if ([(__CFString *)v5 isEqualToString:@"_remotemanagement_enableContactsUserOverridable"])
    {
      v7 = a1[4];
      v8 = &kMCAccountEnableContactsUserOverridableKey;
      goto LABEL_5;
    }

    if ([(__CFString *)v5 isEqualToString:@"_remotemanagement_enableMailUserOverridable"])
    {
      v7 = a1[4];
      v8 = &kMCAccountEnableMailUserOverridableKey;
      goto LABEL_5;
    }

    if ([(__CFString *)v5 isEqualToString:@"_remotemanagement_enableNotesUserOverridable"])
    {
      v7 = a1[4];
      v8 = &kMCAccountEnableNotesUserOverridableKey;
      goto LABEL_5;
    }

    if ([(__CFString *)v5 isEqualToString:@"_remotemanagement_enableRemindersUserOverridable"])
    {
      v7 = a1[4];
      v8 = &kMCAccountEnableRemindersUserOverridableKey;
      goto LABEL_5;
    }

    if ([(__CFString *)v5 isEqualToString:@"_remotemanagement_enabledDataclasses"])
    {
      v11 = [a1[6] objectForKeyedSubscript:@"_remotemanagement_provisionedDataclasses"];
      v12 = [v11 mutableCopy];

      v42 = 0u;
      v43 = 0u;
      v40 = 0u;
      v41 = 0u;
      v13 = [a1[6] objectForKeyedSubscript:@"_remotemanagement_enabledDataclasses"];
      v14 = [v13 countByEnumeratingWithState:&v40 objects:v46 count:16];
      if (v14)
      {
        v15 = v14;
        v16 = *v41;
        do
        {
          for (i = 0; i != v15; i = i + 1)
          {
            if (*v41 != v16)
            {
              objc_enumerationMutation(v13);
            }

            v18 = *(*(&v40 + 1) + 8 * i);
            [a1[5] setEnabled:1 forDataclass:v18];
            [v12 removeObject:v18];
          }

          v15 = [v13 countByEnumeratingWithState:&v40 objects:v46 count:16];
        }

        while (v15);
      }

      v38 = 0u;
      v39 = 0u;
      v36 = 0u;
      v37 = 0u;
      v19 = v12;
      v20 = [v19 countByEnumeratingWithState:&v36 objects:v45 count:16];
      if (v20)
      {
        v21 = v20;
        v22 = *v37;
        do
        {
          for (j = 0; j != v21; j = j + 1)
          {
            if (*v37 != v22)
            {
              objc_enumerationMutation(v19);
            }

            [a1[5] setEnabled:0 forDataclass:*(*(&v36 + 1) + 8 * j)];
          }

          v21 = [v19 countByEnumeratingWithState:&v36 objects:v45 count:16];
        }

        while (v21);
      }

      goto LABEL_41;
    }

    if ([(__CFString *)v5 isEqualToString:@"_remotemanagement_exchangeEASOAuthSupportedKey"])
    {
      v7 = a1[5];
      v8 = &kDAExchangeOAuthSupportedKey;
      goto LABEL_5;
    }

    if ([(__CFString *)v5 isEqualToString:@"_remotemanagement_exchangeEASOAuthURIKey"])
    {
      v7 = a1[5];
      v8 = &kDAExchangeOAuthURI;
      goto LABEL_5;
    }

    if ([(__CFString *)v5 isEqualToString:@"_remotemanagement_exchangeEASOEndPointFQDNKey"])
    {
      v7 = a1[5];
      v8 = &kDAEASEndPointFQDN;
      goto LABEL_5;
    }

    if ([(__CFString *)v5 isEqualToString:@"_remotemanagement_exchangeEASOAuthTokenRequestURIKey"])
    {
      v7 = a1[5];
      v8 = &kDAExchangeTokenRequestURI;
      goto LABEL_5;
    }

    if ([(__CFString *)v5 isEqualToString:@"_remotemanagement_hostname"])
    {
      [a1[4] setHost:v6];
      goto LABEL_14;
    }

    if ([(__CFString *)v5 isEqualToString:@"_remotemanagement_isManagedKey"])
    {
      v7 = a1[5];
      v9 = @"MCAccountIsManaged";
      goto LABEL_6;
    }

    if ([(__CFString *)v5 isEqualToString:@"_remotemanagement_managingOwnerIdentifierKey"])
    {
      [a1[5] setManagingOwnerIdentifier:v6];
      goto LABEL_14;
    }

    if ([(__CFString *)v5 isEqualToString:@"_remotemanagement_managingSourceNameKey"])
    {
      [a1[5] setManagingSourceName:v6];
      goto LABEL_14;
    }

    if ([(__CFString *)v5 isEqualToString:@"_remotemanagement_password"])
    {
      [a1[4] setPassword:v6];
      goto LABEL_14;
    }

    if ([(__CFString *)v5 isEqualToString:@"_remotemanagement_provisionedDataclasses"])
    {
      v34 = 0u;
      v35 = 0u;
      v32 = 0u;
      v33 = 0u;
      v19 = [a1[6] objectForKeyedSubscript:{@"_remotemanagement_provisionedDataclasses", 0}];
      v24 = [v19 countByEnumeratingWithState:&v32 objects:v44 count:16];
      if (v24)
      {
        v25 = v24;
        v26 = *v33;
        do
        {
          for (k = 0; k != v25; k = k + 1)
          {
            if (*v33 != v26)
            {
              objc_enumerationMutation(v19);
            }

            [a1[5] setProvisioned:1 forDataclass:*(*(&v32 + 1) + 8 * k)];
          }

          v25 = [v19 countByEnumeratingWithState:&v32 objects:v44 count:16];
        }

        while (v25);
      }

      goto LABEL_41;
    }

    if ([(__CFString *)v5 isEqualToString:@"_remotemanagement_shouldNeverUseSyncableCredentials"])
    {
      v7 = a1[5];
      v8 = &ACAccountPropertyShouldNeverUseSyncableCredential;
      goto LABEL_5;
    }

    if ([(__CFString *)v5 isEqualToString:@"_remotemanagement_smimeEncryptionEnabledByDefault"])
    {
      v28 = a1[4];
      v29 = &MFMailAccountEncryptionEnabled;
    }

    else
    {
      if ([(__CFString *)v5 isEqualToString:@"_remotemanagement_smimeEncryptionIdentity"])
      {
        [a1[4] setEncryptionIdentityPersistentReference:v6];
        goto LABEL_14;
      }

      if ([(__CFString *)v5 isEqualToString:@"_remotemanagement_smimeEncryptionOverrideable"])
      {
        v28 = a1[4];
        v29 = &MFMailAccountEncryptByDefaultUserOverrideable;
      }

      else if ([(__CFString *)v5 isEqualToString:@"_remotemanagement_smimeEncryptionIdentityOverrideable"])
      {
        v28 = a1[4];
        v29 = &MFMailAccountEncryptionIdentityUserOverrideable;
      }

      else if ([(__CFString *)v5 isEqualToString:@"_remotemanagement_smimeEncryptionEncryptionPerMessage"])
      {
        v28 = a1[4];
        v29 = &MFMailAccountPerMessageEncryptionEnabled;
      }

      else if ([(__CFString *)v5 isEqualToString:@"_remotemanagement_smimeSigningEnabled"])
      {
        v28 = a1[4];
        v29 = &MFMailAccountSigningEnabled;
      }

      else
      {
        if ([(__CFString *)v5 isEqualToString:@"_remotemanagement_smimeSigningIdentity"])
        {
          [a1[4] setSigningIdentityPersistentReference:v6];
          goto LABEL_14;
        }

        if ([(__CFString *)v5 isEqualToString:@"_remotemanagement_smimeSigningOverrideable"])
        {
          v28 = a1[4];
          v29 = &MFMailAccountSigningUserOverrideable;
        }

        else
        {
          if (![(__CFString *)v5 isEqualToString:@"_remotemanagement_smimeSigningIdentityOverrideable"])
          {
            if ([(__CFString *)v5 isEqualToString:@"_remotemanagement_username"])
            {
              [a1[4] setUsername:v6];
              goto LABEL_14;
            }

            if ([(__CFString *)v5 isEqualToString:@"_remotemanagement_usessl"])
            {
              [a1[4] setUseSSL:v6 != 0];
              goto LABEL_14;
            }

            if (([(__CFString *)v5 hasPrefix:@"_remotemanagement_"]& 1) != 0)
            {
              goto LABEL_14;
            }

            v30 = ACAccountPropertyPersonaIdentifier;
            if (![(__CFString *)v5 isEqualToString:ACAccountPropertyPersonaIdentifier])
            {
              v7 = a1[5];
              v10 = v6;
              v9 = v5;
              goto LABEL_7;
            }

            [a1[4] setAccountProperty:v6 forKey:v30];
            v19 = +[MDMConfiguration sharedConfiguration];
            [v19 refreshDetailsFromDisk];
            v31 = [v19 easEnrollmentID];
            [a1[5] setObject:v31 forKeyedSubscript:kESExchangeDeviceID];

            [a1[5] setObject:&__kCFBooleanTrue forKeyedSubscript:kESExchangeAccountWipeOnly];
            [a1[5] setObject:&__kCFBooleanTrue forKeyedSubscript:kESExchangeUserEnrollmentMode];
LABEL_41:

            goto LABEL_14;
          }

          v28 = a1[4];
          v29 = &MFMailAccountSigningIdentityUserOverrideable;
        }
      }
    }

    [v28 setAccountProperty:v6 forKey:*v29];
    goto LABEL_14;
  }

  [a1[4] setAccountDescription:v6];
LABEL_14:
}

uint64_t sub_10000C190(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10000C1A8(uint64_t a1)
{
  v2 = +[RMLog accountTransformerExchange];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    sub_10001344C(a1, v2);
  }

  v3 = [*(a1 + 40) saveAccount:*(a1 + 48) accountStore:*(a1 + 56)];
  v4 = *(*(a1 + 64) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

void sub_10000C704(id a1)
{
  qword_100022118 = os_log_create("com.apple.remotemanagementd", "accountTransformerGoogle");

  _objc_release_x1();
}

void sub_10000C87C(uint64_t a1, void *a2)
{
  v3 = [a2 mutableCopy];
  v4 = [*(a1 + 32) declaration];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [v4 payloadUserIdentityAssetReference];
    v6 = *(a1 + 32);
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_10000CA3C;
    v11[3] = &unk_10001CD50;
    v7 = *(a1 + 64);
    v8 = *(a1 + 40);
    v16 = v7;
    v11[4] = v8;
    v12 = v3;
    v13 = *(a1 + 48);
    v14 = v4;
    v15 = *(a1 + 56);
    [RMAssetResolverController extractUserIdentityAsset:v6 assetIdentifier:v5 completionHandler:v11];
  }

  else
  {
    v9 = +[RMLog accountTransformerGoogle];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_1000134DC(v4, v9);
    }

    v10 = *(a1 + 64);
    v5 = +[RMErrorUtilities createInternalError];
    (*(v10 + 16))(v10, 0, 0, v5);
  }
}

void sub_10000CA3C(uint64_t a1, void *a2, uint64_t a3)
{
  v22 = a2;
  if (a3)
  {
    v5 = *(*(a1 + 72) + 16);
  }

  else
  {
    v6 = *(a1 + 32);
    v7 = *(a1 + 40);
    v8 = *(a1 + 48);
    v9 = [*(a1 + 56) payloadVisibleName];
    if (v9)
    {
      [v6 addAccountDescriptionToProperties:v7 account:v8 description:v9];
    }

    else
    {
      v10 = [v22 payloadEmailAddress];
      [v6 addAccountDescriptionToProperties:v7 account:v8 description:v10];
    }

    [*(a1 + 40) setObject:ACAccountTypeIdentifierGmail forKeyedSubscript:@"RemoteManagementAccountType"];
    v11 = objc_opt_class();
    v12 = NSStringFromClass(v11);
    [*(a1 + 40) setObject:v12 forKeyedSubscript:@"_remotemanagement_mailAccountClassKey"];

    v13 = [v22 payloadFullName];
    [*(a1 + 40) setObject:v13 forKeyedSubscript:@"_remotemanagement_fullUserName"];

    v14 = *(a1 + 64);
    v15 = [*(a1 + 40) objectForKeyedSubscript:@"RemoteManagementAccountType"];
    v16 = [v14 accountTypeWithAccountTypeIdentifier:v15];
    v17 = [v16 supportedDataclasses];
    [*(a1 + 40) setObject:v17 forKeyedSubscript:@"_remotemanagement_provisionedDataclasses"];

    v18 = *(a1 + 48);
    if (v18)
    {
      [v18 enabledDataclasses];
    }

    else
    {
      [*(a1 + 40) objectForKeyedSubscript:@"_remotemanagement_provisionedDataclasses"];
    }
    v19 = ;
    [*(a1 + 40) setObject:v19 forKeyedSubscript:@"_remotemanagement_enabledDataclasses"];

    v20 = [v22 payloadEmailAddress];
    [*(a1 + 40) setObject:v20 forKeyedSubscript:@"_remotemanagement_username"];

    [*(a1 + 40) setObject:&__kCFBooleanTrue forKeyedSubscript:@"_remotemanagement_usessl"];
    v21 = *(a1 + 72);
    [*(a1 + 32) changesRequireRecreation:*(a1 + 48) properties:*(a1 + 40)];
    v5 = *(v21 + 16);
  }

  v5();
}

void sub_10000CEF0(id *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (![v5 isEqualToString:@"_remotemanagement_accountDescription"])
  {
    if ([v5 isEqualToString:@"_remotemanagement_accountDefaultDescription"])
    {
      v11 = a1[5];
      v12 = @"RemoteManagementDefaultDescription";
LABEL_7:
      [v11 setObject:v6 forKeyedSubscript:v12];
      goto LABEL_25;
    }

    if ([v5 isEqualToString:@"_remotemanagement_enabledDataclasses"])
    {
      v13 = [a1[6] objectForKeyedSubscript:@"_remotemanagement_provisionedDataclasses"];
      v14 = [v13 mutableCopy];

      v42 = 0u;
      v43 = 0u;
      v40 = 0u;
      v41 = 0u;
      v15 = [a1[6] objectForKeyedSubscript:@"_remotemanagement_enabledDataclasses"];
      v16 = [v15 countByEnumeratingWithState:&v40 objects:v46 count:16];
      if (v16)
      {
        v17 = v16;
        v18 = *v41;
        do
        {
          for (i = 0; i != v17; i = i + 1)
          {
            if (*v41 != v18)
            {
              objc_enumerationMutation(v15);
            }

            v20 = *(*(&v40 + 1) + 8 * i);
            [a1[5] setEnabled:1 forDataclass:v20];
            [v14 removeObject:v20];
          }

          v17 = [v15 countByEnumeratingWithState:&v40 objects:v46 count:16];
        }

        while (v17);
      }

      v38 = 0u;
      v39 = 0u;
      v36 = 0u;
      v37 = 0u;
      v21 = v14;
      v22 = [v21 countByEnumeratingWithState:&v36 objects:v45 count:16];
      if (v22)
      {
        v23 = v22;
        v24 = *v37;
        do
        {
          for (j = 0; j != v23; j = j + 1)
          {
            if (*v37 != v24)
            {
              objc_enumerationMutation(v21);
            }

            [a1[5] setEnabled:0 forDataclass:*(*(&v36 + 1) + 8 * j)];
          }

          v23 = [v21 countByEnumeratingWithState:&v36 objects:v45 count:16];
        }

        while (v23);
      }
    }

    else
    {
      if ([v5 isEqualToString:@"_remotemanagement_fullUserName"])
      {
        v7 = a1[4];
        v8 = &MailAccountFullUserName;
        goto LABEL_3;
      }

      if ([v5 isEqualToString:@"_remotemanagement_isManagedKey"])
      {
        v11 = a1[5];
        v12 = @"MCAccountIsManaged";
        goto LABEL_7;
      }

      if ([v5 isEqualToString:@"_remotemanagement_mailAccountClassKey"])
      {
        v7 = a1[4];
        v8 = &MFMailAccountClass;
        goto LABEL_3;
      }

      if ([v5 isEqualToString:@"_remotemanagement_managingOwnerIdentifierKey"])
      {
        [a1[5] setManagingOwnerIdentifier:v6];
        goto LABEL_25;
      }

      if ([v5 isEqualToString:@"_remotemanagement_managingSourceNameKey"])
      {
        [a1[5] setManagingSourceName:v6];
        goto LABEL_25;
      }

      if (![v5 isEqualToString:@"_remotemanagement_provisionedDataclasses"])
      {
        if ([v5 isEqualToString:@"_remotemanagement_username"])
        {
          [a1[4] setUsername:v6];
          goto LABEL_25;
        }

        if ([v5 isEqualToString:@"_remotemanagement_usessl"])
        {
          [a1[4] setUsesSSL:{objc_msgSend(v6, "BOOLValue")}];
          goto LABEL_25;
        }

        if ([v5 hasPrefix:@"_remotemanagement_"])
        {
          goto LABEL_25;
        }

        v30 = ACAccountPropertyPersonaIdentifier;
        v31 = [v5 isEqualToString:ACAccountPropertyPersonaIdentifier];
        v7 = a1[4];
        v10 = v6;
        if (v31)
        {
          v9 = v30;
        }

        else
        {
          v9 = v5;
        }

        goto LABEL_4;
      }

      v34 = 0u;
      v35 = 0u;
      v32 = 0u;
      v33 = 0u;
      v21 = [a1[6] objectForKeyedSubscript:{@"_remotemanagement_provisionedDataclasses", 0}];
      v26 = [v21 countByEnumeratingWithState:&v32 objects:v44 count:16];
      if (v26)
      {
        v27 = v26;
        v28 = *v33;
        do
        {
          for (k = 0; k != v27; k = k + 1)
          {
            if (*v33 != v28)
            {
              objc_enumerationMutation(v21);
            }

            [a1[5] setProvisioned:1 forDataclass:*(*(&v32 + 1) + 8 * k)];
          }

          v27 = [v21 countByEnumeratingWithState:&v32 objects:v44 count:16];
        }

        while (v27);
      }
    }

    goto LABEL_25;
  }

  v7 = a1[4];
  v8 = &MFMailAccountDescription;
LABEL_3:
  v9 = *v8;
  v10 = v6;
LABEL_4:
  [v7 setAccountProperty:v10 forKey:v9];
LABEL_25:
}

id sub_10000D398(uint64_t a1)
{
  [MailAccount setMailAccounts:*(a1 + 32)];
  v2 = *(a1 + 40);

  return [v2 savePersistentAccount];
}

void sub_10000D758(id a1)
{
  qword_100022128 = os_log_create("com.apple.remotemanagementd", "accountTransformerLDAP");

  _objc_release_x1();
}

void sub_10000D8D0(uint64_t a1, void *a2)
{
  v3 = [a2 mutableCopy];
  v4 = [*(a1 + 32) declaration];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [v4 payloadAuthenticationCredentialsAssetReference];
    v6 = *(a1 + 32);
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_10000DA90;
    v11[3] = &unk_10001CC78;
    v7 = *(a1 + 64);
    v8 = *(a1 + 40);
    v16 = v7;
    v11[4] = v8;
    v12 = v3;
    v13 = *(a1 + 48);
    v14 = v4;
    v15 = *(a1 + 56);
    [RMAssetResolverController resolveUserNameAndPasswordAsset:v6 assetIdentifier:v5 completionHandler:v11];
  }

  else
  {
    v9 = +[RMLog accountTransformerLDAP];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_1000134DC(v4, v9);
    }

    v10 = *(a1 + 64);
    v5 = +[RMErrorUtilities createInternalError];
    (*(v10 + 16))(v10, 0, 0, v5);
  }
}

void sub_10000DA90(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v21 = v5;
  if (a3)
  {
    (*(*(a1 + 72) + 16))();
  }

  else
  {
    v6 = [v5 payloadUserName];
    v7 = [v21 payloadPassword];
    v8 = *(a1 + 32);
    v9 = *(a1 + 40);
    v10 = *(a1 + 48);
    v11 = [*(a1 + 56) payloadVisibleName];
    if (v11)
    {
      [v8 addAccountDescriptionToProperties:v9 account:v10 description:v11];
    }

    else
    {
      v12 = [*(a1 + 56) payloadHostName];
      [v8 addAccountDescriptionToProperties:v9 account:v10 description:v12];
    }

    [*(a1 + 40) setObject:ACAccountTypeIdentifierLDAP forKeyedSubscript:@"RemoteManagementAccountType"];
    v13 = *(a1 + 64);
    v14 = [*(a1 + 40) objectForKeyedSubscript:@"RemoteManagementAccountType"];
    v15 = [v13 accountTypeWithAccountTypeIdentifier:v14];
    v16 = [v15 supportedDataclasses];
    [*(a1 + 40) setObject:v16 forKeyedSubscript:@"_remotemanagement_provisionedDataclasses"];

    v17 = [*(a1 + 40) objectForKeyedSubscript:@"_remotemanagement_provisionedDataclasses"];
    [*(a1 + 40) setObject:v17 forKeyedSubscript:@"_remotemanagement_enabledDataclasses"];

    v18 = [*(a1 + 56) payloadHostName];
    [*(a1 + 40) setObject:v18 forKeyedSubscript:@"_remotemanagement_hostname"];

    if (v7)
    {
      [*(a1 + 40) setObject:v7 forKeyedSubscript:@"_remotemanagement_password"];
      [*(a1 + 40) setObject:&__kCFBooleanTrue forKeyedSubscript:@"_remotemanagement_shouldNeverUseSyncableCredentials"];
    }

    v19 = [*(a1 + 56) payloadPort];
    if (v19)
    {
      [*(a1 + 40) setObject:v19 forKeyedSubscript:@"_remotemanagement_port"];
    }

    if (v6)
    {
      [*(a1 + 40) setObject:v6 forKeyedSubscript:@"_remotemanagement_username"];
    }

    [*(a1 + 40) setObject:&__kCFBooleanTrue forKeyedSubscript:@"_remotemanagement_usessl"];
    v20 = [*(a1 + 56) payloadSearchSettings];
    if (v20)
    {
      [*(a1 + 40) setObject:v20 forKeyedSubscript:@"_remotemanagement_ldapSearchSettings"];
    }

    (*(*(a1 + 72) + 16))(*(a1 + 72), *(a1 + 40), [*(a1 + 32) changesRequireRecreation:*(a1 + 48) properties:*(a1 + 40)], 0);
  }
}

void sub_10000DFCC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10000DFE4(id *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if ([(__CFString *)v5 isEqualToString:@"_remotemanagement_accountDescription"])
  {
    [a1[4] setAccountDescription:v6];
    goto LABEL_34;
  }

  if ([(__CFString *)v5 isEqualToString:@"_remotemanagement_accountDefaultDescription"])
  {
    v7 = a1[5];
    v8 = &RMAccountPropertyKeyDefaultDescription;
LABEL_5:
    v9 = *v8;
LABEL_6:
    v10 = v6;
LABEL_7:
    [v7 setObject:v10 forKeyedSubscript:v9];
    goto LABEL_34;
  }

  if ([(__CFString *)v5 isEqualToString:@"_remotemanagement_provisionedDataclasses"])
  {
    v56 = 0u;
    v57 = 0u;
    v54 = 0u;
    v55 = 0u;
    v11 = [a1[6] objectForKeyedSubscript:@"_remotemanagement_provisionedDataclasses"];
    v12 = [v11 countByEnumeratingWithState:&v54 objects:v61 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v55;
      do
      {
        for (i = 0; i != v13; i = i + 1)
        {
          if (*v55 != v14)
          {
            objc_enumerationMutation(v11);
          }

          [a1[5] setProvisioned:1 forDataclass:*(*(&v54 + 1) + 8 * i)];
        }

        v13 = [v11 countByEnumeratingWithState:&v54 objects:v61 count:16];
      }

      while (v13);
    }

LABEL_33:

    goto LABEL_34;
  }

  if ([(__CFString *)v5 isEqualToString:@"_remotemanagement_enabledDataclasses"])
  {
    v16 = [a1[6] objectForKeyedSubscript:@"_remotemanagement_provisionedDataclasses"];
    v17 = [v16 mutableCopy];

    v52 = 0u;
    v53 = 0u;
    v50 = 0u;
    v51 = 0u;
    v18 = [a1[6] objectForKeyedSubscript:@"_remotemanagement_enabledDataclasses"];
    v19 = [v18 countByEnumeratingWithState:&v50 objects:v60 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v51;
      do
      {
        for (j = 0; j != v20; j = j + 1)
        {
          if (*v51 != v21)
          {
            objc_enumerationMutation(v18);
          }

          v23 = *(*(&v50 + 1) + 8 * j);
          [a1[5] setEnabled:1 forDataclass:v23];
          [v17 removeObject:v23];
        }

        v20 = [v18 countByEnumeratingWithState:&v50 objects:v60 count:16];
      }

      while (v20);
    }

    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    v11 = v17;
    v24 = [v11 countByEnumeratingWithState:&v46 objects:v59 count:16];
    if (v24)
    {
      v25 = v24;
      v26 = *v47;
      do
      {
        for (k = 0; k != v25; k = k + 1)
        {
          if (*v47 != v26)
          {
            objc_enumerationMutation(v11);
          }

          [a1[5] setEnabled:0 forDataclass:*(*(&v46 + 1) + 8 * k)];
        }

        v25 = [v11 countByEnumeratingWithState:&v46 objects:v59 count:16];
      }

      while (v25);
    }

    goto LABEL_33;
  }

  if ([(__CFString *)v5 isEqualToString:@"_remotemanagement_hostname"])
  {
    [a1[4] setHost:v6];
    goto LABEL_34;
  }

  if ([(__CFString *)v5 isEqualToString:@"_remotemanagement_isManagedKey"])
  {
    v7 = a1[5];
    v9 = @"MCAccountIsManaged";
    goto LABEL_6;
  }

  if ([(__CFString *)v5 isEqualToString:@"_remotemanagement_managingOwnerIdentifierKey"])
  {
    [a1[5] setManagingOwnerIdentifier:v6];
    goto LABEL_34;
  }

  if ([(__CFString *)v5 isEqualToString:@"_remotemanagement_managingSourceNameKey"])
  {
    [a1[5] setManagingSourceName:v6];
    goto LABEL_34;
  }

  if ([(__CFString *)v5 isEqualToString:@"_remotemanagement_password"])
  {
    [a1[4] setPassword:v6];
    goto LABEL_34;
  }

  if ([(__CFString *)v5 isEqualToString:@"_remotemanagement_port"])
  {
    [a1[4] setPort:{objc_msgSend(v6, "integerValue")}];
    goto LABEL_34;
  }

  if ([(__CFString *)v5 isEqualToString:@"_remotemanagement_shouldNeverUseSyncableCredentials"])
  {
    v7 = a1[5];
    v8 = &ACAccountPropertyShouldNeverUseSyncableCredential;
    goto LABEL_5;
  }

  if ([(__CFString *)v5 isEqualToString:@"_remotemanagement_username"])
  {
    [a1[4] setUsername:v6];
    goto LABEL_34;
  }

  if ([(__CFString *)v5 isEqualToString:@"_remotemanagement_usessl"])
  {
    [a1[4] setUseSSL:v6 != 0];
    goto LABEL_34;
  }

  if (![(__CFString *)v5 isEqualToString:@"_remotemanagement_ldapSearchSettings"])
  {
    if (([(__CFString *)v5 hasPrefix:@"_remotemanagement_"]& 1) != 0)
    {
      goto LABEL_34;
    }

    v37 = ACAccountPropertyPersonaIdentifier;
    if ([(__CFString *)v5 isEqualToString:ACAccountPropertyPersonaIdentifier])
    {
      [a1[4] setAccountProperty:v6 forKey:v37];
      goto LABEL_34;
    }

    v7 = a1[5];
    v10 = v6;
    v9 = v5;
    goto LABEL_7;
  }

  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  obj = v6;
  v28 = [obj countByEnumeratingWithState:&v42 objects:v58 count:16];
  if (v28)
  {
    v29 = v28;
    v41 = *v43;
    v40 = RMModelAccountLDAPDeclaration_SearchSettingsItem_Scope_base;
    v38 = RMModelAccountLDAPDeclaration_SearchSettingsItem_Scope_oneLevel;
    do
    {
      for (m = 0; m != v29; m = m + 1)
      {
        if (*v43 != v41)
        {
          objc_enumerationMutation(obj);
        }

        v31 = *(*(&v42 + 1) + 8 * m);
        v32 = [v31 payloadScope];
        if ([v32 isEqualToString:v40])
        {
          v33 = 0;
        }

        else if ([v32 isEqualToString:v38])
        {
          v33 = 1;
        }

        else
        {
          v33 = 2;
        }

        v34 = objc_opt_new();
        v35 = [v31 payloadVisibleDescription];
        [v34 setSearchDescription:v35];

        v36 = [v31 payloadSearchBase];
        [v34 setSearchBase:v36];

        [v34 setScope:v33];
        [a1[4] addSearchSettings:v34];
      }

      v29 = [obj countByEnumeratingWithState:&v42 objects:v58 count:16];
    }

    while (v29);
  }

LABEL_34:
}

uint64_t sub_10000E648(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10000E660(uint64_t a1)
{
  v2 = +[RMLog accountTransformerLDAP];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    sub_10001344C(a1, v2);
  }

  v3 = [*(a1 + 40) saveAccount:*(a1 + 48) accountStore:*(a1 + 56)];
  v4 = *(*(a1 + 64) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

void sub_10000EBBC(id a1)
{
  qword_100022138 = os_log_create("com.apple.remotemanagementd", "accountTransformerMail");

  _objc_release_x1();
}

void sub_10000ED34(uint64_t a1, void *a2)
{
  v3 = [a2 mutableCopy];
  v4 = [*(a1 + 32) declaration];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [v4 payloadUserIdentityAssetReference];
    v7 = *(a1 + 32);
    v6 = *(a1 + 40);
    v137 = 0;
    v8 = [v6 resolveUserIdentityAssetReference:v7 assetIdentifier:v5 error:&v137];
    v9 = v137;
    if (v9)
    {
      v10 = v9;
      (*(*(a1 + 64) + 16))();
LABEL_62:

      goto LABEL_63;
    }

    v13 = [v4 payloadOutgoingServer];
    v14 = [v13 payloadAuthenticationCredentialsAssetReference];

    v16 = *(a1 + 32);
    v15 = *(a1 + 40);
    v136 = 0;
    v17 = [v15 resolveUserNameAndPasswordAssetReference:v16 assetIdentifier:v14 error:&v136];
    v18 = v136;
    if (v18)
    {
      v10 = v18;
      (*(*(a1 + 64) + 16))();
LABEL_61:

      goto LABEL_62;
    }

    v130 = v14;
    v19 = [v17 payloadUserName];
    v20 = v17;
    v132 = [v17 payloadPassword];
    v21 = [v4 payloadIncomingServer];
    v22 = [v21 payloadAuthenticationCredentialsAssetReference];

    v23 = v22;
    v25 = *(a1 + 32);
    v24 = *(a1 + 40);
    v135 = 0;
    v26 = [v24 resolveUserNameAndPasswordAssetReference:v25 assetIdentifier:v22 error:&v135];
    v27 = v135;
    v131 = v26;
    if (v27)
    {
      v10 = v27;
      (*(*(a1 + 64) + 16))();
      v28 = v132;
      v17 = v20;
      v14 = v130;
LABEL_60:

      goto LABEL_61;
    }

    v126 = v22;
    v129 = [v26 payloadUserName];
    v128 = [v26 payloadPassword];
    v29 = [v4 payloadSMIME];
    v30 = [v29 payloadSigning];
    v31 = [v30 payloadIdentityAssetReference];

    v33 = *(a1 + 32);
    v32 = *(a1 + 40);
    v134 = 0;
    v125 = v31;
    v127 = [v32 resolveKeychainAssetReference:v33 assetIdentifier:v31 error:&v134];
    v34 = v134;
    if (v34)
    {
      v10 = v34;
      (*(*(a1 + 64) + 16))();
      v28 = v132;
      v23 = v126;
      v17 = v20;
      v14 = v130;
LABEL_59:

      goto LABEL_60;
    }

    v35 = [v4 payloadSMIME];
    v36 = [v35 payloadEncryption];
    v37 = [v36 payloadIdentityAssetReference];

    v39 = *(a1 + 32);
    v38 = *(a1 + 40);
    v133 = 0;
    v123 = v37;
    v124 = [v38 resolveKeychainAssetReference:v39 assetIdentifier:v37 error:&v133];
    v10 = v133;
    v17 = v20;
    if (v10)
    {
      (*(*(a1 + 64) + 16))();
      v28 = v132;
      v23 = v126;
      v14 = v130;
LABEL_58:

      goto LABEL_59;
    }

    v117 = *(a1 + 40);
    v119 = *(a1 + 48);
    v40 = [v4 payloadVisibleName];
    v122 = v19;
    v14 = v130;
    if (v40)
    {
      [v117 addAccountDescriptionToProperties:v3 account:v119 description:v40];
    }

    else
    {
      v41 = [v4 payloadIncomingServer];
      v113 = [v41 payloadHostName];
      [v117 addAccountDescriptionToProperties:v3 account:v119 description:v113];
    }

    v42 = [v4 payloadIncomingServer];
    v43 = [v42 payloadServerType];
    v44 = [v43 isEqualToString:RMModelAccountMailDeclaration_IncomingServer_ServerType_IMAP];
    v45 = &ACAccountTypeIdentifierIMAP;
    if (!v44)
    {
      v45 = &ACAccountTypeIdentifierPOP;
    }

    [v3 setObject:*v45 forKeyedSubscript:?];

    v46 = *(a1 + 40);
    v120 = [v4 payloadIncomingServer];
    v47 = [v120 payloadAuthenticationMethod];
    v48 = [v46 _authSchemeForAuthenticationMethod:v47];
    [v3 setObject:v48 forKeyedSubscript:@"_remotemanagement_authenticationScheme"];

    v49 = [v8 payloadEmailAddress];

    if (v49)
    {
      v50 = [v8 payloadEmailAddress];
      [v3 setObject:v50 forKeyedSubscript:@"_remotemanagement_emailAddress"];
    }

    v51 = [v8 payloadFullName];

    if (v51)
    {
      v52 = [v8 payloadFullName];
      [v3 setObject:v52 forKeyedSubscript:@"_remotemanagement_fullUserName"];
    }

    v53 = [v4 payloadIncomingServer];
    v54 = [v53 payloadHostName];
    [v3 setObject:v54 forKeyedSubscript:@"_remotemanagement_hostname"];

    v55 = [v4 payloadIncomingServer];
    v56 = [v55 payloadIMAPPathPrefix];

    if (v56)
    {
      v140 = v56;
      v57 = [NSArray arrayWithObjects:&v140 count:1];
      [v3 setObject:v57 forKeyedSubscript:@"_remotemanagement_imapServerPathPrefixKey"];
    }

    if (v128)
    {
      [v3 setObject:v128 forKeyedSubscript:@"_remotemanagement_password"];
      [v3 setObject:&__kCFBooleanTrue forKeyedSubscript:@"_remotemanagement_shouldNeverUseSyncableCredentials"];
    }

    v121 = v56;
    v58 = [v4 payloadIncomingServer];
    v59 = [v58 payloadPort];

    if (v59)
    {
      [v3 setObject:v59 forKeyedSubscript:@"_remotemanagement_port"];
    }

    v118 = v59;
    v60 = *(a1 + 56);
    v114 = [v3 objectForKeyedSubscript:@"RemoteManagementAccountType"];
    v61 = [v60 accountTypeWithAccountTypeIdentifier:v114];
    v62 = [v61 supportedDataclasses];
    [v3 setObject:v62 forKeyedSubscript:?];

    v63 = *(a1 + 48);
    if (v63)
    {
      [v63 enabledDataclasses];
    }

    else
    {
      [v3 objectForKeyedSubscript:@"_remotemanagement_provisionedDataclasses"];
    }
    v64 = ;
    [v3 setObject:v64 forKeyedSubscript:@"_remotemanagement_enabledDataclasses"];

    if (v129)
    {
      [v3 setObject:v129 forKeyedSubscript:@"_remotemanagement_username"];
    }

    [v3 setObject:&__kCFBooleanTrue forKeyedSubscript:@"_remotemanagement_usessl"];
    v65 = *(a1 + 40);
    v115 = [v4 payloadOutgoingServer];
    v66 = [v115 payloadAuthenticationMethod];
    v67 = [v65 _authSchemeForAuthenticationMethod:v66];
    [v3 setObject:v67 forKeyedSubscript:@"_remotemanagement_authenticationSchemeSecondary"];

    v68 = [v4 payloadOutgoingServer];
    v69 = [v68 payloadHostName];
    [v3 setObject:v69 forKeyedSubscript:@"_remotemanagement_hostnameSecondary"];

    if (v132)
    {
      [v3 setObject:v132 forKeyedSubscript:@"_remotemanagement_passwordSecondary"];
      [v3 setObject:&__kCFBooleanTrue forKeyedSubscript:@"_remotemanagement_shouldNeverUseSyncableCredentialsSecondary"];
    }

    v70 = [v4 payloadOutgoingServer];
    v71 = [v70 payloadPort];

    if (v71)
    {
      [v3 setObject:v71 forKeyedSubscript:@"_remotemanagement_portSecondary"];
    }

    v116 = v71;
    if (v122)
    {
      [v3 setObject:v122 forKeyedSubscript:@"_remotemanagement_usernameSecondary"];
    }

    [v3 setObject:&__kCFBooleanTrue forKeyedSubscript:@"_remotemanagement_usesslSecondary"];
    v72 = [v4 payloadSMIME];
    v73 = [v72 payloadSigning];

    if (v73)
    {
      v104 = [v4 payloadSMIME];
      v74 = [v104 payloadSigning];
      v75 = [v74 payloadEnabled];
      [v3 setObject:v75 forKeyedSubscript:@"_remotemanagement_smimeSigningEnabled"];

      [v3 setObject:v127 forKeyedSubscript:@"_remotemanagement_smimeSigningIdentity"];
      v105 = [v4 payloadSMIME];
      v76 = [v105 payloadSigning];
      v77 = [v76 payloadUserOverrideable];
      [v3 setObject:v77 forKeyedSubscript:@"_remotemanagement_smimeSigningOverrideable"];

      v106 = [v4 payloadSMIME];
      v78 = [v106 payloadSigning];
      v79 = [v78 payloadIdentityUserOverrideable];
      [v3 setObject:v79 forKeyedSubscript:@"_remotemanagement_smimeSigningIdentityOverrideable"];
    }

    v80 = [v4 payloadSMIME];
    v81 = [v80 payloadEncryption];

    if (v81)
    {
      v107 = [v4 payloadSMIME];
      v82 = [v107 payloadEncryption];
      v83 = [v82 payloadEnabled];
      [v3 setObject:v83 forKeyedSubscript:@"_remotemanagement_smimeEncryptionEnabledByDefault"];

      [v3 setObject:v124 forKeyedSubscript:@"_remotemanagement_smimeEncryptionIdentity"];
      v108 = [v4 payloadSMIME];
      v84 = [v108 payloadEncryption];
      v85 = [v84 payloadUserOverrideable];
      [v3 setObject:v85 forKeyedSubscript:@"_remotemanagement_smimeEncryptionOverrideable"];

      v109 = [v4 payloadSMIME];
      v86 = [v109 payloadEncryption];
      v87 = [v86 payloadIdentityUserOverrideable];
      [v3 setObject:v87 forKeyedSubscript:@"_remotemanagement_smimeEncryptionIdentityOverrideable"];

      v110 = [v4 payloadSMIME];
      v88 = [v110 payloadEncryption];
      v89 = [v88 payloadPerMessageSwitchEnabled];
      [v3 setObject:v89 forKeyedSubscript:@"_remotemanagement_smimeEncryptionEncryptionPerMessage"];
    }

    v111 = [v4 payloadIncomingServer];
    v90 = [v111 payloadAuthenticationMethod];
    v91 = RMModelAccountMailDeclaration_IncomingServer_AuthenticationMethod_none;
    v102 = [v90 isEqualToString:RMModelAccountMailDeclaration_IncomingServer_AuthenticationMethod_none];
    v103 = v90;
    if (v102)
    {
      v92 = [v4 payloadIncomingServer];
      v93 = [v92 payloadAuthenticationCredentialsAssetReference];
      if (v93)
      {

        goto LABEL_55;
      }

      v98 = v92;
    }

    v101 = [v4 payloadOutgoingServer];
    v99 = [v101 payloadAuthenticationMethod];
    if ([v99 isEqualToString:v91])
    {
      v94 = [v4 payloadOutgoingServer];
      v95 = [v94 payloadAuthenticationCredentialsAssetReference];
      v100 = v95 != 0;
    }

    else
    {
      v100 = 0;
    }

    if (v102)
    {
    }

    if (!v100)
    {
      (*(*(a1 + 64) + 16))(*(a1 + 64), v3, [*(a1 + 40) changesRequireRecreation:*(a1 + 48) properties:v3], 0);
      goto LABEL_57;
    }

LABEL_55:
    v138 = NSDebugDescriptionErrorKey;
    v112 = [NSString stringWithFormat:@"AuthenticationMethod key set to None while AuthenticationCredentialsAssetReference key is present"];
    v139 = v112;
    v96 = [NSDictionary dictionaryWithObjects:&v139 forKeys:&v138 count:1];
    v97 = [NSError errorWithDomain:@"AccountTransformerMailErrorDomain" code:0 userInfo:v96];

    (*(*(a1 + 64) + 16))();
LABEL_57:
    v19 = v122;

    v28 = v132;
    v23 = v126;
    goto LABEL_58;
  }

  v11 = +[RMLog accountTransformerMail];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    sub_100013674();
  }

  v12 = *(a1 + 64);
  v5 = +[RMErrorUtilities createInternalError];
  (*(v12 + 16))(v12, 0, 0, v5);
LABEL_63:
}

void sub_1000103AC(id *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if ([(__CFString *)v5 isEqualToString:@"_remotemanagement_accountDescription"])
  {
    v7 = a1[4];
    v8 = &MFMailAccountDescription;
    goto LABEL_3;
  }

  if ([(__CFString *)v5 isEqualToString:@"_remotemanagement_accountDefaultDescription"])
  {
    v11 = a1[5];
    v12 = @"RemoteManagementDefaultDescription";
LABEL_8:
    [v11 setObject:v6 forKeyedSubscript:v12];
    goto LABEL_30;
  }

  if ([(__CFString *)v5 isEqualToString:@"_remotemanagement_authenticationScheme"])
  {
    v7 = a1[4];
    v8 = &MFMailAccountAuthenticationScheme;
    goto LABEL_3;
  }

  if ([(__CFString *)v5 isEqualToString:@"_remotemanagement_emailAddress"])
  {
    v13 = a1[4];
    v48 = v6;
    v14 = [NSArray arrayWithObjects:&v48 count:1];
    [v13 setAccountProperty:v14 forKey:MailAccountEmailAddresses];
LABEL_29:

    goto LABEL_30;
  }

  if ([(__CFString *)v5 isEqualToString:@"_remotemanagement_enabledDataclasses"])
  {
    v15 = [a1[6] objectForKeyedSubscript:@"_remotemanagement_provisionedDataclasses"];
    v16 = [v15 mutableCopy];

    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    v17 = [a1[6] objectForKeyedSubscript:@"_remotemanagement_enabledDataclasses"];
    v18 = [v17 countByEnumeratingWithState:&v41 objects:v47 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v42;
      do
      {
        for (i = 0; i != v19; i = i + 1)
        {
          if (*v42 != v20)
          {
            objc_enumerationMutation(v17);
          }

          v22 = *(*(&v41 + 1) + 8 * i);
          [a1[5] setEnabled:1 forDataclass:v22];
          [v16 removeObject:v22];
        }

        v19 = [v17 countByEnumeratingWithState:&v41 objects:v47 count:16];
      }

      while (v19);
    }

    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    v14 = v16;
    v23 = [v14 countByEnumeratingWithState:&v37 objects:v46 count:16];
    if (v23)
    {
      v24 = v23;
      v25 = *v38;
      do
      {
        for (j = 0; j != v24; j = j + 1)
        {
          if (*v38 != v25)
          {
            objc_enumerationMutation(v14);
          }

          [a1[5] setEnabled:0 forDataclass:*(*(&v37 + 1) + 8 * j)];
        }

        v24 = [v14 countByEnumeratingWithState:&v37 objects:v46 count:16];
      }

      while (v24);
    }

    goto LABEL_29;
  }

  if ([(__CFString *)v5 isEqualToString:@"_remotemanagement_fullUserName"])
  {
    v7 = a1[4];
    v8 = &MailAccountFullUserName;
    goto LABEL_3;
  }

  if ([(__CFString *)v5 isEqualToString:@"_remotemanagement_hostname"])
  {
    [a1[4] setHostname:v6];
    goto LABEL_30;
  }

  if ([(__CFString *)v5 isEqualToString:@"_remotemanagement_imapServerPathPrefixKey"])
  {
    v7 = a1[4];
    v8 = &IMAPServerPathPrefix;
    goto LABEL_3;
  }

  if ([(__CFString *)v5 isEqualToString:@"_remotemanagement_managingOwnerIdentifierKey"])
  {
    [a1[5] setManagingOwnerIdentifier:v6];
    goto LABEL_30;
  }

  if ([(__CFString *)v5 isEqualToString:@"_remotemanagement_managingSourceNameKey"])
  {
    [a1[5] setManagingSourceName:v6];
    goto LABEL_30;
  }

  if ([(__CFString *)v5 isEqualToString:@"_remotemanagement_isManagedKey"])
  {
    v11 = a1[5];
    v12 = @"MCAccountIsManaged";
    goto LABEL_8;
  }

  if ([(__CFString *)v5 isEqualToString:@"_remotemanagement_password"])
  {
    [a1[4] setPassword:v6];
    goto LABEL_30;
  }

  if ([(__CFString *)v5 isEqualToString:@"_remotemanagement_port"])
  {
    [a1[4] setPortNumber:{objc_msgSend(v6, "unsignedIntValue")}];
    goto LABEL_30;
  }

  if ([(__CFString *)v5 isEqualToString:@"_remotemanagement_provisionedDataclasses"])
  {
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v14 = [a1[6] objectForKeyedSubscript:{@"_remotemanagement_provisionedDataclasses", 0}];
    v27 = [v14 countByEnumeratingWithState:&v33 objects:v45 count:16];
    if (v27)
    {
      v28 = v27;
      v29 = *v34;
      do
      {
        for (k = 0; k != v28; k = k + 1)
        {
          if (*v34 != v29)
          {
            objc_enumerationMutation(v14);
          }

          [a1[5] setProvisioned:1 forDataclass:*(*(&v33 + 1) + 8 * k)];
        }

        v28 = [v14 countByEnumeratingWithState:&v33 objects:v45 count:16];
      }

      while (v28);
    }

    goto LABEL_29;
  }

  if ([(__CFString *)v5 isEqualToString:@"_remotemanagement_shouldNeverUseSyncableCredentials"])
  {
    v7 = a1[4];
    v8 = &ACAccountPropertyShouldNeverUseSyncableCredential;
  }

  else
  {
    if ([(__CFString *)v5 isEqualToString:@"_remotemanagement_username"])
    {
      [a1[4] setUsername:v6];
      goto LABEL_30;
    }

    if ([(__CFString *)v5 isEqualToString:@"_remotemanagement_smimeEncryptionEnabledByDefault"])
    {
      v7 = a1[4];
      v8 = &MFMailAccountEncryptionEnabled;
    }

    else
    {
      if ([(__CFString *)v5 isEqualToString:@"_remotemanagement_smimeEncryptionIdentity"])
      {
        v7 = a1[4];
        v9 = @"MCSMIMEEncryptionIdentityPersistentID";
        goto LABEL_4;
      }

      if ([(__CFString *)v5 isEqualToString:@"_remotemanagement_smimeEncryptionOverrideable"])
      {
        v7 = a1[4];
        v8 = &MFMailAccountEncryptByDefaultUserOverrideable;
      }

      else if ([(__CFString *)v5 isEqualToString:@"_remotemanagement_smimeEncryptionIdentityOverrideable"])
      {
        v7 = a1[4];
        v8 = &MFMailAccountEncryptionIdentityUserOverrideable;
      }

      else if ([(__CFString *)v5 isEqualToString:@"_remotemanagement_smimeEncryptionEncryptionPerMessage"])
      {
        v7 = a1[4];
        v8 = &MFMailAccountPerMessageEncryptionEnabled;
      }

      else if ([(__CFString *)v5 isEqualToString:@"_remotemanagement_smimeSigningEnabled"])
      {
        v7 = a1[4];
        v8 = &MFMailAccountSigningEnabled;
      }

      else
      {
        if ([(__CFString *)v5 isEqualToString:@"_remotemanagement_smimeSigningIdentity"])
        {
          v7 = a1[4];
          v9 = @"MCSMIMESigningIdentityPersistentID";
          goto LABEL_4;
        }

        if ([(__CFString *)v5 isEqualToString:@"_remotemanagement_smimeSigningOverrideable"])
        {
          v7 = a1[4];
          v8 = &MFMailAccountSigningUserOverrideable;
        }

        else
        {
          if (![(__CFString *)v5 isEqualToString:@"_remotemanagement_smimeSigningIdentityOverrideable"])
          {
            if ([(__CFString *)v5 isEqualToString:@"_remotemanagement_usessl"])
            {
              [a1[4] setUsesSSL:{objc_msgSend(v6, "BOOLValue")}];
              goto LABEL_30;
            }

            if (([(__CFString *)v5 hasPrefix:@"_remotemanagement_"]& 1) != 0)
            {
              goto LABEL_30;
            }

            v31 = ACAccountPropertyPersonaIdentifier;
            v32 = [(__CFString *)v5 isEqualToString:ACAccountPropertyPersonaIdentifier];
            v7 = a1[4];
            v10 = v6;
            if (v32)
            {
              v9 = v31;
            }

            else
            {
              v9 = v5;
            }

            goto LABEL_5;
          }

          v7 = a1[4];
          v8 = &MFMailAccountSigningIdentityUserOverrideable;
        }
      }
    }
  }

LABEL_3:
  v9 = *v8;
LABEL_4:
  v10 = v6;
LABEL_5:
  [v7 setAccountProperty:v10 forKey:v9];
LABEL_30:
}

void sub_100010AE8(uint64_t a1, void *a2, void *a3)
{
  v13 = a2;
  v5 = a3;
  if ([v13 isEqualToString:@"_remotemanagement_authenticationSchemeSecondary"])
  {
    v6 = *(a1 + 32);
    v7 = &MFMailAccountAuthenticationScheme;
LABEL_3:
    v8 = *v7;
    v9 = v5;
LABEL_4:
    [v6 setAccountProperty:v9 forKey:v8];
    goto LABEL_14;
  }

  if ([v13 isEqualToString:@"_remotemanagement_hostnameSecondary"])
  {
    [*(a1 + 32) setHostname:v5];
    goto LABEL_14;
  }

  if ([v13 isEqualToString:@"_remotemanagement_managingOwnerIdentifierKey"])
  {
    v10 = [*(a1 + 32) persistentAccount];
    [v10 setManagingOwnerIdentifier:v5];
LABEL_13:

    goto LABEL_14;
  }

  if ([v13 isEqualToString:@"_remotemanagement_managingSourceNameKey"])
  {
    v10 = [*(a1 + 32) persistentAccount];
    [v10 setManagingSourceName:v5];
    goto LABEL_13;
  }

  if ([v13 isEqualToString:@"_remotemanagement_isManagedKey"])
  {
    v10 = [*(a1 + 32) persistentAccount];
    [v10 setAccountProperty:v5 forKey:@"MCAccountIsManaged"];
    goto LABEL_13;
  }

  if ([v13 isEqualToString:@"_remotemanagement_passwordSecondary"])
  {
    [*(a1 + 32) setPassword:v5];
  }

  else if ([v13 isEqualToString:@"_remotemanagement_portSecondary"])
  {
    [*(a1 + 32) setPortNumber:{objc_msgSend(v5, "unsignedIntValue")}];
  }

  else
  {
    if ([v13 isEqualToString:@"_remotemanagement_smimeEncryptionEncryptionPerMessage"])
    {
      v6 = *(a1 + 32);
      v7 = &MFMailAccountPerMessageEncryptionEnabled;
      goto LABEL_3;
    }

    if ([v13 isEqualToString:@"_remotemanagement_usernameSecondary"])
    {
      [*(a1 + 32) setUsername:v5];
    }

    else if ([v13 isEqualToString:@"_remotemanagement_usesslSecondary"])
    {
      [*(a1 + 32) setUsesSSL:{objc_msgSend(v5, "BOOLValue")}];
    }

    else if (([v13 isEqualToString:@"RemoteManagementAccountType"] & 1) == 0)
    {
      if ([v13 isEqualToString:@"_remotemanagement_shouldNeverUseSyncableCredentialsSecondary"])
      {
        v6 = *(a1 + 32);
        v7 = &ACAccountPropertyShouldNeverUseSyncableCredential;
        goto LABEL_3;
      }

      if (([v13 hasPrefix:@"_remotemanagement_"] & 1) == 0)
      {
        v11 = ACAccountPropertyPersonaIdentifier;
        v12 = [v13 isEqualToString:ACAccountPropertyPersonaIdentifier];
        v6 = *(a1 + 32);
        v9 = v5;
        if (v12)
        {
          v8 = v11;
        }

        else
        {
          v8 = v13;
        }

        goto LABEL_4;
      }
    }
  }

LABEL_14:
}

id sub_100010DB4(uint64_t a1)
{
  v2 = +[RMLog accountTransformerMail];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    sub_1000139E0(a1, v2, v3, v4, v5, v6, v7, v8);
  }

  [MailAccount setMailAccounts:*(a1 + 40)];
  return [*(a1 + 48) savePersistentAccount];
}

id sub_100010E20(uint64_t a1)
{
  v2 = +[RMLog accountTransformerMail];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    sub_100013A50(a1, v2, v3, v4, v5, v6, v7, v8);
  }

  return [*(a1 + 40) savePersistentAccount];
}

void sub_100011608(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 0xCu);
}

void sub_100011674(id a1)
{
  qword_100022148 = os_log_create("com.apple.remotemanagementd", "accountTransformerSubscribedCalendar");

  _objc_release_x1();
}

void sub_1000117EC(uint64_t a1, void *a2)
{
  v3 = [a2 mutableCopy];
  v4 = [*(a1 + 32) declaration];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [v4 payloadAuthenticationCredentialsAssetReference];
    v6 = *(a1 + 32);
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_1000119AC;
    v11[3] = &unk_10001CC78;
    v7 = *(a1 + 64);
    v8 = *(a1 + 40);
    v16 = v7;
    v11[4] = v8;
    v12 = v3;
    v13 = *(a1 + 48);
    v14 = v4;
    v15 = *(a1 + 56);
    [RMAssetResolverController resolveUserNameAndPasswordAsset:v6 assetIdentifier:v5 completionHandler:v11];
  }

  else
  {
    v9 = +[RMLog accountTransformerSubscribedCalendar];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_1000134DC(v4, v9);
    }

    v10 = *(a1 + 64);
    v5 = +[RMErrorUtilities createInternalError];
    (*(v10 + 16))(v10, 0, 0, v5);
  }
}

void sub_1000119AC(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v19 = v5;
  if (a3)
  {
    (*(*(a1 + 72) + 16))();
  }

  else
  {
    v6 = [v5 payloadUserName];
    v7 = [v19 payloadPassword];
    v8 = *(a1 + 32);
    v9 = *(a1 + 40);
    v10 = *(a1 + 48);
    v11 = [*(a1 + 56) payloadVisibleName];
    if (v11)
    {
      [v8 addAccountDescriptionToProperties:v9 account:v10 description:v11];
    }

    else
    {
      v12 = [*(a1 + 56) payloadCalendarURL];
      [v8 addAccountDescriptionToProperties:v9 account:v10 description:v12];
    }

    [*(a1 + 40) setObject:ACAccountTypeIdentifierSubscribedCalendar forKeyedSubscript:@"RemoteManagementAccountType"];
    v13 = *(a1 + 64);
    v14 = [*(a1 + 40) objectForKeyedSubscript:@"RemoteManagementAccountType"];
    v15 = [v13 accountTypeWithAccountTypeIdentifier:v14];
    v16 = [v15 supportedDataclasses];
    [*(a1 + 40) setObject:v16 forKeyedSubscript:@"_remotemanagement_provisionedDataclasses"];

    v17 = [*(a1 + 40) objectForKeyedSubscript:@"_remotemanagement_provisionedDataclasses"];
    [*(a1 + 40) setObject:v17 forKeyedSubscript:@"_remotemanagement_enabledDataclasses"];

    v18 = [*(a1 + 56) payloadCalendarURL];
    [*(a1 + 40) setObject:v18 forKeyedSubscript:@"_remotemanagement_subscribed_calendar_url"];

    if (v7)
    {
      [*(a1 + 40) setObject:v7 forKeyedSubscript:@"_remotemanagement_password"];
      [*(a1 + 40) setObject:&__kCFBooleanTrue forKeyedSubscript:@"_remotemanagement_shouldNeverUseSyncableCredentials"];
    }

    if (v6)
    {
      [*(a1 + 40) setObject:v6 forKeyedSubscript:@"_remotemanagement_username"];
    }

    [*(a1 + 40) setObject:&__kCFBooleanTrue forKeyedSubscript:@"_remotemanagement_usessl"];
    (*(*(a1 + 72) + 16))(*(a1 + 72), *(a1 + 40), [*(a1 + 32) changesRequireRecreation:*(a1 + 48) properties:*(a1 + 40)], 0);
  }
}

void sub_100011E88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100011EA0(id *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (![(__CFString *)v5 isEqualToString:@"_remotemanagement_accountDescription"])
  {
    if ([(__CFString *)v5 isEqualToString:@"_remotemanagement_accountDefaultDescription"])
    {
      v7 = a1[5];
      v8 = &RMAccountPropertyKeyDefaultDescription;
      goto LABEL_5;
    }

    if ([(__CFString *)v5 isEqualToString:@"_remotemanagement_provisionedDataclasses"])
    {
      v39 = 0u;
      v40 = 0u;
      v37 = 0u;
      v38 = 0u;
      v11 = [a1[6] objectForKeyedSubscript:@"_remotemanagement_provisionedDataclasses"];
      v12 = [v11 countByEnumeratingWithState:&v37 objects:v43 count:16];
      if (v12)
      {
        v13 = v12;
        v14 = *v38;
        do
        {
          for (i = 0; i != v13; i = i + 1)
          {
            if (*v38 != v14)
            {
              objc_enumerationMutation(v11);
            }

            [a1[5] setProvisioned:1 forDataclass:*(*(&v37 + 1) + 8 * i)];
          }

          v13 = [v11 countByEnumeratingWithState:&v37 objects:v43 count:16];
        }

        while (v13);
      }
    }

    else
    {
      if (![(__CFString *)v5 isEqualToString:@"_remotemanagement_enabledDataclasses"])
      {
        if ([(__CFString *)v5 isEqualToString:@"_remotemanagement_isManagedKey"])
        {
          v7 = a1[5];
          v9 = @"MCAccountIsManaged";
          goto LABEL_6;
        }

        if ([(__CFString *)v5 isEqualToString:@"_remotemanagement_managingOwnerIdentifierKey"])
        {
          [a1[5] setManagingOwnerIdentifier:v6];
          goto LABEL_34;
        }

        if ([(__CFString *)v5 isEqualToString:@"_remotemanagement_managingSourceNameKey"])
        {
          [a1[5] setManagingSourceName:v6];
          goto LABEL_34;
        }

        if ([(__CFString *)v5 isEqualToString:@"_remotemanagement_password"])
        {
          [a1[4] setPassword:v6];
          goto LABEL_34;
        }

        if (![(__CFString *)v5 isEqualToString:@"_remotemanagement_shouldNeverUseSyncableCredentials"])
        {
          if ([(__CFString *)v5 isEqualToString:@"_remotemanagement_subscribed_calendar_url"])
          {
            [a1[4] setHost:v6];
            goto LABEL_34;
          }

          if ([(__CFString *)v5 isEqualToString:@"_remotemanagement_username"])
          {
            [a1[4] setUsername:v6];
            goto LABEL_34;
          }

          if ([(__CFString *)v5 isEqualToString:@"_remotemanagement_usessl"])
          {
            [a1[4] setUseSSL:{objc_msgSend(v6, "BOOLValue")}];
            goto LABEL_34;
          }

          if (([(__CFString *)v5 hasPrefix:@"_remotemanagement_"]& 1) != 0)
          {
            goto LABEL_34;
          }

          v28 = ACAccountPropertyPersonaIdentifier;
          if ([(__CFString *)v5 isEqualToString:ACAccountPropertyPersonaIdentifier])
          {
            [a1[4] setAccountProperty:v6 forKey:v28];
            goto LABEL_34;
          }

          v7 = a1[5];
          v10 = v6;
          v9 = v5;
          goto LABEL_7;
        }

        v7 = a1[4];
        v8 = &ACAccountPropertyShouldNeverUseSyncableCredential;
LABEL_5:
        v9 = *v8;
LABEL_6:
        v10 = v6;
LABEL_7:
        [v7 setObject:v10 forKeyedSubscript:v9];
        goto LABEL_34;
      }

      v16 = [a1[6] objectForKeyedSubscript:@"_remotemanagement_provisionedDataclasses"];
      v17 = [v16 mutableCopy];

      v35 = 0u;
      v36 = 0u;
      v33 = 0u;
      v34 = 0u;
      v18 = [a1[6] objectForKeyedSubscript:@"_remotemanagement_enabledDataclasses"];
      v19 = [v18 countByEnumeratingWithState:&v33 objects:v42 count:16];
      if (v19)
      {
        v20 = v19;
        v21 = *v34;
        do
        {
          for (j = 0; j != v20; j = j + 1)
          {
            if (*v34 != v21)
            {
              objc_enumerationMutation(v18);
            }

            v23 = *(*(&v33 + 1) + 8 * j);
            [a1[5] setEnabled:1 forDataclass:v23];
            [v17 removeObject:v23];
          }

          v20 = [v18 countByEnumeratingWithState:&v33 objects:v42 count:16];
        }

        while (v20);
      }

      v31 = 0u;
      v32 = 0u;
      v29 = 0u;
      v30 = 0u;
      v11 = v17;
      v24 = [v11 countByEnumeratingWithState:&v29 objects:v41 count:16];
      if (v24)
      {
        v25 = v24;
        v26 = *v30;
        do
        {
          for (k = 0; k != v25; k = k + 1)
          {
            if (*v30 != v26)
            {
              objc_enumerationMutation(v11);
            }

            [a1[5] setEnabled:0 forDataclass:{*(*(&v29 + 1) + 8 * k), v29}];
          }

          v25 = [v11 countByEnumeratingWithState:&v29 objects:v41 count:16];
        }

        while (v25);
      }
    }

    goto LABEL_34;
  }

  [a1[4] setAccountDescription:v6];
LABEL_34:
}

uint64_t sub_100012360(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100012378(uint64_t a1)
{
  v2 = +[RMLog accountTransformerSubscribedCalendar];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    sub_10001344C(a1, v2);
  }

  v3 = [*(a1 + 40) saveAccount:*(a1 + 48) accountStore:*(a1 + 56)];
  v4 = *(*(a1 + 64) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

void sub_100012818(void *a1)
{
  v2 = [a1 identifier];
  v3 = [a1 accountType];
  v4 = [v3 description];
  sub_1000023FC();
  sub_100002414(&_mh_execute_header, v5, v6, "Accounts adapter found existing remotely managed secondary account: %{public}@ of type %{public}@", v7, v8, v9, v10, v11);
}

void sub_1000128CC(void *a1)
{
  v2 = [a1 identifier];
  v3 = [a1 accountType];
  v4 = [v3 description];
  sub_1000023FC();
  sub_100002414(&_mh_execute_header, v5, v6, "Accounts adapter found existing remotely managed account: %{public}@ of type %{public}@", v7, v8, v9, v10, v11);
}

void sub_100012980(uint64_t a1, NSObject *a2)
{
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "No transformer for %{public}@", &v2, 0xCu);
}

void sub_1000129F8(uint64_t a1, NSObject *a2)
{
  v2 = 138543362;
  v3 = a1;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "ACAccountStore returned the following actions for removal: %{public}@", &v2, 0xCu);
}

void sub_100012A84(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "Account configurations are only supported over the user channel", buf, 2u);
}

void sub_100012AC4(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v5 = [*(a1 + 32) declaration];
  v6 = [v5 declarationIdentifier];
  v7 = 138543618;
  v8 = v6;
  v9 = 2114;
  v10 = a2;
  _os_log_error_impl(&_mh_execute_header, a3, OS_LOG_TYPE_ERROR, "Failed to process configuration: %{public}@ %{public}@", &v7, 0x16u);
}

void sub_100012B88(uint64_t a1)
{
  v1 = *(a1 + 56);
  v2 = *(a1 + 64);
  sub_100003C48();
  sub_100003C70(&_mh_execute_header, v3, v4, "Removing account being updated: %{public}@ of type %{public}@", v5, v6, v7, v8, v9);
}

void sub_100012BF4(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(a1 + 48);
  sub_100003C48();
  sub_100003C60();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x20u);
}

void sub_100012C70(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(a1 + 48);
  sub_100003C48();
  sub_100003C70(&_mh_execute_header, v3, v4, "Removed account %{public}@ of type %{public}@ before recreating it", v5, v6, v7, v8, v9);
}

void sub_100012CDC(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  sub_100003C48();
  sub_100003C60();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x20u);
}

void sub_100012D58(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  sub_100003C48();
  sub_100003C70(&_mh_execute_header, v3, v4, "Removed account: %{public}@ of type %{public}@", v5, v6, v7, v8, v9);
}

void sub_100012E08(void *a1, NSObject *a2)
{
  v3 = [a1 declaration];
  v4 = [v3 declarationType];
  v5 = 138543362;
  v6 = v4;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "Creating account of type: %{public}@", &v5, 0xCu);
}

void sub_100012EB8(uint64_t a1, void *a2, NSObject *a3)
{
  v5 = [a2 declaration];
  v6 = [v5 declarationType];
  v7 = 138543618;
  v8 = a1;
  v9 = 2114;
  v10 = v6;
  _os_log_debug_impl(&_mh_execute_header, a3, OS_LOG_TYPE_DEBUG, "Applying properties to account %{public}@ of type: %{public}@", &v7, 0x16u);
}

void sub_100012F7C(uint64_t a1)
{
  v6 = *(a1 + 40);
  sub_100003C60();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_100013000(uint64_t a1, NSObject *a2)
{
  v2 = *(a1 + 40);
  v3 = 138543362;
  v4 = v2;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "Saved account: %{public}@", &v3, 0xCu);
}

void sub_100013090(uint64_t a1, NSObject *a2)
{
  v2 = 138543362;
  v3 = a1;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "Querying account status for key paths: %{public}@", &v2, 0xCu);
}

void sub_10001311C(void *a1, NSObject *a2)
{
  v4 = [a1 identifier];
  v5 = [a1 accountType];
  v6 = [v5 description];
  v7 = 138543618;
  v8 = v4;
  v9 = 2114;
  v10 = v6;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "Accounts adapter found existing remotely managed account: %{public}@ of type %{public}@", &v7, 0x16u);
}

void sub_1000131F0(uint64_t a1, NSObject *a2)
{
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "No handler for %{public}@", &v2, 0xCu);
}

void sub_100013344(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = *(a1 + 32);
  v4 = 138543618;
  v5 = v3;
  v6 = 2114;
  v7 = a2;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Unable to save account: %{public}@ %{public}@", &v4, 0x16u);
}

void sub_1000133D0(uint64_t a1, NSObject *a2)
{
  v2 = *(a1 + 32);
  v3 = 138543362;
  v4 = v2;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "Saved account: %{public}@", &v3, 0xCu);
}

void sub_10001344C(uint64_t a1, NSObject *a2)
{
  v2 = *(a1 + 32);
  v3 = 138543362;
  v4 = v2;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "Saving account under persona %{public}@", &v3, 0xCu);
}

void sub_1000134DC(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Incorrect declaration class: %@", &v2, 0xCu);
}

void sub_1000135D4(uint64_t a1, NSObject *a2)
{
  v2 = 138543362;
  v3 = a1;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "Saved Google account: %{public}@", &v2, 0xCu);
}