@interface RMStoreAssetResolver
+ (BOOL)_clearAsset:(id)a3 personaID:(id)a4 error:(id *)a5;
+ (BOOL)_clearKeychainAsset:(id)a3 personaID:(id)a4 error:(id *)a5;
+ (BOOL)removedAsset:(id)a3 personaID:(id)a4 isKeychain:(BOOL)a5 error:(id *)a6;
+ (id)newStoreAssetResolver:(id)a3;
+ (void)unassignAssets:(id)a3 personaID:(id)a4 completionHandler:(id)a5;
- (BOOL)_storeAssetData:(id)a3 asset:(id)a4 assetKey:(id)a5 enrollmentType:(int64_t)a6 error:(id *)a7;
- (BOOL)_validateAsset:(id)a3 reference:(id)a4 url:(id)a5 statusCode:(id)a6 headers:(id)a7 data:(id)a8 downloadURL:(id)a9 error:(id *)a10;
- (BOOL)isContentTypeMismatchedWithExpectedType:(id)a3 headers:(id)a4 statusCode:(int64_t)a5;
- (BOOL)isHashMismatchedWithExpectedHash:(id)a3 data:(id)a4 downloadURL:(id)a5 dataSize:(unint64_t)a6;
- (BOOL)isPayloadSizeMismatchedWithExpectedSize:(unint64_t)a3 actualSize:(unint64_t)a4 statusCode:(int64_t)a5;
- (RMStoreAssetResolver)initWithManagedKeychainController:(id)a3;
- (__CFString)_getKeychainAccessibilityFromAsset:(id)a3 unresolvedAsset:(id)a4;
- (id)_cachedDataAsset:(id)a3 storeIdentifier:(id)a4 unresolvedAsset:(id)a5 reference:(id)a6 url:(id)a7 useDDM:(BOOL)a8;
- (id)_cachedFileAsset:(id)a3 storeIdentifier:(id)a4 unresolvedAsset:(id)a5 reference:(id)a6 url:(id)a7 useDDM:(BOOL)a8;
- (id)_dataURLForAsset:(id)a3 reference:(id)a4 queryParameters:(id)a5;
- (id)_getAssetAuthenticationFromAsset:(id)a3;
- (id)_getAssetReferenceFromAsset:(id)a3;
- (id)_getContentType:(id)a3;
- (id)_keychainItemForAsset:(id)a3 unresolvedAsset:(id)a4 assetKey:(id)a5 configurationKey:(id)a6 returnUserName:(id *)a7 error:(id *)a8;
- (id)getSHA256StringFromData:(id)a3;
- (id)getSHA256StringFromURL:(id)a3;
- (void)_assignKeychainItemForAsset:(id)a3 unresolvedAsset:(id)a4 assetKey:(id)a5 configurationKey:(id)a6 completionHandler:(id)a7;
- (void)_cacheDataAsset:(id)a3 storeIdentifier:(id)a4 resolvedAsset:(id)a5;
- (void)_cacheFileAsset:(id)a3 storeIdentifier:(id)a4 resolvedAsset:(id)a5;
- (void)_processResponseWithAsset:(id)a3 reference:(id)a4 unresolvedAsset:(id)a5 url:(id)a6 response:(id)a7 error:(id)a8 completionHandler:(id)a9;
- (void)_resolveAsFileAsset:(id)a3 storeIdentifier:(id)a4 unresolvedAsset:(id)a5 reference:(id)a6 url:(id)a7 useDDM:(BOOL)a8 useCache:(BOOL)a9 completionHandler:(id)a10;
- (void)_resolveKeychainAsset:(id)a3 storeIdentifier:(id)a4 unresolvedAsset:(id)a5 isDDM:(BOOL)a6 enrollmentType:(int64_t)a7 completionHandler:(id)a8;
@end

@implementation RMStoreAssetResolver

+ (void)unassignAssets:(id)a3 personaID:(id)a4 completionHandler:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = +[RMManagedKeychainController newManagedKeychainControllerForScope:personaID:](RMManagedKeychainController, "newManagedKeychainControllerForScope:personaID:", +[RMStoreHelper storeScope], v8);

  [v10 lockBeforeModifyingKeychain];
  v11 = [v9 key];

  v13 = 0;
  [v10 unassignAllAssetsFromConfigurationKey:v11 error:&v13];
  v12 = v13;

  [v10 unlockAfterModifyingKeychain];
  v7[2](v7, v12);
}

+ (BOOL)removedAsset:(id)a3 personaID:(id)a4 isKeychain:(BOOL)a5 error:(id *)a6
{
  if (a5)
  {
    return [a1 _clearKeychainAsset:a3 personaID:a4 error:a6];
  }

  else
  {
    return [a1 _clearAsset:a3 personaID:a4 error:a6];
  }
}

+ (BOOL)_clearAsset:(id)a3 personaID:(id)a4 error:(id *)a5
{
  v6 = a3;
  v7 = [v6 declarationIdentifier];
  v8 = [v6 declarationServerToken];
  v9 = [v6 storeIdentifier];

  LOBYTE(a5) = [RMStoreAssetCache removeCachedAsset:v7 serverToken:v8 storeIdentifier:v9 error:a5];
  return a5;
}

