@interface ICDCloudServiceStatusMonitor
+ (BOOL)_shouldBypassEnforcementOfPrivacyAcknowledgementForClientConnection:(id)a3 forIncomingCloudServiceCapabilitiesRequest:(BOOL)a4;
+ (id)_requestingBundleIdentifierForOriginatingClientConnection:(id)a3 clientInfo:(id)a4 error:(id *)a5;
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (ICDCloudServiceStatusMonitor)init;
- (void)_beginObservingCloudServiceStatus;
- (void)_endObservingCloudServiceStatus;
- (void)_handleActiveUserIdentityDidChangeNotification:(id)a3;
- (void)_handleClientConnectionInterrupted:(id)a3;
- (void)_handleClientConnectionInvalidated:(id)a3;
- (void)_handleClientConnectionSevered:(id)a3;
- (void)_handleUpdatedBag:(id)a3;
- (void)_handleUpdatedSubscriptionStatus:(id)a3;
- (void)_handleUserIdentityStoreDidChangeNotification:(id)a3;
- (void)_handleUserIdentityStoreLocalStoreAccountPropertiesDidChangeNotification:(id)a3;
- (void)_musicKit_importTrackWithID:(id)a3 addingToLibrary:(id)a4 completionHandler:(id)a5;
- (void)_notifyObserversForActiveUserIdentityChanged;
- (void)_refreshCapabilitiesWithPrivacyAcknowledgementPolicy:(int64_t)a3;
- (void)_refreshCloudServiceStatus;
- (void)_refreshStorefrontCountryCode;
- (void)_refreshStorefrontIdentifier;
- (void)_updateWithBag:(id)a3 error:(id)a4;
- (void)_updateWithCapabilities:(unint64_t)a3 error:(id)a4 privacyAcknowledgementPolicy:(int64_t)a5 capabilitiesRequestOperation:(id)a6;
- (void)_updateWithStorefrontIdentifier:(id)a3 error:(id)a4;
- (void)beginObservingCloudServiceStatusWithCompletionHandler:(id)a3;
- (void)dealloc;
- (void)endObservingCloudServiceStatusWithToken:(id)a3 completionHandler:(id)a4;
- (void)requestCapabilitiesWithPrivacyPromptPolicy:(int64_t)a3 completionHandler:(id)a4;
- (void)requestDeveloperTokenWithOptions:(unint64_t)a3 clientInfo:(id)a4 completionHandler:(id)a5;
- (void)requestMusicKitTokensWithOptions:(unint64_t)a3 clientInfo:(id)a4 completionHandler:(id)a5;
- (void)requestStorefrontCountryCodeWithCompletionHandler:(id)a3;
- (void)requestStorefrontIdentifierWithCompletionHandler:(id)a3;
- (void)requestUserTokenForDeveloperToken:(id)a3 options:(unint64_t)a4 clientInfo:(id)a5 completionHandler:(id)a6;
@end

@implementation ICDCloudServiceStatusMonitor

- (void)_updateWithStorefrontIdentifier:(id)a3 error:(id)a4
{
  v7 = a3;
  v8 = a4;
  os_unfair_lock_assert_not_owner(&self->_lock);
  if (!(v7 | v8))
  {
    v33 = +[NSAssertionHandler currentHandler];
    [v33 handleFailureInMethod:a2 object:self file:@"ICDCloudServiceStatusMonitor.m" lineNumber:978 description:{@"%@: Either storefrontIdentifier or error are expected to be non-nil at this point.", self}];
  }

  os_unfair_lock_lock(&self->_lock);
  v9 = [(NSMutableArray *)self->_storefrontIdentifierRequestCompletionHandlers copy];
  storefrontIdentifierRequestCompletionHandlers = self->_storefrontIdentifierRequestCompletionHandlers;
  self->_storefrontIdentifierRequestCompletionHandlers = 0;

  v11 = [(NSMutableDictionary *)self->_activeObservationTokenToClientConnectionMapping count];
  v12 = v11;
  v13 = 0;
  v14 = 0;
  if (!v8 && v11)
  {
    v15 = self->_storefrontIdentifier;
    v16 = v15;
    if (v15 == v7)
    {
    }

    else
    {
      v17 = [(NSString *)v15 isEqual:v7];

      if ((v17 & 1) == 0)
      {
        v18 = [v7 copy];
        storefrontIdentifier = self->_storefrontIdentifier;
        self->_storefrontIdentifier = v18;

        v13 = [(NSMutableDictionary *)self->_activeObservationTokenToClientConnectionMapping copy];
        v14 = 1;
        goto LABEL_10;
      }
    }

    v14 = 0;
    v13 = 0;
  }

LABEL_10:
  os_unfair_lock_unlock(&self->_lock);
  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v20 = v9;
  v21 = [v20 countByEnumeratingWithState:&v36 objects:v48 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v37;
    do
    {
      for (i = 0; i != v22; i = i + 1)
      {
        if (*v37 != v23)
        {
          objc_enumerationMutation(v20);
        }

        (*(*(*(&v36 + 1) + 8 * i) + 16))();
      }

      v22 = [v20 countByEnumeratingWithState:&v36 objects:v48 count:16];
    }

    while (v22);
  }

  if (v8)
  {
    v25 = os_log_create("com.apple.amp.itunescloudd", "Default");
    if (!os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
LABEL_21:

      goto LABEL_22;
    }

    *buf = 138543618;
    v41 = self;
    v42 = 2114;
    v43 = v8;
    v26 = "%{public}@: Could not find valid storefront identifier; error: %{public}@.";
    v27 = v25;
    v28 = OS_LOG_TYPE_ERROR;
    v29 = 22;
LABEL_20:
    _os_log_impl(&_mh_execute_header, v27, v28, v26, buf, v29);
    goto LABEL_21;
  }

  if (!v12)
  {
    goto LABEL_22;
  }

  if ((v14 & 1) == 0)
  {
    v25 = os_log_create("com.apple.amp.itunescloudd", "Default");
    if (!os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_21;
    }

    *buf = 138543362;
    v41 = self;
    v26 = "%{public}@: Storefront identifier did not change. Skipping invoking observation handlers.";
    v27 = v25;
    v28 = OS_LOG_TYPE_DEFAULT;
    v29 = 12;
    goto LABEL_20;
  }

  v30 = [v13 count];
  v31 = os_log_create("com.apple.amp.itunescloudd", "Default");
  if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
  {
    v32 = "s";
    *buf = 138544130;
    v42 = 2114;
    v41 = self;
    if (v30 == 1)
    {
      v32 = "";
    }

    v43 = v7;
    v44 = 2048;
    v45 = v30;
    v46 = 2080;
    v47 = v32;
    _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "%{public}@: Storefront identifier did change: %{public}@. About to notify %llu observer%s.", buf, 0x2Au);
  }

  v34[0] = _NSConcreteStackBlock;
  v34[1] = 3221225472;
  v34[2] = sub_100041B28;
  v34[3] = &unk_1001DAC80;
  v34[4] = self;
  v35 = v7;
  [v13 enumerateKeysAndObjectsUsingBlock:v34];

LABEL_22:
}

