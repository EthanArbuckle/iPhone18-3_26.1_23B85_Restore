@interface RMStoreAssetResolver
+ (BOOL)_clearAsset:(id)asset personaID:(id)d error:(id *)error;
+ (BOOL)_clearKeychainAsset:(id)asset personaID:(id)d error:(id *)error;
+ (BOOL)removedAsset:(id)asset personaID:(id)d isKeychain:(BOOL)keychain error:(id *)error;
+ (id)newStoreAssetResolver:(id)resolver;
+ (void)unassignAssets:(id)assets personaID:(id)d completionHandler:(id)handler;
- (BOOL)_storeAssetData:(id)data asset:(id)asset assetKey:(id)key enrollmentType:(int64_t)type error:(id *)error;
- (BOOL)_validateAsset:(id)asset reference:(id)reference url:(id)url statusCode:(id)code headers:(id)headers data:(id)data downloadURL:(id)l error:(id *)self0;
- (BOOL)isContentTypeMismatchedWithExpectedType:(id)type headers:(id)headers statusCode:(int64_t)code;
- (BOOL)isHashMismatchedWithExpectedHash:(id)hash data:(id)data downloadURL:(id)l dataSize:(unint64_t)size;
- (BOOL)isPayloadSizeMismatchedWithExpectedSize:(unint64_t)size actualSize:(unint64_t)actualSize statusCode:(int64_t)code;
- (RMStoreAssetResolver)initWithManagedKeychainController:(id)controller;
- (__CFString)_getKeychainAccessibilityFromAsset:(id)asset unresolvedAsset:(id)unresolvedAsset;
- (id)_cachedDataAsset:(id)asset storeIdentifier:(id)identifier unresolvedAsset:(id)unresolvedAsset reference:(id)reference url:(id)url useDDM:(BOOL)m;
- (id)_cachedFileAsset:(id)asset storeIdentifier:(id)identifier unresolvedAsset:(id)unresolvedAsset reference:(id)reference url:(id)url useDDM:(BOOL)m;
- (id)_dataURLForAsset:(id)asset reference:(id)reference queryParameters:(id)parameters;
- (id)_getAssetAuthenticationFromAsset:(id)asset;
- (id)_getAssetReferenceFromAsset:(id)asset;
- (id)_getContentType:(id)type;
- (id)_keychainItemForAsset:(id)asset unresolvedAsset:(id)unresolvedAsset assetKey:(id)key configurationKey:(id)configurationKey returnUserName:(id *)name error:(id *)error;
- (id)getSHA256StringFromData:(id)data;
- (id)getSHA256StringFromURL:(id)l;
- (void)_assignKeychainItemForAsset:(id)asset unresolvedAsset:(id)unresolvedAsset assetKey:(id)key configurationKey:(id)configurationKey completionHandler:(id)handler;
- (void)_cacheDataAsset:(id)asset storeIdentifier:(id)identifier resolvedAsset:(id)resolvedAsset;
- (void)_cacheFileAsset:(id)asset storeIdentifier:(id)identifier resolvedAsset:(id)resolvedAsset;
- (void)_processResponseWithAsset:(id)asset reference:(id)reference unresolvedAsset:(id)unresolvedAsset url:(id)url response:(id)response error:(id)error completionHandler:(id)handler;
- (void)_resolveAsFileAsset:(id)asset storeIdentifier:(id)identifier unresolvedAsset:(id)unresolvedAsset reference:(id)reference url:(id)url useDDM:(BOOL)m useCache:(BOOL)cache completionHandler:(id)self0;
- (void)_resolveKeychainAsset:(id)asset storeIdentifier:(id)identifier unresolvedAsset:(id)unresolvedAsset isDDM:(BOOL)m enrollmentType:(int64_t)type completionHandler:(id)handler;
@end

@implementation RMStoreAssetResolver

+ (void)unassignAssets:(id)assets personaID:(id)d completionHandler:(id)handler
{
  handlerCopy = handler;
  dCopy = d;
  assetsCopy = assets;
  v10 = +[RMManagedKeychainController newManagedKeychainControllerForScope:personaID:](RMManagedKeychainController, "newManagedKeychainControllerForScope:personaID:", +[RMStoreHelper storeScope], dCopy);

  [v10 lockBeforeModifyingKeychain];
  v11 = [assetsCopy key];

  v13 = 0;
  [v10 unassignAllAssetsFromConfigurationKey:v11 error:&v13];
  v12 = v13;

  [v10 unlockAfterModifyingKeychain];
  handlerCopy[2](handlerCopy, v12);
}

+ (BOOL)removedAsset:(id)asset personaID:(id)d isKeychain:(BOOL)keychain error:(id *)error
{
  if (keychain)
  {
    return [self _clearKeychainAsset:asset personaID:d error:error];
  }

  else
  {
    return [self _clearAsset:asset personaID:d error:error];
  }
}

+ (BOOL)_clearAsset:(id)asset personaID:(id)d error:(id *)error
{
  assetCopy = asset;
  declarationIdentifier = [assetCopy declarationIdentifier];
  declarationServerToken = [assetCopy declarationServerToken];
  storeIdentifier = [assetCopy storeIdentifier];

  LOBYTE(error) = [RMStoreAssetCache removeCachedAsset:declarationIdentifier serverToken:declarationServerToken storeIdentifier:storeIdentifier error:error];
  return error;
}

