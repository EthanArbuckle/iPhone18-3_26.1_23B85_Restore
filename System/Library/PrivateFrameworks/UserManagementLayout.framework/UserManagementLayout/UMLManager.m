@interface UMLManager
+ (id)sharedManager;
- (BOOL)addNewUser:(id)a3 toUserManifest:(id)a4 saveToPath:(id)a5;
- (BOOL)createUserLayoutForUserwithUserID:(int)a3 withAKSSetup:(BOOL)a4 onUserVolumePath:(id)a5 fromSystemVolumePath:(id)a6 withError:(id *)a7;
- (BOOL)inDeviceRecoveryEnvironment;
- (BOOL)mountSystemDataVolumeAt:(id)a3 withError:(id *)a4;
- (BOOL)refreshPrimaryUserOnSharedDataVolumePath:(id)a3 withBootstrapToken:(id)a4 withError:(id *)a5;
- (BOOL)removeAnUser:(id)a3 fromUserManifest:(id)a4 saveToPath:(id)a5;
- (BOOL)saveManifest:(id)a3 toPath:(id)a4;
- (BOOL)unMountVolumeAt:(id)a3 withError:(id *)a4;
- (BOOL)unmountSystemDataVolumeAt:(id)a3 withError:(id *)a4;
- (BOOL)unmountUserDataVolumeOnSystemDataAt:(id)a3 withError:(id *)a4;
- (BOOL)updatePrimaryUser:(id)a3 onSharedDataVolumePath:(id)a4 withDiskNode:(id)a5 withVolumeuuid:(id)a6 withVolumeName:(id)a7 withError:(id *)a8;
- (BOOL)updateUser:(id)a3 inManifest:(id)a4 withDiskNode:(id)a5 volumeUUID:(id)a6 volumeName:(id)a7 withSharedDataVolumePath:(id)a8 withError:(id *)a9;
- (id)createPrimaryUserOnSharedDataVolumePath:(id)a3 withError:(id *)a4;
- (id)keybagOpaqueDataOnSharedDataVolumePath:(id)a3 withError:(id *)a4;
- (id)loadManifestFromSharedDataVolumePath:(id)a3;
- (id)primaryUserOnSharedDataVolumePath:(id)a3 withError:(id *)a4;
- (id)readUserFromManifest:(id)a3 forUserUid:(unsigned int)a4 withError:(id *)a5;
- (id)readUserManifestOnSharedDataVolumePath:(id)a3 withError:(id *)a4;
@end

@implementation UMLManager

+ (id)sharedManager
{
  if (qword_27DA9CC90 != -1)
  {
    sub_22EE78580();
  }

  v3 = qword_27DA9CC88;

  return v3;
}

- (id)createPrimaryUserOnSharedDataVolumePath:(id)a3 withError:(id *)a4
{
  v5 = a3;
  v6 = objc_opt_new();
  v7 = [MEMORY[0x277CCABB0] numberWithInt:501];
  [v6 setValue:v7 forKey:@"MKBUserSessionID"];

  v8 = [MEMORY[0x277CCABB0] numberWithInt:501];
  [v6 setValue:v8 forKey:@"MKBUserSessionGroupID"];

  [v6 setValue:@"UserSessionOther" forKey:@"MKBUserTypeKey"];
  [v6 setValue:@"mobile" forKey:@"MKBUserSessionShortName"];
  [v6 setValue:@"mobile" forKey:@"MKBUserSessionFirstName"];
  [v6 setValue:@"mobile" forKey:@"MKBUserSessionLastName"];
  [v6 setValue:@"mobile" forKey:@"MKBUserSessionName"];
  [v6 setValue:@"mobile" forKey:@"MKBUserSessionDisplayName"];
  [v6 setValue:@"en_US" forKey:@"MKBUserSessionLanguage"];
  v9 = [MEMORY[0x277CCAD78] UUID];
  v10 = [v9 UUIDString];
  [v6 setValue:v10 forKey:@"MKBUserSessionUUID"];

  v11 = [MEMORY[0x277CCAD78] UUID];
  v12 = [v11 UUIDString];
  [v6 setValue:v12 forKey:@"MKBUserSessionAlternateUUID"];

  v13 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:1.0];
  v14 = [v13 description];
  [v6 setValue:v14 forKey:@"MKBUserSessionCreateTimeStamp"];

  v15 = [v13 description];
  [v6 setValue:v15 forKey:@"MKBUserSessionLoginTimeStamp"];

  v16 = [MEMORY[0x277CCABB0] numberWithBool:0];
  [v6 setValue:v16 forKey:@"MKBUserSessionLoginUser"];

  v17 = [MEMORY[0x277CCABB0] numberWithBool:0];
  [v6 setValue:v17 forKey:@"MKBUserSessionDirty"];

  v18 = [MEMORY[0x277CCABB0] numberWithBool:1];
  [v6 setValue:v18 forKey:@"MKBUserSessionForeground"];

  v19 = [MEMORY[0x277CCABB0] numberWithBool:1];
  [v6 setValue:v19 forKey:@"MKBUserSessionisPrimary"];

  v20 = [MEMORY[0x277CCABB0] numberWithBool:1];
  [v6 setValue:v20 forKey:@"MKBUserSessionisAdminKey"];

  [v6 setValue:@"/var/mobile" forKey:@"MKBUserSessionLibinfoHomeDir"];
  v21 = [UMLUser userFromManifestDictionary:v6];
  if (v21)
  {
    v22 = v21;
    if (qword_2810B88B8 != -1)
    {
      sub_22EE785E0();
    }

    v23 = qword_2810B88B0;
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
    {
      v24 = self;
      v25 = v13;
      v26 = v11;
      v27 = v5;
      v57 = 0;
      v28 = sub_22EE69AE8();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
      {
        v29 = v28;
      }

      else
      {
        v29 = v28 & 0xFFFFFFFE;
      }

      if (v29)
      {
        v56 = 0;
        LODWORD(v54) = 2;
        v53 = &v56;
        v30 = _os_log_send_and_compose_impl();
        v31 = v30;
        if (v30)
        {
          sub_22EE69B10(v30);
        }
      }

      else
      {
        v31 = 0;
      }

      free(v31);
      v5 = v27;
      v11 = v26;
      v13 = v25;
      self = v24;
    }

    v37 = [v22 userManifestDictionary];
    if (v37)
    {
      if (self)
      {
        manifest = self->_manifest;
      }

      else
      {
        manifest = 0;
      }

      if ([(UMLManager *)self addNewUser:v6 toUserManifest:manifest saveToPath:v5, v53, v54])
      {
        if (qword_2810B88B8 != -1)
        {
          sub_22EE785F4();
        }

        v39 = qword_2810B88B0;
        if (os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG))
        {
          v57 = 0;
          v40 = sub_22EE69AE8();
          if (os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG))
          {
            v41 = v40;
          }

          else
          {
            v41 = v40 & 0xFFFFFFFE;
          }

          if (v41)
          {
            v56 = 0;
            v42 = _os_log_send_and_compose_impl();
            v43 = v42;
            if (v42)
            {
              sub_22EE69B10(v42);
            }
          }

          else
          {
            v43 = 0;
          }

          free(v43);
        }

LABEL_58:

        goto LABEL_62;
      }

      if (qword_2810B88B8 != -1)
      {
        sub_22EE785F4();
      }

      v44 = qword_2810B88B0;
      if (!os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
      {
LABEL_55:

        if (a4)
        {
          *a4 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:5 userInfo:0];
        }

        v39 = v22;
        v22 = 0;
        goto LABEL_58;
      }

      v45 = v5;
      v57 = 0;
      v48 = sub_22EE69AE8();
      if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
      {
        v49 = v48;
      }

      else
      {
        v49 = v48 & 0xFFFFFFFE;
      }

      if (v49)
      {
        v56 = 0;
LABEL_51:
        v50 = _os_log_send_and_compose_impl();
        v51 = v50;
        if (v50)
        {
          sub_22EE69B10(v50);
        }

        goto LABEL_54;
      }
    }

    else
    {
      if (qword_2810B88B8 != -1)
      {
        sub_22EE785F4();
      }

      v44 = qword_2810B88B0;
      if (!os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_55;
      }

      v45 = v5;
      v57 = 0;
      v46 = sub_22EE69AE8();
      if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
      {
        v47 = v46;
      }

      else
      {
        v47 = v46 & 0xFFFFFFFE;
      }

      if (v47)
      {
        v56 = 0;
        goto LABEL_51;
      }
    }

    v51 = 0;
LABEL_54:
    free(v51);
    v5 = v45;
    goto LABEL_55;
  }

  if (qword_2810B88B8 != -1)
  {
    sub_22EE785E0();
  }

  v32 = qword_2810B88B0;
  if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
  {
    v57 = 0;
    v33 = sub_22EE69AE8();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      v34 = v33;
    }

    else
    {
      v34 = v33 & 0xFFFFFFFE;
    }

    if (v34)
    {
      v56 = 0;
      v35 = _os_log_send_and_compose_impl();
      v36 = v35;
      if (v35)
      {
        sub_22EE69B10(v35);
      }
    }

    else
    {
      v36 = 0;
    }

    free(v36);
  }

  [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:22 userInfo:0];
  *a4 = v22 = 0;
LABEL_62:

  return v22;
}

- (BOOL)updatePrimaryUser:(id)a3 onSharedDataVolumePath:(id)a4 withDiskNode:(id)a5 withVolumeuuid:(id)a6 withVolumeName:(id)a7 withError:(id *)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  if (v14 && v16 && v17)
  {
    if (qword_2810B88B8 != -1)
    {
      sub_22EE785E0();
    }

    v19 = qword_2810B88B0;
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      v20 = sub_22EE69AE8();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
      {
        v21 = v20;
      }

      else
      {
        v21 = v20 & 0xFFFFFFFE;
      }

      if (v21)
      {
        LODWORD(v31) = 2;
        v22 = _os_log_send_and_compose_impl();
        v23 = v22;
        if (v22)
        {
          sub_22EE69B10(v22);
        }
      }

      else
      {
        v23 = 0;
      }

      free(v23);
    }

    if (self)
    {
      manifest = self->_manifest;
    }

    else
    {
      manifest = 0;
    }

    LOBYTE(a8) = [(UMLManager *)self updateUser:v14 inManifest:manifest withDiskNode:v16 volumeUUID:v17 volumeName:v18 withSharedDataVolumePath:v15 withError:a8, v31];
  }

  else
  {
    if (qword_2810B88B8 != -1)
    {
      sub_22EE785E0();
    }

    v24 = qword_2810B88B0;
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      v25 = sub_22EE69AE8();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        v26 = v25;
      }

      else
      {
        v26 = v25 & 0xFFFFFFFE;
      }

      if (v26)
      {
        v27 = _os_log_send_and_compose_impl();
        v28 = v27;
        if (v27)
        {
          sub_22EE69B10(v27);
        }
      }

      else
      {
        v28 = 0;
      }

      free(v28);
    }

    if (a8)
    {
      *a8 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:22 userInfo:0];

      LOBYTE(a8) = 0;
      v14 = 0;
    }
  }

  return a8;
}

