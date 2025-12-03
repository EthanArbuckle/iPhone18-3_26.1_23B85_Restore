@interface CSDCTCallCapabilities
+ (id)callCapabilitiesForCTCallCapabilities:(id)capabilities;
+ (id)callCapabilitiesForCallManagementStateInfo:(id)info;
- (id)debugDescription;
@end

@implementation CSDCTCallCapabilities

+ (id)callCapabilitiesForCTCallCapabilities:(id)capabilities
{
  capabilitiesCopy = capabilities;
  v4 = objc_alloc_init(CSDCTCallCapabilities);
  -[CSDCTCallCapabilities setCsCallingAvailable:](v4, "setCsCallingAvailable:", [capabilitiesCopy isCSCallingAvailable]);
  -[CSDCTCallCapabilities setVoLTECallingAvailable:](v4, "setVoLTECallingAvailable:", [capabilitiesCopy isVoLTECallingAvailable]);
  -[CSDCTCallCapabilities setWiFiCallingAvailable:](v4, "setWiFiCallingAvailable:", [capabilitiesCopy isWifiCallingAvailable]);
  -[CSDCTCallCapabilities setWiFiEmergencyCallingAllowed:](v4, "setWiFiEmergencyCallingAllowed:", [capabilitiesCopy isEmergencyCallingOnWifiAllowed]);
  isEmergencyCallingOnWifiAvailable = [capabilitiesCopy isEmergencyCallingOnWifiAvailable];

  [(CSDCTCallCapabilities *)v4 setWiFiEmergencyCallingAvailable:isEmergencyCallingOnWifiAvailable];

  return v4;
}

+ (id)callCapabilitiesForCallManagementStateInfo:(id)info
{
  infoCopy = info;
  v4 = objc_alloc_init(CSDCTCallCapabilities);
  v5 = [infoCopy objectForKeyedSubscript:kCTCallManagementPhoneServicesCSCallingAvailable];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    -[CSDCTCallCapabilities setCsCallingAvailable:](v4, "setCsCallingAvailable:", [v5 BOOLValue]);
  }

  v6 = [infoCopy objectForKeyedSubscript:kCTCallManagementPhoneServicesVoLTECallingAvailable];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    -[CSDCTCallCapabilities setVoLTECallingAvailable:](v4, "setVoLTECallingAvailable:", [v6 BOOLValue]);
  }

  v7 = [infoCopy objectForKeyedSubscript:kCTCallManagementIsPhoneServicesActive];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    -[CSDCTCallCapabilities setWiFiCallingAvailable:](v4, "setWiFiCallingAvailable:", [v7 BOOLValue]);
  }

  v8 = [infoCopy objectForKeyedSubscript:kCTCallManagementEmergencyWifiAllowed];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    -[CSDCTCallCapabilities setWiFiEmergencyCallingAllowed:](v4, "setWiFiEmergencyCallingAllowed:", [v8 BOOLValue]);
  }

  v9 = [infoCopy objectForKeyedSubscript:kCTCallManagementEmergencyWifiCallCapable];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    -[CSDCTCallCapabilities setWiFiEmergencyCallingAvailable:](v4, "setWiFiEmergencyCallingAvailable:", [v9 BOOLValue]);
  }

  return v4;
}

- (id)debugDescription
{
  v3 = objc_alloc_init(NSMutableString);
  [v3 appendFormat:@"<%@ %p ", objc_opt_class(), self];
  v4 = NSStringFromSelector("isCSCallingAvailable");
  v5 = [NSNumber numberWithBool:[(CSDCTCallCapabilities *)self isCSCallingAvailable]];
  [v3 appendFormat:@"%@=%@", v4, v5];

  [v3 appendFormat:@", "];
  v6 = NSStringFromSelector("isVoLTECallingAvailable");
  v7 = [NSNumber numberWithBool:[(CSDCTCallCapabilities *)self isVoLTECallingAvailable]];
  [v3 appendFormat:@"%@=%@", v6, v7];

  [v3 appendFormat:@", "];
  v8 = NSStringFromSelector("isWiFiCallingAvailable");
  v9 = [NSNumber numberWithBool:[(CSDCTCallCapabilities *)self isWiFiCallingAvailable]];
  [v3 appendFormat:@"%@=%@", v8, v9];

  [v3 appendFormat:@", "];
  v10 = NSStringFromSelector("isWiFiEmergencyCallingAllowed");
  v11 = [NSNumber numberWithBool:[(CSDCTCallCapabilities *)self isWiFiEmergencyCallingAllowed]];
  [v3 appendFormat:@"%@=%@", v10, v11];

  [v3 appendFormat:@", "];
  v12 = NSStringFromSelector("isWiFiEmergencyCallingAvailable");
  v13 = [NSNumber numberWithBool:[(CSDCTCallCapabilities *)self isWiFiEmergencyCallingAvailable]];
  [v3 appendFormat:@"%@=%@", v12, v13];

  [v3 appendFormat:@">"];
  v14 = [v3 copy];

  return v14;
}

@end