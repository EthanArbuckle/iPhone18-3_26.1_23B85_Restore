@interface SPInternalSimpleBeacon
- (BOOL)isEqual:(id)equal;
- (SPInternalSimpleBeacon)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)debugDescription;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SPInternalSimpleBeacon

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v15 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      identifier = [(SPInternalSimpleBeacon *)self identifier];
      identifier2 = [(SPInternalSimpleBeacon *)v5 identifier];
      if ([identifier isEqual:identifier2])
      {
        name = [(SPInternalSimpleBeacon *)self name];
        name2 = [(SPInternalSimpleBeacon *)v5 name];
        if ([name isEqualToString:name2])
        {
          type = [(SPInternalSimpleBeacon *)self type];
          type2 = [(SPInternalSimpleBeacon *)v5 type];
          if ([type isEqualToString:type2] && (v12 = -[SPInternalSimpleBeacon partIdentifier](self, "partIdentifier"), v12 == -[SPInternalSimpleBeacon partIdentifier](v5, "partIdentifier")) && (v13 = -[SPInternalSimpleBeacon connectionAllowed](self, "connectionAllowed"), v13 == -[SPInternalSimpleBeacon connectionAllowed](v5, "connectionAllowed")))
          {
            systemVersion = [(SPInternalSimpleBeacon *)self systemVersion];
            systemVersion2 = [(SPInternalSimpleBeacon *)v5 systemVersion];
            v144 = systemVersion;
            if (![systemVersion isEqualToString:?])
            {
              goto LABEL_101;
            }

            [(SPInternalSimpleBeacon *)self txPower];
            v110 = v109;
            [(SPInternalSimpleBeacon *)v5 txPower];
            if (v110 != v111)
            {
              goto LABEL_101;
            }

            vendorId = [(SPInternalSimpleBeacon *)self vendorId];
            if (vendorId == [(SPInternalSimpleBeacon *)v5 vendorId]&& (v113 = [(SPInternalSimpleBeacon *)self productId], v113 == [(SPInternalSimpleBeacon *)v5 productId]) && (v114 = [(SPInternalSimpleBeacon *)self batteryLevel], v114 == [(SPInternalSimpleBeacon *)v5 batteryLevel]) && (v115 = [(SPInternalSimpleBeacon *)self repairState], v115 == [(SPInternalSimpleBeacon *)v5 repairState]) && (v116 = [(SPInternalSimpleBeacon *)self connectableDeviceCount], v116 == [(SPInternalSimpleBeacon *)v5 connectableDeviceCount]))
            {
              productUUID = [(SPInternalSimpleBeacon *)self productUUID];
              productUUID2 = [(SPInternalSimpleBeacon *)v5 productUUID];
              v142 = productUUID;
              if ([productUUID isEqual:?] && (v118 = -[SPInternalSimpleBeacon isAppleAudioAccessory](self, "isAppleAudioAccessory"), v118 == -[SPInternalSimpleBeacon isAppleAudioAccessory](v5, "isAppleAudioAccessory")) && (v119 = -[SPInternalSimpleBeacon isZeus](self, "isZeus"), v119 == -[SPInternalSimpleBeacon isZeus](v5, "isZeus")) && (v120 = -[SPInternalSimpleBeacon canBeLeashedByHost](self, "canBeLeashedByHost"), v120 == -[SPInternalSimpleBeacon canBeLeashedByHost](v5, "canBeLeashedByHost")) && (v121 = -[SPInternalSimpleBeacon connected](self, "connected"), v121 == -[SPInternalSimpleBeacon connected](v5, "connected")) && (v122 = -[SPInternalSimpleBeacon internalShareType](self, "internalShareType"), v122 == -[SPInternalSimpleBeacon internalShareType](v5, "internalShareType")))
              {
                lowPowerMode = [(SPInternalSimpleBeacon *)self lowPowerMode];
                bOOLValue = [lowPowerMode BOOLValue];
                lowPowerMode2 = [(SPInternalSimpleBeacon *)v5 lowPowerMode];
                if (bOOLValue == [lowPowerMode2 BOOLValue])
                {
                  thisDevice = [(SPInternalSimpleBeacon *)self thisDevice];
                  bOOLValue2 = [thisDevice BOOLValue];
                  thisDevice2 = [(SPInternalSimpleBeacon *)v5 thisDevice];
                  if (bOOLValue2 == [thisDevice2 BOOLValue])
                  {
                    isMine = [(SPInternalSimpleBeacon *)self isMine];
                    bOOLValue3 = [isMine BOOLValue];
                    isMine2 = [(SPInternalSimpleBeacon *)v5 isMine];
                    if (bOOLValue3 == [isMine2 BOOLValue])
                    {
                      isRepairCapable = [(SPInternalSimpleBeacon *)self isRepairCapable];
                      bOOLValue4 = [isRepairCapable BOOLValue];
                      isRepairCapable2 = [(SPInternalSimpleBeacon *)v5 isRepairCapable];
                      if (bOOLValue4 == [isRepairCapable2 BOOLValue] && (v127 = -[SPInternalSimpleBeacon online](self, "online"), v127 == -[SPInternalSimpleBeacon online](v5, "online")))
                      {
                        batteryPercentage = [(SPInternalSimpleBeacon *)self batteryPercentage];
                        [batteryPercentage doubleValue];
                        v129 = v128;
                        batteryPercentage2 = [(SPInternalSimpleBeacon *)v5 batteryPercentage];
                        [batteryPercentage2 doubleValue];
                        v14 = v129 == v130;
                      }

                      else
                      {
                        v14 = 0;
                      }
                    }

                    else
                    {
                      v14 = 0;
                    }
                  }

                  else
                  {
                    v14 = 0;
                  }
                }

                else
                {
                  v14 = 0;
                }
              }

              else
              {
                v14 = 0;
              }
            }

            else
            {
LABEL_101:
              v14 = 0;
            }
          }

          else
          {
            v14 = 0;
          }
        }

        else
        {
          v14 = 0;
        }
      }

      else
      {
        v14 = 0;
      }

      groupIdentifier = [(SPInternalSimpleBeacon *)self groupIdentifier];

      v17 = groupIdentifier == 0 && v14;
      if (groupIdentifier && v14)
      {
        groupIdentifier2 = [(SPInternalSimpleBeacon *)self groupIdentifier];
        groupIdentifier3 = [(SPInternalSimpleBeacon *)v5 groupIdentifier];
        v17 = [groupIdentifier2 isEqual:groupIdentifier3];
      }

      ownerBeaconIdentifier = [(SPInternalSimpleBeacon *)self ownerBeaconIdentifier];

      v21 = (ownerBeaconIdentifier == 0) & v17;
      if (ownerBeaconIdentifier && v17)
      {
        ownerBeaconIdentifier2 = [(SPInternalSimpleBeacon *)self ownerBeaconIdentifier];
        ownerBeaconIdentifier3 = [(SPInternalSimpleBeacon *)v5 ownerBeaconIdentifier];
        v21 = [ownerBeaconIdentifier2 isEqual:ownerBeaconIdentifier3];
      }

      modelName = [(SPInternalSimpleBeacon *)self modelName];

      v25 = (modelName == 0) & v21;
      if (modelName && v21)
      {
        modelName2 = [(SPInternalSimpleBeacon *)self modelName];
        modelName3 = [(SPInternalSimpleBeacon *)v5 modelName];
        v25 = [modelName2 isEqualToString:modelName3];
      }

      manufacturerName = [(SPInternalSimpleBeacon *)self manufacturerName];

      v29 = (manufacturerName == 0) & v25;
      if (manufacturerName && v25)
      {
        manufacturerName2 = [(SPInternalSimpleBeacon *)self manufacturerName];
        manufacturerName3 = [(SPInternalSimpleBeacon *)v5 manufacturerName];
        v29 = [manufacturerName2 isEqualToString:manufacturerName3];
      }

      serialNumber = [(SPInternalSimpleBeacon *)self serialNumber];

      v33 = (serialNumber == 0) & v29;
      if (serialNumber && v29)
      {
        serialNumber2 = [(SPInternalSimpleBeacon *)self serialNumber];
        serialNumber3 = [(SPInternalSimpleBeacon *)v5 serialNumber];
        v33 = [serialNumber2 isEqualToString:serialNumber3];
      }

      keySyncRecord = [(SPInternalSimpleBeacon *)self keySyncRecord];

      v37 = (keySyncRecord == 0) & v33;
      if (keySyncRecord && v33)
      {
        keySyncRecord2 = [(SPInternalSimpleBeacon *)self keySyncRecord];
        keySyncRecord3 = [(SPInternalSimpleBeacon *)v5 keySyncRecord];
        v37 = [keySyncRecord2 isEqual:keySyncRecord3];
      }

      lostModeInfo = [(SPInternalSimpleBeacon *)self lostModeInfo];

      v41 = (lostModeInfo == 0) & v37;
      if (lostModeInfo && v37)
      {
        lostModeInfo2 = [(SPInternalSimpleBeacon *)self lostModeInfo];
        lostModeInfo3 = [(SPInternalSimpleBeacon *)v5 lostModeInfo];
        v41 = [lostModeInfo2 isEqual:lostModeInfo3];
      }

      lockedTimestamp = [(SPInternalSimpleBeacon *)self lockedTimestamp];

      v45 = (lockedTimestamp == 0) & v41;
      if (lockedTimestamp && v41)
      {
        lockedTimestamp2 = [(SPInternalSimpleBeacon *)self lockedTimestamp];
        lockedTimestamp3 = [(SPInternalSimpleBeacon *)v5 lockedTimestamp];
        v45 = [lockedTimestamp2 isEqualToDate:lockedTimestamp3];
      }

      wipedTimestamp = [(SPInternalSimpleBeacon *)self wipedTimestamp];

      v49 = (wipedTimestamp == 0) & v45;
      if (wipedTimestamp && v45)
      {
        wipedTimestamp2 = [(SPInternalSimpleBeacon *)self wipedTimestamp];
        wipedTimestamp3 = [(SPInternalSimpleBeacon *)v5 wipedTimestamp];
        v49 = [wipedTimestamp2 isEqualToDate:wipedTimestamp3];
      }

      taskInformation = [(SPInternalSimpleBeacon *)self taskInformation];

      v53 = (taskInformation == 0) & v49;
      if (taskInformation && v49)
      {
        taskInformation2 = [(SPInternalSimpleBeacon *)self taskInformation];
        taskInformation3 = [(SPInternalSimpleBeacon *)v5 taskInformation];
        v53 = [taskInformation2 isEqual:taskInformation3];
      }

      owner = [(SPInternalSimpleBeacon *)self owner];

      v57 = (owner == 0) & v53;
      if (owner && v53)
      {
        owner2 = [(SPInternalSimpleBeacon *)self owner];
        owner3 = [(SPInternalSimpleBeacon *)v5 owner];
        v57 = [owner2 isEqual:owner3];
      }

      role = [(SPInternalSimpleBeacon *)self role];

      v61 = (role == 0) & v57;
      if (role && v57)
      {
        role2 = [(SPInternalSimpleBeacon *)self role];
        role3 = [(SPInternalSimpleBeacon *)v5 role];
        v61 = [role2 isEqual:role3];
      }

      safeLocations = [(SPInternalSimpleBeacon *)self safeLocations];

      v65 = (safeLocations == 0) & v61;
      if (safeLocations && v61)
      {
        safeLocations2 = [(SPInternalSimpleBeacon *)self safeLocations];
        safeLocations3 = [(SPInternalSimpleBeacon *)v5 safeLocations];
        v65 = [safeLocations2 isEqual:safeLocations3];
      }

      accessoryProductInfo = [(SPInternalSimpleBeacon *)self accessoryProductInfo];

      v69 = (accessoryProductInfo == 0) & v65;
      if (accessoryProductInfo && v65)
      {
        accessoryProductInfo2 = [(SPInternalSimpleBeacon *)self accessoryProductInfo];
        accessoryProductInfo3 = [(SPInternalSimpleBeacon *)v5 accessoryProductInfo];
        v69 = [accessoryProductInfo2 isEqual:accessoryProductInfo3];
      }

      discoveryId = [(SPInternalSimpleBeacon *)self discoveryId];

      v73 = (discoveryId == 0) & v69;
      if (discoveryId && v69)
      {
        discoveryId2 = [(SPInternalSimpleBeacon *)self discoveryId];
        discoveryId3 = [(SPInternalSimpleBeacon *)v5 discoveryId];
        v73 = [discoveryId2 isEqualToString:discoveryId3];
      }

      deviceColor = [(SPInternalSimpleBeacon *)self deviceColor];

      v77 = (deviceColor == 0) & v73;
      if (deviceColor && v73)
      {
        deviceColor2 = [(SPInternalSimpleBeacon *)self deviceColor];
        deviceColor3 = [(SPInternalSimpleBeacon *)v5 deviceColor];
        v77 = [deviceColor2 isEqualToString:deviceColor3];
      }

      deviceClass = [(SPInternalSimpleBeacon *)self deviceClass];

      v81 = (deviceClass == 0) & v77;
      if (deviceClass && v77)
      {
        deviceClass2 = [(SPInternalSimpleBeacon *)self deviceClass];
        deviceClass3 = [(SPInternalSimpleBeacon *)v5 deviceClass];
        v81 = [deviceClass2 isEqualToString:deviceClass3];
      }

      deviceModel = [(SPInternalSimpleBeacon *)self deviceModel];

      v85 = (deviceModel == 0) & v81;
      if (deviceModel && v81)
      {
        deviceModel2 = [(SPInternalSimpleBeacon *)self deviceModel];
        deviceModel3 = [(SPInternalSimpleBeacon *)v5 deviceModel];
        v85 = [deviceModel2 isEqualToString:deviceModel3];
      }

      rawDeviceModel = [(SPInternalSimpleBeacon *)self rawDeviceModel];

      v89 = (rawDeviceModel == 0) & v85;
      if (rawDeviceModel && v85)
      {
        rawDeviceModel2 = [(SPInternalSimpleBeacon *)self rawDeviceModel];
        rawDeviceModel3 = [(SPInternalSimpleBeacon *)v5 rawDeviceModel];
        v89 = [rawDeviceModel2 isEqualToString:rawDeviceModel3];
      }

      deviceDisplayName = [(SPInternalSimpleBeacon *)self deviceDisplayName];

      v93 = (deviceDisplayName == 0) & v89;
      if (deviceDisplayName && v89)
      {
        deviceDisplayName2 = [(SPInternalSimpleBeacon *)self deviceDisplayName];
        deviceDisplayName3 = [(SPInternalSimpleBeacon *)v5 deviceDisplayName];
        v93 = [deviceDisplayName2 isEqualToString:deviceDisplayName3];
      }

      multipartStatus = [(SPInternalSimpleBeacon *)self multipartStatus];

      v97 = (multipartStatus == 0) & v93;
      if (multipartStatus && v93)
      {
        multipartStatus2 = [(SPInternalSimpleBeacon *)self multipartStatus];
        multipartStatus3 = [(SPInternalSimpleBeacon *)v5 multipartStatus];
        v97 = [multipartStatus2 isEqualToSet:multipartStatus3];
      }

      rawMetadata = [(SPInternalSimpleBeacon *)self rawMetadata];

      v101 = (rawMetadata == 0) & v97;
      if (rawMetadata && v97)
      {
        rawMetadata2 = [(SPInternalSimpleBeacon *)self rawMetadata];
        rawMetadata3 = [(SPInternalSimpleBeacon *)v5 rawMetadata];
        v101 = [rawMetadata2 isEqual:rawMetadata3];
      }

      imageBaseUrl = [(SPInternalSimpleBeacon *)self imageBaseUrl];

      v15 = (imageBaseUrl == 0) & v101;
      if (imageBaseUrl && v101)
      {
        imageBaseUrl2 = [(SPInternalSimpleBeacon *)self imageBaseUrl];
        imageBaseUrl3 = [(SPInternalSimpleBeacon *)v5 imageBaseUrl];
        v15 = [imageBaseUrl2 isEqual:imageBaseUrl3];
      }
    }

    else
    {
      v15 = 0;
    }
  }

  return v15;
}

