@interface SFDevice
- (SFDevice)init;
- (SFDevice)initWithCoder:(id)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
- (void)updateWithBLEDevice:(id)a3;
- (void)updateWithPairedPeer:(id)a3;
- (void)updateWithRPIdentity:(id)a3;
@end

@implementation SFDevice

- (id)description
{
  v3 = SFShouldLogSensitiveDescriptions();
  v85[1] = 0;
  identifier = self->_identifier;
  NSAppendPrintF();
  v4 = 0;
  v5 = v4;
  idsIdentifier = self->_idsIdentifier;
  if (v3)
  {
    if (!idsIdentifier)
    {
      goto LABEL_10;
    }

    v85[0] = v4;
    if (self->_idsIdentifierConflict)
    {
      v7 = @" (conflict)";
    }

    else
    {
      v7 = &stru_1F1D30528;
    }

    identifier = idsIdentifier;
    v79 = v7;
    v8 = v85;
  }

  else
  {
    if (!idsIdentifier)
    {
      goto LABEL_10;
    }

    v84 = v4;
    identifier = idsIdentifier;
    v8 = &v84;
  }

  NSAppendPrintF();
  v9 = *v8;

  v5 = v9;
LABEL_10:
  if (self->_isBLEDeviceReplaced)
  {
    NSAppendPrintF();
    v10 = v5;

    v5 = v10;
  }

  deviceActionType = self->_deviceActionType;
  if (self->_deviceActionType)
  {
    if (deviceActionType > 0x66)
    {
      v12 = "?";
    }

    else
    {
      v12 = off_1E788EE90[deviceActionType - 1];
    }

    identifier = v12;
    NSAppendPrintF();
    v13 = v5;

    v5 = v13;
  }

  if ([(SFBLEDevice *)self->_bleDevice rssi:identifier])
  {
    v14 = [(SFBLEDevice *)self->_bleDevice rssi];
    v15 = [(SFBLEDevice *)self->_bleDevice rssiEstimate];
    if ([(SFBLEDevice *)self->_bleDevice insideBubble])
    {
      v16 = 42;
    }

    else
    {
      v16 = 126;
    }

    distance = self->_distance;
    if (distance <= 29)
    {
      switch(distance)
      {
        case 0:
          v18 = "U";
          goto LABEL_38;
        case 10:
          v18 = "I";
          goto LABEL_38;
        case 20:
          v18 = "N";
          goto LABEL_38;
      }
    }

    else if (distance > 49)
    {
      if (distance == 50)
      {
        v18 = "H";
        goto LABEL_38;
      }

      if (distance == 60)
      {
        v18 = "F";
        goto LABEL_38;
      }
    }

    else
    {
      if (distance == 30)
      {
        v18 = "P";
        goto LABEL_38;
      }

      if (distance == 40)
      {
        v18 = "R";
LABEL_38:
        v82 = v16;
        v83 = v18;
        name = v14;
        v80 = v15;
        NSAppendPrintF();
        v19 = v5;

        v5 = v19;
        goto LABEL_39;
      }
    }

    v18 = "?";
    goto LABEL_38;
  }

LABEL_39:
  if (self->_name)
  {
    name = self->_name;
    NSAppendPrintF();
    v20 = v5;

    v5 = v20;
  }

  if (self->_model)
  {
    name = self->_model;
    NSAppendPrintF();
    v21 = v5;

    v5 = v21;
  }

  v22 = self->_accountAltDSID;
  v23 = v22;
  if (v22)
  {
    name = v22;
    NSAppendPrintF();
    v24 = v5;

    v5 = v24;
  }

  v25 = self->_accountID;
  v26 = v25;
  if (v25)
  {
    name = v25;
    NSAppendPrintF();
    v27 = v5;

    v5 = v27;
  }

  deviceClassCode = self->_deviceClassCode;
  if (self->_deviceClassCode)
  {
    if (deviceClassCode > 8)
    {
      v29 = "?";
    }

    else
    {
      v29 = off_1E788F1C0[deviceClassCode - 1];
    }

    name = v29;
    NSAppendPrintF();
    v30 = v5;

    v5 = v30;
  }

  deviceModelCode = self->_deviceModelCode;
  if (self->_deviceModelCode)
  {
    if (self->_deviceModelCode > 4u)
    {
      if (self->_deviceModelCode <= 6u)
      {
        if (deviceModelCode == 5)
        {
          v32 = "B520ish";
        }

        else
        {
          v32 = "B620ish";
        }

        goto LABEL_69;
      }

      if (deviceModelCode == 7)
      {
        v32 = "J255ish";
        goto LABEL_69;
      }
    }

    else
    {
      if (self->_deviceModelCode > 2u)
      {
        if (deviceModelCode == 3)
        {
          v32 = "J3XXish";
        }

        else
        {
          v32 = "N112ish";
        }

        goto LABEL_69;
      }

      if (deviceModelCode == 1)
      {
        v32 = "D22ish";
        goto LABEL_69;
      }

      if (deviceModelCode == 2)
      {
        v32 = "SEish";
LABEL_69:
        name = v32;
        NSAppendPrintF();
        v33 = v5;

        v5 = v33;
        goto LABEL_70;
      }
    }

    v32 = "?";
    goto LABEL_69;
  }

LABEL_70:
  if (self->_contactIdentifier)
  {
    name = self->_contactIdentifier;
    NSAppendPrintF();
    v34 = v5;

    v5 = v34;
  }

  if (self->_autoUnlockEnabled)
  {
    NSAppendPrintF();
    v35 = v5;

    v5 = v35;
  }

  if (self->_autoUnlockWatch)
  {
    NSAppendPrintF();
    v36 = v5;

    v5 = v36;
  }

  if (self->_duetSync)
  {
    NSAppendPrintF();
    v37 = v5;

    v5 = v37;
  }

  if (self->_enhancedDiscovery)
  {
    NSAppendPrintF();
    v38 = v5;

    v5 = v38;
  }

  if (self->_hotspotInfo)
  {
    name = self->_hotspotInfo;
    NSAppendPrintF();
    v39 = v5;

    v5 = v39;
  }

  if (self->_inDiscoverySession)
  {
    name = self->_inDiscoverySession;
    NSAppendPrintF();
    v40 = v5;

    v5 = v40;
  }

  v41 = self->_mediaRemoteID;
  v42 = v41;
  if (v41)
  {
    name = v41;
    NSAppendPrintF();
    v43 = v5;

    v5 = v43;
  }

  v44 = self->_mediaRouteID;
  v45 = v44;
  if (v44)
  {
    name = v44;
    NSAppendPrintF();
    v46 = v5;

    v5 = v46;
  }

  if (self->_needsAWDL)
  {
    NSAppendPrintF();
    v47 = v5;

    v5 = v47;
  }

  if (self->_needsKeyboard)
  {
    NSAppendPrintF();
    v48 = v5;

    v5 = v48;
  }

  if (self->_needsSetup)
  {
    NSAppendPrintF();
    v49 = v5;

    v5 = v49;
  }

  if (self->_paired)
  {
    NSAppendPrintF();
    v50 = v5;

    v5 = v50;
  }

  systemPairState = self->_systemPairState;
  if (systemPairState)
  {
    switch(systemPairState)
    {
      case 0xAu:
        v52 = "NotPaired";
        break;
      case 0x1Eu:
        v52 = "Verified";
        break;
      case 0x14u:
        v52 = "Conjectured";
        break;
      default:
        v52 = "?";
        break;
    }

    name = v52;
    NSAppendPrintF();
    v53 = v5;

    v5 = v53;
  }

  if (self->_rapportIdentifier)
  {
    name = self->_rapportIdentifier;
    NSAppendPrintF();
    v54 = v5;

    v5 = v54;
  }

  if (self->_requestSSID)
  {
    name = self->_requestSSID;
    NSAppendPrintF();
    v55 = v5;

    v5 = v55;
  }

  if (self->_watchLocked)
  {
    NSAppendPrintF();
    v56 = v5;

    v5 = v56;
  }

  if (self->_wifiP2P)
  {
    NSAppendPrintF();
    v57 = v5;

    v5 = v57;
  }

  if (self->_problemFlags)
  {
    name = self->_problemFlags;
    v80 = &unk_1A998F488;
    NSAppendPrintF();
    v58 = v5;

    v5 = v58;
  }

  if (self->_deviceFlags)
  {
    name = self->_deviceFlags;
    v80 = &unk_1A998F5A0;
    NSAppendPrintF();
    v59 = v5;

    v5 = v59;
  }

  if (self->_osVersion)
  {
    name = self->_osVersion;
    NSAppendPrintF();
    v60 = v5;

    v5 = v60;
  }

  audioRoutingScore = self->_audioRoutingScore;
  if (audioRoutingScore)
  {
    if (audioRoutingScore > 0xF)
    {
      v62 = "?";
    }

    else
    {
      v62 = off_1E788F200[audioRoutingScore - 1];
    }

    name = v62;
    NSAppendPrintF();
    v63 = v5;

    v5 = v63;
  }

  deviceType = self->_deviceType;
  if (deviceType)
  {
    v65 = "Generic";
    if (deviceType != 1)
    {
      v65 = "?";
    }

    if (deviceType == 2)
    {
      v66 = "VirtualMachine";
    }

    else
    {
      v66 = v65;
    }

    name = v66;
    NSAppendPrintF();
    v67 = v5;

    v5 = v67;
  }

  v68 = [(SFBLEDevice *)self->_bleDevice decryptedActivityLevel:name];
  if (v68)
  {
    if (v68 > 0xE)
    {
      v69 = "?";
    }

    else
    {
      v69 = off_1E788F278[v68 - 1];
    }

    v78 = v69;
    v81 = v68;
    NSAppendPrintF();
    v70 = v5;

    v5 = v70;
  }

  v71 = [(SFBLEDevice *)self->_bleDevice advertisementFields:v78];
  Int64Ranged = CFDictionaryGetInt64Ranged();

  if (Int64Ranged)
  {
    NSAppendPrintF();
    v73 = v5;

    v5 = v73;
  }

  v74 = v5;

  return v5;
}