- (BOOL)refreshPrimaryUserOnSharedDataVolumePath:(id)a3 withBootstrapToken:(id)a4 withError:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [(UMLManager *)self primaryUserOnSharedDataVolumePath:v8 withError:a5];
  if (v10)
  {
    if (qword_2810B88B8 != -1)
    {
      sub_22EE785E0();
    }

    v11 = qword_2810B88B0;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v167 = 0;
      v12 = sub_22EE69AE8();
      v13 = v11;
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v14 = v12;
      }

      else
      {
        v14 = v12 & 0xFFFFFFFE;
      }

      if (v14)
      {
        v15 = _os_log_send_and_compose_impl();

        if (v15)
        {
          sub_22EE69B10(v15);
        }
      }

      else
      {

        v15 = 0;
      }

      free(v15);
    }

    v21 = objc_alloc(MEMORY[0x277CCAD78]);
    v22 = [MEMORY[0x277CCACA8] stringWithCString:"2457711A-523C-4604-B75A-F48A571D5036" encoding:4];
    v16 = [v21 initWithUUIDString:v22];

    if (self)
    {
      se = self->_se;
    }

    else
    {
      se = 0;
    }

    v24 = se;
    v25 = sub_22EE770F0(v24);
    v26 = [v25 loadIdentity:v16 intoSession:999 error:a5];

    if ((v26 & 1) == 0)
    {
      if (qword_2810B88B8 != -1)
      {
        sub_22EE785F4();
      }

      v32 = qword_2810B88B0;
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        v167 = 0;
        v33 = sub_22EE69AE8();
        if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
        {
          v34 = v33;
        }

        else
        {
          v34 = v33 & 0xFFFFFFFE;
        }

        if (v34)
        {
          v35 = _os_log_send_and_compose_impl();
          v36 = v35;
          if (v35)
          {
            sub_22EE69B10(v35);
          }
        }

        else
        {
          v36 = 0;
        }

        free(v36);
      }

      v37 = 0;
      goto LABEL_290;
    }

    if (qword_2810B88B8 != -1)
    {
      sub_22EE785F4();
    }

    v27 = qword_2810B88B0;
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      v167 = 0;
      v28 = sub_22EE69AE8();
      v29 = v27;
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
      {
        v30 = v28;
      }

      else
      {
        v30 = v28 & 0xFFFFFFFE;
      }

      if (v30)
      {
        v31 = _os_log_send_and_compose_impl();

        if (v31)
        {
          sub_22EE69B10(v31);
        }
      }

      else
      {

        v31 = 0;
      }

      free(v31);
    }

    v32 = [v10 userUUID];
    if (v32)
    {
      if (qword_2810B88B8 != -1)
      {
        sub_22EE785F4();
      }

      v38 = qword_2810B88B0;
      if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
      {
        v167 = 0;
        v39 = sub_22EE69AE8();
        v40 = v38;
        if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
        {
          v41 = v39;
        }

        else
        {
          v41 = v39 & 0xFFFFFFFE;
        }

        if (v41)
        {
          v42 = _os_log_send_and_compose_impl();

          if (v42)
          {
            sub_22EE69B10(v42);
          }
        }

        else
        {

          v42 = 0;
        }

        free(v42);
      }

      if (self)
      {
        v48 = self->_se;
      }

      else
      {
        v48 = 0;
      }

      v49 = v48;
      v50 = sub_22EE770F0(v49);
      v51 = [v50 isIdentityLoadedIntoSession:501];

      if (!v51 || (!self ? (v52 = 0) : (v52 = self->_se), v53 = v52, sub_22EE770F0(v53), v54 = objc_claimAutoreleasedReturnValue(), v55 = [v54 unloadIdentityFromSession:501 error:a5], v54, v53, (v55 & 1) != 0))
      {
        if (qword_2810B88B8 != -1)
        {
          sub_22EE785F4();
        }

        v56 = qword_2810B88B0;
        if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
        {
          v167 = 0;
          v57 = sub_22EE69AE8();
          v58 = v56;
          if (os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
          {
            v59 = v57;
          }

          else
          {
            v59 = v57 & 0xFFFFFFFE;
          }

          if (v59)
          {
            v60 = _os_log_send_and_compose_impl();

            if (v60)
            {
              sub_22EE69B10(v60);
            }
          }

          else
          {

            v60 = 0;
          }

          free(v60);
        }

        v163 = a5;
        v66 = v16;

        v165 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:v32];
        v67 = v32;
        if (self)
        {
          v68 = self->_se;
        }

        else
        {
          v68 = 0;
        }

        v69 = v68;
        v70 = sub_22EE770F0(v69);
        v166 = 0;
        v71 = [v70 deleteIdentity:v165 error:&v166];
        v72 = v166;

        v164 = v72;
        if (v71)
        {
          if (qword_2810B88B8 != -1)
          {
            sub_22EE785F4();
          }

          v32 = v67;
          v73 = qword_2810B88B0;
          v16 = v66;
          if (os_log_type_enabled(v73, OS_LOG_TYPE_DEFAULT))
          {
            v167 = 0;
            v74 = sub_22EE69AE8();
            v73 = v73;
            if (os_log_type_enabled(v73, OS_LOG_TYPE_DEFAULT))
            {
              v75 = v74;
            }

            else
            {
              v75 = v74 & 0xFFFFFFFE;
            }

            a5 = v163;
            if (v75)
            {
              goto LABEL_117;
            }

            goto LABEL_133;
          }

          a5 = v163;
        }

        else
        {
          if ([v72 code] != -536870160)
          {
            v32 = v67;
            if (qword_2810B88B8 != -1)
            {
              sub_22EE785F4();
            }

            v16 = v66;
            v79 = qword_2810B88B0;
            a5 = v163;
            if (os_log_type_enabled(v79, OS_LOG_TYPE_ERROR))
            {
              v167 = 0;
              v80 = sub_22EE69AE8();
              if (os_log_type_enabled(v79, OS_LOG_TYPE_ERROR))
              {
                v81 = v80;
              }

              else
              {
                v81 = v80 & 0xFFFFFFFE;
              }

              if (v81)
              {
                v82 = _os_log_send_and_compose_impl();
                v83 = v82;
                if (v82)
                {
                  sub_22EE69B10(v82);
                }
              }

              else
              {
                v83 = 0;
              }

              free(v83);
            }

            if (!v163)
            {
              goto LABEL_265;
            }

            v117 = v164;
            goto LABEL_201;
          }

          v32 = v67;
          if (qword_2810B88B8 != -1)
          {
            sub_22EE785F4();
          }

          v16 = v66;
          v73 = qword_2810B88B0;
          a5 = v163;
          if (os_log_type_enabled(v73, OS_LOG_TYPE_DEFAULT))
          {
            v167 = 0;
            v76 = sub_22EE69AE8();
            v73 = v73;
            if (os_log_type_enabled(v73, OS_LOG_TYPE_DEFAULT))
            {
              v77 = v76;
            }

            else
            {
              v77 = v76 & 0xFFFFFFFE;
            }

            if (v77)
            {
LABEL_117:
              v78 = _os_log_send_and_compose_impl();

              if (v78)
              {
                sub_22EE69B10(v78);
              }

              goto LABEL_134;
            }

LABEL_133:

            v78 = 0;
LABEL_134:
            free(v78);
          }
        }

        if (self)
        {
          v84 = self->_se;
        }

        else
        {
          v84 = 0;
        }

        v85 = v84;
        v86 = sub_22EE770F0(v85);
        v87 = [v86 createIdentityWithUUID:v165 passcode:0 existingSession:999 existingSessionPasscode:v9 isACMCredential:0 error:a5];

        if (v87)
        {
          if (qword_2810B88B8 != -1)
          {
            sub_22EE785F4();
          }

          v88 = qword_2810B88B0;
          if (os_log_type_enabled(v88, OS_LOG_TYPE_DEFAULT))
          {
            v167 = 0;
            v89 = sub_22EE69AE8();
            v90 = v88;
            if (os_log_type_enabled(v90, OS_LOG_TYPE_DEFAULT))
            {
              v91 = v89;
            }

            else
            {
              v91 = v89 & 0xFFFFFFFE;
            }

            if (v91)
            {
              v92 = _os_log_send_and_compose_impl();

              if (v92)
              {
                sub_22EE69B10(v92);
              }
            }

            else
            {

              v92 = 0;
            }

            free(v92);
          }

          if (self)
          {
            v98 = self->_se;
          }

          else
          {
            v98 = 0;
          }

          v99 = v98;
          v100 = sub_22EE770F0(v99);
          v101 = [v100 loadIdentity:v165 intoSession:501 error:a5];

          if (v101)
          {
            [&stru_2843A7258 dataUsingEncoding:4];
            v167 = 0;
            if (AKSIdentitySetPrimary())
            {
              if (qword_2810B88B8 != -1)
              {
                sub_22EE785F4();
              }

              v102 = qword_2810B88B0;
              if (os_log_type_enabled(v102, OS_LOG_TYPE_DEFAULT))
              {
                v103 = sub_22EE69AE8();
                v104 = v102;
                if (os_log_type_enabled(v104, OS_LOG_TYPE_DEFAULT))
                {
                  v105 = v103;
                }

                else
                {
                  v105 = v103 & 0xFFFFFFFE;
                }

                if (v105)
                {
                  v106 = _os_log_send_and_compose_impl();

                  if (v106)
                  {
                    sub_22EE69B10(v106);
                  }
                }

                else
                {

                  v106 = 0;
                }

                free(v106);
              }

              if (self)
              {
                v126 = self->_se;
              }

              else
              {
                v126 = 0;
              }

              v127 = v126;
              v128 = sub_22EE770F0(v127);
              v129 = [v128 unloadIdentityFromSession:501 error:a5];

              if ((v129 & 1) == 0)
              {
                if (qword_2810B88B8 != -1)
                {
                  sub_22EE785F4();
                }

                v130 = qword_2810B88B0;
                if (os_log_type_enabled(v130, OS_LOG_TYPE_ERROR))
                {
                  v131 = sub_22EE69AE8();
                  v132 = v130;
                  if (os_log_type_enabled(v132, OS_LOG_TYPE_ERROR))
                  {
                    v133 = v131;
                  }

                  else
                  {
                    v133 = v131 & 0xFFFFFFFE;
                  }

                  if (v133)
                  {
                    v134 = _os_log_send_and_compose_impl();

                    if (v134)
                    {
                      sub_22EE69B10(v134);
                    }
                  }

                  else
                  {

                    v134 = 0;
                  }

                  free(v134);
                }
              }

              v37 = 1;
              goto LABEL_266;
            }

            if (qword_2810B88B8 != -1)
            {
              sub_22EE785F4();
            }

            v112 = qword_2810B88B0;
            if (os_log_type_enabled(v112, OS_LOG_TYPE_ERROR))
            {
              v113 = sub_22EE69AE8();
              v114 = v112;
              if (os_log_type_enabled(v114, OS_LOG_TYPE_ERROR))
              {
                v115 = v113;
              }

              else
              {
                v115 = v113 & 0xFFFFFFFE;
              }

              if (v115)
              {
                v116 = _os_log_send_and_compose_impl();

                if (v116)
                {
                  sub_22EE69B10(v116);
                }
              }

              else
              {

                v116 = 0;
              }

              free(v116);
            }

            if (self)
            {
              v135 = self->_se;
            }

            else
            {
              v135 = 0;
            }

            v136 = v135;
            v137 = sub_22EE770F0(v136);
            v138 = [v137 unloadIdentityFromSession:501 error:a5];

            if ((v138 & 1) == 0)
            {
              if (qword_2810B88B8 != -1)
              {
                sub_22EE785F4();
              }

              v139 = qword_2810B88B0;
              if (os_log_type_enabled(v139, OS_LOG_TYPE_ERROR))
              {
                v140 = sub_22EE69AE8();
                v141 = v139;
                if (os_log_type_enabled(v141, OS_LOG_TYPE_ERROR))
                {
                  v142 = v140;
                }

                else
                {
                  v142 = v140 & 0xFFFFFFFE;
                }

                if (v142)
                {
                  v143 = _os_log_send_and_compose_impl();

                  if (v143)
                  {
                    sub_22EE69B10(v143);
                  }
                }

                else
                {

                  v143 = 0;
                }

                free(v143);
              }
            }

            if (self)
            {
              v144 = self->_se;
            }

            else
            {
              v144 = 0;
            }

            v145 = v144;
            v146 = sub_22EE770F0(v145);
            v147 = [v146 deleteIdentity:v165 error:a5];

            if (v147)
            {
              goto LABEL_265;
            }

            if (qword_2810B88B8 != -1)
            {
              sub_22EE785F4();
            }

            v122 = qword_2810B88B0;
            if (!os_log_type_enabled(v122, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_264;
            }

            v148 = sub_22EE69AE8();
            v124 = v122;
            if (os_log_type_enabled(v124, OS_LOG_TYPE_ERROR))
            {
              v149 = v148;
            }

            else
            {
              v149 = v148 & 0xFFFFFFFE;
            }

            if (v149)
            {
LABEL_260:
              v150 = _os_log_send_and_compose_impl();

              if (v150)
              {
                sub_22EE69B10(v150);
              }

              goto LABEL_263;
            }
          }

          else
          {
            if (qword_2810B88B8 != -1)
            {
              sub_22EE785F4();
            }

            v107 = qword_2810B88B0;
            if (os_log_type_enabled(v107, OS_LOG_TYPE_ERROR))
            {
              v167 = 0;
              v108 = sub_22EE69AE8();
              v109 = v107;
              if (os_log_type_enabled(v109, OS_LOG_TYPE_ERROR))
              {
                v110 = v108;
              }

              else
              {
                v110 = v108 & 0xFFFFFFFE;
              }

              if (v110)
              {
                v111 = _os_log_send_and_compose_impl();

                if (v111)
                {
                  sub_22EE69B10(v111);
                }
              }

              else
              {

                v111 = 0;
              }

              free(v111);
            }

            if (self)
            {
              v118 = self->_se;
            }

            else
            {
              v118 = 0;
            }

            v119 = v118;
            v120 = sub_22EE770F0(v119);
            v121 = [v120 deleteIdentity:v165 error:a5];

            if (v121)
            {
              goto LABEL_265;
            }

            if (qword_2810B88B8 != -1)
            {
              sub_22EE785F4();
            }

            v122 = qword_2810B88B0;
            if (!os_log_type_enabled(v122, OS_LOG_TYPE_ERROR))
            {
LABEL_264:

LABEL_265:
              v37 = 0;
              goto LABEL_266;
            }

            v167 = 0;
            v123 = sub_22EE69AE8();
            v124 = v122;
            if (os_log_type_enabled(v124, OS_LOG_TYPE_ERROR))
            {
              v125 = v123;
            }

            else
            {
              v125 = v123 & 0xFFFFFFFE;
            }

            if (v125)
            {
              goto LABEL_260;
            }
          }

          v150 = 0;
LABEL_263:
          free(v150);
          goto LABEL_264;
        }

        if (qword_2810B88B8 != -1)
        {
          sub_22EE785F4();
        }

        v93 = qword_2810B88B0;
        if (os_log_type_enabled(v93, OS_LOG_TYPE_ERROR))
        {
          v167 = 0;
          v94 = sub_22EE69AE8();
          if (os_log_type_enabled(v93, OS_LOG_TYPE_ERROR))
          {
            v95 = v94;
          }

          else
          {
            v95 = v94 & 0xFFFFFFFE;
          }

          if (v95)
          {
            v96 = _os_log_send_and_compose_impl();
            v97 = v96;
            if (v96)
            {
              sub_22EE69B10(v96);
            }
          }

          else
          {
            v97 = 0;
          }

          free(v97);
        }

        if (!a5)
        {
          goto LABEL_265;
        }

        v117 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:5 userInfo:0];
LABEL_201:
        v37 = 0;
        *a5 = v117;
LABEL_266:

LABEL_267:
        if (self)
        {
          v151 = self->_se;
        }

        else
        {
          v151 = 0;
        }

        v152 = v151;
        v153 = sub_22EE770F0(v152);
        v154 = [v153 unloadIdentityFromSession:999 error:a5];

        if (v154)
        {
          if (qword_2810B88B8 != -1)
          {
            sub_22EE785F4();
          }

          v155 = qword_2810B88B0;
          if (!os_log_type_enabled(v155, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_289;
          }

          v167 = 0;
          v156 = sub_22EE69AE8();
          v157 = v155;
          if (os_log_type_enabled(v157, OS_LOG_TYPE_DEFAULT))
          {
            v158 = v156;
          }

          else
          {
            v158 = v156 & 0xFFFFFFFE;
          }

          if (v158)
          {
            goto LABEL_285;
          }
        }

        else
        {
          if (qword_2810B88B8 != -1)
          {
            sub_22EE785F4();
          }

          v155 = qword_2810B88B0;
          if (!os_log_type_enabled(v155, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_289;
          }

          v167 = 0;
          v159 = sub_22EE69AE8();
          v157 = v155;
          if (os_log_type_enabled(v157, OS_LOG_TYPE_ERROR))
          {
            v160 = v159;
          }

          else
          {
            v160 = v159 & 0xFFFFFFFE;
          }

          if (v160)
          {
LABEL_285:
            v161 = _os_log_send_and_compose_impl();

            if (v161)
            {
              sub_22EE69B10(v161);
            }

            goto LABEL_288;
          }
        }

        v161 = 0;
LABEL_288:
        free(v161);
LABEL_289:

LABEL_290:
        goto LABEL_291;
      }

      if (qword_2810B88B8 != -1)
      {
        sub_22EE785F4();
      }

      v61 = qword_2810B88B0;
      if (os_log_type_enabled(v61, OS_LOG_TYPE_ERROR))
      {
        v167 = 0;
        v62 = sub_22EE69AE8();
        if (os_log_type_enabled(v61, OS_LOG_TYPE_ERROR))
        {
          v63 = v62;
        }

        else
        {
          v63 = v62 & 0xFFFFFFFE;
        }

        if (v63)
        {
          v64 = _os_log_send_and_compose_impl();
          v65 = v64;
          if (v64)
          {
            sub_22EE69B10(v64);
          }
        }

        else
        {
          v65 = 0;
        }

        free(v65);
      }
    }

    else
    {
      if (qword_2810B88B8 != -1)
      {
        sub_22EE785F4();
      }

      v43 = qword_2810B88B0;
      if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
      {
        v167 = 0;
        v44 = sub_22EE69AE8();
        if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
        {
          v45 = v44;
        }

        else
        {
          v45 = v44 & 0xFFFFFFFE;
        }

        if (v45)
        {
          v46 = _os_log_send_and_compose_impl();
          v47 = v46;
          if (v46)
          {
            sub_22EE69B10(v46);
          }
        }

        else
        {
          v47 = 0;
        }

        free(v47);
      }

      if (a5)
      {
        [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:5 userInfo:0];
        *a5 = v37 = 0;
        goto LABEL_267;
      }
    }

    v37 = 0;
    goto LABEL_267;
  }

  if (qword_2810B88B8 != -1)
  {
    sub_22EE785E0();
  }

  v16 = qword_2810B88B0;
  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    v167 = 0;
    v17 = sub_22EE69AE8();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v18 = v17;
    }

    else
    {
      v18 = v17 & 0xFFFFFFFE;
    }

    if (v18)
    {
      v19 = _os_log_send_and_compose_impl();
      v20 = v19;
      if (v19)
      {
        sub_22EE69B10(v19);
      }
    }

    else
    {
      v20 = 0;
    }

    free(v20);
  }

  v37 = 0;
