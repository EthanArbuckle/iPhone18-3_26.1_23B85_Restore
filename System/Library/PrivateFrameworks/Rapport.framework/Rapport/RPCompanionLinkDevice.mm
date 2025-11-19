@interface RPCompanionLinkDevice
- (BOOL)isEqualToDevice:(id)a3;
- (BOOL)isEqualToDeviceBasic:(id)a3;
- (NSString)effectiveIdentifier;
- (NSString)fileTransferTargetID;
- (RPCompanionLinkDevice)init;
- (RPCompanionLinkDevice)initWithCoder:(id)a3;
- (id)descriptionWithLevel:(int)a3;
- (unsigned)updateWithBonjourDevice:(id)a3;
- (unsigned)updateWithSFDevice:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)setFileTransferTargetID:(id)a3;
@end

@implementation RPCompanionLinkDevice

- (RPCompanionLinkDevice)init
{
  v4.receiver = self;
  v4.super_class = RPCompanionLinkDevice;
  v2 = [(RPCompanionLinkDevice *)&v4 init];
  if (v2 && GestaltGetDeviceClass() != 6)
  {
    v2->_standaloneWatch = -1;
  }

  return v2;
}

- (NSString)effectiveIdentifier
{
  identifier = self->super._identifier;
  if (!identifier)
  {
    identifier = self->_publicIdentifier;
    if (!identifier)
    {
      identifier = &stru_1F2ED6FB8;
    }
  }

  return identifier;
}

