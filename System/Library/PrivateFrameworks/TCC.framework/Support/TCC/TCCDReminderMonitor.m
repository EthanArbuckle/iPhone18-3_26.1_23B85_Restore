@interface TCCDReminderMonitor
+ (double)positiveDoubleValueAtPreferenceKey:(id)a3 withFallback:(double)a4;
- (TCCDReminderMonitor)init;
- (id)reportResourceUsage:(id)a3;
- (void)setReminderCooldownPeriod:(int64_t)a3 with:(int64_t)a4;
- (void)showReminderPrompt:(id)a3 result:(id)a4;
@end

@implementation TCCDReminderMonitor

- (TCCDReminderMonitor)init
{
  v6.receiver = self;
  v6.super_class = TCCDReminderMonitor;
  v2 = [(TCCDReminderMonitor *)&v6 init];
  if (v2)
  {
    v2->_lastReminderTime = CFAbsoluteTimeGetCurrent();
    [TCCDReminderMonitor positiveDoubleValueAtPreferenceKey:@"reminderSystemCooldown" withFallback:604800.0];
    v2->_systemCooldown = v3;
    [TCCDReminderMonitor positiveDoubleValueAtPreferenceKey:@"reminderServiceCooldown" withFallback:15552000.0];
    v2->_serviceCooldown = v4;
  }

  return v2;
}

+ (double)positiveDoubleValueAtPreferenceKey:(id)a3 withFallback:(double)a4
{
  v5 = a3;
  valuePtr = 0.0;
  v6 = 0.0;
  if (os_variant_allows_internal_security_policies())
  {
    v7 = CFPreferencesCopyValue(v5, @"com.apple.tccd", kCFPreferencesCurrentUser, kCFPreferencesAnyHost);
    if (v7)
    {
      v8 = v7;
      TypeID = CFNumberGetTypeID();
      if (TypeID == CFGetTypeID(v8) && !CFNumberGetValue(v8, kCFNumberDoubleType, &valuePtr))
      {
        valuePtr = 0.0;
      }

      CFRelease(v8);
      v6 = valuePtr;
    }
  }

  if (v6 > 0.0)
  {
    a4 = v6;
  }

  return a4;
}

- (id)reportResourceUsage:(id)a3
{
  v4 = a3;
  v5 = [v4 subjectIdentity];
  [v4 attributionChain];
  v6 = v33 = self;
  v68[0] = 0;
  v68[1] = v68;
  v68[2] = 0x3032000000;
  v68[3] = sub_1000074F0;
  v68[4] = sub_100007578;
  v69 = 0;
  v66[0] = 0;
  v66[1] = v66;
  v66[2] = 0x2020000000;
  v67 = 0;
  v62 = 0;
  v63 = &v62;
  v64 = 0x2020000000;
  v65 = 0;
  v58 = 0;
  v59 = &v58;
  v60 = 0x2020000000;
  v61 = 0;
  v54 = 0;
  v55 = &v54;
  v56 = 0x2020000000;
  v57 = 0;
  v50 = 0;
  v51 = &v50;
  v52 = 0x2020000000;
  v53 = 1;
  v46 = 0;
  v47 = &v46;
  v48 = 0x2020000000;
  Current = CFAbsoluteTimeGetCurrent();
  v43[0] = _NSConcreteStackBlock;
  v43[1] = 3221225472;
  v43[2] = sub_1000279F8;
  v43[3] = &unk_1000A5318;
  v7 = v5;
  v44 = v7;
  v45 = v4;
  v34[0] = _NSConcreteStackBlock;
  v34[1] = 3221225472;
  v34[2] = sub_100027B40;
  v34[3] = &unk_1000A5BD8;
  v37 = v66;
  v38 = &v58;
  v39 = &v54;
  v40 = &v50;
  v41 = &v46;
  v42 = &v62;
  v36 = v68;
  v34[4] = self;
  v8 = v45;
  v35 = v8;
  v9 = v6;
  if (db_eval("SELECT client, client_type, last_reminded, last_modified, flags, auth_version FROM access WHERE auth_value = ? and client = ? and service = ? and (auth_reason = ? or auth_reason = ?)", v43, v34))
  {
    v10 = tcc_access_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = [v8 service];
      sub_1000282BC(v9, v11, buf, v10);
    }

    v12 = 0;
  }

  else
  {
    if (&_TMIsAutomaticTimeEnabled && *(v63 + 24) == 1 && !TMIsAutomaticTimeEnabled())
    {
      v13 = tcc_access_log();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v71 = "[TCCDReminderMonitor reportResourceUsage:]";
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%s: automatic time is disabled, not surfacing reminder prompt", buf, 0xCu);
      }

      *(v63 + 24) = 0;
    }

    v14 = tcc_access_log();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = *(v63 + 24);
      *buf = 136315394;
      v71 = "[TCCDReminderMonitor reportResourceUsage:]";
      v72 = 1024;
      LODWORD(v73) = v15;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "%s: shouldRemind: %d", buf, 0x12u);
    }

    if (*(v63 + 24) == 1)
    {
      v16 = self;
      objc_sync_enter(v16);
      v17 = v47[3];
      lastReminderTime = v16->_lastReminderTime;
      [(TCCDReminderMonitor *)v16 systemCooldown];
      v20 = v17 - lastReminderTime <= v19;
      if (v17 - lastReminderTime <= v19)
      {
        v21 = tcc_access_log();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
        {
          v22 = *(v47 + 3);
          v23 = v16->_lastReminderTime;
          [(TCCDReminderMonitor *)v16 systemCooldown];
          v24 = v47[3] - v16->_lastReminderTime;
          *buf = 134218752;
          v71 = v22;
          v72 = 2048;
          v73 = v23;
          v74 = 2048;
          v75 = v25;
          v76 = 2048;
          v77 = v24;
          _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "reminder cooldown not expired: now %f, last_reminded %f, cooldown interval %f, elapsed %f", buf, 0x2Au);
          self = v33;
        }
      }

      else
      {
        v26 = tcc_access_log();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
        {
          v28 = *(v47 + 3);
          v29 = v16->_lastReminderTime;
          [(TCCDReminderMonitor *)v16 systemCooldown];
          v30 = v47[3] - v16->_lastReminderTime;
          *buf = 134218752;
          v71 = v28;
          v72 = 2048;
          v73 = v29;
          v74 = 2048;
          v75 = v31;
          v76 = 2048;
          v77 = v30;
          _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "reminder cooldown expired: now %f, last_reminded %f, cooldown interval %f, elapsed: %f", buf, 0x2Au);
          self = v33;
        }

        v16->_lastReminderTime = v47[3];
      }

      objc_sync_exit(v16);
    }

    else
    {
      v20 = 1;
    }

    v12 = objc_opt_new();
    [v12 setPreviousAuthorization:2];
    [v12 setDatabaseFlags:*(v55 + 6)];
    [v12 setAuthorizationVersion:*(v51 + 6)];
    [v12 setLastReminderTime:*(v59 + 6)];
    [v12 setPromptType:3];
    if (!v20 && (v63[3] & 1) != 0)
    {
      [(TCCDReminderMonitor *)self showReminderPrompt:v8 result:v12];
      [v12 setLastReminderTime:v47[3]];
    }

    v10 = tcc_access_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v71 = "[TCCDReminderMonitor reportResourceUsage:]";
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
    }
  }

  _Block_object_dispose(&v46, 8);
  _Block_object_dispose(&v50, 8);
  _Block_object_dispose(&v54, 8);
  _Block_object_dispose(&v58, 8);
  _Block_object_dispose(&v62, 8);
  _Block_object_dispose(v66, 8);
  _Block_object_dispose(v68, 8);

  return v12;
}

