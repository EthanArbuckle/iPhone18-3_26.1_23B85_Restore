@interface SidecarDisplayConfig
- (CGSize)size;
- (SidecarDisplayConfig)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SidecarDisplayConfig

- (CGSize)size
{
  width = self->_size.width;
  height = self->_size.height;
  result.height = height;
  result.width = width;
  return result;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [[SidecarDisplayConfig allocWithZone:?]];
  objc_storeStrong(&v4->_cipher, self->_cipher);
  objc_storeStrong(&v4->_codec, self->_codec);
  objc_storeStrong(&v4->_configureDisplayExclusiveMode, self->_configureDisplayExclusiveMode);
  objc_storeStrong(&v4->_device, self->_device);
  objc_storeStrong(&v4->_displayID, self->_displayID);
  objc_storeStrong(&v4->_enableTimeSync, self->_enableTimeSync);
  objc_storeStrong(&v4->_framerate, self->_framerate);
  objc_storeStrong(&v4->_hdr, self->_hdr);
  objc_storeStrong(&v4->_keyFrameInterval, self->_keyFrameInterval);
  objc_storeStrong(&v4->_lowLatency, self->_lowLatency);
  objc_storeStrong(&v4->_rtcp, self->_rtcp);
  objc_storeStrong(&v4->_rtcpTimeoutInterval, self->_rtcpTimeoutInterval);
  v4->_scale = self->_scale;
  objc_storeStrong(&v4->_service, self->_service);
  objc_storeStrong(&v4->_showTouchBar, self->_showTouchBar);
  objc_storeStrong(&v4->_showSideBar, self->_showSideBar);
  v4->_size = self->_size;
  objc_storeStrong(&v4->_tilesPerFrame, self->_tilesPerFrame);
  v4->_transport = self->_transport;
  objc_storeStrong(&v4->_dataLink, self->_dataLink);
  objc_storeStrong(&v4->_txMaxBitrate, self->_txMaxBitrate);
  objc_storeStrong(&v4->_txMinBitrate, self->_txMinBitrate);
  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  v4 = *MEMORY[0x277CCA2A0];
  coderCopy = coder;
  validateXPCCoder(self, coderCopy, v4);
  encodeObject(coderCopy, @"cipher", self->_cipher);
  encodeObject(coderCopy, @"codec", self->_codec);
  encodeObject(coderCopy, @"configureDisplayExclusiveMode", self->_configureDisplayExclusiveMode);
  encodeObject(coderCopy, @"device", self->_device);
  encodeObject(coderCopy, @"displayID", self->_displayID);
  encodeObject(coderCopy, @"framerate", self->_framerate);
  encodeObject(coderCopy, @"hdr", self->_hdr);
  encodeObject(coderCopy, @"keyFrameInterval", self->_keyFrameInterval);
  encodeObject(coderCopy, @"lowLatency", self->_lowLatency);
  encodeObject(coderCopy, @"rtcp", self->_rtcp);
  encodeObject(coderCopy, @"rtcpTimeoutInterval", self->_rtcpTimeoutInterval);
  encodeDouble(coderCopy, @"scale", self->_scale);
  encodeObject(coderCopy, @"service", self->_service);
  encodeDouble(coderCopy, @"size.width", self->_size.width);
  encodeDouble(coderCopy, @"size.height", self->_size.height);
  encodeObject(coderCopy, @"timeSync", self->_enableTimeSync);
  encodeObject(coderCopy, @"touchBar", self->_showTouchBar);
  encodeObject(coderCopy, @"sideBar", self->_showSideBar);
  encodeObject(coderCopy, @"tiles", self->_tilesPerFrame);
  encodeInteger(coderCopy, @"transport", self->_transport);
  encodeObject(coderCopy, @"dataLink", self->_dataLink);
  encodeObject(coderCopy, @"txMinBitrate", self->_txMinBitrate);
  encodeObject(coderCopy, @"txMaxBitrate", self->_txMaxBitrate);
}