LABEL_291:

  return v37;
}

- (id)primaryUserOnSharedDataVolumePath:(id)a3 withError:(id *)a4
{
  v6 = [(UMLManager *)self readUserManifestOnSharedDataVolumePath:a3 withError:?];
  if (v6)
  {
    v7 = [(UMLManager *)self readUserFromManifest:v6 forUserUid:501 withError:a4];
    if (v7)
    {
      goto LABEL_31;
    }

    if (qword_2810B88B8 != -1)
    {
      sub_22EE785E0();
    }

    v8 = qword_2810B88B0;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v23 = 0;
      v9 = sub_22EE69AE8();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v10 = v9;
      }

      else
      {
        v10 = v9 & 0xFFFFFFFE;
      }

      if (v10)
      {
        v22 = 0;
        LODWORD(v21) = 2;
        v20 = &v22;
        v11 = _os_log_send_and_compose_impl();
        v12 = v11;
        if (v11)
        {
          sub_22EE69B10(v11);
        }
      }

      else
      {
        v12 = 0;
      }

      free(v12);
    }

    if (a4)
    {
      v18 = 3;
      goto LABEL_29;
    }
  }

  else
  {
    if (qword_2810B88B8 != -1)
    {
      sub_22EE785E0();
    }

    v13 = qword_2810B88B0;
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v23 = 0;
      v14 = sub_22EE69AE8();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v15 = v14;
      }

      else
      {
        v15 = v14 & 0xFFFFFFFE;
      }

      if (v15)
      {
        v22 = 0;
        LODWORD(v21) = 2;
        v20 = &v22;
        v16 = _os_log_send_and_compose_impl();
        v17 = v16;
        if (v16)
        {
          sub_22EE69B10(v16);
        }
      }

      else
      {
        v17 = 0;
      }

      free(v17);
    }

    if (a4)
    {
      v18 = 2;
LABEL_29:
      [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:v18 userInfo:{0, v20, v21}];
      *a4 = v7 = 0;
      goto LABEL_31;
    }
  }

  v7 = 0;
