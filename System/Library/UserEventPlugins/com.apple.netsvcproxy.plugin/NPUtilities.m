@interface NPUtilities
+ (BOOL)compareAddressEndpoints:(id)a3 endpoint2:(id)a4 addressOnly:(BOOL)a5;
+ (BOOL)hasPacketDrop:(id)a3;
+ (BOOL)printDictionaryAsJson:(id)a3 debugName:(id)a4;
+ (BOOL)rollDiceWithSuccessRatio:(id)a3;
+ (__SecKey)copyKeyFromKeychainWithIdentifier:(id)a3;
+ (id)connectionInfoToDict:(id)a3 dictionary:(id)a4;
+ (id)copyBase64HeaderValueFromData:(id)a3;
+ (id)copyCurrentNetworkCharacteristicsForPath:(id)a3;
+ (id)copyDataFromKeychainWithIdentifier:(id)a3 accountName:(id)a4;
+ (id)copyDataHexString:(id)a3;
+ (id)copyItemIdentifiersFromKeychainWithAccountName:(id)a3;
+ (id)copyNetworkDescription:(id)a3;
+ (id)copyTrueClientIPAddressFromPreferences;
+ (id)copyUUIDsForSigningIdentifier:(id)a3 executablePath:(id)a4;
+ (id)createMaskedIPv4Address:(id)a3 prefix:(unint64_t)a4;
+ (id)createMaskedIPv6Address:(id)a3 prefix:(unint64_t)a4;
+ (id)endpointFromString:(id)a3 defaultPortString:(id)a4;
+ (id)getInterfaceName:(int64_t)a3;
+ (id)getInterfaceTypeString:(int64_t)a3;
+ (id)hexDumpBytes:(const void *)a3 length:(unint64_t)a4;
+ (id)machoUUIDFromPID:(int)a3;
+ (id)mergeHTTPHeaders:(id)a3 headerOverrides:(id)a4;
+ (id)parseXHost:(id)a3;
+ (id)sharedEmphemeralSession;
+ (id)stripWhitespace:(id)a3;
+ (id)timestampIdentifierToName:(unint64_t)a3;
+ (int64_t)certificateDateIsValid:(__SecCertificate *)a3;
+ (int64_t)interfaceTypeOfInterface:(id)a3;
+ (int64_t)interfaceTypeOfNWInterface:(id)a3;
+ (int64_t)protocolTypeFromPath:(id)a3 endpoint:(id)a4;
+ (unint64_t)parseXRTT:(id)a3;
+ (unint64_t)totalDataInKeychainWithIdentifier:(id)a3;
+ (void)parseXTimeout:(id)a3 hardTTLInSeconds:(double *)a4;
+ (void)postNotification:(id)a3 value:(unint64_t)a4;
+ (void)removeDataFromKeychainWithIdentifier:(id)a3;
+ (void)removeDataFromKeychainWithIdentifier:(id)a3 accountName:(id)a4;
+ (void)removeKeyFromKeychainWithIdentifier:(id)a3;
+ (void)saveDataToKeychain:(id)a3 withIdentifier:(id)a4 accountName:(id)a5;
+ (void)saveKeyToKeychain:(__SecKey *)a3 withIdentifier:(id)a4;
@end

@implementation NPUtilities

+ (id)sharedEmphemeralSession
{
  if (qword_17DE8 != -1)
  {
    sub_A8A0();
  }

  v3 = qword_17DE0;

  return v3;
}

+ (id)copyDataFromKeychainWithIdentifier:(id)a3 accountName:(id)a4
{
  v5 = a3;
  v6 = a4;
  v12[0] = kSecClass;
  v12[1] = kSecAttrService;
  v13[0] = kSecClassGenericPassword;
  v13[1] = v5;
  v12[2] = kSecAttrAccount;
  v12[3] = kSecMatchLimit;
  v13[2] = v6;
  v13[3] = kSecMatchLimitOne;
  v12[4] = kSecReturnData;
  v13[4] = &__kCFBooleanTrue;
  v7 = [NSDictionary dictionaryWithObjects:v13 forKeys:v12 count:5];
  v11 = 0;
  if (SecItemCopyMatching(v7, &v11) || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v9 = nplog_obj();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      sub_A8B4();
    }

    v8 = 0;
  }

  else
  {
    v8 = v11;
  }

  return v8;
}

+ (void)saveDataToKeychain:(id)a3 withIdentifier:(id)a4 accountName:(id)a5
{
  v7 = a4;
  v8 = a5;
  v18[0] = kSecClass;
  v18[1] = kSecAttrService;
  v19[0] = kSecClassGenericPassword;
  v19[1] = v7;
  v18[2] = kSecAttrAccount;
  v19[2] = v8;
  v9 = a3;
  v10 = [NSDictionary dictionaryWithObjects:v19 forKeys:v18 count:3];
  v16[0] = kSecAttrService;
  v16[1] = kSecAttrAccount;
  v17[0] = v7;
  v17[1] = v8;
  v16[2] = kSecValueData;
  v16[3] = kSecAttrAccessible;
  v17[2] = v9;
  v17[3] = kSecAttrAccessibleAfterFirstUnlockThisDeviceOnly;
  v11 = [NSDictionary dictionaryWithObjects:v17 forKeys:v16 count:4];

  v12 = SecItemUpdate(v10, v11);
  if (v12 == -25300)
  {
    v13 = [(__CFDictionary *)v11 mutableCopy];
    [v13 setObject:kSecClassGenericPassword forKeyedSubscript:kSecClass];
    v12 = SecItemAdd(v13, 0);
  }

  if (v12)
  {
    v14 = nplog_obj();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_A91C();
    }

    [a1 removeDataFromKeychainWithIdentifier:v7 accountName:v8];
  }
}