- (void)_updateWithCapabilities:(unint64_t)a3 error:(id)a4 privacyAcknowledgementPolicy:(int64_t)a5 capabilitiesRequestOperation:(id)a6
{
  v10 = a4;
  v11 = a6;
  os_unfair_lock_assert_not_owner(&self->_lock);
  os_unfair_lock_lock(&self->_lock);
  v12 = [v10 domain];
  if ([v12 isEqualToString:ICErrorDomain])
  {
    v13 = [v10 code] != -7007;
  }

  else
  {
    v13 = 1;
  }

  v56 = v13;

  v14 = objc_alloc_init(NSMutableDictionary);
  v15 = [(NSMutableDictionary *)self->_activeObservationTokenToClientConnectionMapping count];
  v55 = v11;
  v51 = v15;
  if (a5 == 2)
  {
    v16 = 0;
    if (!v15)
    {
      goto LABEL_18;
    }

LABEL_14:
    if (self->_privilegedCapabilities == a3)
    {
      if (!v10)
      {
        self->_hasValidPrivilegedCapabilities = 1;
      }
    }

    else
    {
      self->_privilegedCapabilities = a3;
      self->_hasValidPrivilegedCapabilities = v10 == 0;
      activeObservationTokenToClientConnectionMapping = self->_activeObservationTokenToClientConnectionMapping;
      v66[0] = _NSConcreteStackBlock;
      v66[1] = 3221225472;
      v66[2] = sub_1000424D4;
      v66[3] = &unk_1001DAC80;
      v66[4] = self;
      v67 = v14;
      [(NSMutableDictionary *)activeObservationTokenToClientConnectionMapping enumerateKeysAndObjectsUsingBlock:v66];

      v16 = 1;
    }

    goto LABEL_18;
  }

  if (v15)
  {
    capabilities = self->_capabilities;
    v16 = capabilities != a3;
    if (capabilities == a3)
    {
      if (!v10)
      {
        self->_hasValidCapabilities = 1;
      }
    }

    else
    {
      self->_capabilities = a3;
      self->_hasValidCapabilities = v10 == 0;
      v18 = self->_activeObservationTokenToClientConnectionMapping;
      v68[0] = _NSConcreteStackBlock;
      v68[1] = 3221225472;
      v68[2] = sub_100042458;
      v68[3] = &unk_1001DAC80;
      v68[4] = self;
      v69 = v14;
      [(NSMutableDictionary *)v18 enumerateKeysAndObjectsUsingBlock:v68];
    }

    if ((v56 & 1) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_14;
  }

  v16 = 0;
LABEL_18:
  v53 = v14;
  v50 = v16;
  v20 = objc_alloc_init(NSMutableArray);
  v62 = 0u;
  v63 = 0u;
  v64 = 0u;
  v65 = 0u;
  v54 = self;
  location = &self->_capabilitiesRequestContexts;
  v21 = self->_capabilitiesRequestContexts;
  v22 = [(NSMutableArray *)v21 countByEnumeratingWithState:&v62 objects:v79 count:16];
  if (!v22)
  {
    v24 = 0;
    goto LABEL_38;
  }

  v23 = v22;
  v24 = 0;
  v25 = *v63;
  do
  {
    for (i = 0; i != v23; i = i + 1)
    {
      if (*v63 != v25)
      {
        objc_enumerationMutation(v21);
      }

      v27 = *(*(&v62 + 1) + 8 * i);
      v28 = [v27 privacyAcknowledgementPolicy];
      if (a5 == 2)
      {
        if (v28 == 2)
        {
          goto LABEL_33;
        }
      }

      else if (a5 == 1 || !a5 && (!v28 ? (v29 = 1) : (v29 = v56), (v29 & 1) != 0))
      {
LABEL_33:
        v30 = v20;
        goto LABEL_34;
      }

      v30 = v24;
      if (!v24)
      {
        v30 = objc_alloc_init(NSMutableArray);
        v24 = v30;
      }

LABEL_34:
      [v30 addObject:v27];
    }

    v23 = [(NSMutableArray *)v21 countByEnumeratingWithState:&v62 objects:v79 count:16];
  }

  while (v23);
LABEL_38:

  objc_storeStrong(location, v24);
  v31 = [v20 copy];
  v32 = [v53 copy];
  if (v55)
  {
    [(NSMutableArray *)v54->_cancellableCapabilitiesRequestOperations removeObject:?];
  }

  os_unfair_lock_unlock(&v54->_lock);
  v60 = 0u;
  v61 = 0u;
  v58 = 0u;
  v59 = 0u;
  v33 = v31;
  v34 = [v33 countByEnumeratingWithState:&v58 objects:v78 count:16];
  if (v34)
  {
    v35 = v34;
    v36 = *v59;
    do
    {
      for (j = 0; j != v35; j = j + 1)
      {
        if (*v59 != v36)
        {
          objc_enumerationMutation(v33);
        }

        v38 = [*(*(&v58 + 1) + 8 * j) completionHandler];
        v39 = [v10 msv_errorByRemovingUnsafeUserInfo];
        (v38)[2](v38, a3, v39);
      }

      v35 = [v33 countByEnumeratingWithState:&v58 objects:v78 count:16];
    }

    while (v35);
  }

  if (v10)
  {
    v40 = os_log_create("com.apple.amp.itunescloudd", "Default");
    if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v71 = v54;
      v72 = 2114;
      v73 = v10;
      v41 = "%{public}@: Could not find valid cloud service capabilities; error: %{public}@.";
      v42 = v40;
      v43 = OS_LOG_TYPE_ERROR;
      v44 = 22;
      goto LABEL_50;
    }

    goto LABEL_51;
  }

  if (v51)
  {
    if (v50)
    {
      v45 = [v32 count];
      v46 = os_log_create("com.apple.amp.itunescloudd", "Default");
      if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
      {
        v47 = ICCloudServiceCapabilitiesGetDescription();
        v48 = v47;
        v49 = "s";
        *buf = 138544130;
        v72 = 2114;
        v71 = v54;
        if (v45 == 1)
        {
          v49 = "";
        }

        v73 = v47;
        v74 = 2048;
        v75 = v45;
        v76 = 2080;
        v77 = v49;
        _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_DEFAULT, "%{public}@: Cloud service capabilities did change: %{public}@. About to notify %llu observer%s.", buf, 0x2Au);
      }

      v57[0] = _NSConcreteStackBlock;
      v57[1] = 3221225472;
      v57[2] = sub_100042550;
      v57[3] = &unk_1001DACA8;
      v57[4] = v54;
      v57[5] = a3;
      [v32 enumerateKeysAndObjectsUsingBlock:v57];
    }

    else
    {
      v40 = os_log_create("com.apple.amp.itunescloudd", "Default");
      if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v71 = v54;
        v41 = "%{public}@: Cloud service capabilities did not change. Skipping invoking observation handlers.";
        v42 = v40;
        v43 = OS_LOG_TYPE_DEFAULT;
        v44 = 12;
LABEL_50:
        _os_log_impl(&_mh_execute_header, v42, v43, v41, buf, v44);
      }

LABEL_51:
    }
  }
}