LABEL_31:

  return v7;
}

- (BOOL)mountSystemDataVolumeAt:(id)a3 withError:(id *)a4
{
  v89 = *MEMORY[0x277D85DE8];
  v6 = a3;
  if (![(UMLManager *)self inDeviceRecoveryEnvironment])
  {
    v20 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:45 userInfo:0];
    if (qword_2810B88B8 != -1)
    {
      sub_22EE785E0();
    }

    v21 = qword_2810B88B0;
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v87 = 0;
      v22 = sub_22EE69AE8();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        v23 = v22;
      }

      else
      {
        v23 = v22 & 0xFFFFFFFE;
      }

      if (v23)
      {
        LODWORD(v88[0]) = 138412290;
        *(v88 + 4) = v20;
        v24 = _os_log_send_and_compose_impl();
        v25 = v24;
        if (v24)
        {
          sub_22EE69B10(v24);
        }
      }

      else
      {
        v25 = 0;
      }

      free(v25);
    }

    if (a4)
    {
      v36 = v20;
      v37 = 0;
      v11 = 0;
      v9 = 0;
      v7 = 0;
      v38 = 0;
      *a4 = v20;
      goto LABEL_108;
    }

    v37 = 0;
    v11 = 0;
    v9 = 0;
LABEL_65:
    v7 = 0;
LABEL_107:
    v38 = 0;
    goto LABEL_108;
  }

  memset(v88, 0, sizeof(v88));
  if (!sub_22EE71304(v88, 256))
  {
    if (qword_2810B88B8 != -1)
    {
      sub_22EE785F4();
    }

    v26 = qword_2810B88B0;
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      v87 = 0;
      v27 = sub_22EE69AE8();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        v28 = v27;
      }

      else
      {
        v28 = v27 & 0xFFFFFFFE;
      }

      if (v28)
      {
        v86 = 0;
        v29 = _os_log_send_and_compose_impl();
        v30 = v29;
        if (v29)
        {
          sub_22EE69B10(v29);
        }
      }

      else
      {
        v30 = 0;
      }

      free(v30);
    }

    if (a4)
    {
      [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:2 userInfo:0];
      v37 = 0;
      v11 = 0;
      v9 = 0;
      v20 = 0;
      v7 = 0;
      *a4 = v38 = 0;
      goto LABEL_108;
    }

    v37 = 0;
    v11 = 0;
    v9 = 0;
    v20 = 0;
    goto LABEL_65;
  }

  v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:v88];
  if (![(UMLManager *)self mountVolumeAtPath:v6 fromDevice:v7 forUserUID:0 userGID:0 withMode:493 withError:a4])
  {
    if (qword_2810B88B8 != -1)
    {
      sub_22EE785F4();
    }

    v31 = qword_2810B88B0;
    if (!os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_104;
    }

    v87 = 0;
    v32 = sub_22EE69AE8();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      v33 = v32;
    }

    else
    {
      v33 = v32 & 0xFFFFFFFE;
    }

    if (v33)
    {
      v86 = 0;
      goto LABEL_44;
    }

LABEL_102:
    v35 = 0;
LABEL_103:
    free(v35);
    goto LABEL_104;
  }

  v8 = [(UMLManager *)self primaryUserOnSharedDataVolumePath:v6 withError:a4];
  if (!v8)
  {
    if (qword_2810B88B8 != -1)
    {
      sub_22EE785F4();
    }

    v39 = qword_2810B88B0;
    if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
    {
      v87 = 0;
      v40 = sub_22EE69AE8();
      if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
      {
        v41 = v40;
      }

      else
      {
        v41 = v40 & 0xFFFFFFFE;
      }

      if (v41)
      {
        v86 = 0;
        LODWORD(v85) = 2;
        v84 = &v86;
        v42 = _os_log_send_and_compose_impl();
        v43 = v42;
        if (v42)
        {
          sub_22EE69B10(v42);
        }
      }

      else
      {
        v43 = 0;
      }

      free(v43);
    }

    if (a4)
    {
      *a4 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:2 userInfo:0];
    }

    if ([(UMLManager *)self unMountVolumeAt:v6 withError:a4, v84, v85])
    {
      goto LABEL_105;
    }

    if (qword_2810B88B8 != -1)
    {
      sub_22EE785F4();
    }

    v31 = qword_2810B88B0;
    if (!os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
LABEL_104:

LABEL_105:
      v37 = 0;
      v11 = 0;
      v9 = 0;
LABEL_106:
      v20 = 0;
      goto LABEL_107;
    }

    v87 = 0;
    v58 = sub_22EE69AE8();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      v59 = v58;
    }

    else
    {
      v59 = v58 & 0xFFFFFFFE;
    }

    if (v59)
    {
      v86 = 0;
LABEL_44:
      v34 = _os_log_send_and_compose_impl();
      v35 = v34;
      if (v34)
      {
        sub_22EE69B10(v34);
      }

      goto LABEL_103;
    }

    goto LABEL_102;
  }

  v9 = v8;
  v10 = [v8 userUUID];
  if (!v10)
  {
    if (qword_2810B88B8 != -1)
    {
      sub_22EE785F4();
    }

    v44 = qword_2810B88B0;
    if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
    {
      v87 = 0;
      v45 = sub_22EE69AE8();
      if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
      {
        v46 = v45;
      }

      else
      {
        v46 = v45 & 0xFFFFFFFE;
      }

      if (v46)
      {
        v86 = 0;
        LODWORD(v85) = 2;
        v84 = &v86;
        v47 = _os_log_send_and_compose_impl();
        v48 = v47;
        if (v47)
        {
          sub_22EE69B10(v47);
        }
      }

      else
      {
        v48 = 0;
      }

      free(v48);
    }

    if (a4)
    {
      *a4 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:2 userInfo:0];
    }

    if (![(UMLManager *)self unMountVolumeAt:v6 withError:a4, v84, v85])
    {
      if (qword_2810B88B8 != -1)
      {
        sub_22EE785F4();
      }

      v67 = qword_2810B88B0;
      if (os_log_type_enabled(v67, OS_LOG_TYPE_ERROR))
      {
        v87 = 0;
        v68 = sub_22EE69AE8();
        if (os_log_type_enabled(v67, OS_LOG_TYPE_ERROR))
        {
          v69 = v68;
        }

        else
        {
          v69 = v68 & 0xFFFFFFFE;
        }

        if (v69)
        {
          v86 = 0;
          v70 = _os_log_send_and_compose_impl();
          v71 = v70;
          if (v70)
          {
            sub_22EE69B10(v70);
          }
        }

        else
        {
          v71 = 0;
        }

        free(v71);
      }
    }

    v37 = 0;
    v11 = 0;
    goto LABEL_106;
  }

  v11 = v10;
  if (self)
  {
    se = self->_se;
  }

  else
  {
    se = 0;
  }

  v13 = sub_22EE770F0(se);
  v14 = [v13 isIdentityLoadedIntoSession:501];

  if (v14)
  {
    if (qword_2810B88B8 != -1)
    {
      sub_22EE785F4();
    }

    v15 = qword_2810B88B0;
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v87 = 0;
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
        v86 = 0;
        LODWORD(v85) = 2;
        v84 = &v86;
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

    if (a4)
    {
      *a4 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:16 userInfo:0];
    }

    if ([(UMLManager *)self unMountVolumeAt:v6 withError:a4, v84, v85])
    {
      goto LABEL_167;
    }

    if (qword_2810B88B8 != -1)
    {
      sub_22EE785F4();
    }

    v72 = qword_2810B88B0;
    if (!os_log_type_enabled(v72, OS_LOG_TYPE_ERROR))
    {
LABEL_166:

LABEL_167:
      v37 = 0;
      goto LABEL_106;
    }

    v87 = 0;
    v73 = sub_22EE69AE8();
    if (os_log_type_enabled(v72, OS_LOG_TYPE_ERROR))
    {
      v74 = v73;
    }

    else
    {
      v74 = v73 & 0xFFFFFFFE;
    }

    if (v74)
    {
      v86 = 0;
      goto LABEL_162;
    }

    goto LABEL_164;
  }

  v49 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:v11];
  if (!v49)
  {
    if (qword_2810B88B8 != -1)
    {
      sub_22EE785F4();
    }

    v53 = qword_2810B88B0;
    if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
    {
      v87 = 0;
      v54 = sub_22EE69AE8();
      if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
      {
        v55 = v54;
      }

      else
      {
        v55 = v54 & 0xFFFFFFFE;
      }

      if (v55)
      {
        v86 = 0;
        LODWORD(v85) = 2;
        v84 = &v86;
        v56 = _os_log_send_and_compose_impl();
        v57 = v56;
        if (v56)
        {
          sub_22EE69B10(v56);
        }
      }

      else
      {
        v57 = 0;
      }

      free(v57);
    }

    if (a4)
    {
      *a4 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:2 userInfo:0];
    }

    if ([(UMLManager *)self unMountVolumeAt:v6 withError:a4, v84, v85])
    {
      goto LABEL_167;
    }

    if (qword_2810B88B8 != -1)
    {
      sub_22EE785F4();
    }

    v72 = qword_2810B88B0;
    if (!os_log_type_enabled(v72, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_166;
    }

    v87 = 0;
    v75 = sub_22EE69AE8();
    if (os_log_type_enabled(v72, OS_LOG_TYPE_ERROR))
    {
      v76 = v75;
    }

    else
    {
      v76 = v75 & 0xFFFFFFFE;
    }

    if (v76)
    {
      v86 = 0;
LABEL_162:
      v77 = _os_log_send_and_compose_impl();
      v78 = v77;
      if (v77)
      {
        sub_22EE69B10(v77);
      }

      goto LABEL_165;
    }

LABEL_164:
    v78 = 0;
LABEL_165:
    free(v78);
    goto LABEL_166;
  }

  v37 = v49;
  if (self)
  {
    v50 = self->_se;
  }

  else
  {
    v50 = 0;
  }

  v51 = sub_22EE770F0(v50);
  v52 = [v51 loadIdentity:v37 intoSession:501 error:a4];

  if ((v52 & 1) == 0)
  {
    if (qword_2810B88B8 != -1)
    {
      sub_22EE785F4();
    }

    v62 = qword_2810B88B0;
    if (os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
    {
      v87 = 0;
      v63 = sub_22EE69AE8();
      if (os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
      {
        v64 = v63;
      }

      else
      {
        v64 = v63 & 0xFFFFFFFE;
      }

      if (v64)
      {
        v86 = 0;
        v65 = _os_log_send_and_compose_impl();
        v66 = v65;
        if (v65)
        {
          sub_22EE69B10(v65);
        }
      }

      else
      {
        v66 = 0;
      }

      free(v66);
    }

    if (![(UMLManager *)self unMountVolumeAt:v6 withError:a4])
    {
      if (qword_2810B88B8 != -1)
      {
        sub_22EE785F4();
      }

      v79 = qword_2810B88B0;
      if (os_log_type_enabled(v79, OS_LOG_TYPE_ERROR))
      {
        v87 = 0;
        v80 = sub_22EE69AE8();
        if (os_log_type_enabled(v79, OS_LOG_TYPE_ERROR))
        {
          v81 = v80;
        }

        else
        {
          v81 = v80 & 0xFFFFFFFE;
        }

        if (v81)
        {
          v86 = 0;
          v82 = _os_log_send_and_compose_impl();
          v83 = v82;
          if (v82)
          {
            sub_22EE69B10(v82);
          }
        }

        else
        {
          v83 = 0;
        }

        free(v83);
      }
    }

    goto LABEL_106;
  }

  v20 = 0;
  v38 = 1;
LABEL_108:

  v60 = *MEMORY[0x277D85DE8];
  return v38;
}

- (BOOL)unmountUserDataVolumeOnSystemDataAt:(id)a3 withError:(id *)a4
{
  v52 = *MEMORY[0x277D85DE8];
  v6 = a3;
  if ([(UMLManager *)self inDeviceRecoveryEnvironment])
  {
    v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@/mobile", v6];
    if ([(UMLManager *)self unMountVolumeAt:v7 withError:a4])
    {
      if (self)
      {
        se = self->_se;
      }

      else
      {
        se = 0;
      }

      v9 = sub_22EE770F0(se);
      v10 = [v9 isIdentityLoadedIntoSession:501];

      if ((v10 & 1) == 0)
      {
        if (qword_2810B88B8 != -1)
        {
          sub_22EE785E0();
        }

        v32 = qword_2810B88B0;
        if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
        {
          *&v51[0] = 0;
          v33 = sub_22EE69AE8();
          if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
          {
            v34 = v33;
          }

          else
          {
            v34 = v33 & 0xFFFFFFFE;
          }

          if (v34)
          {
            v35 = _os_log_send_and_compose_impl();
            v36 = v35;
            if (v35)
            {
              sub_22EE69B10(v35);
            }
          }

          else
          {
            v36 = 0;
          }

          free(v36);
        }

        v11 = 0;
        v15 = 1;
        goto LABEL_90;
      }

      memset(v51, 0, sizeof(v51));
      if (sub_22EE71504(v51, 256))
      {
        v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:v51];
        if (self)
        {
          v12 = self->_se;
        }

        else
        {
          v12 = 0;
        }

        v13 = sub_22EE770F0(v12);
        v14 = [v13 unmapVolume:v11 error:a4];

        if (v14)
        {
          v15 = 1;
          if (!aks_lock_device())
          {
LABEL_90:

            v21 = 0;
            goto LABEL_91;
          }

          if (qword_2810B88B8 != -1)
          {
            sub_22EE785F4();
          }

          v16 = qword_2810B88B0;
          if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
          {
            v17 = sub_22EE69AE8();
            if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
            {
              v18 = v17;
            }

            else
            {
              v18 = v17 & 0xFFFFFFFE;
            }

            if (v18)
            {
              v19 = _os_log_send_and_compose_impl();
              v20 = v19;
              if (v19)
              {
                sub_22EE69B10(v19);
              }
            }

            else
            {
              v20 = 0;
            }

            free(v20);
          }

          if (a4)
          {
            v48 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:2 userInfo:0];
            goto LABEL_89;
          }
        }

        else
        {
          if (qword_2810B88B8 != -1)
          {
            sub_22EE785F4();
          }

          v43 = qword_2810B88B0;
          if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
          {
            v44 = sub_22EE69AE8();
            if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
            {
              v45 = v44;
            }

            else
            {
              v45 = v44 & 0xFFFFFFFE;
            }

            if (v45)
            {
              v46 = _os_log_send_and_compose_impl();
              v47 = v46;
              if (v46)
              {
                sub_22EE69B10(v46);
              }
            }

            else
            {
              v47 = 0;
            }

            free(v47);
          }
        }

LABEL_65:
        v15 = 0;
        goto LABEL_90;
      }

      if (qword_2810B88B8 != -1)
      {
        sub_22EE785F4();
      }

      v38 = qword_2810B88B0;
      if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
      {
        v39 = sub_22EE69AE8();
        if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
        {
          v40 = v39;
        }

        else
        {
          v40 = v39 & 0xFFFFFFFE;
        }

        if (v40)
        {
          v41 = _os_log_send_and_compose_impl();
          v42 = v41;
          if (v41)
          {
            sub_22EE69B10(v41);
          }
        }

        else
        {
          v42 = 0;
        }

        free(v42);
      }

      if (a4)
      {
        v48 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:2 userInfo:0];
        v11 = 0;
LABEL_89:
        v15 = 0;
        *a4 = v48;
        goto LABEL_90;
      }
    }

    else
    {
      if (qword_2810B88B8 != -1)
      {
        sub_22EE785E0();
      }

      v27 = qword_2810B88B0;
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        *&v51[0] = 0;
        v28 = sub_22EE69AE8();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
        {
          v29 = v28;
        }

        else
        {
          v29 = v28 & 0xFFFFFFFE;
        }

        if (v29)
        {
          v30 = _os_log_send_and_compose_impl();
          v31 = v30;
          if (v30)
          {
            sub_22EE69B10(v30);
          }
        }

        else
        {
          v31 = 0;
        }

        free(v31);
      }
    }

    v11 = 0;
    goto LABEL_65;
  }

  v21 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:45 userInfo:0];
  if (qword_2810B88B8 != -1)
  {
    sub_22EE785E0();
  }

  v22 = qword_2810B88B0;
  if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
  {
    v23 = sub_22EE69AE8();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      v24 = v23;
    }

    else
    {
      v24 = v23 & 0xFFFFFFFE;
    }

    if (v24)
    {
      LODWORD(v51[0]) = 138412290;
      *(v51 + 4) = v21;
      v25 = _os_log_send_and_compose_impl();
      v26 = v25;
      if (v25)
      {
        sub_22EE69B10(v25);
      }
    }

    else
    {
      v26 = 0;
    }

    free(v26);
  }

  if (a4)
  {
    v37 = v21;
    v15 = 0;
    *a4 = v21;
  }

  else
  {
    v15 = 0;
  }

