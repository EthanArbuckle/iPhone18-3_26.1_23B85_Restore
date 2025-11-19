@interface RWIProtocolSecurityCertificate
- (NSArray)dnsNames;
- (NSArray)ipAddresses;
- (NSString)subject;
- (double)validFrom;
- (double)validUntil;
- (void)setDnsNames:(id)a3;
- (void)setIpAddresses:(id)a3;
- (void)setSubject:(id)a3;
- (void)setValidFrom:(double)a3;
- (void)setValidUntil:(double)a3;
@end

@implementation RWIProtocolSecurityCertificate

- (void)setSubject:(id)a3
{
  v3.receiver = self;
  v3.super_class = RWIProtocolSecurityCertificate;
  [(RWIProtocolJSONObject *)&v3 setString:a3 forKey:@"subject"];
}

- (NSString)subject
{
  v4.receiver = self;
  v4.super_class = RWIProtocolSecurityCertificate;
  v2 = [(RWIProtocolJSONObject *)&v4 stringForKey:@"subject"];

  return v2;
}

- (void)setValidFrom:(double)a3
{
  v3.receiver = self;
  v3.super_class = RWIProtocolSecurityCertificate;
  [(RWIProtocolJSONObject *)&v3 setDouble:@"validFrom" forKey:a3];
}

- (double)validFrom
{
  v3.receiver = self;
  v3.super_class = RWIProtocolSecurityCertificate;
  [(RWIProtocolJSONObject *)&v3 doubleForKey:@"validFrom"];
  return result;
}

- (void)setValidUntil:(double)a3
{
  v3.receiver = self;
  v3.super_class = RWIProtocolSecurityCertificate;
  [(RWIProtocolJSONObject *)&v3 setDouble:@"validUntil" forKey:a3];
}

- (double)validUntil
{
  v3.receiver = self;
  v3.super_class = RWIProtocolSecurityCertificate;
  [(RWIProtocolJSONObject *)&v3 doubleForKey:@"validUntil"];
  return result;
}

- (void)setDnsNames:(id)a3
{
  Inspector::toJSONStringArray(a3, &v6);
  v5.receiver = self;
  v5.super_class = RWIProtocolSecurityCertificate;
  [(RWIProtocolJSONObject *)&v5 setJSONArray:&v6 forKey:@"dnsNames"];
  v4 = v6;
  v6 = 0;
  if (v4)
  {
    if (*v4 == 1)
    {
      WTF::JSONImpl::Value::operator delete();
    }

    else
    {
      --*v4;
    }
  }
}

- (NSArray)dnsNames
{
  v4.receiver = self;
  v4.super_class = RWIProtocolSecurityCertificate;
  [(RWIProtocolJSONObject *)&v4 JSONArrayForKey:@"dnsNames"];
  v2 = Inspector::toObjCStringArray(&v5);
  [(RWIProtocolCSSPseudoIdMatches *)v2 matches];
  return v2;
}

- (void)setIpAddresses:(id)a3
{
  Inspector::toJSONStringArray(a3, &v6);
  v5.receiver = self;
  v5.super_class = RWIProtocolSecurityCertificate;
  [(RWIProtocolJSONObject *)&v5 setJSONArray:&v6 forKey:@"ipAddresses"];
  v4 = v6;
  v6 = 0;
  if (v4)
  {
    if (*v4 == 1)
    {
      WTF::JSONImpl::Value::operator delete();
    }

    else
    {
      --*v4;
    }
  }
}

- (NSArray)ipAddresses
{
  v4.receiver = self;
  v4.super_class = RWIProtocolSecurityCertificate;
  [(RWIProtocolJSONObject *)&v4 JSONArrayForKey:@"ipAddresses"];
  v2 = Inspector::toObjCStringArray(&v5);
  [(RWIProtocolCSSPseudoIdMatches *)v2 matches];
  return v2;
}

@end