+ (unint64_t)totalDataInKeychainWithIdentifier:(id)a3
{
  v3 = a3;
  v21[0] = kSecClass;
  v21[1] = kSecAttrService;
  v22[0] = kSecClassGenericPassword;
  v22[1] = v3;
  v21[2] = kSecMatchLimit;
  v21[3] = kSecReturnData;
  v22[2] = kSecMatchLimitAll;
  v22[3] = &__kCFBooleanTrue;
  v4 = [NSDictionary dictionaryWithObjects:v22 forKeys:v21 count:4];
  result = 0;
  v5 = SecItemCopyMatching(v4, &result);
  v6 = result;
  if (v5)
  {
    goto LABEL_2;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [v6 length];
    goto LABEL_18;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
LABEL_2:
    v7 = 0;
  }

  else
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v8 = v6;
    v9 = [v8 countByEnumeratingWithState:&v15 objects:v20 count:16];
    if (v9)
    {
      v10 = v9;
      v7 = 0;
      v11 = *v16;
      do
      {
        for (i = 0; i != v10; i = i + 1)
        {
          if (*v16 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v15 + 1) + 8 * i);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v7 = &v7[[v13 length]];
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v15 objects:v20 count:16];
      }

      while (v10);
    }

    else
    {
      v7 = 0;
    }
  }

LABEL_18:

  return v7;
}

+ (void)removeDataFromKeychainWithIdentifier:(id)a3
{
  v3 = a3;
  v13[0] = kSecClass;
  v13[1] = kSecAttrService;
  v14[0] = kSecClassGenericPassword;
  v14[1] = v3;
  v4 = [NSDictionary dictionaryWithObjects:v14 forKeys:v13 count:2];
  v5 = SecItemDelete(v4);
  if (v5 != -25300 && v5 != 0)
  {
    v7 = v5;
    v8 = nplog_obj();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138412546;
      v10 = v3;
      v11 = 1024;
      v12 = v7;
      _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "Failed to delete %@ from the keychain: %d", &v9, 0x12u);
    }
  }
}

+ (void)removeDataFromKeychainWithIdentifier:(id)a3 accountName:(id)a4
{
  v5 = a3;
  v16[0] = kSecClass;
  v16[1] = kSecAttrService;
  v17[0] = kSecClassGenericPassword;
  v17[1] = v5;
  v16[2] = kSecAttrAccount;
  v17[2] = a4;
  v6 = a4;
  v7 = [NSDictionary dictionaryWithObjects:v17 forKeys:v16 count:3];

  v8 = SecItemDelete(v7);
  if (v8 != -25300 && v8 != 0)
  {
    v10 = v8;
    v11 = nplog_obj();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 138412546;
      v13 = v5;
      v14 = 1024;
      v15 = v10;
      _os_log_impl(&dword_0, v11, OS_LOG_TYPE_DEFAULT, "Failed to delete %@ from the keychain: %d", &v12, 0x12u);
    }
  }
}

+ (__SecKey)copyKeyFromKeychainWithIdentifier:(id)a3
{
  v3 = a3;
  v10[0] = kSecClass;
  v10[1] = kSecAttrApplicationLabel;
  v11[0] = kSecClassKey;
  v11[1] = v3;
  v10[2] = kSecMatchLimit;
  v10[3] = kSecReturnRef;
  v11[2] = kSecMatchLimitOne;
  v11[3] = &__kCFBooleanTrue;
  v4 = [NSDictionary dictionaryWithObjects:v11 forKeys:v10 count:4];
  cf = 0;
  if (SecItemCopyMatching(v4, &cf) || (v5 = CFGetTypeID(cf), v5 != SecKeyGetTypeID()))
  {
    v7 = nplog_obj();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      sub_A8B4();
    }

    if (cf)
    {
      CFRelease(cf);
    }

    v6 = 0;
  }

  else
  {
    v6 = cf;
  }

  return v6;
}

+ (void)saveKeyToKeychain:(__SecKey *)a3 withIdentifier:(id)a4
{
  v5 = a4;
  v8[0] = kSecClass;
  v8[1] = kSecAttrApplicationLabel;
  v8[2] = kSecValueRef;
  v8[3] = kSecAttrAccessible;
  v9[0] = kSecClassKey;
  v9[1] = v5;
  v9[2] = a3;
  v9[3] = kSecAttrAccessibleAfterFirstUnlockThisDeviceOnly;
  v6 = [NSDictionary dictionaryWithObjects:v9 forKeys:v8 count:4];
  if (SecItemAdd(v6, 0))
  {
    v7 = nplog_obj();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_A984();
    }
  }
}

+ (void)removeKeyFromKeychainWithIdentifier:(id)a3
{
  v3 = a3;
  v13[0] = kSecClass;
  v13[1] = kSecAttrApplicationLabel;
  v14[0] = kSecClassKey;
  v14[1] = v3;
  v4 = [NSDictionary dictionaryWithObjects:v14 forKeys:v13 count:2];
  v5 = SecItemDelete(v4);
  if (v5 != -25300 && v5 != 0)
  {
    v7 = v5;
    v8 = nplog_obj();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138412546;
      v10 = v3;
      v11 = 1024;
      v12 = v7;
      _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "Failed to delete key %@ from the keychain: %d", &v9, 0x12u);
    }
  }
}