+ (BOOL)_clearKeychainAsset:(id)a3 personaID:(id)a4 error:(id *)a5
{
  v7 = a4;
  v8 = a3;
  v9 = +[RMManagedKeychainController newManagedKeychainControllerForScope:personaID:](RMManagedKeychainController, "newManagedKeychainControllerForScope:personaID:", +[RMStoreHelper storeScope], v7);

  [v9 lockBeforeModifyingKeychain];
  v10 = [v8 key];

  LOBYTE(a5) = [v9 removedKeychainItemsForAssetKey:v10 error:a5];
  [v9 unlockAfterModifyingKeychain];

  return a5;
}

+ (id)newStoreAssetResolver:(id)a3
{
  v3 = a3;
  v4 = [[RMStoreAssetResolver alloc] initWithManagedKeychainController:v3];

  return v4;
}

- (RMStoreAssetResolver)initWithManagedKeychainController:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = RMStoreAssetResolver;
  v6 = [(RMStoreAssetResolver *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_keychainController, a3);
  }

  return v7;
}

- (void)_resolveAsFileAsset:(id)a3 storeIdentifier:(id)a4 unresolvedAsset:(id)a5 reference:(id)a6 url:(id)a7 useDDM:(BOOL)a8 useCache:(BOOL)a9 completionHandler:(id)a10
{
  v39 = a8;
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a10;
  v41 = [v16 downloadURL];
  v20 = [v16 extensionToken];
  v40 = v20;
  if (!v20)
  {
    v37 = v19;
    v22 = -1;
    v25 = v14;
LABEL_7:
    if (a9 && ([(RMStoreAssetResolver *)self _cachedFileAsset:v25 storeIdentifier:v15 unresolvedAsset:v16 reference:v17 url:v18 useDDM:v39], (v26 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v27 = v26;
      v19 = v37;
      if (v22 != -1)
      {
        [RMSandbox releaseToken:v22];
        v28 = +[RMLog storeAssetResolver];
        if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
        {
          sub_10007265C();
        }
      }

      (v37)[2](v37, v27, 0);
      v29 = v41;
    }

    else
    {
      v36 = v18;
      v27 = objc_opt_new();
      v30 = [v17 payloadContentType];
      if (v30)
      {
        v52 = @"Accept";
        v31 = [v17 payloadContentType];
        v53 = v31;
        [NSDictionary dictionaryWithObjects:&v53 forKeys:&v52 count:1];
        v33 = v32 = v17;

        v25 = v14;
      }

      else
      {
        v32 = v17;
        v33 = &__NSDictionary0__struct;
      }

      v35 = v25;

      v42[0] = _NSConcreteStackBlock;
      v42[1] = 3221225472;
      v42[2] = sub_10006F458;
      v42[3] = &unk_1000D2C50;
      v42[4] = self;
      v43 = v25;
      v44 = v32;
      v45 = v16;
      v34 = v32;
      v18 = v36;
      v46 = v36;
      v51 = a9;
      v47 = v15;
      v50 = v22;
      v29 = v41;
      v48 = v41;
      v19 = v37;
      v49 = v37;
      [v27 downloadResponseDataAtURL:v46 downloadURL:v48 extensionToken:0 useDDM:v39 additionalHeaders:v33 completionHandler:v42];

      v17 = v34;
      v25 = v35;
    }

    goto LABEL_21;
  }

  v21 = v17;
  v22 = [RMSandbox consumeToken:v20];
  v23 = +[RMLog storeAssetResolver];
  v24 = v23;
  if (v22 != -1)
  {
    v25 = v14;
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
    {
      sub_100072554();
    }

    v37 = v19;

    v17 = v21;
    goto LABEL_7;
  }

  v25 = v14;
  v29 = v41;
  if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
  {
    sub_1000725C4();
  }

  v27 = +[RMErrorUtilities createInternalError];
  (*(v19 + 2))(v19, 0, v27);
  v17 = v21;
LABEL_21:
}

- (id)_cachedDataAsset:(id)a3 storeIdentifier:(id)a4 unresolvedAsset:(id)a5 reference:(id)a6 url:(id)a7 useDDM:(BOOL)a8
{
  v10 = a5;
  v11 = a4;
  v12 = a3;
  v13 = [v12 declarationIdentifier];
  v14 = [v12 declarationServerToken];

  v22 = 0;
  v15 = [RMStoreAssetCache cachedAssetDataWithIdentifier:v13 serverToken:v14 storeIdentifier:v11 error:&v22];

  v16 = v22;
  if (v16)
  {
    v17 = +[RMLog storeAssetResolver];
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      sub_100072744();
    }

    goto LABEL_5;
  }

  if (!v15)
  {
LABEL_5:
    v18 = 0;
    goto LABEL_10;
  }

  v19 = +[RMLog storeAssetResolver];
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    v20 = [v10 assetIdentifier];
    *buf = 138543362;
    v24 = v20;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Using cached asset data for %{public}@", buf, 0xCu);
  }

  v18 = [[RMStoreResolvedAsset alloc] initWithData:v15];
LABEL_10:

  return v18;
}