- (void)_updateWithBag:(id)a3 error:(id)a4
{
  v7 = a3;
  v8 = a4;
  os_unfair_lock_assert_not_owner(&self->_lock);
  v38 = v8;
  v39 = v7;
  if (v8)
  {
    v9 = [v8 msv_errorByRemovingUnsafeUserInfo];
  }

  else
  {
    v13 = [v7 stringForBagKey:ICURLBagKeyCountryCode];
    if (v13)
    {
      v12 = v13;
LABEL_7:
      v10 = 0;
      v11 = 1;
      goto LABEL_8;
    }

    v9 = [NSError errorWithDomain:ICErrorDomain code:-7201 userInfo:0];
  }

  v10 = v9;
  if (!v9)
  {
    v37 = +[NSAssertionHandler currentHandler];
    [v37 handleFailureInMethod:a2 object:self file:@"ICDCloudServiceStatusMonitor.m" lineNumber:793 description:{@"%@: Either storefrontCountryCode or finalError are expected to be non-nil at this point.", self}];

    v12 = 0;
    goto LABEL_7;
  }

  v11 = 0;
  v12 = 0;
LABEL_8:
  os_unfair_lock_lock(&self->_lock);
  v14 = [(NSMutableArray *)self->_storefrontCountryCodeRequestCompletionHandlers copy];
  storefrontCountryCodeRequestCompletionHandlers = self->_storefrontCountryCodeRequestCompletionHandlers;
  self->_storefrontCountryCodeRequestCompletionHandlers = 0;

  v16 = [(NSMutableDictionary *)self->_activeObservationTokenToClientConnectionMapping count];
  v17 = 0;
  v18 = 0;
  if (v11 && v16)
  {
    v19 = self->_storefrontCountryCode;
    v20 = v19;
    if (v19 == v12)
    {
    }

    else
    {
      v21 = [(NSString *)v19 isEqual:v12];

      if ((v21 & 1) == 0)
      {
        v22 = [(NSString *)v12 copy];
        storefrontCountryCode = self->_storefrontCountryCode;
        self->_storefrontCountryCode = v22;

        v17 = [(NSMutableDictionary *)self->_activeObservationTokenToClientConnectionMapping copy];
        v18 = 1;
        goto LABEL_15;
      }
    }

    v18 = 0;
    v17 = 0;
  }

LABEL_15:
  v40 = v17;
  os_unfair_lock_unlock(&self->_lock);
  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v24 = v14;
  v25 = [v24 countByEnumeratingWithState:&v43 objects:v55 count:16];
  if (v25)
  {
    v26 = v25;
    v27 = *v44;
    do
    {
      for (i = 0; i != v26; i = i + 1)
      {
        if (*v44 != v27)
        {
          objc_enumerationMutation(v24);
        }

        (*(*(*(&v43 + 1) + 8 * i) + 16))();
      }

      v26 = [v24 countByEnumeratingWithState:&v43 objects:v55 count:16];
    }

    while (v26);
  }

  if (v11)
  {
    v30 = v38;
    v29 = v39;
    v31 = v40;
    if (v16)
    {
      if (v18)
      {
        v32 = [v40 count];
        v33 = os_log_create("com.apple.amp.itunescloudd", "Default");
        if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
        {
          v34 = "s";
          *buf = 138544130;
          v49 = 2114;
          v48 = self;
          if (v32 == 1)
          {
            v34 = "";
          }

          v50 = v12;
          v51 = 2048;
          v52 = v32;
          v53 = 2080;
          v54 = v34;
          _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "%{public}@: Storefront country code did change: %{public}@. About to notify %llu observer%s.", buf, 0x2Au);
        }

        v41[0] = _NSConcreteStackBlock;
        v41[1] = 3221225472;
        v41[2] = sub_100042CBC;
        v41[3] = &unk_1001DAC80;
        v41[4] = self;
        v42 = v12;
        v31 = v40;
        [v40 enumerateKeysAndObjectsUsingBlock:v41];
      }

      else
      {
        v36 = os_log_create("com.apple.amp.itunescloudd", "Default");
        if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          v48 = self;
          _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "%{public}@: Storefront country code did not change. Skipping invoking observation handlers.", buf, 0xCu);
        }
      }
    }
  }

  else
  {
    v35 = os_log_create("com.apple.amp.itunescloudd", "Default");
    v29 = v39;
    v31 = v40;
    if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543874;
      v48 = self;
      v49 = 2114;
      v50 = v39;
      v51 = 2114;
      v52 = v10;
      _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_ERROR, "%{public}@: Could not find storefront country code from bag %{public}@; error: %{public}@.", buf, 0x20u);
    }

    v30 = v38;
  }
}

- (void)_refreshStorefrontIdentifier
{
  os_unfair_lock_assert_not_owner(&self->_lock);
  v3 = os_log_create("com.apple.amp.itunescloudd", "Default");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v8 = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%{public}@: Refreshing storefront identifier.", buf, 0xCu);
  }

  v4 = +[ICUserIdentityStore defaultIdentityStore];
  v5 = +[ICUserIdentity activeAccount];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000430B8;
  v6[3] = &unk_1001DD0E0;
  v6[4] = self;
  [v4 getPropertiesForUserIdentity:v5 completionHandler:v6];
}

- (void)_refreshStorefrontCountryCode
{
  os_unfair_lock_assert_not_owner(&self->_lock);
  v3 = os_log_create("com.apple.amp.itunescloudd", "Default");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v13 = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%{public}@: Refreshing storefront country code.", buf, 0xCu);
  }

  os_unfair_lock_lock(&self->_lock);
  if (self->_bagObservationToken)
  {
    v4 = +[ICURLBagMonitor sharedBagMonitor];
    v5 = [v4 bag];

    if (v5)
    {
      os_unfair_lock_unlock(&self->_lock);
      [(ICDCloudServiceStatusMonitor *)self _updateWithBag:v5 error:0];
      goto LABEL_12;
    }

    v6 = os_log_create("com.apple.amp.itunescloudd", "Default");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v13 = self;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%{public}@: No bag was present on the bag monitor.", buf, 0xCu);
    }
  }

  os_unfair_lock_unlock(&self->_lock);
  v7 = os_log_create("com.apple.amp.itunescloudd", "Default");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v13 = self;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%{public}@: Requesting bag directly.", buf, 0xCu);
  }

  v8 = [ICStoreRequestContext alloc];
  v9 = +[ICUserIdentity activeAccount];
  v5 = [v8 initWithIdentity:v9];

  v10 = +[ICURLBagProvider sharedBagProvider];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100043544;
  v11[3] = &unk_1001DD040;
  v11[4] = self;
  [v10 getBagForRequestContext:v5 withCompletionHandler:v11];

LABEL_12:
}

- (void)_refreshCapabilitiesWithPrivacyAcknowledgementPolicy:(int64_t)a3
{
  os_unfair_lock_assert_not_owner(&self->_lock);
  v5 = [ICDCloudServiceCapabilitiesRequestOperation alloc];
  v6 = +[ICUserIdentity activeAccount];
  v7 = [(ICDCloudServiceCapabilitiesRequestOperation *)v5 initWithIdentity:v6];

  [(ICDCloudServiceCapabilitiesRequestOperation *)v7 setPrivacyAcknowledgementPolicy:a3];
  if (a3 == 1)
  {
    v8 = +[NSXPCConnection currentConnection];
    [(ICDCloudServiceCapabilitiesRequestOperation *)v7 setOriginatingClientConnection:v8];
    os_unfair_lock_lock(&self->_lock);
    cancellableCapabilitiesRequestOperations = self->_cancellableCapabilitiesRequestOperations;
    if (!cancellableCapabilitiesRequestOperations)
    {
      v10 = objc_alloc_init(NSMutableArray);
      v11 = self->_cancellableCapabilitiesRequestOperations;
      self->_cancellableCapabilitiesRequestOperations = v10;

      cancellableCapabilitiesRequestOperations = self->_cancellableCapabilitiesRequestOperations;
    }

    [(NSMutableArray *)cancellableCapabilitiesRequestOperations addObject:v7];
    os_unfair_lock_unlock(&self->_lock);
  }

  objc_initWeak(&location, v7);
  v13 = _NSConcreteStackBlock;
  v14 = 3221225472;
  v15 = sub_1000437EC;
  v16 = &unk_1001DAC58;
  objc_copyWeak(v18, &location);
  v17 = self;
  v18[1] = a3;
  [(ICDCloudServiceCapabilitiesRequestOperation *)v7 setCompletionHandler:&v13];
  v12 = [NSOperationQueue ic_sharedRequestOperationQueueWithQualityOfService:25, v13, v14, v15, v16];
  [v12 addOperation:v7];

  objc_destroyWeak(v18);
  objc_destroyWeak(&location);
}

- (void)_refreshCloudServiceStatus
{
  os_unfair_lock_assert_not_owner(&self->_lock);
  [(ICDCloudServiceStatusMonitor *)self _refreshCapabilitiesWithPrivacyAcknowledgementPolicy:0];
  [(ICDCloudServiceStatusMonitor *)self _refreshStorefrontIdentifier];

  [(ICDCloudServiceStatusMonitor *)self _refreshStorefrontCountryCode];
}