- (SFDevice)init
{
  v6.receiver = self;
  v6.super_class = SFDevice;
  v2 = [(SFDevice *)&v6 init];
  if (v2)
  {
    IsVirtualMachine = SFDeviceIsVirtualMachine();
    v4 = 1;
    if (IsVirtualMachine)
    {
      v4 = 2;
    }

    v2->_deviceType = v4;
  }

  return v2;
}

- (SFDevice)initWithCoder:(id)a3
{
  v4 = a3;
  v39.receiver = self;
  v39.super_class = SFDevice;
  v5 = [(SFDevice *)&v39 init];

  if (v5)
  {
    v5->_deviceType = 1;
    v6 = v4;
    objc_opt_class();
    NSDecodeObjectIfPresent();

    v7 = v6;
    objc_opt_class();
    NSDecodeObjectIfPresent();

    v40 = 0;
    if (NSDecodeSInt64RangedIfPresent())
    {
      v5->_audioRoutingScore = v40;
    }

    if ([v7 containsValueForKey:@"auE"])
    {
      v5->_autoUnlockEnabled = [v7 decodeBoolForKey:@"auE"];
    }

    if ([v7 containsValueForKey:@"auW"])
    {
      v5->_autoUnlockWatch = [v7 decodeBoolForKey:@"auW"];
    }

    if ([v7 containsValueForKey:@"bleD"])
    {
      v8 = [v7 decodeObjectOfClass:objc_opt_class() forKey:@"bleD"];
      bleDevice = v5->_bleDevice;
      v5->_bleDevice = v8;

      v10 = [(SFBLEDevice *)v5->_bleDevice advertisementFields];
      v11 = [v10 objectForKeyedSubscript:@"batteryInfo"];

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        objc_storeStrong(&v5->_batteryInfo, v11);
      }
    }

    if ([v7 containsValueForKey:@"cnID"])
    {
      v12 = [v7 decodeObjectOfClass:objc_opt_class() forKey:@"cnID"];
      contactIdentifier = v5->_contactIdentifier;
      v5->_contactIdentifier = v12;
    }

    if ([v7 containsValueForKey:@"devAT"])
    {
      v5->_deviceActionType = [v7 decodeIntegerForKey:@"devAT"];
    }

    if ([v7 containsValueForKey:@"devCC"])
    {
      v5->_deviceClassCode = [v7 decodeIntegerForKey:@"devCC"];
    }

    v40 = 0;
    if (NSDecodeSInt64RangedIfPresent())
    {
      v5->_deviceFlags = v40;
    }

    v40 = 0;
    if (NSDecodeSInt64RangedIfPresent())
    {
      v5->_deviceModelCode = v40;
    }

    if ([v7 containsValueForKey:@"devT"])
    {
      v5->_deviceType = [v7 decodeIntegerForKey:@"devT"];
    }

    if ([v7 containsValueForKey:@"dist"])
    {
      v5->_distance = [v7 decodeIntegerForKey:@"dist"];
    }

    v14 = v7;
    if ([v14 containsValueForKey:@"ds"])
    {
      v5->_duetSync = [v14 decodeBoolForKey:@"ds"];
    }

    v15 = v14;
    if ([v15 containsValueForKey:@"enDi"])
    {
      v5->_enhancedDiscovery = [v15 decodeBoolForKey:@"enDi"];
    }

    v16 = v15;
    if ([v16 containsValueForKey:@"hp"])
    {
      v5->_hasProblem = [v16 decodeBoolForKey:@"hp"];
    }

    v40 = 0;
    if (NSDecodeSInt64RangedIfPresent())
    {
      v5->_hotspotInfo = v40;
    }

    if ([v16 containsValueForKey:@"ident"])
    {
      v17 = [v16 decodeObjectOfClass:objc_opt_class() forKey:@"ident"];
      identifier = v5->_identifier;
      v5->_identifier = v17;
    }

    if ([v16 containsValueForKey:@"idsID"])
    {
      v19 = [v16 decodeObjectOfClass:objc_opt_class() forKey:@"idsID"];
      idsIdentifier = v5->_idsIdentifier;
      v5->_idsIdentifier = v19;
    }

    v21 = v16;
    if ([v21 containsValueForKey:@"idsc"])
    {
      v5->_idsIdentifierConflict = [v21 decodeBoolForKey:@"idsc"];
    }

    v22 = v21;
    if ([v22 containsValueForKey:@"iLagS"])
    {
      v5->_inDiscoverySession = [v22 decodeBoolForKey:@"iLagS"];
    }

    v23 = v22;
    if ([v23 containsValueForKey:@"replace"])
    {
      v5->_isBLEDeviceReplaced = [v23 decodeBoolForKey:@"replace"];
    }

    v24 = v23;
    objc_opt_class();
    NSDecodeObjectIfPresent();

    v25 = v24;
    objc_opt_class();
    NSDecodeObjectIfPresent();

    if ([v25 containsValueForKey:@"model"])
    {
      v26 = [v25 decodeObjectOfClass:objc_opt_class() forKey:@"model"];
      model = v5->_model;
      v5->_model = v26;
    }

    if ([v25 containsValueForKey:@"name"])
    {
      v28 = [v25 decodeObjectOfClass:objc_opt_class() forKey:@"name"];
      name = v5->_name;
      v5->_name = v28;
    }

    v30 = v25;
    if ([v30 containsValueForKey:@"awdl"])
    {
      v5->_needsAWDL = [v30 decodeBoolForKey:@"awdl"];
    }

    if ([v30 containsValueForKey:@"kb"])
    {
      v5->_needsKeyboard = [v30 decodeBoolForKey:@"kb"];
    }

    if ([v30 containsValueForKey:@"setup"])
    {
      v5->_needsSetup = [v30 decodeBoolForKey:@"setup"];
    }

    v40 = 0;
    if (NSDecodeSInt64RangedIfPresent())
    {
      v5->_osVersion = v40;
    }

    if ([v30 containsValueForKey:@"paired"])
    {
      v5->_paired = [v30 decodeBoolForKey:@"paired"];
    }

    v31 = v30;
    if ([v31 containsValueForKey:@"pf"])
    {
      v5->_problemFlags = [v31 decodeInt64ForKey:@"pf"];
    }

    if ([v31 containsValueForKey:@"rid"])
    {
      v32 = [v31 decodeObjectOfClass:objc_opt_class() forKey:@"rid"];
      rapportIdentifier = v5->_rapportIdentifier;
      v5->_rapportIdentifier = v32;
    }

    v34 = v31;
    objc_opt_class();
    NSDecodeObjectIfPresent();

    v40 = 0;
    if (NSDecodeSInt64RangedIfPresent())
    {
      v5->_systemPairState = v40;
    }

    v35 = v34;
    if ([v35 containsValueForKey:@"tm"])
    {
      v5->_testMode = [v35 decodeBoolForKey:@"tm"];
    }

    if ([v35 containsValueForKey:@"wl"])
    {
      v5->_watchLocked = [v35 decodeBoolForKey:@"wl"];
    }

    v36 = v35;
    if ([v36 containsValueForKey:@"wp2p"])
    {
      v5->_wifiP2P = [v36 decodeBoolForKey:@"wp2p"];
    }

    v37 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  accountAltDSID = self->_accountAltDSID;
  v24 = v4;
  if (accountAltDSID)
  {
    [v4 encodeObject:accountAltDSID forKey:@"altDSID"];
    v4 = v24;
  }

  accountID = self->_accountID;
  if (accountID)
  {
    [v24 encodeObject:accountID forKey:@"aid"];
    v4 = v24;
  }

  audioRoutingScore = self->_audioRoutingScore;
  if (audioRoutingScore)
  {
    [v24 encodeInteger:audioRoutingScore forKey:@"auRS"];
    v4 = v24;
  }

  if (self->_autoUnlockEnabled)
  {
    [v24 encodeBool:1 forKey:@"auE"];
    v4 = v24;
  }

  if (self->_autoUnlockWatch)
  {
    [v24 encodeBool:1 forKey:@"auW"];
    v4 = v24;
  }

  bleDevice = self->_bleDevice;
  if (bleDevice)
  {
    [v24 encodeObject:bleDevice forKey:@"bleD"];
    v4 = v24;
  }

  contactIdentifier = self->_contactIdentifier;
  if (contactIdentifier)
  {
    [v24 encodeObject:contactIdentifier forKey:@"cnID"];
    v4 = v24;
  }

  if (self->_deviceActionType)
  {
    [v24 encodeInteger:? forKey:?];
    v4 = v24;
  }

  if (self->_deviceClassCode)
  {
    [v24 encodeInteger:? forKey:?];
    v4 = v24;
  }

  deviceFlags = self->_deviceFlags;
  if (deviceFlags)
  {
    [v24 encodeInt64:deviceFlags forKey:@"dFlg"];
    v4 = v24;
  }

  if (self->_deviceModelCode)
  {
    [v24 encodeInteger:? forKey:?];
    v4 = v24;
  }

  deviceType = self->_deviceType;
  if (deviceType)
  {
    [v24 encodeInteger:deviceType forKey:@"devT"];
    v4 = v24;
  }

  distance = self->_distance;
  if (distance)
  {
    [v24 encodeInteger:distance forKey:@"dist"];
    v4 = v24;
  }

  if (self->_duetSync)
  {
    [v24 encodeBool:1 forKey:@"ds"];
    v4 = v24;
  }

  if (self->_enhancedDiscovery)
  {
    [v24 encodeBool:1 forKey:@"enDi"];
    v4 = v24;
  }

  if (self->_hasProblem)
  {
    [v24 encodeBool:1 forKey:@"hp"];
    v4 = v24;
  }

  hotspotInfo = self->_hotspotInfo;
  if (hotspotInfo)
  {
    [v24 encodeInt64:hotspotInfo forKey:@"hsi"];
    v4 = v24;
  }

  identifier = self->_identifier;
  if (identifier)
  {
    [v24 encodeObject:identifier forKey:@"ident"];
    v4 = v24;
  }

  idsIdentifier = self->_idsIdentifier;
  if (idsIdentifier)
  {
    [v24 encodeObject:idsIdentifier forKey:@"idsID"];
    v4 = v24;
  }

  if (self->_idsIdentifierConflict)
  {
    [v24 encodeBool:1 forKey:@"idsc"];
    v4 = v24;
  }

  if (self->_inDiscoverySession)
  {
    [v24 encodeBool:1 forKey:@"iLagS"];
    v4 = v24;
  }

  if (self->_isBLEDeviceReplaced)
  {
    [v24 encodeBool:1 forKey:@"replace"];
    v4 = v24;
  }

  mediaRemoteID = self->_mediaRemoteID;
  if (mediaRemoteID)
  {
    [v24 encodeObject:mediaRemoteID forKey:@"MRI"];
    v4 = v24;
  }

  mediaRouteID = self->_mediaRouteID;
  if (mediaRouteID)
  {
    [v24 encodeObject:mediaRouteID forKey:@"MRtI"];
    v4 = v24;
  }

  model = self->_model;
  if (model)
  {
    [v24 encodeObject:model forKey:@"model"];
    v4 = v24;
  }

  name = self->_name;
  if (name)
  {
    [v24 encodeObject:name forKey:@"name"];
    v4 = v24;
  }

  if (self->_needsAWDL)
  {
    [v24 encodeBool:1 forKey:@"awdl"];
    v4 = v24;
  }

  if (self->_needsKeyboard)
  {
    [v24 encodeBool:1 forKey:@"kb"];
    v4 = v24;
  }

  if (self->_needsSetup)
  {
    [v24 encodeBool:1 forKey:@"setup"];
    v4 = v24;
  }

  if (self->_osVersion)
  {
    [v24 encodeInteger:? forKey:?];
    v4 = v24;
  }

  if (self->_paired)
  {
    [v24 encodeBool:1 forKey:@"paired"];
    v4 = v24;
  }

  problemFlags = self->_problemFlags;
  if (problemFlags)
  {
    [v24 encodeInt64:problemFlags forKey:@"pf"];
    v4 = v24;
  }

  rapportIdentifier = self->_rapportIdentifier;
  if (rapportIdentifier)
  {
    [v24 encodeObject:rapportIdentifier forKey:@"rid"];
    v4 = v24;
  }

  requestSSID = self->_requestSSID;
  if (requestSSID)
  {
    [v24 encodeObject:requestSSID forKey:@"rSSID"];
    v4 = v24;
  }

  systemPairState = self->_systemPairState;
  if (systemPairState)
  {
    [v24 encodeInt64:systemPairState forKey:@"sps"];
    v4 = v24;
  }

  if (self->_testMode)
  {
    [v24 encodeBool:1 forKey:@"tm"];
    v4 = v24;
  }

  if (self->_watchLocked)
  {
    [v24 encodeBool:1 forKey:@"wl"];
    v4 = v24;
  }

  if (self->_wifiP2P)
  {
    [v24 encodeBool:1 forKey:@"wp2p"];
    v4 = v24;
  }
}

