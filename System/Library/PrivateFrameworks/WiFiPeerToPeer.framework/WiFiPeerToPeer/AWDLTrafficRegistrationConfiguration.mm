@interface AWDLTrafficRegistrationConfiguration
+ (id)localizedErrorForConflictBetweenExistingService:(id)service withNewService:(id)newService localDeviceName:(id)name localization:(id)localization;
- (AWDLTrafficRegistrationConfiguration)initWithCoder:(id)coder;
- (AWDLTrafficRegistrationConfiguration)initWithDictionary:(__CFDictionary *)dictionary isActive:(BOOL *)active;
- (AWDLTrafficRegistrationConfiguration)initWithUniqueIdentifier:(id)identifier peerAddress:(id)address;
- (AWDLTrafficRegistrationConfiguration)initWithUniqueIdentifier:(id)identifier peerIPv6Address:(in6_addr)address;
- (BOOL)hasSimilarOptionsTo:(id)to;
- (BOOL)isEqual:(id)equal;
- (BOOL)isKnownService;
- (NSString)localization;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation AWDLTrafficRegistrationConfiguration

- (AWDLTrafficRegistrationConfiguration)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"AWDLTrafficRegistrationConfiguration.uniqueIdentifierKey"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"AWDLTrafficRegistrationConfiguration.peerAddressKey"];
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
    selfCopy = 0;
  }

  else
  {
    v9 = [(AWDLTrafficRegistrationConfiguration *)self initWithUniqueIdentifier:v5 peerAddress:v6];
    v10 = v9;
    if (v9)
    {
      v9->_options = [coderCopy decodeIntegerForKey:@"AWDLTrafficRegistrationConfiguration.optionsKey"];
      v10->_preferredChannel = [coderCopy decodeInt32ForKey:@"AWDLTrafficRegistrationConfiguration.preferredChannelKey"];
      v10->_secondaryPreferredChannel = [coderCopy decodeInt32ForKey:@"AWDLTrafficRegistrationConfiguration.secondaryPreferredChannelKey"];
      v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"AWDLTrafficRegistrationConfiguration.localization"];
      derivedLocalization = v10->_derivedLocalization;
      v10->_derivedLocalization = v11;

      if ([v5 isEqualToString:@"airplay"])
      {
        v10->_legacyUpgradeRequired = [coderCopy decodeBoolForKey:@"AWDLTrafficRegistrationConfiguration.legacyUpgradeRequired"];
      }
    }

    self = v10;
    selfCopy = self;
  }

  return selfCopy;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  uniqueIdentifier = [(AWDLTrafficRegistrationConfiguration *)self uniqueIdentifier];
  [coderCopy encodeObject:uniqueIdentifier forKey:@"AWDLTrafficRegistrationConfiguration.uniqueIdentifierKey"];

  peerAddress = [(AWDLTrafficRegistrationConfiguration *)self peerAddress];
  [coderCopy encodeObject:peerAddress forKey:@"AWDLTrafficRegistrationConfiguration.peerAddressKey"];

  [coderCopy encodeInteger:-[AWDLTrafficRegistrationConfiguration options](self forKey:{"options"), @"AWDLTrafficRegistrationConfiguration.optionsKey"}];
  v6 = +[WiFiP2PXPCConnection localization];
  [coderCopy encodeObject:v6 forKey:@"AWDLTrafficRegistrationConfiguration.localization"];

  [coderCopy encodeInt32:-[AWDLTrafficRegistrationConfiguration preferredChannel](self forKey:{"preferredChannel"), @"AWDLTrafficRegistrationConfiguration.preferredChannelKey"}];
  [coderCopy encodeInt32:-[AWDLTrafficRegistrationConfiguration secondaryPreferredChannel](self forKey:{"secondaryPreferredChannel"), @"AWDLTrafficRegistrationConfiguration.secondaryPreferredChannelKey"}];
  uniqueIdentifier2 = [(AWDLTrafficRegistrationConfiguration *)self uniqueIdentifier];
  v8 = [uniqueIdentifier2 isEqualToString:@"airplay"];

  if (v8)
  {
    [coderCopy encodeBool:-[AWDLTrafficRegistrationConfiguration legacyUpgradeRequired](self forKey:{"legacyUpgradeRequired"), @"AWDLTrafficRegistrationConfiguration.legacyUpgradeRequired"}];
  }
}

