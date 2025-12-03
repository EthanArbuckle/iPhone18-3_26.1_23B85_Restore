@interface MISProfileModel
- (BOOL)isProfileInstalled:(id)installed;
- (BOOL)queryCMSBlobForProfile:(id)profile forcingXML:(BOOL)l handler:(id)handler;
- (MISProfileModel)initWithDB:(id)b;
- (id)getCertPrimaryKey:(id)key;
- (int)insertProfile:(void *)profile;
- (int)insertSigningIdentities:(id)identities withProfileUUID:(id)d;
- (void)queryProfile:(id)profile;
@end

@implementation MISProfileModel

- (id)getCertPrimaryKey:(id)key
{
  keyCopy = key;
  WeakRetained = objc_loadWeakRetained(&self->_weak_db);
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = sub_1B9DC2CDC;
  v20 = sub_1B9DC2CEC;
  v21 = 0;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = sub_1B9DC2CF4;
  v14[3] = &unk_1E7ED8548;
  v6 = keyCopy;
  v15 = v6;
  if (objc_msgSend_executeQuery_withBind_withResults_(WeakRetained, v7, @"INSERT OR IGNORE INTO certificates VALUES (NULL, @cert)", v14, 0))
  {
    v8 = 0;
  }

  else
  {
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = sub_1B9DC2D70;
    v12[3] = &unk_1E7ED8548;
    v13 = v6;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = sub_1B9DC2DEC;
    v11[3] = &unk_1E7ED8570;
    v11[4] = &v16;
    if (objc_msgSend_executeQuery_withBind_withResults_(WeakRetained, v9, @"SELECT pk FROM certificates WHERE leaf = @cert", v12, v11))
    {
      v8 = 0;
    }

    else
    {
      v8 = v17[5];
    }
  }

  _Block_object_dispose(&v16, 8);

  return v8;
}