+ (BOOL)_clearKeychainAsset:(id)asset personaID:(id)d error:(id *)error
{
  dCopy = d;
  assetCopy = asset;
  v9 = +[RMManagedKeychainController newManagedKeychainControllerForScope:personaID:](RMManagedKeychainController, "newManagedKeychainControllerForScope:personaID:", +[RMStoreHelper storeScope], dCopy);

  [v9 lockBeforeModifyingKeychain];
  v10 = [assetCopy key];

  LOBYTE(error) = [v9 removedKeychainItemsForAssetKey:v10 error:error];
  [v9 unlockAfterModifyingKeychain];

  return error;
}

+ (id)newStoreAssetResolver:(id)resolver
{
  resolverCopy = resolver;
  v4 = [[RMStoreAssetResolver alloc] initWithManagedKeychainController:resolverCopy];

  return v4;
}

- (RMStoreAssetResolver)initWithManagedKeychainController:(id)controller
{
  controllerCopy = controller;
  v9.receiver = self;
  v9.super_class = RMStoreAssetResolver;
  v6 = [(RMStoreAssetResolver *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_keychainController, controller);
  }

  return v7;
}

- (void)_resolveAsFileAsset:(id)asset storeIdentifier:(id)identifier unresolvedAsset:(id)unresolvedAsset reference:(id)reference url:(id)url useDDM:(BOOL)m useCache:(BOOL)cache completionHandler:(id)self0
{
  mCopy = m;
  assetCopy = asset;
  identifierCopy = identifier;
  unresolvedAssetCopy = unresolvedAsset;
  referenceCopy = reference;
  urlCopy = url;
  handlerCopy = handler;
  downloadURL = [unresolvedAssetCopy downloadURL];
  extensionToken = [unresolvedAssetCopy extensionToken];
  v40 = extensionToken;
  if (!extensionToken)
  {
    v37 = handlerCopy;
    v22 = -1;
    v25 = assetCopy;
LABEL_7:
    if (cache && ([(RMStoreAssetResolver *)self _cachedFileAsset:v25 storeIdentifier:identifierCopy unresolvedAsset:unresolvedAssetCopy reference:referenceCopy url:urlCopy useDDM:mCopy], (v26 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v27 = v26;
      handlerCopy = v37;
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
      v29 = downloadURL;
    }

    else
    {
      v36 = urlCopy;
      v27 = objc_opt_new();
      payloadContentType = [referenceCopy payloadContentType];
      if (payloadContentType)
      {
        v52 = @"Accept";
        payloadContentType2 = [referenceCopy payloadContentType];
        v53 = payloadContentType2;
        [NSDictionary dictionaryWithObjects:&v53 forKeys:&v52 count:1];
        v33 = v32 = referenceCopy;

        v25 = assetCopy;
      }

      else
      {
        v32 = referenceCopy;
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
      v45 = unresolvedAssetCopy;
      v34 = v32;
      urlCopy = v36;
      v46 = v36;
      cacheCopy = cache;
      v47 = identifierCopy;
      v50 = v22;
      v29 = downloadURL;
      v48 = downloadURL;
      handlerCopy = v37;
      v49 = v37;
      [v27 downloadResponseDataAtURL:v46 downloadURL:v48 extensionToken:0 useDDM:mCopy additionalHeaders:v33 completionHandler:v42];

      referenceCopy = v34;
      v25 = v35;
    }

    goto LABEL_21;
  }

  v21 = referenceCopy;
  v22 = [RMSandbox consumeToken:extensionToken];
  v23 = +[RMLog storeAssetResolver];
  v24 = v23;
  if (v22 != -1)
  {
    v25 = assetCopy;
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
    {
      sub_100072554();
    }

    v37 = handlerCopy;

    referenceCopy = v21;
    goto LABEL_7;
  }

  v25 = assetCopy;
  v29 = downloadURL;
  if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
  {
    sub_1000725C4();
  }

  v27 = +[RMErrorUtilities createInternalError];
  (*(handlerCopy + 2))(handlerCopy, 0, v27);
  referenceCopy = v21;
LABEL_21:
}

- (id)_cachedDataAsset:(id)asset storeIdentifier:(id)identifier unresolvedAsset:(id)unresolvedAsset reference:(id)reference url:(id)url useDDM:(BOOL)m
{
  unresolvedAssetCopy = unresolvedAsset;
  identifierCopy = identifier;
  assetCopy = asset;
  declarationIdentifier = [assetCopy declarationIdentifier];
  declarationServerToken = [assetCopy declarationServerToken];

  v22 = 0;
  v15 = [RMStoreAssetCache cachedAssetDataWithIdentifier:declarationIdentifier serverToken:declarationServerToken storeIdentifier:identifierCopy error:&v22];

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
    assetIdentifier = [unresolvedAssetCopy assetIdentifier];
    *buf = 138543362;
    v24 = assetIdentifier;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Using cached asset data for %{public}@", buf, 0xCu);
  }

  v18 = [[RMStoreResolvedAsset alloc] initWithData:v15];
LABEL_10:

  return v18;
}

- (id)_cachedFileAsset:(id)asset storeIdentifier:(id)identifier unresolvedAsset:(id)unresolvedAsset reference:(id)reference url:(id)url useDDM:(BOOL)m
{
  unresolvedAssetCopy = unresolvedAsset;
  identifierCopy = identifier;
  assetCopy = asset;
  declarationIdentifier = [assetCopy declarationIdentifier];
  declarationServerToken = [assetCopy declarationServerToken];

  v27 = 0;
  v15 = [RMStoreAssetCache cachedAssetFileWithIdentifier:declarationIdentifier serverToken:declarationServerToken storeIdentifier:identifierCopy error:&v27];

  v16 = v27;
  if (v16)
  {
    downloadURL2 = +[RMLog storeAssetResolver];
    if (os_log_type_enabled(downloadURL2, OS_LOG_TYPE_ERROR))
    {
      sub_1000727D8();
    }

    goto LABEL_4;
  }

  if (v15)
  {
    v20 = +[NSFileManager defaultManager];
    downloadURL = [unresolvedAssetCopy downloadURL];
    v26 = 0;
    v22 = [v20 copyItemAtURL:v15 toURL:downloadURL error:&v26];
    v16 = v26;

    v23 = +[RMLog storeAssetResolver];
    downloadURL2 = v23;
    if (v22)
    {
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        assetIdentifier = [unresolvedAssetCopy assetIdentifier];
        *buf = 138543362;
        v29 = assetIdentifier;
        _os_log_impl(&_mh_execute_header, downloadURL2, OS_LOG_TYPE_DEFAULT, "Using cached asset file for %{public}@", buf, 0xCu);
      }

      v25 = [RMStoreResolvedAsset alloc];
      downloadURL2 = [unresolvedAssetCopy downloadURL];
      v18 = [v25 initWithFile:downloadURL2];
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

- (void)_cacheDataAsset:(id)asset storeIdentifier:(id)identifier resolvedAsset:(id)resolvedAsset
{
  assetCopy = asset;
  resolvedAssetCopy = resolvedAsset;
  identifierCopy = identifier;
  declarationIdentifier = [assetCopy declarationIdentifier];
  declarationServerToken = [assetCopy declarationServerToken];
  assetData = [resolvedAssetCopy assetData];

  v18 = 0;
  v13 = [RMStoreAssetCache cacheAssetWithIdentifier:declarationIdentifier serverToken:declarationServerToken storeIdentifier:identifierCopy data:assetData error:&v18];

  v14 = v18;
  v15 = +[RMLog storeAssetResolver];
  v16 = v15;
  if (v13)
  {
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      declarationIdentifier2 = [assetCopy declarationIdentifier];
      *buf = 138543362;
      v20 = declarationIdentifier2;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Cached asset data for %{public}@", buf, 0xCu);
    }
  }

  else if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    sub_100072900();
  }
}

- (void)_cacheFileAsset:(id)asset storeIdentifier:(id)identifier resolvedAsset:(id)resolvedAsset
{
  assetCopy = asset;
  resolvedAssetCopy = resolvedAsset;
  identifierCopy = identifier;
  declarationIdentifier = [assetCopy declarationIdentifier];
  declarationServerToken = [assetCopy declarationServerToken];
  assetFile = [resolvedAssetCopy assetFile];

  v18 = 0;
  v13 = [RMStoreAssetCache cacheAssetWithIdentifier:declarationIdentifier serverToken:declarationServerToken storeIdentifier:identifierCopy fileURL:assetFile error:&v18];

  v14 = v18;
  v15 = +[RMLog storeAssetResolver];
  v16 = v15;
  if (v13)
  {
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      declarationIdentifier2 = [assetCopy declarationIdentifier];
      *buf = 138543362;
      v20 = declarationIdentifier2;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Cached asset file for %{public}@", buf, 0xCu);
    }
  }

  else if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    sub_100072994();
  }
}

