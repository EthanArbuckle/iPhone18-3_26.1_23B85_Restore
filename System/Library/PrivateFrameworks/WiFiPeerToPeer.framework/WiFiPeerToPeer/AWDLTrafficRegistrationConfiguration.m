@interface AWDLTrafficRegistrationConfiguration
+ (id)localizedErrorForConflictBetweenExistingService:(id)a3 withNewService:(id)a4 localDeviceName:(id)a5 localization:(id)a6;
- (AWDLTrafficRegistrationConfiguration)initWithCoder:(id)a3;
- (AWDLTrafficRegistrationConfiguration)initWithDictionary:(__CFDictionary *)a3 isActive:(BOOL *)a4;
- (AWDLTrafficRegistrationConfiguration)initWithUniqueIdentifier:(id)a3 peerAddress:(id)a4;
- (AWDLTrafficRegistrationConfiguration)initWithUniqueIdentifier:(id)a3 peerIPv6Address:(in6_addr)a4;
- (BOOL)hasSimilarOptionsTo:(id)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)isKnownService;
- (NSString)localization;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation AWDLTrafficRegistrationConfiguration

- (AWDLTrafficRegistrationConfiguration)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"AWDLTrafficRegistrationConfiguration.uniqueIdentifierKey"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"AWDLTrafficRegistrationConfiguration.peerAddressKey"];
  if (v6)
  {
    v7 = v5 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    v8 = 0;
  }

  else
  {
    v9 = [(AWDLTrafficRegistrationConfiguration *)self initWithUniqueIdentifier:v5 peerAddress:v6];
    v10 = v9;
    if (v9)
    {
      v9->_options = [v4 decodeIntegerForKey:@"AWDLTrafficRegistrationConfiguration.optionsKey"];
      v10->_preferredChannel = [v4 decodeInt32ForKey:@"AWDLTrafficRegistrationConfiguration.preferredChannelKey"];
      v10->_secondaryPreferredChannel = [v4 decodeInt32ForKey:@"AWDLTrafficRegistrationConfiguration.secondaryPreferredChannelKey"];
      v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"AWDLTrafficRegistrationConfiguration.localization"];
      derivedLocalization = v10->_derivedLocalization;
      v10->_derivedLocalization = v11;

      if ([v5 isEqualToString:@"airplay"])
      {
        v10->_legacyUpgradeRequired = [v4 decodeBoolForKey:@"AWDLTrafficRegistrationConfiguration.legacyUpgradeRequired"];
      }
    }

    self = v10;
    v8 = self;
  }

  return v8;
}

- (void)encodeWithCoder:(id)a3
{
  v9 = a3;
  v4 = [(AWDLTrafficRegistrationConfiguration *)self uniqueIdentifier];
  [v9 encodeObject:v4 forKey:@"AWDLTrafficRegistrationConfiguration.uniqueIdentifierKey"];

  v5 = [(AWDLTrafficRegistrationConfiguration *)self peerAddress];
  [v9 encodeObject:v5 forKey:@"AWDLTrafficRegistrationConfiguration.peerAddressKey"];

  [v9 encodeInteger:-[AWDLTrafficRegistrationConfiguration options](self forKey:{"options"), @"AWDLTrafficRegistrationConfiguration.optionsKey"}];
  v6 = +[WiFiP2PXPCConnection localization];
  [v9 encodeObject:v6 forKey:@"AWDLTrafficRegistrationConfiguration.localization"];

  [v9 encodeInt32:-[AWDLTrafficRegistrationConfiguration preferredChannel](self forKey:{"preferredChannel"), @"AWDLTrafficRegistrationConfiguration.preferredChannelKey"}];
  [v9 encodeInt32:-[AWDLTrafficRegistrationConfiguration secondaryPreferredChannel](self forKey:{"secondaryPreferredChannel"), @"AWDLTrafficRegistrationConfiguration.secondaryPreferredChannelKey"}];
  v7 = [(AWDLTrafficRegistrationConfiguration *)self uniqueIdentifier];
  v8 = [v7 isEqualToString:@"airplay"];

  if (v8)
  {
    [v9 encodeBool:-[AWDLTrafficRegistrationConfiguration legacyUpgradeRequired](self forKey:{"legacyUpgradeRequired"), @"AWDLTrafficRegistrationConfiguration.legacyUpgradeRequired"}];
  }
}