+ (id)copyItemIdentifiersFromKeychainWithAccountName:(id)a3
{
  v3 = a3;
  v22[0] = kSecClass;
  v22[1] = kSecAttrAccount;
  v23[0] = kSecClassGenericPassword;
  v23[1] = v3;
  v22[2] = kSecMatchLimit;
  v22[3] = kSecReturnAttributes;
  v23[2] = kSecMatchLimitAll;
  v23[3] = &__kCFBooleanTrue;
  v4 = [NSDictionary dictionaryWithObjects:v23 forKeys:v22 count:4];
  result = 0;
  if (SecItemCopyMatching(v4, &result) || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = nplog_obj();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      sub_A8B4();
    }

    goto LABEL_19;
  }

  v5 = result;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v16 objects:v21 count:16];
  if (!v6)
  {
LABEL_19:
    v8 = 0;
    goto LABEL_20;
  }

  v7 = v6;
  v14 = v4;
  v15 = v3;
  v8 = 0;
  v9 = *v17;
  do
  {
    for (i = 0; i != v7; i = i + 1)
    {
      if (*v17 != v9)
      {
        objc_enumerationMutation(v5);
      }

      v11 = *(*(&v16 + 1) + 8 * i);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v12 = [v11 objectForKeyedSubscript:kSecAttrService];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          if (!v8)
          {
            v8 = objc_alloc_init(NSMutableArray);
          }

          [v8 addObject:{v12, v14, v15}];
        }
      }
    }

    v7 = [v5 countByEnumeratingWithState:&v16 objects:v21 count:16];
  }

  while (v7);
  v4 = v14;
  v3 = v15;
LABEL_20:

  if (result)
  {
    CFRelease(result);
  }

  return v8;
}

+ (int64_t)interfaceTypeOfInterface:(id)a3
{
  v3 = nw_interface_get_type(a3) - 1;
  if (v3 < 3)
  {
    return v3 + 1;
  }

  else
  {
    return 0;
  }
}

+ (int64_t)interfaceTypeOfNWInterface:(id)a3
{
  result = [a3 type];
  if ((result - 1) >= 3)
  {
    return 0;
  }

  return result;
}

+ (id)getInterfaceName:(int64_t)a3
{
  if ((a3 - 1) > 3)
  {
    return @"UNKNOWN";
  }

  else
  {
    return off_147E8[a3 - 1];
  }
}

+ (int64_t)protocolTypeFromPath:(id)a3 endpoint:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (nw_path_has_ipv6(v5))
  {
    v7 = !nw_path_has_ipv4(v5);
    if (!v6)
    {
LABEL_13:
      if (v7)
      {
        v10 = 2;
      }

      else
      {
        v10 = 1;
      }

      goto LABEL_16;
    }
  }

  else
  {
    v7 = 0;
    if (!v6)
    {
      goto LABEL_13;
    }
  }

  if (nw_endpoint_get_type(v6) != nw_endpoint_type_address)
  {
    goto LABEL_13;
  }

  sa_family = nw_endpoint_get_address(v6)->sa_family;
  v9 = 3;
  if (!v7)
  {
    v9 = 1;
  }

  if (sa_family != 2)
  {
    v9 = 0;
  }

  if (sa_family == 30)
  {
    v10 = 2;
  }

  else
  {
    v10 = v9;
  }

LABEL_16:

  return v10;
}

+ (BOOL)hasPacketDrop:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3 && [v3 state] && objc_msgSend(v4, "state") != &dword_4 + 1)
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v7 = [v4 TCPInfo];
    v5 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v5)
    {
      v8 = *v14;
      while (2)
      {
        for (i = 0; i != v5; i = i + 1)
        {
          if (*v14 != v8)
          {
            objc_enumerationMutation(v7);
          }

          v10 = *(*(&v13 + 1) + 8 * i);
          v11 = [v4 TCPInfo];
          v12 = [v11 objectForKeyedSubscript:v10];

          if ([v12 length] == &stru_1A8 && *(objc_msgSend(v12, "bytes") + 84))
          {

            LOBYTE(v5) = 1;
            goto LABEL_17;
          }
        }

        v5 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
        if (v5)
        {
          continue;
        }

        break;
      }
    }

LABEL_17:
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  return v5;
}

+ (id)stripWhitespace:(id)a3
{
  v3 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [v3 length])
  {
    v4 = [v3 stringByReplacingOccurrencesOfString:@"\\s+" withString:&stru_15680 options:1024 range:{0, objc_msgSend(v3, "length")}];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)hexDumpBytes:(const void *)a3 length:(unint64_t)a4
{
  v4 = 0;
  if (a3 && a4)
  {
    v7 = malloc_type_malloc((2 * a4) | 1, 0x100004077774924uLL);
    if (v7)
    {
      v8 = v7;
      v9 = 0;
      v10 = 2;
      do
      {
        sprintf(&v8[v10 - 2], "%x", *(a3 + v9++));
        if (v9 >= a4)
        {
          break;
        }

        v11 = v10 >= 2 * a4 - 1;
        v10 += 2;
      }

      while (!v11);
      v8[2 * a4] = 0;
      v4 = [[NSString alloc] initWithCString:v8 encoding:4];
      free(v8);
    }

    else
    {
      v4 = 0;
    }
  }

  return v4;
}