- (int)insertProfile:(void *)profile
{
  v98 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained(&self->_weak_db);
  v61 = MISProfileGetValue(profile, @"UUID");
  v59 = MISProfileGetValue(profile, @"Name");
  v7 = objc_msgSend_certs(profile, v5, v6);

  v56 = v7;
  v55 = MISXMLProvisioningProfileGetDeveloperCertificates(profile);
  v58 = MISProvisioningProfileGetTeamIdentifier(profile);
  v57 = MISProfileGetValue(profile, @"ExpirationDate");
  v10 = *(profile + 1);
  if (v10)
  {
    v11 = v10;
  }

  v60 = v10;
  v12 = objc_msgSend_entitlements(profile, v8, v9);

  v54 = v12;
  v63 = MISProfileGetValue(profile, @"DER-Encoded-Profile");
  v53 = sub_1B9DC77DC(profile, @"ProvisionsAllDevices");
  v52 = sub_1B9DC77DC(profile, @"LocalProvision");
  v93 = 0;
  v94 = &v93;
  v95 = 0x2020000000;
  v96 = 0;
  v13 = objc_autoreleasePoolPush();
  v16 = objc_msgSend_length(v63, v14, v15);
  v17 = v16;
  if (v16)
  {
    v18 = MISProfileCreateWithData(v16, v63);
    if (MISProfileValidateSignature_0(v18))
    {
      inserted = 4;
    }

    else
    {
      inserted = objc_msgSend_insertProfile_(self, v19, v18);
      *(v94 + 6) = inserted;
      if (!inserted)
      {
        v90[0] = MEMORY[0x1E69E9820];
        v90[1] = 3221225472;
        v90[2] = sub_1B9DC35E8;
        v90[3] = &unk_1E7ED8598;
        v20 = v61;
        v91 = v20;
        v92 = v60;
        inserted = objc_msgSend_executeQuery_withBind_withResults_(WeakRetained, v21, @"INSERT INTO xml_profiles_cache VALUES (@uuid, @cms_blob)", v90, 0);
        *(v94 + 6) = inserted;
        if (!inserted)
        {
          if (!v55 || !(v53 | v52) || (inserted = objc_msgSend_insertSigningIdentities_withProfileUUID_(self, v22, v55, v20), (*(v94 + 6) = inserted) == 0))
          {
            inserted = 0;
          }
        }
      }
    }
  }

  objc_autoreleasePoolPop(v13);
  if (!v17)
  {
    IsDEREncoded = MISProfileIsDEREncoded(profile);
    v26 = MISProvisioningProfileIsAppleInternalProfile(profile) != 0;
    v27 = MISProvisioningProfileIsForBetaDeployment(profile, v24, v25) != 0;
    v79[0] = MEMORY[0x1E69E9820];
    v79[1] = 3221225472;
    v79[2] = sub_1B9DC369C;
    v79[3] = &unk_1E7ED84C0;
    v28 = v61;
    v80 = v28;
    v51 = v58;
    v81 = v51;
    v82 = v59;
    v83 = v57;
    v85 = v53 != 0;
    v86 = v26;
    v87 = v52 != 0;
    v88 = v27;
    v84 = v60;
    v89 = IsDEREncoded;
    inserted = objc_msgSend_executeQuery_withBind_withResults_(WeakRetained, v29, @"INSERT INTO profiles VALUES (@uuid, @team_id, NULL, @name, @expires, @is_for_all_devices, @is_apple_internal, @is_local, @is_beta, @cms_blob, @is_der)", v79, 0);
    *(v94 + 6) = inserted;
    if (!inserted)
    {
      v77 = 0u;
      v78 = 0u;
      v75 = 0u;
      v76 = 0u;
      v30 = v56;
      v33 = objc_msgSend_countByEnumeratingWithState_objects_count_(v30, v31, &v75, v97, 16);
      if (v33)
      {
        v34 = *v76;
        while (2)
        {
          for (i = 0; i != v33; ++i)
          {
            if (*v76 != v34)
            {
              objc_enumerationMutation(v30);
            }

            v36 = objc_msgSend_getCertPrimaryKey_(self, v32, *(*(&v75 + 1) + 8 * i), v51);
            if (!v36)
            {
              inserted = 1;
              goto LABEL_33;
            }

            v72[0] = MEMORY[0x1E69E9820];
            v72[1] = 3221225472;
            v72[2] = sub_1B9DC388C;
            v72[3] = &unk_1E7ED8598;
            v73 = v28;
            v37 = v36;
            v74 = v37;
            inserted = objc_msgSend_executeQuery_withBind_withResults_(WeakRetained, v38, @"INSERT INTO certificate_provisioning_cache VALUES (NULL, @uuid, @leaf_pk)", v72, 0);
            *(v94 + 6) = inserted;

            if (inserted)
            {
              goto LABEL_33;
            }
          }

          v33 = objc_msgSend_countByEnumeratingWithState_objects_count_(v30, v32, &v75, v97, 16);
          if (v33)
          {
            continue;
          }

          break;
        }
      }

      v41 = objc_msgSend_Entitlements(WeakRetained, v39, v40);
      v68[0] = MEMORY[0x1E69E9820];
      v68[1] = 3221225472;
      v68[2] = sub_1B9DC3928;
      v68[3] = &unk_1E7ED84E8;
      v71 = &v93;
      v42 = WeakRetained;
      v69 = v42;
      v43 = v28;
      v70 = v43;
      objc_msgSend_emitEntitlementPredicates_predicateHandler_(v41, v44, v54, v68);

      v45 = MISProfileGetValue(profile, @"TeamName");
      v65[0] = MEMORY[0x1E69E9820];
      v65[1] = 3221225472;
      v65[2] = sub_1B9DC39BC;
      v65[3] = &unk_1E7ED8598;
      v66 = v51;
      v46 = v45;
      v67 = v46;
      inserted = objc_msgSend_executeQuery_withBind_withResults_(v42, v47, @"INSERT INTO team_id_info VALUES (@team_id, @team_name) ON CONFLICT DO NOTHING", v65, 0);
      *(v94 + 6) = inserted;
      if (!inserted)
      {
        if (!v55 || !(v53 | v52) || (inserted = objc_msgSend_insertSigningIdentities_withProfileUUID_(self, v48, v55, v43), (*(v94 + 6) = inserted) == 0))
        {
          inserted = 0;
        }
      }

      v30 = v69;
LABEL_33:
    }
  }

  _Block_object_dispose(&v93, 8);

  v49 = *MEMORY[0x1E69E9840];
  return inserted;
}