- (AWDLTrafficRegistrationConfiguration)initWithUniqueIdentifier:(id)a3 peerAddress:(id)a4
{
  v6 = a3;
  v7 = a4;
  v15.receiver = self;
  v15.super_class = AWDLTrafficRegistrationConfiguration;
  v8 = [(AWDLTrafficRegistrationConfiguration *)&v15 init];
  if (v8)
  {
    v9 = [v6 copy];
    v10 = *(v8 + 3);
    *(v8 + 3) = v9;

    v11 = [v7 copy];
    v12 = *(v8 + 4);
    *(v8 + 4) = v11;

    *(v8 + 5) = 0;
    *(v8 + 18) = 0;
    v13 = *(v8 + 1);
    *(v8 + 1) = 0;

    v8[17] = 0;
    v8[16] = [v6 isEqualToString:@"airplay"];
  }

  return v8;
}

- (AWDLTrafficRegistrationConfiguration)initWithUniqueIdentifier:(id)a3 peerIPv6Address:(in6_addr)a4
{
  v4 = *&a4.__u6_addr32[2];
  v5 = *a4.__u6_addr8;
  v7 = a3;
  v8 = [[WiFiMACAddress alloc] initWithLinkLocalIPv6Address:v5, v4];
  if (v8)
  {
    self = [(AWDLTrafficRegistrationConfiguration *)self initWithUniqueIdentifier:v7 peerAddress:v8];
    v9 = self;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v5 = 0;
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v11 = 0;
      v5 = 0;
      goto LABEL_11;
    }

    v5 = v4;
    v6 = [(AWDLTrafficRegistrationConfiguration *)self uniqueIdentifier];
    v7 = [(AWDLTrafficRegistrationConfiguration *)v5 uniqueIdentifier];
    if (([v6 isEqual:v7] & 1) == 0)
    {

LABEL_10:
      v11 = 0;
      goto LABEL_11;
    }

    v8 = [(AWDLTrafficRegistrationConfiguration *)self peerAddress];
    v9 = [(AWDLTrafficRegistrationConfiguration *)v5 peerAddress];
    v10 = [v8 isEqual:v9];

    if (!v10)
    {
      goto LABEL_10;
    }
  }

  v11 = 1;
LABEL_11:

  return v11;
}

- (unint64_t)hash
{
  v3 = [(AWDLTrafficRegistrationConfiguration *)self uniqueIdentifier];
  v4 = [v3 hash];
  v5 = [(AWDLTrafficRegistrationConfiguration *)self peerAddress];
  v6 = [v5 hash];

  return v6 ^ v4;
}