- (void)_resolveKeychainAsset:(id)asset storeIdentifier:(id)identifier unresolvedAsset:(id)unresolvedAsset isDDM:(BOOL)m enrollmentType:(int64_t)type completionHandler:(id)handler
{
  mCopy = m;
  assetCopy = asset;
  identifierCopy = identifier;
  unresolvedAssetCopy = unresolvedAsset;
  handlerCopy = handler;
  assetKey = [unresolvedAssetCopy assetKey];
  configurationKey = [unresolvedAssetCopy configurationKey];
  keychainController = [(RMStoreAssetResolver *)self keychainController];
  v19 = [assetKey key];
  v20 = [keychainController hasDataForAssetKey:v19];

  v21 = +[RMLog storeAssetResolver];
  v22 = os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG);
  if (v20)
  {
    if (v22)
    {
      sub_100072A64();
    }

    [(RMStoreAssetResolver *)self _assignKeychainItemForAsset:assetCopy unresolvedAsset:unresolvedAssetCopy assetKey:assetKey configurationKey:configurationKey completionHandler:handlerCopy];
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
    v30 = handlerCopy;
    v25[4] = self;
    v26 = assetCopy;
    v27 = assetKey;
    typeCopy = type;
    v28 = unresolvedAssetCopy;
    v29 = configurationKey;
    [(RMStoreAssetResolver *)self _resolveAsset:v26 storeIdentifier:identifierCopy unresolvedAsset:v28 isDDM:mCopy useCache:0 completionHandler:v25];
  }
}

