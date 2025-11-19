@interface W5WiFiPreferredNetwork
- (BOOL)conformsToProtocol:(id)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToPreferredNetwork:(id)a3;
- (W5WiFiPreferredNetwork)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)hash;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
@end

@implementation W5WiFiPreferredNetwork

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = W5WiFiPreferredNetwork;
  [(W5WiFiPreferredNetwork *)&v3 dealloc];
}

- (id)description
{
  v3 = [MEMORY[0x277CCAB68] stringWithCapacity:0];
  [v3 appendFormat:@"SSID: %@ (%@)\n", -[W5WiFiPreferredNetwork ssidString](self, "ssidString"), -[W5WiFiPreferredNetwork ssid](self, "ssid")];
  [v3 appendFormat:@"Security: %@\n", W5DescriptionForSecurity(self->_security)];
  if (self->_isPasspoint)
  {
    v4 = "Yes";
  }

  else
  {
    v4 = "No";
  }

  [v3 appendFormat:@"isPasspoint: %s\n", v4];
  [v3 appendFormat:@"Domain Name: %@\n", self->_domainName];
  if (self->_isEnabled)
  {
    v5 = "Yes";
  }

  else
  {
    v5 = "No";
  }

  [v3 appendFormat:@"isEnabled: %s\n", v5];
  if (self->_isCaptive)
  {
    v6 = "Yes";
  }

  else
  {
    v6 = "No";
  }

  [v3 appendFormat:@"isCaptive: %s\n", v6];
  if (self->_isHidden)
  {
    v7 = "Yes";
  }

  else
  {
    v7 = "No";
  }

  [v3 appendFormat:@"isHidden: %s\n", v7];
  if (self->_isMultiAP)
  {
    v8 = "Yes";
  }

  else
  {
    v8 = "No";
  }

  [v3 appendFormat:@"isMultiAP: %s\n", v8];
  v9 = objc_alloc_init(MEMORY[0x277CCA968]);
  [v9 setDateStyle:0];
  [v9 setTimeStyle:2];
  [v9 setLocale:{objc_msgSend(MEMORY[0x277CBEAF8], "currentLocale")}];
  [v3 appendFormat:@"Last Joined: %@\n", objc_msgSend(v9, "stringFromDate:", self->_lastJoinedTimestamp)];
  v10 = [v3 copy];

  return v10;
}

- (BOOL)conformsToProtocol:(id)a3
{
  v5.receiver = self;
  v5.super_class = W5WiFiPreferredNetwork;
  if (-[W5WiFiPreferredNetwork conformsToProtocol:](&v5, sel_conformsToProtocol_) || ([a3 isEqual:&unk_288343878] & 1) != 0)
  {
    return 1;
  }

  else
  {
    return [a3 isEqual:&unk_2883436F0];
  }
}

- (BOOL)isEqualToPreferredNetwork:(id)a3
{
  v4 = [(W5WiFiPreferredNetwork *)self identifier];
  v5 = [a3 identifier];

  return [(NSString *)v4 isEqualToString:v5];
}

- (BOOL)isEqual:(id)a3
{
  if (a3 == self)
  {
    return 1;
  }

  if (!a3)
  {
    return 0;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  return [(W5WiFiPreferredNetwork *)self isEqualToPreferredNetwork:a3];
}

- (unint64_t)hash
{
  v2 = [(W5WiFiPreferredNetwork *)self identifier];

  return [(NSString *)v2 hash];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [[W5WiFiPreferredNetwork allocWithZone:?]];
  [(W5WiFiPreferredNetwork *)v4 setIdentifier:self->_identifier];
  [(W5WiFiPreferredNetwork *)v4 setSsid:self->_ssid];
  [(W5WiFiPreferredNetwork *)v4 setSsidString:self->_ssidString];
  [(W5WiFiPreferredNetwork *)v4 setDomainName:self->_domainName];
  [(W5WiFiPreferredNetwork *)v4 setSecurity:self->_security];
  [(W5WiFiPreferredNetwork *)v4 setIsEnabled:self->_isEnabled];
  [(W5WiFiPreferredNetwork *)v4 setIsHidden:self->_isHidden];
  [(W5WiFiPreferredNetwork *)v4 setIsCaptive:self->_isCaptive];
  [(W5WiFiPreferredNetwork *)v4 setIsPasspoint:self->_isPasspoint];
  [(W5WiFiPreferredNetwork *)v4 setIsMultiAP:self->_isMultiAP];
  [(W5WiFiPreferredNetwork *)v4 setLastJoinedTimestamp:self->_lastJoinedTimestamp];
  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  [a3 encodeObject:self->_identifier forKey:@"_identifier"];
  [a3 encodeObject:self->_ssid forKey:@"_ssid"];
  [a3 encodeObject:self->_ssidString forKey:@"_ssidString"];
  [a3 encodeInteger:self->_security forKey:@"_security"];
  [a3 encodeBool:self->_isEnabled forKey:@"_isEnabled"];
  [a3 encodeBool:self->_isHidden forKey:@"_isHidden"];
  [a3 encodeBool:self->_isCaptive forKey:@"_isCaptive"];
  [a3 encodeBool:self->_isPasspoint forKey:@"_isPasspoint"];
  [a3 encodeBool:self->_isMultiAP forKey:@"_isMultiAP"];
  [a3 encodeObject:self->_domainName forKey:@"_domainName"];
  lastJoinedTimestamp = self->_lastJoinedTimestamp;

  [a3 encodeObject:lastJoinedTimestamp forKey:@"_lastJoinedTimestamp"];
}

- (W5WiFiPreferredNetwork)initWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = W5WiFiPreferredNetwork;
  v4 = [(W5WiFiPreferredNetwork *)&v6 init];
  if (v4)
  {
    v4->_identifier = [objc_msgSend(a3 decodeObjectOfClass:objc_opt_class() forKey:{@"_identifier", "copy"}];
    v4->_ssid = [objc_msgSend(a3 decodeObjectOfClass:objc_opt_class() forKey:{@"_ssid", "copy"}];
    v4->_ssidString = [objc_msgSend(a3 decodeObjectOfClass:objc_opt_class() forKey:{@"_ssidString", "copy"}];
    v4->_security = [a3 decodeIntegerForKey:@"_security"];
    v4->_isEnabled = [a3 decodeBoolForKey:@"_isEnabled"];
    v4->_isHidden = [a3 decodeBoolForKey:@"_isHidden"];
    v4->_isCaptive = [a3 decodeBoolForKey:@"_isCaptive"];
    v4->_isPasspoint = [a3 decodeBoolForKey:@"_isPasspoint"];
    v4->_isMultiAP = [a3 decodeBoolForKey:@"_isMultiAP"];
    v4->_domainName = [objc_msgSend(a3 decodeObjectOfClass:objc_opt_class() forKey:{@"_domainName", "copy"}];
    v4->_lastJoinedTimestamp = [objc_msgSend(a3 decodeObjectOfClass:objc_opt_class() forKey:{@"_lastJoinedTimestamp", "copy"}];
  }

  return v4;
}

@end