LABEL_91:

  v49 = *MEMORY[0x277D85DE8];
  return v15;
}

- (id)keybagOpaqueDataOnSharedDataVolumePath:(id)a3 withError:(id *)a4
{
  v36 = *MEMORY[0x277D85DE8];
  v6 = a3;
  if ([(UMLManager *)self inDeviceRecoveryEnvironment])
  {
    v7 = [(UMLManager *)self primaryUserOnSharedDataVolumePath:v6 withError:a4];
    v8 = v7;
    if (v7)
    {
      v9 = [v7 keybagOpaqueData];

      if (v9)
      {
        v10 = MEMORY[0x277CBEA90];
        v11 = [v8 keybagOpaqueData];
        v12 = [v10 dataWithData:v11];

        if (qword_2810B88B8 != -1)
        {
          sub_22EE785E0();
        }

        v13 = qword_2810B88B0;
        if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
        {
          v14 = sub_22EE69AE8();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
          {
            v15 = v14;
          }

          else
          {
            v15 = v14 & 0xFFFFFFFE;
          }

          if (v15)
          {
            v16 = _os_log_send_and_compose_impl();
            v17 = v16;
            if (v16)
            {
              sub_22EE69B10(v16);
            }
          }

          else
          {
            v17 = 0;
          }

          free(v17);
        }

        v18 = 0;
        goto LABEL_57;
      }

      if (qword_2810B88B8 != -1)
      {
        sub_22EE785E0();
      }

      v13 = qword_2810B88B0;
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v24 = sub_22EE69AE8();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          v25 = v24;
        }

        else
        {
          v25 = v24 & 0xFFFFFFFE;
        }

        if (v25)
        {
          v26 = _os_log_send_and_compose_impl();
          v27 = v26;
          if (v26)
          {
            sub_22EE69B10(v26);
          }
        }

        else
        {
          v27 = 0;
        }

        free(v27);
      }

      v18 = 0;
    }

    else
    {
      if (a4)
      {
        v18 = *a4;
      }

      else
      {
        v18 = 0;
      }

      if (qword_2810B88B8 != -1)
      {
        sub_22EE785E0();
      }

      v13 = qword_2810B88B0;
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v30 = sub_22EE69AE8();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          v31 = v30;
        }

        else
        {
          v31 = v30 & 0xFFFFFFFE;
        }

        if (v31)
        {
          v32 = _os_log_send_and_compose_impl();
          v33 = v32;
          if (v32)
          {
            sub_22EE69B10(v32);
          }
        }

        else
        {
          v33 = 0;
        }

        free(v33);
      }
    }

    v12 = 0;
LABEL_57:

    v29 = v12;
    goto LABEL_58;
  }

  v18 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:45 userInfo:0];
  if (qword_2810B88B8 != -1)
  {
    sub_22EE785E0();
  }

  v19 = qword_2810B88B0;
  if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
  {
    v20 = sub_22EE69AE8();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v21 = v20;
    }

    else
    {
      v21 = v20 & 0xFFFFFFFE;
    }

    if (v21)
    {
      v22 = _os_log_send_and_compose_impl();
      v23 = v22;
      if (v22)
      {
        sub_22EE69B10(v22);
      }
    }

    else
    {
      v23 = 0;
    }

    free(v23);
  }

  if (a4)
  {
    v28 = v18;
    v8 = 0;
    v29 = 0;
    *a4 = v18;
  }

  else
  {
    v8 = 0;
    v29 = 0;
  }

LABEL_58:

  v34 = *MEMORY[0x277D85DE8];

  return v29;
}

