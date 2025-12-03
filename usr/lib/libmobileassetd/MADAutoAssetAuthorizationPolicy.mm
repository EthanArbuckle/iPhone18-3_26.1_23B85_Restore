@interface MADAutoAssetAuthorizationPolicy
+ (BOOL)_accessibleAssetTypes:(id)types containsAssetType:(id)type;
+ (BOOL)isConnection:(id)connection authorizedForMessage:(id)message;
+ (id)_allowListedAutoAssetTypes;
+ (id)authorizationAssetTypeFromMessage:(id)message alreadyOnStateQueue:(BOOL)queue;
+ (id)issueSandboxExtensionForAuditToken:(id *)token path:(id)path;
@end

@implementation MADAutoAssetAuthorizationPolicy

+ (BOOL)isConnection:(id)connection authorizedForMessage:(id)message
{
  connectionCopy = connection;
  messageCopy = message;
  [NSSet setWithObject:@"com.apple.private.assets.bypass-asset-types-check"];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v7 = v23 = 0u;
  v8 = [v7 countByEnumeratingWithState:&v20 objects:v30 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v21;
    while (2)
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v21 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = [connectionCopy valueForEntitlement:{*(*(&v20 + 1) + 8 * i), v20}];
        v13 = v12;
        if (v12 && ([v12 BOOLValue]& 1) != 0)
        {
          v17 = 1;
          v14 = v7;
          goto LABEL_24;
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v20 objects:v30 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  v14 = [MADAutoAssetAuthorizationPolicy authorizationAssetTypeFromMessage:messageCopy alreadyOnStateQueue:0];
  if (!v14)
  {
    v13 = _MADLog(@"Auto");
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v25 = connectionCopy;
      v26 = 2114;
      v27 = messageCopy;
      _os_log_impl(&dword_0, v13, OS_LOG_TYPE_ERROR, "{MADAutoAssetAuthorizationPolicy}(%{public}@) Request had no asset type listed for message: %{public}@", buf, 0x16u);
    }

    goto LABEL_23;
  }

  v15 = +[MADAutoAssetAuthorizationPolicy _allowListedAutoAssetTypes];
  v16 = [v15 containsObject:v14];

  if ((v16 & 1) == 0)
  {
    v13 = [connectionCopy valueForEntitlement:@"com.apple.private.assets.accessible-asset-types"];
    if (v13)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        if ([MADAutoAssetAuthorizationPolicy _accessibleAssetTypes:v13 containsAssetType:v14])
        {
          v17 = 1;
LABEL_24:

          goto LABEL_25;
        }

        v18 = _MADLog(@"Auto");
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543874;
          v25 = connectionCopy;
          v26 = 2112;
          v27 = v14;
          v28 = 2112;
          v29 = v13;
          _os_log_impl(&dword_0, v18, OS_LOG_TYPE_ERROR, "{MADAutoAssetAuthorizationPolicy}(%{public}@) Client does not have requested asset type: %@ (found: %@)", buf, 0x20u);
        }
      }
    }

LABEL_23:
    v17 = 0;
    goto LABEL_24;
  }

  v17 = 1;
LABEL_25:

  return v17;
}

+ (BOOL)_accessibleAssetTypes:(id)types containsAssetType:(id)type
{
  typesCopy = types;
  typeCopy = type;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v7 = typesCopy;
  v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v8)
  {
    v9 = *v16;
    while (2)
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = *(*(&v15 + 1) + 8 * i);
        if (v11)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            if ([v11 isEqualToString:{typeCopy, v15}] & 1) != 0 || objc_msgSend(v11, "hasPrefix:", @"com.asset.MobileAsset.") && objc_msgSend(v11, "hasSuffix:", @".*") && (objc_msgSend(v11, "isEqualToString:", @"com.asset.MobileAsset.*") & 1) == 0 && (objc_msgSend(v11, "substringToIndex:", objc_msgSend(v11, "length") - 1), v12 = objc_claimAutoreleasedReturnValue(), v13 = objc_msgSend(typeCopy, "hasPrefix:", v12), v12, (v13))
            {
              LOBYTE(v8) = 1;
              goto LABEL_17;
            }
          }
        }
      }

      v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