- (id)_cachedFileAsset:(id)a3 storeIdentifier:(id)a4 unresolvedAsset:(id)a5 reference:(id)a6 url:(id)a7 useDDM:(BOOL)a8
{
  v10 = a5;
  v11 = a4;
  v12 = a3;
  v13 = [v12 declarationIdentifier];
  v14 = [v12 declarationServerToken];

  v27 = 0;
  v15 = [RMStoreAssetCache cachedAssetFileWithIdentifier:v13 serverToken:v14 storeIdentifier:v11 error:&v27];

  v16 = v27;
  if (v16)
  {
    v17 = +[RMLog storeAssetResolver];
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      sub_1000727D8();
    }

    goto LABEL_4;
  }

  if (v15)
  {
    v20 = +[NSFileManager defaultManager];
    v21 = [v10 downloadURL];
    v26 = 0;
    v22 = [v20 copyItemAtURL:v15 toURL:v21 error:&v26];
    v16 = v26;

    v23 = +[RMLog storeAssetResolver];
    v17 = v23;
    if (v22)
    {
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        v24 = [v10 assetIdentifier];
        *buf = 138543362;
        v29 = v24;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Using cached asset file for %{public}@", buf, 0xCu);
      }

      v25 = [RMStoreResolvedAsset alloc];
      v17 = [v10 downloadURL];
      v18 = [v25 initWithFile:v17];
      goto LABEL_5;
    }

    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      sub_10007286C();
    }

LABEL_4:
    v18 = 0;
LABEL_5:

    goto LABEL_6;
  }

  v18 = 0;
LABEL_6:

  return v18;
}

- (void)_cacheDataAsset:(id)a3 storeIdentifier:(id)a4 resolvedAsset:(id)a5
{
  v7 = a3;
  v8 = a5;
  v9 = a4;
  v10 = [v7 declarationIdentifier];
  v11 = [v7 declarationServerToken];
  v12 = [v8 assetData];

  v18 = 0;
  v13 = [RMStoreAssetCache cacheAssetWithIdentifier:v10 serverToken:v11 storeIdentifier:v9 data:v12 error:&v18];

  v14 = v18;
  v15 = +[RMLog storeAssetResolver];
  v16 = v15;
  if (v13)
  {
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v17 = [v7 declarationIdentifier];
      *buf = 138543362;
      v20 = v17;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Cached asset data for %{public}@", buf, 0xCu);
    }
  }

  else if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    sub_100072900();
  }
}

- (void)_cacheFileAsset:(id)a3 storeIdentifier:(id)a4 resolvedAsset:(id)a5
{
  v7 = a3;
  v8 = a5;
  v9 = a4;
  v10 = [v7 declarationIdentifier];
  v11 = [v7 declarationServerToken];
  v12 = [v8 assetFile];

  v18 = 0;
  v13 = [RMStoreAssetCache cacheAssetWithIdentifier:v10 serverToken:v11 storeIdentifier:v9 fileURL:v12 error:&v18];

  v14 = v18;
  v15 = +[RMLog storeAssetResolver];
  v16 = v15;
  if (v13)
  {
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v17 = [v7 declarationIdentifier];
      *buf = 138543362;
      v20 = v17;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Cached asset file for %{public}@", buf, 0xCu);
    }
  }

  else if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    sub_100072994();
  }
}

- (void)_resolveKeychainAsset:(id)a3 storeIdentifier:(id)a4 unresolvedAsset:(id)a5 isDDM:(BOOL)a6 enrollmentType:(int64_t)a7 completionHandler:(id)a8
{
  v24 = a6;
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a8;
  v16 = [v14 assetKey];
  v17 = [v14 configurationKey];
  v18 = [(RMStoreAssetResolver *)self keychainController];
  v19 = [v16 key];
  v20 = [v18 hasDataForAssetKey:v19];

  v21 = +[RMLog storeAssetResolver];
  v22 = os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG);
  if (v20)
  {
    if (v22)
    {
      sub_100072A64();
    }

    [(RMStoreAssetResolver *)self _assignKeychainItemForAsset:v12 unresolvedAsset:v14 assetKey:v16 configurationKey:v17 completionHandler:v15];
  }

  else
  {
    if (v22)
    {
      sub_100072A28();
    }

    v25[0] = _NSConcreteStackBlock;
    v25[1] = 3221225472;
    v25[2] = sub_10006FFFC;
    v25[3] = &unk_1000D2C78;
    v30 = v15;
    v25[4] = self;
    v26 = v12;
    v27 = v16;
    v31 = a7;
    v28 = v14;
    v29 = v17;
    [(RMStoreAssetResolver *)self _resolveAsset:v26 storeIdentifier:v13 unresolvedAsset:v28 isDDM:v24 useCache:0 completionHandler:v25];
  }
}