- (void)_notifyObserversForActiveUserIdentityChanged
{
  os_unfair_lock_assert_not_owner(&self->_lock);
  v3 = os_log_create("com.apple.amp.itunescloudd", "Default");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v10 = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%{public}@: Notifying observers of active account changed.", buf, 0xCu);
  }

  os_unfair_lock_lock(&self->_lock);
  v4 = [(NSMutableDictionary *)self->_activeObservationTokenToClientConnectionMapping copy];
  os_unfair_lock_unlock(&self->_lock);
  v5 = [v4 count];
  v6 = os_log_create("com.apple.amp.itunescloudd", "Default");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = "s";
    *buf = 138543874;
    v10 = self;
    if (v5 == 1)
    {
      v7 = "";
    }

    v11 = 2048;
    v12 = v5;
    v13 = 2080;
    v14 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%{public}@: Active account did change. About to notify %llu observer%s.", buf, 0x20u);
  }

  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100043A80;
  v8[3] = &unk_1001DAC30;
  v8[4] = self;
  [v4 enumerateKeysAndObjectsUsingBlock:v8];
}

- (void)_endObservingCloudServiceStatus
{
  os_unfair_lock_assert_owner(&self->_lock);
  v3 = +[NSNotificationCenter defaultCenter];
  v4 = ICActiveUserIdentityDidChangeNotification;
  v5 = +[ICUserIdentityStore defaultIdentityStore];
  [v3 removeObserver:self name:v4 object:v5];

  v6 = ICUserIdentityStoreDidChangeNotification;
  v7 = +[ICUserIdentityStore defaultIdentityStore];
  [v3 removeObserver:self name:v6 object:v7];

  v8 = ICUserIdentityStoreLocalStoreAccountPropertiesDidChangeNotification;
  v9 = +[ICUserIdentityStore defaultIdentityStore];
  [v3 removeObserver:self name:v8 object:v9];

  if (self->_bagObservationToken)
  {
    v10 = +[ICURLBagMonitor sharedBagMonitor];
    [v10 endObservingBagWithToken:self->_bagObservationToken];

    bagObservationToken = self->_bagObservationToken;
    self->_bagObservationToken = 0;
  }

  if (self->_subscriptionStatusObservationToken)
  {
    v12 = +[ICUserIdentity autoupdatingActiveAccount];
    v13 = [ICMusicSubscriptionStatusMonitor sharedMonitorForIdentity:v12];

    [v13 endObservingSubscriptionStatusWithToken:self->_subscriptionStatusObservationToken];
    subscriptionStatusObservationToken = self->_subscriptionStatusObservationToken;
    self->_subscriptionStatusObservationToken = 0;
  }

  self->_capabilities = 0;
  self->_hasValidCapabilities = 0;
  self->_privilegedCapabilities = 0;
  self->_hasValidPrivilegedCapabilities = 0;
  storefrontCountryCode = self->_storefrontCountryCode;
  self->_storefrontCountryCode = 0;

  storefrontIdentifier = self->_storefrontIdentifier;
  self->_storefrontIdentifier = 0;

  v17 = os_log_create("com.apple.amp.itunescloudd", "Default");
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v18 = 138543362;
    v19 = self;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "%{public}@: Stopped observing cloud service status.", &v18, 0xCu);
  }
}

- (void)_beginObservingCloudServiceStatus
{
  os_unfair_lock_assert_owner(&self->_lock);
  v3 = os_log_create("com.apple.amp.itunescloudd", "Default");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v20 = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%{public}@: Beginning to observe cloud service status.", buf, 0xCu);
  }

  v4 = +[NSNotificationCenter defaultCenter];
  v5 = +[ICUserIdentityStore defaultIdentityStore];
  [v4 addObserver:self selector:"_handleActiveUserIdentityDidChangeNotification:" name:ICActiveUserIdentityDidChangeNotification object:v5];

  v6 = +[ICUserIdentityStore defaultIdentityStore];
  [v4 addObserver:self selector:"_handleUserIdentityStoreDidChangeNotification:" name:ICUserIdentityStoreDidChangeNotification object:v6];

  v7 = +[ICUserIdentityStore defaultIdentityStore];
  [v4 addObserver:self selector:"_handleUserIdentityStoreLocalStoreAccountPropertiesDidChangeNotification:" name:ICUserIdentityStoreLocalStoreAccountPropertiesDidChangeNotification object:v7];

  objc_initWeak(buf, self);
  v8 = +[ICURLBagMonitor sharedBagMonitor];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_1000441FC;
  v17[3] = &unk_1001DABE0;
  objc_copyWeak(&v18, buf);
  v9 = [v8 beginObservingBagWithHandler:v17];
  bagObservationToken = self->_bagObservationToken;
  self->_bagObservationToken = v9;

  v11 = +[ICUserIdentity autoupdatingActiveAccount];
  v12 = [ICMusicSubscriptionStatusMonitor sharedMonitorForIdentity:v11];

  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100044258;
  v15[3] = &unk_1001DAC08;
  objc_copyWeak(&v16, buf);
  v13 = [v12 beginObservingSubscriptionStatusWithHandler:v15];
  subscriptionStatusObservationToken = self->_subscriptionStatusObservationToken;
  self->_subscriptionStatusObservationToken = v13;

  objc_destroyWeak(&v16);
  objc_destroyWeak(&v18);
  objc_destroyWeak(buf);
}

- (void)_handleUpdatedSubscriptionStatus:(id)a3
{
  v4 = a3;
  os_unfair_lock_assert_not_owner(&self->_lock);
  v5 = os_log_create("com.apple.amp.itunescloudd", "Default");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138543618;
    v7 = self;
    v8 = 2114;
    v9 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}@: Subscription status was updated: %{public}@.", &v6, 0x16u);
  }

  [(ICDCloudServiceStatusMonitor *)self _refreshCapabilitiesWithPrivacyAcknowledgementPolicy:0];
}

- (void)_handleUpdatedBag:(id)a3
{
  v4 = a3;
  os_unfair_lock_assert_not_owner(&self->_lock);
  v5 = os_log_create("com.apple.amp.itunescloudd", "Default");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138543618;
    v7 = self;
    v8 = 2114;
    v9 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}@: Bag was updated: %{public}@.", &v6, 0x16u);
  }

  [(ICDCloudServiceStatusMonitor *)self _updateWithBag:v4 error:0];
  [(ICDCloudServiceStatusMonitor *)self _refreshCapabilitiesWithPrivacyAcknowledgementPolicy:0];
}

- (void)_handleUserIdentityStoreLocalStoreAccountPropertiesDidChangeNotification:(id)a3
{
  v4 = a3;
  os_unfair_lock_assert_not_owner(&self->_lock);
  v5 = os_log_create("com.apple.amp.itunescloudd", "Default");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [v4 name];
    v16 = 138543618;
    v17 = self;
    v18 = 2114;
    v19 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}@: Handling %{public}@.", &v16, 0x16u);
  }

  v7 = +[ICUserIdentityStore defaultIdentityStore];
  v8 = [v7 localStoreAccountProperties];

  v9 = [v8 propertyListRepresentation];
  v10 = +[ICDefaults standardDefaults];
  v11 = [v10 lastKnownLocalStoreAccountProperties];
  v12 = v11;
  if (v9 == v11)
  {
  }

  else
  {
    v13 = [v9 isEqual:v11];

    if ((v13 & 1) == 0)
    {
      v14 = +[ICDefaults standardDefaults];
      v15 = [v8 propertyListRepresentation];
      [v14 setLastKnownLocalStoreAccountProperties:v15];

      [(ICDCloudServiceStatusMonitor *)self _refreshStorefrontIdentifier];
    }
  }
}