+ (void)parseXTimeout:(id)a3 hardTTLInSeconds:(double *)a4
{
  v9 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v9 doubleValue];
    v6 = v5 * 60.0;
    v7 = v5 <= 0.0;
    v8 = 92160.0;
    if (!v7)
    {
      v8 = v6;
    }

    if (v8 > 151200.0)
    {
      v8 = 151200.0;
    }
  }

  else
  {
    v8 = 92160.0;
  }

  *a4 = v8;
}

+ (id)parseXHost:(id)a3
{
  v3 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [v3 length])
  {
    v4 = [v3 componentsSeparatedByString:{@", "}];
    v6 = 0;
    if ([v4 count])
    {
      v7 = 0;
      *&v5 = 138412290;
      v13 = v5;
      do
      {
        v8 = [v4 objectAtIndexedSubscript:{v7, v13}];
        v9 = [NPUtilities endpointFromString:v8 defaultPortString:0];

        if (v9)
        {
          if (!v6)
          {
            v6 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(v4, "count")}];
          }

          [v6 addObject:v9];
        }

        else
        {
          v10 = nplog_obj();
          if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
          {
            v11 = [v4 objectAtIndexedSubscript:v7];
            *buf = v13;
            v15 = v11;
            _os_log_error_impl(&dword_0, v10, OS_LOG_TYPE_ERROR, "Invalid host specification: %@", buf, 0xCu);
          }
        }

        ++v7;
      }

      while (v7 < [v4 count]);
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (unint64_t)parseXRTT:(id)a3
{
  v3 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [v3 length])
  {
    v4 = [v3 componentsSeparatedByString:{@", "}];
    if ([v4 count])
    {
      v5 = [v4 objectAtIndexedSubscript:0];
      if ([v5 integerValue])
      {
        v6 = [v5 integerValue] / 1000 + 1;
      }

      else
      {
        v6 = 0;
      }
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (id)copyBase64HeaderValueFromData:(id)a3
{
  v3 = [a3 base64EncodedStringWithOptions:0];
  v4 = [NSString stringWithFormat:@":%@:", v3];

  return v4;
}

+ (id)copyCurrentNetworkCharacteristicsForPath:(id)a3
{
  v3 = a3;
  if ([v3 status] == &dword_0 + 1)
  {
    v4 = [v3 interface];
    v5 = [v4 interfaceName];
    if (v5 && nwi_state_copy())
    {
      [v5 UTF8String];
      ifstate = nwi_state_get_ifstate();
      if (ifstate)
      {
        if ((nwi_ifstate_get_flags() & 3) != 0)
        {
          v7 = objc_alloc_init(NSMutableData);
          nwi_ifstate_get_signature();
          nwi_ifstate_get_signature();
          [v7 appendBytes:"default_signature" length:18];
          v8 = (nwi_ifstate_get_flags() >> 1) & 1;
          v13[0] = v7;
          v12[0] = @"Signature";
          v12[1] = @"InterfaceType";
          v9 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v4 type]);
          v13[1] = v9;
          v12[2] = @"HasIPv6";
          v10 = [NSNumber numberWithBool:v8];
          v13[2] = v10;
          ifstate = [NSDictionary dictionaryWithObjects:v13 forKeys:v12 count:3];
        }

        else
        {
          ifstate = 0;
        }
      }

      nwi_state_release();
    }

    else
    {
      ifstate = 0;
    }
  }

  else
  {
    ifstate = 0;
  }

  return ifstate;
}