- (SidecarDisplayConfig)initWithCoder:(id)coder
{
  coderCopy = coder;
  v48.receiver = self;
  v48.super_class = SidecarDisplayConfig;
  v5 = [(SidecarDisplayConfig *)&v48 init];
  if (v5)
  {
    v6 = objc_opt_class();
    v7 = objc_opt_class();
    v8 = objc_opt_class();
    validateXPCCoder(v5, coderCopy, *MEMORY[0x277CCA2A8]);
    v9 = decodeObject(coderCopy, @"cipher", v7);
    cipher = v5->_cipher;
    v5->_cipher = v9;

    v11 = decodeObject(coderCopy, @"codec", v7);
    codec = v5->_codec;
    v5->_codec = v11;

    v13 = decodeObject(coderCopy, @"configureDisplayExclusiveMode", v7);
    configureDisplayExclusiveMode = v5->_configureDisplayExclusiveMode;
    v5->_configureDisplayExclusiveMode = v13;

    v15 = decodeObject(coderCopy, @"device", v6);
    device = v5->_device;
    v5->_device = v15;

    v17 = decodeObject(coderCopy, @"displayID", v7);
    displayID = v5->_displayID;
    v5->_displayID = v17;

    v19 = decodeObject(coderCopy, @"framerate", v7);
    framerate = v5->_framerate;
    v5->_framerate = v19;

    v21 = decodeObject(coderCopy, @"hdr", v7);
    hdr = v5->_hdr;
    v5->_hdr = v21;

    v23 = decodeObject(coderCopy, @"keyFrameInterval", v7);
    keyFrameInterval = v5->_keyFrameInterval;
    v5->_keyFrameInterval = v23;

    v25 = decodeObject(coderCopy, @"lowLatency", v7);
    lowLatency = v5->_lowLatency;
    v5->_lowLatency = v25;

    v27 = decodeObject(coderCopy, @"rtcp", v7);
    rtcp = v5->_rtcp;
    v5->_rtcp = v27;

    v29 = decodeObject(coderCopy, @"rtcpTimeoutInterval", v7);
    rtcpTimeoutInterval = v5->_rtcpTimeoutInterval;
    v5->_rtcpTimeoutInterval = v29;

    v5->_scale = decodeDouble(coderCopy, @"scale");
    v31 = decodeObject(coderCopy, @"service", v8);
    service = v5->_service;
    v5->_service = v31;

    v5->_size.width = decodeDouble(coderCopy, @"size.width");
    v5->_size.height = decodeDouble(coderCopy, @"size.height");
    v33 = decodeObject(coderCopy, @"timeSync", v7);
    enableTimeSync = v5->_enableTimeSync;
    v5->_enableTimeSync = v33;

    v35 = decodeObject(coderCopy, @"touchBar", v7);
    showTouchBar = v5->_showTouchBar;
    v5->_showTouchBar = v35;

    v37 = decodeObject(coderCopy, @"sideBar", v7);
    showSideBar = v5->_showSideBar;
    v5->_showSideBar = v37;

    v39 = decodeObject(coderCopy, @"tiles", v7);
    tilesPerFrame = v5->_tilesPerFrame;
    v5->_tilesPerFrame = v39;

    v5->_transport = decodeInteger(coderCopy, @"transport");
    v41 = decodeObject(coderCopy, @"dataLink", v7);
    dataLink = v5->_dataLink;
    v5->_dataLink = v41;

    v43 = decodeObject(coderCopy, @"txMinBitrate", v7);
    txMinBitrate = v5->_txMinBitrate;
    v5->_txMinBitrate = v43;

    v45 = decodeObject(coderCopy, @"txMaxBitrate", v7);
    txMaxBitrate = v5->_txMaxBitrate;
    v5->_txMaxBitrate = v45;
  }

  return v5;
}

@end