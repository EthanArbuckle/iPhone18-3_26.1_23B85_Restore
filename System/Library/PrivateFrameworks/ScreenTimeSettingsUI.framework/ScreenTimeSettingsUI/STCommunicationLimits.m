@interface STCommunicationLimits
+ (BOOL)hasShownCompatibilityAlertForDSID:(id)a3;
+ (void)setHasShownCompatibilityAlert:(BOOL)a3 forDSID:(id)a4;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToCommunicationLimits:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
@end

@implementation STCommunicationLimits

+ (BOOL)hasShownCompatibilityAlertForDSID:(id)a3
{
  v3 = MEMORY[0x277CBEBD0];
  v4 = a3;
  v5 = [v3 standardUserDefaults];
  v6 = [v5 objectForKey:@"HasShownCommunicationLimitsCompatibilityAlertByDSID"];

  v7 = [v6 objectForKeyedSubscript:v4];

  return v7 != 0;
}

+ (void)setHasShownCompatibilityAlert:(BOOL)a3 forDSID:(id)a4
{
  v11[1] = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277CBEBD0];
  v5 = a4;
  v6 = [v4 standardUserDefaults];
  v7 = [v6 objectForKey:@"HasShownCommunicationLimitsCompatibilityAlertByDSID"];
  if (v7)
  {
    v8 = v7;
    v9 = [v7 mutableCopy];
    [v9 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:v5];
  }

  else
  {
    v10 = v5;
    v11[0] = MEMORY[0x277CBEC38];
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:&v10 count:1];
  }

  [v6 setObject:v9 forKey:@"HasShownCommunicationLimitsCompatibilityAlertByDSID"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  result = [[STCommunicationLimits allocWithZone:?]];
  *(result + 2) = self->_screenTimeCommunicationLimit;
  *(result + 3) = self->_downtimeCommunicationLimit;
  *(result + 4) = self->_contactManagementState;
  *(result + 8) = self->_contactsEditable;
  return result;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v6 = v4 != 0;
  }

  else
  {
    objc_opt_class();
    v6 = (objc_opt_isKindOfClass() & 1) != 0 && [(STCommunicationLimits *)self isEqualToCommunicationLimits:v5];
  }

  return v6;
}

- (BOOL)isEqualToCommunicationLimits:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    LOBYTE(v10) = 1;
  }

  else if (v4 && (v6 = [(STCommunicationLimits *)self screenTimeCommunicationLimit], v6 == [(STCommunicationLimits *)v5 screenTimeCommunicationLimit]) && (v7 = [(STCommunicationLimits *)self downtimeCommunicationLimit], v7 == [(STCommunicationLimits *)v5 downtimeCommunicationLimit]) && (v8 = [(STCommunicationLimits *)self contactManagementState], v8 == [(STCommunicationLimits *)v5 contactManagementState]))
  {
    v9 = [(STCommunicationLimits *)self contactsEditable];
    v10 = v9 ^ [(STCommunicationLimits *)v5 contactsEditable]^ 1;
  }

  else
  {
    LOBYTE(v10) = 0;
  }

  return v10;
}

- (unint64_t)hash
{
  v3 = [(STCommunicationLimits *)self screenTimeCommunicationLimit];
  v4 = [(STCommunicationLimits *)self downtimeCommunicationLimit]^ v3;
  v5 = v4 ^ [(STCommunicationLimits *)self contactManagementState];
  return v5 ^ [(STCommunicationLimits *)self contactsEditable];
}

@end