- (unint64_t)hash
{
  v3 = [(NSUUID *)self->_identifier hash];
  v4 = [(NSString *)self->_name hash];
  v5 = [(NSString *)self->_type hash];
  connectionAllowed = self->_connectionAllowed;
  partIdentifier = self->_partIdentifier;
  v8 = [(NSString *)self->_systemVersion hash];
  v9 = (self->_txPower * 100.0);
  v10 = *&self->_batteryLevel;
  v73 = v10;
  v74 = *&self->_vendorId;
  connectableDeviceCount = self->_connectableDeviceCount;
  v12 = [(NSUUID *)self->_productUUID hash];
  v13 = veorq_s8(v74, v73);
  v14 = *&veor_s8(*v13.i8, *&vextq_s8(v13, v13, 8uLL)) ^ partIdentifier ^ connectableDeviceCount ^ self->_internalShareType ^ (connectionAllowed ^ self->_isAppleAudioAccessory ^ self->_isZeus ^ self->_canBeLeashedByHost) & 1 ^ v12 ^ (self->_connected ^ self->_online) & 1 ^ v8 ^ v5 ^ v3 ^ v4 ^ v9;
  groupIdentifier = [(SPInternalSimpleBeacon *)self groupIdentifier];

  if (groupIdentifier)
  {
    groupIdentifier2 = [(SPInternalSimpleBeacon *)self groupIdentifier];
    v14 ^= [groupIdentifier2 hash];
  }

  ownerBeaconIdentifier = [(SPInternalSimpleBeacon *)self ownerBeaconIdentifier];

  if (ownerBeaconIdentifier)
  {
    ownerBeaconIdentifier2 = [(SPInternalSimpleBeacon *)self ownerBeaconIdentifier];
    v14 ^= [ownerBeaconIdentifier2 hash];
  }

  modelName = [(SPInternalSimpleBeacon *)self modelName];

  if (modelName)
  {
    modelName2 = [(SPInternalSimpleBeacon *)self modelName];
    v14 ^= [modelName2 hash];
  }

  manufacturerName = [(SPInternalSimpleBeacon *)self manufacturerName];

  if (manufacturerName)
  {
    manufacturerName2 = [(SPInternalSimpleBeacon *)self manufacturerName];
    v14 ^= [manufacturerName2 hash];
  }

  serialNumber = [(SPInternalSimpleBeacon *)self serialNumber];

  if (serialNumber)
  {
    serialNumber2 = [(SPInternalSimpleBeacon *)self serialNumber];
    v14 ^= [serialNumber2 hash];
  }

  keySyncRecord = [(SPInternalSimpleBeacon *)self keySyncRecord];

  if (keySyncRecord)
  {
    keySyncRecord2 = [(SPInternalSimpleBeacon *)self keySyncRecord];
    v14 ^= [keySyncRecord2 hash];
  }

  lostModeInfo = [(SPInternalSimpleBeacon *)self lostModeInfo];

  if (lostModeInfo)
  {
    lostModeInfo2 = [(SPInternalSimpleBeacon *)self lostModeInfo];
    v14 ^= [lostModeInfo2 hash];
  }

  lockedTimestamp = [(SPInternalSimpleBeacon *)self lockedTimestamp];

  if (lockedTimestamp)
  {
    lockedTimestamp2 = [(SPInternalSimpleBeacon *)self lockedTimestamp];
    v14 &= [lockedTimestamp2 hash];
  }

  wipedTimestamp = [(SPInternalSimpleBeacon *)self wipedTimestamp];

  if (wipedTimestamp)
  {
    wipedTimestamp2 = [(SPInternalSimpleBeacon *)self wipedTimestamp];
    v14 &= [wipedTimestamp2 hash];
  }

  taskInformation = [(SPInternalSimpleBeacon *)self taskInformation];

  if (taskInformation)
  {
    taskInformation2 = [(SPInternalSimpleBeacon *)self taskInformation];
    v14 ^= [taskInformation2 hash];
  }

  owner = [(SPInternalSimpleBeacon *)self owner];

  if (owner)
  {
    owner2 = [(SPInternalSimpleBeacon *)self owner];
    v14 ^= [owner2 hash];
  }

  role = [(SPInternalSimpleBeacon *)self role];

  if (role)
  {
    role2 = [(SPInternalSimpleBeacon *)self role];
    v14 ^= [role2 hash];
  }

  safeLocations = [(SPInternalSimpleBeacon *)self safeLocations];

  if (safeLocations)
  {
    safeLocations2 = [(SPInternalSimpleBeacon *)self safeLocations];
    v14 ^= [safeLocations2 hash];
  }

  accessoryProductInfo = [(SPInternalSimpleBeacon *)self accessoryProductInfo];

  if (accessoryProductInfo)
  {
    accessoryProductInfo2 = [(SPInternalSimpleBeacon *)self accessoryProductInfo];
    v14 ^= [accessoryProductInfo2 hash];
  }

  discoveryId = [(SPInternalSimpleBeacon *)self discoveryId];

  if (discoveryId)
  {
    discoveryId2 = [(SPInternalSimpleBeacon *)self discoveryId];
    v14 ^= [discoveryId2 hash];
  }

  deviceColor = [(SPInternalSimpleBeacon *)self deviceColor];

  if (deviceColor)
  {
    deviceColor2 = [(SPInternalSimpleBeacon *)self deviceColor];
    v14 ^= [deviceColor2 hash];
  }

  deviceClass = [(SPInternalSimpleBeacon *)self deviceClass];

  if (deviceClass)
  {
    deviceClass2 = [(SPInternalSimpleBeacon *)self deviceClass];
    v14 ^= [deviceClass2 hash];
  }

  deviceModel = [(SPInternalSimpleBeacon *)self deviceModel];

  if (deviceModel)
  {
    deviceModel2 = [(SPInternalSimpleBeacon *)self deviceModel];
    v14 ^= [deviceModel2 hash];
  }

  rawDeviceModel = [(SPInternalSimpleBeacon *)self rawDeviceModel];

  if (rawDeviceModel)
  {
    rawDeviceModel2 = [(SPInternalSimpleBeacon *)self rawDeviceModel];
    v14 ^= [rawDeviceModel2 hash];
  }

  deviceDisplayName = [(SPInternalSimpleBeacon *)self deviceDisplayName];

  if (deviceDisplayName)
  {
    deviceDisplayName2 = [(SPInternalSimpleBeacon *)self deviceDisplayName];
    v14 ^= [deviceDisplayName2 hash];
  }

  lowPowerMode = [(SPInternalSimpleBeacon *)self lowPowerMode];

  if (lowPowerMode)
  {
    lowPowerMode2 = [(SPInternalSimpleBeacon *)self lowPowerMode];
    v14 ^= [lowPowerMode2 hash];
  }

  thisDevice = [(SPInternalSimpleBeacon *)self thisDevice];

  if (thisDevice)
  {
    thisDevice2 = [(SPInternalSimpleBeacon *)self thisDevice];
    v14 ^= [thisDevice2 hash];
  }

  isMine = [(SPInternalSimpleBeacon *)self isMine];

  if (isMine)
  {
    isMine2 = [(SPInternalSimpleBeacon *)self isMine];
    v14 ^= [isMine2 hash];
  }

  isRepairCapable = [(SPInternalSimpleBeacon *)self isRepairCapable];

  if (isRepairCapable)
  {
    isRepairCapable2 = [(SPInternalSimpleBeacon *)self isRepairCapable];
    v14 ^= [isRepairCapable2 hash];
  }

  batteryPercentage = [(SPInternalSimpleBeacon *)self batteryPercentage];

  if (batteryPercentage)
  {
    batteryPercentage2 = [(SPInternalSimpleBeacon *)self batteryPercentage];
    [batteryPercentage2 doubleValue];
    v14 ^= (v65 * 1000.0);
  }

  multipartStatus = [(SPInternalSimpleBeacon *)self multipartStatus];

  if (multipartStatus)
  {
    multipartStatus2 = [(SPInternalSimpleBeacon *)self multipartStatus];
    v14 ^= [multipartStatus2 hash];
  }

  rawMetadata = [(SPInternalSimpleBeacon *)self rawMetadata];

  if (rawMetadata)
  {
    rawMetadata2 = [(SPInternalSimpleBeacon *)self rawMetadata];
    v14 ^= [rawMetadata2 hash];
  }

  imageBaseUrl = [(SPInternalSimpleBeacon *)self imageBaseUrl];

  if (imageBaseUrl)
  {
    imageBaseUrl2 = [(SPInternalSimpleBeacon *)self imageBaseUrl];
    v14 ^= [imageBaseUrl2 hash];
  }

  return v14;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_opt_new();
  identifier = [(SPInternalSimpleBeacon *)self identifier];
  v6 = [identifier copy];
  [v4 setIdentifier:v6];

  name = [(SPInternalSimpleBeacon *)self name];
  v8 = [name copy];
  [v4 setName:v8];

  type = [(SPInternalSimpleBeacon *)self type];
  v10 = [type copy];
  [v4 setType:v10];

  [v4 setPartIdentifier:{-[SPInternalSimpleBeacon partIdentifier](self, "partIdentifier")}];
  [v4 setConnectionAllowed:{-[SPInternalSimpleBeacon connectionAllowed](self, "connectionAllowed")}];
  systemVersion = [(SPInternalSimpleBeacon *)self systemVersion];
  v12 = [systemVersion copy];
  [v4 setSystemVersion:v12];

  [(SPInternalSimpleBeacon *)self txPower];
  [v4 setTxPower:?];
  [v4 setVendorId:{-[SPInternalSimpleBeacon vendorId](self, "vendorId")}];
  [v4 setProductId:{-[SPInternalSimpleBeacon productId](self, "productId")}];
  productUUID = [(SPInternalSimpleBeacon *)self productUUID];
  [v4 setProductUUID:productUUID];

  [v4 setBatteryLevel:{-[SPInternalSimpleBeacon batteryLevel](self, "batteryLevel")}];
  [v4 setRepairState:{-[SPInternalSimpleBeacon repairState](self, "repairState")}];
  [v4 setConnectableDeviceCount:{-[SPInternalSimpleBeacon connectableDeviceCount](self, "connectableDeviceCount")}];
  groupIdentifier = [(SPInternalSimpleBeacon *)self groupIdentifier];
  v15 = [groupIdentifier copy];
  [v4 setGroupIdentifier:v15];

  ownerBeaconIdentifier = [(SPInternalSimpleBeacon *)self ownerBeaconIdentifier];
  v17 = [ownerBeaconIdentifier copy];
  [v4 setOwnerBeaconIdentifier:v17];

  modelName = [(SPInternalSimpleBeacon *)self modelName];
  v19 = [modelName copy];
  [v4 setModelName:v19];

  manufacturerName = [(SPInternalSimpleBeacon *)self manufacturerName];
  v21 = [manufacturerName copy];
  [v4 setManufacturerName:v21];

  serialNumber = [(SPInternalSimpleBeacon *)self serialNumber];
  v23 = [serialNumber copy];
  [v4 setSerialNumber:v23];

  keySyncRecord = [(SPInternalSimpleBeacon *)self keySyncRecord];
  v25 = [keySyncRecord copy];
  [v4 setKeySyncRecord:v25];

  lostModeInfo = [(SPInternalSimpleBeacon *)self lostModeInfo];
  v27 = [lostModeInfo copy];
  [v4 setLostModeInfo:v27];

  lockedTimestamp = [(SPInternalSimpleBeacon *)self lockedTimestamp];
  v29 = [lockedTimestamp copy];
  [v4 setLockedTimestamp:v29];

  wipedTimestamp = [(SPInternalSimpleBeacon *)self wipedTimestamp];
  v31 = [wipedTimestamp copy];
  [v4 setWipedTimestamp:v31];

  taskInformation = [(SPInternalSimpleBeacon *)self taskInformation];
  v33 = [taskInformation copy];
  [v4 setTaskInformation:v33];

  owner = [(SPInternalSimpleBeacon *)self owner];
  v35 = [owner copy];
  [v4 setOwner:v35];

  role = [(SPInternalSimpleBeacon *)self role];
  v37 = [role copy];
  [v4 setRole:v37];

  safeLocations = [(SPInternalSimpleBeacon *)self safeLocations];
  v39 = [safeLocations copy];
  [v4 setSafeLocations:v39];

  accessoryProductInfo = [(SPInternalSimpleBeacon *)self accessoryProductInfo];
  v41 = [accessoryProductInfo copy];
  [v4 setAccessoryProductInfo:v41];

  [v4 setIsAppleAudioAccessory:{-[SPInternalSimpleBeacon isAppleAudioAccessory](self, "isAppleAudioAccessory")}];
  [v4 setIsZeus:{-[SPInternalSimpleBeacon isZeus](self, "isZeus")}];
  [v4 setCanBeLeashedByHost:{-[SPInternalSimpleBeacon canBeLeashedByHost](self, "canBeLeashedByHost")}];
  [v4 setConnected:{-[SPInternalSimpleBeacon connected](self, "connected")}];
  discoveryId = [(SPInternalSimpleBeacon *)self discoveryId];
  v43 = [discoveryId copy];
  [v4 setDiscoveryId:v43];

  [v4 setInternalShareType:{-[SPInternalSimpleBeacon internalShareType](self, "internalShareType")}];
  deviceColor = [(SPInternalSimpleBeacon *)self deviceColor];
  [v4 setDeviceColor:deviceColor];

  deviceClass = [(SPInternalSimpleBeacon *)self deviceClass];
  [v4 setDeviceClass:deviceClass];

  deviceModel = [(SPInternalSimpleBeacon *)self deviceModel];
  [v4 setDeviceModel:deviceModel];

  rawDeviceModel = [(SPInternalSimpleBeacon *)self rawDeviceModel];
  [v4 setRawDeviceModel:rawDeviceModel];

  rawMetadata = [(SPInternalSimpleBeacon *)self rawMetadata];
  [v4 setRawMetadata:rawMetadata];

  deviceDisplayName = [(SPInternalSimpleBeacon *)self deviceDisplayName];
  [v4 setDeviceDisplayName:deviceDisplayName];

  lowPowerMode = [(SPInternalSimpleBeacon *)self lowPowerMode];
  [v4 setLowPowerMode:lowPowerMode];

  thisDevice = [(SPInternalSimpleBeacon *)self thisDevice];
  [v4 setThisDevice:thisDevice];

  isMine = [(SPInternalSimpleBeacon *)self isMine];
  [v4 setIsMine:isMine];

  isRepairCapable = [(SPInternalSimpleBeacon *)self isRepairCapable];
  [v4 setIsRepairCapable:isRepairCapable];

  [v4 setOnline:{-[SPInternalSimpleBeacon online](self, "online")}];
  multipartStatus = [(SPInternalSimpleBeacon *)self multipartStatus];
  [v4 setMultipartStatus:multipartStatus];

  batteryPercentage = [(SPInternalSimpleBeacon *)self batteryPercentage];
  [v4 setBatteryPercentage:batteryPercentage];

  rawMetadata2 = [(SPInternalSimpleBeacon *)self rawMetadata];
  v57 = [rawMetadata2 copy];
  [v4 setRawMetadata:v57];

  imageBaseUrl = [(SPInternalSimpleBeacon *)self imageBaseUrl];
  v59 = [imageBaseUrl copy];
  [v4 setImageBaseUrl:v59];

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  identifier = self->_identifier;
  coderCopy = coder;
  [coderCopy encodeObject:identifier forKey:@"identifier"];
  [coderCopy encodeObject:self->_name forKey:@"name"];
  [coderCopy encodeObject:self->_type forKey:@"type"];
  [coderCopy encodeInteger:self->_partIdentifier forKey:@"partIdentifier"];
  [coderCopy encodeBool:self->_connectionAllowed forKey:@"connectionAllowed"];
  [coderCopy encodeObject:self->_systemVersion forKey:@"systemVersion"];
  [coderCopy encodeDouble:@"txPower" forKey:self->_txPower];
  [coderCopy encodeDouble:@"vendorId" forKey:self->_vendorId];
  [coderCopy encodeDouble:@"productId" forKey:self->_productId];
  [coderCopy encodeObject:self->_productUUID forKey:@"productUUID"];
  [coderCopy encodeDouble:@"batteryLevel" forKey:self->_batteryLevel];
  [coderCopy encodeDouble:@"repairState" forKey:self->_repairState];
  [coderCopy encodeDouble:@"connectableDeviceCount" forKey:self->_connectableDeviceCount];
  [coderCopy encodeObject:self->_groupIdentifier forKey:@"groupIdentifier"];
  [coderCopy encodeObject:self->_ownerBeaconIdentifier forKey:@"ownerBeaconIdentifier"];
  [coderCopy encodeObject:self->_modelName forKey:@"modelName"];
  [coderCopy encodeObject:self->_manufacturerName forKey:@"manufacturerName"];
  [coderCopy encodeObject:self->_serialNumber forKey:@"serialNumber"];
  [coderCopy encodeObject:self->_keySyncRecord forKey:@"keySyncRecord"];
  [coderCopy encodeObject:self->_lostModeInfo forKey:@"lostModeInfo"];
  [coderCopy encodeObject:self->_lockedTimestamp forKey:@"lockedTimestamp"];
  [coderCopy encodeObject:self->_wipedTimestamp forKey:@"wipedTimestamp"];
  [coderCopy encodeObject:self->_taskInformation forKey:@"taskInformation"];
  [coderCopy encodeObject:self->_owner forKey:@"owner"];
  [coderCopy encodeObject:self->_role forKey:@"role"];
  [coderCopy encodeObject:self->_safeLocations forKey:@"safeLocations"];
  [coderCopy encodeObject:self->_accessoryProductInfo forKey:@"accessoryProductInfo"];
  [coderCopy encodeBool:self->_isAppleAudioAccessory forKey:@"isAppleAudioAccessory"];
  [coderCopy encodeBool:self->_isZeus forKey:@"isZeus"];
  [coderCopy encodeBool:self->_canBeLeashedByHost forKey:@"canBeLeashedByHost"];
  [coderCopy encodeBool:self->_connected forKey:@"connected"];
  [coderCopy encodeObject:self->_discoveryId forKey:@"discoveryId"];
  [coderCopy encodeInteger:self->_internalShareType forKey:@"internalShareType"];
  [coderCopy encodeObject:self->_deviceColor forKey:@"deviceColor"];
  [coderCopy encodeObject:self->_deviceClass forKey:@"deviceClass"];
  [coderCopy encodeObject:self->_deviceModel forKey:@"deviceModel"];
  [coderCopy encodeObject:self->_rawDeviceModel forKey:@"rawDeviceModel"];
  [coderCopy encodeObject:self->_deviceDisplayName forKey:@"deviceDisplayName"];
  [coderCopy encodeObject:self->_lowPowerMode forKey:@"lowPowerMode"];
  [coderCopy encodeObject:self->_thisDevice forKey:@"thisDevice"];
  [coderCopy encodeObject:self->_isMine forKey:@"isMine"];
  [coderCopy encodeObject:self->_isRepairCapable forKey:@"isRepairCapable"];
  [coderCopy encodeBool:self->_online forKey:@"online"];
  [coderCopy encodeObject:self->_batteryPercentage forKey:@"batteryPercentage"];
  [coderCopy encodeObject:self->_multipartStatus forKey:@"multipartStatus"];
  [coderCopy encodeObject:self->_rawMetadata forKey:@"rawMetadata"];
  [coderCopy encodeObject:self->_imageBaseUrl forKey:@"imageBaseUrl"];
}