- (BOOL)_storeAssetData:(id)a3 asset:(id)a4 assetKey:(id)a5 enrollmentType:(int64_t)a6 error:(id *)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = [v13 declarationType];
  v16 = +[RMModelAssetCredentialUserNameAndPasswordDeclaration registeredIdentifier];
  v17 = [v15 isEqualToString:v16];

  if (v17)
  {
    v133[0] = 0;
    v18 = [RMModelUserNameAndPasswordCredentialDeclaration loadData:v12 serializationType:1 error:v133];
    v19 = v133[0];
    if (v19)
    {
      v20 = +[RMLog storeAssetResolver];
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        sub_100072D58();
      }

      if (a7)
      {
        v21 = @"Could not deserialize password credential";
        goto LABEL_7;
      }

      goto LABEL_29;
    }

    v23 = [(RMStoreAssetResolver *)self keychainController];
    v38 = [v18 payloadPassword];
    [v18 payloadUserName];
    v39 = a7;
    v40 = v12;
    v42 = v41 = v14;
    v43 = [v41 key];
    v25 = [v23 storePassword:v38 userName:v42 assetKey:v43 error:v39];

    v14 = v41;
    v12 = v40;

    goto LABEL_46;
  }

  v26 = [v13 declarationType];
  v27 = +[RMModelAssetCredentialCertificateDeclaration registeredIdentifier];
  v28 = [v26 isEqualToString:v27];

  if (!v28)
  {
    v34 = [v13 declarationType];
    v35 = +[RMModelAssetCredentialIdentityDeclaration registeredIdentifier];
    v36 = [v34 isEqualToString:v35];

    if (v36)
    {
      v132 = 0;
      v18 = [RMModelIdentityCredentialDeclaration loadData:v12 serializationType:1 error:&v132];
      v19 = v132;
      if (v19)
      {
        v37 = +[RMLog storeAssetResolver];
        if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
        {
          sub_100072C64();
        }

        if (a7)
        {
          v21 = @"Could not deserialize identity credential";
LABEL_7:
          v22 = [RMErrorUtilities createAssetInvalidError:v21];
          v23 = v22;
          if (v22)
          {
            v24 = v22;
            v25 = 0;
            *a7 = v23;
          }

          else
          {
            v25 = 0;
          }

          goto LABEL_46;
        }

LABEL_29:
        v25 = 0;
LABEL_47:

        goto LABEL_48;
      }

      v23 = [(RMStoreAssetResolver *)self keychainController];
      v63 = [v18 payloadIdentity];
      v64 = [v18 payloadPassword];
      v65 = [v14 key];
      v66 = a7;
      v67 = v12;
      v68 = v14;
      v69 = v65;
      v25 = [v23 storePKCS12Data:v63 password:v64 assetKey:v65 error:v66];

      v14 = v68;
      v12 = v67;

LABEL_46:
      goto LABEL_47;
    }

    v46 = [v13 declarationType];
    v47 = +[RMModelAssetCredentialSCEPDeclaration registeredIdentifier];
    v48 = [v46 isEqualToString:v47];

    if (v48)
    {
      v131 = 0;
      v18 = [RMModelSCEPCredentialDeclaration loadData:v12 serializationType:1 error:&v131];
      v19 = v131;
      if (v19)
      {
        v49 = +[RMLog storeAssetResolver];
        if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
        {
          sub_100072BFC();
        }

        if (!a7)
        {
          goto LABEL_29;
        }

        v50 = [RMErrorUtilities createAssetInvalidError:@"Could not deserialize SCEP credential"];
        v51 = v50;
        if (v50)
        {
          v52 = v50;
          v25 = 0;
          *a7 = v51;
        }

        else
        {
          v25 = 0;
        }
      }

      else
      {
        v74 = [NSMutableDictionary dictionaryWithCapacity:4];
        v75 = [v18 payloadSubjectAltName];
        v76 = [v75 payloadDNSName];
        [v74 setObject:v76 forKeyedSubscript:@"dNSName"];

        v77 = [v18 payloadSubjectAltName];
        v78 = [v77 payloadNtPrincipalName];
        [v74 setObject:v78 forKeyedSubscript:@"ntPrincipalName"];

        v79 = [v18 payloadSubjectAltName];
        v80 = [v79 payloadRfc822Name];
        v118 = v74;
        [v74 setObject:v80 forKeyedSubscript:@"rfc822Name"];

        v81 = [v18 payloadSubjectAltName];
        v82 = [v81 payloadUniformResourceIdentifier];
        [v74 setObject:v82 forKeyedSubscript:@"uniformResourceIdentifier"];

        v128 = [(RMStoreAssetResolver *)self keychainController];
        v126 = [v18 payloadURL];
        v124 = [v18 payloadName];
        v122 = [v18 payloadCAFingerprint];
        v83 = [v18 payloadChallenge];
        v112 = [v18 payloadSubject];
        v116 = [v18 payloadKeysize];
        v108 = [v116 unsignedIntegerValue];
        v114 = [v18 payloadKeyUsage];
        v106 = [v114 unsignedIntegerValue];
        [v18 payloadRetries];
        v110 = v120 = v12;
        v84 = [v110 unsignedIntegerValue];
        [v18 payloadRetryDelay];
        v86 = v85 = v14;
        v87 = [v86 unsignedIntValue];
        v88 = [v85 key];
        LODWORD(v103) = v87;
        v102 = v84;
        v51 = v118;
        v25 = [v128 storeSCEPIdentityURL:v126 caInstanceName:v124 caFingerprint:v122 caCapabilities:0 challenge:v83 subject:v112 keySize:v108 usageFlags:v106 subjectAltName:v118 retries:v102 retryDelay:v103 assetKey:v88 error:a7];

        v14 = v85;
        v12 = v120;
      }

      goto LABEL_47;
    }

    v55 = [v13 declarationType];
    v56 = +[RMModelAssetCredentialACMEDeclaration registeredIdentifier];
    v57 = [v55 isEqualToString:v56];

    if (!v57)
    {
      v71 = +[RMLog storeAssetResolver];
      if (os_log_type_enabled(v71, OS_LOG_TYPE_ERROR))
      {
        sub_100072B08(v13);
      }

      if (!a7)
      {
        v25 = 0;
        goto LABEL_49;
      }

      v72 = [RMErrorUtilities createAssetInvalidError:@"Keychain asset type not recognized during store"];
      v19 = v72;
      if (v72)
      {
        v73 = v72;
        v25 = 0;
        *a7 = v19;
        goto LABEL_48;
      }

      goto LABEL_37;
    }

    v130 = 0;
    v58 = [RMModelACMECredentialDeclaration loadData:v12 serializationType:1 error:&v130];
    v19 = v130;
    if (v19)
    {
      v59 = +[RMLog storeAssetResolver];
      if (os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
      {
        sub_100072B94();
      }

      if (!a7)
      {
        v25 = 0;
LABEL_63:

        goto LABEL_48;
      }

      v60 = [RMErrorUtilities createAssetInvalidError:@"Could not deserialize ACME credential"];
      v61 = v60;
      if (v60)
      {
        v62 = v60;
        v25 = 0;
        *a7 = v61;
      }

      else
      {
        v25 = 0;
      }
    }

    else
    {
      v89 = [NSMutableDictionary dictionaryWithCapacity:4];
      v90 = [v58 payloadSubjectAltName];
      [v90 payloadDNSName];
      v91 = v129 = v14;
      [v89 setObject:v91 forKeyedSubscript:@"dNSName"];

      v92 = [v58 payloadSubjectAltName];
      v93 = [v92 payloadNtPrincipalName];
      [v89 setObject:v93 forKeyedSubscript:@"ntPrincipalName"];

      v94 = [v58 payloadSubjectAltName];
      v95 = [v94 payloadRfc822Name];
      v119 = v89;
      [v89 setObject:v95 forKeyedSubscript:@"rfc822Name"];

      v96 = [v58 payloadSubjectAltName];
      v97 = [v96 payloadUniformResourceIdentifier];
      [v89 setObject:v97 forKeyedSubscript:@"uniformResourceIdentifier"];

      v127 = [(RMStoreAssetResolver *)self keychainController];
      v125 = [v58 payloadDirectoryURL];
      v123 = [v58 payloadClientIdentifier];
      v121 = [v58 payloadKeySize];
      v109 = [v121 unsignedLongValue];
      v115 = [v58 payloadKeyType];
      v117 = [v58 payloadHardwareBound];
      v111 = [v117 BOOLValue];
      v107 = [v58 payloadSubject];
      v113 = [v58 payloadUsageFlags];
      v105 = [v113 unsignedLongValue];
      v104 = [v58 payloadExtendedKeyUsage];
      v98 = [v58 payloadAttest];
      v99 = [v98 BOOLValue];
      LOBYTE(v89) = a6 == 0;
      v100 = [v129 key];
      BYTE1(v101) = v89;
      v61 = v119;
      LOBYTE(v101) = v99;
      v25 = [v127 storeACMEDirectoryURL:v125 clientIdentifier:v123 keySize:v109 keyType:v115 hardwareBound:v111 subject:v107 subjectAltName:v119 usageFlags:v105 extendedKeyUsage:v104 attest:v101 isUserEnrollment:v100 assetKey:a7 error:?];

      v14 = v129;
    }

    goto LABEL_63;
  }

  v19 = [(RMStoreAssetResolver *)self _getAssetReferenceFromAsset:v13];
  v29 = [v19 payloadContentType];
  v30 = [v29 isEqualToString:@"application/pem"];

  if (!v30)
  {
    v44 = [v19 payloadContentType];
    v45 = [v44 isEqualToString:@"application/pkcs1"];

    if (v45)
    {
      v31 = [(RMStoreAssetResolver *)self keychainController];
      v32 = [v14 key];
      v33 = [v31 storePKCS1Data:v12 assetKey:v32 error:a7];
      goto LABEL_21;
    }

    v53 = +[RMLog storeAssetResolver];
    if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
    {
      sub_100072CCC(v19);
    }

    if (a7)
    {
      v54 = [RMErrorUtilities createAssetInvalidError:@"Keychain asset content type not recognized"];
      if (v54)
      {
        v54 = v54;
        *a7 = v54;
      }
    }

LABEL_37:
    v25 = 0;
    goto LABEL_48;
  }

  v31 = [(RMStoreAssetResolver *)self keychainController];
  v32 = [v14 key];
  v33 = [v31 storePEMData:v12 assetKey:v32 error:a7];
LABEL_21:
  v25 = v33;

LABEL_48:
LABEL_49:

  return v25;
}