- (BOOL)createUserLayoutForUserwithUserID:(int)a3 withAKSSetup:(BOOL)a4 onUserVolumePath:(id)a5 fromSystemVolumePath:(id)a6 withError:(id *)a7
{
  v9 = a4;
  v68 = *MEMORY[0x277D85DE8];
  v11 = a5;
  v12 = a6;
  v13 = v12;
  if (v11 && v12)
  {
    v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@/System/Library/Templates/User/", v12];
    if (qword_2810B88B8 != -1)
    {
      sub_22EE785E0();
    }

    v15 = qword_2810B88B0;
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      v67 = 0;
      v16 = sub_22EE69AE8();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        v17 = v16;
      }

      else
      {
        v17 = v16 & 0xFFFFFFFE;
      }

      if (v17)
      {
        *v64 = 138412546;
        *&v64[4] = v14;
        v65 = 2112;
        v66 = v11;
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

    if (self)
    {
      se = self->_se;
    }

    else
    {
      se = 0;
    }

    v27 = se;
    v28 = sub_22EE7710C(v27);
    v62[0] = MEMORY[0x277D85DD0];
    v62[1] = 3221225472;
    v62[2] = sub_22EE6DF5C;
    v62[3] = &unk_278870048;
    v63 = a3;
    v62[4] = self;
    v29 = v14;
    v30 = [v28 clonePath:v14 toPath:v11 error:a7 handler:v62];

    if (v30)
    {
      if (qword_2810B88B8 != -1)
      {
        sub_22EE785F4();
      }

      v31 = v29;
      v32 = qword_2810B88B0;
      if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
      {
        v67 = 0;
        v33 = sub_22EE69AE8();
        if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
        {
          v34 = v33;
        }

        else
        {
          v34 = v33 & 0xFFFFFFFE;
        }

        if (v34)
        {
          *v64 = 138543618;
          *&v64[4] = v29;
          v65 = 2114;
          v66 = v11;
          v35 = _os_log_send_and_compose_impl();
          v36 = v35;
          if (v35)
          {
            sub_22EE69B10(v35);
          }
        }

        else
        {
          v36 = 0;
        }

        free(v36);
      }

      if (!v9)
      {
        if (qword_2810B88B8 != -1)
        {
          sub_22EE785F4();
        }

        v37 = qword_2810B88B0;
        if (!os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
        {
          goto LABEL_99;
        }

        *v64 = 0;
        v47 = sub_22EE69AE8();
        if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
        {
          v48 = v47;
        }

        else
        {
          v48 = v47 & 0xFFFFFFFE;
        }

        if (v48)
        {
          LOWORD(v67) = 0;
          goto LABEL_86;
        }

LABEL_97:
        v56 = 0;
LABEL_98:
        free(v56);
LABEL_99:
        v25 = 1;
        goto LABEL_100;
      }

      if (qword_2810B88B8 != -1)
      {
        sub_22EE785F4();
      }

      v42 = qword_2810B88B0;
      if (os_log_type_enabled(v42, OS_LOG_TYPE_DEBUG))
      {
        *v64 = 0;
        v43 = sub_22EE69AE8();
        if (os_log_type_enabled(v42, OS_LOG_TYPE_DEBUG))
        {
          v44 = v43;
        }

        else
        {
          v44 = v43 & 0xFFFFFFFE;
        }

        if (v44)
        {
          LODWORD(v67) = 67109120;
          HIDWORD(v67) = a3;
          v45 = _os_log_send_and_compose_impl();
          v46 = v45;
          if (v45)
          {
            sub_22EE69B10(v45);
          }
        }

        else
        {
          v46 = 0;
        }

        free(v46);
      }

      if (self)
      {
        v49 = self->_se;
      }

      else
      {
        v49 = 0;
      }

      v50 = v49;
      v51 = sub_22EE770F0(v50);
      v52 = [v51 bootstrapVolumeWithMountPoint:v11 user:a3 error:a7];

      if (v52)
      {
        if (qword_2810B88B8 != -1)
        {
          sub_22EE785F4();
        }

        v37 = qword_2810B88B0;
        if (!os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
        {
          goto LABEL_99;
        }

        *v64 = 0;
        v53 = sub_22EE69AE8();
        if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
        {
          v54 = v53;
        }

        else
        {
          v54 = v53 & 0xFFFFFFFE;
        }

        if (v54)
        {
          LOWORD(v67) = 0;
LABEL_86:
          v55 = _os_log_send_and_compose_impl();
          v56 = v55;
          if (v55)
          {
            sub_22EE69B10(v55);
          }

          goto LABEL_98;
        }

        goto LABEL_97;
      }

      if (qword_2810B88B8 != -1)
      {
        sub_22EE785F4();
      }

      v37 = qword_2810B88B0;
      if (!os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_72;
      }

      *v64 = 0;
      v57 = sub_22EE69AE8();
      if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
      {
        v58 = v57;
      }

      else
      {
        v58 = v57 & 0xFFFFFFFE;
      }

      if (!v58)
      {
        v41 = 0;
        goto LABEL_71;
      }

      LOWORD(v67) = 0;
      v40 = _os_log_send_and_compose_impl();
      v41 = v40;
      if (v40)
      {
        goto LABEL_96;
      }
    }

    else
    {
      if (qword_2810B88B8 != -1)
      {
        sub_22EE785F4();
      }

      v31 = v29;
      v37 = qword_2810B88B0;
      if (!os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
      {
        v25 = 0;
LABEL_100:

        goto LABEL_101;
      }

      v67 = 0;
      v38 = sub_22EE69AE8();
      if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
      {
        v39 = v38;
      }

      else
      {
        v39 = v38 & 0xFFFFFFFE;
      }

      if (v39)
      {
        *v64 = 138543618;
        *&v64[4] = v29;
        v65 = 2114;
        v66 = v11;
        v40 = _os_log_send_and_compose_impl();
        v41 = v40;
        if (v40)
        {
LABEL_96:
          sub_22EE69B10(v40);
        }
      }

      else
      {
        v41 = 0;
      }
    }

LABEL_71:
    free(v41);
LABEL_72:
    v25 = 0;
    goto LABEL_100;
  }

  if (qword_2810B88B8 != -1)
  {
    sub_22EE785E0();
  }

  v20 = qword_2810B88B0;
  if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
  {
    *v64 = 0;
    v21 = sub_22EE69AE8();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v22 = v21;
    }

    else
    {
      v22 = v21 & 0xFFFFFFFE;
    }

    if (v22)
    {
      LOWORD(v67) = 0;
      v23 = _os_log_send_and_compose_impl();
      v24 = v23;
      if (v23)
      {
        sub_22EE69B10(v23);
      }
    }

    else
    {
      v24 = 0;
    }

    free(v24);
  }

  if (a7)
  {
    [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:22 userInfo:0];
    *a7 = v25 = 0;
  }

  else
  {
    v25 = 0;
  }

LABEL_101:

  v59 = *MEMORY[0x277D85DE8];
  return v25;
}

- (id)readUserManifestOnSharedDataVolumePath:(id)a3 withError:(id *)a4
{
  v5 = [(UMLManager *)self loadManifestFromSharedDataVolumePath:a3];
  v6 = v5;
  if (a4 && !v5)
  {
    *a4 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:5 userInfo:0];
  }

  return v6;
}

- (id)loadManifestFromSharedDataVolumePath:(id)a3
{
  if (!a3)
  {
    v15 = 0;
    goto LABEL_30;
  }

  v4 = [MEMORY[0x277CCAB68] stringWithString:?];
  [v4 appendString:@"/keybags/usersession.kb"];
  if (self)
  {
    se = self->_se;
  }

  else
  {
    se = 0;
  }

  v6 = se;
  v7 = sub_22EE7710C(v6);
  v20 = 0;
  v8 = [v7 dataWithContentsOfFile:v4 error:&v20];
  v9 = v20;

  if (!v8)
  {
    if (qword_2810B88B8 != -1)
    {
      sub_22EE785F4();
    }

    v10 = qword_2810B88B0;
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_28;
    }

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
      goto LABEL_12;
    }

    goto LABEL_26;
  }

  v16 = [UMLUserManifest manifestFromData:v8];
  sub_22EE77118(self, v16);

  if (!self || !self->_manifest)
  {
    if (qword_2810B88B8 != -1)
    {
      sub_22EE785F4();
    }

    v10 = qword_2810B88B0;
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_28;
    }

    v17 = sub_22EE69AE8();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v18 = v17;
    }

    else
    {
      v18 = v17 & 0xFFFFFFFE;
    }

    if (v18)
    {
LABEL_12:
      v13 = _os_log_send_and_compose_impl();
      v14 = v13;
      if (v13)
      {
        sub_22EE69B10(v13);
      }

      goto LABEL_27;
    }

LABEL_26:
    v14 = 0;
LABEL_27:
    free(v14);
LABEL_28:

    v15 = 0;
    goto LABEL_29;
  }

  v15 = self->_manifest;
LABEL_29:

LABEL_30:

  return v15;
}

