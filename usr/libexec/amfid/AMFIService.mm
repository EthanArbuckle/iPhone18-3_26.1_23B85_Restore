@interface AMFIService
- (BOOL)verifyBoolEntitlement:(id)a3;
- (NSXPCConnection)connection;
- (void)commitProfileForUuid:(id)a3 withReply:(id)a4;
- (void)getSEPStateWithReply:(id)a3;
- (void)getStagedProfileWithReply:(id)a3;
- (void)initiateDataMigrationWithReply:(id)a3;
- (void)initiateDeveloperModeDaemonsWithReply:(id)a3;
- (void)removeManagedStateWithReply:(id)a3;
- (void)removeTrustforTeamID:(id)a3 withReply:(id)a4;
- (void)setDemoState:(unsigned int)a3 withReply:(id)a4;
- (void)setManagedState:(id)a3 withReply:(id)a4;
- (void)setSupervisedState:(unsigned int)a3 withReply:(id)a4;
- (void)setTrustForTeamID:(id)a3 withSignature:(id)a4 withSignType:(unsigned int)a5 withReply:(id)a6;
- (void)signTeamID:(id)a3 withSignType:(unsigned int)a4 withLAContext:(id)a5 withReply:(id)a6;
- (void)stageProfileForUuid:(id)a3 withReply:(id)a4;
@end

@implementation AMFIService

- (BOOL)verifyBoolEntitlement:(id)a3
{
  v4 = a3;
  v5 = [(AMFIService *)self connection];
  v6 = [v5 valueForEntitlement:v4];

  if (!v6)
  {
    if (os_log_type_enabled(off_100028C50, OS_LOG_TYPE_ERROR))
    {
      sub_1000196E8();
    }

    goto LABEL_8;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    if (os_log_type_enabled(off_100028C50, OS_LOG_TYPE_ERROR))
    {
      sub_10001966C();
    }

LABEL_8:
    v7 = 0;
    goto LABEL_9;
  }

  v7 = [v6 BOOLValue];
LABEL_9:

  return v7;
}

- (void)getSEPStateWithReply:(id)a3
{
  v3 = a3;
  v18 = 0;
  v16 = 0u;
  v17 = 0u;
  v15 = 0u;
  v4 = [[LAStorage alloc] initWithDomain:0 authenticationContext:0];
  v11 = 0;
  v5 = [v4 dataForKey:15 error:&v11];
  v6 = v11;
  v7 = off_100028C50;
  if (v6)
  {
    v8 = v6;
    if (os_log_type_enabled(off_100028C50, OS_LOG_TYPE_ERROR))
    {
      sub_100019764();
    }

    v9 = [[AMFIError alloc] initWithAMFIErrorCode:-408 withURL:0];
  }

  else
  {
    if (os_log_type_enabled(off_100028C50, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      *&buf[4] = "[AMFIService getSEPStateWithReply:]";
      *&buf[12] = 1024;
      *&buf[14] = v5 != 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "[%s] returning SEP state | [exists: %u]", buf, 0x12u);
    }

    if (v5)
    {
      [v5 getBytes:&v15 length:49];
    }

    v9 = 0;
  }

  v10 = v3[2];
  *buf = v15;
  *&buf[16] = v16;
  v13 = v17;
  v14 = v18;
  v10(v3, buf, v9);
}

