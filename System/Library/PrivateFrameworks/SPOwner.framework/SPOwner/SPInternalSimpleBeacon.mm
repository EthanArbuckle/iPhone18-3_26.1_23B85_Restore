@interface SPInternalSimpleBeacon
- (BOOL)isEqual:(id)a3;
- (SPInternalSimpleBeacon)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)debugDescription;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SPInternalSimpleBeacon

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v15 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(SPInternalSimpleBeacon *)self identifier];
      v7 = [(SPInternalSimpleBeacon *)v5 identifier];
      if ([v6 isEqual:v7])
      {
        v8 = [(SPInternalSimpleBeacon *)self name];
        v9 = [(SPInternalSimpleBeacon *)v5 name];
        if ([v8 isEqualToString:v9])
        {
          v10 = [(SPInternalSimpleBeacon *)self type];
          v11 = [(SPInternalSimpleBeacon *)v5 type];
          if ([v10 isEqualToString:v11] && (v12 = -[SPInternalSimpleBeacon partIdentifier](self, "partIdentifier"), v12 == -[SPInternalSimpleBeacon partIdentifier](v5, "partIdentifier")) && (v13 = -[SPInternalSimpleBeacon connectionAllowed](self, "connectionAllowed"), v13 == -[SPInternalSimpleBeacon connectionAllowed](v5, "connectionAllowed")))
          {
            v108 = [(SPInternalSimpleBeacon *)self systemVersion];
            v143 = [(SPInternalSimpleBeacon *)v5 systemVersion];
            v144 = v108;
            if (![v108 isEqualToString:?])
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

            v112 = [(SPInternalSimpleBeacon *)self vendorId];
            if (v112 == [(SPInternalSimpleBeacon *)v5 vendorId]&& (v113 = [(SPInternalSimpleBeacon *)self productId], v113 == [(SPInternalSimpleBeacon *)v5 productId]) && (v114 = [(SPInternalSimpleBeacon *)self batteryLevel], v114 == [(SPInternalSimpleBeacon *)v5 batteryLevel]) && (v115 = [(SPInternalSimpleBeacon *)self repairState], v115 == [(SPInternalSimpleBeacon *)v5 repairState]) && (v116 = [(SPInternalSimpleBeacon *)self connectableDeviceCount], v116 == [(SPInternalSimpleBeacon *)v5 connectableDeviceCount]))
            {
              v117 = [(SPInternalSimpleBeacon *)self productUUID];
              v141 = [(SPInternalSimpleBeacon *)v5 productUUID];
              v142 = v117;
              if ([v117 isEqual:?] && (v118 = -[SPInternalSimpleBeacon isAppleAudioAccessory](self, "isAppleAudioAccessory"), v118 == -[SPInternalSimpleBeacon isAppleAudioAccessory](v5, "isAppleAudioAccessory")) && (v119 = -[SPInternalSimpleBeacon isZeus](self, "isZeus"), v119 == -[SPInternalSimpleBeacon isZeus](v5, "isZeus")) && (v120 = -[SPInternalSimpleBeacon canBeLeashedByHost](self, "canBeLeashedByHost"), v120 == -[SPInternalSimpleBeacon canBeLeashedByHost](v5, "canBeLeashedByHost")) && (v121 = -[SPInternalSimpleBeacon connected](self, "connected"), v121 == -[SPInternalSimpleBeacon connected](v5, "connected")) && (v122 = -[SPInternalSimpleBeacon internalShareType](self, "internalShareType"), v122 == -[SPInternalSimpleBeacon internalShareType](v5, "internalShareType")))
              {
                v140 = [(SPInternalSimpleBeacon *)self lowPowerMode];
                v123 = [v140 BOOLValue];
                v139 = [(SPInternalSimpleBeacon *)v5 lowPowerMode];
                if (v123 == [v139 BOOLValue])
                {
                  v138 = [(SPInternalSimpleBeacon *)self thisDevice];
                  v124 = [v138 BOOLValue];
                  v137 = [(SPInternalSimpleBeacon *)v5 thisDevice];
                  if (v124 == [v137 BOOLValue])
                  {
                    v136 = [(SPInternalSimpleBeacon *)self isMine];
                    v125 = [v136 BOOLValue];
                    v135 = [(SPInternalSimpleBeacon *)v5 isMine];
                    if (v125 == [v135 BOOLValue])
                    {
                      v134 = [(SPInternalSimpleBeacon *)self isRepairCapable];
                      v126 = [v134 BOOLValue];
                      v133 = [(SPInternalSimpleBeacon *)v5 isRepairCapable];
                      if (v126 == [v133 BOOLValue] && (v127 = -[SPInternalSimpleBeacon online](self, "online"), v127 == -[SPInternalSimpleBeacon online](v5, "online")))
                      {
                        v132 = [(SPInternalSimpleBeacon *)self batteryPercentage];
                        [v132 doubleValue];
                        v129 = v128;
                        v131 = [(SPInternalSimpleBeacon *)v5 batteryPercentage];
                        [v131 doubleValue];
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

      v16 = [(SPInternalSimpleBeacon *)self groupIdentifier];

      v17 = v16 == 0 && v14;
      if (v16 && v14)
      {
        v18 = [(SPInternalSimpleBeacon *)self groupIdentifier];
        v19 = [(SPInternalSimpleBeacon *)v5 groupIdentifier];
        v17 = [v18 isEqual:v19];
      }

      v20 = [(SPInternalSimpleBeacon *)self ownerBeaconIdentifier];

      v21 = (v20 == 0) & v17;
      if (v20 && v17)
      {
        v22 = [(SPInternalSimpleBeacon *)self ownerBeaconIdentifier];
        v23 = [(SPInternalSimpleBeacon *)v5 ownerBeaconIdentifier];
        v21 = [v22 isEqual:v23];
      }

      v24 = [(SPInternalSimpleBeacon *)self modelName];

      v25 = (v24 == 0) & v21;
      if (v24 && v21)
      {
        v26 = [(SPInternalSimpleBeacon *)self modelName];
        v27 = [(SPInternalSimpleBeacon *)v5 modelName];
        v25 = [v26 isEqualToString:v27];
      }

      v28 = [(SPInternalSimpleBeacon *)self manufacturerName];

      v29 = (v28 == 0) & v25;
      if (v28 && v25)
      {
        v30 = [(SPInternalSimpleBeacon *)self manufacturerName];
        v31 = [(SPInternalSimpleBeacon *)v5 manufacturerName];
        v29 = [v30 isEqualToString:v31];
      }

      v32 = [(SPInternalSimpleBeacon *)self serialNumber];

      v33 = (v32 == 0) & v29;
      if (v32 && v29)
      {
        v34 = [(SPInternalSimpleBeacon *)self serialNumber];
        v35 = [(SPInternalSimpleBeacon *)v5 serialNumber];
        v33 = [v34 isEqualToString:v35];
      }

      v36 = [(SPInternalSimpleBeacon *)self keySyncRecord];

      v37 = (v36 == 0) & v33;
      if (v36 && v33)
      {
        v38 = [(SPInternalSimpleBeacon *)self keySyncRecord];
        v39 = [(SPInternalSimpleBeacon *)v5 keySyncRecord];
        v37 = [v38 isEqual:v39];
      }

      v40 = [(SPInternalSimpleBeacon *)self lostModeInfo];

      v41 = (v40 == 0) & v37;
      if (v40 && v37)
      {
        v42 = [(SPInternalSimpleBeacon *)self lostModeInfo];
        v43 = [(SPInternalSimpleBeacon *)v5 lostModeInfo];
        v41 = [v42 isEqual:v43];
      }

      v44 = [(SPInternalSimpleBeacon *)self lockedTimestamp];

      v45 = (v44 == 0) & v41;
      if (v44 && v41)
      {
        v46 = [(SPInternalSimpleBeacon *)self lockedTimestamp];
        v47 = [(SPInternalSimpleBeacon *)v5 lockedTimestamp];
        v45 = [v46 isEqualToDate:v47];
      }

      v48 = [(SPInternalSimpleBeacon *)self wipedTimestamp];

      v49 = (v48 == 0) & v45;
      if (v48 && v45)
      {
        v50 = [(SPInternalSimpleBeacon *)self wipedTimestamp];
        v51 = [(SPInternalSimpleBeacon *)v5 wipedTimestamp];
        v49 = [v50 isEqualToDate:v51];
      }

      v52 = [(SPInternalSimpleBeacon *)self taskInformation];

      v53 = (v52 == 0) & v49;
      if (v52 && v49)
      {
        v54 = [(SPInternalSimpleBeacon *)self taskInformation];
        v55 = [(SPInternalSimpleBeacon *)v5 taskInformation];
        v53 = [v54 isEqual:v55];
      }

      v56 = [(SPInternalSimpleBeacon *)self owner];

      v57 = (v56 == 0) & v53;
      if (v56 && v53)
      {
        v58 = [(SPInternalSimpleBeacon *)self owner];
        v59 = [(SPInternalSimpleBeacon *)v5 owner];
        v57 = [v58 isEqual:v59];
      }

      v60 = [(SPInternalSimpleBeacon *)self role];

      v61 = (v60 == 0) & v57;
      if (v60 && v57)
      {
        v62 = [(SPInternalSimpleBeacon *)self role];
        v63 = [(SPInternalSimpleBeacon *)v5 role];
        v61 = [v62 isEqual:v63];
      }

      v64 = [(SPInternalSimpleBeacon *)self safeLocations];

      v65 = (v64 == 0) & v61;
      if (v64 && v61)
      {
        v66 = [(SPInternalSimpleBeacon *)self safeLocations];
        v67 = [(SPInternalSimpleBeacon *)v5 safeLocations];
        v65 = [v66 isEqual:v67];
      }

      v68 = [(SPInternalSimpleBeacon *)self accessoryProductInfo];

      v69 = (v68 == 0) & v65;
      if (v68 && v65)
      {
        v70 = [(SPInternalSimpleBeacon *)self accessoryProductInfo];
        v71 = [(SPInternalSimpleBeacon *)v5 accessoryProductInfo];
        v69 = [v70 isEqual:v71];
      }

      v72 = [(SPInternalSimpleBeacon *)self discoveryId];

      v73 = (v72 == 0) & v69;
      if (v72 && v69)
      {
        v74 = [(SPInternalSimpleBeacon *)self discoveryId];
        v75 = [(SPInternalSimpleBeacon *)v5 discoveryId];
        v73 = [v74 isEqualToString:v75];
      }

      v76 = [(SPInternalSimpleBeacon *)self deviceColor];

      v77 = (v76 == 0) & v73;
      if (v76 && v73)
      {
        v78 = [(SPInternalSimpleBeacon *)self deviceColor];
        v79 = [(SPInternalSimpleBeacon *)v5 deviceColor];
        v77 = [v78 isEqualToString:v79];
      }

      v80 = [(SPInternalSimpleBeacon *)self deviceClass];

      v81 = (v80 == 0) & v77;
      if (v80 && v77)
      {
        v82 = [(SPInternalSimpleBeacon *)self deviceClass];
        v83 = [(SPInternalSimpleBeacon *)v5 deviceClass];
        v81 = [v82 isEqualToString:v83];
      }

      v84 = [(SPInternalSimpleBeacon *)self deviceModel];

      v85 = (v84 == 0) & v81;
      if (v84 && v81)
      {
        v86 = [(SPInternalSimpleBeacon *)self deviceModel];
        v87 = [(SPInternalSimpleBeacon *)v5 deviceModel];
        v85 = [v86 isEqualToString:v87];
      }

      v88 = [(SPInternalSimpleBeacon *)self rawDeviceModel];

      v89 = (v88 == 0) & v85;
      if (v88 && v85)
      {
        v90 = [(SPInternalSimpleBeacon *)self rawDeviceModel];
        v91 = [(SPInternalSimpleBeacon *)v5 rawDeviceModel];
        v89 = [v90 isEqualToString:v91];
      }

      v92 = [(SPInternalSimpleBeacon *)self deviceDisplayName];

      v93 = (v92 == 0) & v89;
      if (v92 && v89)
      {
        v94 = [(SPInternalSimpleBeacon *)self deviceDisplayName];
        v95 = [(SPInternalSimpleBeacon *)v5 deviceDisplayName];
        v93 = [v94 isEqualToString:v95];
      }

      v96 = [(SPInternalSimpleBeacon *)self multipartStatus];

      v97 = (v96 == 0) & v93;
      if (v96 && v93)
      {
        v98 = [(SPInternalSimpleBeacon *)self multipartStatus];
        v99 = [(SPInternalSimpleBeacon *)v5 multipartStatus];
        v97 = [v98 isEqualToSet:v99];
      }

      v100 = [(SPInternalSimpleBeacon *)self rawMetadata];

      v101 = (v100 == 0) & v97;
      if (v100 && v97)
      {
        v102 = [(SPInternalSimpleBeacon *)self rawMetadata];
        v103 = [(SPInternalSimpleBeacon *)v5 rawMetadata];
        v101 = [v102 isEqual:v103];
      }

      v104 = [(SPInternalSimpleBeacon *)self imageBaseUrl];

      v15 = (v104 == 0) & v101;
      if (v104 && v101)
      {
        v105 = [(SPInternalSimpleBeacon *)self imageBaseUrl];
        v106 = [(SPInternalSimpleBeacon *)v5 imageBaseUrl];
        v15 = [v105 isEqual:v106];
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
  v15 = [(SPInternalSimpleBeacon *)self groupIdentifier];

  if (v15)
  {
    v16 = [(SPInternalSimpleBeacon *)self groupIdentifier];
    v14 ^= [v16 hash];
  }

  v17 = [(SPInternalSimpleBeacon *)self ownerBeaconIdentifier];

  if (v17)
  {
    v18 = [(SPInternalSimpleBeacon *)self ownerBeaconIdentifier];
    v14 ^= [v18 hash];
  }

  v19 = [(SPInternalSimpleBeacon *)self modelName];

  if (v19)
  {
    v20 = [(SPInternalSimpleBeacon *)self modelName];
    v14 ^= [v20 hash];
  }

  v21 = [(SPInternalSimpleBeacon *)self manufacturerName];

  if (v21)
  {
    v22 = [(SPInternalSimpleBeacon *)self manufacturerName];
    v14 ^= [v22 hash];
  }

  v23 = [(SPInternalSimpleBeacon *)self serialNumber];

  if (v23)
  {
    v24 = [(SPInternalSimpleBeacon *)self serialNumber];
    v14 ^= [v24 hash];
  }

  v25 = [(SPInternalSimpleBeacon *)self keySyncRecord];

  if (v25)
  {
    v26 = [(SPInternalSimpleBeacon *)self keySyncRecord];
    v14 ^= [v26 hash];
  }

  v27 = [(SPInternalSimpleBeacon *)self lostModeInfo];

  if (v27)
  {
    v28 = [(SPInternalSimpleBeacon *)self lostModeInfo];
    v14 ^= [v28 hash];
  }

  v29 = [(SPInternalSimpleBeacon *)self lockedTimestamp];

  if (v29)
  {
    v30 = [(SPInternalSimpleBeacon *)self lockedTimestamp];
    v14 &= [v30 hash];
  }

  v31 = [(SPInternalSimpleBeacon *)self wipedTimestamp];

  if (v31)
  {
    v32 = [(SPInternalSimpleBeacon *)self wipedTimestamp];
    v14 &= [v32 hash];
  }

  v33 = [(SPInternalSimpleBeacon *)self taskInformation];

  if (v33)
  {
    v34 = [(SPInternalSimpleBeacon *)self taskInformation];
    v14 ^= [v34 hash];
  }

  v35 = [(SPInternalSimpleBeacon *)self owner];

  if (v35)
  {
    v36 = [(SPInternalSimpleBeacon *)self owner];
    v14 ^= [v36 hash];
  }

  v37 = [(SPInternalSimpleBeacon *)self role];

  if (v37)
  {
    v38 = [(SPInternalSimpleBeacon *)self role];
    v14 ^= [v38 hash];
  }

  v39 = [(SPInternalSimpleBeacon *)self safeLocations];

  if (v39)
  {
    v40 = [(SPInternalSimpleBeacon *)self safeLocations];
    v14 ^= [v40 hash];
  }

  v41 = [(SPInternalSimpleBeacon *)self accessoryProductInfo];

  if (v41)
  {
    v42 = [(SPInternalSimpleBeacon *)self accessoryProductInfo];
    v14 ^= [v42 hash];
  }

  v43 = [(SPInternalSimpleBeacon *)self discoveryId];

  if (v43)
  {
    v44 = [(SPInternalSimpleBeacon *)self discoveryId];
    v14 ^= [v44 hash];
  }

  v45 = [(SPInternalSimpleBeacon *)self deviceColor];

  if (v45)
  {
    v46 = [(SPInternalSimpleBeacon *)self deviceColor];
    v14 ^= [v46 hash];
  }

  v47 = [(SPInternalSimpleBeacon *)self deviceClass];

  if (v47)
  {
    v48 = [(SPInternalSimpleBeacon *)self deviceClass];
    v14 ^= [v48 hash];
  }

  v49 = [(SPInternalSimpleBeacon *)self deviceModel];

  if (v49)
  {
    v50 = [(SPInternalSimpleBeacon *)self deviceModel];
    v14 ^= [v50 hash];
  }

  v51 = [(SPInternalSimpleBeacon *)self rawDeviceModel];

  if (v51)
  {
    v52 = [(SPInternalSimpleBeacon *)self rawDeviceModel];
    v14 ^= [v52 hash];
  }

  v53 = [(SPInternalSimpleBeacon *)self deviceDisplayName];

  if (v53)
  {
    v54 = [(SPInternalSimpleBeacon *)self deviceDisplayName];
    v14 ^= [v54 hash];
  }

  v55 = [(SPInternalSimpleBeacon *)self lowPowerMode];

  if (v55)
  {
    v56 = [(SPInternalSimpleBeacon *)self lowPowerMode];
    v14 ^= [v56 hash];
  }

  v57 = [(SPInternalSimpleBeacon *)self thisDevice];

  if (v57)
  {
    v58 = [(SPInternalSimpleBeacon *)self thisDevice];
    v14 ^= [v58 hash];
  }

  v59 = [(SPInternalSimpleBeacon *)self isMine];

  if (v59)
  {
    v60 = [(SPInternalSimpleBeacon *)self isMine];
    v14 ^= [v60 hash];
  }

  v61 = [(SPInternalSimpleBeacon *)self isRepairCapable];

  if (v61)
  {
    v62 = [(SPInternalSimpleBeacon *)self isRepairCapable];
    v14 ^= [v62 hash];
  }

  v63 = [(SPInternalSimpleBeacon *)self batteryPercentage];

  if (v63)
  {
    v64 = [(SPInternalSimpleBeacon *)self batteryPercentage];
    [v64 doubleValue];
    v14 ^= (v65 * 1000.0);
  }

  v66 = [(SPInternalSimpleBeacon *)self multipartStatus];

  if (v66)
  {
    v67 = [(SPInternalSimpleBeacon *)self multipartStatus];
    v14 ^= [v67 hash];
  }

  v68 = [(SPInternalSimpleBeacon *)self rawMetadata];

  if (v68)
  {
    v69 = [(SPInternalSimpleBeacon *)self rawMetadata];
    v14 ^= [v69 hash];
  }

  v70 = [(SPInternalSimpleBeacon *)self imageBaseUrl];

  if (v70)
  {
    v71 = [(SPInternalSimpleBeacon *)self imageBaseUrl];
    v14 ^= [v71 hash];
  }

  return v14;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_opt_new();
  v5 = [(SPInternalSimpleBeacon *)self identifier];
  v6 = [v5 copy];
  [v4 setIdentifier:v6];

  v7 = [(SPInternalSimpleBeacon *)self name];
  v8 = [v7 copy];
  [v4 setName:v8];

  v9 = [(SPInternalSimpleBeacon *)self type];
  v10 = [v9 copy];
  [v4 setType:v10];

  [v4 setPartIdentifier:{-[SPInternalSimpleBeacon partIdentifier](self, "partIdentifier")}];
  [v4 setConnectionAllowed:{-[SPInternalSimpleBeacon connectionAllowed](self, "connectionAllowed")}];
  v11 = [(SPInternalSimpleBeacon *)self systemVersion];
  v12 = [v11 copy];
  [v4 setSystemVersion:v12];

  [(SPInternalSimpleBeacon *)self txPower];
  [v4 setTxPower:?];
  [v4 setVendorId:{-[SPInternalSimpleBeacon vendorId](self, "vendorId")}];
  [v4 setProductId:{-[SPInternalSimpleBeacon productId](self, "productId")}];
  v13 = [(SPInternalSimpleBeacon *)self productUUID];
  [v4 setProductUUID:v13];

  [v4 setBatteryLevel:{-[SPInternalSimpleBeacon batteryLevel](self, "batteryLevel")}];
  [v4 setRepairState:{-[SPInternalSimpleBeacon repairState](self, "repairState")}];
  [v4 setConnectableDeviceCount:{-[SPInternalSimpleBeacon connectableDeviceCount](self, "connectableDeviceCount")}];
  v14 = [(SPInternalSimpleBeacon *)self groupIdentifier];
  v15 = [v14 copy];
  [v4 setGroupIdentifier:v15];

  v16 = [(SPInternalSimpleBeacon *)self ownerBeaconIdentifier];
  v17 = [v16 copy];
  [v4 setOwnerBeaconIdentifier:v17];

  v18 = [(SPInternalSimpleBeacon *)self modelName];
  v19 = [v18 copy];
  [v4 setModelName:v19];

  v20 = [(SPInternalSimpleBeacon *)self manufacturerName];
  v21 = [v20 copy];
  [v4 setManufacturerName:v21];

  v22 = [(SPInternalSimpleBeacon *)self serialNumber];
  v23 = [v22 copy];
  [v4 setSerialNumber:v23];

  v24 = [(SPInternalSimpleBeacon *)self keySyncRecord];
  v25 = [v24 copy];
  [v4 setKeySyncRecord:v25];

  v26 = [(SPInternalSimpleBeacon *)self lostModeInfo];
  v27 = [v26 copy];
  [v4 setLostModeInfo:v27];

  v28 = [(SPInternalSimpleBeacon *)self lockedTimestamp];
  v29 = [v28 copy];
  [v4 setLockedTimestamp:v29];

  v30 = [(SPInternalSimpleBeacon *)self wipedTimestamp];
  v31 = [v30 copy];
  [v4 setWipedTimestamp:v31];

  v32 = [(SPInternalSimpleBeacon *)self taskInformation];
  v33 = [v32 copy];
  [v4 setTaskInformation:v33];

  v34 = [(SPInternalSimpleBeacon *)self owner];
  v35 = [v34 copy];
  [v4 setOwner:v35];

  v36 = [(SPInternalSimpleBeacon *)self role];
  v37 = [v36 copy];
  [v4 setRole:v37];

  v38 = [(SPInternalSimpleBeacon *)self safeLocations];
  v39 = [v38 copy];
  [v4 setSafeLocations:v39];

  v40 = [(SPInternalSimpleBeacon *)self accessoryProductInfo];
  v41 = [v40 copy];
  [v4 setAccessoryProductInfo:v41];

  [v4 setIsAppleAudioAccessory:{-[SPInternalSimpleBeacon isAppleAudioAccessory](self, "isAppleAudioAccessory")}];
  [v4 setIsZeus:{-[SPInternalSimpleBeacon isZeus](self, "isZeus")}];
  [v4 setCanBeLeashedByHost:{-[SPInternalSimpleBeacon canBeLeashedByHost](self, "canBeLeashedByHost")}];
  [v4 setConnected:{-[SPInternalSimpleBeacon connected](self, "connected")}];
  v42 = [(SPInternalSimpleBeacon *)self discoveryId];
  v43 = [v42 copy];
  [v4 setDiscoveryId:v43];

  [v4 setInternalShareType:{-[SPInternalSimpleBeacon internalShareType](self, "internalShareType")}];
  v44 = [(SPInternalSimpleBeacon *)self deviceColor];
  [v4 setDeviceColor:v44];

  v45 = [(SPInternalSimpleBeacon *)self deviceClass];
  [v4 setDeviceClass:v45];

  v46 = [(SPInternalSimpleBeacon *)self deviceModel];
  [v4 setDeviceModel:v46];

  v47 = [(SPInternalSimpleBeacon *)self rawDeviceModel];
  [v4 setRawDeviceModel:v47];

  v48 = [(SPInternalSimpleBeacon *)self rawMetadata];
  [v4 setRawMetadata:v48];

  v49 = [(SPInternalSimpleBeacon *)self deviceDisplayName];
  [v4 setDeviceDisplayName:v49];

  v50 = [(SPInternalSimpleBeacon *)self lowPowerMode];
  [v4 setLowPowerMode:v50];

  v51 = [(SPInternalSimpleBeacon *)self thisDevice];
  [v4 setThisDevice:v51];

  v52 = [(SPInternalSimpleBeacon *)self isMine];
  [v4 setIsMine:v52];

  v53 = [(SPInternalSimpleBeacon *)self isRepairCapable];
  [v4 setIsRepairCapable:v53];

  [v4 setOnline:{-[SPInternalSimpleBeacon online](self, "online")}];
  v54 = [(SPInternalSimpleBeacon *)self multipartStatus];
  [v4 setMultipartStatus:v54];

  v55 = [(SPInternalSimpleBeacon *)self batteryPercentage];
  [v4 setBatteryPercentage:v55];

  v56 = [(SPInternalSimpleBeacon *)self rawMetadata];
  v57 = [v56 copy];
  [v4 setRawMetadata:v57];

  v58 = [(SPInternalSimpleBeacon *)self imageBaseUrl];
  v59 = [v58 copy];
  [v4 setImageBaseUrl:v59];

  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  identifier = self->_identifier;
  v5 = a3;
  [v5 encodeObject:identifier forKey:@"identifier"];
  [v5 encodeObject:self->_name forKey:@"name"];
  [v5 encodeObject:self->_type forKey:@"type"];
  [v5 encodeInteger:self->_partIdentifier forKey:@"partIdentifier"];
  [v5 encodeBool:self->_connectionAllowed forKey:@"connectionAllowed"];
  [v5 encodeObject:self->_systemVersion forKey:@"systemVersion"];
  [v5 encodeDouble:@"txPower" forKey:self->_txPower];
  [v5 encodeDouble:@"vendorId" forKey:self->_vendorId];
  [v5 encodeDouble:@"productId" forKey:self->_productId];
  [v5 encodeObject:self->_productUUID forKey:@"productUUID"];
  [v5 encodeDouble:@"batteryLevel" forKey:self->_batteryLevel];
  [v5 encodeDouble:@"repairState" forKey:self->_repairState];
  [v5 encodeDouble:@"connectableDeviceCount" forKey:self->_connectableDeviceCount];
  [v5 encodeObject:self->_groupIdentifier forKey:@"groupIdentifier"];
  [v5 encodeObject:self->_ownerBeaconIdentifier forKey:@"ownerBeaconIdentifier"];
  [v5 encodeObject:self->_modelName forKey:@"modelName"];
  [v5 encodeObject:self->_manufacturerName forKey:@"manufacturerName"];
  [v5 encodeObject:self->_serialNumber forKey:@"serialNumber"];
  [v5 encodeObject:self->_keySyncRecord forKey:@"keySyncRecord"];
  [v5 encodeObject:self->_lostModeInfo forKey:@"lostModeInfo"];
  [v5 encodeObject:self->_lockedTimestamp forKey:@"lockedTimestamp"];
  [v5 encodeObject:self->_wipedTimestamp forKey:@"wipedTimestamp"];
  [v5 encodeObject:self->_taskInformation forKey:@"taskInformation"];
  [v5 encodeObject:self->_owner forKey:@"owner"];
  [v5 encodeObject:self->_role forKey:@"role"];
  [v5 encodeObject:self->_safeLocations forKey:@"safeLocations"];
  [v5 encodeObject:self->_accessoryProductInfo forKey:@"accessoryProductInfo"];
  [v5 encodeBool:self->_isAppleAudioAccessory forKey:@"isAppleAudioAccessory"];
  [v5 encodeBool:self->_isZeus forKey:@"isZeus"];
  [v5 encodeBool:self->_canBeLeashedByHost forKey:@"canBeLeashedByHost"];
  [v5 encodeBool:self->_connected forKey:@"connected"];
  [v5 encodeObject:self->_discoveryId forKey:@"discoveryId"];
  [v5 encodeInteger:self->_internalShareType forKey:@"internalShareType"];
  [v5 encodeObject:self->_deviceColor forKey:@"deviceColor"];
  [v5 encodeObject:self->_deviceClass forKey:@"deviceClass"];
  [v5 encodeObject:self->_deviceModel forKey:@"deviceModel"];
  [v5 encodeObject:self->_rawDeviceModel forKey:@"rawDeviceModel"];
  [v5 encodeObject:self->_deviceDisplayName forKey:@"deviceDisplayName"];
  [v5 encodeObject:self->_lowPowerMode forKey:@"lowPowerMode"];
  [v5 encodeObject:self->_thisDevice forKey:@"thisDevice"];
  [v5 encodeObject:self->_isMine forKey:@"isMine"];
  [v5 encodeObject:self->_isRepairCapable forKey:@"isRepairCapable"];
  [v5 encodeBool:self->_online forKey:@"online"];
  [v5 encodeObject:self->_batteryPercentage forKey:@"batteryPercentage"];
  [v5 encodeObject:self->_multipartStatus forKey:@"multipartStatus"];
  [v5 encodeObject:self->_rawMetadata forKey:@"rawMetadata"];
  [v5 encodeObject:self->_imageBaseUrl forKey:@"imageBaseUrl"];
}

- (SPInternalSimpleBeacon)initWithCoder:(id)a3
{
  v87[2] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
  identifier = self->_identifier;
  self->_identifier = v5;

  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"name"];
  name = self->_name;
  self->_name = v7;

  v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"type"];
  type = self->_type;
  self->_type = v9;

  self->_partIdentifier = [v4 decodeIntForKey:@"partIdentifier"];
  self->_connectionAllowed = [v4 decodeBoolForKey:@"connectionAllowed"];
  v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"systemVersion"];
  systemVersion = self->_systemVersion;
  self->_systemVersion = v11;

  [v4 decodeDoubleForKey:@"txPower"];
  self->_txPower = v13;
  [v4 decodeDoubleForKey:@"vendorId"];
  self->_vendorId = v14;
  [v4 decodeDoubleForKey:@"productId"];
  self->_productId = v15;
  v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"productUUID"];
  productUUID = self->_productUUID;
  self->_productUUID = v16;

  [v4 decodeDoubleForKey:@"batteryLevel"];
  self->_batteryLevel = v18;
  [v4 decodeDoubleForKey:@"repairState"];
  self->_repairState = v19;
  [v4 decodeDoubleForKey:@"connectableDeviceCount"];
  self->_connectableDeviceCount = v20;
  v21 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"groupIdentifier"];
  groupIdentifier = self->_groupIdentifier;
  self->_groupIdentifier = v21;

  v23 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"ownerBeaconIdentifier"];
  ownerBeaconIdentifier = self->_ownerBeaconIdentifier;
  self->_ownerBeaconIdentifier = v23;

  v25 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"modelName"];
  modelName = self->_modelName;
  self->_modelName = v25;

  v27 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"manufacturerName"];
  manufacturerName = self->_manufacturerName;
  self->_manufacturerName = v27;

  v29 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"serialNumber"];
  serialNumber = self->_serialNumber;
  self->_serialNumber = v29;

  v31 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"keySyncRecord"];
  keySyncRecord = self->_keySyncRecord;
  self->_keySyncRecord = v31;

  v33 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"lostModeInfo"];
  lostModeInfo = self->_lostModeInfo;
  self->_lostModeInfo = v33;

  v35 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"lockedTimestamp"];
  lockedTimestamp = self->_lockedTimestamp;
  self->_lockedTimestamp = v35;

  v37 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"wipedTimestamp"];
  wipedTimestamp = self->_wipedTimestamp;
  self->_wipedTimestamp = v37;

  v39 = objc_opt_class();
  v40 = [v4 decodeDictionaryWithKeysOfClass:v39 objectsOfClass:objc_opt_class() forKey:@"taskInformation"];
  taskInformation = self->_taskInformation;
  self->_taskInformation = v40;

  v42 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"owner"];
  owner = self->_owner;
  self->_owner = v42;

  v44 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"role"];
  role = self->_role;
  self->_role = v44;

  v46 = MEMORY[0x277CBEB98];
  v87[0] = objc_opt_class();
  v87[1] = objc_opt_class();
  v47 = [MEMORY[0x277CBEA60] arrayWithObjects:v87 count:2];
  v48 = [v46 setWithArray:v47];
  v49 = [v4 decodeObjectOfClasses:v48 forKey:@"safeLocations"];
  safeLocations = self->_safeLocations;
  self->_safeLocations = v49;

  v51 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"accessoryProductInfo"];
  accessoryProductInfo = self->_accessoryProductInfo;
  self->_accessoryProductInfo = v51;

  self->_isAppleAudioAccessory = [v4 decodeBoolForKey:@"isAppleAudioAccessory"];
  self->_isZeus = [v4 decodeBoolForKey:@"isZeus"];
  self->_canBeLeashedByHost = [v4 decodeBoolForKey:@"canBeLeashedByHost"];
  self->_connected = [v4 decodeBoolForKey:@"connected"];
  v53 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"discoveryId"];
  discoveryId = self->_discoveryId;
  self->_discoveryId = v53;

  self->_internalShareType = [v4 decodeIntegerForKey:@"internalShareType"];
  v55 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"deviceColor"];
  deviceColor = self->_deviceColor;
  self->_deviceColor = v55;

  v57 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"deviceClass"];
  deviceClass = self->_deviceClass;
  self->_deviceClass = v57;

  v59 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"deviceModel"];
  deviceModel = self->_deviceModel;
  self->_deviceModel = v59;

  v61 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"rawDeviceModel"];
  rawDeviceModel = self->_rawDeviceModel;
  self->_rawDeviceModel = v61;

  v63 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"deviceDisplayName"];
  deviceDisplayName = self->_deviceDisplayName;
  self->_deviceDisplayName = v63;

  v65 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"lowPowerMode"];
  lowPowerMode = self->_lowPowerMode;
  self->_lowPowerMode = v65;

  v67 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"thisDevice"];
  thisDevice = self->_thisDevice;
  self->_thisDevice = v67;

  v69 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"isMine"];
  isMine = self->_isMine;
  self->_isMine = v69;

  v71 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"isRepairCapable"];
  isRepairCapable = self->_isRepairCapable;
  self->_isRepairCapable = v71;

  self->_online = [v4 decodeBoolForKey:@"online"];
  v73 = MEMORY[0x277CBEB98];
  v86[0] = objc_opt_class();
  v86[1] = objc_opt_class();
  v74 = [MEMORY[0x277CBEA60] arrayWithObjects:v86 count:2];
  v75 = [v73 setWithArray:v74];
  v76 = [v4 decodeObjectOfClasses:v75 forKey:@"multipartStatus"];
  multipartStatus = self->_multipartStatus;
  self->_multipartStatus = v76;

  v78 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"batteryPercentage"];
  batteryPercentage = self->_batteryPercentage;
  self->_batteryPercentage = v78;

  v80 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"rawMetadata"];
  rawMetadata = self->_rawMetadata;
  self->_rawMetadata = v80;

  v82 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"imageBaseUrl"];

  imageBaseUrl = self->_imageBaseUrl;
  self->_imageBaseUrl = v82;

  v84 = *MEMORY[0x277D85DE8];
  return self;
}

- (id)debugDescription
{
  v3 = [(SPInternalSimpleBeacon *)self groupIdentifier];

  v4 = MEMORY[0x277CCACA8];
  v5 = objc_opt_class();
  if (v3)
  {
    v6 = [(SPInternalSimpleBeacon *)self groupIdentifier];
    v7 = [(SPInternalSimpleBeacon *)self identifier];
    v8 = [v4 stringWithFormat:@"<%@: %p (%@) %@>", v5, self, v6, v7];
  }

  else
  {
    v6 = [(SPInternalSimpleBeacon *)self identifier];
    v8 = [v4 stringWithFormat:@"<%@: %p %@>", v5, self, v6];
  }

  return v8;
}

@end