- (SPInternalSimpleBeacon)initWithCoder:(id)coder
{
  v87[2] = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
  identifier = self->_identifier;
  self->_identifier = v5;

  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"name"];
  name = self->_name;
  self->_name = v7;

  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"type"];
  type = self->_type;
  self->_type = v9;

  self->_partIdentifier = [coderCopy decodeIntForKey:@"partIdentifier"];
  self->_connectionAllowed = [coderCopy decodeBoolForKey:@"connectionAllowed"];
  v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"systemVersion"];
  systemVersion = self->_systemVersion;
  self->_systemVersion = v11;

  [coderCopy decodeDoubleForKey:@"txPower"];
  self->_txPower = v13;
  [coderCopy decodeDoubleForKey:@"vendorId"];
  self->_vendorId = v14;
  [coderCopy decodeDoubleForKey:@"productId"];
  self->_productId = v15;
  v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"productUUID"];
  productUUID = self->_productUUID;
  self->_productUUID = v16;

  [coderCopy decodeDoubleForKey:@"batteryLevel"];
  self->_batteryLevel = v18;
  [coderCopy decodeDoubleForKey:@"repairState"];
  self->_repairState = v19;
  [coderCopy decodeDoubleForKey:@"connectableDeviceCount"];
  self->_connectableDeviceCount = v20;
  v21 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"groupIdentifier"];
  groupIdentifier = self->_groupIdentifier;
  self->_groupIdentifier = v21;

  v23 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ownerBeaconIdentifier"];
  ownerBeaconIdentifier = self->_ownerBeaconIdentifier;
  self->_ownerBeaconIdentifier = v23;

  v25 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"modelName"];
  modelName = self->_modelName;
  self->_modelName = v25;

  v27 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"manufacturerName"];
  manufacturerName = self->_manufacturerName;
  self->_manufacturerName = v27;

  v29 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"serialNumber"];
  serialNumber = self->_serialNumber;
  self->_serialNumber = v29;

  v31 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"keySyncRecord"];
  keySyncRecord = self->_keySyncRecord;
  self->_keySyncRecord = v31;

  v33 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"lostModeInfo"];
  lostModeInfo = self->_lostModeInfo;
  self->_lostModeInfo = v33;

  v35 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"lockedTimestamp"];
  lockedTimestamp = self->_lockedTimestamp;
  self->_lockedTimestamp = v35;

  v37 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"wipedTimestamp"];
  wipedTimestamp = self->_wipedTimestamp;
  self->_wipedTimestamp = v37;

  v39 = objc_opt_class();
  v40 = [coderCopy decodeDictionaryWithKeysOfClass:v39 objectsOfClass:objc_opt_class() forKey:@"taskInformation"];
  taskInformation = self->_taskInformation;
  self->_taskInformation = v40;

  v42 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"owner"];
  owner = self->_owner;
  self->_owner = v42;

  v44 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"role"];
  role = self->_role;
  self->_role = v44;

  v46 = MEMORY[0x277CBEB98];
  v87[0] = objc_opt_class();
  v87[1] = objc_opt_class();
  v47 = [MEMORY[0x277CBEA60] arrayWithObjects:v87 count:2];
  v48 = [v46 setWithArray:v47];
  v49 = [coderCopy decodeObjectOfClasses:v48 forKey:@"safeLocations"];
  safeLocations = self->_safeLocations;
  self->_safeLocations = v49;

  v51 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"accessoryProductInfo"];
  accessoryProductInfo = self->_accessoryProductInfo;
  self->_accessoryProductInfo = v51;

  self->_isAppleAudioAccessory = [coderCopy decodeBoolForKey:@"isAppleAudioAccessory"];
  self->_isZeus = [coderCopy decodeBoolForKey:@"isZeus"];
  self->_canBeLeashedByHost = [coderCopy decodeBoolForKey:@"canBeLeashedByHost"];
  self->_connected = [coderCopy decodeBoolForKey:@"connected"];
  v53 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"discoveryId"];
  discoveryId = self->_discoveryId;
  self->_discoveryId = v53;

  self->_internalShareType = [coderCopy decodeIntegerForKey:@"internalShareType"];
  v55 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"deviceColor"];
  deviceColor = self->_deviceColor;
  self->_deviceColor = v55;

  v57 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"deviceClass"];
  deviceClass = self->_deviceClass;
  self->_deviceClass = v57;

  v59 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"deviceModel"];
  deviceModel = self->_deviceModel;
  self->_deviceModel = v59;

  v61 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"rawDeviceModel"];
  rawDeviceModel = self->_rawDeviceModel;
  self->_rawDeviceModel = v61;

  v63 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"deviceDisplayName"];
  deviceDisplayName = self->_deviceDisplayName;
  self->_deviceDisplayName = v63;

  v65 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"lowPowerMode"];
  lowPowerMode = self->_lowPowerMode;
  self->_lowPowerMode = v65;

  v67 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"thisDevice"];
  thisDevice = self->_thisDevice;
  self->_thisDevice = v67;

  v69 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"isMine"];
  isMine = self->_isMine;
  self->_isMine = v69;

  v71 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"isRepairCapable"];
  isRepairCapable = self->_isRepairCapable;
  self->_isRepairCapable = v71;

  self->_online = [coderCopy decodeBoolForKey:@"online"];
  v73 = MEMORY[0x277CBEB98];
  v86[0] = objc_opt_class();
  v86[1] = objc_opt_class();
  v74 = [MEMORY[0x277CBEA60] arrayWithObjects:v86 count:2];
  v75 = [v73 setWithArray:v74];
  v76 = [coderCopy decodeObjectOfClasses:v75 forKey:@"multipartStatus"];
  multipartStatus = self->_multipartStatus;
  self->_multipartStatus = v76;

  v78 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"batteryPercentage"];
  batteryPercentage = self->_batteryPercentage;
  self->_batteryPercentage = v78;

  v80 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"rawMetadata"];
  rawMetadata = self->_rawMetadata;
  self->_rawMetadata = v80;

  v82 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"imageBaseUrl"];

  imageBaseUrl = self->_imageBaseUrl;
  self->_imageBaseUrl = v82;

  v84 = *MEMORY[0x277D85DE8];
  return self;
}

- (id)debugDescription
{
  groupIdentifier = [(SPInternalSimpleBeacon *)self groupIdentifier];

  v4 = MEMORY[0x277CCACA8];
  v5 = objc_opt_class();
  if (groupIdentifier)
  {
    groupIdentifier2 = [(SPInternalSimpleBeacon *)self groupIdentifier];
    identifier = [(SPInternalSimpleBeacon *)self identifier];
    v8 = [v4 stringWithFormat:@"<%@: %p (%@) %@>", v5, self, groupIdentifier2, identifier];
  }

  else
  {
    groupIdentifier2 = [(SPInternalSimpleBeacon *)self identifier];
    v8 = [v4 stringWithFormat:@"<%@: %p %@>", v5, self, groupIdentifier2];
  }

  return v8;
}

@end