LABEL_17:

  return v8;
}

+ (id)_allowListedAutoAssetTypes
{
  if (os_variant_has_internal_content())
  {
    v2 = [&off_4F6F80 arrayByAddingObjectsFromArray:&off_4F6F98];
  }

  else
  {
    v2 = &off_4F6F80;
  }

  return v2;
}

+ (id)issueSandboxExtensionForAuditToken:(id *)token path:(id)path
{
  pathCopy = path;
  v6 = pathCopy;
  if (!pathCopy)
  {
LABEL_9:
    v11 = 0;
    goto LABEL_10;
  }

  [pathCopy fileSystemRepresentation];
  v7 = *&token->var0[4];
  *buf = *token->var0;
  v14 = v7;
  v8 = sandbox_extension_issue_file_to_process();
  v9 = _MADLog(@"Auto");
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
  if (!v8)
  {
    if (v10)
    {
      *buf = 138543362;
      *&buf[4] = v6;
      _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, "{MADAutoAssetAuthorizationPolicy}(issueSandboxExtensionForAuditToken) Failed to set sandbox extension for audit token path: %{public}@", buf, 0xCu);
    }

    goto LABEL_9;
  }

  if (v10)
  {
    *buf = 138543362;
    *&buf[4] = v6;
    _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, "{MADAutoAssetAuthorizationPolicy}(issueSandboxExtensionForAuditToken) Set sandbox extension for audit token at path: %{public}@", buf, 0xCu);
  }

  v11 = [NSString stringWithFormat:@"%s", v8];
  free(v8);
LABEL_10:

  return v11;
}

