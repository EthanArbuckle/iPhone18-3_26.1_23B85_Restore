@interface RMSecurityUtilities
+ (BOOL)checkValidAfterWithCertificate:(__SecCertificate *)certificate interval:(double)interval;
+ (__SecKey)_deserializePrivateKey:(id)key privateKeyIsExportable:(BOOL)exportable;
+ (id)_serializePrivateKey:(__SecKey *)key privateKeyIsExportable:(BOOL)exportable;
+ (id)deserializeCertificateChain:(id)chain;
+ (id)serializeCertificateChain:(id)chain;
+ (void)generateSelfSignedCertificateAndPrivateKeyWithID:(id)d completionHandler:(id)handler;
@end

@implementation RMSecurityUtilities

+ (id)_serializePrivateKey:(__SecKey *)key privateKeyIsExportable:(BOOL)exportable
{
  if (exportable)
  {
    error = 0;
    v4 = SecKeyCopyExternalRepresentation(key, &error);
    v5 = v4;
    if (v4)
    {
      v6 = [(__CFData *)v4 base64EncodedStringWithOptions:0];
    }

    else
    {
      v8 = error;
      v9 = +[RMLog securityUtilities];
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_1000631EC();
      }

      v6 = 0;
    }
  }

  else
  {
    v5 = SecKeyCopyAttributes(key);
    v7 = [(__CFDictionary *)v5 objectForKeyedSubscript:kSecAttrTokenOID];
    v6 = [v7 base64EncodedStringWithOptions:0];
  }

  return v6;
}

+ (__SecKey)_deserializePrivateKey:(id)key privateKeyIsExportable:(BOOL)exportable
{
  exportableCopy = exportable;
  keyCopy = key;
  v6 = [[NSData alloc] initWithBase64EncodedString:keyCopy options:0];
  if (v6)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if (exportableCopy)
      {
        v17[0] = kSecAttrKeyType;
        v17[1] = kSecAttrKeyClass;
        v18[0] = kSecAttrKeyTypeECSECPrimeRandom;
        v18[1] = kSecAttrKeyClassPrivate;
        v7 = [NSDictionary dictionaryWithObjects:v18 forKeys:v17 count:2];
        v14 = 0;
        v8 = SecKeyCreateWithData(v6, v7, &v14);
        if (!v8)
        {
          v9 = v14;
          v10 = +[RMLog securityUtilities];
          if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_12;
          }

          goto LABEL_13;
        }
      }

      else
      {
        v14 = 0;
        v12 = SecAccessControlCreateWithFlags(0, kSecAttrAccessibleAlwaysThisDeviceOnlyPrivate, 0x40000000uLL, &v14);
        v15[0] = kSecAttrIsPermanent;
        v15[1] = kSecAttrTokenID;
        v16[0] = &__kCFBooleanFalse;
        v16[1] = kSecAttrTokenIDAppleKeyStore;
        v15[2] = kSecAttrTokenOID;
        v15[3] = kSecAttrAccessControl;
        v16[2] = v6;
        v16[3] = v12;
        v7 = [NSDictionary dictionaryWithObjects:v16 forKeys:v15 count:4];
        v8 = SecKeyCreateWithData(+[NSData data], v7, &v14);
        CFRelease(v12);
        if (!v8)
        {
          v9 = v14;
          v10 = +[RMLog securityUtilities];
          if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
          {
LABEL_12:
            sub_100063254();
          }

LABEL_13:
        }
      }

      goto LABEL_15;
    }
  }

  v11 = +[RMLog securityUtilities];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    sub_1000632BC();
  }

  v8 = 0;
LABEL_15:

  return v8;
}

+ (id)deserializeCertificateChain:(id)chain
{
  chainCopy = chain;
  v4 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [chainCopy count]);
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v5 = chainCopy;
  v6 = [v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v19;
LABEL_3:
    v9 = 0;
    while (1)
    {
      if (*v19 != v8)
      {
        objc_enumerationMutation(v5);
      }

      v10 = *(*(&v18 + 1) + 8 * v9);
      v11 = [NSData alloc];
      v12 = [v11 initWithBase64EncodedString:v10 options:{0, v18}];
      if (!v12)
      {
        break;
      }

      v13 = v12;
      [v12 bytes];
      [v13 length];
      v14 = SecCertificateCreateWithBytes();
      if (!v14)
      {
        v16 = +[RMLog securityUtilities];
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          sub_1000630B4();
        }

LABEL_16:
        v15 = 0;
        goto LABEL_17;
      }

      [v4 addObject:v14];

      if (v7 == ++v9)
      {
        v7 = [v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
        if (v7)
        {
          goto LABEL_3;
        }

        goto LABEL_10;
      }
    }

    v13 = +[RMLog securityUtilities];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_100063324();
    }

    goto LABEL_16;
  }