- (void)_assignKeychainItemForAsset:(id)a3 unresolvedAsset:(id)a4 assetKey:(id)a5 configurationKey:(id)a6 completionHandler:(id)a7
{
  v18 = 0;
  v19 = 0;
  v12 = a7;
  v13 = [(RMStoreAssetResolver *)self _keychainItemForAsset:a3 unresolvedAsset:a4 assetKey:a5 configurationKey:a6 returnUserName:&v19 error:&v18];
  v14 = v19;
  v15 = v18;
  if (v13)
  {
    v16 = [[RMStoreResolvedAsset alloc] initWithKeychainReference:v13 userName:v14];
    v12[2](v12, v16, 0);

    v12 = v16;
  }

  else
  {
    v17 = +[RMLog storeAssetResolver];
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      sub_100072DC0();
    }

    (v12)[2](v12, 0, v15);
  }
}

- (id)_keychainItemForAsset:(id)a3 unresolvedAsset:(id)a4 assetKey:(id)a5 configurationKey:(id)a6 returnUserName:(id *)a7 error:(id *)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = [v14 declarationType];
  v19 = +[RMModelAssetCredentialUserNameAndPasswordDeclaration registeredIdentifier];
  v20 = [v18 isEqualToString:v19];

  if (v20)
  {
    v21 = [(RMStoreAssetResolver *)self keychainController];
    v22 = [v16 key];
    v23 = [v17 key];
    v24 = [(RMStoreAssetResolver *)self _getKeychainAccessibilityFromAsset:v14 unresolvedAsset:v15];
    v25 = [v15 keychainGroup];
    v26 = a7;
    v27 = v14;
    v28 = v15;
    v29 = v17;
    v30 = v16;
    v31 = v25;
    v32 = [v21 assignPasswordForAssetKey:v22 toConfigurationKey:v23 access:v24 group:v25 returnUserName:v26 error:a8];

    v33 = v30;
    v17 = v29;
    v15 = v28;
    v14 = v27;

    goto LABEL_11;
  }

  v34 = v16;
  v35 = [v14 declarationType];
  v36 = +[RMModelAssetCredentialCertificateDeclaration registeredIdentifier];
  v37 = [v35 isEqualToString:v36];

  if (v37)
  {
    v38 = [(RMStoreAssetResolver *)self keychainController];
    v39 = v34;
    v40 = [v34 key];
    v41 = [v17 key];
    v42 = [(RMStoreAssetResolver *)self _getKeychainAccessibilityFromAsset:v14 unresolvedAsset:v15];
    v43 = [v15 keychainGroup];
    v44 = [v38 assignCertificateForAssetKey:v40 toConfigurationKey:v41 access:v42 group:v43 error:a8];
LABEL_10:
    v32 = v44;

    v33 = v39;
    goto LABEL_11;
  }

  v45 = [v14 declarationType];
  v46 = +[RMModelAssetCredentialIdentityDeclaration registeredIdentifier];
  v57 = a8;
  if ([v45 isEqualToString:v46])
  {
    goto LABEL_8;
  }

  v47 = [v14 declarationType];
  v48 = +[RMModelAssetCredentialSCEPDeclaration registeredIdentifier];
  if ([v47 isEqualToString:v48])
  {

LABEL_8:
LABEL_9:
    v38 = [(RMStoreAssetResolver *)self keychainController];
    v39 = v34;
    v40 = [v34 key];
    v41 = [v17 key];
    v49 = [(RMStoreAssetResolver *)self _getKeychainAccessibilityFromAsset:v14 unresolvedAsset:v15];
    v43 = [v15 keychainGroup];
    v44 = [v38 assignIdentityForAssetKey:v40 configurationKey:v41 access:v49 group:v43 error:v57];
    goto LABEL_10;
  }

  v51 = [v14 declarationType];
  +[RMModelAssetCredentialACMEDeclaration registeredIdentifier];
  v52 = v55 = v47;
  v56 = [v51 isEqualToString:v52];

  if (v56)
  {
    goto LABEL_9;
  }

  v53 = +[RMLog storeAssetResolver];
  if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
  {
    sub_100072E28(v14);
  }

  v33 = v34;
  if (v57)
  {
    v54 = [RMErrorUtilities createAssetInvalidError:@"Keychain asset type not recognized during assign"];
    if (v54)
    {
      v54 = v54;
      *v57 = v54;
    }
  }

  v32 = 0;