- (void)signTeamID:(id)a3 withSignType:(unsigned int)a4 withLAContext:(id)a5 withReply:(id)a6
{
  v10 = a3;
  v11 = a5;
  v12 = a6;
  v31 = 0u;
  v39 = 0u;
  v38 = 0u;
  v37 = 0u;
  v36 = 0u;
  v35 = 0u;
  v34 = 0u;
  v33 = 0u;
  v32 = 0u;
  v30 = 2;
  DWORD1(v31) = 5;
  if (![(AMFIService *)self verifyBoolEntitlement:@"com.apple.private.amfi.set-trust"])
  {
    v15 = [AMFIError alloc];
    v16 = -440;
LABEL_17:
    v22 = [v15 initWithAMFIErrorCode:v16 withURL:0];
    v20 = 0;
    v18 = 0;
    goto LABEL_18;
  }

  if (!v10)
  {
    if (os_log_type_enabled(off_100028C50, OS_LOG_TYPE_ERROR))
    {
      sub_1000198DC();
    }

    goto LABEL_16;
  }

  v13 = [v10 lengthOfBytesUsingEncoding:4];
  v14 = v13;
  if (v13 >= 0x81)
  {
    if (os_log_type_enabled(off_100028C50, OS_LOG_TYPE_ERROR))
    {
      sub_10001985C();
    }

LABEL_16:
    v15 = [AMFIError alloc];
    v16 = -406;
    goto LABEL_17;
  }

  v17 = off_100028C50;
  if (a4 - 1 >= 2)
  {
    if (os_log_type_enabled(off_100028C50, OS_LOG_TYPE_ERROR))
    {
      sub_1000197E0();
    }

    goto LABEL_16;
  }

  if (os_log_type_enabled(off_100028C50, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v25 = "[AMFIService signTeamID:withSignType:withLAContext:withReply:]";
    v26 = 2112;
    v27 = v10;
    v28 = 1024;
    v29 = a4;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "[%s] creating auxiliary signature: %@ | %u", buf, 0x1Cu);
  }

  DWORD2(v31) = a4;
  HIDWORD(v39) = v14;
  [v10 UTF8String];
  __memcpy_chk();
  v18 = [[LAStorage alloc] initWithDomain:0 authenticationContext:v11];
  v19 = [NSData dataWithBytes:&v30 length:148];
  v23 = 0;
  v20 = [v18 exchangeData:v19 forKey:13 error:&v23];
  v21 = v23;

  if (v21)
  {
    v22 = [[AMFIError alloc] initWithAMFIErrorCode:-408 withURL:0];
  }

  else
  {
    v22 = 0;
  }

LABEL_18:
  v12[2](v12, v20, v22);
}

