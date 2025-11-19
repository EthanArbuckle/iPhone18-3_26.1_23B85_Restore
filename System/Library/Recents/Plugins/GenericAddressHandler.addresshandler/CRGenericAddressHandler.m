@interface CRGenericAddressHandler
- (id)addressFromExternalAddress:(id)a3 kind:(id)a4;
- (id)externalAddressFromAddress:(id)a3 kind:(id)a4;
- (id)supportedAddressKinds;
- (id)syncKeyForAddress:(id)a3 kind:(id)a4;
@end

@implementation CRGenericAddressHandler

- (id)supportedAddressKinds
{
  v3[0] = CRAddressKindEmail;
  v3[1] = CRAddressKindInstantMessage;
  v3[2] = CRAddressKindPhoneNumber;
  v3[3] = CRAddressKindURL;
  return [NSSet setWithArray:[NSArray arrayWithObjects:v3 count:4]];
}

- (id)syncKeyForAddress:(id)a3 kind:(id)a4
{
  if (!a3 || !a4)
  {
    return 0;
  }

  if ([CRAddressKindEmail isEqualToString:a4])
  {
    v8 = [a3 cr_copyIDNAEncodedEmailAddress];
    v9 = [v8 cr_lowercaseStringWithStandardLocale];
  }

  else if ([CRAddressKindPhoneNumber isEqualToString:a4])
  {
    v11 = PNCopyBestGuessCountryCodeForNumber();
    if (v11)
    {
      v12 = v11;
    }

    else
    {
      v12 = @"us";
    }

    v13 = PNCopyBestGuessNormalizedNumberForCountry();
    v14 = CFStringCreateWithCStringNoCopy(kCFAllocatorDefault, v13, 0x8000100u, kCFAllocatorMalloc);
    v15 = CFPhoneNumberCreate();
    String = CFPhoneNumberCreateString();
    if (!String)
    {
      String = CFPhoneNumberCreateString();
      if (!String)
      {
        String = [a3 cr_lowercaseStringWithStandardLocale];
      }
    }

    v9 = String;
    CFRelease(v12);
    if (v15)
    {
      CFRelease(v15);
    }

    if (v14)
    {
      CFRelease(v14);
    }
  }

  else
  {
    if ([CRAddressKindInstantMessage isEqualToString:a4])
    {
      v17 = [a3 cr_lowercaseStringWithStandardLocale];
    }

    else
    {
      if (![CRAddressKindURL isEqualToString:a4])
      {
        [+[NSAssertionHandler currentHandler](NSAssertionHandler handleFailureInMethod:"handleFailureInMethod:object:file:lineNumber:description:" object:a2 file:self lineNumber:@"CRGenericAddressHandler.m" description:74, @"%@: unexpected kind passed to %s", objc_opt_class(), "[CRGenericAddressHandler syncKeyForAddress:kind:]"];
      }

      v17 = a3;
    }

    v9 = v17;
  }

  v18 = [objc_msgSend(v9 dataUsingEncoding:{4), "cr_md5DigestHexString"}];

  return v18;
}

- (id)externalAddressFromAddress:(id)a3 kind:(id)a4
{
  if (![CRAddressKindEmail isEqualToString:a4])
  {
    return a3;
  }

  v5 = [a3 cr_copyIDNADecodedEmailAddress];

  return v5;
}

- (id)addressFromExternalAddress:(id)a3 kind:(id)a4
{
  if (![CRAddressKindEmail isEqualToString:a4])
  {
    return a3;
  }

  v5 = [a3 cr_copyIDNADecodedEmailAddress];

  return v5;
}

@end