LABEL_11:

  return v32;
}

- (id)_getAssetReferenceFromAsset:(id)a3
{
  v3 = a3;
  if (objc_opt_respondsToSelector())
  {
    v4 = [v3 payloadReference];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)_getAssetAuthenticationFromAsset:(id)a3
{
  v3 = a3;
  if (objc_opt_respondsToSelector())
  {
    v4 = [v3 payloadAuthentication];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (__CFString)_getKeychainAccessibilityFromAsset:(id)a3 unresolvedAsset:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = RMModelAssetCredentialIdentityDeclaration_Accessible_default;
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), v8 = v7, (objc_opt_isKindOfClass()))
  {
    v8 = [v5 payloadAccessible];
  }

  if ([v8 isEqualToString:v7])
  {
    v9 = [v6 keychainDefaultAccessibility];
    if (v9)
    {
      v10 = [v6 keychainDefaultAccessibility];
    }

    else
    {
      v10 = kSecAttrAccessibleWhenUnlockedThisDeviceOnly;
    }
  }

  else
  {
    if ([v8 isEqualToString:RMModelAssetCredentialIdentityDeclaration_Accessible_afterFirstUnlock])
    {
      v11 = &kSecAttrAccessibleAfterFirstUnlockThisDeviceOnly;
    }

    else
    {
      v11 = &kSecAttrAccessibleWhenUnlockedThisDeviceOnly;
    }

    v10 = *v11;
  }

  return v10;
}

- (id)_dataURLForAsset:(id)a3 reference:(id)a4 queryParameters:(id)a5
{
  v6 = a5;
  v7 = [a4 payloadDataURL];
  v8 = [NSURLComponents componentsWithString:v7];

  if ([v6 count])
  {
    +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v6 count]);
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_1000715A8;
    v14 = v13[3] = &unk_1000D2118;
    v9 = v14;
    [v6 enumerateKeysAndObjectsUsingBlock:v13];
    v10 = [v9 copy];
    [v8 setQueryItems:v10];
  }

  v11 = [v8 URL];

  return v11;
}

