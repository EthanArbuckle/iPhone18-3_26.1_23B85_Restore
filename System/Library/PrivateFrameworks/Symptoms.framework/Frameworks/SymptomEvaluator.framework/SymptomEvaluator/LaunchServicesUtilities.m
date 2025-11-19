@interface LaunchServicesUtilities
+ (id)appBundleIdentifierFromBundleRecord:(id)a3 isWebBrowser:(BOOL *)a4;
+ (id)implicitlyAssumedIdentityEntitlementForBundleIdentifier:(id)a3;
+ (void)bundleIdentifier:(id)a3 hasEntitlement:(id)a4 ofClass:(Class)a5 handler:(id)a6;
@end

@implementation LaunchServicesUtilities

+ (void)bundleIdentifier:(id)a3 hasEntitlement:(id)a4 ofClass:(Class)a5 handler:(id)a6
{
  v52 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v11 = a6;
  v12 = objc_autoreleasePoolPush();
  v41 = 0;
  v13 = otherLogHandle;
  if (os_log_type_enabled(otherLogHandle, OS_LOG_TYPE_INFO))
  {
    *buf = 138477827;
    v43 = v9;
    _os_log_impl(&dword_23255B000, v13, OS_LOG_TYPE_INFO, "Fetching LSBundleRecord for %{private}@", buf, 0xCu);
  }

  v40 = 0;
  v14 = [MEMORY[0x277CC1E90] bundleRecordWithBundleIdentifier:v9 allowPlaceholder:0 error:&v40];
  v15 = v40;
  if (v14)
  {
    v38 = v12;
    v16 = [LaunchServicesUtilities appBundleIdentifierFromBundleRecord:v14 isWebBrowser:&v41];
    if (!v16)
    {
      v26 = otherLogHandle;
      if (os_log_type_enabled(otherLogHandle, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138478083;
        v43 = v9;
        v44 = 2113;
        v45 = v14;
        _os_log_impl(&dword_23255B000, v26, OS_LOG_TYPE_DEBUG, "No appBundleIdentifier found for %{private}@ in bundleRecord %{private}@", buf, 0x16u);
      }

      (*(v11 + 2))(v11, 0, 6, v41);
      goto LABEL_31;
    }

    v17 = v16;
    if (([v16 isEqualToString:v9] & 1) == 0)
    {
      v37 = v10;
      v18 = otherLogHandle;
      if (os_log_type_enabled(otherLogHandle, OS_LOG_TYPE_INFO))
      {
        *buf = 138477827;
        v43 = v17;
        _os_log_impl(&dword_23255B000, v18, OS_LOG_TYPE_INFO, "Fetching final LSBundleRecord for %{private}@", buf, 0xCu);
      }

      v39 = v15;
      v19 = [MEMORY[0x277CC1E90] bundleRecordWithBundleIdentifier:v17 allowPlaceholder:0 error:&v39];
      v20 = v39;

      if (!v19)
      {
        (*(v11 + 2))(v11, 0, 7, v41);
        v14 = v17;
        v15 = v20;
        v10 = v37;
        goto LABEL_31;
      }

      v21 = [LaunchServicesUtilities appBundleIdentifierFromBundleRecord:v19 isWebBrowser:&v41];

      v17 = v21;
      v14 = v19;
      v15 = v20;
      v10 = v37;
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v27 = otherLogHandle;
      if (os_log_type_enabled(otherLogHandle, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138478083;
        v43 = v17;
        v44 = 1024;
        LODWORD(v45) = v41;
        _os_log_impl(&dword_23255B000, v27, OS_LOG_TYPE_DEBUG, "Not an app for %{private}@, isWebBrowser: %d", buf, 0x12u);
      }

      (*(v11 + 2))(v11, 0, 5, v41);

      goto LABEL_32;
    }

    v22 = v10;
    v14 = v14;
    v23 = [v14 appTags];
    v24 = v23;
    if (v23 && [v23 containsObject:@"hidden"])
    {
      v25 = otherLogHandle;
      if (os_log_type_enabled(otherLogHandle, OS_LOG_TYPE_INFO))
      {
        *buf = 138478083;
        v43 = v17;
        v44 = 1024;
        LODWORD(v45) = v41;
        _os_log_impl(&dword_23255B000, v25, OS_LOG_TYPE_INFO, "Hidden app for %{private}@, isWebBrowser: %d", buf, 0x12u);
      }

      (*(v11 + 2))(v11, 0, 4, v41);
    }

    else
    {
      v28 = [v14 entitlements];
      v29 = [v28 objectForKey:v22 ofClass:a5];

      v30 = otherLogHandle;
      if (os_log_type_enabled(otherLogHandle, OS_LOG_TYPE_INFO))
      {
        v31 = v30;
        v32 = objc_opt_class();
        v33 = NSStringFromClass(v32);
        *buf = 138478851;
        v43 = v29;
        v44 = 2112;
        v45 = v33;
        v46 = 2113;
        v47 = v17;
        v48 = 2112;
        v49 = v22;
        v50 = 1024;
        v51 = v41;
        _os_log_impl(&dword_23255B000, v31, OS_LOG_TYPE_INFO, "Fetched entitlementObj: %{private}@, class: %@, for: %{private}@, entitlement: %@, isWebBrowser: %d", buf, 0x30u);
      }

      if (v29)
      {
        v34 = v29;
        v35 = 0;
      }

      else
      {
        v34 = 0;
        v35 = 1;
      }

      (*(v11 + 2))(v11, v34, v35, v41);
    }

    v10 = v22;
LABEL_31:
    v12 = v38;
LABEL_32:

    goto LABEL_33;
  }

  (*(v11 + 2))(v11, 0, 7, 0);
LABEL_33:

  objc_autoreleasePoolPop(v12);
  v36 = *MEMORY[0x277D85DE8];
}

+ (id)appBundleIdentifierFromBundleRecord:(id)a3 isWebBrowser:(BOOL *)a4
{
  v30 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (!v5)
  {
LABEL_20:
    v7 = 0;
    goto LABEL_21;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [v5 containingBundleRecord];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v12 = otherLogHandle;
      if (os_log_type_enabled(otherLogHandle, OS_LOG_TYPE_ERROR))
      {
        v13 = v12;
        v14 = [v5 bundleIdentifier];
        v15 = [v6 bundleIdentifier];
        v16 = objc_opt_class();
        v17 = NSStringFromClass(v16);
        v24 = 138478339;
        v25 = v14;
        v26 = 2113;
        v27 = v15;
        v28 = 2112;
        v29 = v17;
        _os_log_impl(&dword_23255B000, v13, OS_LOG_TYPE_ERROR, "Unexpected nested extensions: %{private}@ -> %{private}@ (%@)", &v24, 0x20u);
      }

      v7 = 0;
      goto LABEL_17;
    }

    v7 = [v6 bundleIdentifier];
    if (a4)
    {
      *a4 = [v6 isWebBrowser];
    }

    v8 = otherLogHandle;
    if (!os_log_type_enabled(otherLogHandle, OS_LOG_TYPE_INFO))
    {
LABEL_17:

      goto LABEL_21;
    }

    v9 = v8;
    v10 = [v5 bundleIdentifier];
    v24 = 138477827;
    v25 = v10;
    _os_log_impl(&dword_23255B000, v9, OS_LOG_TYPE_INFO, "Received containingBundleRecord for (%{private}@)", &v24, 0xCu);

LABEL_13:
    goto LABEL_17;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v18 = otherLogHandle;
    if (os_log_type_enabled(otherLogHandle, OS_LOG_TYPE_ERROR))
    {
      v19 = v18;
      v20 = objc_opt_class();
      v21 = NSStringFromClass(v20);
      v24 = 138412290;
      v25 = v21;
      _os_log_impl(&dword_23255B000, v19, OS_LOG_TYPE_ERROR, "Unexpected class for bundleRecord (%@)", &v24, 0xCu);
    }

    goto LABEL_20;
  }

  v7 = [v5 bundleIdentifier];
  if (a4)
  {
    *a4 = [v5 isWebBrowser];
  }

  v11 = otherLogHandle;
  if (os_log_type_enabled(otherLogHandle, OS_LOG_TYPE_INFO))
  {
    v6 = v11;
    v9 = [v5 bundleIdentifier];
    v24 = 138477827;
    v25 = v9;
    _os_log_impl(&dword_23255B000, v6, OS_LOG_TYPE_INFO, "Received LSApplication for (%{private}@)", &v24, 0xCu);
    goto LABEL_13;
  }

LABEL_21:

  v22 = *MEMORY[0x277D85DE8];

  return v7;
}

+ (id)implicitlyAssumedIdentityEntitlementForBundleIdentifier:(id)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = implicitlyAssumedIdentityEntitlementForBundleIdentifier__privacyAttributionCache;
  if (!implicitlyAssumedIdentityEntitlementForBundleIdentifier__privacyAttributionCache)
  {
    [LaunchServicesUtilities(ImplicitlyAssumedIdentityEntitlement) implicitlyAssumedIdentityEntitlementForBundleIdentifier:?];
    v5 = v16;
  }

  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__7;
  v20 = __Block_byref_object_dispose__7;
  v21 = [v5 entryForKey:v4];
  v6 = v17[5];
  v7 = domainTrackingLogHandle;
  v8 = os_log_type_enabled(domainTrackingLogHandle, OS_LOG_TYPE_DEBUG);
  if (v6)
  {
    if (v8)
    {
      *buf = 138477827;
      v23 = v4;
      _os_log_impl(&dword_23255B000, v7, OS_LOG_TYPE_DEBUG, "Found privacy attribution cached entry for %{private}@", buf, 0xCu);
    }
  }

  else
  {
    if (v8)
    {
      *buf = 138412290;
      v23 = v4;
      _os_log_impl(&dword_23255B000, v7, OS_LOG_TYPE_DEBUG, "Cache miss, looking up entitlements for %@", buf, 0xCu);
    }

    v9 = objc_opt_class();
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __121__LaunchServicesUtilities_ImplicitlyAssumedIdentityEntitlement__implicitlyAssumedIdentityEntitlementForBundleIdentifier___block_invoke;
    v13[3] = &unk_27898CDC8;
    v14 = v4;
    v15 = &v16;
    [a1 bundleIdentifier:v14 hasEntitlement:@"com.apple.private.attribution.implicitly-assumed-identity" ofClass:v9 handler:v13];
  }

  v10 = v17[5];
  _Block_object_dispose(&v16, 8);

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

void __121__LaunchServicesUtilities_ImplicitlyAssumedIdentityEntitlement__implicitlyAssumedIdentityEntitlementForBundleIdentifier___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v34 = *MEMORY[0x277D85DE8];
  v7 = a2;
  if (v7)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = v7;
      v9 = [v8 objectForKeyedSubscript:@"type"];
      v10 = [v8 objectForKeyedSubscript:@"value"];
      v11 = v10;
      v12 = domainTrackingLogHandle;
      if (v9 && v10)
      {
        if (os_log_type_enabled(domainTrackingLogHandle, OS_LOG_TYPE_DEBUG))
        {
          v30 = 138412547;
          v31 = v9;
          v32 = 2113;
          v33 = v11;
          _os_log_impl(&dword_23255B000, v12, OS_LOG_TYPE_DEBUG, "Entitlement has type '%@' and value %{private}@", &v30, 0x16u);
        }

        if ([v9 isEqualToString:@"bundleID"])
        {
          v13 = v11;
          v14 = domainTrackingLogHandle;
          if (os_log_type_enabled(domainTrackingLogHandle, OS_LOG_TYPE_DEFAULT))
          {
            v15 = *(a1 + 32);
            v30 = 138478083;
            v31 = v15;
            v32 = 2113;
            v33 = v13;
            _os_log_impl(&dword_23255B000, v14, OS_LOG_TYPE_DEFAULT, "Entitlement for %{private}@ has implied identifier %{private}@", &v30, 0x16u);
          }

          a3 = 2;
          goto LABEL_21;
        }

        v27 = [v9 isEqualToString:@"path"];
        v12 = domainTrackingLogHandle;
        if (v27)
        {
          if (os_log_type_enabled(domainTrackingLogHandle, OS_LOG_TYPE_DEFAULT))
          {
            v28 = *(a1 + 32);
            v30 = 138477827;
            v31 = v28;
            _os_log_impl(&dword_23255B000, v12, OS_LOG_TYPE_DEFAULT, "Entitlement for %{private}@ is 'path' type", &v30, 0xCu);
          }

          v13 = 0;
          a3 = 3;
          goto LABEL_21;
        }

        if (os_log_type_enabled(domainTrackingLogHandle, OS_LOG_TYPE_ERROR))
        {
          v29 = *(a1 + 32);
          v30 = 138412547;
          v31 = v9;
          v32 = 2113;
          v33 = v29;
          v22 = "Found unexpected 'type' of %@ in entitlement for %{private}@";
          goto LABEL_19;
        }
      }

      else if (os_log_type_enabled(domainTrackingLogHandle, OS_LOG_TYPE_ERROR))
      {
        v30 = 138412547;
        v31 = v9;
        v32 = 2113;
        v33 = v11;
        v22 = "Entitlement keys are missing expected values - 'type': %@, 'value': %{private}@";
LABEL_19:
        _os_log_impl(&dword_23255B000, v12, OS_LOG_TYPE_ERROR, v22, &v30, 0x16u);
      }

      a3 = 0;
      v13 = 0;
LABEL_21:

      goto LABEL_22;
    }

    v18 = domainTrackingLogHandle;
    if (os_log_type_enabled(domainTrackingLogHandle, OS_LOG_TYPE_ERROR))
    {
      v19 = v18;
      v20 = objc_opt_class();
      v21 = NSStringFromClass(v20);
      v30 = 138412290;
      v31 = v21;
      _os_log_impl(&dword_23255B000, v19, OS_LOG_TYPE_ERROR, "Found unexpected object of class %@ for entitlement, expecting a dictionary", &v30, 0xCu);
    }

    a3 = 0;
  }

  else
  {
    v16 = domainTrackingLogHandle;
    if (os_log_type_enabled(domainTrackingLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      v17 = *(a1 + 32);
      v30 = 138478083;
      v31 = v17;
      v32 = 2048;
      v33 = a3;
      _os_log_impl(&dword_23255B000, v16, OS_LOG_TYPE_DEFAULT, "Ignored in LaunchServices for %{private}@, type %lu", &v30, 0x16u);
    }
  }

  v13 = 0;
LABEL_22:
  v23 = [[ImplicitlyAssumedIdentityEntitlement alloc] initWithType:a3 impliedBundleID:v13 isWebBrowser:a4];
  v24 = *(*(a1 + 40) + 8);
  v25 = *(v24 + 40);
  *(v24 + 40) = v23;

  [implicitlyAssumedIdentityEntitlementForBundleIdentifier__privacyAttributionCache addEntry:*(*(*(a1 + 40) + 8) + 40) forKey:*(a1 + 32)];
  v26 = *MEMORY[0x277D85DE8];
}

@end