- (BOOL)_storeAssetData:(id)data asset:(id)asset assetKey:(id)key enrollmentType:(int64_t)type error:(id *)error
{
  dataCopy = data;
  assetCopy = asset;
  keyCopy = key;
  declarationType = [assetCopy declarationType];
  v16 = +[RMModelAssetCredentialUserNameAndPasswordDeclaration registeredIdentifier];
  v17 = [declarationType isEqualToString:v16];

  if (v17)
  {
    v133[0] = 0;
    v18 = [RMModelUserNameAndPasswordCredentialDeclaration loadData:dataCopy serializationType:1 error:v133];
    v19 = v133[0];
    if (v19)
    {
      v20 = +[RMLog storeAssetResolver];
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        sub_100072D58();
      }

      if (error)
      {
        v21 = @"Could not deserialize password credential";
        goto LABEL_7;
      }

      goto LABEL_29;
    }

    keychainController = [(RMStoreAssetResolver *)self keychainController];
    payloadPassword = [v18 payloadPassword];
    [v18 payloadUserName];
    errorCopy = error;
    v40 = dataCopy;
    v42 = v41 = keyCopy;
    v43 = [v41 key];
    v25 = [keychainController storePassword:payloadPassword userName:v42 assetKey:v43 error:errorCopy];

    keyCopy = v41;
    dataCopy = v40;

    goto LABEL_46;
  }

  declarationType2 = [assetCopy declarationType];
  v27 = +[RMModelAssetCredentialCertificateDeclaration registeredIdentifier];
  v28 = [declarationType2 isEqualToString:v27];

  if (!v28)
  {
    declarationType3 = [assetCopy declarationType];
    v35 = +[RMModelAssetCredentialIdentityDeclaration registeredIdentifier];
    v36 = [declarationType3 isEqualToString:v35];

    if (v36)
    {
      v132 = 0;
      v18 = [RMModelIdentityCredentialDeclaration loadData:dataCopy serializationType:1 error:&v132];
      v19 = v132;
      if (v19)
      {
        v37 = +[RMLog storeAssetResolver];
        if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
        {
          sub_100072C64();
        }

        if (error)
        {
          v21 = @"Could not deserialize identity credential";
LABEL_7:
          v22 = [RMErrorUtilities createAssetInvalidError:v21];
          keychainController = v22;
          if (v22)
          {
            v24 = v22;
            v25 = 0;
            *error = keychainController;
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

      keychainController = [(RMStoreAssetResolver *)self keychainController];
      payloadIdentity = [v18 payloadIdentity];
      payloadPassword2 = [v18 payloadPassword];
      v65 = [keyCopy key];
      errorCopy2 = error;
      v67 = dataCopy;
      v68 = keyCopy;
      v69 = v65;
      v25 = [keychainController storePKCS12Data:payloadIdentity password:payloadPassword2 assetKey:v65 error:errorCopy2];

      keyCopy = v68;
      dataCopy = v67;

LABEL_46:
      goto LABEL_47;
    }

    declarationType4 = [assetCopy declarationType];
    v47 = +[RMModelAssetCredentialSCEPDeclaration registeredIdentifier];
    v48 = [declarationType4 isEqualToString:v47];

    if (v48)
    {
      v131 = 0;
      v18 = [RMModelSCEPCredentialDeclaration loadData:dataCopy serializationType:1 error:&v131];
      v19 = v131;
      if (v19)
      {
        v49 = +[RMLog storeAssetResolver];
        if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
        {
          sub_100072BFC();
        }

        if (!error)
        {
          goto LABEL_29;
        }

        v50 = [RMErrorUtilities createAssetInvalidError:@"Could not deserialize SCEP credential"];
        v51 = v50;
        if (v50)
        {
          v52 = v50;
          v25 = 0;
          *error = v51;
        }

        else
        {
          v25 = 0;
        }
      }

      else
      {
        v74 = [NSMutableDictionary dictionaryWithCapacity:4];
        payloadSubjectAltName = [v18 payloadSubjectAltName];
        payloadDNSName = [payloadSubjectAltName payloadDNSName];
        [v74 setObject:payloadDNSName forKeyedSubscript:@"dNSName"];

        payloadSubjectAltName2 = [v18 payloadSubjectAltName];
        payloadNtPrincipalName = [payloadSubjectAltName2 payloadNtPrincipalName];
        [v74 setObject:payloadNtPrincipalName forKeyedSubscript:@"ntPrincipalName"];

        payloadSubjectAltName3 = [v18 payloadSubjectAltName];
        payloadRfc822Name = [payloadSubjectAltName3 payloadRfc822Name];
        v118 = v74;
        [v74 setObject:payloadRfc822Name forKeyedSubscript:@"rfc822Name"];

        payloadSubjectAltName4 = [v18 payloadSubjectAltName];
        payloadUniformResourceIdentifier = [payloadSubjectAltName4 payloadUniformResourceIdentifier];
        [v74 setObject:payloadUniformResourceIdentifier forKeyedSubscript:@"uniformResourceIdentifier"];

        keychainController2 = [(RMStoreAssetResolver *)self keychainController];
        payloadURL = [v18 payloadURL];
        payloadName = [v18 payloadName];
        payloadCAFingerprint = [v18 payloadCAFingerprint];
        payloadChallenge = [v18 payloadChallenge];
        payloadSubject = [v18 payloadSubject];
        payloadKeysize = [v18 payloadKeysize];
        unsignedIntegerValue = [payloadKeysize unsignedIntegerValue];
        payloadKeyUsage = [v18 payloadKeyUsage];
        unsignedIntegerValue2 = [payloadKeyUsage unsignedIntegerValue];
        [v18 payloadRetries];
        v110 = v120 = dataCopy;
        unsignedIntegerValue3 = [v110 unsignedIntegerValue];
        [v18 payloadRetryDelay];
        v86 = v85 = keyCopy;
        unsignedIntValue = [v86 unsignedIntValue];
        v88 = [v85 key];
        LODWORD(v103) = unsignedIntValue;
        v102 = unsignedIntegerValue3;
        v51 = v118;
        v25 = [keychainController2 storeSCEPIdentityURL:payloadURL caInstanceName:payloadName caFingerprint:payloadCAFingerprint caCapabilities:0 challenge:payloadChallenge subject:payloadSubject keySize:unsignedIntegerValue usageFlags:unsignedIntegerValue2 subjectAltName:v118 retries:v102 retryDelay:v103 assetKey:v88 error:error];

        keyCopy = v85;
        dataCopy = v120;
      }

      goto LABEL_47;
    }

    declarationType5 = [assetCopy declarationType];
    v56 = +[RMModelAssetCredentialACMEDeclaration registeredIdentifier];
    v57 = [declarationType5 isEqualToString:v56];

    if (!v57)
    {
      v71 = +[RMLog storeAssetResolver];
      if (os_log_type_enabled(v71, OS_LOG_TYPE_ERROR))
      {
        sub_100072B08(assetCopy);
      }

      if (!error)
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
        *error = v19;
        goto LABEL_48;
      }

      goto LABEL_37;
    }

    v130 = 0;
    v58 = [RMModelACMECredentialDeclaration loadData:dataCopy serializationType:1 error:&v130];
    v19 = v130;
    if (v19)
    {
      v59 = +[RMLog storeAssetResolver];
      if (os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
      {
        sub_100072B94();
      }

      if (!error)
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
        *error = v61;
      }

      else
      {
        v25 = 0;
      }
    }

    else
    {
      v89 = [NSMutableDictionary dictionaryWithCapacity:4];
      payloadSubjectAltName5 = [v58 payloadSubjectAltName];
      [payloadSubjectAltName5 payloadDNSName];
      v91 = v129 = keyCopy;
      [v89 setObject:v91 forKeyedSubscript:@"dNSName"];

      payloadSubjectAltName6 = [v58 payloadSubjectAltName];
      payloadNtPrincipalName2 = [payloadSubjectAltName6 payloadNtPrincipalName];
      [v89 setObject:payloadNtPrincipalName2 forKeyedSubscript:@"ntPrincipalName"];

      payloadSubjectAltName7 = [v58 payloadSubjectAltName];
      payloadRfc822Name2 = [payloadSubjectAltName7 payloadRfc822Name];
      v119 = v89;
      [v89 setObject:payloadRfc822Name2 forKeyedSubscript:@"rfc822Name"];

      payloadSubjectAltName8 = [v58 payloadSubjectAltName];
      payloadUniformResourceIdentifier2 = [payloadSubjectAltName8 payloadUniformResourceIdentifier];
      [v89 setObject:payloadUniformResourceIdentifier2 forKeyedSubscript:@"uniformResourceIdentifier"];

      keychainController3 = [(RMStoreAssetResolver *)self keychainController];
      payloadDirectoryURL = [v58 payloadDirectoryURL];
      payloadClientIdentifier = [v58 payloadClientIdentifier];
      payloadKeySize = [v58 payloadKeySize];
      unsignedLongValue = [payloadKeySize unsignedLongValue];
      payloadKeyType = [v58 payloadKeyType];
      payloadHardwareBound = [v58 payloadHardwareBound];
      bOOLValue = [payloadHardwareBound BOOLValue];
      payloadSubject2 = [v58 payloadSubject];
      payloadUsageFlags = [v58 payloadUsageFlags];
      unsignedLongValue2 = [payloadUsageFlags unsignedLongValue];
      payloadExtendedKeyUsage = [v58 payloadExtendedKeyUsage];
      payloadAttest = [v58 payloadAttest];
      bOOLValue2 = [payloadAttest BOOLValue];
      LOBYTE(v89) = type == 0;
      v100 = [v129 key];
      BYTE1(v101) = v89;
      v61 = v119;
      LOBYTE(v101) = bOOLValue2;
      v25 = [keychainController3 storeACMEDirectoryURL:payloadDirectoryURL clientIdentifier:payloadClientIdentifier keySize:unsignedLongValue keyType:payloadKeyType hardwareBound:bOOLValue subject:payloadSubject2 subjectAltName:v119 usageFlags:unsignedLongValue2 extendedKeyUsage:payloadExtendedKeyUsage attest:v101 isUserEnrollment:v100 assetKey:error error:?];

      keyCopy = v129;
    }

    goto LABEL_63;
  }

  v19 = [(RMStoreAssetResolver *)self _getAssetReferenceFromAsset:assetCopy];
  payloadContentType = [v19 payloadContentType];
  v30 = [payloadContentType isEqualToString:@"application/pem"];

  if (!v30)
  {
    payloadContentType2 = [v19 payloadContentType];
    v45 = [payloadContentType2 isEqualToString:@"application/pkcs1"];

    if (v45)
    {
      keychainController4 = [(RMStoreAssetResolver *)self keychainController];
      v32 = [keyCopy key];
      v33 = [keychainController4 storePKCS1Data:dataCopy assetKey:v32 error:error];
      goto LABEL_21;
    }

    v53 = +[RMLog storeAssetResolver];
    if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
    {
      sub_100072CCC(v19);
    }

    if (error)
    {
      v54 = [RMErrorUtilities createAssetInvalidError:@"Keychain asset content type not recognized"];
      if (v54)
      {
        v54 = v54;
        *error = v54;
      }
    }

LABEL_37:
    v25 = 0;
    goto LABEL_48;
  }

  keychainController4 = [(RMStoreAssetResolver *)self keychainController];
  v32 = [keyCopy key];
  v33 = [keychainController4 storePEMData:dataCopy assetKey:v32 error:error];
LABEL_21:
  v25 = v33;

LABEL_48:
LABEL_49:

  return v25;
}

- (void)_assignKeychainItemForAsset:(id)asset unresolvedAsset:(id)unresolvedAsset assetKey:(id)key configurationKey:(id)configurationKey completionHandler:(id)handler
{
  v18 = 0;
  v19 = 0;
  handlerCopy = handler;
  v13 = [(RMStoreAssetResolver *)self _keychainItemForAsset:asset unresolvedAsset:unresolvedAsset assetKey:key configurationKey:configurationKey returnUserName:&v19 error:&v18];
  v14 = v19;
  v15 = v18;
  if (v13)
  {
    v16 = [[RMStoreResolvedAsset alloc] initWithKeychainReference:v13 userName:v14];
    handlerCopy[2](handlerCopy, v16, 0);

    handlerCopy = v16;
  }

  else
  {
    v17 = +[RMLog storeAssetResolver];
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      sub_100072DC0();
    }

    (handlerCopy)[2](handlerCopy, 0, v15);
  }
}