- (void)_processResponseWithAsset:(id)a3 reference:(id)a4 unresolvedAsset:(id)a5 url:(id)a6 response:(id)a7 error:(id)a8 completionHandler:(id)a9
{
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v19 = a7;
  v20 = a8;
  if (!v20)
  {
    v25 = HTTPResponseKeyBody;
    v26 = a9;
    v27 = [v19 objectForKeyedSubscript:v25];
    v47 = v17;
    [v17 downloadURL];
    v29 = v28 = v18;
    v30 = [v19 objectForKeyedSubscript:HTTPResponseKeyStatusCode];
    v45 = v19;
    v31 = [v19 objectForKeyedSubscript:HTTPResponseKeyHeaders];
    v48 = v27;
    v49 = 0;
    v44 = v29;
    v46 = v29;
    v18 = v28;
    v32 = [(RMStoreAssetResolver *)self _validateAsset:v15 reference:v16 url:v28 statusCode:v30 headers:v31 data:v27 downloadURL:v44 error:&v49];
    v33 = v49;

    if (!v32)
    {
      v40 = [v33 code];
      v41 = +[RMLog storeAssetResolver];
      v42 = os_log_type_enabled(v41, OS_LOG_TYPE_ERROR);
      if (v40 == 1000)
      {
        v37 = v48;
        v38 = v46;
        v20 = 0;
        if (v42)
        {
          sub_100072FDC();
        }
      }

      else
      {
        v37 = v48;
        v38 = v46;
        v20 = 0;
        if (v42)
        {
          sub_100072F48();
        }
      }

      v23 = v33;
      v24 = 0;
      goto LABEL_20;
    }

    v34 = +[RMLog storeAssetResolver];
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
    {
      sub_100073070(v47);
    }

    v35 = [RMStoreResolvedAsset alloc];
    v36 = v35;
    v37 = v48;
    v38 = v46;
    v20 = 0;
    if (v46)
    {
      v39 = [v35 initWithFile:v46];
    }

    else
    {
      if (!v48)
      {
        v43 = objc_opt_new();
        v24 = [v36 initWithData:v43];

        v37 = 0;
        goto LABEL_19;
      }

      v39 = [v35 initWithData:v48];
    }

    v24 = v39;
LABEL_19:
    v23 = 0;
LABEL_20:

    v17 = v47;
    v19 = v45;
    goto LABEL_21;
  }

  v21 = a9;
  v22 = +[RMLog storeAssetResolver];
  if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
  {
    sub_100072EB4();
  }

  v23 = v20;
  v24 = 0;
LABEL_21:
  (*(a9 + 2))(a9, v24, v23);
}

- (BOOL)_validateAsset:(id)a3 reference:(id)a4 url:(id)a5 statusCode:(id)a6 headers:(id)a7 data:(id)a8 downloadURL:(id)a9 error:(id *)a10
{
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a8;
  v20 = a9;
  v21 = +[RMLog storeAssetResolver];
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
  {
    sub_1000730F4(v16);
  }

  v51 = v16;

  v50 = v20;
  if (v19)
  {
    v22 = [v19 length];
  }

  else
  {
    v23 = +[NSFileManager defaultManager];
    v24 = [v20 path];
    v52 = 0;
    v25 = [v23 attributesOfItemAtPath:v24 error:&v52];
    v26 = v52;

    if (!v25)
    {
      v46 = +[RMLog storeAssetResolver];
      v39 = v50;
      if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
      {
        sub_100073178();
      }

      v34 = v51;
      if (a10)
      {
        v47 = +[RMErrorUtilities createAssetSizeCannotBeVerifiedError];
        if (v47)
        {
          v47 = v47;
          *a10 = v47;
        }
      }

      goto LABEL_29;
    }

    v27 = [v25 objectForKeyedSubscript:NSFileSize];
    v22 = [v27 unsignedIntegerValue];
  }

  v28 = [v15 payloadSize];
  if (v28)
  {
    v29 = v28;
    v30 = [v15 payloadSize];
    v31 = -[RMStoreAssetResolver isPayloadSizeMismatchedWithExpectedSize:actualSize:statusCode:](self, "isPayloadSizeMismatchedWithExpectedSize:actualSize:statusCode:", [v30 unsignedIntegerValue], v22, objc_msgSend(v17, "integerValue"));

    if (v31)
    {
      v32 = v49;
      if (v49)
      {
        v33 = +[RMErrorUtilities createAssetSizeCannotBeVerifiedError];
        v26 = v33;
        v34 = v51;
        goto LABEL_15;
      }

      v45 = 0;
LABEL_33:
      v39 = v50;
      v34 = v51;
      goto LABEL_35;
    }
  }

  v35 = [v15 payloadContentType];
  if (v35)
  {
    v36 = v35;
    v37 = [v15 payloadContentType];
    v38 = -[RMStoreAssetResolver isContentTypeMismatchedWithExpectedType:headers:statusCode:](self, "isContentTypeMismatchedWithExpectedType:headers:statusCode:", v37, v18, [v17 integerValue]);

    if (v38)
    {
      v34 = v51;
      v32 = v49;
      if (!v49)
      {
        v45 = 0;
        v39 = v50;
        goto LABEL_35;
      }

      v33 = +[RMErrorUtilities createAssetContentTypeCannotBeVerifiedError];
      v26 = v33;
LABEL_15:
      v39 = v50;
      if (!v33)
      {
        goto LABEL_29;
      }

      goto LABEL_21;
    }
  }

  v40 = [v15 payloadHashSHA256];
  if (!v40)
  {
    v45 = 1;
    goto LABEL_33;
  }

  v41 = v40;
  v42 = [v15 payloadHashSHA256];
  v39 = v50;
  v43 = [(RMStoreAssetResolver *)self isHashMismatchedWithExpectedHash:v42 data:v19 downloadURL:v50 dataSize:v22];

  if (!v43)
  {
    v45 = 1;
    v34 = v51;
    goto LABEL_35;
  }

  v34 = v51;
  v32 = v49;
  if (v49)
  {
    v26 = +[RMErrorUtilities createAssetHashCannotBeVerifiedError];
    if (!v26)
    {
LABEL_29:

      goto LABEL_30;
    }

LABEL_21:
    v44 = v26;
    *v32 = v26;
    goto LABEL_29;
  }

LABEL_30:
  v45 = 0;
LABEL_35:

  return v45;
}