- (void)updateWithBLEDevice:(id)a3
{
  v26 = a3;
  v5 = [v26 advertisementFields];
  v6 = [v26 identifier];
  if (v6)
  {
    v7 = v6;
    self->_autoUnlockEnabled = CFDictionaryGetInt64() != 0;
    self->_autoUnlockWatch = CFDictionaryGetInt64() != 0;
    v8 = [v5 objectForKeyedSubscript:@"batteryInfo"];
    batteryInfo = self->_batteryInfo;
    self->_batteryInfo = v8;

    v10 = [(SFBLEDevice *)self->_bleDevice decryptedActivityLevel];
    objc_storeStrong(&self->_bleDevice, a3);
    [(SFBLEDevice *)self->_bleDevice setDecryptedActivityLevel:v10];
    if ([(SFBLEDevice *)self->_bleDevice distance])
    {
      self->_distance = [(SFBLEDevice *)self->_bleDevice distance];
    }

    self->_deviceActionType = CFDictionaryGetInt64Ranged();
    self->_deviceClassCode = CFDictionaryGetInt64Ranged();
    self->_deviceModelCode = CFDictionaryGetInt64Ranged();
    self->_duetSync = CFDictionaryGetInt64() != 0;
    self->_enhancedDiscovery = CFDictionaryGetInt64() != 0;
    self->_inDiscoverySession = CFDictionaryGetInt64() != 0;
    objc_storeStrong(&self->_identifier, v7);
    CFStringGetTypeID();
    v11 = CFDictionaryGetTypedValue();
    Int64 = CFDictionaryGetInt64();
    if ([v11 length])
    {
      objc_storeStrong(&self->_idsIdentifier, v11);
      self->_idsIdentifierConflict = Int64 != 0;
      self->_deviceFlags |= 8u;
    }

    if (!self->_model)
    {
      CFStringGetTypeID();
      TypedValue = CFDictionaryGetTypedValue();
      if (!TypedValue)
      {
        TypedValue = self->_model;
      }

      objc_storeStrong(&self->_model, TypedValue);
    }

    v14 = [v26 name];
    if ([v14 length])
    {
      objc_storeStrong(&self->_name, v14);
    }

    self->_needsAWDL = CFDictionaryGetInt64() != 0;
    self->_needsKeyboard = CFDictionaryGetInt64() != 0;
    self->_needsSetup = CFDictionaryGetInt64() != 0;
    self->_osVersion = CFDictionaryGetInt64Ranged();
    self->_paired = CFDictionaryGetInt64() != 0;
    self->_watchLocked = CFDictionaryGetInt64() != 0;
    self->_wifiP2P = CFDictionaryGetInt64() != 0;
    deviceFlags = self->_deviceFlags;
    if ((deviceFlags & 8) != 0 || (v16 = CFDictionaryGetInt64(), deviceFlags = self->_deviceFlags, !v16))
    {
      v17 = deviceFlags & 0xFFFFFFEF;
    }

    else
    {
      v17 = deviceFlags | 0x10;
    }

    self->_deviceFlags = v17;
    self->_deviceFlags = self->_deviceFlags & 0xFFFFFFDF | (32 * (CFDictionaryGetInt64() != 0));
    self->_deviceFlags = self->_deviceFlags & 0xFFFFFF7F | ((CFDictionaryGetInt64() != 0) << 7);
    Int64Ranged = CFDictionaryGetInt64Ranged();
    self->_deviceFlags = self->_deviceFlags & 0xFFFFDDFF | (((Int64Ranged >> 4) & 1) << 9) & 0xFFFFDFFF | (((Int64Ranged >> 3) & 1) << 13);
    self->_deviceFlags = self->_deviceFlags & 0xFFFFFEFF | ((CFDictionaryGetInt64Ranged() & 1) << 8);
    self->_deviceFlags = self->_deviceFlags & 0xFFFFF7FF | (((CFDictionaryGetInt64Ranged() >> 11) & 1) << 11);
    v19 = [v26 tempPaired];
    v20 = 0;
    if (v19)
    {
      v21 = 4096;
    }

    else
    {
      v21 = 0;
    }

    self->_deviceFlags = self->_deviceFlags & 0xFFFFEFFF | v21;
    v22 = self->_deviceActionType == 10;
    self->_hasProblem = v22;
    if (v22)
    {
      v20 = CFDictionaryGetInt64();
    }

    self->_problemFlags = v20;
  }

  else
  {
    v23 = [SFDevice updateWithBLEDevice:];
    [(SFDevice *)v23 updateWithPairedPeer:v24, v25];
  }
}