LABEL_10:

  v15 = [v4 copy];
LABEL_17:

  return v15;
}

+ (id)serializeCertificateChain:(id)chain
{
  chainCopy = chain;
  v4 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [chainCopy count]);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = chainCopy;
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = SecCertificateCopyData(*(*(&v14 + 1) + 8 * i));
        v11 = [(__CFData *)v10 base64EncodedStringWithOptions:0, v14];
        [v4 addObject:v11];
      }

      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  v12 = [v4 copy];

  return v12;
}

+ (void)generateSelfSignedCertificateAndPrivateKeyWithID:(id)d completionHandler:(id)handler
{
  dCopy = d;
  handlerCopy = handler;
  v42[0] = kSecAttrKeyType;
  v42[1] = kSecAttrKeySizeInBits;
  v43[0] = kSecAttrKeyTypeECSECPrimeRandom;
  v43[1] = &off_1000D6F10;
  v7 = [NSDictionary dictionaryWithObjects:v43 forKeys:v42 count:2];
  error = 0;
  v8 = SecKeyCreateRandomKey(v7, &error);
  if (!v8)
  {
    v24 = error;
    v25 = +[RMLog securityUtilities];
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      sub_100063438();
    }

    goto LABEL_9;
  }

  v9 = v8;
  v10 = SecKeyCopyPublicKey(v8);
  if (!v10)
  {
    CFRelease(v9);
    v24 = +[RMErrorUtilities createInternalError];
    v25 = +[RMLog securityUtilities];
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      sub_1000633D0();
    }

LABEL_9:

    (*(handlerCopy + 2))(handlerCopy, 0, 0, v24);
    goto LABEL_14;
  }

  v11 = v10;
  v27 = handlerCopy;
  v29 = v7;
  v30 = dCopy;
  dCopy = [NSString stringWithFormat:@"SelfSigned-%@", dCopy];
  v39[0] = kSecOidCountryName;
  v39[1] = @"US";
  v13 = [NSArray arrayWithObjects:v39 count:2];
  v40 = v13;
  v14 = [NSArray arrayWithObjects:&v40 count:1];
  v41[0] = v14;
  v37[0] = kSecOidOrganization;
  v37[1] = @"Apple Inc.";
  v15 = [NSArray arrayWithObjects:v37 count:2];
  v38 = v15;
  v16 = [NSArray arrayWithObjects:&v38 count:1];
  v41[1] = v16;
  v35[0] = kSecOidCommonName;
  v35[1] = dCopy;
  v28 = dCopy;
  v17 = [NSArray arrayWithObjects:v35 count:2];
  v36 = v17;
  v18 = [NSArray arrayWithObjects:&v36 count:1];
  v41[2] = v18;
  v19 = [NSArray arrayWithObjects:v41 count:3];

  v33 = kSecCertificateKeyUsage;
  v20 = [NSNumber numberWithInt:2147483653];
  v34 = v20;
  v21 = [NSDictionary dictionaryWithObjects:&v34 forKeys:&v33 count:1];

  SelfSignedCertificate = SecGenerateSelfSignedCertificate();
  CFRelease(v11);
  if (SelfSignedCertificate)
  {
    v32 = SelfSignedCertificate;
    v23 = [NSArray arrayWithObjects:&v32 count:1];
    handlerCopy = v27;
    (*(v27 + 2))(v27, v9, v23, 0);
  }

  else
  {
    CFRelease(v9);
    v26 = +[RMLog securityUtilities];
    handlerCopy = v27;
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      sub_10006338C(v26);
    }

    SelfSignedCertificate = +[RMErrorUtilities createInternalError];
    (*(v27 + 2))(v27, 0, 0, SelfSignedCertificate);
  }

  v7 = v29;
  dCopy = v30;
  v24 = v28;

LABEL_14:
}

+ (BOOL)checkValidAfterWithCertificate:(__SecCertificate *)certificate interval:(double)interval
{
  SecCertificateNotValidAfter();
  v6 = v5;
  v7 = +[NSDate date];
  [v7 timeIntervalSinceReferenceDate];
  v9 = v8;

  return v6 - v9 >= interval;
}

@end