- (id)_keychainItemForAsset:(id)asset unresolvedAsset:(id)unresolvedAsset assetKey:(id)key configurationKey:(id)configurationKey returnUserName:(id *)name error:(id *)error
{
  assetCopy = asset;
  unresolvedAssetCopy = unresolvedAsset;
  keyCopy = key;
  configurationKeyCopy = configurationKey;
  declarationType = [assetCopy declarationType];
  v19 = +[RMModelAssetCredentialUserNameAndPasswordDeclaration registeredIdentifier];
  v20 = [declarationType isEqualToString:v19];

  if (v20)
  {
    keychainController = [(RMStoreAssetResolver *)self keychainController];
    v22 = [keyCopy key];
    v23 = [configurationKeyCopy key];
    v24 = [(RMStoreAssetResolver *)self _getKeychainAccessibilityFromAsset:assetCopy unresolvedAsset:unresolvedAssetCopy];
    keychainGroup = [unresolvedAssetCopy keychainGroup];
    nameCopy = name;
    v27 = assetCopy;
    v28 = unresolvedAssetCopy;
    v29 = configurationKeyCopy;
    v30 = keyCopy;
    v31 = keychainGroup;
    v32 = [keychainController assignPasswordForAssetKey:v22 toConfigurationKey:v23 access:v24 group:keychainGroup returnUserName:nameCopy error:error];

    v33 = v30;
    configurationKeyCopy = v29;
    unresolvedAssetCopy = v28;
    assetCopy = v27;

    goto LABEL_11;
  }

  v34 = keyCopy;
  declarationType2 = [assetCopy declarationType];
  v36 = +[RMModelAssetCredentialCertificateDeclaration registeredIdentifier];
  v37 = [declarationType2 isEqualToString:v36];

  if (v37)
  {
    keychainController2 = [(RMStoreAssetResolver *)self keychainController];
    v39 = v34;
    v40 = [v34 key];
    v41 = [configurationKeyCopy key];
    v42 = [(RMStoreAssetResolver *)self _getKeychainAccessibilityFromAsset:assetCopy unresolvedAsset:unresolvedAssetCopy];
    keychainGroup2 = [unresolvedAssetCopy keychainGroup];
    v44 = [keychainController2 assignCertificateForAssetKey:v40 toConfigurationKey:v41 access:v42 group:keychainGroup2 error:error];
LABEL_10:
    v32 = v44;

    v33 = v39;
    goto LABEL_11;
  }

  declarationType3 = [assetCopy declarationType];
  v46 = +[RMModelAssetCredentialIdentityDeclaration registeredIdentifier];
  errorCopy = error;
  if ([declarationType3 isEqualToString:v46])
  {
    goto LABEL_8;
  }

  declarationType4 = [assetCopy declarationType];
  v48 = +[RMModelAssetCredentialSCEPDeclaration registeredIdentifier];
  if ([declarationType4 isEqualToString:v48])
  {

LABEL_8:
LABEL_9:
    keychainController2 = [(RMStoreAssetResolver *)self keychainController];
    v39 = v34;
    v40 = [v34 key];
    v41 = [configurationKeyCopy key];
    v49 = [(RMStoreAssetResolver *)self _getKeychainAccessibilityFromAsset:assetCopy unresolvedAsset:unresolvedAssetCopy];
    keychainGroup2 = [unresolvedAssetCopy keychainGroup];
    v44 = [keychainController2 assignIdentityForAssetKey:v40 configurationKey:v41 access:v49 group:keychainGroup2 error:errorCopy];
    goto LABEL_10;
  }

  declarationType5 = [assetCopy declarationType];
  +[RMModelAssetCredentialACMEDeclaration registeredIdentifier];
  v52 = v55 = declarationType4;
  v56 = [declarationType5 isEqualToString:v52];

  if (v56)
  {
    goto LABEL_9;
  }

  v53 = +[RMLog storeAssetResolver];
  if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
  {
    sub_100072E28(assetCopy);
  }

  v33 = v34;
  if (errorCopy)
  {
    v54 = [RMErrorUtilities createAssetInvalidError:@"Keychain asset type not recognized during assign"];
    if (v54)
    {
      v54 = v54;
      *errorCopy = v54;
    }
  }

  v32 = 0;
LABEL_11:

  return v32;
}