- (void)_handleUserIdentityStoreDidChangeNotification:(id)a3
{
  v4 = a3;
  os_unfair_lock_assert_not_owner(&self->_lock);
  v5 = os_log_create("com.apple.amp.itunescloudd", "Default");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [v4 name];
    v7 = 138543618;
    v8 = self;
    v9 = 2114;
    v10 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}@: Handling %{public}@.", &v7, 0x16u);
  }

  [(ICDCloudServiceStatusMonitor *)self _refreshStorefrontIdentifier];
  [(ICDCloudServiceStatusMonitor *)self _refreshCapabilitiesWithPrivacyAcknowledgementPolicy:0];
}

- (void)_handleActiveUserIdentityDidChangeNotification:(id)a3
{
  v4 = a3;
  os_unfair_lock_assert_not_owner(&self->_lock);
  v5 = os_log_create("com.apple.amp.itunescloudd", "Default");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [v4 name];
    v7 = 138543618;
    v8 = self;
    v9 = 2114;
    v10 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}@: Handling %{public}@.", &v7, 0x16u);
  }

  [(ICDCloudServiceStatusMonitor *)self _notifyObserversForActiveUserIdentityChanged];
  [(ICDCloudServiceStatusMonitor *)self _refreshCapabilitiesWithPrivacyAcknowledgementPolicy:0];
}

- (void)_handleClientConnectionSevered:(id)a3
{
  v4 = a3;
  os_unfair_lock_assert_not_owner(&self->_lock);
  os_unfair_lock_lock(&self->_lock);
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x2020000000;
  v25 = 0x7FFFFFFFFFFFFFFFLL;
  cancellableCapabilitiesRequestOperations = self->_cancellableCapabilitiesRequestOperations;
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_100044BAC;
  v20[3] = &unk_1001DAB98;
  v6 = v4;
  v21 = v6;
  v22 = buf;
  [(NSMutableArray *)cancellableCapabilitiesRequestOperations enumerateObjectsUsingBlock:v20];
  if (*(*&buf[8] + 24) == 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = 0;
  }

  else
  {
    v7 = [(NSMutableArray *)self->_cancellableCapabilitiesRequestOperations objectAtIndex:?];
    [(NSMutableArray *)self->_cancellableCapabilitiesRequestOperations removeObjectAtIndex:*(*&buf[8] + 24)];
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v8 = self->_activeObservationTokenToClientConnectionMapping;
  v9 = [(NSMutableDictionary *)v8 countByEnumeratingWithState:&v16 objects:v23 count:16];
  if (v9)
  {
    v10 = *v17;
    while (2)
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v17 != v10)
        {
          objc_enumerationMutation(v8);
        }

        v12 = *(*(&v16 + 1) + 8 * i);
        v13 = [(NSMutableDictionary *)self->_activeObservationTokenToClientConnectionMapping objectForKey:v12, v16];
        if ([v13 isEqual:v6])
        {
          v9 = v12;

          goto LABEL_14;
        }
      }

      v9 = [(NSMutableDictionary *)v8 countByEnumeratingWithState:&v16 objects:v23 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

LABEL_14:

  _Block_object_dispose(buf, 8);
  os_unfair_lock_unlock(&self->_lock);
  if (v7)
  {
    v14 = os_log_create("com.apple.amp.itunescloudd", "Default");
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543874;
      *&buf[4] = self;
      *&buf[12] = 2114;
      *&buf[14] = v6;
      *&buf[22] = 2114;
      v25 = v7;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "%{public}@: Found capabilities request operation for severed client connection %{public}@: %{public}@. Cancelling that operation.", buf, 0x20u);
    }

    [v7 cancel];
  }

  if (v9)
  {
    v15 = os_log_create("com.apple.amp.itunescloudd", "Default");
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543874;
      *&buf[4] = self;
      *&buf[12] = 2114;
      *&buf[14] = v6;
      *&buf[22] = 2114;
      v25 = v9;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "%{public}@: Found observation token for severed client connection %{public}@: %{public}@. Forcibly ending observing cloud service status for this observation token.", buf, 0x20u);
    }

    [(ICDCloudServiceStatusMonitor *)self endObservingCloudServiceStatusWithToken:v9 completionHandler:&stru_1001DABB8];
  }
}

- (void)_handleClientConnectionInvalidated:(id)a3
{
  v4 = a3;
  os_unfair_lock_assert_not_owner(&self->_lock);
  v5 = os_log_create("com.apple.amp.itunescloudd", "XPC");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138543618;
    v7 = self;
    v8 = 2114;
    v9 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}@: Client connection was invalidated: %{public}@.", &v6, 0x16u);
  }

  [(ICDCloudServiceStatusMonitor *)self _handleClientConnectionSevered:v4];
}

- (void)_handleClientConnectionInterrupted:(id)a3
{
  v4 = a3;
  os_unfair_lock_assert_not_owner(&self->_lock);
  v5 = os_log_create("com.apple.amp.itunescloudd", "XPC");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138543618;
    v7 = self;
    v8 = 2114;
    v9 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}@: Client connection was interrupted: %{public}@.", &v6, 0x16u);
  }

  [(ICDCloudServiceStatusMonitor *)self _handleClientConnectionSevered:v4];
}

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v6 = a3;
  v7 = a4;
  os_unfair_lock_assert_not_owner(&self->_lock);
  v8 = [v7 icd_isConnectionAllowedForService:4];
  if (v8)
  {
    [v7 setExportedObject:self];
    v9 = +[ICCloudServiceStatusRemoteMonitoring serviceInterface];
    [v7 setExportedInterface:v9];

    v10 = +[ICCloudServiceStatusRemoteMonitoring clientInterface];
    [v7 setRemoteObjectInterface:v10];

    objc_initWeak(&location, self);
    objc_initWeak(&from, v7);
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_1000450B0;
    v19[3] = &unk_1001DAB70;
    objc_copyWeak(&v20, &location);
    objc_copyWeak(&v21, &from);
    [v7 setInterruptionHandler:v19];
    v13 = _NSConcreteStackBlock;
    v14 = 3221225472;
    v15 = sub_100045118;
    v16 = &unk_1001DAB70;
    objc_copyWeak(&v17, &location);
    objc_copyWeak(&v18, &from);
    [v7 setInvalidationHandler:&v13];
    [v7 resume];
    v11 = os_log_create("com.apple.amp.itunescloudd", "XPC");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v25 = self;
      v26 = 2114;
      v27 = v7;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%{public}@: Accepted new client connection: %{public}@.", buf, 0x16u);
    }

    objc_destroyWeak(&v18);
    objc_destroyWeak(&v17);
    objc_destroyWeak(&v21);
    objc_destroyWeak(&v20);
    objc_destroyWeak(&from);
    objc_destroyWeak(&location);
  }

  return v8;
}

- (void)_musicKit_importTrackWithID:(id)a3 addingToLibrary:(id)a4 completionHandler:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [v7 integerValue];
  v11 = [v8 BOOLValue];
  v31 = 0;
  v32 = &v31;
  v33 = 0x2050000000;
  v12 = qword_100213B80;
  v34 = qword_100213B80;
  if (!qword_100213B80)
  {
    v26 = _NSConcreteStackBlock;
    v27 = 3221225472;
    v28 = sub_1000454D8;
    v29 = &unk_1001DF318;
    v30 = &v31;
    sub_1000454D8(&v26);
    v12 = v32[3];
  }

  v13 = v12;
  _Block_object_dispose(&v31, 8);
  v14 = [[v12 alloc] initWithStoreItemID:v10 additionalTrackMetadata:0];
  v31 = 0;
  v32 = &v31;
  v33 = 0x2050000000;
  v15 = qword_100213B90;
  v34 = qword_100213B90;
  if (!qword_100213B90)
  {
    v26 = _NSConcreteStackBlock;
    v27 = 3221225472;
    v28 = sub_1000455A0;
    v29 = &unk_1001DF318;
    v30 = &v31;
    sub_1000455A0(&v26);
    v15 = v32[3];
  }

  v16 = v15;
  _Block_object_dispose(&v31, 8);
  v17 = [v15 alloc];
  v35 = v14;
  v18 = [NSArray arrayWithObjects:&v35 count:1];
  v19 = [v17 initUsingLocalDeviceLibraryDestinationWithImportElements:v18 referralObject:0 usingLocalLibraryDestination:v11 usingCloudLibraryDestination:0];

  v31 = 0;
  v32 = &v31;
  v33 = 0x2050000000;
  v20 = qword_100213B98;
  v34 = qword_100213B98;
  if (!qword_100213B98)
  {
    v26 = _NSConcreteStackBlock;
    v27 = 3221225472;
    v28 = sub_100045668;
    v29 = &unk_1001DF318;
    v30 = &v31;
    sub_100045668(&v26);
    v20 = v32[3];
  }

  v21 = v20;
  _Block_object_dispose(&v31, 8);
  v22 = [v20 defaultMediaLibrary];
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_100045730;
  v24[3] = &unk_1001DC668;
  v25 = v9;
  v23 = v9;
  [v22 performStoreItemLibraryImport:v19 withCompletion:v24];
}