- (void)setSupervisedState:(unsigned int)a3 withReply:(id)a4
{
  v6 = a4;
  v19 = 0u;
  v27 = 0u;
  v26 = 0u;
  v25 = 0u;
  v24 = 0u;
  v23 = 0u;
  v22 = 0u;
  v21 = 0u;
  v20 = 0u;
  v18 = 2;
  DWORD1(v19) = 2;
  DWORD2(v19) = a3;
  v7 = off_100028C50;
  if (os_log_type_enabled(off_100028C50, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v15 = "[AMFIService setSupervisedState:withReply:]";
    v16 = 1024;
    v17 = a3;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "[%s] setting state: %u", buf, 0x12u);
  }

  if ([(AMFIService *)self verifyBoolEntitlement:@"com.apple.private.amfi.set-supervised"])
  {
    v8 = [[LAStorage alloc] initWithDomain:0 authenticationContext:0];
    v9 = [NSData dataWithBytes:&v18 length:148];
    v13 = 0;
    v10 = [v8 exchangeData:v9 forKey:13 error:&v13];
    v11 = v13;

    if (v11)
    {
      v12 = [[AMFIError alloc] initWithAMFIErrorCode:-408 withURL:0];
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = [[AMFIError alloc] initWithAMFIErrorCode:-440 withURL:0];
    v8 = 0;
  }

  v6[2](v6, v12);
}

- (void)setDemoState:(unsigned int)a3 withReply:(id)a4
{
  v6 = a4;
  v19 = 0u;
  v27 = 0u;
  v26 = 0u;
  v25 = 0u;
  v24 = 0u;
  v23 = 0u;
  v22 = 0u;
  v21 = 0u;
  v20 = 0u;
  v18 = 2;
  DWORD1(v19) = 3;
  DWORD2(v19) = a3;
  v7 = off_100028C50;
  if (os_log_type_enabled(off_100028C50, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v15 = "[AMFIService setDemoState:withReply:]";
    v16 = 1024;
    v17 = a3;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "[%s] setting state: %u", buf, 0x12u);
  }

  if ([(AMFIService *)self verifyBoolEntitlement:@"com.apple.private.amfi.set-demo"])
  {
    v8 = [[LAStorage alloc] initWithDomain:0 authenticationContext:0];
    v9 = [NSData dataWithBytes:&v18 length:148];
    v13 = 0;
    v10 = [v8 exchangeData:v9 forKey:13 error:&v13];
    v11 = v13;

    if (v11)
    {
      v12 = [[AMFIError alloc] initWithAMFIErrorCode:-408 withURL:0];
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = [[AMFIError alloc] initWithAMFIErrorCode:-440 withURL:0];
    v8 = 0;
  }

  v6[2](v6, v12);
}

- (void)setManagedState:(id)a3 withReply:(id)a4
{
  v6 = a3;
  v7 = a4;
  memset(&v17[6], 170, 100);
  *v17 = xmmword_10001D888;
  memset(&v17[2], 0, 32);
  v8 = off_100028C50;
  if (os_log_type_enabled(off_100028C50, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v16 = "[AMFIService setManagedState:withReply:]";
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%s: enabling MDM state", buf, 0xCu);
  }

  if ([(AMFIService *)self verifyBoolEntitlement:@"com.apple.private.amfi.set-managed"])
  {
    v9 = [[LAStorage alloc] initWithDomain:0 authenticationContext:v6];
    v10 = [NSData dataWithBytes:v17 length:148];
    v14 = 0;
    v11 = [v9 exchangeData:v10 forKey:13 error:&v14];
    v12 = v14;

    if (v12)
    {
      v13 = [[AMFIError alloc] initWithAMFIErrorCode:-408 withURL:0];
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    v13 = [[AMFIError alloc] initWithAMFIErrorCode:-440 withURL:0];
    v9 = 0;
  }

  v7[2](v7, v13);
}

- (void)removeManagedStateWithReply:(id)a3
{
  v4 = a3;
  memset(&v14[6], 170, 100);
  *v14 = xmmword_10001D91C;
  memset(&v14[2], 0, 32);
  v5 = off_100028C50;
  if (os_log_type_enabled(off_100028C50, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v13 = "[AMFIService removeManagedStateWithReply:]";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s: disabling MDM state", buf, 0xCu);
  }

  if ([(AMFIService *)self verifyBoolEntitlement:@"com.apple.private.amfi.set-managed"])
  {
    v6 = [[LAStorage alloc] initWithDomain:0 authenticationContext:0];
    v7 = [NSData dataWithBytes:v14 length:148];
    v11 = 0;
    v8 = [v6 exchangeData:v7 forKey:13 error:&v11];
    v9 = v11;

    if (v9)
    {
      v10 = [[AMFIError alloc] initWithAMFIErrorCode:-408 withURL:0];
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = [[AMFIError alloc] initWithAMFIErrorCode:-440 withURL:0];
    v6 = 0;
  }

  v4[2](v4, v10);
}

- (void)initiateDataMigrationWithReply:(id)a3
{
  v4 = a3;
  if ([(AMFIService *)self verifyBoolEntitlement:@"com.apple.private.amfi.data-migration"])
  {
    sub_10000ADC8();
    v5 = 0;
  }

  else
  {
    v5 = [[AMFIError alloc] initWithAMFIErrorCode:-440 withURL:0];
  }

  v6 = v5;
  v4[2](v4);
}

- (void)initiateDeveloperModeDaemonsWithReply:(id)a3
{
  v4 = a3;
  if ([(AMFIService *)self verifyBoolEntitlement:@"com.apple.private.amfi.developer-mode-control"])
  {
    v5 = off_100028C50;
    if (os_log_type_enabled(off_100028C50, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 136315138;
      v8 = "[AMFIService initiateDeveloperModeDaemonsWithReply:]";
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s: attempting to kick-off developer-mode-daemons", &v7, 0xCu);
    }

    sub_100002748();
    v6 = 0;
  }

  else
  {
    v6 = [[AMFIError alloc] initWithAMFIErrorCode:-440 withURL:0];
  }

  v4[2](v4, v6);
}

- (void)stageProfileForUuid:(id)a3 withReply:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (![(AMFIService *)self verifyBoolEntitlement:@"com.apple.private.amfi.schedule-profile"])
  {
    v11 = [AMFIError alloc];
    v12 = -440;
LABEL_16:
    v10 = [v11 initWithAMFIErrorCode:v12 withURL:0];
    goto LABEL_17;
  }

  v8 = off_100028C50;
  if (!v6)
  {
    if (os_log_type_enabled(off_100028C50, OS_LOG_TYPE_ERROR))
    {
      sub_100019A54();
    }

    v11 = [AMFIError alloc];
    v12 = -406;
    goto LABEL_16;
  }

  if (os_log_type_enabled(off_100028C50, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v17 = "[AMFIService stageProfileForUuid:withReply:]";
    v18 = 2112;
    v19 = v6;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "[%s] attempting to stage: %@", buf, 0x16u);
  }

  v15 = 0;
  [v6 writeToFile:@"/private/var/db/amfid/UPPStaging.plist" atomically:1 encoding:4 error:&v15];
  v9 = v15;
  if (v9)
  {
    v10 = v9;
    if (os_log_type_enabled(off_100028C50, OS_LOG_TYPE_ERROR))
    {
      sub_10001995C();
    }

    goto LABEL_17;
  }

  v13 = AMFIArmSecurityBootMode();
  v14 = off_100028C50;
  if (v13)
  {
    if (os_log_type_enabled(off_100028C50, OS_LOG_TYPE_ERROR))
    {
      sub_1000199D8();
    }

    v11 = [AMFIError alloc];
    v12 = -401;
    goto LABEL_16;
  }

  if (os_log_type_enabled(off_100028C50, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v17 = "[AMFIService stageProfileForUuid:withReply:]";
    v18 = 2112;
    v19 = v6;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "[%s] successfully staged UUID: %@", buf, 0x16u);
  }

  v10 = 0;
LABEL_17:
  v7[2](v7, v10);
}

- (void)getStagedProfileWithReply:(id)a3
{
  v3 = a3;
  v4 = off_100028C50;
  if (os_log_type_enabled(off_100028C50, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v9 = "[AMFIService getStagedProfileWithReply:]";
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[%s] acquiring staged UUID", buf, 0xCu);
  }

  v7 = 0;
  v5 = [NSString stringWithContentsOfFile:@"/private/var/db/amfid/UPPStaging.plist" encoding:4 error:&v7];
  v6 = v7;
  if (v6 && os_log_type_enabled(off_100028C50, OS_LOG_TYPE_ERROR))
  {
    sub_100019AD4();
  }

  v3[2](v3, v5, v6);
}

- (void)commitProfileForUuid:(id)a3 withReply:(id)a4
{
  v6 = a3;
  v7 = a4;
  v31[0] = 0;
  v31[1] = v31;
  v31[2] = 0x3032000000;
  v31[3] = sub_100005D64;
  v31[4] = sub_100005D74;
  v8 = v6;
  v32 = v8;
  if (![(AMFIService *)self verifyBoolEntitlement:@"com.apple.private.amfi.commit-profile"])
  {
    v15 = [[AMFIError alloc] initWithAMFIErrorCode:-440 withURL:0];
    goto LABEL_8;
  }

  v9 = off_100028C50;
  v10 = os_log_type_enabled(off_100028C50, OS_LOG_TYPE_DEFAULT);
  if (!v8)
  {
    if (v10)
    {
      *buf = 136315138;
      v34 = "[AMFIService commitProfileForUuid:withReply:]";
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "[%s] attempting to remove staged UUID", buf, 0xCu);
    }

    v17 = +[NSFileManager defaultManager];
    v18 = [v17 fileExistsAtPath:@"/private/var/db/amfid/UPPStaging.plist"];

    if (!v18)
    {
      v16 = 0;
      goto LABEL_27;
    }

    v19 = +[NSFileManager defaultManager];
    v30 = 0;
    [v19 removeItemAtPath:@"/private/var/db/amfid/UPPStaging.plist" error:&v30];
    v15 = v30;

LABEL_8:
    v16 = 0;
    goto LABEL_9;
  }

  if (v10)
  {
    *buf = 136315394;
    v34 = "[AMFIService commitProfileForUuid:withReply:]";
    v35 = 2112;
    v36 = v8;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "[%s] attempting to commit UUID: %@", buf, 0x16u);
  }

  v11 = +[NSFileManager defaultManager];
  v12 = [v11 fileExistsAtPath:@"/private/var/db/amfid/UPPCommitting.plist"];

  if (v12)
  {
    v13 = +[NSFileManager defaultManager];
    v29 = 0;
    [v13 removeItemAtPath:@"/private/var/db/amfid/UPPCommitting.plist" error:&v29];
    v14 = v29;
  }

  else
  {
    v14 = 0;
  }

  v28 = v14;
  v16 = [NSString stringWithContentsOfFile:@"/private/var/db/amfid/UPPStaging.plist" encoding:4 error:&v28];
  v15 = v28;

  if (v15)
  {
    if (os_log_type_enabled(off_100028C50, OS_LOG_TYPE_ERROR))
    {
      sub_100019B50();
    }

    goto LABEL_9;
  }

  if ([v8 isEqualToString:v16])
  {
    v20 = +[NSFileManager defaultManager];
    v27 = 0;
    [v20 removeItemAtPath:@"/private/var/db/amfid/UPPStaging.plist" error:&v27];
    v21 = v27;

    if (v21)
    {
      if (os_log_type_enabled(off_100028C50, OS_LOG_TYPE_ERROR))
      {
        sub_100019C48();
      }
    }

    v26 = 0;
    [v8 writeToFile:@"/private/var/db/amfid/UPPCommitting.plist" atomically:1 encoding:4 error:&v26];
    v22 = v26;
    v23 = off_100028C50;
    if (v22)
    {
      v15 = v22;
      if (os_log_type_enabled(off_100028C50, OS_LOG_TYPE_ERROR))
      {
        sub_100019CC4();
      }

      goto LABEL_9;
    }

    if (os_log_type_enabled(off_100028C50, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v34 = "[AMFIService commitProfileForUuid:withReply:]";
      v35 = 2112;
      v36 = v8;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "[%s] successfully committed UUID: %@", buf, 0x16u);
    }

    v24 = dispatch_get_global_queue(33, 0);
    v25[0] = _NSConcreteStackBlock;
    v25[1] = 3221225472;
    v25[2] = sub_100005D7C;
    v25[3] = &unk_100025160;
    v25[4] = v31;
    dispatch_async(v24, v25);

LABEL_27:
    v15 = 0;
    goto LABEL_9;
  }

  if (os_log_type_enabled(off_100028C50, OS_LOG_TYPE_ERROR))
  {
    sub_100019BCC();
  }

  v15 = [[AMFIError alloc] initWithAMFIErrorCode:-407 withURL:0];
LABEL_9:
  v7[2](v7, v15);
  _Block_object_dispose(v31, 8);
}

- (void)setTrustForTeamID:(id)a3 withSignature:(id)a4 withSignType:(unsigned int)a5 withReply:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  if (![(AMFIService *)self verifyBoolEntitlement:@"com.apple.private.amfi.set-trust"])
  {
    v19 = [AMFIError alloc];
    v20 = -440;
LABEL_12:
    v21 = [v19 initWithAMFIErrorCode:v20 withURL:0];
    v17 = 0;
    v14 = 0;
    v16 = 0;
    goto LABEL_13;
  }

  v13 = off_100028C50;
  if (!v10)
  {
    if (os_log_type_enabled(off_100028C50, OS_LOG_TYPE_ERROR))
    {
      sub_100019D40();
    }

    v19 = [AMFIError alloc];
    v20 = -406;
    goto LABEL_12;
  }

  if (os_log_type_enabled(off_100028C50, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v25 = "[AMFIService setTrustForTeamID:withSignature:withSignType:withReply:]";
    v26 = 2112;
    v27 = v10;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "[%s] attempting to set trust for team ID: %@", buf, 0x16u);
  }

  v14 = objc_opt_new();
  v23 = 0;
  v15 = [v14 trustTeamID:v10 signature:v11 error:&v23];
  v16 = v23;
  if (v15)
  {
    if (a5 == 1)
    {
      v17 = objc_opt_new();
      v18 = [v17 signingIdentitiesWithTeamID:v10];
      sub_10000B874(v18);
    }

    else
    {
      v17 = 0;
    }

    v21 = 0;
  }

  else
  {
    v22 = off_100028C50;
    if (os_log_type_enabled(off_100028C50, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      v25 = "[AMFIService setTrustForTeamID:withSignature:withSignType:withReply:]";
      v26 = 2112;
      v27 = v10;
      v28 = 2112;
      v29 = v11;
      v30 = 2112;
      v31 = v16;
      _os_log_error_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "[%s] failed to trust team ID %@ with signature %@: %@", buf, 0x2Au);
    }

    v21 = [[AMFIError alloc] initWithAMFIErrorCode:-401 withURL:0];
    v17 = 0;
  }

LABEL_13:
  v12[2](v12, v21);
}

- (void)removeTrustforTeamID:(id)a3 withReply:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (![(AMFIService *)self verifyBoolEntitlement:@"com.apple.private.amfi.remove-trust"])
  {
    v13 = [AMFIError alloc];
    v14 = -440;
LABEL_11:
    v12 = [v13 initWithAMFIErrorCode:v14 withURL:0];
    v9 = 0;
    v11 = 0;
    goto LABEL_12;
  }

  v8 = off_100028C50;
  if (!v6)
  {
    if (os_log_type_enabled(off_100028C50, OS_LOG_TYPE_ERROR))
    {
      sub_100019E3C();
    }

    v13 = [AMFIError alloc];
    v14 = -406;
    goto LABEL_11;
  }

  if (os_log_type_enabled(off_100028C50, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v17 = "[AMFIService removeTrustforTeamID:withReply:]";
    v18 = 2112;
    v19 = v6;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "[%s] attempting to remove trust for team ID: %@", buf, 0x16u);
  }

  v9 = objc_opt_new();
  v15 = 0;
  v10 = [v9 untrustTeamID:v6 error:&v15];
  v11 = v15;
  if (v10)
  {
    v12 = 0;
  }

  else
  {
    if (os_log_type_enabled(off_100028C50, OS_LOG_TYPE_ERROR))
    {
      sub_100019DC0();
    }

    v12 = [[AMFIError alloc] initWithAMFIErrorCode:-401 withURL:0];
  }

LABEL_12:
  v7[2](v7, v12);
}

- (NSXPCConnection)connection
{
  WeakRetained = objc_loadWeakRetained(&self->_connection);

  return WeakRetained;
}

@end