- (int)insertSigningIdentities:(id)identities withProfileUUID:(id)d
{
  v36 = *MEMORY[0x1E69E9840];
  identitiesCopy = identities;
  dCopy = d;
  v8 = objc_autoreleasePoolPush();
  WeakRetained = objc_loadWeakRetained(&self->_weak_db);
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v10 = identitiesCopy;
  v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v11, &v29, v35, 16);
  if (v12)
  {
    v13 = v12;
    v14 = *v30;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v30 != v14)
        {
          objc_enumerationMutation(v10);
        }

        v16 = SecCertificateCreateWithData(0, *(*(&v29 + 1) + 8 * i));
        if (v16)
        {
          v17 = v16;
          v18 = SecCertificateCopySubjectSummary(v16);
          CFRelease(v17);
          if (v18)
          {
            v26[0] = MEMORY[0x1E69E9820];
            v26[1] = 3221225472;
            v26[2] = sub_1B9DC3D2C;
            v26[3] = &unk_1E7ED8598;
            v27 = dCopy;
            v19 = v18;
            v28 = v19;
            v21 = objc_msgSend_executeQuery_withBind_withResults_(WeakRetained, v20, @"INSERT OR IGNORE INTO signing_identities VALUES (NULL, @uuid, @signing_identity)", v26, 0);

            if (v21)
            {

              goto LABEL_19;
            }
          }

          else
          {
            v22 = sub_1B9D98960();
            if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              v34 = dCopy;
              _os_log_error_impl(&dword_1B9D96000, v22, OS_LOG_TYPE_ERROR, "Couldn't get signing identity for %@", buf, 0xCu);
            }

            v19 = 0;
          }
        }

        else
        {
          v19 = sub_1B9D98960();
          if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v34 = dCopy;
            _os_log_error_impl(&dword_1B9D96000, v19, OS_LOG_TYPE_ERROR, "Couldn't create SecCertificate for %@", buf, 0xCu);
          }
        }
      }

      v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v23, &v29, v35, 16);
    }

    while (v13);
    v21 = 0;
  }

  else
  {
    v21 = 0;
  }

LABEL_19:

  objc_autoreleasePoolPop(v8);
  v24 = *MEMORY[0x1E69E9840];
  return v21;
}

- (BOOL)isProfileInstalled:(id)installed
{
  installedCopy = installed;
  WeakRetained = objc_loadWeakRetained(&self->_weak_db);
  if (installedCopy)
  {
    v14 = 0;
    v15 = &v14;
    v16 = 0x2020000000;
    v17 = 0;
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = sub_1B9DC3F38;
    v12[3] = &unk_1E7ED8548;
    v13 = installedCopy;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = sub_1B9DC3FA8;
    v9[3] = &unk_1E7ED8498;
    v11 = &v14;
    v10 = v13;
    objc_msgSend_executeQuery_withBind_withResults_(WeakRetained, v6, @"SELECT uuid FROM profiles WHERE uuid = @uuid", v12, v9);
    v7 = *(v15 + 24);

    _Block_object_dispose(&v14, 8);
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

- (void)queryProfile:(id)profile
{
  profileCopy = profile;
  if (profileCopy)
  {
    v9 = 0;
    v10 = &v9;
    v11 = 0x2020000000;
    v12 = 0;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = sub_1B9DC4124;
    v8[3] = &unk_1E7ED8570;
    v8[4] = &v9;
    objc_msgSend_queryCMSBlobForProfile_forcingXML_handler_(self, v4, profileCopy, 0, v8);
    v6 = v10[3];
    _Block_object_dispose(&v9, 8);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)queryCMSBlobForProfile:(id)profile forcingXML:(BOOL)l handler:(id)handler
{
  lCopy = l;
  profileCopy = profile;
  handlerCopy = handler;
  WeakRetained = objc_loadWeakRetained(&self->_weak_db);
  if (profileCopy)
  {
    if (!lCopy)
    {
      goto LABEL_4;
    }

    v24 = 0;
    v25 = &v24;
    v26 = 0x2020000000;
    v27 = 0;
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = sub_1B9DC43B8;
    v22[3] = &unk_1E7ED8548;
    v23 = profileCopy;
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = sub_1B9DC4428;
    v19[3] = &unk_1E7ED8470;
    v21 = &v24;
    v20 = handlerCopy;
    v12 = objc_msgSend_executeQuery_withBind_withResults_(WeakRetained, v11, @"SELECT cms_blob FROM xml_profiles_cache WHERE uuid = @uuid", v22, v19);
    v13 = *(v25 + 24);
    v14 = v12 == 0;

    _Block_object_dispose(&v24, 8);
    if ((v13 & 1) == 0)
    {
LABEL_4:
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 3221225472;
      v17[2] = sub_1B9DC4448;
      v17[3] = &unk_1E7ED8548;
      v18 = profileCopy;
      v14 = objc_msgSend_executeQuery_withBind_withResults_(WeakRetained, v15, @"SELECT cms_blob FROM profiles WHERE uuid = @uuid", v17, handlerCopy) == 0;
    }
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (MISProfileModel)initWithDB:(id)b
{
  bCopy = b;
  v9.receiver = self;
  v9.super_class = MISProfileModel;
  v5 = [(MISProfileModel *)&v9 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_weak_db, bCopy);
    v7 = v6;
  }

  return v6;
}

@end