- (void)requestMusicKitTokensWithOptions:(unint64_t)a3 clientInfo:(id)a4 completionHandler:(id)a5
{
  v9 = a4;
  v10 = a5;
  os_unfair_lock_assert_not_owner(&self->_lock);
  v11 = +[NSXPCConnection currentConnection];
  if ([objc_opt_class() _isClientAllowedToRequestRestrictedInformationForConnection:v11])
  {
    v23 = 0;
    v12 = [objc_opt_class() _requestingBundleIdentifierForOriginatingClientConnection:v11 clientInfo:v9 error:&v23];
    v13 = v23;
    if (v12 | v13)
    {
      if (v12)
      {
        v14 = [objc_opt_class() _clientInfoForDeveloperTokenRequestWithRequestingApplicationBundleIdentifier:v12];
        v15 = [[ICDeveloperTokenFetchRequest alloc] initWithClientInfo:v14 options:a3 & 1];
        [v15 setClientType:1];
        v19[0] = _NSConcreteStackBlock;
        v19[1] = 3221225472;
        v19[2] = sub_100045BFC;
        v19[3] = &unk_1001DAB48;
        v21 = v10;
        v19[4] = self;
        v20 = v12;
        v22 = a3;
        [v15 performRequestWithResponseHandler:v19];

LABEL_10:
        goto LABEL_11;
      }
    }

    else
    {
      v18 = +[NSAssertionHandler currentHandler];
      [v18 handleFailureInMethod:a2 object:self file:@"ICDCloudServiceStatusMonitor.m" lineNumber:354 description:@"Both requestingApplicationBundleIdentifier and error are nil. This is unexpected."];
    }

    (*(v10 + 2))(v10, 0, v13);
    goto LABEL_10;
  }

  v13 = [NSError msv_errorWithDomain:ICErrorDomain code:-7009 debugDescription:@"Client is not allowed to request MusicKit tokens."];
  v16 = os_log_create("com.apple.amp.itunescloudd", "XPC");
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v17 = [v13 msv_description];
    *buf = 138543874;
    v25 = self;
    v26 = 2114;
    v27 = v17;
    v28 = 2114;
    v29 = v11;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "%{public}@: %{public}@ originatingClientConnection = %{public}@.", buf, 0x20u);
  }

  (*(v10 + 2))(v10, 0, v13);
LABEL_11:
}

- (void)requestUserTokenForDeveloperToken:(id)a3 options:(unint64_t)a4 clientInfo:(id)a5 completionHandler:(id)a6
{
  v8 = a4;
  v11 = a3;
  v12 = a5;
  v13 = a6;
  os_unfair_lock_assert_not_owner(&self->_lock);
  v14 = +[NSXPCConnection currentConnection];
  if ([objc_opt_class() _isClientAllowedToRequestRestrictedInformationForConnection:v14])
  {
    v24 = 0;
    v15 = [objc_opt_class() _requestingBundleIdentifierForOriginatingClientConnection:v14 clientInfo:v12 error:&v24];
    v16 = v24;
    if (v15 | v16)
    {
      if (v15)
      {
        v17 = [objc_opt_class() _clientInfoForUserTokenRequestWithRequestingApplicationBundleIdentifier:v15];
        v18 = [[ICMusicUserTokenFetchRequest alloc] initWithDeveloperToken:v11 clientInfo:v17 options:v8 & 1];
        v22[0] = _NSConcreteStackBlock;
        v22[1] = 3221225472;
        v22[2] = sub_100046140;
        v22[3] = &unk_1001DAAF8;
        v23 = v13;
        [v18 performRequestWithResponseHandler:v22];

LABEL_10:
        goto LABEL_11;
      }
    }

    else
    {
      v21 = +[NSAssertionHandler currentHandler];
      [v21 handleFailureInMethod:a2 object:self file:@"ICDCloudServiceStatusMonitor.m" lineNumber:324 description:@"Both requestingApplicationBundleIdentifier and error are nil. This is unexpected."];
    }

    (*(v13 + 2))(v13, 0, v16);
    goto LABEL_10;
  }

  v16 = [NSError msv_errorWithDomain:ICErrorDomain code:-7009 debugDescription:@"Client is not allowed to request user token."];
  v19 = os_log_create("com.apple.amp.itunescloudd", "XPC");
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    v20 = [v16 msv_description];
    *buf = 138543874;
    v26 = self;
    v27 = 2114;
    v28 = v20;
    v29 = 2114;
    v30 = v14;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "%{public}@: %{public}@ originatingClientConnection = %{public}@.", buf, 0x20u);
  }

  (*(v13 + 2))(v13, 0, v16);
LABEL_11:
}

- (void)requestDeveloperTokenWithOptions:(unint64_t)a3 clientInfo:(id)a4 completionHandler:(id)a5
{
  v6 = a3;
  v9 = a4;
  v10 = a5;
  os_unfair_lock_assert_not_owner(&self->_lock);
  v11 = +[NSXPCConnection currentConnection];
  if ([objc_opt_class() _isClientAllowedToRequestRestrictedInformationForConnection:v11])
  {
    v21 = 0;
    v12 = [objc_opt_class() _requestingBundleIdentifierForOriginatingClientConnection:v11 clientInfo:v9 error:&v21];
    v13 = v21;
    if (v12 | v13)
    {
      if (v12)
      {
        v14 = [objc_opt_class() _clientInfoForDeveloperTokenRequestWithRequestingApplicationBundleIdentifier:v12];
        v15 = [[ICDeveloperTokenFetchRequest alloc] initWithClientInfo:v14 options:v6 & 1];
        [v15 setClientType:1];
        v19[0] = _NSConcreteStackBlock;
        v19[1] = 3221225472;
        v19[2] = sub_10004641C;
        v19[3] = &unk_1001DAAF8;
        v20 = v10;
        [v15 performRequestWithResponseHandler:v19];

LABEL_10:
        goto LABEL_11;
      }
    }

    else
    {
      v18 = +[NSAssertionHandler currentHandler];
      [v18 handleFailureInMethod:a2 object:self file:@"ICDCloudServiceStatusMonitor.m" lineNumber:293 description:@"Both requestingApplicationBundleIdentifier and error are nil. This is unexpected."];
    }

    (*(v10 + 2))(v10, 0, v13);
    goto LABEL_10;
  }

  v13 = [NSError msv_errorWithDomain:ICErrorDomain code:-7009 debugDescription:@"Client is not allowed to request developer token."];
  v16 = os_log_create("com.apple.amp.itunescloudd", "XPC");
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v17 = [v13 msv_description];
    *buf = 138543874;
    v23 = self;
    v24 = 2114;
    v25 = v17;
    v26 = 2114;
    v27 = v11;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "%{public}@: %{public}@ originatingClientConnection = %{public}@.", buf, 0x20u);
  }

  (*(v10 + 2))(v10, 0, v13);