+ (id)authorizationAssetTypeFromMessage:(id)message alreadyOnStateQueue:(BOOL)queue
{
  queueCopy = queue;
  messageCopy = message;
  v6 = objc_alloc_init(NSMutableSet);
  message = [messageCopy message];
  v8 = [message safeObjectForKey:@"instance" ofClass:objc_opt_class()];

  if (v8)
  {
    clientAssetSelector = [v8 clientAssetSelector];
    assetType = [clientAssetSelector assetType];

    if (assetType)
    {
      clientAssetSelector2 = [v8 clientAssetSelector];
      assetType2 = [clientAssetSelector2 assetType];
      [v6 addObject:assetType2];
    }
  }

  if (__isPlatformVersionAtLeast(2, 17, 0, 0))
  {
    message2 = [messageCopy message];
    v14 = [message2 safeObjectForKey:@"setInstance" ofClass:objc_opt_class()];

    if (v14)
    {
      autoAssetEntries = [v14 autoAssetEntries];

      if (autoAssetEntries)
      {
        v54 = queueCopy;
        v55 = v8;
        v56 = messageCopy;
        v69 = 0u;
        v70 = 0u;
        v67 = 0u;
        v68 = 0u;
        autoAssetEntries2 = [v14 autoAssetEntries];
        v17 = [autoAssetEntries2 countByEnumeratingWithState:&v67 objects:v77 count:16];
        if (v17)
        {
          v18 = v17;
          v19 = *v68;
          do
          {
            for (i = 0; i != v18; i = i + 1)
            {
              if (*v68 != v19)
              {
                objc_enumerationMutation(autoAssetEntries2);
              }

              v21 = *(*(&v67 + 1) + 8 * i);
              assetSelector = [v21 assetSelector];
              assetType3 = [assetSelector assetType];

              if (assetType3)
              {
                assetSelector2 = [v21 assetSelector];
                assetType4 = [assetSelector2 assetType];
                [v6 addObject:assetType4];
              }
            }

            v18 = [autoAssetEntries2 countByEnumeratingWithState:&v67 objects:v77 count:16];
          }

          while (v18);
        }

        v65 = 0u;
        v66 = 0u;
        v63 = 0u;
        v64 = 0u;
        v53 = v14;
        obj = [v14 entriesWhenTargeting];
        v26 = [obj countByEnumeratingWithState:&v63 objects:v76 count:16];
        if (v26)
        {
          v27 = v26;
          v58 = *v64;
          do
          {
            for (j = 0; j != v27; j = j + 1)
            {
              if (*v64 != v58)
              {
                objc_enumerationMutation(obj);
              }

              v29 = *(*(&v63 + 1) + 8 * j);
              v59 = 0u;
              v60 = 0u;
              v61 = 0u;
              v62 = 0u;
              autoAssetEntries3 = [v29 autoAssetEntries];
              v31 = [autoAssetEntries3 countByEnumeratingWithState:&v59 objects:v75 count:16];
              if (v31)
              {
                v32 = v31;
                v33 = *v60;
                do
                {
                  for (k = 0; k != v32; k = k + 1)
                  {
                    if (*v60 != v33)
                    {
                      objc_enumerationMutation(autoAssetEntries3);
                    }

                    v35 = *(*(&v59 + 1) + 8 * k);
                    assetSelector3 = [v35 assetSelector];
                    assetType5 = [assetSelector3 assetType];

                    if (assetType5)
                    {
                      assetSelector4 = [v35 assetSelector];
                      assetType6 = [assetSelector4 assetType];
                      [v6 addObject:assetType6];
                    }
                  }

                  v32 = [autoAssetEntries3 countByEnumeratingWithState:&v59 objects:v75 count:16];
                }

                while (v32);
              }
            }

            v27 = [obj countByEnumeratingWithState:&v63 objects:v76 count:16];
          }

          while (v27);
        }

        v8 = v55;
        messageCopy = v56;
        queueCopy = v54;
        v14 = v53;
      }

      clientDomainName = [v14 clientDomainName];
      if (clientDomainName)
      {
        v41 = clientDomainName;
        assetSetIdentifier = [v14 assetSetIdentifier];

        if (assetSetIdentifier)
        {
          clientDomainName2 = [v14 clientDomainName];
          assetSetIdentifier2 = [v14 assetSetIdentifier];
          v45 = [MADAutoAssetControlManager assetTypeForClientDomainName:clientDomainName2 forSetIdentifier:assetSetIdentifier2 alreadyOnStateQueue:queueCopy];

          if (v45)
          {
            [v6 addObject:v45];
          }
        }
      }
    }
  }

  if ([v6 count] >= 2)
  {
    v46 = _MADLog(@"Auto");
    if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
    {
      summary = [messageCopy summary];
      *buf = 138543618;
      v72 = v6;
      v73 = 2114;
      v74 = summary;
      _os_log_impl(&dword_0, v46, OS_LOG_TYPE_DEFAULT, "{MADAutoAssetAuthorizationPolicy}(authorizationAssetTypeFromMessage) Found multiple asset types: %{public}@, for message: %{public}@", buf, 0x16u);
    }
  }

  allObjects = [v6 allObjects];
  firstObject = [allObjects firstObject];

  if (_MAPreferencesIsVerboseLoggingEnabled())
  {
    v50 = _MADLog(@"Auto");
    if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
    {
      summary2 = [messageCopy summary];
      *buf = 138543618;
      v72 = firstObject;
      v73 = 2114;
      v74 = summary2;
      _os_log_impl(&dword_0, v50, OS_LOG_TYPE_DEFAULT, "{MADAutoAssetAuthorizationPolicy}(authorizationAssetTypeFromMessage) Found asset type: %{public}@, for message: %{public}@", buf, 0x16u);
    }
  }

  return firstObject;
}

@end