- (BOOL)hasSimilarOptionsTo:(id)a3
{
  v4 = a3;
  v5 = [(AWDLTrafficRegistrationConfiguration *)self options];
  if (v5 == [v4 options] && (v6 = -[AWDLTrafficRegistrationConfiguration preferredChannel](self, "preferredChannel"), v6 == objc_msgSend(v4, "preferredChannel")))
  {
    v7 = [(AWDLTrafficRegistrationConfiguration *)self secondaryPreferredChannel];
    v8 = v7 == [v4 secondaryPreferredChannel];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (NSString)localization
{
  derivedLocalization = self->_derivedLocalization;
  if (derivedLocalization)
  {
    v3 = derivedLocalization;
  }

  else
  {
    v3 = +[WiFiP2PXPCConnection localization];
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [AWDLTrafficRegistrationConfiguration alloc];
  v5 = [(AWDLTrafficRegistrationConfiguration *)self uniqueIdentifier];
  v6 = [(AWDLTrafficRegistrationConfiguration *)self peerAddress];
  v7 = [(AWDLTrafficRegistrationConfiguration *)v4 initWithUniqueIdentifier:v5 peerAddress:v6];

  [(AWDLTrafficRegistrationConfiguration *)v7 setOptions:[(AWDLTrafficRegistrationConfiguration *)self options]];
  [(AWDLTrafficRegistrationConfiguration *)v7 setPreferredChannel:[(AWDLTrafficRegistrationConfiguration *)self preferredChannel]];
  [(AWDLTrafficRegistrationConfiguration *)v7 setSecondaryPreferredChannel:[(AWDLTrafficRegistrationConfiguration *)self secondaryPreferredChannel]];
  [(AWDLTrafficRegistrationConfiguration *)v7 setLegacyUpgradeRequired:[(AWDLTrafficRegistrationConfiguration *)self legacyUpgradeRequired]];
  v8 = [(AWDLTrafficRegistrationConfiguration *)self invalidationHandler];
  [(AWDLTrafficRegistrationConfiguration *)v7 setInvalidationHandler:v8];

  return v7;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(AWDLTrafficRegistrationConfiguration *)self uniqueIdentifier];
  v5 = [(AWDLTrafficRegistrationConfiguration *)self peerAddress];
  v6 = [v3 stringWithFormat:@"<AWDLTrafficRegistrationConfiguration %@ to %@>", v4, v5];

  return v6;
}

- (AWDLTrafficRegistrationConfiguration)initWithDictionary:(__CFDictionary *)a3 isActive:(BOOL *)a4
{
  Value = CFDictionaryGetValue(a3, @"TR_ACTIVE");
  if (!Value)
  {
    goto LABEL_36;
  }

  v8 = Value;
  v9 = CFGetTypeID(Value);
  if (v9 != CFBooleanGetTypeID())
  {
    goto LABEL_36;
  }

  v10 = CFDictionaryGetValue(a3, @"TR_PEER_CONTEXTS");
  if (v10 && (v11 = v10, v12 = CFGetTypeID(v10), v12 == CFArrayGetTypeID()))
  {
    if (CFArrayGetCount(v11) >= 1 && (ValueAtIndex = CFArrayGetValueAtIndex(v11, 0)) != 0 && (v14 = ValueAtIndex, v15 = CFGetTypeID(ValueAtIndex), v15 == CFDictionaryGetTypeID()) && (v16 = CFDictionaryGetValue(v14, @"TR_PEER_ADDRESS")) != 0 && (v17 = v16, v18 = CFGetTypeID(v16), v18 == CFDataGetTypeID()) && CFDataGetLength(v17) == 6)
    {
      BytePtr = CFDataGetBytePtr(v17);
      v20 = *BytePtr | (*(BytePtr + 2) << 32);
    }

    else
    {
      v20 = 0;
    }

    v25 = CFDictionaryGetValue(a3, @"TR_SESSION_FLAGS");
  }

  else
  {
    v21 = CFDictionaryGetValue(a3, @"AWDL_TR_ADDR");
    if (v21 && (v22 = v21, v23 = CFGetTypeID(v21), v23 == CFDataGetTypeID()) && CFDataGetLength(v22) == 6)
    {
      v24 = CFDataGetBytePtr(v22);
      v20 = *v24 | (*(v24 + 2) << 32);
    }

    else
    {
      v20 = 0;
    }

    v25 = CFDictionaryGetValue(a3, @"AWDL_TR_RT_FLAGS");
    v26 = CFDictionaryGetValue(a3, @"AWDL_TR_UID");
    if (v26)
    {
      goto LABEL_22;
    }
  }

  v26 = CFDictionaryGetValue(a3, @"TR_SRV_NAME");
  if (!v26)
  {
LABEL_36:
    v39 = 0;
    goto LABEL_37;
  }

LABEL_22:
  v27 = v26;
  v28 = CFGetTypeID(v26);
  if (v28 != CFStringGetTypeID())
  {
    goto LABEL_36;
  }

  v29 = [[WiFiMACAddress alloc] initWithAddress:v20 & 0xFFFFFFFFFFFFLL];
  v30 = [(AWDLTrafficRegistrationConfiguration *)self initWithUniqueIdentifier:v27 peerAddress:v29];

  if (v25)
  {
    v31 = CFGetTypeID(v25);
    if (v31 == CFNumberGetTypeID())
    {
      valuePtr = 0;
      CFNumberGetValue(v25, kCFNumberSInt32Type, &valuePtr);
      v32 = valuePtr;
      if ((valuePtr & 2) != 0)
      {
        [(AWDLTrafficRegistrationConfiguration *)v30 setOptions:[(AWDLTrafficRegistrationConfiguration *)v30 options]| 1];
        v32 = valuePtr;
      }

      if ((v32 & 8) != 0)
      {
        [(AWDLTrafficRegistrationConfiguration *)v30 setOptions:[(AWDLTrafficRegistrationConfiguration *)v30 options]| 2];
      }
    }
  }

  v33 = CFDictionaryGetValue(a3, @"AWDL_TR_CHANNEL");
  if (v33)
  {
    v34 = v33;
    v35 = CFGetTypeID(v33);
    if (v35 == CFNumberGetTypeID())
    {
      v42 = 0;
      CFNumberGetValue(v34, kCFNumberSInt16Type, &v42);
      [(AWDLTrafficRegistrationConfiguration *)v30 setPreferredChannel:v42];
    }
  }

  v36 = CFDictionaryGetValue(a3, @"AWDL_TR_SEC_CHANNEL");
  if (v36)
  {
    v37 = v36;
    v38 = CFGetTypeID(v36);
    if (v38 == CFNumberGetTypeID())
    {
      v41 = 0;
      CFNumberGetValue(v37, kCFNumberSInt16Type, &v41);
      [(AWDLTrafficRegistrationConfiguration *)v30 setSecondaryPreferredChannel:v41];
    }
  }

  *a4 = CFBooleanGetValue(v8) != 0;
  self = v30;
  v39 = self;
LABEL_37:

  return v39;
}

+ (id)localizedErrorForConflictBetweenExistingService:(id)a3 withNewService:(id)a4 localDeviceName:(id)a5 localization:(id)a6
{
  v82[4] = *MEMORY[0x277D85DE8];
  v9 = a5;
  v10 = a6;
  v11 = a4;
  v12 = a3;
  v79 = [WiFiP2PXPCConnection convertError:5];
  v13 = canonicalService(v12);

  v14 = canonicalService(v11);

  if ([v14 isEqual:v13])
  {
    goto LABEL_2;
  }

  if (![v13 isEqual:@"airplay"])
  {
    if ([v13 isEqual:@"sidecar"])
    {
      if (v9)
      {
        v16 = objc_alloc(MEMORY[0x277CCACA8]);
        v17 = +[WiFiP2PXPCConnection frameworkBundle];
        v18 = v17;
        v19 = @"%@ is currently using Sidecar.";
        goto LABEL_24;
      }

      v20 = +[WiFiP2PXPCConnection frameworkBundle];
      v18 = v20;
      v21 = @"Unable to connect while the other device is running Sidecar.";
    }

    else if ([v13 isEqual:@"RemoteCamera"])
    {
      if (v9)
      {
        v16 = objc_alloc(MEMORY[0x277CCACA8]);
        v17 = +[WiFiP2PXPCConnection frameworkBundle];
        v18 = v17;
        v19 = @"%@ is currently using Continuity Camera.";
        goto LABEL_24;
      }

      v20 = +[WiFiP2PXPCConnection frameworkBundle];
      v18 = v20;
      v21 = @"Unable to connect while the other device is running Continuity Camera.";
    }

    else if ([v13 isEqual:@"RemoteScreen"])
    {
      if (v9)
      {
        v16 = objc_alloc(MEMORY[0x277CCACA8]);
        v17 = +[WiFiP2PXPCConnection frameworkBundle];
        v18 = v17;
        v19 = @"%@ is currently using iPhone Mirroring.";
        goto LABEL_24;
      }

      v20 = +[WiFiP2PXPCConnection frameworkBundle];
      v18 = v20;
      v21 = @"Unable to connect while the other device is running iPhone Mirroring.";
    }

    else if ([v13 isEqual:@"spatialStreaming"])
    {
      if (v9)
      {
        v16 = objc_alloc(MEMORY[0x277CCACA8]);
        v17 = +[WiFiP2PXPCConnection frameworkBundle];
        v18 = v17;
        v19 = @"%@ is currently using macOS Spatial Rendering.";
        goto LABEL_24;
      }

      v20 = +[WiFiP2PXPCConnection frameworkBundle];
      v18 = v20;
      v21 = @"Unable to connect while the other device is running macOS Spatial Rendering.";
    }

    else
    {
      if (![v13 isEqual:@"MacVirtualDisplay"])
      {
LABEL_2:
        v15 = &stru_2841A3278;
        goto LABEL_30;
      }

      if (v9)
      {
        v16 = objc_alloc(MEMORY[0x277CCACA8]);
        v17 = +[WiFiP2PXPCConnection frameworkBundle];
        v18 = v17;
        v19 = @"%@ is currently using Mac Virtual Display.";
        goto LABEL_24;
      }

      v20 = +[WiFiP2PXPCConnection frameworkBundle];
      v18 = v20;
      v21 = @"Unable to connect while the other device is running Mac Virtual Display.";
    }

LABEL_28:
    v15 = [v20 localizedStringForKey:v21 value:0 table:0 localization:v10];
    goto LABEL_29;
  }

  if (!v9)
  {
    v20 = +[WiFiP2PXPCConnection frameworkBundle];
    v18 = v20;
    v21 = @"Unable to connect while the other device is running AirPlay.";
    goto LABEL_28;
  }

  v16 = objc_alloc(MEMORY[0x277CCACA8]);
  v17 = +[WiFiP2PXPCConnection frameworkBundle];
  v18 = v17;
  v19 = @"%@ is currently using AirPlay.";
LABEL_24:
  v22 = [v17 localizedStringForKey:v19 value:0 table:0 localization:v10];
  v23 = [objc_alloc(MEMORY[0x277CBEAF8]) initWithLocaleIdentifier:v10];
  v15 = [v16 initWithFormat:v22 locale:v23, v9];

LABEL_29:
LABEL_30:
  v80 = v9;
  v78 = v14;
  if ([v14 isEqual:@"airplay"])
  {
    v24 = +[WiFiP2PXPCConnection frameworkBundle];
    v77 = [v24 localizedStringForKey:@"Unable to Connect to AirPlay" value:0 table:0 localization:v10];

    if ([v13 isEqual:@"airplay"])
    {
      if (v9)
      {
        v25 = objc_alloc(MEMORY[0x277CCACA8]);
        v26 = +[WiFiP2PXPCConnection frameworkBundle];
        v27 = [v26 localizedStringForKey:@"%@ unable to connect to AirPlay while active with another device." value:0 table:0 localization:v10];
        v28 = [objc_alloc(MEMORY[0x277CBEAF8]) initWithLocaleIdentifier:v10];
        v29 = [v25 initWithFormat:v27 locale:v28, v9];

        v15 = v27;
      }

      else
      {
        v26 = +[WiFiP2PXPCConnection frameworkBundle];
        v29 = [v26 localizedStringForKey:@"Unable to connect while the other device is active in a different AirPlay session." value:0 table:0 localization:v10];
      }

      v40 = +[WiFiP2PXPCConnection frameworkBundle];
      v32 = v40;
      v41 = @"To connect AirPlay to another device, disconnect the previous one first.";
LABEL_52:
      v42 = [v40 localizedStringForKey:v41 value:0 table:0 localization:v10];
      v15 = v29;
LABEL_127:
      v51 = v13;

      goto LABEL_128;
    }

    if ([v13 isEqual:@"sidecar"])
    {
      v31 = +[WiFiP2PXPCConnection frameworkBundle];
      v32 = v31;
      v33 = @"To use AirPlay, disconnect Sidecar first.";
      goto LABEL_126;
    }

    if ([v13 isEqual:@"RemoteCamera"])
    {
      v31 = +[WiFiP2PXPCConnection frameworkBundle];
      v32 = v31;
      v33 = @"To use AirPlay, disconnect Continuity Camera first.";
      goto LABEL_126;
    }

    if ([v13 isEqual:@"RemoteScreen"])
    {
      v31 = +[WiFiP2PXPCConnection frameworkBundle];
      v32 = v31;
      v33 = @"To use AirPlay, disconnect iPhone Mirroring first.";
      goto LABEL_126;
    }

    if ([v13 isEqual:@"spatialStreaming"])
    {
      v31 = +[WiFiP2PXPCConnection frameworkBundle];
      v32 = v31;
      v33 = @"To use AirPlay, disconnect macOS Spatial Rendering first.";
      goto LABEL_126;
    }

    if ([v13 isEqual:@"MacVirtualDisplay"])
    {
      v31 = +[WiFiP2PXPCConnection frameworkBundle];
      v32 = v31;
      v33 = @"To use AirPlay, disconnect Mac Virtual Display first.";
      goto LABEL_126;
    }

    goto LABEL_131;
  }

  if (![v14 isEqual:@"sidecar"])
  {
    if ([v14 isEqual:@"RemoteCamera"])
    {
      v34 = +[WiFiP2PXPCConnection frameworkBundle];
      v77 = [v34 localizedStringForKey:@"Unable to Connect to Continuity Camera" value:0 table:0 localization:v10];

      if ([v13 isEqual:@"airplay"])
      {
        v31 = +[WiFiP2PXPCConnection frameworkBundle];
        v32 = v31;
        v33 = @"To use Continuity Camera, disconnect AirPlay first.";
        goto LABEL_126;
      }

      if ([v13 isEqual:@"sidecar"])
      {
        v31 = +[WiFiP2PXPCConnection frameworkBundle];
        v32 = v31;
        v33 = @"To use Continuity Camera, disconnect Sidecar first.";
        goto LABEL_126;
      }

      if ([v13 isEqual:@"RemoteCamera"])
      {
        if (v9)
        {
          v44 = objc_alloc(MEMORY[0x277CCACA8]);
          v45 = +[WiFiP2PXPCConnection frameworkBundle];
          v46 = [v45 localizedStringForKey:@"%@ unable to connect to Continuity Camera while active with another device." value:0 table:0 localization:v10];
          v47 = [objc_alloc(MEMORY[0x277CBEAF8]) initWithLocaleIdentifier:v10];
          v29 = [v44 initWithFormat:v46 locale:v47, v9];

          v15 = v46;
        }

        else
        {
          v45 = +[WiFiP2PXPCConnection frameworkBundle];
          v29 = [v45 localizedStringForKey:@"Unable to connect while the other device is active in a different Continuity Camera session." value:0 table:0 localization:v10];
        }

        v40 = +[WiFiP2PXPCConnection frameworkBundle];
        v32 = v40;
        v41 = @"To connect Continuity Camera to another device, disconnect the previous one first.";
        goto LABEL_52;
      }

      if ([v13 isEqual:@"RemoteScreen"])
      {
        v31 = +[WiFiP2PXPCConnection frameworkBundle];
        v32 = v31;
        v33 = @"To use Continuity Camera, disconnect iPhone Mirroring first.";
        goto LABEL_126;
      }

      if ([v13 isEqual:@"spatialStreaming"])
      {
        v31 = +[WiFiP2PXPCConnection frameworkBundle];
        v32 = v31;
        v33 = @"To use Continuity Camera, disconnect macOS Spatial Rendering first.";
        goto LABEL_126;
      }

      if ([v13 isEqual:@"MacVirtualDisplay"])
      {
        v31 = +[WiFiP2PXPCConnection frameworkBundle];
        v32 = v31;
        v33 = @"To use Continuity Camera, disconnect Mac Virtual Display first.";
        goto LABEL_126;
      }

      goto LABEL_131;
    }

    if ([v14 isEqual:@"RemoteScreen"])
    {
      v39 = +[WiFiP2PXPCConnection frameworkBundle];
      v77 = [v39 localizedStringForKey:@"Unable to Connect to iPhone Mirroring" value:0 table:0 localization:v10];

      if ([v13 isEqual:@"airplay"])
      {
        v31 = +[WiFiP2PXPCConnection frameworkBundle];
        v32 = v31;
        v33 = @"To use iPhone Mirroring, disconnect AirPlay first.";
        goto LABEL_126;
      }

      if ([v13 isEqual:@"sidecar"])
      {
        v31 = +[WiFiP2PXPCConnection frameworkBundle];
        v32 = v31;
        v33 = @"To use iPhone Mirroring, disconnect Sidecar first.";
        goto LABEL_126;
      }

      if ([v13 isEqual:@"RemoteCamera"])
      {
        v31 = +[WiFiP2PXPCConnection frameworkBundle];
        v32 = v31;
        v33 = @"To use iPhone Mirroring, disconnect Continuity Camera first.";
        goto LABEL_126;
      }

      if ([v13 isEqual:@"MacVirtualDisplay"])
      {
        v31 = +[WiFiP2PXPCConnection frameworkBundle];
        v32 = v31;
        v33 = @"To use iPhone Mirroring, disconnect Mac Virtual Display first.";
        goto LABEL_126;
      }

      if ([v13 isEqual:@"RemoteScreen"])
      {
        if (v9)
        {
          v52 = objc_alloc(MEMORY[0x277CCACA8]);
          v53 = +[WiFiP2PXPCConnection frameworkBundle];
          v54 = [v53 localizedStringForKey:@"%@ unable to connect to iPhone Mirroring while active with another device." value:0 table:0 localization:v10];
          v55 = [objc_alloc(MEMORY[0x277CBEAF8]) initWithLocaleIdentifier:v10];
          v29 = [v52 initWithFormat:v54 locale:v55, v9];

          v15 = v54;
        }

        else
        {
          v53 = +[WiFiP2PXPCConnection frameworkBundle];
          v29 = [v53 localizedStringForKey:@"Unable to connect while the other device is active in a different iPhone Mirroring session." value:0 table:0 localization:v10];
        }

        v40 = +[WiFiP2PXPCConnection frameworkBundle];
        v32 = v40;
        v41 = @"To connect iPhone Mirroring to another device, disconnect the previous one first.";
        goto LABEL_52;
      }

      if ([v13 isEqual:@"spatialStreaming"])
      {
        v31 = +[WiFiP2PXPCConnection frameworkBundle];
        v32 = v31;
        v33 = @"To use iPhone Mirroring, disconnect macOS Spatial Rendering first.";
        goto LABEL_126;
      }

      goto LABEL_131;
    }

    if ([v14 isEqual:@"spatialStreaming"])
    {
      v43 = +[WiFiP2PXPCConnection frameworkBundle];
      v77 = [v43 localizedStringForKey:@"Unable to Connect to macOS Spatial Rendering" value:0 table:0 localization:v10];

      if ([v13 isEqual:@"airplay"])
      {
        v31 = +[WiFiP2PXPCConnection frameworkBundle];
        v32 = v31;
        v33 = @"To use macOS Spatial Rendering, disconnect AirPlay first.";
        goto LABEL_126;
      }

      if ([v13 isEqual:@"sidecar"])
      {
        v31 = +[WiFiP2PXPCConnection frameworkBundle];
        v32 = v31;
        v33 = @"To use macOS Spatial Rendering, disconnect Sidecar first.";
        goto LABEL_126;
      }

      if ([v13 isEqual:@"RemoteCamera"])
      {
        v31 = +[WiFiP2PXPCConnection frameworkBundle];
        v32 = v31;
        v33 = @"To use macOS Spatial Rendering, disconnect Continuity Camera first.";
        goto LABEL_126;
      }

      if ([v13 isEqual:@"RemoteScreen"])
      {
        v31 = +[WiFiP2PXPCConnection frameworkBundle];
        v32 = v31;
        v33 = @"To use macOS Spatial Rendering, disconnect iPhone Mirroring first.";
        goto LABEL_126;
      }

      if ([v13 isEqual:@"spatialStreaming"])
      {
        if (v9)
        {
          v56 = objc_alloc(MEMORY[0x277CCACA8]);
          v57 = +[WiFiP2PXPCConnection frameworkBundle];
          v58 = [v57 localizedStringForKey:@"%@ unable to connect to macOS Spatial Rendering while active with another device." value:0 table:0 localization:v10];
          v59 = [objc_alloc(MEMORY[0x277CBEAF8]) initWithLocaleIdentifier:v10];
          v29 = [v56 initWithFormat:v58 locale:v59, v9];

          v15 = v58;
        }

        else
        {
          v57 = +[WiFiP2PXPCConnection frameworkBundle];
          v29 = [v57 localizedStringForKey:@"Unable to connect while the other device is active in a different macOS Spatial Rendering session." value:0 table:0 localization:v10];
        }

        v40 = +[WiFiP2PXPCConnection frameworkBundle];
        v32 = v40;
        v41 = @"To connect macOS Spatial Rendering to another device, disconnect the previous one first.";
        goto LABEL_52;
      }

      if ([v13 isEqual:@"MacVirtualDisplay"])
      {
        v31 = +[WiFiP2PXPCConnection frameworkBundle];
        v32 = v31;
        v33 = @"To use macOS Spatial Rendering, disconnect Mac Virtual Display first.";
        goto LABEL_126;
      }

      goto LABEL_131;
    }

    if (![v14 isEqual:@"MacVirtualDisplay"])
    {
      v51 = v13;
      v42 = &stru_2841A3278;
      v77 = &stru_2841A3278;
      goto LABEL_128;
    }

    v48 = +[WiFiP2PXPCConnection frameworkBundle];
    v77 = [v48 localizedStringForKey:@"Unable to Connect to Mac Virtual Display" value:0 table:0 localization:v10];

    if ([v13 isEqual:@"airplay"])
    {
      v49 = @"To use Mac Virtual Display, disconnect AirPlay first.";
      v50 = v9;
    }

    else
    {
      v50 = v9;
      if ([v13 isEqual:@"sidecar"])
      {
        v49 = @"To use Mac Virtual Display, disconnect Sidecar first.";
      }

      else if ([v13 isEqual:@"RemoteCamera"])
      {
        v49 = @"To use Mac Virtual Display, disconnect Continuity Camera first.";
      }

      else if ([v13 isEqual:@"RemoteScreen"])
      {
        v49 = @"To use Mac Virtual Display, disconnect iPhone Mirroring first.";
      }

      else
      {
        if (![v13 isEqual:@"spatialStreaming"])
        {
          v42 = &stru_2841A3278;
          goto LABEL_118;
        }

        v49 = @"To use Mac Virtual Display, disconnect macOS Spatial Rendering first.";
      }
    }

    v60 = +[WiFiP2PXPCConnection frameworkBundle];
    v42 = [v60 localizedStringForKey:v49 value:0 table:0 localization:v10];

LABEL_118:
    if (![v13 isEqual:@"MacVirtualDisplay"])
    {
      v51 = v13;
      goto LABEL_128;
    }

    if (v50)
    {
      v61 = v50;
      v62 = objc_alloc(MEMORY[0x277CCACA8]);
      v63 = +[WiFiP2PXPCConnection frameworkBundle];
      v64 = [v63 localizedStringForKey:@"%@ unable to connect to Mac Virtual Display while active with another device." value:0 table:0 localization:v10];
      v65 = [objc_alloc(MEMORY[0x277CBEAF8]) initWithLocaleIdentifier:v10];
      v66 = [v62 initWithFormat:v64 locale:v65, v61];

      v15 = v64;
    }

    else
    {
      v63 = +[WiFiP2PXPCConnection frameworkBundle];
      v66 = [v63 localizedStringForKey:@"Unable to connect while the other device is active in a different Mac Virtual Display session." value:0 table:0 localization:v10];
    }

    v32 = +[WiFiP2PXPCConnection frameworkBundle];
    v67 = [v32 localizedStringForKey:@"To connect Mac Virtual Display to another device value:disconnect the previous one first." table:0 localization:{0, v10}];

    v15 = v66;
    v42 = v67;
    goto LABEL_127;
  }

  v30 = +[WiFiP2PXPCConnection frameworkBundle];
  v77 = [v30 localizedStringForKey:@"Unable to Connect to Sidecar" value:0 table:0 localization:v10];

  if ([v13 isEqual:@"airplay"])
  {
    v31 = +[WiFiP2PXPCConnection frameworkBundle];
    v32 = v31;
    v33 = @"To use Sidecar, disconnect AirPlay first.";
LABEL_126:
    v42 = [v31 localizedStringForKey:v33 value:0 table:0 localization:v10];
    goto LABEL_127;
  }

  if ([v13 isEqual:@"sidecar"])
  {
    if (v9)
    {
      v35 = objc_alloc(MEMORY[0x277CCACA8]);
      v36 = +[WiFiP2PXPCConnection frameworkBundle];
      v37 = [v36 localizedStringForKey:@"%@ unable to connect to Sidecar while active with another device." value:0 table:0 localization:v10];
      v38 = [objc_alloc(MEMORY[0x277CBEAF8]) initWithLocaleIdentifier:v10];
      v29 = [v35 initWithFormat:v37 locale:v38, v9];

      v15 = v37;
    }

    else
    {
      v36 = +[WiFiP2PXPCConnection frameworkBundle];
      v29 = [v36 localizedStringForKey:@"Unable to connect while the other device is active in a different Sidecar session." value:0 table:0 localization:v10];
    }

    v40 = +[WiFiP2PXPCConnection frameworkBundle];
    v32 = v40;
    v41 = @"To connect Sidecar to another device, disconnect the previous one first.";
    goto LABEL_52;
  }

  if ([v13 isEqual:@"RemoteCamera"])
  {
    v31 = +[WiFiP2PXPCConnection frameworkBundle];
    v32 = v31;
    v33 = @"To use Sidecar, disconnect Continuity Camera first.";
    goto LABEL_126;
  }

  if ([v13 isEqual:@"RemoteScreen"])
  {
    v31 = +[WiFiP2PXPCConnection frameworkBundle];
    v32 = v31;
    v33 = @"To use Sidecar, disconnect iPhone Mirroring first.";
    goto LABEL_126;
  }

  if ([v13 isEqual:@"spatialStreaming"])
  {
    v31 = +[WiFiP2PXPCConnection frameworkBundle];
    v32 = v31;
    v33 = @"To use Sidecar, disconnect macOS Spatial Rendering first.";
    goto LABEL_126;
  }

  if ([v13 isEqual:@"MacVirtualDisplay"])
  {
    v31 = +[WiFiP2PXPCConnection frameworkBundle];
    v32 = v31;
    v33 = @"To use Sidecar, disconnect Mac Virtual Display first.";
    goto LABEL_126;
  }

LABEL_131:
  v51 = v13;
  v42 = &stru_2841A3278;
LABEL_128:
  v68 = MEMORY[0x277CCA9B8];
  v69 = *MEMORY[0x277CCA470];
  v81[0] = *MEMORY[0x277CCA450];
  v81[1] = v69;
  v82[0] = v77;
  v82[1] = v15;
  v70 = *MEMORY[0x277CCA498];
  v82[2] = v42;
  v71 = *MEMORY[0x277CCA068];
  v81[2] = v70;
  v81[3] = v71;
  v72 = [v79 description];
  v82[3] = v72;
  v73 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v82 forKeys:v81 count:4];
  v74 = [v68 errorWithDomain:@"com.apple.wifip2pd" code:5 userInfo:v73];

  v75 = *MEMORY[0x277D85DE8];

  return v74;
}

- (BOOL)isKnownService
{
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:{@"airdrop", @"airplay", @"airplay-connectivity-check", @"timeSync", @"sidecar", @"ensemble", @"D2DMigration", @"catspolicy", @"airplay-sink", @"CARPLAY_UUID", @"wifid-assisted-discovery", @"ranging-Intiator", @"ranging-responder", @"avconference", @"FACETIME_UUID", @"WiFiCallingUUID", @"RemoteCamera", @"TVRemoteCamera", @"MPRemoteCamera", @"rtmode", @"EdgeKit", @"RemoteScreen", @"spatialStreaming", 0}];
  v4 = [(AWDLTrafficRegistrationConfiguration *)self uniqueIdentifier];
  v5 = [v3 containsObject:v4];

  return v5;
}

@end