- (BOOL)isPayloadSizeMismatchedWithExpectedSize:(unint64_t)a3 actualSize:(unint64_t)a4 statusCode:(int64_t)a5
{
  if (!a3 && a5 && a5 != 204)
  {
    v9 = +[RMLog storeAssetResolver];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      sub_10007320C();
    }
  }

  if (a4 != a3)
  {
    v7 = +[RMLog storeAssetResolver];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_10007327C();
    }
  }

  return a4 != a3;
}

- (BOOL)isContentTypeMismatchedWithExpectedType:(id)a3 headers:(id)a4 statusCode:(int64_t)a5
{
  if (!a5)
  {
    return 0;
  }

  v7 = a3;
  v8 = [a4 objectForKeyedSubscript:@"Content-Type"];
  v9 = v8;
  if (v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = @"text/html";
  }

  v11 = [(RMStoreAssetResolver *)self _getContentType:v10];

  v12 = [v11 isEqualToString:v7];
  if ((v12 & 1) == 0)
  {
    v13 = +[RMLog storeAssetResolver];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_1000732F0();
    }
  }

  v14 = v12 ^ 1;

  return v14;
}

- (BOOL)isHashMismatchedWithExpectedHash:(id)a3 data:(id)a4 downloadURL:(id)a5 dataSize:(unint64_t)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if (a6)
  {
    if (v11)
    {
      [(RMStoreAssetResolver *)self getSHA256StringFromData:v11];
    }

    else
    {
      [(RMStoreAssetResolver *)self getSHA256StringFromURL:v12];
    }
    v14 = ;
    v15 = [v10 caseInsensitiveCompare:v14];
    v13 = v15 != 0;
    if (v15)
    {
      v16 = +[RMLog storeAssetResolver];
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        sub_100073358();
      }
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (id)_getContentType:(id)a3
{
  v3 = a3;
  v4 = [v3 rangeOfString:@";"];
  if (v5)
  {
    v6 = [v3 substringToIndex:v4];
  }

  else
  {
    v6 = v3;
  }

  v7 = v6;

  return v7;
}

- (id)getSHA256StringFromData:(id)a3
{
  v3 = a3;
  v4 = [v3 length];
  v5 = v4;
  if (v4 >= 0x10000)
  {
    v6 = 0x10000;
  }

  else
  {
    v6 = v4;
  }

  v7 = malloc_type_malloc(v6, 0x100004077774924uLL);
  memset(&c, 0, sizeof(c));
  CC_SHA256_Init(&c);
  if (v5)
  {
    for (i = 0; i < v5; i += v9)
    {
      if (v6 >= &v5[-i])
      {
        v9 = &v5[-i];
      }

      else
      {
        v9 = v6;
      }

      [v3 getBytes:v7 range:{i, v9}];
      CC_SHA256_Update(&c, v7, v9);
    }
  }

  CC_SHA256_Final(md, &c);
  free(v7);
  v10 = [NSMutableString stringWithCapacity:64];
  for (j = 0; j != 32; ++j)
  {
    [v10 appendFormat:@"%02X", md[j]];
  }

  v12 = [v10 copy];

  return v12;
}

- (id)getSHA256StringFromURL:(id)a3
{
  v3 = a3;
  memset(&c, 0, sizeof(c));
  CC_SHA256_Init(&c);
  v11 = 0;
  v4 = [NSFileHandle fileHandleForReadingFromURL:v3 error:&v11];
  v5 = v11;
  if (v4)
  {
    while (1)
    {
      v6 = [v4 readDataOfLength:0x10000];
      if (![v6 length])
      {
        break;
      }

      CC_SHA256_Update(&c, [v6 bytes], objc_msgSend(v6, "length"));
    }

    CC_SHA256_Final(md, &c);
    v7 = [NSMutableString stringWithCapacity:64];
    for (i = 0; i != 32; ++i)
    {
      [v7 appendFormat:@"%02X", md[i]];
    }

    v9 = [v7 copy];
  }

  else
  {
    v7 = +[RMLog storeAssetResolver];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_1000733CC();
    }

    v9 = &stru_1000D3680;
  }

  return v9;
}

@end