LABEL_11:
}

- (void)requestStorefrontIdentifierWithCompletionHandler:(id)a3
{
  v4 = a3;
  os_unfair_lock_assert_not_owner(&self->_lock);
  v5 = +[NSXPCConnection currentConnection];
  if ([objc_opt_class() _isClientAllowedToRequestRestrictedInformationForConnection:v5])
  {
    os_unfair_lock_lock(&self->_lock);
    v6 = self->_storefrontIdentifier;
    if (v6)
    {
      os_unfair_lock_unlock(&self->_lock);
      v4[2](v4, v6, 0);
    }

    else
    {
      storefrontIdentifierRequestCompletionHandlers = self->_storefrontIdentifierRequestCompletionHandlers;
      if (!storefrontIdentifierRequestCompletionHandlers)
      {
        v10 = objc_alloc_init(NSMutableArray);
        v11 = self->_storefrontIdentifierRequestCompletionHandlers;
        self->_storefrontIdentifierRequestCompletionHandlers = v10;

        storefrontIdentifierRequestCompletionHandlers = self->_storefrontIdentifierRequestCompletionHandlers;
      }

      v12 = objc_retainBlock(v4);
      [(NSMutableArray *)storefrontIdentifierRequestCompletionHandlers addObject:v12];

      os_unfair_lock_unlock(&self->_lock);
      [(ICDCloudServiceStatusMonitor *)self _refreshStorefrontIdentifier];
    }
  }

  else
  {
    v6 = [NSError msv_errorWithDomain:ICErrorDomain code:-7009 debugDescription:@"Client is not allowed to request storefront identifier."];
    v7 = os_log_create("com.apple.amp.itunescloudd", "XPC");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [(NSString *)v6 msv_description];
      v13 = 138543874;
      v14 = self;
      v15 = 2114;
      v16 = v8;
      v17 = 2114;
      v18 = v5;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%{public}@: %{public}@ originatingClientConnection = %{public}@.", &v13, 0x20u);
    }

    (v4)[2](v4, 0, v6);
  }
}

- (void)requestStorefrontCountryCodeWithCompletionHandler:(id)a3
{
  v4 = a3;
  os_unfair_lock_assert_not_owner(&self->_lock);
  v5 = +[NSXPCConnection currentConnection];
  if ([objc_opt_class() _isClientAllowedToRequestRestrictedInformationForConnection:v5])
  {
    os_unfair_lock_lock(&self->_lock);
    v6 = self->_storefrontCountryCode;
    if (v6)
    {
      os_unfair_lock_unlock(&self->_lock);
      v4[2](v4, v6, 0);
    }

    else
    {
      storefrontCountryCodeRequestCompletionHandlers = self->_storefrontCountryCodeRequestCompletionHandlers;
      if (!storefrontCountryCodeRequestCompletionHandlers)
      {
        v10 = objc_alloc_init(NSMutableArray);
        v11 = self->_storefrontCountryCodeRequestCompletionHandlers;
        self->_storefrontCountryCodeRequestCompletionHandlers = v10;

        storefrontCountryCodeRequestCompletionHandlers = self->_storefrontCountryCodeRequestCompletionHandlers;
      }

      v12 = objc_retainBlock(v4);
      [(NSMutableArray *)storefrontCountryCodeRequestCompletionHandlers addObject:v12];

      os_unfair_lock_unlock(&self->_lock);
      [(ICDCloudServiceStatusMonitor *)self _refreshStorefrontCountryCode];
    }
  }

  else
  {
    v6 = [NSError msv_errorWithDomain:ICErrorDomain code:-7009 debugDescription:@"Client is not allowed to request storefront country code."];
    v7 = os_log_create("com.apple.amp.itunescloudd", "XPC");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [(NSString *)v6 msv_description];
      v13 = 138543874;
      v14 = self;
      v15 = 2114;
      v16 = v8;
      v17 = 2114;
      v18 = v5;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%{public}@: %{public}@ originatingClientConnection = %{public}@.", &v13, 0x20u);
    }

    (v4)[2](v4, 0, v6);
  }
}

- (void)requestCapabilitiesWithPrivacyPromptPolicy:(int64_t)a3 completionHandler:(id)a4
{
  v6 = a4;
  os_unfair_lock_assert_not_owner(&self->_lock);
  v7 = +[NSXPCConnection currentConnection];
  if ([objc_opt_class() _isClientAllowedToRequestCapabilitiesForConnection:v7])
  {
    v8 = a3 == 1;
    v9 = [objc_opt_class() _shouldBypassEnforcementOfPrivacyAcknowledgementForClientConnection:v7 forIncomingCloudServiceCapabilitiesRequest:1];
    if (v9)
    {
      v8 = 2;
    }

    os_unfair_lock_lock(&self->_lock);
    if (v9)
    {
      if (self->_hasValidPrivilegedCapabilities)
      {
        v10 = 48;
LABEL_12:
        v14 = *(&self->super.isa + v10);
        os_unfair_lock_unlock(&self->_lock);
        v6[2](v6, v14, 0);
        goto LABEL_16;
      }
    }

    else if (self->_hasValidCapabilities)
    {
      v10 = 24;
      goto LABEL_12;
    }

    v15 = objc_alloc_init(ICDCloudServiceCapabilitiesRequestContext);
    [(ICDCloudServiceCapabilitiesRequestContext *)v15 setCompletionHandler:v6];
    [(ICDCloudServiceCapabilitiesRequestContext *)v15 setPrivacyAcknowledgementPolicy:v8];
    capabilitiesRequestContexts = self->_capabilitiesRequestContexts;
    if (!capabilitiesRequestContexts)
    {
      v17 = objc_alloc_init(NSMutableArray);
      v18 = self->_capabilitiesRequestContexts;
      self->_capabilitiesRequestContexts = v17;

      capabilitiesRequestContexts = self->_capabilitiesRequestContexts;
    }

    [(NSMutableArray *)capabilitiesRequestContexts addObject:v15];

    os_unfair_lock_unlock(&self->_lock);
    [(ICDCloudServiceStatusMonitor *)self _refreshCapabilitiesWithPrivacyAcknowledgementPolicy:v8];
  }

  else
  {
    v11 = [NSError msv_errorWithDomain:ICErrorDomain code:-7009 debugDescription:@"Client is not allowed to request cloud service capabilities."];
    v12 = os_log_create("com.apple.amp.itunescloudd", "XPC");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = [v11 msv_description];
      v19 = 138543874;
      v20 = self;
      v21 = 2114;
      v22 = v13;
      v23 = 2114;
      v24 = v7;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%{public}@: %{public}@ originatingClientConnection = %{public}@.", &v19, 0x20u);
    }

    (v6)[2](v6, 0, v11);
  }

LABEL_16:
}

- (void)endObservingCloudServiceStatusWithToken:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  os_unfair_lock_assert_not_owner(&self->_lock);
  os_unfair_lock_lock(&self->_lock);
  v8 = [(NSMutableDictionary *)self->_activeObservationTokenToClientConnectionMapping objectForKey:v6];

  if (v8)
  {
    [(NSMutableDictionary *)self->_activeObservationTokenToClientConnectionMapping removeObjectForKey:v6];
    v9 = [(NSMutableDictionary *)self->_activeObservationTokenToClientConnectionMapping count];
    v10 = os_log_create("com.apple.amp.itunescloudd", "Default");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 138543618;
      v13 = self;
      v14 = 2114;
      v15 = v6;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%{public}@: Removed cloud service status observer with token: %{public}@.", &v12, 0x16u);
    }

    if (!v9)
    {
      [(ICDCloudServiceStatusMonitor *)self _endObservingCloudServiceStatus];
    }
  }

  else
  {
    v11 = os_log_create("com.apple.amp.itunescloudd", "Default");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 138543618;
      v13 = self;
      v14 = 2114;
      v15 = v6;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%{public}@: Tried to remove unknown cloud service status observer with token: %{public}@. Ignoring.", &v12, 0x16u);
    }
  }

  os_unfair_lock_unlock(&self->_lock);
  v7[2](v7);
}