- (id)_getAssetReferenceFromAsset:(id)asset
{
  assetCopy = asset;
  if (objc_opt_respondsToSelector())
  {
    payloadReference = [assetCopy payloadReference];
  }

  else
  {
    payloadReference = 0;
  }

  return payloadReference;
}

- (id)_getAssetAuthenticationFromAsset:(id)asset
{
  assetCopy = asset;
  if (objc_opt_respondsToSelector())
  {
    payloadAuthentication = [assetCopy payloadAuthentication];
  }

  else
  {
    payloadAuthentication = 0;
  }

  return payloadAuthentication;
}

- (__CFString)_getKeychainAccessibilityFromAsset:(id)asset unresolvedAsset:(id)unresolvedAsset
{
  assetCopy = asset;
  unresolvedAssetCopy = unresolvedAsset;
  v7 = RMModelAssetCredentialIdentityDeclaration_Accessible_default;
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), payloadAccessible = v7, (objc_opt_isKindOfClass()))
  {
    payloadAccessible = [assetCopy payloadAccessible];
  }

  if ([payloadAccessible isEqualToString:v7])
  {
    keychainDefaultAccessibility = [unresolvedAssetCopy keychainDefaultAccessibility];
    if (keychainDefaultAccessibility)
    {
      keychainDefaultAccessibility2 = [unresolvedAssetCopy keychainDefaultAccessibility];
    }

    else
    {
      keychainDefaultAccessibility2 = kSecAttrAccessibleWhenUnlockedThisDeviceOnly;
    }
  }

  else
  {
    if ([payloadAccessible isEqualToString:RMModelAssetCredentialIdentityDeclaration_Accessible_afterFirstUnlock])
    {
      v11 = &kSecAttrAccessibleAfterFirstUnlockThisDeviceOnly;
    }

    else
    {
      v11 = &kSecAttrAccessibleWhenUnlockedThisDeviceOnly;
    }

    keychainDefaultAccessibility2 = *v11;
  }

  return keychainDefaultAccessibility2;
}