- (id)readUserFromManifest:(id)a3 forUserUid:(unsigned int)a4 withError:(id *)a5
{
  v29 = *MEMORY[0x277D85DE8];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v6 = [a3 users];
  v7 = [v6 countByEnumeratingWithState:&v22 objects:v28 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v23;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v23 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v22 + 1) + 8 * i);
        v12 = [v11 objectForKeyedSubscript:@"MKBUserSessionID"];
        v13 = v12;
        if (v12 && [v12 intValue] == a4)
        {
          if (qword_2810B88B8 != -1)
          {
            sub_22EE785F4();
          }

          v15 = qword_2810B88B0;
          if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
          {
            v16 = sub_22EE69AE8();
            if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
            {
              v17 = v16;
            }

            else
            {
              v17 = v16 & 0xFFFFFFFE;
            }

            if (v17)
            {
              v26 = 67109120;
              v27 = a4;
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

          v14 = [UMLUser userFromManifestDictionary:v11];

          goto LABEL_23;
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v22 objects:v28 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  v14 = 0;
LABEL_23:

  v20 = *MEMORY[0x277D85DE8];

  return v14;
}

- (BOOL)addNewUser:(id)a3 toUserManifest:(id)a4 saveToPath:(id)a5
{
  v45 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (v8)
  {
    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v11 = [v9 users];
    v12 = [v11 countByEnumeratingWithState:&v40 objects:v44 count:16];
    if (v12)
    {
      v13 = v12;
      v36 = self;
      v37 = v9;
      LODWORD(self) = 0;
      v14 = 0;
      v15 = *v41;
      do
      {
        v16 = 0;
        self = self;
        do
        {
          if (*v41 != v15)
          {
            objc_enumerationMutation(v11);
          }

          v17 = [*(*(&v40 + 1) + 8 * v16) objectForKeyedSubscript:{@"MKBUserSessionID", v34, v35}];
          v18 = [v8 objectForKeyedSubscript:@"MKBUserSessionID"];

          if (v17 == v18)
          {
            if (qword_2810B88B8 != -1)
            {
              sub_22EE785F4();
            }

            v19 = qword_2810B88B0;
            if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
            {
              v39 = 0;
              v20 = sub_22EE69AE8();
              if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
              {
                v21 = v20;
              }

              else
              {
                v21 = v20 & 0xFFFFFFFE;
              }

              if (v21)
              {
                v38 = 0;
                LODWORD(v35) = 2;
                v34 = &v38;
                v22 = _os_log_send_and_compose_impl();
                v23 = v22;
                if (v22)
                {
                  sub_22EE69B10(v22);
                }
              }

              else
              {
                v23 = 0;
              }

              free(v23);
            }

            v24 = [v37 users];
            [v24 replaceObjectAtIndex:self withObject:v8];

            v14 = 1;
          }

          self = (self + 1);
          ++v16;
        }

        while (v13 != v16);
        v13 = [v11 countByEnumeratingWithState:&v40 objects:v44 count:16];
      }

      while (v13);

      self = v36;
      v9 = v37;
      if (v14)
      {
        goto LABEL_38;
      }
    }

    else
    {
    }

    if (qword_2810B88B8 != -1)
    {
      sub_22EE785F4();
    }

    v26 = qword_2810B88B0;
    if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
    {
      v39 = 0;
      v27 = sub_22EE69AE8();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
      {
        v28 = v27;
      }

      else
      {
        v28 = v27 & 0xFFFFFFFE;
      }

      if (v28)
      {
        v38 = 0;
        LODWORD(v35) = 2;
        v34 = &v38;
        v29 = _os_log_send_and_compose_impl();
        v30 = v29;
        if (v29)
        {
          sub_22EE69B10(v29);
        }
      }

      else
      {
        v30 = 0;
      }

      free(v30);
    }

    v31 = [v9 users];
    [v31 addObject:v8];

LABEL_38:
    v25 = [(UMLManager *)self saveManifest:v9 toPath:v10, v34, v35];
    goto LABEL_39;
  }

  v25 = 0;
LABEL_39:

  v32 = *MEMORY[0x277D85DE8];
  return v25;
}

- (BOOL)removeAnUser:(id)a3 fromUserManifest:(id)a4 saveToPath:(id)a5
{
  v33 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (v8 && ([v8 userManifestDictionary], (v11 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v12 = v11;
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v13 = [v9 users];
    v14 = [v13 countByEnumeratingWithState:&v28 objects:v32 count:16];
    if (v14)
    {
      v15 = v14;
      v25 = self;
      v26 = v10;
      v27 = v9;
      v16 = *v29;
      while (2)
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v29 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v18 = *(*(&v28 + 1) + 8 * i);
          v19 = [v18 objectForKeyedSubscript:@"MKBUserSessionID"];
          v20 = [v12 objectForKeyedSubscript:@"MKBUserSessionID"];

          if (v19 == v20)
          {
            v9 = v27;
            v22 = [v27 users];
            [v22 removeObject:v18];

            v10 = v26;
            v21 = [(UMLManager *)v25 saveManifest:v27 toPath:v26];
            goto LABEL_15;
          }
        }

        v15 = [v13 countByEnumeratingWithState:&v28 objects:v32 count:16];
        if (v15)
        {
          continue;
        }

        break;
      }

      v21 = 0;
      v10 = v26;
      v9 = v27;
    }

    else
    {
      v21 = 0;
    }

LABEL_15:
  }

  else
  {
    v21 = 0;
  }

  v23 = *MEMORY[0x277D85DE8];
  return v21;
}

- (BOOL)updateUser:(id)a3 inManifest:(id)a4 withDiskNode:(id)a5 volumeUUID:(id)a6 volumeName:(id)a7 withSharedDataVolumePath:(id)a8 withError:(id *)a9
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a8;
  v52 = v14;
  v19 = [v14 userManifestDictionary];
  v20 = v19;
  if (v19)
  {
    [v19 setValue:v16 forKey:@"MKBUserSessionVolumeDeviceNode"];
    [v20 setValue:v17 forKey:@"MKBUserSessionVolumeUUID"];
    if (qword_2810B88B8 != -1)
    {
      sub_22EE785E0();
    }

    v21 = qword_2810B88B0;
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
    {
      v22 = v17;
      v23 = v16;
      v24 = v15;
      v54 = 0;
      v25 = sub_22EE69AE8();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
      {
        v26 = v25;
      }

      else
      {
        v26 = v25 & 0xFFFFFFFE;
      }

      if (v26)
      {
        v53 = 0;
        LODWORD(v51) = 2;
        v50 = &v53;
        v27 = _os_log_send_and_compose_impl();
        v28 = v27;
        if (v27)
        {
          sub_22EE69B10(v27);
        }
      }

      else
      {
        v28 = 0;
      }

      free(v28);
      v15 = v24;
      v16 = v23;
      v17 = v22;
    }

    if ([(UMLManager *)self addNewUser:v20 toUserManifest:v15 saveToPath:v18])
    {
      v34 = v52;
      [v52 setDiskNode:v16];
      [v52 setVolumeUUID:v17];
      if (qword_2810B88B8 != -1)
      {
        sub_22EE785F4();
      }

      v35 = qword_2810B88B0;
      if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
      {
        v54 = 0;
        v36 = sub_22EE69AE8();
        if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
        {
          v37 = v36;
        }

        else
        {
          v37 = v36 & 0xFFFFFFFE;
        }

        if (v37)
        {
          v53 = 0;
          v38 = _os_log_send_and_compose_impl();
          v39 = v38;
          if (v38)
          {
            sub_22EE69B10(v38);
          }
        }

        else
        {
          v39 = 0;
        }

        free(v39);
      }

      v48 = 1;
      goto LABEL_53;
    }

    if (qword_2810B88B8 != -1)
    {
      sub_22EE785F4();
    }

    v40 = qword_2810B88B0;
    if (os_log_type_enabled(v40, OS_LOG_TYPE_DEBUG))
    {
      v54 = 0;
      v41 = sub_22EE69AE8();
      if (os_log_type_enabled(v40, OS_LOG_TYPE_DEBUG))
      {
        v42 = v41;
      }

      else
      {
        v42 = v41 & 0xFFFFFFFE;
      }

      if (v42)
      {
        v53 = 0;
        LODWORD(v51) = 2;
        v50 = &v53;
        v43 = _os_log_send_and_compose_impl();
        v44 = v43;
        if (v43)
        {
          sub_22EE69B10(v43);
        }
      }

      else
      {
        v44 = 0;
      }

      free(v44);
    }

    if (a9)
    {
      v45 = MEMORY[0x277CCA9B8];
      v46 = *MEMORY[0x277CCA5B8];
      v47 = 5;
      goto LABEL_52;
    }

LABEL_54:
    v48 = 0;
    v34 = v52;
    goto LABEL_55;
  }

  if (qword_2810B88B8 != -1)
  {
    sub_22EE785E0();
  }

  v29 = qword_2810B88B0;
  if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
  {
    v54 = 0;
    v30 = sub_22EE69AE8();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
    {
      v31 = v30;
    }

    else
    {
      v31 = v30 & 0xFFFFFFFE;
    }

    if (v31)
    {
      v53 = 0;
      LODWORD(v51) = 2;
      v50 = &v53;
      v32 = _os_log_send_and_compose_impl();
      v33 = v32;
      if (v32)
      {
        sub_22EE69B10(v32);
      }
    }

    else
    {
      v33 = 0;
    }

    free(v33);
  }

  if (!a9)
  {
    goto LABEL_54;
  }

  v45 = MEMORY[0x277CCA9B8];
  v46 = *MEMORY[0x277CCA5B8];
  v47 = 22;
LABEL_52:
  [v45 errorWithDomain:v46 code:v47 userInfo:{0, v50, v51}];
  *a9 = v48 = 0;
  v35 = v52;
  v34 = 0;
LABEL_53:

LABEL_55:
  return v48;
}

- (BOOL)saveManifest:(id)a3 toPath:(id)a4
{
  v62[3] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    v8 = [MEMORY[0x277CCAB68] stringWithString:v7];
    v9 = [MEMORY[0x277CCAB68] stringWithString:v7];
    [v8 appendString:@"/keybags/usersession.kb"];
    [v9 appendString:@"/keybags"];
    if (self)
    {
      se = self->_se;
    }

    else
    {
      se = 0;
    }

    v11 = sub_22EE7710C(se);
    v12 = [v11 fileExistsAtPath:v9 isDirectory:0];

    if ((v12 & 1) == 0)
    {
      if (qword_2810B88B8 != -1)
      {
        sub_22EE785E0();
      }

      v13 = qword_2810B88B0;
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        v62[0] = 0;
        v14 = sub_22EE69AE8();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
        {
          v15 = v14;
        }

        else
        {
          v15 = v14 & 0xFFFFFFFE;
        }

        if (v15)
        {
          LOWORD(v60) = 0;
          LODWORD(v59) = 2;
          v58 = &v60;
          v16 = _os_log_send_and_compose_impl();
          v17 = v16;
          if (v16)
          {
            sub_22EE69B10(v16);
          }
        }

        else
        {
          v17 = 0;
        }

        free(v17);
      }

      if (self)
      {
        v19 = self->_se;
      }

      else
      {
        v19 = 0;
      }

      v20 = sub_22EE7710C(v19);
      v21 = [v20 makePath:v9 mode:448 error:0];

      if ((v21 & 1) == 0)
      {
        if (qword_2810B88B8 != -1)
        {
          sub_22EE785F4();
        }

        v27 = qword_2810B88B0;
        if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
        {
          v62[0] = 0;
          v28 = sub_22EE69AE8();
          if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
          {
            v29 = v28;
          }

          else
          {
            v29 = v28 & 0xFFFFFFFE;
          }

          if (v29)
          {
            LOWORD(v60) = 0;
            v30 = _os_log_send_and_compose_impl();
            v31 = v30;
            if (v30)
            {
              sub_22EE69B10(v30);
            }
          }

          else
          {
            v31 = 0;
          }

          free(v31);
        }

        v18 = 0;
        goto LABEL_96;
      }

      if (qword_2810B88B8 != -1)
      {
        sub_22EE785F4();
      }

      v22 = qword_2810B88B0;
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        v62[0] = 0;
        v23 = sub_22EE69AE8();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
        {
          v24 = v23;
        }

        else
        {
          v24 = v23 & 0xFFFFFFFE;
        }

        if (v24)
        {
          LOWORD(v60) = 0;
          LODWORD(v59) = 2;
          v58 = &v60;
          v25 = _os_log_send_and_compose_impl();
          v26 = v25;
          if (v25)
          {
            sub_22EE69B10(v25);
          }
        }

        else
        {
          v26 = 0;
        }

        free(v26);
      }
    }

    v27 = [v6 dataValue];
    if (v27)
    {
      if (qword_2810B88B8 != -1)
      {
        sub_22EE785F4();
      }

      v32 = qword_2810B88B0;
      if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
      {
        v62[0] = 0;
        v33 = sub_22EE69AE8();
        if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
        {
          v34 = v33;
        }

        else
        {
          v34 = v33 & 0xFFFFFFFE;
        }

        if (v34)
        {
          LOWORD(v60) = 0;
          v35 = _os_log_send_and_compose_impl();
          v36 = v35;
          if (v35)
          {
            sub_22EE69B10(v35);
          }
        }

        else
        {
          v36 = 0;
        }

        free(v36);
      }

      if (self)
      {
        v42 = self->_se;
      }

      else
      {
        v42 = 0;
      }

      v43 = v42;
      v44 = sub_22EE7710C(v43);
      v61 = 0;
      v45 = [v44 atomicallyWriteData:v27 toPath:v8 error:&v61];
      v37 = v61;

      if (v45)
      {
        if (qword_2810B88B8 != -1)
        {
          sub_22EE785F4();
        }

        v46 = qword_2810B88B0;
        if (os_log_type_enabled(v46, OS_LOG_TYPE_DEBUG))
        {
          v62[0] = 0;
          v47 = sub_22EE69AE8();
          if (os_log_type_enabled(v46, OS_LOG_TYPE_DEBUG))
          {
            v48 = v47;
          }

          else
          {
            v48 = v47 & 0xFFFFFFFE;
          }

          if (v48)
          {
            LOWORD(v60) = 0;
            v49 = _os_log_send_and_compose_impl();
            v50 = v49;
            if (v49)
            {
              sub_22EE69B10(v49);
            }
          }

          else
          {
            v50 = 0;
          }

          free(v50);
        }

        v18 = 1;
        goto LABEL_95;
      }

      if (qword_2810B88B8 != -1)
      {
        sub_22EE785F4();
      }

      v51 = qword_2810B88B0;
      if (os_log_type_enabled(v51, OS_LOG_TYPE_DEBUG))
      {
        v60 = 0;
        v52 = sub_22EE69AE8();
        if (os_log_type_enabled(v51, OS_LOG_TYPE_DEBUG))
        {
          v53 = v52;
        }

        else
        {
          v53 = v52 & 0xFFFFFFFE;
        }

        if (v53)
        {
          LODWORD(v62[0]) = 138412290;
          *(v62 + 4) = v37;
          v54 = _os_log_send_and_compose_impl();
          v55 = v54;
          if (v54)
          {
            sub_22EE69B10(v54);
          }
        }

        else
        {
          v55 = 0;
        }

        free(v55);
      }
    }

    else
    {
      if (qword_2810B88B8 != -1)
      {
        sub_22EE785F4();
      }

      v37 = qword_2810B88B0;
      if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
      {
        v62[0] = 0;
        v38 = sub_22EE69AE8();
        if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
        {
          v39 = v38;
        }

        else
        {
          v39 = v38 & 0xFFFFFFFE;
        }

        if (v39)
        {
          LOWORD(v60) = 0;
          v40 = _os_log_send_and_compose_impl();
          v41 = v40;
          if (v40)
          {
            sub_22EE69B10(v40);
          }
        }

        else
        {
          v41 = 0;
        }

        free(v41);
      }
    }

    v18 = 0;