- (void)beginObservingCloudServiceStatusWithCompletionHandler:(id)a3
{
  v4 = a3;
  os_unfair_lock_assert_not_owner(&self->_lock);
  v5 = +[NSUUID UUID];
  v6 = +[NSXPCConnection currentConnection];
  os_unfair_lock_lock(&self->_lock);
  [(NSMutableDictionary *)self->_activeObservationTokenToClientConnectionMapping setObject:v6 forKey:v5];
  v7 = [(NSMutableDictionary *)self->_activeObservationTokenToClientConnectionMapping count];
  v8 = os_log_create("com.apple.amp.itunescloudd", "Default");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138543618;
    v10 = self;
    v11 = 2114;
    v12 = v5;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%{public}@: Registered new cloud service status observer with token: %{public}@.", &v9, 0x16u);
  }

  if (v7 == 1)
  {
    [(ICDCloudServiceStatusMonitor *)self _beginObservingCloudServiceStatus];
    os_unfair_lock_unlock(&self->_lock);
    [(ICDCloudServiceStatusMonitor *)self _refreshCloudServiceStatus];
  }

  else
  {
    os_unfair_lock_unlock(&self->_lock);
  }

  v4[2](v4, v5);
}

- (void)dealloc
{
  os_unfair_lock_assert_not_owner(&self->_lock);
  os_unfair_lock_lock(&self->_lock);
  [(ICDCloudServiceStatusMonitor *)self _endObservingCloudServiceStatus];
  os_unfair_lock_unlock(&self->_lock);
  v3.receiver = self;
  v3.super_class = ICDCloudServiceStatusMonitor;
  [(ICDCloudServiceStatusMonitor *)&v3 dealloc];
}

- (ICDCloudServiceStatusMonitor)init
{
  v6.receiver = self;
  v6.super_class = ICDCloudServiceStatusMonitor;
  v2 = [(ICDCloudServiceStatusMonitor *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(NSMutableDictionary);
    activeObservationTokenToClientConnectionMapping = v2->_activeObservationTokenToClientConnectionMapping;
    v2->_activeObservationTokenToClientConnectionMapping = v3;

    v2->_lock._os_unfair_lock_opaque = 0;
  }

  return v2;
}

+ (id)_requestingBundleIdentifierForOriginatingClientConnection:(id)a3 clientInfo:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v40 = 0u;
  v41 = 0u;
  if (v8)
  {
    [v8 auditToken];
  }

  *buf = v40;
  *&buf[16] = v41;
  v10 = MSVBundleIDForAuditToken();
  if (!v10)
  {
    v10 = [v9 bundleIdentifier];
    if (v10)
    {
      v11 = os_log_create("com.apple.amp.itunescloudd", "Default");
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543874;
        *&buf[4] = a1;
        *&buf[12] = 2114;
        *&buf[14] = v9;
        *&buf[22] = 2114;
        *&buf[24] = v10;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%{public}@: Failed to retrieve bundle identifier of the requesting application from the audit_token_t; instead, using bundle identifier from %{public}@, i.e. %{public}@.", buf, 0x20u);
      }
    }
  }

  v39 = 0;
  *buf = v40;
  *&buf[16] = v41;
  v12 = [LSBundleRecord bundleRecordForAuditToken:buf error:&v39];
  v13 = v39;
  if (v13)
  {
    v14 = os_log_create("com.apple.amp.itunescloudd", "Default");
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = [v13 msv_description];
      *buf = 138543618;
      *&buf[4] = a1;
      *&buf[12] = 2114;
      *&buf[14] = v15;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "%{public}@: Failed to retrieve bundle extension record with error: %{public}@.", buf, 0x16u);
    }
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_23;
    }

    v14 = v12;
    v16 = [v14 containingBundleRecord];
    objc_opt_class();
    v37 = v16;
    v38 = a1;
    if (objc_opt_isKindOfClass())
    {
      v17 = v16;
    }

    else
    {
      v18 = os_log_create("com.apple.amp.itunescloudd", "Default");
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        v19 = objc_opt_class();
        v20 = NSStringFromClass(v19);
        v21 = objc_opt_class();
        v22 = NSStringFromClass(v21);
        *buf = 138544386;
        *&buf[4] = v38;
        *&buf[12] = 2114;
        *&buf[14] = v14;
        *&buf[22] = 2114;
        *&buf[24] = v20;
        v43 = 2114;
        v44 = v37;
        v45 = 2114;
        v46 = v22;
        v23 = v22;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "%{public}@: Requesting application extension %{public}@ (%{public}@) has a containing bundle which is not an application: %{public}@ (%{public}@).", buf, 0x34u);
      }

      v17 = 0;
    }

    v24 = [v17 bundleIdentifier];
    if (v24)
    {
      v25 = os_log_create("com.apple.amp.itunescloudd", "Default");
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        v26 = objc_opt_class();
        v36 = NSStringFromClass(v26);
        v27 = objc_opt_class();
        v35 = NSStringFromClass(v27);
        *buf = 138544642;
        *&buf[4] = v38;
        *&buf[12] = 2114;
        *&buf[14] = v14;
        *&buf[22] = 2114;
        *&buf[24] = v36;
        v43 = 2114;
        v44 = v24;
        v45 = 2114;
        v46 = v17;
        v47 = 2114;
        v48 = v35;
        _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "%{public}@: Client is an application extension: %{public}@ (%{public}@). Using bundle identifier %{public}@ from containing application: %{public}@ (%{public}@).", buf, 0x3Eu);
      }

      v28 = v24;
      v10 = v28;
    }

    a1 = v38;
  }

LABEL_23:
  if (v10)
  {
    v29 = 0;
    if (!a5)
    {
      goto LABEL_26;
    }

    goto LABEL_25;
  }

  v29 = [NSError msv_errorWithDomain:ICErrorDomain code:-7009 debugDescription:@"Failed to retrieve bundle identifier of the requesting application. The requesting application is likely missing the %@ entitlement.", @"application-identifier"];
  v33 = os_log_create("com.apple.amp.itunescloudd", "Default");
  if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
  {
    v34 = [v29 msv_description];
    *buf = 138543874;
    *&buf[4] = a1;
    *&buf[12] = 2114;
    *&buf[14] = v34;
    *&buf[22] = 2114;
    *&buf[24] = v8;
    _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_ERROR, "%{public}@: %{public}@ originatingClientConnection = %{public}@.", buf, 0x20u);
  }

  if (a5)
  {
LABEL_25:
    v30 = v29;
    *a5 = v29;
  }

LABEL_26:
  v31 = v10;

  return v31;
}

+ (BOOL)_shouldBypassEnforcementOfPrivacyAcknowledgementForClientConnection:(id)a3 forIncomingCloudServiceCapabilitiesRequest:(BOOL)a4
{
  v4 = a4;
  v6 = [a3 valueForEntitlement:@"com.apple.itunesstored.privacy-acknowledged"];
  if (objc_opt_respondsToSelector())
  {
    v7 = [v6 BOOLValue];
    if (v7 && v4)
    {
      v8 = os_log_create("com.apple.amp.itunescloudd", "Default");
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v10 = 138543618;
        v11 = a1;
        v12 = 2114;
        v13 = @"com.apple.itunesstored.privacy-acknowledged";
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%{public}@: Client has %{public}@ entitlement. No need to enforce privacy acknowledgement for cloud service capabilities request.", &v10, 0x16u);
      }

      LOBYTE(v7) = 1;
    }
  }

  else
  {
    LOBYTE(v7) = 0;
  }

  return v7;
}

@end