+ (id)connectionInfoToDict:(id)a3 dictionary:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = v6;
  *v74 = 0;
  v75 = 0;
  v76 = 0;
  if (!v5)
  {
    v10 = 0;
    goto LABEL_57;
  }

  if (!v6)
  {
    v7 = objc_alloc_init(NSMutableDictionary);
  }

  v8 = [v5 pathType];
  if (v8 > 5)
  {
    v9 = 0;
  }

  else
  {
    v9 = off_14808[v8];
  }

  [v7 setObject:v9 forKeyedSubscript:@"PathType"];
  if ([v5 pathType] == &dword_0 + 2)
  {
    v11 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v5 fallbackReason]);
    [v7 setObject:v11 forKeyedSubscript:@"FallbackReasonNumber"];

    v12 = +[NSPConnectionInfo getFallbackReasonDescription:](NSPConnectionInfo, "getFallbackReasonDescription:", [v5 fallbackReason]);
    [v7 setObject:v12 forKeyedSubscript:@"FallbackReason"];

    v13 = [v5 fallbackReasonCategory];
    if (v13 <= 4)
    {
      v9 = off_14838[v13];
    }

    [v7 setObject:v9 forKeyedSubscript:@"FallbackCategory"];
    v14 = [NSNumber alloc];
    [v5 fallbackDelay];
    v15 = [v14 initWithDouble:?];
    v16 = @"FallbackDelay";
    v17 = v7;
    v18 = v15;
    goto LABEL_12;
  }

  if ([v5 pathType] == &dword_0 + 1)
  {
    v19 = [v5 edgeType];
    if (v19 <= 3)
    {
      v9 = off_14860[v19];
    }

    [v7 setObject:v9 forKeyedSubscript:@"EdgeType"];
    v20 = [v5 edgeAddress];
    if (v20)
    {
      v21 = [v5 edgeAddress];
      [v7 setObject:v21 forKeyedSubscript:@"EdgeAddress"];
    }

    else
    {
      [v7 setObject:@"unknown" forKeyedSubscript:@"EdgeAddress"];
    }

    v15 = [v5 firstTxByteTimeStamp];
    if (v15)
    {
      v22 = [v5 firstTxByteTimeStamp];
      v23 = [v22 description];
      [v7 setObject:v23 forKeyedSubscript:@"tunnelFirstTxByteTimestamp"];

      goto LABEL_21;
    }

    v18 = @"unknown";
    v16 = @"tunnelFirstTxByteTimestamp";
    v17 = v7;
LABEL_12:
    [v17 setObject:v18 forKeyedSubscript:v16];
LABEL_21:
  }

  if ([v5 isMultipath])
  {
    v24 = @"yes";
  }

  else
  {
    v24 = @"no";
  }

  [v7 setObject:v24 forKeyedSubscript:@"IsMultipath"];
  v25 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v5 multipathSubflowCount]);
  [v7 setObject:v25 forKeyedSubscript:@"SubflowCount"];

  v26 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v5 multipathConnectedSubflowCount]);
  [v7 setObject:v26 forKeyedSubscript:@"ConnectedSubflowCount"];

  if ([v5 isTFOProbeSucceeded])
  {
    v27 = @"yes";
  }

  else
  {
    v27 = @"no";
  }

  [v7 setObject:v27 forKeyedSubscript:@"IsTFOProbeSucceeded"];
  if (if_indextoname([v5 multipathPrimarySubflowInterfaceIndex], v74))
  {
    v28 = [NSString stringWithUTF8String:v74];
    [v7 setObject:v28 forKeyedSubscript:@"PrimarySubflowInterface"];
  }

  v29 = [v5 multipathSubflowSwitchCounts];
  if (v29)
  {
    v30 = v29;
    v31 = [v5 multipathSubflowSwitchCounts];
    v32 = [v31 count];

    if (v32)
    {
      v33 = [v5 multipathSubflowSwitchCounts];
      [v7 setObject:v33 forKeyedSubscript:@"SwitchCounts"];
    }
  }

  [v5 connectionDelay];
  if (v34 > 0.0)
  {
    [v5 connectionDelay];
    v35 = [NSNumber numberWithDouble:?];
    [v7 setObject:v35 forKeyedSubscript:@"ConnectionDelay"];
  }

  [v5 firstTxByteDelay];
  if (v36 > 0.0)
  {
    [v5 firstTxByteDelay];
    v37 = [NSNumber numberWithDouble:?];
    [v7 setObject:v37 forKeyedSubscript:@"FirstTxByteDelay"];
  }

  [v5 timeToFirstByte];
  if (v38 > 0.0)
  {
    [v5 timeToFirstByte];
    v39 = [NSNumber numberWithDouble:?];
    [v7 setObject:v39 forKeyedSubscript:@"TimeToFirstByte"];
  }

  if ([v5 tunnelConnectionError])
  {
    v40 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v5 tunnelConnectionError]);
    [v7 setObject:v40 forKeyedSubscript:@"ConnectionError"];
  }

  v41 = [v5 TCPInfo];
  if (v41)
  {
    v42 = v41;
    v43 = [v5 TCPInfo];
    v44 = [v43 count];

    if (v44)
    {
      v62 = v7;
      v65 = objc_alloc_init(NSMutableDictionary);
      v67 = 0u;
      v68 = 0u;
      v69 = 0u;
      v70 = 0u;
      obj = [v5 TCPInfo];
      v66 = [obj countByEnumeratingWithState:&v67 objects:v73 count:16];
      if (v66)
      {
        v64 = *v68;
        do
        {
          for (i = 0; i != v66; i = i + 1)
          {
            if (*v68 != v64)
            {
              objc_enumerationMutation(obj);
            }

            v46 = *(*(&v67 + 1) + 8 * i);
            v47 = [v5 TCPInfo];
            [v47 objectForKeyedSubscript:v46];
            v49 = v48 = v5;

            v50 = [v49 bytes];
            v71[0] = @"TxBytes";
            v51 = [NSNumber numberWithUnsignedLongLong:*(v50 + 76)];
            v72[0] = v51;
            v71[1] = @"TxPackets";
            v52 = [NSNumber numberWithUnsignedLongLong:*(v50 + 68)];
            v72[1] = v52;
            v71[2] = @"RxBytes";
            v53 = [NSNumber numberWithUnsignedLongLong:*(v50 + 108)];
            v72[2] = v53;
            v71[3] = @"RxPackets";
            v54 = [NSNumber numberWithUnsignedLongLong:*(v50 + 100)];
            v72[3] = v54;
            v71[4] = @"Resend";
            v55 = [NSNumber numberWithUnsignedLongLong:*(v50 + 284)];
            v72[4] = v55;
            v56 = [NSDictionary dictionaryWithObjects:v72 forKeys:v71 count:5];

            [v65 setObject:v56 forKeyedSubscript:v46];
            v5 = v48;
          }

          v66 = [obj countByEnumeratingWithState:&v67 objects:v73 count:16];
        }

        while (v66);
      }

      v7 = v62;
      [v62 setObject:v65 forKeyedSubscript:@"TCPMetrics"];
    }
  }

  [v5 timeIntervalSinceLastUsage];
  if (v57 > 0.0)
  {
    [v5 timeIntervalSinceLastUsage];
    v58 = [NSNumber numberWithDouble:?];
    [v7 setObject:v58 forKeyedSubscript:@"TimeSinceLastUsage"];
  }

  if ([v5 TFOSucceeded])
  {
    v59 = @"yes";
  }

  else
  {
    v59 = @"no";
  }

  [v7 setObject:v59 forKeyedSubscript:@"TFOSucceeded"];
  v60 = [v5 timingIntervals];
  [v7 setObject:v60 forKeyedSubscript:@"TimingIntervals"];

  v7 = v7;
  v10 = v7;