LABEL_95:

LABEL_96:
    goto LABEL_97;
  }

  v18 = 0;
LABEL_97:

  v56 = *MEMORY[0x277D85DE8];
  return v18;
}

- (BOOL)unMountVolumeAt:(id)a3 withError:(id *)a4
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = sub_22EE71964([a3 UTF8String], 0x80000);
  if (v5)
  {
    v6 = *__error();
    if (qword_2810B88B8 != -1)
    {
      sub_22EE785E0();
    }

    v7 = qword_2810B88B0;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = sub_22EE69AE8();
      if (!os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        v8 &= ~1u;
      }

      if (v8)
      {
        v9 = v7;
        strerror(v6);
        v10 = _os_log_send_and_compose_impl();

        if (v10)
        {
          sub_22EE69B10(v10);
        }
      }

      else
      {
        v10 = 0;
      }

      free(v10);
    }

    if (a4)
    {
      *a4 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:v6 userInfo:0];
    }
  }

  result = v5 == 0;
  v12 = *MEMORY[0x277D85DE8];
  return result;
}

- (BOOL)inDeviceRecoveryEnvironment
{
  v32 = *MEMORY[0x277D85DE8];
  size = 0;
  if (sysctlbyname("hw.osenvironment", 0, &size, 0, 0) == -1)
  {
    if (qword_2810B88B8 != -1)
    {
      sub_22EE785F4();
    }

    v11 = qword_2810B88B0;
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_40;
    }

    v12 = sub_22EE69AE8();
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 &= ~1u;
    }

    if (v12)
    {
      v13 = v11;
      v14 = __error();
      v15 = strerror(*v14);
      *v31 = 136315138;
      *&v31[4] = v15;
      v16 = _os_log_send_and_compose_impl();

      if (!v16)
      {
        goto LABEL_39;
      }

      goto LABEL_29;
    }

LABEL_38:
    v16 = 0;
    goto LABEL_39;
  }

  v2 = malloc_type_malloc(size, 0x55C05089uLL);
  if (v2)
  {
    v3 = v2;
    bzero(v2, size);
    v4 = sysctlbyname("hw.osenvironment", v3, &size, 0, 0);
    v5 = v4 != -1;
    if (v4 == -1)
    {
      if (qword_2810B88B8 != -1)
      {
        sub_22EE785F4();
      }

      v19 = qword_2810B88B0;
      if (!os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_56;
      }

      v20 = sub_22EE69AE8();
      if (!os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        v20 &= ~1u;
      }

      if (v20)
      {
        v21 = v19;
        v22 = *__error();
        v23 = __error();
        v24 = strerror(*v23);
        *v31 = 67109378;
        *&v31[4] = v22;
        *&v31[8] = 2080;
        *&v31[10] = v24;
        v25 = _os_log_send_and_compose_impl();

        if (!v25)
        {
          goto LABEL_55;
        }

        goto LABEL_53;
      }
    }

    else
    {
      if (qword_2810B88B8 != -1)
      {
        sub_22EE785F4();
      }

      v6 = qword_2810B88B0;
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
      {
        v7 = sub_22EE69AE8();
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
        {
          v8 = v7;
        }

        else
        {
          v8 = v7 & 0xFFFFFFFE;
        }

        if (v8)
        {
          *v31 = 136315138;
          *&v31[4] = v3;
          v9 = _os_log_send_and_compose_impl();
          v10 = v9;
          if (v9)
          {
            sub_22EE69B10(v9);
          }
        }

        else
        {
          v10 = 0;
        }

        free(v10);
      }

      if (strncmp(v3, "device-recovery", 0xFuLL))
      {
        v5 = 0;
LABEL_57:
        free(v3);
        goto LABEL_58;
      }

      if (qword_2810B88B8 != -1)
      {
        sub_22EE785F4();
      }

      v19 = qword_2810B88B0;
      if (!os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
      {
LABEL_56:

        goto LABEL_57;
      }

      *v31 = 0;
      v26 = sub_22EE69AE8();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
      {
        v27 = v26;
      }

      else
      {
        v27 = v26 & 0xFFFFFFFE;
      }

      if (v27)
      {
        v25 = _os_log_send_and_compose_impl();
        if (!v25)
        {
LABEL_55:
          free(v25);
          goto LABEL_56;
        }

LABEL_53:
        sub_22EE69B10(v25);
        goto LABEL_55;
      }
    }

    v25 = 0;
    goto LABEL_55;
  }

  if (qword_2810B88B8 != -1)
  {
    sub_22EE785F4();
  }

  v11 = qword_2810B88B0;
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    *v31 = 0;
    v17 = sub_22EE69AE8();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v18 = v17;
    }

    else
    {
      v18 = v17 & 0xFFFFFFFE;
    }

    if (v18)
    {
      v16 = _os_log_send_and_compose_impl();
      if (!v16)
      {
LABEL_39:
        free(v16);
        goto LABEL_40;
      }

LABEL_29:
      sub_22EE69B10(v16);
      goto LABEL_39;
    }

    goto LABEL_38;
  }

LABEL_40:

  v5 = 0;
LABEL_58:
  v28 = *MEMORY[0x277D85DE8];
  return v5;
}

- (BOOL)unmountSystemDataVolumeAt:(id)a3 withError:(id *)a4
{
  v6 = a3;
  if (self)
  {
    se = self->_se;
  }

  else
  {
    se = 0;
  }

  v8 = sub_22EE770F0(se);
  v9 = [v8 isIdentityLoadedIntoSession:501];

  if (v9)
  {
    v10 = self ? self->_se : 0;
    v11 = sub_22EE770F0(v10);
    v12 = [v11 unloadIdentityFromSession:501 error:a4];

    if ((v12 & 1) == 0)
    {
      if (qword_2810B88B8 != -1)
      {
        dispatch_once(&qword_2810B88B8, &unk_2843A71D8);
      }

      if (sub_22EE63F00(qword_2810B88B0))
      {
        sub_22EE69AE8();
        v19 = sub_22EE63EA4();
        if (sub_22EE63E74(v19))
        {
          sub_22EE63EE8();
          sub_22EE703FC();
          v20 = sub_22EE70450();
          v21 = v20;
          if (v20)
          {
            sub_22EE69B10(v20);
          }
        }

        else
        {
          v21 = 0;
        }

        free(v21);
      }

      if (a4)
      {
        v22 = *MEMORY[0x277CCA5B8];
        sub_22EE70444();
        [v23 errorWithDomain:? code:? userInfo:?];
        *a4 = v13 = 0;
        goto LABEL_32;
      }

      goto LABEL_27;
    }
  }

  if (![(UMLManager *)self unMountVolumeAt:v6 withError:a4])
  {
    if (qword_2810B88B8 != -1)
    {
      dispatch_once(&qword_2810B88B8, &unk_2843A71D8);
    }

    v14 = qword_2810B88B0;
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = sub_22EE69AE8();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v16 = v15;
      }

      else
      {
        v16 = v15 & 0xFFFFFFFE;
      }

      if (v16)
      {
        sub_22EE63EE8();
        sub_22EE703FC();
        v17 = _os_log_send_and_compose_impl();
        v18 = v17;
        if (v17)
        {
          sub_22EE69B10(v17);
        }
      }

      else
      {
        v18 = 0;
      }

      free(v18);
    }

LABEL_27:
    v13 = 0;
    goto LABEL_32;
  }

  v13 = 1;
LABEL_32:

  return v13;
}

@end