- (void)showReminderPrompt:(id)a3 result:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 service];
  v8 = [TCCDAccessIdentity alloc];
  v9 = [v5 attributionChain];
  v10 = -[TCCDAccessIdentity initWithAttributionChain:preferMostSpecificIdentifier:](v8, "initWithAttributionChain:preferMostSpecificIdentifier:", v9, [v7 hasParanoidSecurityPolicy]);

  v11 = [(TCCDAccessIdentity *)v10 displayName];
  if (v11)
  {
    v23 = v6;
    v12 = [v7 reminderTitleTextLocalizationKey];
    if (!v12)
    {
      v12 = [v7 requestTitleTextLocalizationKey];
    }

    v13 = [v7 reminderLimitedButtonTitleTextLocalizationKey];
    if (!v13)
    {
      v13 = [v7 buttonTitleLocalizationKeyForAuthorization:objc_msgSend(v7 desiredAuth:{"downgradeAuthRight"), 2}];
    }

    v22 = [v7 localizedTextWithKey:v13];
    v14 = [v7 downgradeAuthRight];
    v15 = [v7 reminderAllowButtonTitleTextLocalizationKey];
    if (!v15)
    {
      v15 = [v7 allowAuthorizationButtonTitleLocalizationKey];
    }

    v21 = [v7 localizedTextWithKey:v15];
    v16 = [v7 localizedTextWithKey:v12];
    if (!v16)
    {
      v17 = tcc_access_log();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v25 = v7;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Could not find localized string for service: %@", buf, 0xCu);
      }

      goto LABEL_20;
    }

    v17 = [NSString stringWithValidatedFormat:v16 validFormatSpecifiers:@"%@" error:0, v11];
    if (v17)
    {
      [v5 setReminderPrompt:1];
      [v5 presentSynchronousPromptWithHeader:v17 message:0 aButtonTitle:v21 aButtonAuth:v14 bButtonTitle:v22 bButtonAuth:2 currentAuth:2 updatingResult:v23];
      v18 = tcc_access_log();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v25 = "[TCCDReminderMonitor showReminderPrompt:result:]";
        v19 = "%s";
LABEL_18:
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, v19, buf, 0xCu);
      }
    }

    else
    {
      v18 = tcc_access_log();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v25 = v7;
        v19 = "Could not find localized request string for service: %@";
        goto LABEL_18;
      }
    }

LABEL_20:
    v6 = v23;
    goto LABEL_21;
  }

  v12 = tcc_access_log();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v20 = [(TCCDAccessIdentity *)v10 identifier];
    *buf = 138412546;
    v25 = v20;
    v26 = 2112;
    v27 = v7;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "reminder prompt: cannot find display name: %@ service: %@", buf, 0x16u);
  }

LABEL_21:
}

- (void)setReminderCooldownPeriod:(int64_t)a3 with:(int64_t)a4
{
  if (a4 | a3)
  {
    if (a3 < 1 || a4 < 1)
    {
      return;
    }

    [(TCCDReminderMonitor *)self setSystemCooldown:a3];
    v6 = a4;
  }

  else
  {
    [(TCCDReminderMonitor *)self setSystemCooldown:604800.0];
    v6 = 15552000.0;
  }

  [(TCCDReminderMonitor *)self setServiceCooldown:v6];
}

@end