LABEL_57:

  return v10;
}

+ (BOOL)printDictionaryAsJson:(id)a3 debugName:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (![NSJSONSerialization isValidJSONObject:v5])
  {
    printf("%s are not a valid JSON object\n", [v6 UTF8String]);
LABEL_6:
    v10 = 0;
    goto LABEL_7;
  }

  v14 = 0;
  v7 = [NSJSONSerialization dataWithJSONObject:v5 options:1 error:&v14];
  v8 = v14;
  if (!v7)
  {
    v11 = [v6 UTF8String];
    v12 = [v8 description];
    printf("Failed to create JSON data from the %s: %s\n", v11, [v12 UTF8String]);

    goto LABEL_6;
  }

  v9 = [[NSString alloc] initWithData:v7 encoding:4];
  puts([v9 UTF8String]);

  v10 = 1;
LABEL_7:

  return v10;
}

+ (id)endpointFromString:(id)a3 defaultPortString:(id)a4
{
  v5 = a4;
  v6 = [NPUtilities stripWhitespace:a3];
  v7 = [v6 componentsSeparatedByString:@"@"];
  v8 = [v6 componentsSeparatedByString:@"."];
  if ([v8 count] >= 3)
  {
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v9 = v8;
    v10 = [v9 countByEnumeratingWithState:&v24 objects:v28 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v25;
      while (2)
      {
        for (i = 0; i != v11; i = i + 1)
        {
          if (*v25 != v12)
          {
            objc_enumerationMutation(v9);
          }

          if ([*(*(&v24 + 1) + 8 * i) isEqualToString:@"_tcp"])
          {
            v23 = [v9 objectAtIndexedSubscript:0];
            v17 = [v9 objectAtIndexedSubscript:{objc_msgSend(v9, "count") - 1}];
            v18 = [v9 objectAtIndexedSubscript:1];
            if ([v9 count] - 4 > 0xFFFFFFFFFFFFFFFCLL)
            {
              v21 = v18;
            }

            else
            {
              v19 = (&dword_0 + 2);
              do
              {
                v20 = [v9 objectAtIndexedSubscript:v19];
                v21 = [v18 stringByAppendingFormat:@".%@", v20];

                ++v19;
                v18 = v21;
              }

              while (v19 < [v9 count] - 1);
            }

            v16 = [NWBonjourServiceEndpoint endpointWithName:v23 type:v21 domain:v17];

            goto LABEL_22;
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v24 objects:v28 count:16];
        if (v11)
        {
          continue;
        }

        break;
      }
    }
  }

  if ([v7 count] < 2)
  {
    if (v5)
    {
      v16 = [NWHostEndpoint endpointWithHostname:v6 port:v5];
    }

    else
    {
      v16 = 0;
    }
  }

  else
  {
    v14 = [v7 objectAtIndexedSubscript:0];
    v15 = [v7 objectAtIndexedSubscript:1];
    v16 = [NWHostEndpoint endpointWithHostname:v14 port:v15];
  }

LABEL_22:

  return v16;
}

+ (BOOL)compareAddressEndpoints:(id)a3 endpoint2:(id)a4 addressOnly:(BOOL)a5
{
  v7 = a3;
  v8 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = v8;
      v10 = [v7 address];
      v11 = [v9 address];
      v12 = v10[1];
      if (v12 == v11[1])
      {
        if (v12 == 30)
        {
          if (*v10 >= 0x1Cu && *v11 >= 0x1Cu && (a5 || *(v10 + 1) == *(v11 + 1)))
          {
            v13 = *(v10 + 1) == *(v11 + 1) && *(v10 + 2) == *(v11 + 2);
            goto LABEL_22;
          }
        }

        else if (v12 == 2 && *v10 >= 0x10u && *v11 >= 0x10u && (a5 || *(v10 + 1) == *(v11 + 1)))
        {
          v13 = *(v10 + 1) == *(v11 + 1);
LABEL_22:
          v14 = v13;
          goto LABEL_17;
        }
      }

      v14 = 0;
LABEL_17:

      goto LABEL_18;
    }
  }

  v14 = 0;
LABEL_18:

  return v14;
}

+ (id)getInterfaceTypeString:(int64_t)a3
{
  if ((a3 - 1) > 2)
  {
    return @"Other";
  }

  else
  {
    return off_14880[a3 - 1];
  }
}

+ (BOOL)rollDiceWithSuccessRatio:(id)a3
{
  v3 = a3;
  bytes = 0;
  if (SecRandomCopyBytes(kSecRandomDefault, 4uLL, &bytes) < 0)
  {
    v8 = nplog_obj();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_AA68(v8);
    }

    v7 = 0;
  }

  else
  {
    v4 = (bytes % 0x2710) / 10000.0;
    v5 = nplog_obj();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      sub_A9EC(v5, v4);
    }

    [v3 doubleValue];
    v7 = v4 < v6;
  }

  return v7;
}

+ (id)timestampIdentifierToName:(unint64_t)a3
{
  if (a3 - 1 > 0xE)
  {
    return @"EnableNSP";
  }

  else
  {
    return off_14898[a3 - 1];
  }
}

