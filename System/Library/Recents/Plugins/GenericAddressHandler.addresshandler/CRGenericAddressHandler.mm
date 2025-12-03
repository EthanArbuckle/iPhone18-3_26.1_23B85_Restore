@interface CRGenericAddressHandler
- (id)addressFromExternalAddress:(id)address kind:(id)kind;
- (id)externalAddressFromAddress:(id)address kind:(id)kind;
- (id)supportedAddressKinds;
- (id)syncKeyForAddress:(id)address kind:(id)kind;
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

- (id)syncKeyForAddress:(id)address kind:(id)kind
{
  if (!address || !kind)
  {
    return 0;
  }

  if ([CRAddressKindEmail isEqualToString:kind])
  {
    cr_copyIDNAEncodedEmailAddress = [address cr_copyIDNAEncodedEmailAddress];
    cr_lowercaseStringWithStandardLocale = [cr_copyIDNAEncodedEmailAddress cr_lowercaseStringWithStandardLocale];
  }

  else if ([CRAddressKindPhoneNumber isEqualToString:kind])
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
        String = [address cr_lowercaseStringWithStandardLocale];
      }
    }

    cr_lowercaseStringWithStandardLocale = String;
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
    if ([CRAddressKindInstantMessage isEqualToString:kind])
    {
      addressCopy = [address cr_lowercaseStringWithStandardLocale];
    }

    else
    {
      if (![CRAddressKindURL isEqualToString:kind])
      {
        [+[NSAssertionHandler currentHandler](NSAssertionHandler handleFailureInMethod:"handleFailureInMethod:object:file:lineNumber:description:" object:a2 file:self lineNumber:@"CRGenericAddressHandler.m" description:74, @"%@: unexpected kind passed to %s", objc_opt_class(), "[CRGenericAddressHandler syncKeyForAddress:kind:]"];
      }

      addressCopy = address;
    }

    cr_lowercaseStringWithStandardLocale = addressCopy;
  }

  v18 = [objc_msgSend(cr_lowercaseStringWithStandardLocale dataUsingEncoding:{4), "cr_md5DigestHexString"}];

  return v18;
}

- (id)externalAddressFromAddress:(id)address kind:(id)kind
{
  if (![CRAddressKindEmail isEqualToString:kind])
  {
    return address;
  }

  cr_copyIDNADecodedEmailAddress = [address cr_copyIDNADecodedEmailAddress];

  return cr_copyIDNADecodedEmailAddress;
}

- (id)addressFromExternalAddress:(id)address kind:(id)kind
{
  if (![CRAddressKindEmail isEqualToString:kind])
  {
    return address;
  }

  cr_copyIDNADecodedEmailAddress = [address cr_copyIDNADecodedEmailAddress];

  return cr_copyIDNADecodedEmailAddress;
}

@end