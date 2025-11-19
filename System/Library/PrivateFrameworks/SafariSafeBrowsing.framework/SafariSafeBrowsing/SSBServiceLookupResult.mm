@interface SSBServiceLookupResult
- (BOOL)isKnownToBeUnsafe;
- (NSString)localizedProviderDisplayName;
- (NSString)localizedProviderShortName;
- (NSString)malwareDetailsBaseURLString;
- (NSString)provider;
- (NSString)reportAnErrorBaseURLString;
- (NSURL)learnMoreURL;
- (SSBServiceLookupResult)initWithCoder:(id)a3;
- (id)_initWithLookupResult:(LookupResult)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SSBServiceLookupResult

- (id)_initWithLookupResult:(LookupResult)a3
{
  v8.receiver = self;
  v8.super_class = SSBServiceLookupResult;
  v4 = [(SSBServiceLookupResult *)&v8 init];
  v5 = v4;
  if (v4)
  {
    v4->_lookupResult = a3;
    v6 = v4;
  }

  return v5;
}

- (SSBServiceLookupResult)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = SSBServiceLookupResult;
  v5 = [(SSBServiceLookupResult *)&v9 init];
  if (v5)
  {
    v6 = [v4 decodeInt64ForKey:@"type"];
    v5->_lookupResult = (v6 | ([v4 decodeInt64ForKey:@"provider"] << 32));
    v7 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeInt64:self->_lookupResult.type.m_storage forKey:@"type"];
  [v4 encodeInt64:self->_lookupResult.provider forKey:@"provider"];
}

- (BOOL)isKnownToBeUnsafe
{
  if ([(SSBServiceLookupResult *)self isMalware]|| [(SSBServiceLookupResult *)self isPhishing])
  {
    return 1;
  }

  return [(SSBServiceLookupResult *)self isUnwantedSoftware];
}

- (NSString)provider
{
  provider = self->_lookupResult.provider;
  v3 = @"SSBProviderGoogle";
  if (provider == 2)
  {
    v3 = @"SSBProviderTencent";
  }

  if (provider == 4)
  {
    return @"SSBProviderApple";
  }

  else
  {
    return &v3->isa;
  }
}

- (NSString)malwareDetailsBaseURLString
{
  provider = self->_lookupResult.provider;
  v3 = @"https://google.com/safebrowsing/diagnostic?tpl=safari";
  if (provider == 2)
  {
    v3 = @"https://www.urlsec.qq.com/check.html?tpl=safari";
  }

  if (provider == 4)
  {
    return @"https://support.apple.com/kb/HT211650";
  }

  else
  {
    return &v3->isa;
  }
}

- (NSURL)learnMoreURL
{
  provider = self->_lookupResult.provider;
  switch(provider)
  {
    case 1:
      v5 = @"https://www.google.com/support/bin/answer.py?answer=106318";
      break;
    case 4:
      v5 = @"https://support.apple.com/kb/HT211650";
      break;
    case 2:
      v5 = @"https://www.urlsec.qq.com/standard/s1.html?tpl=safari";
      break;
    default:
      goto LABEL_8;
  }

  self = [MEMORY[0x277CBEBC0] URLWithString:{v5, v2}];
LABEL_8:

  return self;
}

- (NSString)reportAnErrorBaseURLString
{
  provider = self->_lookupResult.provider;
  v3 = @"https://www.google.com/safebrowsing/report_error/?tpl=safari";
  if (provider == 2)
  {
    v3 = @"https://www.urlsec.qq.com/complain.html?tpl=safari";
  }

  if (provider == 4)
  {
    return @"https://websitereview.apple.com/?tpl=safari";
  }

  else
  {
    return &v3->isa;
  }
}

- (NSString)localizedProviderDisplayName
{
  provider = self->_lookupResult.provider;
  switch(provider)
  {
    case 1:
      v4 = @"Google Safe Browsing";
      break;
    case 4:
      v4 = @"Apple";
      break;
    case 2:
      v4 = @"Tencent Safe Browsing";
      break;
    default:
      goto LABEL_8;
  }

  self = localizedStringForKey(&v4->isa);
LABEL_8:

  return self;
}

- (NSString)localizedProviderShortName
{
  provider = self->_lookupResult.provider;
  switch(provider)
  {
    case 1:
      v4 = @"Google";
      break;
    case 4:
      v4 = @"Apple";
      break;
    case 2:
      v4 = @"Tencent";
      break;
    default:
      goto LABEL_8;
  }

  self = localizedStringForKey(&v4->isa);
LABEL_8:

  return self;
}

@end