- (id)_dataURLForAsset:(id)asset reference:(id)reference queryParameters:(id)parameters
{
  parametersCopy = parameters;
  payloadDataURL = [reference payloadDataURL];
  v8 = [NSURLComponents componentsWithString:payloadDataURL];

  if ([parametersCopy count])
  {
    +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [parametersCopy count]);
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_1000715A8;
    v14 = v13[3] = &unk_1000D2118;
    v9 = v14;
    [parametersCopy enumerateKeysAndObjectsUsingBlock:v13];
    v10 = [v9 copy];
    [v8 setQueryItems:v10];
  }

  v11 = [v8 URL];

  return v11;
}

- (void)_processResponseWithAsset:(id)asset reference:(id)reference unresolvedAsset:(id)unresolvedAsset url:(id)url response:(id)response error:(id)error completionHandler:(id)handler
{
  assetCopy = asset;
  referenceCopy = reference;
  unresolvedAssetCopy = unresolvedAsset;
  urlCopy = url;
  responseCopy = response;
  errorCopy = error;
  if (!errorCopy)
  {
    v25 = HTTPResponseKeyBody;
    handlerCopy = handler;
    v27 = [responseCopy objectForKeyedSubscript:v25];
    v47 = unresolvedAssetCopy;
    [unresolvedAssetCopy downloadURL];
    v29 = v28 = urlCopy;
    v30 = [responseCopy objectForKeyedSubscript:HTTPResponseKeyStatusCode];
    v45 = responseCopy;
    v31 = [responseCopy objectForKeyedSubscript:HTTPResponseKeyHeaders];
    v48 = v27;
    v49 = 0;
    v44 = v29;
    v46 = v29;
    urlCopy = v28;
    v32 = [(RMStoreAssetResolver *)self _validateAsset:assetCopy reference:referenceCopy url:v28 statusCode:v30 headers:v31 data:v27 downloadURL:v44 error:&v49];
    v33 = v49;

    if (!v32)
    {
      code = [v33 code];
      v41 = +[RMLog storeAssetResolver];
      v42 = os_log_type_enabled(v41, OS_LOG_TYPE_ERROR);
      if (code == 1000)
      {
        v37 = v48;
        v38 = v46;
        errorCopy = 0;
        if (v42)
        {
          sub_100072FDC();
        }
      }

      else
      {
        v37 = v48;
        v38 = v46;
        errorCopy = 0;
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
    errorCopy = 0;
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

    unresolvedAssetCopy = v47;
    responseCopy = v45;
    goto LABEL_21;
  }

  handlerCopy2 = handler;
  v22 = +[RMLog storeAssetResolver];
  if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
  {
    sub_100072EB4();
  }

  v23 = errorCopy;
  v24 = 0;
LABEL_21:
  (*(handler + 2))(handler, v24, v23);
}

- (BOOL)_validateAsset:(id)asset reference:(id)reference url:(id)url statusCode:(id)code headers:(id)headers data:(id)data downloadURL:(id)l error:(id *)self0
{
  referenceCopy = reference;
  urlCopy = url;
  codeCopy = code;
  headersCopy = headers;
  dataCopy = data;
  lCopy = l;
  v21 = +[RMLog storeAssetResolver];
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
  {
    sub_1000730F4(urlCopy);
  }

  v51 = urlCopy;

  v50 = lCopy;
  if (dataCopy)
  {
    unsignedIntegerValue = [dataCopy length];
  }

  else
  {
    v23 = +[NSFileManager defaultManager];
    path = [lCopy path];
    v52 = 0;
    v25 = [v23 attributesOfItemAtPath:path error:&v52];
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
      if (error)
      {
        v47 = +[RMErrorUtilities createAssetSizeCannotBeVerifiedError];
        if (v47)
        {
          v47 = v47;
          *error = v47;
        }
      }

      goto LABEL_29;
    }

    v27 = [v25 objectForKeyedSubscript:NSFileSize];
    unsignedIntegerValue = [v27 unsignedIntegerValue];
  }

  payloadSize = [referenceCopy payloadSize];
  if (payloadSize)
  {
    v29 = payloadSize;
    payloadSize2 = [referenceCopy payloadSize];
    v31 = -[RMStoreAssetResolver isPayloadSizeMismatchedWithExpectedSize:actualSize:statusCode:](self, "isPayloadSizeMismatchedWithExpectedSize:actualSize:statusCode:", [payloadSize2 unsignedIntegerValue], unsignedIntegerValue, objc_msgSend(codeCopy, "integerValue"));

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

  payloadContentType = [referenceCopy payloadContentType];
  if (payloadContentType)
  {
    v36 = payloadContentType;
    payloadContentType2 = [referenceCopy payloadContentType];
    v38 = -[RMStoreAssetResolver isContentTypeMismatchedWithExpectedType:headers:statusCode:](self, "isContentTypeMismatchedWithExpectedType:headers:statusCode:", payloadContentType2, headersCopy, [codeCopy integerValue]);

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

  payloadHashSHA256 = [referenceCopy payloadHashSHA256];
  if (!payloadHashSHA256)
  {
    v45 = 1;
    goto LABEL_33;
  }

  v41 = payloadHashSHA256;
  payloadHashSHA2562 = [referenceCopy payloadHashSHA256];
  v39 = v50;
  v43 = [(RMStoreAssetResolver *)self isHashMismatchedWithExpectedHash:payloadHashSHA2562 data:dataCopy downloadURL:v50 dataSize:unsignedIntegerValue];

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

- (BOOL)isPayloadSizeMismatchedWithExpectedSize:(unint64_t)size actualSize:(unint64_t)actualSize statusCode:(int64_t)code
{
  if (!size && code && code != 204)
  {
    v9 = +[RMLog storeAssetResolver];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      sub_10007320C();
    }
  }

  if (actualSize != size)
  {
    v7 = +[RMLog storeAssetResolver];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_10007327C();
    }
  }

  return actualSize != size;
}

- (BOOL)isContentTypeMismatchedWithExpectedType:(id)type headers:(id)headers statusCode:(int64_t)code
{
  if (!code)
  {
    return 0;
  }

  typeCopy = type;
  v8 = [headers objectForKeyedSubscript:@"Content-Type"];
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

  v12 = [v11 isEqualToString:typeCopy];
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

- (BOOL)isHashMismatchedWithExpectedHash:(id)hash data:(id)data downloadURL:(id)l dataSize:(unint64_t)size
{
  hashCopy = hash;
  dataCopy = data;
  lCopy = l;
  if (size)
  {
    if (dataCopy)
    {
      [(RMStoreAssetResolver *)self getSHA256StringFromData:dataCopy];
    }

    else
    {
      [(RMStoreAssetResolver *)self getSHA256StringFromURL:lCopy];
    }
    v14 = ;
    v15 = [hashCopy caseInsensitiveCompare:v14];
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

- (id)_getContentType:(id)type
{
  typeCopy = type;
  v4 = [typeCopy rangeOfString:@";"];
  if (v5)
  {
    v6 = [typeCopy substringToIndex:v4];
  }

  else
  {
    v6 = typeCopy;
  }

  v7 = v6;

  return v7;
}

- (id)getSHA256StringFromData:(id)data
{
  dataCopy = data;
  v4 = [dataCopy length];
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

      [dataCopy getBytes:v7 range:{i, v9}];
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

- (id)getSHA256StringFromURL:(id)l
{
  lCopy = l;
  memset(&c, 0, sizeof(c));
  CC_SHA256_Init(&c);
  v11 = 0;
  v4 = [NSFileHandle fileHandleForReadingFromURL:lCopy error:&v11];
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