- (RPCompanionLinkDevice)initWithCoder:(id)a3
{
  v4 = a3;
  v21.receiver = self;
  v21.super_class = RPCompanionLinkDevice;
  v5 = [(RPEndpoint *)&v21 initWithCoder:v4];
  if (v5)
  {
    v6 = v4;
    objc_opt_class();
    NSDecodeObjectIfPresent();

    v22 = 0;
    if (NSDecodeSInt64RangedIfPresent())
    {
      v5->_deviceCapabilityFlags = v22;
    }

    v7 = v6;
    objc_opt_class();
    NSDecodeObjectIfPresent();

    v8 = v7;
    objc_opt_class();
    NSDecodeObjectIfPresent();

    v22 = 0;
    if (NSDecodeSInt64RangedIfPresent())
    {
      v5->_deviceFlags = v22;
    }

    v22 = 0;
    if (NSDecodeSInt64RangedIfPresent())
    {
      v5->_flags = v22;
    }

    v9 = v8;
    objc_opt_class();
    NSDecodeObjectIfPresent();

    v10 = v9;
    objc_opt_class();
    NSDecodeObjectIfPresent();

    v11 = v10;
    objc_opt_class();
    NSDecodeObjectIfPresent();

    v22 = 0;
    if (NSDecodeSInt64RangedIfPresent())
    {
      v5->_listeningPort = v22;
    }

    v22 = 0;
    if (NSDecodeSInt64RangedIfPresent())
    {
      v5->_mediaAccessControlSetting = v22;
    }

    v12 = v11;
    objc_opt_class();
    NSDecodeObjectIfPresent();

    v13 = v12;
    objc_opt_class();
    NSDecodeObjectIfPresent();

    v22 = 0;
    if (NSDecodeSInt64RangedIfPresent())
    {
      v5->_mediaSystemRole = v22;
    }

    v22 = 0;
    if (NSDecodeSInt64RangedIfPresent())
    {
      v5->_mediaSystemState = v22;
    }

    v14 = v13;
    if ([v14 containsValueForKey:@"pers"])
    {
      v5->_personal = [v14 decodeBoolForKey:@"pers"];
    }

    v22 = 0;
    if (NSDecodeSInt64RangedIfPresent())
    {
      v5->_personalDeviceState = v22;
    }

    v22 = 0;
    if (NSDecodeSInt64RangedIfPresent())
    {
      v5->_personalRequestsState = v22;
    }

    v15 = v14;
    objc_opt_class();
    NSDecodeObjectIfPresent();

    v16 = v15;
    objc_opt_class();
    NSDecodeObjectIfPresent();

    v17 = v16;
    objc_opt_class();
    NSDecodeObjectIfPresent();

    v18 = v17;
    objc_opt_class();
    NSDecodeStandardContainerIfPresent();

    v22 = 0;
    if (NSDecodeSInt64RangedIfPresent())
    {
      v5->_standaloneWatch = v22;
    }

    v19 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v25.receiver = self;
  v25.super_class = RPCompanionLinkDevice;
  [(RPEndpoint *)&v25 encodeWithCoder:v4];
  activeUserAltDSID = self->_activeUserAltDSID;
  if (activeUserAltDSID)
  {
    [v4 encodeObject:activeUserAltDSID forKey:@"altDSID"];
  }

  deviceCapabilityFlags = self->_deviceCapabilityFlags;
  if (deviceCapabilityFlags)
  {
    [v4 encodeInt64:deviceCapabilityFlags forKey:@"dCapF"];
  }

  deviceColor = self->_deviceColor;
  if (deviceColor)
  {
    [v4 encodeObject:deviceColor forKey:@"dCl"];
  }

  if (self->_deviceFlags)
  {
    [v4 encodeInteger:? forKey:?];
  }

  fileTransferTargetID = self->_fileTransferTargetID;
  if (fileTransferTargetID)
  {
    [v4 encodeObject:fileTransferTargetID forKey:@"dFtTID"];
  }

  flags = self->_flags;
  if (flags)
  {
    [v4 encodeInt64:flags forKey:@"flags"];
  }

  homeKitIdentifier = self->_homeKitIdentifier;
  if (homeKitIdentifier)
  {
    [v4 encodeObject:homeKitIdentifier forKey:@"hkID"];
  }

  idsCorrelationIdentifier = self->super._idsCorrelationIdentifier;
  if (idsCorrelationIdentifier)
  {
    [v4 encodeObject:idsCorrelationIdentifier forKey:@"idsCID"];
  }

  idsPersonalDeviceIdentifier = self->_idsPersonalDeviceIdentifier;
  if (idsPersonalDeviceIdentifier)
  {
    [v4 encodeObject:idsPersonalDeviceIdentifier forKey:@"idsP"];
  }

  listeningPort = self->_listeningPort;
  if (listeningPort)
  {
    [v4 encodeInteger:listeningPort forKey:@"lP"];
  }

  mediaAccessControlSetting = self->_mediaAccessControlSetting;
  if (mediaAccessControlSetting)
  {
    [v4 encodeInteger:mediaAccessControlSetting forKey:@"MAc"];
  }

  mediaSystemIdentifier = self->_mediaSystemIdentifier;
  if (mediaSystemIdentifier)
  {
    [v4 encodeObject:mediaSystemIdentifier forKey:@"MSi"];
  }

  mediaSystemName = self->_mediaSystemName;
  if (mediaSystemName)
  {
    [v4 encodeObject:mediaSystemName forKey:@"MSn"];
  }

  mediaSystemRole = self->_mediaSystemRole;
  if (mediaSystemRole)
  {
    [v4 encodeInteger:mediaSystemRole forKey:@"MSr"];
  }

  mediaSystemState = self->_mediaSystemState;
  if (mediaSystemState)
  {
    [v4 encodeInteger:mediaSystemState forKey:@"MSs"];
  }

  if (self->_personal)
  {
    [v4 encodeBool:1 forKey:@"pers"];
  }

  personalDeviceState = self->_personalDeviceState;
  if (personalDeviceState)
  {
    [v4 encodeInteger:personalDeviceState forKey:@"pds"];
  }

  personalRequestsState = self->_personalRequestsState;
  if (personalRequestsState)
  {
    [v4 encodeInteger:personalRequestsState forKey:@"prs"];
  }

  publicIdentifier = self->_publicIdentifier;
  if (publicIdentifier)
  {
    [v4 encodeObject:publicIdentifier forKey:@"pubID"];
  }

  role = self->_role;
  if (role)
  {
    [v4 encodeObject:role forKey:@"role"];
  }

  roomName = self->_roomName;
  if (roomName)
  {
    [v4 encodeObject:roomName forKey:@"rn"];
  }

  siriInfo = self->_siriInfo;
  if (siriInfo)
  {
    [v4 encodeObject:siriInfo forKey:@"siriInfo"];
  }

  if (self->_standaloneWatch)
  {
    [v4 encodeInteger:? forKey:?];
  }
}

- (id)descriptionWithLevel:(int)a3
{
  v116[3] = *MEMORY[0x1E69E9840];
  if (a3 <= 49)
  {
    v5 = 100;
  }

  else
  {
    v5 = 8;
  }

  v6 = shouldPrintSensitiveData();
  if (v6)
  {
    v7 = v5;
  }

  else
  {
    v7 = 8;
  }

  v8 = self->super._identifier;
  v9 = self->super._idsDeviceIdentifier;
  if ([(NSString *)v9 isEqual:v8])
  {

    v8 = 0;
  }

  v10 = self->_publicIdentifier;
  if ([(NSString *)v10 isEqual:v8])
  {

    v8 = 0;
    goto LABEL_14;
  }

  if (!v8)
  {
LABEL_14:
    v11 = 0;
    if (!v9)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  v115 = 0;
  formatSensitiveData("%sID ", v6);
  [0 length];
  NSAppendPrintF();
  v11 = 0;
  if (v9)
  {
LABEL_15:
    v114 = v11;
    formatSensitiveData("%sIDS ", v6);
    [v11 length];
    NSAppendPrintF();
    v12 = v11;

    v11 = v12;
  }

LABEL_16:
  if (v10)
  {
    v113 = v11;
    formatSensitiveData("%sPI ", v6);
    [v11 length];
    NSAppendPrintF();
    v13 = v11;

    v11 = v13;
  }

  v94 = v7;
  v14 = self->super._name;
  if (v14)
  {
    v112 = v11;
    formatSensitiveData(", Nm ", v6);
    NSAppendPrintF();
    v15 = v11;

    v11 = v15;
  }

  v16 = self->super._model;
  if (v16)
  {
    v111 = v11;
    formatSensitiveData(", Md ", v6);
    NSAppendPrintF();
    v17 = v11;

    v11 = v17;
  }

  v110.receiver = self;
  v110.super_class = RPCompanionLinkDevice;
  v18 = [(RPEndpoint *)&v110 activityLevel];
  if (v18)
  {
    v109 = v11;
    if (v18 <= 0xE)
    {
      v19 = off_1E7C93870[v18 - 1];
    }

    NSAppendPrintF();
    v20 = v109;

    v11 = v20;
  }

  if (a3 <= 20)
  {
    v21 = self->super._accountID;
    if (v21)
    {
      v108 = v11;
      formatSensitiveData(", AID ", v6);
      NSAppendPrintF();
      v22 = v11;

      v11 = v22;
    }

    v23 = self->super._idsCorrelationIdentifier;
    if (v23)
    {
      v107 = v11;
      formatSensitiveData(", CID ", v6);
      NSAppendPrintF();
      v24 = v11;

      v11 = v24;
    }

    v25 = self->_deviceColor;
    if (v25)
    {
      v106 = v11;
      formatSensitiveData(", Cl ", v6);
      NSAppendPrintF();
      v26 = v11;

      v11 = v26;
    }

    v27 = self->_roomName;
    if (v27)
    {
      v105 = v11;
      formatSensitiveData(", Rm ", v6);
      NSAppendPrintF();
      v28 = v11;

      v11 = v28;
    }

    v29 = self->_homeKitIdentifier;
    if (v29)
    {
      v104 = v11;
      formatSensitiveData(", HKI ", v6);
      NSAppendPrintF();
      v30 = v11;

      v11 = v30;
    }

    if (self->super._hotspotInfo)
    {
      v103 = v11;
      NSAppendPrintF();
      v31 = v11;

      v11 = v31;
    }

    v32 = self->_idsPersonalDeviceIdentifier;
    if (v32)
    {
      v102 = v11;
      formatSensitiveData(", IDP ", v6);
      NSAppendPrintF();
      v33 = v11;

      v11 = v33;
    }

    if (self->_deviceCapabilityFlags)
    {
      v101 = v11;
      NSAppendPrintF();
      v34 = v11;

      v11 = v34;
    }
  }

  v35 = self->_activeUserAltDSID;
  if (v35)
  {
    v100 = v11;
    formatSensitiveData(", ADSID ", v6);
    NSAppendPrintF();
    v36 = v11;

    v11 = v36;
  }

  v37 = self->super._sourceVersion;
  if (v37)
  {
    v99 = v11;
    formatSensitiveData(", SV ", v6);
    NSAppendPrintF();
    v38 = v11;

    v11 = v38;
  }

  v98.receiver = self;
  v98.super_class = RPCompanionLinkDevice;
  [(RPEndpoint *)&v98 operatingSystemVersion];
  if (v97)
  {
    v96 = v11;
    formatSensitiveData(", OSV ", v6);
    v95.receiver = self;
    v95.super_class = RPCompanionLinkDevice;
    [(RPEndpoint *)&v95 operatingSystemVersion];
    v91 = RPNSOperatingSystemVersionToString(v116);
    NSAppendPrintF();
    v39 = v96;

    v11 = v39;
  }

  linkType = self->super._linkType;
  if (linkType)
  {
    if (linkType <= 0xB)
    {
      v41 = off_1E7C938E0[linkType - 1];
    }

    NSAppendPrintF();
    v42 = v11;

    v11 = v42;
  }

  if (self->_uiTriggered)
  {
    NSAppendPrintF();
    v43 = v11;

    v11 = v43;
  }

  if (self->super._statusFlags)
  {
    NSAppendPrintF();
    v44 = v11;

    v11 = v44;
  }

  if (self->_deviceFlags)
  {
    NSAppendPrintF();
    v45 = v11;

    v11 = v45;
  }

  if (a3 <= 20)
  {
    if (self->super._hotspotInfo)
    {
      NSAppendPrintF();
      v46 = v11;

      v11 = v46;
    }

    if (self->_listeningPort)
    {
      NSAppendPrintF();
      v47 = v11;

      v11 = v47;
    }

    v48 = self->_launchInstanceID;
    v49 = v48;
    if (v48)
    {
      v92 = [(NSUUID *)v48 UUIDString];
      NSAppendPrintF();
      v50 = v11;

      v11 = v50;
    }

    mediaAccessControlSetting = self->_mediaAccessControlSetting;
    if (mediaAccessControlSetting)
    {
      if (mediaAccessControlSetting <= 3)
      {
        v52 = off_1E7C93938[mediaAccessControlSetting - 1];
      }

      NSAppendPrintF();
      v53 = v11;

      v11 = v53;
    }

    v54 = self->super._mediaRemoteIdentifier;
    if (v54)
    {
      NSAppendPrintF();
      v55 = v11;

      v11 = v55;
    }

    v56 = self->super._mediaRouteIdentifier;
    if (v56)
    {
      NSAppendPrintF();
      v57 = v11;

      v11 = v57;
    }

    v58 = self->super._sessionPairingIdentifier;
    if (v58)
    {
      NSAppendPrintF();
      v59 = v11;

      v11 = v59;
    }

    if (self->_mediaSystemIdentifier)
    {
      mediaSystemIdentifier = self->_mediaSystemIdentifier;
      NSAppendPrintF();
      v60 = v11;

      if (self->_daemon)
      {
        if (([(NSUUID *)self->_mediaSystemIdentifierEffective isEqual:self->_mediaSystemIdentifier, v94, mediaSystemIdentifier]& 1) == 0)
        {
          mediaSystemIdentifierEffective = self->_mediaSystemIdentifierEffective;
        }

        NSAppendPrintF();
        v11 = v60;
      }

      else
      {
        v11 = v60;
      }
    }

    if (self->_mediaSystemName)
    {
      NSAppendPrintF();
      v62 = v11;

      v11 = v62;
    }

    mediaSystemRole = self->_mediaSystemRole;
    if (mediaSystemRole)
    {
      if (mediaSystemRole <= 3)
      {
        v64 = off_1E7C93950[mediaSystemRole - 1];
      }

      NSAppendPrintF();
      v65 = v11;

      if (self->_daemon)
      {
        mediaSystemRoleEffective = self->_mediaSystemRoleEffective;
        if (mediaSystemRoleEffective <= 3)
        {
          v67 = off_1E7C93968[mediaSystemRoleEffective];
        }

        NSAppendPrintF();
        v11 = v65;
      }

      else
      {
        v11 = v65;
      }
    }

    mediaSystemState = self->_mediaSystemState;
    v69 = mediaSystemState >= 2;
    v70 = mediaSystemState - 2;
    if (v69)
    {
      if (v70 <= 2)
      {
        v71 = off_1E7C93988[v70];
      }

      NSAppendPrintF();
      v72 = v11;

      v11 = v72;
    }

    if ((self->_flags & 0x40) != 0)
    {
      personalDeviceState = self->_personalDeviceState;
      if (personalDeviceState < 8)
      {
        v74 = off_1E7C939A0[personalDeviceState];
      }

      NSAppendPrintF();
      v75 = v11;

      personalRequestsState = self->_personalRequestsState;
      if (personalRequestsState < 8)
      {
        v77 = off_1E7C939A0[personalRequestsState];
      }

      NSAppendPrintF();
      v11 = v75;
    }

    v78 = self->_siriInfo;
    v79 = v78;
    if (v78)
    {
      [(NSDictionary *)v78 count];
      NSAppendPrintF();
      v80 = v11;

      v11 = v80;
    }

    v81 = v11;

    RPCompanionLinkFlagsToShortString(self->_flags, v116);
    NSAppendPrintF();
    v11 = v11;

    v82 = self->super._serviceTypes;
    if (v82)
    {
      NSAppendPrintF();
      v83 = v11;

      v11 = v83;
    }

    v84 = self->_activeUserAltDSID;
    if (v84)
    {
      NSAppendPrintF();
      v85 = v11;

      v11 = v85;
    }

    standaloneWatch = self->_standaloneWatch;
    if ((standaloneWatch & 0x80000000) == 0)
    {
      NSAppendPrintF();
      v87 = v11;

      v11 = v87;
    }
  }

  v88 = v11;

  v89 = *MEMORY[0x1E69E9840];

  return v88;
}

- (NSString)fileTransferTargetID
{
  v3 = self->_fileTransferTargetID;
  if (!v3)
  {
    v3 = self->super._idsDeviceIdentifier;
  }

  return v3;
}

- (void)setFileTransferTargetID:(id)a3
{
  v4 = [a3 copy];
  fileTransferTargetID = self->_fileTransferTargetID;
  self->_fileTransferTargetID = v4;
}

- (unsigned)updateWithBonjourDevice:(id)a3
{
  v19.receiver = self;
  v19.super_class = RPCompanionLinkDevice;
  v4 = a3;
  v5 = [(RPEndpoint *)&v19 updateWithBonjourDevice:v4];
  v6 = [v4 txtDictionary];

  Int64 = CFDictionaryGetInt64();
  flags = self->_flags;
  RPCompanionLinkFlagsWithUpdateBonjourFlags(&flags, Int64);
  if (flags != self->_flags)
  {
    self->_flags = flags;
    v5 |= 2u;
  }

  CFStringGetTypeID();
  v8 = CFDictionaryGetTypedValue();
  v9 = v8;
  if (v8)
  {
    publicIdentifier = self->_publicIdentifier;
    v11 = v8;
    v12 = publicIdentifier;
    v13 = v12;
    if (v11 == v12)
    {

      goto LABEL_11;
    }

    if (v12)
    {
      v14 = [(NSString *)v11 isEqual:v12];

      if (v14)
      {
        goto LABEL_11;
      }
    }

    else
    {
    }

    objc_storeStrong(&self->_publicIdentifier, v9);
    v5 |= 2u;
  }

LABEL_11:
  Int64Ranged = CFDictionaryGetInt64Ranged();
  if (self->_mediaAccessControlSetting != Int64Ranged)
  {
    self->_mediaAccessControlSetting = Int64Ranged;
    v5 |= 2u;
  }

  CFStringGetTypeID();
  v16 = CFDictionaryGetTypedValue();
  if (v16)
  {
    objc_storeStrong(&self->super._mediaRouteIdentifier, v16);
    v5 |= 2u;
  }

  return v5;
}

- (unsigned)updateWithSFDevice:(id)a3
{
  v9.receiver = self;
  v9.super_class = RPCompanionLinkDevice;
  v4 = [(RPEndpoint *)&v9 updateWithSFDevice:a3];
  flags = self->_flags;
  v6 = self->super._model;
  if ([(NSString *)v6 hasPrefix:@"AudioAccessory1, "]|| [(NSString *)v6 hasPrefix:@"AudioAccessory5, "]|| [(NSString *)v6 hasPrefix:@"AudioAccessory6, "]|| [(NSString *)v6 hasPrefix:@"HomePod"])
  {

    v7 = flags | 2;
  }

  else
  {

    v7 = flags;
  }

  if ((self->super._statusFlags & 0x10000) != 0)
  {
    v7 |= 0x1D00u;
  }

  if (v7 != flags)
  {
    self->_flags = v7;
    v4 |= 2u;
  }

  return v4;
}

- (BOOL)isEqualToDevice:(id)a3
{
  v4 = a3;
  v5 = [v4 identifier];
  if (v5)
  {
    v6 = v5;
    v7 = [v4 identifier];
    v36.receiver = self;
    v36.super_class = RPCompanionLinkDevice;
    v8 = [(RPEndpoint *)&v36 compareWithDeviceIdentifier:v7];

    if (v8)
    {
      goto LABEL_13;
    }
  }

  v9 = [v4 idsDeviceIdentifier];
  if (v9)
  {
    v10 = v9;
    v11 = [v4 idsDeviceIdentifier];
    v35.receiver = self;
    v35.super_class = RPCompanionLinkDevice;
    v12 = [(RPEndpoint *)&v35 compareWithDeviceIdentifier:v11];

    if (v12)
    {
      goto LABEL_13;
    }
  }

  if (([v4 statusFlags] & 0x2000) == 0 && (self->super._statusFlags & 0x2000) == 0)
  {
    v13 = [v4 verifiedIdentity];
    if (v13)
    {
      v14 = v13;
      v15 = [v4 verifiedIdentity];
      v34.receiver = self;
      v34.super_class = RPCompanionLinkDevice;
      v16 = [(RPEndpoint *)&v34 compareWithDeviceIdentifier:v15];

      if (v16)
      {
        goto LABEL_13;
      }
    }
  }

  v17 = [v4 publicIdentifier];
  if (v17)
  {
    v18 = v17;
    v19 = [v4 publicIdentifier];
    v33.receiver = self;
    v33.super_class = RPCompanionLinkDevice;
    v20 = [(RPEndpoint *)&v33 compareWithDeviceIdentifier:v19];

    if (v20)
    {
      goto LABEL_13;
    }
  }

  v21 = [v4 bleDevice];
  v22 = [v21 rapportIdentifier];
  if (v22)
  {
    v23 = v22;
    v24 = [v4 bleDevice];
    v25 = [v24 rapportIdentifier];
    v32.receiver = self;
    v32.super_class = RPCompanionLinkDevice;
    v26 = [(RPEndpoint *)&v32 compareWithDeviceIdentifier:v25];

    if (v26)
    {
LABEL_13:
      v27 = 1;
      goto LABEL_19;
    }
  }

  else
  {
  }

  v28 = [v4 sessionPairingIdentifier];
  if (v28)
  {
    v29 = [v4 sessionPairingIdentifier];
    v31.receiver = self;
    v31.super_class = RPCompanionLinkDevice;
    v27 = [(RPEndpoint *)&v31 compareWithDeviceIdentifier:v29];
  }

  else
  {
    v27 = 0;
  }

LABEL_19:
  return v27;
}

- (BOOL)isEqualToDeviceBasic:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->super._idsDeviceIdentifier && ([v4 idsDeviceIdentifier], v6 = objc_claimAutoreleasedReturnValue(), v6, v6))
  {
    idsDeviceIdentifier = self->super._idsDeviceIdentifier;
    v8 = [v5 idsDeviceIdentifier];
  }

  else if (self->super._identifier && ([v5 identifier], v9 = objc_claimAutoreleasedReturnValue(), v9, v9))
  {
    idsDeviceIdentifier = self->super._identifier;
    v8 = [v5 identifier];
  }

  else
  {
    idsDeviceIdentifier = self->_publicIdentifier;
    v8 = [v5 publicIdentifier];
  }

  v10 = v8;
  v11 = idsDeviceIdentifier;
  v12 = v10;
  v13 = v12;
  if (v11 == v12)
  {
    v14 = 1;
  }

  else if ((v11 != 0) == (v12 == 0))
  {
    v14 = 0;
  }

  else
  {
    v14 = [(NSString *)v11 isEqual:v12];
  }

  return v14;
}

@end