- (void)updateWithPairedPeer:(id)a3
{
  v4 = a3;
  v7 = v4;
  if (self->_name)
  {
    v5 = 0;
  }

  else
  {
    v5 = [v4 name];
    if (v5)
    {
      objc_storeStrong(&self->_name, v5);
    }

    v4 = v7;
  }

  if (!self->_model)
  {
    v6 = [v4 model];

    if (v6)
    {
      objc_storeStrong(&self->_model, v6);
      v5 = v6;
    }

    else
    {
      v5 = 0;
    }
  }

  if (self->_systemPairState <= 0x13)
  {
    self->_systemPairState = 20;
  }
}

- (void)updateWithRPIdentity:(id)a3
{
  v15 = a3;
  if (!self->_accountAltDSID && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v4 = [v15 accountAltDSID];
    if (v4)
    {
      objc_storeStrong(&self->_accountAltDSID, v4);
    }
  }

  if (!self->_accountID)
  {
    v5 = [v15 accountID];
    if (v5)
    {
      objc_storeStrong(&self->_accountID, v5);
    }
  }

  if (!self->_contactIdentifier)
  {
    v6 = [v15 contactID];
    if (v6)
    {
      objc_storeStrong(&self->_contactIdentifier, v6);
    }
  }

  v7 = [v15 type];
  if (v7 > 8)
  {
    if (v7 > 12)
    {
      if (v7 == 13)
      {
        v8 = 0x8000;
      }

      else
      {
        if (v7 != 15)
        {
          goto LABEL_35;
        }

        v8 = 0x10000;
      }
    }

    else if (v7 == 9)
    {
      v8 = 64;
    }

    else
    {
      if (v7 != 12)
      {
        goto LABEL_35;
      }

      v8 = 0x4000;
    }
  }

  else if (v7 > 5)
  {
    if (v7 == 6)
    {
      v8 = 4;
    }

    else
    {
      if (v7 != 8)
      {
        goto LABEL_35;
      }

      v8 = 1024;
    }
  }

  else if (v7 == 2)
  {
    if (!SFDeviceIsVirtualMachine())
    {
      goto LABEL_35;
    }

    v8 = 8;
  }

  else
  {
    if (v7 != 4)
    {
      goto LABEL_35;
    }

    v8 = 2;
  }

  self->_deviceFlags |= v8;
LABEL_35:
  if (!self->_idsIdentifier)
  {
    v9 = [v15 idsDeviceID];
    if (v9)
    {
      objc_storeStrong(&self->_idsIdentifier, v9);
    }
  }

  if (!self->_mediaRemoteID && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v10 = [v15 mediaRemoteID];
    if (v10)
    {
      objc_storeStrong(&self->_mediaRemoteID, v10);
    }
  }

  if (!self->_mediaRouteID && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v11 = [v15 mediaRouteID];
    if (v11)
    {
      objc_storeStrong(&self->_mediaRouteID, v11);
    }
  }

  if (!self->_model)
  {
    v12 = [v15 model];
    if (v12)
    {
      objc_storeStrong(&self->_model, v12);
    }
  }

  v13 = [v15 name];
  if (v13)
  {
    objc_storeStrong(&self->_name, v13);
  }

  v14 = [v15 identifier];
  if (v14)
  {
    objc_storeStrong(&self->_rapportIdentifier, v14);
  }

  if (self->_systemPairState <= 0x13 && [v15 type] == 2)
  {
    self->_systemPairState = 20;
  }
}

@end