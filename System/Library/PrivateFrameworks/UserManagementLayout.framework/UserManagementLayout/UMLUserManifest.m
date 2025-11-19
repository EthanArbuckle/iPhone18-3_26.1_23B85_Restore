@interface UMLUserManifest
+ (id)manifestFromData:(id)a3;
- (NSData)dataValue;
- (UMLUserManifest)init;
@end

@implementation UMLUserManifest

- (UMLUserManifest)init
{
  v13.receiver = self;
  v13.super_class = UMLUserManifest;
  v2 = [(UMLUserManifest *)&v13 init];
  v3 = v2;
  if (v2)
  {
    v2->_version = 1;
    v2->_networkBG = 0;
    *&v2->_deviceConfig = 0xFFFFFFFF00000000;
    *&v2->_userSessionType = 0;
    fsVolumeType = v2->_fsVolumeType;
    v2->_apnsIDStart = 1;
    v2->_fsVolumeType = @"UserVolumeAPFSNative";
    v2->_maxUserSize = 0;

    v5 = objc_opt_new();
    users = v3->_users;
    v3->_users = v5;

    v7 = objc_opt_new();
    syncUserList = v3->_syncUserList;
    v3->_syncUserList = v7;

    v9 = objc_opt_new();
    lruList = v3->_lruList;
    v3->_lruList = v9;

    v11 = v3;
  }

  return v3;
}

- (NSData)dataValue
{
  v3 = objc_opt_new();
  v4 = [MEMORY[0x277CCABB0] numberWithInt:{-[UMLUserManifest deviceConfig](self, "deviceConfig")}];
  [v3 setObject:v4 forKeyedSubscript:@"DEVICECONFIG"];

  v5 = [MEMORY[0x277CCABB0] numberWithInt:{-[UMLUserManifest lastBootedUser](self, "lastBootedUser")}];
  [v3 setObject:v5 forKeyedSubscript:@"BOOTEDUSER"];

  v6 = [MEMORY[0x277CCABB0] numberWithLongLong:{-[UMLUserManifest apnsIDStart](self, "apnsIDStart")}];
  [v3 setObject:v6 forKeyedSubscript:@"APNSID"];

  v7 = [(UMLUserManifest *)self fsVolumeType];
  [v3 setObject:v7 forKeyedSubscript:@"MKBUserSessionVolumeFSType"];

  if (([(UMLUserManifest *)self maxUsers]& 0x80000000) == 0)
  {
    v8 = [MEMORY[0x277CCABB0] numberWithInt:{-[UMLUserManifest maxUsers](self, "maxUsers")}];
    [v3 setObject:v8 forKeyedSubscript:@"MAXUSER"];
  }

  if ([(UMLUserManifest *)self maxUserSize]>= 1)
  {
    v9 = [MEMORY[0x277CCABB0] numberWithLongLong:{-[UMLUserManifest maxUserSize](self, "maxUserSize")}];
    [v3 setObject:v9 forKeyedSubscript:@"MAXUSERSIZE"];
  }

  v10 = [MEMORY[0x277CCABB0] numberWithInt:{-[UMLUserManifest userSessionType](self, "userSessionType")}];
  [v3 setObject:v10 forKeyedSubscript:@"USESSTYPE"];

  v11 = [MEMORY[0x277CCABB0] numberWithInt:{-[UMLUserManifest loginuiCheck](self, "loginuiCheck")}];
  [v3 setObject:v11 forKeyedSubscript:@"LOGINCHECKIN"];

  v12 = [MEMORY[0x277CCABB0] numberWithInt:{-[UMLUserManifest networkBG](self, "networkBG")}];
  [v3 setObject:v12 forKeyedSubscript:@"DEVICENETWORKBG"];

  v13 = [(UMLUserManifest *)self syncUserList];
  v14 = [v13 count];

  if (v14)
  {
    v15 = MEMORY[0x277CCABB0];
    v16 = [(UMLUserManifest *)self syncUserList];
    v17 = [v15 numberWithUnsignedInteger:{objc_msgSend(v16, "count")}];
    [v3 setObject:v17 forKeyedSubscript:@"SYNCENT"];

    v18 = [(UMLUserManifest *)self syncUserList];
    v19 = sub_22EE7596C(v18);
    [v3 setObject:v19 forKeyedSubscript:@"SYNCBLOB"];
  }

  v20 = [(UMLUserManifest *)self lruList];
  v21 = [v20 count];

  if (v21)
  {
    v22 = MEMORY[0x277CCABB0];
    v23 = [(UMLUserManifest *)self lruList];
    v24 = [v22 numberWithUnsignedInteger:{objc_msgSend(v23, "count")}];
    [v3 setObject:v24 forKeyedSubscript:@"LRUENT"];

    v25 = [(UMLUserManifest *)self lruList];
    v26 = sub_22EE7596C(v25);
    [v3 setObject:v26 forKeyedSubscript:@"LRUBLOB"];
  }

  v27 = [(UMLUserManifest *)self users];
  v28 = [v27 count];

  if (v28)
  {
    v29 = MEMORY[0x277CCABB0];
    v30 = [(UMLUserManifest *)self users];
    v31 = [v29 numberWithUnsignedInteger:{objc_msgSend(v30, "count")}];
    [v3 setObject:v31 forKeyedSubscript:@"NUMENT"];

    v32 = [(UMLUserManifest *)self users];
    v33 = sub_22EE7596C(v32);
    [v3 setObject:v33 forKeyedSubscript:@"BLOB"];
  }

  v34 = [MEMORY[0x277CCABB0] numberWithInt:{-[UMLUserManifest version](self, "version")}];
  [v3 setObject:v34 forKeyedSubscript:@"UserManifestVersion"];

  v35 = sub_22EE75830(v3);

  return v35;
}