+ (id)copyDataHexString:(id)a3
{
  v3 = a3;
  if ([v3 length])
  {
    v4 = v12;
    memset(v12, 0, sizeof(v12));
    v5 = [v3 bytes];
    v11 = 60;
    if ([v3 length])
    {
      v6 = 0;
      do
      {
        snprintf(v4, 3uLL, "%02x", v5[v6]);
        v7 = v4 + 2;
        v8 = v4 + 2 - &v11;
        if (v6 && (v6 & 3) == 0 && v8 <= 254)
        {
          v4[2] = 32;
          v7 = v4 + 3;
          v8 = v4 + 3 - &v11;
        }

        if (++v6 >= [v3 length])
        {
          break;
        }

        v4 = v7;
      }

      while (v8 < 254);
      if (v8 > 254)
      {
        goto LABEL_15;
      }
    }

    else
    {
      v7 = v12;
    }

    *v7++ = 62;
LABEL_15:
    *v7 = 0;
    v9 = [[NSString alloc] initWithUTF8String:&v11];
    goto LABEL_16;
  }

  v9 = &stru_15680;
LABEL_16:

  return v9;
}

+ (id)copyNetworkDescription:(id)a3
{
  v3 = a3;
  v4 = [v3 objectForKeyedSubscript:@"InterfaceType"];
  v5 = [v3 objectForKeyedSubscript:@"Signature"];

  v6 = [NSString alloc];
  v7 = +[NPUtilities getInterfaceTypeString:](NPUtilities, "getInterfaceTypeString:", [v4 intValue]);
  v8 = [NPUtilities copyDataHexString:v5];
  v9 = [v6 initWithFormat:@"(%@): %@", v7, v8];

  return v9;
}

+ (int64_t)certificateDateIsValid:(__SecCertificate *)a3
{
  if (a3)
  {
    SecCertificateNotValidBefore();
    v4 = v3;
    if (v3 == 0.0)
    {
      v5 = 0;
    }

    else
    {
      v5 = CFDateCreate(kCFAllocatorDefault, v3);
    }

    SecCertificateNotValidAfter();
    v8 = v7;
    if (v7 == 0.0)
    {
      v9 = 0;
    }

    else
    {
      v9 = CFDateCreate(kCFAllocatorDefault, v7);
    }

    Current = CFAbsoluteTimeGetCurrent();
    if (Current == 0.0)
    {
      v12 = 0;
      v6 = 4;
    }

    else
    {
      v11 = CFDateCreate(0, Current);
      v12 = v11;
      v6 = 4;
      if (v5 && v11)
      {
        if (CFDateCompare(v11, v5, 0) == kCFCompareLessThan)
        {
          v13 = nplog_obj();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            v6 = 2;
            _os_log_impl(&dword_0, v13, OS_LOG_TYPE_INFO, "Current time before valid time", buf, 2u);
          }

          else
          {
            v6 = 2;
          }

LABEL_23:

          v20 = 0;
          v21 = 0;
          v19 = 0;
          v14 = CFCalendarCreateWithIdentifier(kCFAllocatorDefault, kCFGregorianCalendar);
          if (v14)
          {
            v15 = v14;
            CFCalendarDecomposeAbsoluteTime(v14, v4, "yMdHm", &v21 + 4, &v21, &v20 + 4, &v20, &v19);
            v16 = nplog_obj();
            if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
            {
              *buf = 67110144;
              v23 = HIDWORD(v21);
              v24 = 1024;
              v25 = v21;
              v26 = 1024;
              v27 = HIDWORD(v20);
              v28 = 1024;
              v29 = v20;
              v30 = 1024;
              v31 = v19;
              _os_log_impl(&dword_0, v16, OS_LOG_TYPE_INFO, "Certificate not valid before yr %d, mon %d, days %d, hours %d, min %d\n", buf, 0x20u);
            }

            CFCalendarDecomposeAbsoluteTime(v15, v8, "yMdHm", &v21 + 4, &v21, &v20 + 4, &v20, &v19);
            v17 = nplog_obj();
            if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
            {
              *buf = 67110144;
              v23 = HIDWORD(v21);
              v24 = 1024;
              v25 = v21;
              v26 = 1024;
              v27 = HIDWORD(v20);
              v28 = 1024;
              v29 = v20;
              v30 = 1024;
              v31 = v19;
              _os_log_impl(&dword_0, v17, OS_LOG_TYPE_INFO, "Certificate not valid after yr %d, mon %d, days %d, hours %d, min %d\n", buf, 0x20u);
            }

            CFRelease(v15);
          }

          goto LABEL_29;
        }

        if (v9 && CFDateCompare(v12, v9, 0) == kCFCompareGreaterThan)
        {
          v13 = nplog_obj();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&dword_0, v13, OS_LOG_TYPE_INFO, "Current time after valid time", buf, 2u);
          }

          v6 = 3;
          goto LABEL_23;
        }

        v6 = 1;
      }
    }

LABEL_29:
    CFRelease(v5);
    CFRelease(v9);
    CFRelease(v12);
    return v6;
  }

  return 4;
}

+ (void)postNotification:(id)a3 value:(unint64_t)a4
{
  v5 = a3;
  v6 = NPGetInternalQueue();
  dispatch_assert_queue_V2(v6);

  out_token = -1;
  if (!notify_register_check([v5 UTF8String], &out_token))
  {
    v7 = 0;
    if (notify_get_state(out_token, &v7) || v7 != a4)
    {
      v7 = a4;
      if (!notify_set_state(out_token, a4))
      {
        notify_post([v5 UTF8String]);
      }
    }

    notify_cancel(out_token);
  }
}

