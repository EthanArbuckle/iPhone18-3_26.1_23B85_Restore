@interface STCommunicationLimits
+ (BOOL)hasShownCompatibilityAlertForDSID:(id)d;
+ (void)setHasShownCompatibilityAlert:(BOOL)alert forDSID:(id)d;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToCommunicationLimits:(id)limits;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
@end

@implementation STCommunicationLimits

+ (BOOL)hasShownCompatibilityAlertForDSID:(id)d
{
  v3 = MEMORY[0x277CBEBD0];
  dCopy = d;
  standardUserDefaults = [v3 standardUserDefaults];
  v6 = [standardUserDefaults objectForKey:@"HasShownCommunicationLimitsCompatibilityAlertByDSID"];

  v7 = [v6 objectForKeyedSubscript:dCopy];

  return v7 != 0;
}

+ (void)setHasShownCompatibilityAlert:(BOOL)alert forDSID:(id)d
{
  v11[1] = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277CBEBD0];
  dCopy = d;
  standardUserDefaults = [v4 standardUserDefaults];
  v7 = [standardUserDefaults objectForKey:@"HasShownCommunicationLimitsCompatibilityAlertByDSID"];
  if (v7)
  {
    v8 = v7;
    v9 = [v7 mutableCopy];
    [v9 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:dCopy];
  }

  else
  {
    v10 = dCopy;
    v11[0] = MEMORY[0x277CBEC38];
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:&v10 count:1];
  }

  [standardUserDefaults setObject:v9 forKey:@"HasShownCommunicationLimitsCompatibilityAlertByDSID"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  result = [[STCommunicationLimits allocWithZone:?]];
  *(result + 2) = self->_screenTimeCommunicationLimit;
  *(result + 3) = self->_downtimeCommunicationLimit;
  *(result + 4) = self->_contactManagementState;
  *(result + 8) = self->_contactsEditable;
  return result;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v6 = equalCopy != 0;
  }

  else
  {
    objc_opt_class();
    v6 = (objc_opt_isKindOfClass() & 1) != 0 && [(STCommunicationLimits *)self isEqualToCommunicationLimits:v5];
  }

  return v6;
}

- (BOOL)isEqualToCommunicationLimits:(id)limits
{
  limitsCopy = limits;
  v5 = limitsCopy;
  if (limitsCopy == self)
  {
    LOBYTE(v10) = 1;
  }

  else if (limitsCopy && (v6 = [(STCommunicationLimits *)self screenTimeCommunicationLimit], v6 == [(STCommunicationLimits *)v5 screenTimeCommunicationLimit]) && (v7 = [(STCommunicationLimits *)self downtimeCommunicationLimit], v7 == [(STCommunicationLimits *)v5 downtimeCommunicationLimit]) && (v8 = [(STCommunicationLimits *)self contactManagementState], v8 == [(STCommunicationLimits *)v5 contactManagementState]))
  {
    contactsEditable = [(STCommunicationLimits *)self contactsEditable];
    v10 = contactsEditable ^ [(STCommunicationLimits *)v5 contactsEditable]^ 1;
  }

  else
  {
    LOBYTE(v10) = 0;
  }

  return v10;
}

- (unint64_t)hash
{
  screenTimeCommunicationLimit = [(STCommunicationLimits *)self screenTimeCommunicationLimit];
  v4 = [(STCommunicationLimits *)self downtimeCommunicationLimit]^ screenTimeCommunicationLimit;
  v5 = v4 ^ [(STCommunicationLimits *)self contactManagementState];
  return v5 ^ [(STCommunicationLimits *)self contactsEditable];
}

@end