+ (id)manifestFromData:(id)a3
{
  v3 = sub_22EE75AA8(a3);
  if (!v3)
  {
    if (qword_27DA9CC78 != -1)
    {
      sub_22EE7762C();
    }

    v10 = qword_27DA9CC70;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = sub_22EE69AE8();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v12 = v11;
      }

      else
      {
        v12 = v11 & 0xFFFFFFFE;
      }

      if (v12)
      {
        v13 = _os_log_send_and_compose_impl();
        v14 = v13;
        if (v13)
        {
          sub_22EE69B10(v13);
        }
      }

      else
      {
        v14 = 0;
      }

      free(v14);
    }

    v4 = 0;
    goto LABEL_54;
  }

  v4 = objc_alloc_init(UMLUserManifest);
  [(UMLUserManifest *)v4 setVersion:sub_22EE75268(v3, @"UserManifestVersion", 1)];
  if (*__error() == 2)
  {
    if (qword_27DA9CC78 != -1)
    {
      sub_22EE7762C();
    }

    v5 = qword_27DA9CC70;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = sub_22EE69AE8();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        v7 = v6;
      }

      else
      {
        v7 = v6 & 0xFFFFFFFE;
      }

      if (v7)
      {
        v8 = _os_log_send_and_compose_impl();
        v9 = v8;
        if (v8)
        {
          sub_22EE69B10(v8);
        }
      }

      else
      {
        v9 = 0;
      }

      free(v9);
    }
  }

  [(UMLUserManifest *)v4 setDeviceConfig:sub_22EE75268(v3, @"DEVICECONFIG", 0)];
  if (*__error() == 2)
  {
    if (qword_27DA9CC78 != -1)
    {
      sub_22EE77640();
    }

    v15 = qword_27DA9CC70;
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = sub_22EE69AE8();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        v17 = v16;
      }

      else
      {
        v17 = v16 & 0xFFFFFFFE;
      }

      if (v17)
      {
        v18 = _os_log_send_and_compose_impl();
        v19 = v18;
        if (v18)
        {
          sub_22EE69B10(v18);
        }
      }

      else
      {
        v19 = 0;
      }

      free(v19);
    }
  }

  [(UMLUserManifest *)v4 setLastBootedUser:sub_22EE75268(v3, @"BOOTEDUSER", 0)];
  [(UMLUserManifest *)v4 setApnsIDStart:sub_22EE75368(v3, @"APNSID", 1)];
  v20 = sub_22EE75468(v3, @"MKBUserSessionVolumeFSType");
  [(UMLUserManifest *)v4 setFsVolumeType:v20];

  v21 = [(UMLUserManifest *)v4 fsVolumeType];

  if (!v21)
  {
    [(UMLUserManifest *)v4 setFsVolumeType:@"UserVolumeAPFSNative"];
  }

  [(UMLUserManifest *)v4 setMaxUsers:sub_22EE75268(v3, @"MAXUSER", 0xFFFFFFFFLL)];
  [(UMLUserManifest *)v4 setMaxUserSize:sub_22EE75368(v3, @"MAXUSERSIZE", 0)];
  [(UMLUserManifest *)v4 setUserSessionType:sub_22EE75268(v3, @"USESSTYPE", 0)];
  [(UMLUserManifest *)v4 setLoginuiCheck:sub_22EE75268(v3, @"LOGINCHECKIN", 0)];
  [(UMLUserManifest *)v4 setNetworkBG:sub_22EE75268(v3, @"DEVICENETWORKBG", 0)];
  if (sub_22EE75268(v3, @"NUMENT", 0) >= 1)
  {
    v22 = sub_22EE757B0(v3, @"BLOB");
    v23 = sub_22EE75CA0(v22);
    v24 = v23;
    if (v23)
    {
      v25 = [v23 mutableCopy];
      [(UMLUserManifest *)v4 setUsers:v25];
    }
  }

  if (sub_22EE75268(v3, @"SYNCENT", 0) >= 1)
  {
    v26 = sub_22EE757B0(v3, @"SYNCBLOB");
    v27 = sub_22EE75CA0(v26);
    v28 = v27;
    if (v27)
    {
      v29 = [v27 mutableCopy];
      [(UMLUserManifest *)v4 setSyncUserList:v29];
    }
  }

  if (sub_22EE75268(v3, @"LRUENT", 0) >= 1)
  {
    v10 = sub_22EE757B0(v3, @"LRUBLOB");
    v30 = sub_22EE75CA0(v10);
    v31 = v30;
    if (v30)
    {
      v32 = [v30 mutableCopy];
      [(UMLUserManifest *)v4 setLruList:v32];
    }

LABEL_54:
  }

  return v4;
}

@end