- (AWDLTrafficRegistrationConfiguration)initWithUniqueIdentifier:(id)identifier peerAddress:(id)address
{
  identifierCopy = identifier;
  addressCopy = address;
  v15.receiver = self;
  v15.super_class = AWDLTrafficRegistrationConfiguration;
  v8 = [(AWDLTrafficRegistrationConfiguration *)&v15 init];
  if (v8)
  {
    v9 = [identifierCopy copy];
    v10 = *(v8 + 3);
    *(v8 + 3) = v9;

    v11 = [addressCopy copy];
    v12 = *(v8 + 4);
    *(v8 + 4) = v11;

    *(v8 + 5) = 0;
    *(v8 + 18) = 0;
    v13 = *(v8 + 1);
    *(v8 + 1) = 0;

    v8[17] = 0;
    v8[16] = [identifierCopy isEqualToString:@"airplay"];
  }

  return v8;
}

- (AWDLTrafficRegistrationConfiguration)initWithUniqueIdentifier:(id)identifier peerIPv6Address:(in6_addr)address
{
  v4 = *&address.__u6_addr32[2];
  v5 = *address.__u6_addr8;
  identifierCopy = identifier;
  v8 = [[WiFiMACAddress alloc] initWithLinkLocalIPv6Address:v5, v4];
  if (v8)
  {
    self = [(AWDLTrafficRegistrationConfiguration *)self initWithUniqueIdentifier:identifierCopy peerAddress:v8];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
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

    v5 = equalCopy;
    uniqueIdentifier = [(AWDLTrafficRegistrationConfiguration *)self uniqueIdentifier];
    uniqueIdentifier2 = [(AWDLTrafficRegistrationConfiguration *)v5 uniqueIdentifier];
    if (([uniqueIdentifier isEqual:uniqueIdentifier2] & 1) == 0)
    {

LABEL_10:
      v11 = 0;
      goto LABEL_11;
    }

    peerAddress = [(AWDLTrafficRegistrationConfiguration *)self peerAddress];
    peerAddress2 = [(AWDLTrafficRegistrationConfiguration *)v5 peerAddress];
    v10 = [peerAddress isEqual:peerAddress2];

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
  uniqueIdentifier = [(AWDLTrafficRegistrationConfiguration *)self uniqueIdentifier];
  v4 = [uniqueIdentifier hash];
  peerAddress = [(AWDLTrafficRegistrationConfiguration *)self peerAddress];
  v6 = [peerAddress hash];

  return v6 ^ v4;
}

- (BOOL)hasSimilarOptionsTo:(id)to
{
  toCopy = to;
  options = [(AWDLTrafficRegistrationConfiguration *)self options];
  if (options == [toCopy options] && (v6 = -[AWDLTrafficRegistrationConfiguration preferredChannel](self, "preferredChannel"), v6 == objc_msgSend(toCopy, "preferredChannel")))
  {
    secondaryPreferredChannel = [(AWDLTrafficRegistrationConfiguration *)self secondaryPreferredChannel];
    v8 = secondaryPreferredChannel == [toCopy secondaryPreferredChannel];
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

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [AWDLTrafficRegistrationConfiguration alloc];
  uniqueIdentifier = [(AWDLTrafficRegistrationConfiguration *)self uniqueIdentifier];
  peerAddress = [(AWDLTrafficRegistrationConfiguration *)self peerAddress];
  v7 = [(AWDLTrafficRegistrationConfiguration *)v4 initWithUniqueIdentifier:uniqueIdentifier peerAddress:peerAddress];

  [(AWDLTrafficRegistrationConfiguration *)v7 setOptions:[(AWDLTrafficRegistrationConfiguration *)self options]];
  [(AWDLTrafficRegistrationConfiguration *)v7 setPreferredChannel:[(AWDLTrafficRegistrationConfiguration *)self preferredChannel]];
  [(AWDLTrafficRegistrationConfiguration *)v7 setSecondaryPreferredChannel:[(AWDLTrafficRegistrationConfiguration *)self secondaryPreferredChannel]];
  [(AWDLTrafficRegistrationConfiguration *)v7 setLegacyUpgradeRequired:[(AWDLTrafficRegistrationConfiguration *)self legacyUpgradeRequired]];
  invalidationHandler = [(AWDLTrafficRegistrationConfiguration *)self invalidationHandler];
  [(AWDLTrafficRegistrationConfiguration *)v7 setInvalidationHandler:invalidationHandler];

  return v7;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  uniqueIdentifier = [(AWDLTrafficRegistrationConfiguration *)self uniqueIdentifier];
  peerAddress = [(AWDLTrafficRegistrationConfiguration *)self peerAddress];
  v6 = [v3 stringWithFormat:@"<AWDLTrafficRegistrationConfiguration %@ to %@>", uniqueIdentifier, peerAddress];

  return v6;
}

- (AWDLTrafficRegistrationConfiguration)initWithDictionary:(__CFDictionary *)dictionary isActive:(BOOL *)active
{
  Value = CFDictionaryGetValue(dictionary, @"TR_ACTIVE");
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

  v10 = CFDictionaryGetValue(dictionary, @"TR_PEER_CONTEXTS");
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

    v25 = CFDictionaryGetValue(dictionary, @"TR_SESSION_FLAGS");
  }

  else
  {
    v21 = CFDictionaryGetValue(dictionary, @"AWDL_TR_ADDR");
    if (v21 && (v22 = v21, v23 = CFGetTypeID(v21), v23 == CFDataGetTypeID()) && CFDataGetLength(v22) == 6)
    {
      v24 = CFDataGetBytePtr(v22);
      v20 = *v24 | (*(v24 + 2) << 32);
    }

    else
    {
      v20 = 0;
    }

    v25 = CFDictionaryGetValue(dictionary, @"AWDL_TR_RT_FLAGS");
    v26 = CFDictionaryGetValue(dictionary, @"AWDL_TR_UID");
    if (v26)
    {
      goto LABEL_22;
    }
  }

  v26 = CFDictionaryGetValue(dictionary, @"TR_SRV_NAME");
  if (!v26)
  {
LABEL_36:
    selfCopy = 0;
    goto LABEL_37;
  }

LABEL_22:
  v27 = v26;
  v28 = CFGetTypeID(v26);
  if (v28 != CFStringGetTypeID())
  {
    goto LABEL_36;
  }

  0xFFFFFFFFFFFFLL = [[WiFiMACAddress alloc] initWithAddress:v20 & 0xFFFFFFFFFFFFLL];
  v30 = [(AWDLTrafficRegistrationConfiguration *)self initWithUniqueIdentifier:v27 peerAddress:0xFFFFFFFFFFFFLL];

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

  v33 = CFDictionaryGetValue(dictionary, @"AWDL_TR_CHANNEL");
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

  v36 = CFDictionaryGetValue(dictionary, @"AWDL_TR_SEC_CHANNEL");
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

  *active = CFBooleanGetValue(v8) != 0;
  self = v30;
  selfCopy = self;
LABEL_37:

  return selfCopy;
}

+ (id)localizedErrorForConflictBetweenExistingService:(id)service withNewService:(id)newService localDeviceName:(id)name localization:(id)localization
{
  v82[4] = *MEMORY[0x277D85DE8];
  nameCopy = name;
  localizationCopy = localization;
  newServiceCopy = newService;
  serviceCopy = service;
  v79 = [WiFiP2PXPCConnection convertError:5];
  v13 = canonicalService(serviceCopy);

  v14 = canonicalService(newServiceCopy);

  if ([v14 isEqual:v13])
  {
    goto LABEL_2;
  }

  if (![v13 isEqual:@"airplay"])
  {
    if ([v13 isEqual:@"sidecar"])
    {
      if (nameCopy)
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
      if (nameCopy)
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
      if (nameCopy)
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
      if (nameCopy)
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
        nameCopy = &stru_2841A3278;
        goto LABEL_30;
      }

      if (nameCopy)
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
    nameCopy = [v20 localizedStringForKey:v21 value:0 table:0 localization:localizationCopy];
    goto LABEL_29;
  }

  if (!nameCopy)
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
  v22 = [v17 localizedStringForKey:v19 value:0 table:0 localization:localizationCopy];
  v23 = [objc_alloc(MEMORY[0x277CBEAF8]) initWithLocaleIdentifier:localizationCopy];
  nameCopy = [v16 initWithFormat:v22 locale:v23, nameCopy];

LABEL_29:
LABEL_30:
  v80 = nameCopy;
  v78 = v14;
  if ([v14 isEqual:@"airplay"])
  {
    v24 = +[WiFiP2PXPCConnection frameworkBundle];
    v77 = [v24 localizedStringForKey:@"Unable to Connect to AirPlay" value:0 table:0 localization:localizationCopy];

    if ([v13 isEqual:@"airplay"])
    {
      if (nameCopy)
      {
        v25 = objc_alloc(MEMORY[0x277CCACA8]);
        v26 = +[WiFiP2PXPCConnection frameworkBundle];
        v27 = [v26 localizedStringForKey:@"%@ unable to connect to AirPlay while active with another device." value:0 table:0 localization:localizationCopy];
        v28 = [objc_alloc(MEMORY[0x277CBEAF8]) initWithLocaleIdentifier:localizationCopy];
        nameCopy2 = [v25 initWithFormat:v27 locale:v28, nameCopy];

        nameCopy = v27;
      }

      else
      {
        v26 = +[WiFiP2PXPCConnection frameworkBundle];
        nameCopy2 = [v26 localizedStringForKey:@"Unable to connect while the other device is active in a different AirPlay session." value:0 table:0 localization:localizationCopy];
      }

      v40 = +[WiFiP2PXPCConnection frameworkBundle];
      v32 = v40;
      v41 = @"To connect AirPlay to another device, disconnect the previous one first.";
LABEL_52:
      v42 = [v40 localizedStringForKey:v41 value:0 table:0 localization:localizationCopy];
      nameCopy = nameCopy2;
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
      v77 = [v34 localizedStringForKey:@"Unable to Connect to Continuity Camera" value:0 table:0 localization:localizationCopy];

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
        if (nameCopy)
        {
          v44 = objc_alloc(MEMORY[0x277CCACA8]);
          v45 = +[WiFiP2PXPCConnection frameworkBundle];
          v46 = [v45 localizedStringForKey:@"%@ unable to connect to Continuity Camera while active with another device." value:0 table:0 localization:localizationCopy];
          v47 = [objc_alloc(MEMORY[0x277CBEAF8]) initWithLocaleIdentifier:localizationCopy];
          nameCopy2 = [v44 initWithFormat:v46 locale:v47, nameCopy];

          nameCopy = v46;
        }

        else
        {
          v45 = +[WiFiP2PXPCConnection frameworkBundle];
          nameCopy2 = [v45 localizedStringForKey:@"Unable to connect while the other device is active in a different Continuity Camera session." value:0 table:0 localization:localizationCopy];
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
      v77 = [v39 localizedStringForKey:@"Unable to Connect to iPhone Mirroring" value:0 table:0 localization:localizationCopy];

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
        if (nameCopy)
        {
          v52 = objc_alloc(MEMORY[0x277CCACA8]);
          v53 = +[WiFiP2PXPCConnection frameworkBundle];
          v54 = [v53 localizedStringForKey:@"%@ unable to connect to iPhone Mirroring while active with another device." value:0 table:0 localization:localizationCopy];
          v55 = [objc_alloc(MEMORY[0x277CBEAF8]) initWithLocaleIdentifier:localizationCopy];
          nameCopy2 = [v52 initWithFormat:v54 locale:v55, nameCopy];

          nameCopy = v54;
        }

        else
        {
          v53 = +[WiFiP2PXPCConnection frameworkBundle];
          nameCopy2 = [v53 localizedStringForKey:@"Unable to connect while the other device is active in a different iPhone Mirroring session." value:0 table:0 localization:localizationCopy];
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
      v77 = [v43 localizedStringForKey:@"Unable to Connect to macOS Spatial Rendering" value:0 table:0 localization:localizationCopy];

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
        if (nameCopy)
        {
          v56 = objc_alloc(MEMORY[0x277CCACA8]);
          v57 = +[WiFiP2PXPCConnection frameworkBundle];
          v58 = [v57 localizedStringForKey:@"%@ unable to connect to macOS Spatial Rendering while active with another device." value:0 table:0 localization:localizationCopy];
          v59 = [objc_alloc(MEMORY[0x277CBEAF8]) initWithLocaleIdentifier:localizationCopy];
          nameCopy2 = [v56 initWithFormat:v58 locale:v59, nameCopy];

          nameCopy = v58;
        }

        else
        {
          v57 = +[WiFiP2PXPCConnection frameworkBundle];
          nameCopy2 = [v57 localizedStringForKey:@"Unable to connect while the other device is active in a different macOS Spatial Rendering session." value:0 table:0 localization:localizationCopy];
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
    v77 = [v48 localizedStringForKey:@"Unable to Connect to Mac Virtual Display" value:0 table:0 localization:localizationCopy];

    if ([v13 isEqual:@"airplay"])
    {
      v49 = @"To use Mac Virtual Display, disconnect AirPlay first.";
      v50 = nameCopy;
    }

    else
    {
      v50 = nameCopy;
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
    v42 = [v60 localizedStringForKey:v49 value:0 table:0 localization:localizationCopy];

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
      v64 = [v63 localizedStringForKey:@"%@ unable to connect to Mac Virtual Display while active with another device." value:0 table:0 localization:localizationCopy];
      v65 = [objc_alloc(MEMORY[0x277CBEAF8]) initWithLocaleIdentifier:localizationCopy];
      v66 = [v62 initWithFormat:v64 locale:v65, v61];

      nameCopy = v64;
    }

    else
    {
      v63 = +[WiFiP2PXPCConnection frameworkBundle];
      v66 = [v63 localizedStringForKey:@"Unable to connect while the other device is active in a different Mac Virtual Display session." value:0 table:0 localization:localizationCopy];
    }

    v32 = +[WiFiP2PXPCConnection frameworkBundle];
    v67 = [v32 localizedStringForKey:@"To connect Mac Virtual Display to another device value:disconnect the previous one first." table:0 localization:{0, localizationCopy}];

    nameCopy = v66;
    v42 = v67;
    goto LABEL_127;
  }

  v30 = +[WiFiP2PXPCConnection frameworkBundle];
  v77 = [v30 localizedStringForKey:@"Unable to Connect to Sidecar" value:0 table:0 localization:localizationCopy];

  if ([v13 isEqual:@"airplay"])
  {
    v31 = +[WiFiP2PXPCConnection frameworkBundle];
    v32 = v31;
    v33 = @"To use Sidecar, disconnect AirPlay first.";
LABEL_126:
    v42 = [v31 localizedStringForKey:v33 value:0 table:0 localization:localizationCopy];
    goto LABEL_127;
  }

  if ([v13 isEqual:@"sidecar"])
  {
    if (nameCopy)
    {
      v35 = objc_alloc(MEMORY[0x277CCACA8]);
      v36 = +[WiFiP2PXPCConnection frameworkBundle];
      v37 = [v36 localizedStringForKey:@"%@ unable to connect to Sidecar while active with another device." value:0 table:0 localization:localizationCopy];
      v38 = [objc_alloc(MEMORY[0x277CBEAF8]) initWithLocaleIdentifier:localizationCopy];
      nameCopy2 = [v35 initWithFormat:v37 locale:v38, nameCopy];

      nameCopy = v37;
    }

    else
    {
      v36 = +[WiFiP2PXPCConnection frameworkBundle];
      nameCopy2 = [v36 localizedStringForKey:@"Unable to connect while the other device is active in a different Sidecar session." value:0 table:0 localization:localizationCopy];
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
  v82[1] = nameCopy;
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
  uniqueIdentifier = [(AWDLTrafficRegistrationConfiguration *)self uniqueIdentifier];
  v5 = [v3 containsObject:uniqueIdentifier];

  return v5;
}

@end