+ (id)copyTrueClientIPAddressFromPreferences
{
  if (!os_variant_allows_internal_security_policies())
  {
    return 0;
  }

  v2 = CFPreferencesCopyAppValue(@"NSPTrueClientIPAddress", kCFPreferencesCurrentApplication);
  if (v2 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v3 = nplog_obj();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 138543362;
      v7 = v2;
      _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "Detected true client ip address in preferences file: %{public}@", &v6, 0xCu);
    }

    v4 = v2;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)machoUUIDFromPID:(int)a3
{
  v7 = 0;
  memset(v6, 0, sizeof(v6));
  v3 = 0;
  if (proc_pidinfo(a3, 17, 1uLL, v6, 56) == 56)
  {
    v3 = [[NSUUID alloc] initWithUUIDBytes:v6];
  }

  v4 = nplog_obj();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    sub_AB04();
  }

  return v3;
}

+ (id)createMaskedIPv4Address:(id)a3 prefix:(unint64_t)a4
{
  if (a3)
  {
    v6 = a3;
    v7 = sub_5808(NPUtilities, a4);
    if (v7)
    {
      v11 = 0;
      inet_pton(2, [v6 UTF8String], &v11 + 4);
      inet_pton(2, [v7 UTF8String], &v11);
      HIDWORD(v11) &= v11;
      v8 = sub_5730(NPUtilities, &v11 + 4, 4uLL, 2);
      goto LABEL_7;
    }
  }

  else
  {
    v9 = 0;
    v7 = nplog_obj();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      sub_AB6C(v7);
    }
  }

  v8 = 0;
LABEL_7:

  return v8;
}

+ (id)createMaskedIPv6Address:(id)a3 prefix:(unint64_t)a4
{
  v5 = a3;
  if (v5)
  {
    v6 = sub_58B0(NPUtilities, a4);
    if (v6)
    {
      v10 = 0uLL;
      v9 = 0uLL;
      inet_pton(30, [v5 UTF8String], &v10);
      inet_pton(30, [v6 UTF8String], &v9);
      v10 = vandq_s8(v9, v10);
      v7 = sub_5730(NPUtilities, &v10, 0x10uLL, 30);
      goto LABEL_7;
    }
  }

  else
  {
    v6 = nplog_obj();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      sub_ABF0(v6);
    }
  }

  v7 = 0;
LABEL_7:

  return v7;
}

+ (id)copyUUIDsForSigningIdentifier:(id)a3 executablePath:(id)a4
{
  v5 = a3;
  v6 = a4;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = sub_5CBC;
  v16 = sub_5CCC;
  v17 = 0;
  [v5 UTF8String];
  [v6 UTF8String];
  v7 = NEHelperCacheCopyAppUUIDMapping();
  v8 = v7;
  if (v7 && xpc_get_type(v7) == &_xpc_type_array)
  {
    applier[0] = _NSConcreteStackBlock;
    applier[1] = 3221225472;
    applier[2] = sub_5CD4;
    applier[3] = &unk_147C8;
    applier[4] = &v12;
    xpc_array_apply(v8, applier);
  }

  v9 = v13[5];

  _Block_object_dispose(&v12, 8);
  return v9;
}

+ (id)mergeHTTPHeaders:(id)a3 headerOverrides:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (v6)
  {
    v23 = v5;
    if (v5)
    {
      v7 = [[NSMutableDictionary alloc] initWithDictionary:v5];
    }

    else
    {
      v7 = objc_alloc_init(NSMutableDictionary);
    }

    v8 = v7;
    v9 = [v6 componentsSeparatedByString:{@";", v6}];;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v10 = [v9 countByEnumeratingWithState:&v25 objects:v33 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v26;
      do
      {
        for (i = 0; i != v11; i = i + 1)
        {
          if (*v26 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = [*(*(&v25 + 1) + 8 * i) componentsSeparatedByString:@"="];
          if ([v14 count]<= 2 && [v14 count])
          {
            v15 = [v14 firstObject];
            v16 = [v15 length];

            if (!v16)
            {
              goto LABEL_26;
            }

            v17 = [v14 firstObject];
            v18 = [v14 lastObject];
            if (-[NSObject count](v14, "count") == &dword_0 + 1 || ![v18 length])
            {
              v20 = nplog_obj();
              if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
              {
                v24 = [v8 objectForKey:v17];
                *buf = 138412546;
                v30 = v17;
                v31 = 2112;
                v32 = v24;
                _os_log_debug_impl(&dword_0, v20, OS_LOG_TYPE_DEBUG, "Removing header %@ due to user-configured headers, current value is %@", buf, 0x16u);
              }

              [v8 removeObjectForKey:v17];
            }

            else
            {
              [v8 setValue:v18 forKey:v17];
              v19 = nplog_obj();
              if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
              {
                *buf = 138412546;
                v30 = v17;
                v31 = 2112;
                v32 = v18;
                _os_log_debug_impl(&dword_0, v19, OS_LOG_TYPE_DEBUG, "Adding/replacing header %@ with value %@ due to user-configured headers", buf, 0x16u);
              }
            }
          }

          else
          {
            v17 = nplog_obj();
            if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              v30 = v14;
              _os_log_error_impl(&dword_0, v17, OS_LOG_TYPE_ERROR, "Skipping malformed header override: %@", buf, 0xCu);
            }
          }

LABEL_26:
        }

        v11 = [v9 countByEnumeratingWithState:&v25 objects:v33 count:16];
      }

      while (v11);
    }

    v6 = v22;
    v5 = v23;
  }

  else
  {
    v8 = v5;
  }

  return v8;
}

@end