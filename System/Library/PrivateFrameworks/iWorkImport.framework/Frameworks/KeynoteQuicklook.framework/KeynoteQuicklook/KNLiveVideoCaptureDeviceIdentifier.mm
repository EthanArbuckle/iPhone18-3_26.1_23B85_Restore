@interface KNLiveVideoCaptureDeviceIdentifier
- (BOOL)isEqual:(id)equal;
- (KNLiveVideoCaptureDeviceIdentifier)initWithUniqueID:(id)d modelID:(id)iD underlyingPosition:(int64_t)position underlyingDeviceType:(id)type localizedName:(id)name isIOSScreenRecordingDevice:(BOOL)device;
- (id)description;
- (unint64_t)hash;
@end

@implementation KNLiveVideoCaptureDeviceIdentifier

- (KNLiveVideoCaptureDeviceIdentifier)initWithUniqueID:(id)d modelID:(id)iD underlyingPosition:(int64_t)position underlyingDeviceType:(id)type localizedName:(id)name isIOSScreenRecordingDevice:(BOOL)device
{
  dCopy = d;
  iDCopy = iD;
  typeCopy = type;
  nameCopy = name;
  v36.receiver = self;
  v36.super_class = KNLiveVideoCaptureDeviceIdentifier;
  v20 = [(KNLiveVideoCaptureDeviceIdentifier *)&v36 init];
  if (v20)
  {
    v21 = objc_msgSend_copy(dCopy, v18, v19);
    uniqueID = v20->_uniqueID;
    v20->_uniqueID = v21;

    v25 = objc_msgSend_copy(iDCopy, v23, v24);
    modelID = v20->_modelID;
    v20->_modelID = v25;

    v20->_position = position;
    v29 = objc_msgSend_copy(typeCopy, v27, v28);
    deviceType = v20->_deviceType;
    v20->_deviceType = v29;

    v33 = objc_msgSend_copy(nameCopy, v31, v32);
    localizedName = v20->_localizedName;
    v20->_localizedName = v33;

    v20->_isIOSScreenRecordingDevice = device;
  }

  return v20;
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x277CCACA8]);
  v4 = objc_opt_class();
  uniqueID = self->_uniqueID;
  modelID = self->_modelID;
  position = self->_position;
  deviceType = self->_deviceType;
  if (self->_isIOSScreenRecordingDevice)
  {
    v10 = objc_msgSend_initWithFormat_(v3, v5, @"<%@ %p: uniqueID=%@, modelID=%@, position=%zd, deviceType=%@, localizedName=%@, isIOSScreenRecordingDevice=%@>", v4, self, uniqueID, modelID, position, deviceType, self->_localizedName, @"YES");
  }

  else
  {
    v10 = objc_msgSend_initWithFormat_(v3, v5, @"<%@ %p: uniqueID=%@, modelID=%@, position=%zd, deviceType=%@, localizedName=%@, isIOSScreenRecordingDevice=%@>", v4, self, uniqueID, modelID, position, deviceType, self->_localizedName, @"NO");
  }

  return v10;
}

- (BOOL)isEqual:(id)equal
{
  if (self == equal)
  {
    return 1;
  }

  equalCopy = equal;
  objc_opt_class();
  v5 = TSUDynamicCast();

  v14 = v5 && ((uniqueID = self->_uniqueID, v8 = *(v5 + 8), !(uniqueID | v8)) || objc_msgSend_isEqual_(uniqueID, v6, v8)) && ((modelID = self->_modelID, v10 = *(v5 + 16), !(modelID | v10)) || objc_msgSend_isEqual_(modelID, v6, v10)) && self->_position == *(v5 + 24) && objc_msgSend_isEqualToString_(self->_deviceType, v6, *(v5 + 32)) && ((localizedName = self->_localizedName, v13 = *(v5 + 40), !(localizedName | v13)) || objc_msgSend_isEqual_(localizedName, v11, v13)) && self->_isIOSScreenRecordingDevice == *(v5 + 48);
  return v14;
}

- (unint64_t)hash
{
  v3 = objc_alloc_init(MEMORY[0x277D811E8]);
  objc_msgSend_addObject_(v3, v4, self->_uniqueID);
  objc_msgSend_addObject_(v3, v5, self->_modelID);
  objc_msgSend_addInteger_(v3, v6, self->_position);
  objc_msgSend_addObject_(v3, v7, self->_deviceType);
  objc_msgSend_addObject_(v3, v8, self->_localizedName);
  objc_msgSend_addBool_(v3, v9, self->_isIOSScreenRecordingDevice);
  v12 = objc_msgSend_hashValue(v3, v10, v11);

  return v12;
}

@end